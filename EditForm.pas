unit EditForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dblookup, DBCtrls, DataModuleForm, Buttons, ComCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxButtonEdit, ExtCtrls, RzDTP,
  cxDropDownEdit, cxCalendar, Grids, DBGrids, RzDBGrid, RzCmboBx, RzButton,
  RzPanel, ShellAPI, DB, DBTables, ImgList;

type
  TFormEdit = class(TForm)
    Edit2: TEdit;
    Edit7: TEdit;
    Edit10: TEdit;
    SaveButton: TButton;
    ButtonClose: TButton;
    ComboBox1: TComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    eDateBegin: TDateTimePicker;
    cxButtonEdit2: TcxButtonEdit;
    Label13: TLabel;
    EditButton: TBitBtn;
    cxButtonEdit4: TcxButtonEdit;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    GroupBox5: TGroupBox;
    Label4: TLabel;
    GroupBox6: TGroupBox;
    Label5: TLabel;
    GroupBox7: TGroupBox;
    Label7: TLabel;
    GroupBox8: TGroupBox;
    Label9: TLabel;
    GroupBox9: TGroupBox;
    Label6: TLabel;
    GroupBox10: TGroupBox;
    Label10: TLabel;
    EditMatButton: TBitBtn;
    cxDateStart: TcxDateEdit;
    cxDateEnd: TcxDateEdit;
    Edit4: TEdit;
    GroupBox11: TGroupBox;
    Label11: TLabel;
    GroupBox12: TGroupBox;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    GroupBox13: TGroupBox;
    Panel2: TPanel;
    RzToolbar1: TRzToolbar;
    RzSpacer1: TRzSpacer;
    RzSpacer2: TRzSpacer;
    RzAddBtn: TRzBitBtn;
    RzDelBtn: TRzBitBtn;
    RzLoadBtn: TRzBitBtn;
    RzReNameBtn: TRzBitBtn;
    RzComboBox1: TRzComboBox;
    RzDBGrid1: TRzDBGrid;
    Edit1: TEdit;
    OpenFRDialog: TOpenDialog;
    DBLookupComboBox1: TDBLookupComboBox;
    cxButtonEdit3: TcxButtonEdit;
    ImageList: TImageList;
    PrintDialog1: TPrintDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    GroupBox15: TGroupBox;
    Label17: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    RzPrint: TRzBitBtn;
    procedure FormShow(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure cxButtonEdit3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxButtonEdit3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure EditButtonClick(Sender: TObject);
    procedure EditMatButtonClick(Sender: TObject);
    procedure RzLoadBtnClick(Sender: TObject);
    procedure RzDelBtnClick(Sender: TObject);
    procedure RzAddBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure RzDBGrid1DblClick(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure RzPrintClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEdit: TFormEdit;
  // UserRight : integer;

implementation

uses Object_Form, Izdelie, Material_Form, BTS_Office_form, Izdelie_2;

{$R *.dfm}

function ExtractOnlyFileName(const FileName: string): string;

begin

  result := StringReplace(ExtractFileName(FileName),
    ExtractFileExt(FileName), '', []);

end;

procedure TFormEdit.BitBtn1Click(Sender: TObject);
begin
  Application.CreateForm(TIzdelieForm, IzdelieForm);
  try
    Izdelie2 := TIzdelie2.Create(self);
    if (Izdelie2.ShowModal = mrOk) then
    begin
      // FormEdit.Edit4.Text:=DataModule.DS_T_Users.FieldByName('U_MET').AsString;
      // FormEdit.Edit7.Text:=DataModule.DS_T_Users.FieldByName('U_CERT').AsString;
      // ComboBox1.Text:=DataModule.DS_T_USERS.FieldByName('U_NASED').AsString;
    end;

  finally
    Izdelie2.Free;

  end;
end;

procedure TFormEdit.BtnPrintClick(Sender: TObject);
var
  blob: TStream;
  fs: TFileStream;
  link, nameFile, MyDIR: String;
begin
  // �������� ���� ����������� ����������
  MyDIR := ExtractFileDir(Application.ExeName);
  Label15.Caption := '���� � �����: ' + MyDIR + '\temp\';
  // ���������� ����� �� ���� �� BLOB ����
  blob := DataModule.ds_Files.CreateBlobStream
    (DataModule.ds_Files.FieldByName('T_BLOB'), bmRead);
  nameFile := DataModule.ds_Files.FieldByName('T_NAME').AsString;
  try
    blob.Seek(0, soFromBeginning);
    with TFileStream.Create(MyDIR + '\temp\' + nameFile + '.jpg', fmCreate) do
      try
        CopyFrom(blob, blob.Size)
      finally
        Free
      end;
  finally
    blob.Free
  end;
  // �������� ������������ �� ����� �����
  ShellExecute(self.Handle, 'Print',
    PChar(MyDIR + '\temp\' + nameFile + '.jpg'), nil, nil, SW_SHOWNORMAL);
end;

procedure TFormEdit.ButtonCloseClick(Sender: TObject);
begin
  modalResult := mrCancel;
  Release;
end;

procedure TFormEdit.cxButtonEdit3ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  ShowMessage('ContextPopup');
end;

procedure TFormEdit.cxButtonEdit3PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TObj, Obj);
  // Obj.Showmodal;
  try
    Obj := TObj.Create(self);
    if (Obj.ShowModal = mrOk) then
    begin
      FormEdit.cxButtonEdit3.Text := DataModule.ds_Object.FieldByName
        ('OB_ID').AsString;
      FormEdit.cxButtonEdit4.Text := DataModule.ds_Object.FieldByName
        ('OB_NAME').AsString;
      // edit1.text := form1.dataset1.....;
      // ...
    end;
  finally
    DataModule.ds_Object.Filtered := False;
    Obj.Free;
  end;

  if modalResult = mrOk then
  begin
    // FormEdit.cxButtonEdit3.Text := DataModule.ds_Object.FieldByName('OB_ID').AsString;
    FormEdit.cxButtonEdit4.Text := DataModule.ds_Object.FieldByName
      ('OB_NAME').AsString;
    // FormEdit.Panel_Name.Caption := DataModule.ds_Object.FieldByName('OB_NAME').AsString;
  end;
end;

procedure TFormEdit.EditButtonClick(Sender: TObject);
begin
  Application.CreateForm(TIzdelieForm, IzdelieForm);
  try
    IzdelieForm := TIzdelieForm.Create(self);
    if (IzdelieForm.ShowModal = mrOk) then
    begin
      // FormEdit.Edit4.Text:=DataModule.DS_T_Users.FieldByName('U_MET').AsString;
      FormEdit.Edit7.Text := DataModule.DS_T_Users.FieldByName
        ('U_CERT').AsString;
      ComboBox1.Text := DataModule.DS_T_Users.FieldByName('U_NASED').AsString;
    end;

  finally
    IzdelieForm.Free;

  end;
end;

procedure TFormEdit.EditMatButtonClick(Sender: TObject);
begin
  Application.CreateForm(TMaterial, Material);
  try
    Material := TMaterial.Create(self);
    if (Material.ShowModal = mrOk) then
    begin
      FormEdit.Edit4.Text := DataModule.DS_T_Users.FieldByName('U_MET')
        .AsString;
      // FormEdit.Edit7.Text:=DataModule.DS_T_Users.FieldByName('U_CERT').AsString;
    end;

  finally
    Material.Free;

  end;
end;

procedure TFormEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Action := caFree;
end;

procedure TFormEdit.FormShow(Sender: TObject);
var
  sql, ID, Name: string;
begin
  Label15.Caption := IntToStr(UserRight);
  if UserRight = 1 then
  Begin
    DBLookupComboBox1.Enabled := False;
    DBLookupComboBox4.Enabled := False;
    Edit2.Enabled := False;
    cxButtonEdit4.Enabled := False;
    eDateBegin.Enabled := False;
  End;

  DataModule.ds_Files.Close;
  DataModule.ds_Files.ParamByName('Perem').Value :=
    DataModule.DS_T_Users.FieldByName('U_ID').AsInteger;
  DataModule.ds_Files.Open;

  // DataModule.DS_T_USERS.ParamByName('X').AsInteger:=DataModule.DS_T_USERS.FieldByName('U_ID').AsInteger;
//  DataModule.DS_T_Users.Open;
  // cxButtonEdit2.Text:=DataModule.DS_T_USERS.FieldByName('Clients').AsString;
  Edit1.Text := DataModule.DS_T_Users.FieldByName('CL_NAME').AsString;
  // Edit3.Text:=DataModule.DS_T_USERS.FieldByName('U_ID').AsString;
  cxButtonEdit3.Text := DataModule.DS_T_Users.FieldByName('U_Object').AsString;
  cxButtonEdit4.Text := DataModule.DS_T_Users.FieldByName('OB_NAME').AsString;
  Edit2.Text := DataModule.DS_T_Users.FieldByName('U_NOMERZAK').AsString;
  eDateBegin.date := DataModule.DS_T_Users.FieldByName('U_DATEBEG').AsDateTime;
  cxDateStart.EditValue := DataModule.DS_T_Users.FieldByName
    ('U_DATESTART').Value;
  cxDateEnd.EditValue := DataModule.DS_T_Users.FieldByName('U_DATEEND').Value;
  ComboBox1.Text := DataModule.DS_T_Users.FieldByName('U_NASED').AsString;
  Edit7.Text := DataModule.DS_T_Users.FieldByName('U_CERT').AsString;
  Edit4.Text := DataModule.DS_T_Users.FieldByName('U_MET').AsString;
  Edit10.Text := DataModule.DS_T_Users.FieldByName('U_PRIM').AsString;

  // ����� � T_Object
  DataModule.ds_ObjectName.Close;
  DataModule.ds_ObjectName.ParamByName('Perem').Value := cxButtonEdit3.Text;
  DataModule.ds_ObjectName.Open;
  // Panel_Name.Caption:=DataModule.ds_ObjectName.FieldByName('OB_NAME').AsString;
  cxButtonEdit4.Text := DataModule.ds_ObjectName.FieldByName('OB_NAME')
    .AsString;
  DataModule.ds_ObjectName.Close;
end;

procedure TFormEdit.RzAddBtnClick(Sender: TObject);
var
  blob: TStream;
  fs: TFileStream;
  link, nameFile, MyDIR: String;
begin
  // �������� ���� ����������� ����������
  MyDIR := ExtractFileDir(Application.ExeName);
  Label15.Caption := '���� � �����: ' + MyDIR + '\temp\';
  // ���������� ����� �� ���� �� BLOB ����
  blob := DataModule.ds_Files.CreateBlobStream
    (DataModule.ds_Files.FieldByName('T_BLOB'), bmRead);
  nameFile := DataModule.ds_Files.FieldByName('T_NAME').AsString;
  try
    blob.Seek(0, soFromBeginning);
    with TFileStream.Create(MyDIR + '\temp\' + nameFile + '.jpg', fmCreate) do
      try
        CopyFrom(blob, blob.Size)
      finally
        Free
      end;
  finally
    blob.Free
  end;
  // �������� ������������ �� ����� �����
  ShellExecute(self.Handle, 'Open', PChar(MyDIR + '\temp\' + nameFile + '.jpg'),
    nil, nil, SW_SHOWNORMAL);
end;

procedure TFormEdit.RzDBGrid1DblClick(Sender: TObject);
begin
  RzAddBtn.Click;
end;

procedure TFormEdit.RzDelBtnClick(Sender: TObject);
begin
  if MessageDlg('�� ������������� ������ �������?', mtConfirmation,
    [mbYes, mbNo], 0) = mrNo then
    exit;
  DataModule.ds_Files.Delete;
end;

procedure TFormEdit.RzLoadBtnClick(Sender: TObject);
var
  blob: TStream;
  fs: TFileStream;
  link, nameFile: String;
begin
  DataModule.ds_Files.insert;
  DataModule.ds_Files.FieldByName('T_UID').AsInteger :=
    DataModule.DS_T_Users.FieldByName('U_ID').AsInteger;
  if OpenFRDialog.Execute then
  begin
    link := (OpenFRDialog.FileName);
    nameFile := ExtractOnlyFileName(link);
    Label1.Caption := nameFile;

    // ������ � BLOB-����
    blob := DataModule.ds_Files.CreateBlobStream
      (DataModule.ds_Files.FieldByName('T_BLOB'), bmWrite);
    try
      blob.Seek(0, soFromBeginning);
      fs := TFileStream.Create(link { 'c:\your_name.fr3' } ,
        fmOpenRead or fmShareDenyWrite);
      try
        DataModule.ds_Files.FieldByName('T_NAME').AsString := nameFile;
        blob.CopyFrom(fs, fs.Size)
      finally
        fs.Free
      end;
    finally
      blob.Free;
      DataModule.ds_Files.post;
    end;
    // ����� ������ � BLOB-����
  end
  else
  Begin
    DataModule.ds_Files.ReopenLocate('T_ID');
    ShowMessage('���� �� ������!');
  End;
end;

procedure TFormEdit.RzPrintClick(Sender: TObject);
var
  blob: TStream;
  fs: TFileStream;
  link, nameFile, MyDIR: String;
begin
  // �������� ���� ����������� ����������
  MyDIR := ExtractFileDir(Application.ExeName);
  Label15.Caption := '���� � �����: ' + MyDIR + '\temp\';
  // ���������� ����� �� ���� �� BLOB ����
  blob := DataModule.ds_Files.CreateBlobStream
    (DataModule.ds_Files.FieldByName('T_BLOB'), bmRead);
  nameFile := DataModule.ds_Files.FieldByName('T_NAME').AsString;
  try
    blob.Seek(0, soFromBeginning);
    with TFileStream.Create(MyDIR + '\temp\' + nameFile + '.jpg', fmCreate) do
      try
        CopyFrom(blob, blob.Size)
      finally
        Free
      end;
  finally
    blob.Free
  end;
  // �������� ������������ �� ����� �����
  ShellExecute(self.Handle, 'Print',
    PChar(MyDIR + '\temp\' + nameFile + '.jpg'), nil, nil, SW_SHOWNORMAL);
end;

procedure TFormEdit.SaveButtonClick(Sender: TObject);
begin
  // if Application.MessageBox(PCHAR('���������?'),'��������!',MB_OKCANCEL)=mrCancel then exit;
  try
  // DataModule.DS_T_USERS.Open;
  DataModule.DS_T_Users.Edit;
  // DataModule.DS_T_USERS.FieldByName('U_NAME').AsString := Trim(Edit1.Text);//������� Trim ������� ���������� � ����������� �������
  DataModule.DS_T_Users.FieldByName('U_NOMERZAK').AsString := Trim(Edit2.Text);
  DataModule.DS_T_Users.FieldByName('U_OBJECT').AsString := cxButtonEdit3.Text;
  DataModule.DS_T_Users.FieldByName('U_DATEBEG').AsString := DateToStr(eDateBegin.date);
  // DataModule.DS_T_USERS.FieldByName('U_DATESTART').AsString := DateToStr(eDateStart.Date);
  // DataModule.DS_T_USERS.FieldByName('U_DATEEND').AsString := DateToStr(eDateEnd.Date);
  DataModule.DS_T_Users.FieldByName('U_DATESTART').AsVariant := cxDateStart.EditValue;
  DataModule.DS_T_Users.FieldByName('U_DATEEND').AsVariant :=  cxDateEnd.EditValue;
  DataModule.DS_T_Users.FieldByName('U_NASED').AsString := ComboBox1.Text;
  DataModule.DS_T_Users.FieldByName('U_CERT').AsString := Trim(Edit7.Text);
  DataModule.DS_T_Users.FieldByName('U_PRIM').AsString := Trim(Edit10.Text);
  DataModule.DS_T_Users.post;
  // DataModule.DS_T_USERS.Close;
  // DataModule.DS_T_USERS.Open;
  DataModule.DS_T_Users.Filtered := False;
  DataModule.DS_T_Users.ReopenLocate('U_ID');
  except
        raise Exception.Create('������ ������� ������!');
  end;
  modalResult := mrOk;
end;
end.
