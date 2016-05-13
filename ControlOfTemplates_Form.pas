unit ControlOfTemplates_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzPanel, RzButton, ExtCtrls, Grids, DBGrids, RzDBGrid, DBCtrls,
  RzDBCmbo, StdCtrls, RzCmboBx, DB, DBTables, frxDesgn, frxClass, frxRich,
  frxDCtrl,
  ImgList;

type
  TControlOfTemplates = class(TForm)
    RzToolbar1: TRzToolbar;
    RzAddBtn: TRzBitBtn;
    RzEditBtn: TRzBitBtn;
    RzDelBtn: TRzBitBtn;
    RzLoadBtn: TRzBitBtn;
    RzReNameBtn: TRzBitBtn;
    RzComboBox1: TRzComboBox;
    OpenFRDialog: TOpenDialog;
    Label1: TLabel;
    frxDesigner: TfrxDesigner;
    frxReport: TfrxReport;
    ImageList: TImageList;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzDBGrid1: TRzDBGrid;
    // function GetID(genname:string; increment:integer = 1):integer;
    procedure RzComboBox1Select(Sender: TObject);
    procedure RzAddBtnClick(Sender: TObject);
    procedure RzLoadBtnClick(Sender: TObject);
    procedure frxDesignerShow(Sender: TObject);
    procedure CloseDesigner(Sender: TObject; var Action: TCloseAction);
    function frxDesignerSaveReport(Report: TfrxReport; SaveAs: Boolean)
      : Boolean;
    procedure RzDelBtnClick(Sender: TObject);
    procedure RzEditBtnClick(Sender: TObject);
    procedure RzReNameBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ControlOfTemplates: TControlOfTemplates;
  DefaultCloseEvent: TCloseEvent;

implementation

uses DataModuleForm, Edit_Template_Form;

{$R *.dfm}

// функция возвращает название файла без расширения
function ExtractOnlyFileName(const FileName: string): string;

begin

  result := StringReplace(ExtractFileName(FileName),
    ExtractFileExt(FileName), '', []);

end;

procedure TControlOfTemplates.CloseDesigner(Sender: TObject;
  var Action: TCloseAction);
begin
  ShowMessage('Designer Closed');
  DefaultCloseEvent(Sender, Action);
end;

procedure TControlOfTemplates.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DataModule.ds_Template.Close;
  Action := caFree;
end;

procedure TControlOfTemplates.FormShow(Sender: TObject);
begin
  DataModule.ds_Template.Open;
  DataModule.ds_Template.FullRefresh;
  DataModule.ds_Template.FieldByName('T_ID').Visible := False;
  // DataModule.ds_Template.FieldByName('T_TYPE').Visible:=False;
  DataModule.ds_TemplateT_TYPE.Visible := False;
  DataModule.ds_Template.FieldByName('T_BLOB').Visible := False;
  DataModule.ds_TemplateT_TYPE.Visible := False;
end;

// ПЕРЕДЕЛАТЬ ЛОГИКУ !!!
function TControlOfTemplates.frxDesignerSaveReport(Report: TfrxReport;
  SaveAs: Boolean): Boolean;
var
  MemoryStream: TMemoryStream;
  Stream: TStream;
  NameTemplates: string;
begin
  NameTemplates := DataModule.ds_Template.FieldByName('T_NAME').AsString;
  DataModule.ds_Template.Edit;
  try
    MemoryStream := TMemoryStream.Create;
    Stream := DataModule.ds_Template.CreateBlobStream
      (DataModule.ds_Template.FieldByName('T_BLOB'), bmReadWrite);
    DataModule.ds_Template.FieldByName('T_NAME').AsString := NameTemplates;
    frxReport.SaveToStream(MemoryStream);
    MemoryStream.Position := 0;
    Stream.CopyFrom(MemoryStream, MemoryStream.Size);
    DataModule.ds_Template.post;
  finally
    MemoryStream.Free;
    Stream.Free;
  end;
  result := True;
end;

procedure TControlOfTemplates.frxDesignerShow(Sender: TObject);
begin
  DefaultCloseEvent := frxReport.Designer.OnClose;
  frxReport.Designer.OnClose := CloseDesigner;
end;

procedure TControlOfTemplates.RzAddBtnClick(Sender: TObject);
var
  blob: TStream;
  fs: TFileStream;
  link, nameFile: String;
begin
  frxReport.Clear;
  frxReport.DesignReport();
end;

procedure TControlOfTemplates.RzComboBox1Select(Sender: TObject);
begin
  if RzComboBox1.ItemIndex = 2 then
  begin
    DataModule.ds_Template.Filtered := False;
    DataModule.ds_Template.FilterOptions := [foCaseInsensitive];
    DataModule.ds_Template.Filter := 'T_TYPE = 1';
    DataModule.ds_Template.Filtered := True;
  end;

  if RzComboBox1.ItemIndex = 1 then
  begin
    DataModule.ds_Template.Filtered := False;
    DataModule.ds_Template.FilterOptions := [foCaseInsensitive];
    DataModule.ds_Template.Filter := 'T_TYPE = 0';
    DataModule.ds_Template.Filtered := True;
  end;

  if RzComboBox1.ItemIndex = 0 then
  begin
    DataModule.ds_Template.Filtered := False;
  end;
end;

procedure TControlOfTemplates.RzDelBtnClick(Sender: TObject);
begin
  if MessageDlg('Вы действительно хотите удалить?', mtConfirmation,
    [mbYes, mbNo], 0) = mrNo then
    exit;
  DataModule.ds_Template.Delete;
end;

procedure TControlOfTemplates.RzEditBtnClick(Sender: TObject);
var
  Stream: TStream;
  fs: TFileStream;
  link, nameFile: String;

begin
  Stream := TMemoryStream.Create;
  try
    TBlobField(DataModule.ds_Template.FieldByName('T_BLOB'))
      .SaveToStream(Stream);
    if Stream.Size <> 0 then
    Begin
      Stream.Position := 0;
      frxReport.Clear;
      frxReport.LoadFromStream(Stream);
    End;
    // frxDesigner.
    frxReport.DesignReport(True);
  finally
    Stream.Free;

  end;

end;

procedure TControlOfTemplates.RzLoadBtnClick(Sender: TObject);
var
  blob: TStream;
  fs: TFileStream;
  link, nameFile: String;
begin
  DataModule.ds_Template.insert;
  if OpenFRDialog.Execute then
  begin
    link := (OpenFRDialog.FileName);
    nameFile := ExtractOnlyFileName(link);
    Label1.Caption := nameFile;

    // Запись в BLOB-поле
    blob := DataModule.ds_Template.CreateBlobStream
      (DataModule.ds_Template.FieldByName('T_BLOB'), bmWrite);
    try
      blob.Seek(0, soFromBeginning);
      fs := TFileStream.Create(link { 'c:\your_name.fr3' } ,
        fmOpenRead or fmShareDenyWrite);
      try
        // DataModule.ds_Template.FieldByName('T_ID').AsString :=GetID('GEN_TEMPLATES_ID');
        DataModule.ds_Template.FieldByName('T_NAME').AsString := nameFile;
        blob.CopyFrom(fs, fs.Size)
      finally
        fs.Free
      end;
    finally
      blob.Free;
      DataModule.ds_Template.post;
    end;
    // Конец записи в BLOB-поле
  end
  else
  Begin
    ShowMessage('Файл не выбран!');
  End;
end;

procedure TControlOfTemplates.RzReNameBtnClick(Sender: TObject);
begin
  Application.CreateForm(TEdit_Templates, Edit_Templates);
  Edit_Templates.ShowModal;
end;

end.
