unit ADD_Form_R;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, RzButton, RzPanel, ExtCtrls, Buttons,
  DBCtrls, frxClass, frxDBSet, frxFIBComponents, cxContainer, cxTextEdit,
  cxMaskEdit, cxButtonEdit;

type
  TFormAdd_R = class(TForm)
    StaticText4: TStaticText;
    StaticText3: TStaticText;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    eDateBegin: TDateTimePicker;
    Edit4: TEdit;
    Panel3: TPanel;
    RzToolbar1: TRzToolbar;
    RzSpacer1: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer2: TRzSpacer;
    AddBtn: TRzBitBtn;
    RzDelBtn: TRzBitBtn;
    eFilter: TEdit;
    RzEditBtn: TRzBitBtn;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1TM_ID: TcxGridDBColumn;
    cxGrid2DBTableView1TM_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1TM_UNITM: TcxGridDBColumn;
    cxGrid2DBTableView1TM_GOST: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    SaveButton: TButton;
    CloseButton: TButton;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    RzBitBtn2: TRzBitBtn;
    Label1: TLabel;
    RzBitBtn1: TRzBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    cxGrid1DBTableView1SVR_ID: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_REQID: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_TMID: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_UNITM: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_GOST: TcxGridDBColumn;
    cxGrid1DBTableView1SVR_LOGIN: TcxGridDBColumn;
    BtnPrint: TBitBtn;
    frxFIBComponents1: TfrxFIBComponents;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cxButtonEdit4: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    StaticText6: TStaticText;
    Edit1: TEdit;
    cxGrid1DBTableView1SVR_COUNT: TcxGridDBColumn;
    Memo1: TMemo;
    procedure FormShow(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure eFilterChange(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure BtnPrintClick(Sender: TObject);
    procedure cxButtonEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdd_R: TFormAdd_R;

implementation

uses DataModuleForm, BTS_Office_form, Object_Form;

{$R *.dfm}

procedure TFormAdd_R.BtnPrintClick(Sender: TObject);
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
    // Stream.Seek(0, soFromBeginning);
    if Stream.Size <> 0 then
    Begin
      Stream.Position := 0;
      frxReport1.Clear;
      frxReport1.LoadFromStream(Stream);
      // ShowMessage('Stream.Size <> 0'+#13#10+'          Нажмите Ок');
    End;
    // передача переменных в FastReport .
    // frxReport1.Variables['DateBeg']:=Format('''%s''',[DateToStr(eDateBegin.Date)]);
    // frxReport1.Variables['DateEnd']:=Format('''%s''',[DateToStr(eDateEnd.Date)]);
    frxReport1.Variables['UserRight'] := QuotedStr(UserName);
    // frxReport1.Variables['MetalName']:='''' + DataModule.ds_Metal.FieldByName('TM_NAME').AsString + '''';
    // frxReport1.Variables['MetalID']:=DataModule.ds_Metal.FieldByName('TM_ID').AsInteger;
    frxReport1.Variables['Perem'] := DataModule.ds_Request.FieldByName('REQ_ID')
      .AsInteger;;
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

procedure TFormAdd_R.cxButtonEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Application.CreateForm(TObj, Obj);
    try
      Obj := TObj.Create(self);
      if (Obj.showModal = mrOk) then
      begin
        FormAdd_R.cxButtonEdit3.Text := DataModule.ds_Object.FieldByName
          ('OB_ID').AsString;
        FormAdd_R.cxButtonEdit4.Text := DataModule.ds_Object.FieldByName
          ('OB_NAME').AsString;
      end;
    finally
      DataModule.ds_Object.Filtered := False;
      Obj.Free;
    end;
  end;
end;

procedure TFormAdd_R.cxButtonEdit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TObj, Obj);
  try
    Obj := TObj.Create(self);
    if (Obj.showModal = mrOk) then
    begin
      FormAdd_R.cxButtonEdit3.Text := DataModule.ds_Object.FieldByName
        ('OB_ID').AsString;
      FormAdd_R.cxButtonEdit4.Text := DataModule.ds_Object.FieldByName
        ('OB_NAME').AsString;
    end;
  finally
    DataModule.ds_Object.Filtered := False;
    Obj.Free;
  end;
end;

procedure TFormAdd_R.cxGrid2DBTableView1CellDblClick
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

procedure TFormAdd_R.eFilterChange(Sender: TObject);
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

procedure TFormAdd_R.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule.ds_Detail_R.ReopenLocate('SVR_ID');
  DataModule.ds_metal.Close;
  DataModule.ds_SERV_R.Close;
end;

procedure TFormAdd_R.FormShow(Sender: TObject);
var
  testId: Integer;
begin
  eDateBegin.DateTime := now;
  DataModule.qGen.ExecQuery;
  testId := 0;
  testId := DataModule.qGen.Fields[0].AsInteger;
  testId := testId + 1;
  Label1.Caption := IntToStr(testId);
  DataModule.ds_Request.Open;
  DataModule.ds_Request.Insert;
  DataModule.ds_metal.Open;
  DataModule.ds_metal.Filtered := False;
  DataModule.ds_SERV_R.Open;

end;

procedure TFormAdd_R.RzBitBtn1Click(Sender: TObject);
begin
  eFilter.Clear;
  DataModule.ds_metal.ReopenLocate('TM_ID');
end;

procedure TFormAdd_R.RzBitBtn2Click(Sender: TObject);
begin
  DataModule.ds_SERV_R.Delete;
end;

procedure TFormAdd_R.SaveButtonClick(Sender: TObject);
begin
  // DataModule.ds_Request.FieldByName('REQ_CLNAME').AsString := Trim(Edit2.Text); //заказчик
  DataModule.ds_Request.FieldByName('REQ_OBNAME').AsInteger :=
    StrToInt(cxButtonEdit3.Text); // Объект
  DataModule.ds_Request.FieldByName('REQ_N_ZAKAZ').AsString := Trim(Edit1.Text);
  // Номер заказа
  DataModule.ds_Request.FieldByName('REQ_DATE').AsDateTime :=
    eDateBegin.DateTime; // Дата
  DataModule.ds_Request.FieldByName('REQ_LOGIN').AsInteger := UserIDGlobal;
  // Кто внес данные
  DataModule.ds_Request.FieldByName('REQ_PRIM').AsString := Trim(Memo1.Text);
  // Примечание
  // DataModule.ds_Request.FieldByName('REQ_PRIM').AsString := Trim(Edit4.Text);  //Примечание

  DataModule.ds_Request.Post;
  DataModule.ds_Request.ReopenLocate('REQ_DATE');
  SaveButton.Visible := False;
  Panel1.Visible := True;
  Panel3.Visible := True;
  DataModule.ds_SERV_R.Close;
  DataModule.ds_SERV_R.ParamByName('Perem').Value := Label1.Caption;
  // DataModule.ds_Request.FieldByName('REQ_ID').AsInteger;
  DataModule.ds_SERV_R.Open;

end;

end.
