unit Edit_Form_R;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, StdCtrls,
  ComCtrls, RzPanel, Buttons, RzButton, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  ExtCtrls, DBCtrls, cxTextEdit, cxMaskEdit, cxButtonEdit, frxClass,
  frxFIBComponents, frxDBSet;

type
  TFormEdit_R = class(TForm)
    StaticText6: TStaticText;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxFIBComponents1: TfrxFIBComponents;
    Edit1: TEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxButtonEdit4: TcxButtonEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SVR_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_UNITM: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_GOST: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_TMID: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_ID: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_REQID: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_LOGIN: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzBitBtn2: TRzBitBtn;
    BtnPrint: TBitBtn;
    CloseButton: TButton;
    SaveButton: TButton;
    Panel3: TPanel;
    RzToolbar1: TRzToolbar;
    RzSpacer1: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer2: TRzSpacer;
    AddBtn: TRzBitBtn;
    RzDelBtn: TRzBitBtn;
    eFilter: TEdit;
    RzEditBtn: TRzBitBtn;
    RzBitBtn1: TRzBitBtn;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1TM_ID: TcxGridDBColumn;
    cxGrid2DBTableView1TM_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1TM_UNITM: TcxGridDBColumn;
    cxGrid2DBTableView1TM_GOST: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Edit4: TEdit;
    eDateBegin: TDateTimePicker;
    StaticText5: TStaticText;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Label1: TLabel;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure BtnPrintClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure eFilterChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEdit_R: TFormEdit_R;

implementation

uses DataModuleForm, BTS_Office_form, Object_Form;

{$R *.dfm}

procedure TFormEdit_R.BtnPrintClick(Sender: TObject);
var
  Stream: TMemoryStream;
  User: string;
  TempPer: Integer;
begin
  TempPer := 46; // Заявка
  DataModule.ds_TemplatePrint.ParamByName('X').AsInteger := TempPer;
  DataModule.ds_TemplatePrint.Open;
  Stream := TMemoryStream.Create;
  try
    (DataModule.ds_TemplatePrint.FieldByName('T_BLOB') as TBLOBField)
      .SaveToStream(Stream);
    if Stream.Size <> 0 then
    Begin
      Stream.Position := 0;
      frxReport1.Clear;
      frxReport1.LoadFromStream(Stream);
    End;
    // передача переменных в FastReport .
    frxReport1.Variables['UserRight'] := QuotedStr(UserName);
    frxReport1.Variables['Perem'] := DataModule.ds_Request.FieldByName('REQ_ID')
      .AsInteger;
    frxReport1.Variables['NomerRequest'] := DataModule.ds_Request.FieldByName
      ('REQ_ID').AsString;
    frxReport1.Variables['Zakazchik'] :=
      QuotedStr(DataModule.ds_Request.FieldByName('CL_NAME').AsString);
    frxReport1.Variables['Object'] :=
      QuotedStr(DataModule.ds_Request.FieldByName('OB_NAME').AsString);
    frxReport1.Variables['NomerZakaza'] :=
      QuotedStr(DataModule.ds_Request.FieldByName('REQ_N_ZAKAZ').AsString);
    frxReport1.Variables['Prim'] :=
      QuotedStr(DataModule.ds_Request.FieldByName('REQ_PRIM').AsString);
    frxReport1.Variables['DataPostup'] :=
      QuotedStr(DataModule.ds_Request.FieldByName('REQ_DATE').AsString);
    frxReport1.ShowReport;
  finally
    Stream.Free;

  end;
end;

procedure TFormEdit_R.cxButtonEdit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TObj, Obj);
  try
    Obj := TObj.Create(self);
    if (Obj.showModal = mrOk) then
    begin
      FormEdit_R.cxButtonEdit3.Text := DataModule.ds_Object.FieldByName
        ('OB_ID').AsString;
      FormEdit_R.cxButtonEdit4.Text := DataModule.ds_Object.FieldByName
        ('OB_NAME').AsString;
    end;
  finally
    DataModule.ds_Object.Filtered := False;
    Obj.Free;
  end;
end;

procedure TFormEdit_R.cxGrid2DBTableView1CellDblClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  SVR_COUNT: Integer;
begin
  SVR_COUNT := 0;
  //
  // Переделка через FIBQuery (Кол-во продукции)
  DataModule.Query_QuantityMetR.ParamByName('Perem1').Value :=
    DataModule.ds_metal.FieldByName('TM_ID').AsInteger;

  // пересмотреть
  DataModule.Query_QuantityMetR.ParamByName('Perem2').Value := Label1.Caption;
  // DataModule.ds_Request.FieldByName('REQ_ID').AsInteger;
  DataModule.Query_QuantityMetR.ExecQuery;

  SVR_COUNT := DataModule.Query_QuantityMetR.FieldByName('COUNT').AsInteger;

  if SVR_COUNT >= 1 then
  begin

    ShowMessage('материал ' + DataModule.ds_metal.FieldByName('TM_NAME')
      .AsString + ' уже есть в списке!' + '  Нажмите Ок');
    DataModule.ds_SERV_R.ReopenLocate('SVR_ID');

  end

  else
  Begin

    // ShowMessage('STOP');
    DataModule.ds_SERV_R.Open;
    DataModule.ds_SERV_R.Insert;
    DataModule.ds_SERV_R.FieldByName('SVR_REQID').AsInteger :=
      StrToInt(Label1.Caption);
    // DataModule.ds_Request.FieldByName('REQ_ID').AsInteger;
    DataModule.ds_SERV_R.FieldByName('SVR_TMID').AsInteger :=
      DataModule.ds_metal.FieldByName('TM_ID').AsInteger;
    DataModule.ds_SERV_R.FieldByName('SVR_NAME').AsString :=
      DataModule.ds_metal.FieldByName('TM_NAME').AsString;
    DataModule.ds_SERV_R.FieldByName('SVR_UNITM').AsString :=
      DataModule.ds_metal.FieldByName('TM_UNITM').AsString;
    // DataModule.ds_SERV_R.FieldByName('SVR_GOST').AsString :=DataModule.ds_Metal.FieldByName('TM_GOST').AsString; // Убрал - ставят вручную
    DataModule.ds_SERV_R.Post;

    DataModule.ds_SERV_R.ReopenLocate('SVR_ID');

  End;
end;

procedure TFormEdit_R.eFilterChange(Sender: TObject);
var
  filterText: string;
begin
  if (Length(Trim(eFilter.Text)) > 0) and (eFilter.Text <> filterText) then
  begin
    DataModule.ds_metal.Filtered := False;
    DataModule.ds_metal.FilterOptions := [foCaseInsensitive];
    DataModule.ds_metal.Filter := 'TM_NAME LIKE ' +
      QuotedStr('%' + Trim(eFilter.Text) + '%');
    DataModule.ds_metal.Filtered := True;

  end;

  if Length(Trim(eFilter.Text)) = 0 then
  begin
    eFilter.Clear;
    DataModule.ds_metal.Filtered := False;
    DataModule.ds_SERV_R.ReopenLocate('SVR_ID');
  end;
end;

procedure TFormEdit_R.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule.ds_Detail_R.ReopenLocate('SVR_ID');
  DataModule.ds_metal.Close;
  DataModule.ds_SERV_R.Close;
end;

procedure TFormEdit_R.FormShow(Sender: TObject);
begin
  DataModule.ds_Request.Open;
  // DataModule.ds_Request.Edit;
  Label1.Caption := DataModule.ds_Request.FieldByName('REQ_ID').AsString;
  // Примечание
  cxButtonEdit3.Text := DataModule.ds_Request.FieldByName('REQ_OBNAME')
    .AsString;
  cxButtonEdit4.Text := DataModule.ds_Request.FieldByName('OB_NAME').AsString;
  Edit1.Text := DataModule.ds_Request.FieldByName('REQ_N_ZAKAZ').AsString;
  // номер заявки
  eDateBegin.datetime := DataModule.ds_Request.FieldByName('REQ_DATE')
    .AsDateTime; // Дата
  // Edit4.Text:=DataModule.ds_Request.FieldByName('REQ_PRIM').AsString; //Примечание
  Memo1.Text := DataModule.ds_Request.FieldByName('REQ_PRIM').AsString;
  // Примечание

  DataModule.ds_SERV_R.Close;
  DataModule.ds_SERV_R.ParamByName('Perem').Value :=
    DataModule.ds_Request.FieldByName('REQ_ID').AsInteger;
  DataModule.ds_SERV_R.Open;
  DataModule.ds_metal.Open;
  DataModule.ds_metal.Filtered := False;

end;

procedure TFormEdit_R.RzBitBtn1Click(Sender: TObject);
begin
  eFilter.Clear;
  DataModule.ds_metal.ReopenLocate('TM_ID');
end;

procedure TFormEdit_R.RzBitBtn2Click(Sender: TObject);
begin
  DataModule.ds_SERV_R.Delete;
end;

procedure TFormEdit_R.SaveButtonClick(Sender: TObject);
begin
  DataModule.ds_Request.Edit;
  // DataModule.ds_Request.FieldByName('REQ_CLNAME').AsString := Trim(Edit2.Text); //заказчик
  DataModule.ds_Request.FieldByName('REQ_OBNAME').AsInteger :=
    StrToInt(cxButtonEdit3.Text); // Объект
  DataModule.ds_Request.FieldByName('REQ_N_ZAKAZ').AsString := Trim(Edit1.Text);
  // Номер заказа
  DataModule.ds_Request.FieldByName('REQ_DATE').AsDateTime :=
    eDateBegin.datetime; // Дата
  DataModule.ds_Request.FieldByName('REQ_LOGIN').AsInteger := UserIDGlobal;
  // Кто внес данные
  DataModule.ds_Request.FieldByName('REQ_PRIM').AsString := Trim(Memo1.Text);
  // Примечание

  DataModule.ds_Request.Post;
  DataModule.ds_Request.ReopenLocate('REQ_DATE');
  DataModule.ds_SERV_R.Close;
  DataModule.ds_SERV_R.ParamByName('Perem').Value := Label1.Caption;
  // DataModule.ds_Request.FieldByName('REQ_ID').AsInteger;
  DataModule.ds_SERV_R.Open;
end;

end.
