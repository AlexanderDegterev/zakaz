unit ADD_Form_S;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DataModuleForm, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, ComCtrls, cxTextEdit, cxMaskEdit, cxButtonEdit,
  Buttons, RzDTP, cxDropDownEdit, cxCalendar, Grids, DBGrids, RzDBGrid,
  RzCmboBx, RzButton, RzPanel, ExtCtrls, ImgList, DB, DBTables, shellapi,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Menus, cxButtons,
  RzBorder, cxSchedulerStorage, cxSchedulerCustomControls,
  cxSchedulerDateNavigator, cxDateNavigator;

type
  TFormAdd_S = class(TForm)
    SaveButton: TButton;
    CloseButton: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit2: TEdit;
    Edit1: TEdit;
    eDateBegin: TDateTimePicker;
    Edit10: TEdit;
    OpenFRDialog: TOpenDialog;
    ImageList: TImageList;
    Label15: TLabel;
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
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1TM_ID: TcxGridDBColumn;
    cxGrid2DBTableView1TM_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1TM_UNITM: TcxGridDBColumn;
    cxGrid2DBTableView1TM_GOST: TcxGridDBColumn;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SVS_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_UNITM: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_VOLUME: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_PAYMENT_TERM: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_PRICE_TN_W_NDS: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_VOL_GET: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_NAKL_DATE: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_NAKL_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_PAYMENT_NAKL: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_ID: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_SUPID: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_DOGID: TcxGridDBColumn;
    cxGrid1DBTableView1SVS_TMID: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    RzBitBtn2: TRzBitBtn;
    cxButtonEdit4: TcxButtonEdit;
    Edit3: TEdit;
    procedure SaveButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzDelBtnClick(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure eFilterChange(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure cxButtonEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure cxButtonEdit4PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure RzBitBtn1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdd_S: TFormAdd_S;

implementation

uses BTS_Office_form, Supplier_Form;

{$R *.dfm}

// ������� ���������� �������� ����� ��� ����������
function ExtractOnlyFileName(const FileName: string): string;

 begin

   result:=StringReplace(ExtractFileName(FileName),ExtractFileExt(FileName),'',[]);

 end;

procedure TFormAdd_S.CloseButtonClick(Sender: TObject);
begin
 modalResult := mrOk;
end;


procedure TFormAdd_S.cxButtonEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if key =#13 then
begin
  Application.CreateForm(TSupplier, Supplier);
  try
   Supplier := TSupplier.Create(self);
    if (Supplier.showModal = mrOk) then
     begin
      FormAdd_S.Edit3.Text := DataModule.ds_Supplier.FieldByName('SUP_ID').AsString;
      FormAdd_S.cxButtonEdit4.Text := DataModule.ds_Supplier.FieldByName('SUP_NAME').AsString;
     end;
    finally
    DataModule.ds_Supplier.Filtered := False;
    Supplier.free;
end;
end;
end;

procedure TFormAdd_S.cxButtonEdit4PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 Application.CreateForm(TSupplier, Supplier);
  try
   Supplier := TSupplier.Create(self);
    if (Supplier.showModal = mrOk) then
     begin
      FormAdd_S.Edit3.Text := DataModule.ds_Supplier.FieldByName('SUP_ID').AsString;
      FormAdd_S.cxButtonEdit4.Text := DataModule.ds_Supplier.FieldByName('SUP_NAME').AsString;
     end;
    finally
    DataModule.ds_Supplier.Filtered := False;
    Supplier.free;
end;
end;

procedure TFormAdd_S.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
QuantityProd, SV_ID, SV_COUNT, TM_ID :integer;
TM_NAME, TM_UNITM, TM_GOST :STRING;
begin
  TM_ID:=DataModule.ds_Metal.FieldByName('TM_ID').AsInteger;
  TM_NAME:=DataModule.ds_Metal.FieldByName('TM_NAME').AsString;
  TM_UNITM:=DataModule.ds_Metal.FieldByName('TM_UNITM').AsString;
  TM_GOST:=DataModule.ds_Metal.FieldByName('TM_GOST').AsString;
  SV_COUNT:=0;
  //
  // ��������� ����� FIBQuery (���-�� ���������)
  {DataModule.Query_QuantityMet_S.ParamByName('Perem1').Value:=DataModule.ds_metal.FieldByName('TM_ID').AsInteger;
  DataModule.Query_QuantityMet_S.ParamByName('Perem2').Value:=DataModule.DS_SUP_First.FieldByName('DOG_ID').AsInteger;

  // ������������
  //DataModule.Query_QuantityMet.ParamByName('Perem2').Value:=TRIM(Edit1.Text);
  //DataModule.Query_QuantityMet.Transaction.StartTransaction;
  DataModule.Query_QuantityMet_S.ExecQuery;
  //DataModule.Query_QuantityMet.Transaction.Commit;


  SV_ID:=DataModule.Query_QuantityMet_S.FieldByName('SVS_ID').AsInteger;
  SV_COUNT:=DataModule.Query_QuantityMet_S.FieldByName('COUNT').AsInteger;
  //ShowMessage('�������: '+intToStr(SV_COUNT)+'          ������� ��'+intToStr(SVM_ID));

  // - �� ����������

  if SV_COUNT>=1 then
   begin

     ShowMessage('�������� '+TM_NAME+' ��� ���� � ������!'+'  ������� ��');
     DataModule.ds_SERV_S.ReopenLocate('SVS_ID');

   end

  else }
  Begin             // �������

  //ShowMessage('STOP');
  DataModule.ds_SERV_S.Open;
  DataModule.ds_SERV_S.Insert;
  DataModule.ds_SERV_S.FieldByName('SVS_DOGID').AsInteger :=DataModule.DS_SUP_First.FieldByName('DOG_ID').AsInteger;
  DataModule.ds_SERV_S.FieldByName('SVS_SUPID').AsInteger :=DataModule.ds_SUPPLIER.FieldByName('SUP_ID').AsInteger;
  DataModule.ds_SERV_S.FieldByName('SVS_TMID').AsInteger :=TM_ID;
  DataModule.ds_SERV_S.FieldByName('SVS_NAME').AsString :=DataModule.ds_Metal.FieldByName('TM_NAME').AsString;
  DataModule.ds_SERV_S.FieldByName('SVS_UNITM').AsString :=TM_UNITM;
  DataModule.ds_SERV_S.Post;
  DataModule.ds_SERV_S.ParamByName('Perem1').Value:=DataModule.DS_SUP_First.FieldByName('DOG_ID').AsInteger;
  DataModule.ds_SERV_S.ReopenLocate('SVS_ID');

  End;
end;


procedure TFormAdd_S.eFilterChange(Sender: TObject);
var
  filterText:string;
begin
   if (Length(Trim(eFilter.Text)) > 0) and (eFilter.Text <> filterText) then
     begin
       DataModule.ds_Metal.Filtered := False;
       DataModule.ds_Metal.FilterOptions :=[foCaseInsensitive];
       DataModule.ds_Metal.Filter := 'TM_NAME LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%');// +
                           //' OR U_NOMERZAK LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%'); //+
                          // ' OR U_INV LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%') ;
       DataModule.ds_Metal.Filtered := True;

     end;

   if Length(Trim(eFilter.Text)) = 0 then
      begin
        eFilter.Clear;
        DataModule.ds_Metal.Filtered := False;
        DataModule.ds_SERV_S.ReopenLocate('SVS_NAME');
      end;
end;

procedure TFormAdd_S.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule.DS_SUP_First.ReopenLocate('DOG_DATE');
  DataModule.ds_Detail.ReopenLocate('SVS_ID');
  DataModule.ds_Metal.Close;
  DataModule.DS_SERV_S.Close;
end;

procedure TFormAdd_S.FormShow(Sender: TObject);
begin
  eDateBegin.Date:=Date;
  DataModule.ds_Supplier.Open;
  DataModule.DS_SUP_First.Open;
  DataModule.DS_SUP_First.Insert;
  DataModule.ds_Metal.Open;
  DataModule.DS_SERV_S.Open;
end;


procedure TFormAdd_S.RzBitBtn1Click(Sender: TObject);
begin
 eFilter.Clear;
 DataModule.ds_Metal.Filtered := False;
end;

procedure TFormAdd_S.RzBitBtn2Click(Sender: TObject);
begin
 DataModule.DS_SERV_S.Delete;
end;

procedure TFormAdd_S.RzDelBtnClick(Sender: TObject);
begin
  if MessageDlg('�� ������������� ������ �������?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo
            then exit;
     DataModule.DS_SUP_First.Delete;
end;

procedure TFormAdd_S.SaveButtonClick(Sender: TObject);
begin
  //DataModule.DS_SUP_First.FieldByName('DOG_SUPID').AsInteger := DBLookupComboBox1.KeyValue;
  DataModule.DS_SUP_First.FieldByName('DOG_SUPID').AsInteger := StrToInt(Trim(Edit3.Text));
  DataModule.DS_SUP_First.FieldByName('DOG_NUMBER').AsString := Trim(Edit2.Text);
  DataModule.DS_SUP_First.FieldByName('DOG_DATE').AsDateTime := eDateBegin.Date;
  DataModule.DS_SUP_First.FieldByName('DOG_PRIM').AsString := Trim(Edit10.Text);
  DataModule.DS_SUP_First.Post;
  //DataModule.DS_SUP_First.ReopenLocate('DOG_ID');

  DataModule.ds_SERV_S.Close;
  DataModule.ds_SERV_S.ParamByName('Perem1').Value:=DataModule.DS_SUP_First.FieldByName('DOG_ID').AsInteger;
  DataModule.ds_SERV_S.Open;

  DataModule.DS_SUP_First.ReopenLocate('DOG_ID');
  Panel3.Visible:= True;
  Panel1.Visible:= True;
  SaveButton.Visible:=False;

  
  //Close;
  end;



end.   // ��������� end






