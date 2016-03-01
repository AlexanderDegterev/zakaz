unit Edit_FormPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, frxClass, frxDBSet, frxFIBComponents,
  DBCtrls, StdCtrls, Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  RzButton, RzPanel, ExtCtrls, ComCtrls;

type
  TFormEditPrice = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    StaticText4: TStaticText;
    StaticText3: TStaticText;
    StaticText2: TStaticText;
    StaticText1: TStaticText;
    StaticText5: TStaticText;
    eDateBegin: TDateTimePicker;
    Panel3: TPanel;
    RzToolbar1: TRzToolbar;
    RzSpacer1: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzSpacer2: TRzSpacer;
    AddBtn: TRzBitBtn;
    RzDelBtn: TRzBitBtn;
    eFilter: TEdit;
    RzEditBtn: TRzBitBtn;
    BtnClearEFilter: TRzBitBtn;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1TM_ID: TcxGridDBColumn;
    cxGrid2DBTableView1TM_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1TM_UNITM: TcxGridDBColumn;
    cxGrid2DBTableView1TM_GOST: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    CloseButton: TButton;
    Panel1: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    BtnDelSpecProd: TRzBitBtn;
    BtnPrint: TBitBtn;
    StaticText6: TStaticText;
    Edit1: TEdit;
    Memo1: TMemo;
    Edit2: TEdit;
    StaticText7: TStaticText;
    Edit3: TEdit;
    StaticText8: TStaticText;
    DBLookupComboBox2: TDBLookupComboBox;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    Edit4: TEdit;
    StaticText11: TStaticText;
    Edit5: TEdit;
    Edit6: TEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    SaveButton: TBitBtn;
    frxFIBComponents1: TfrxFIBComponents;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    cxGrid1DBTableView1TSP_ID: TcxGridDBColumn;
    cxGrid1DBTableView1TSP_TMID: TcxGridDBColumn;
    cxGrid1DBTableView1TSP_TPID: TcxGridDBColumn;
    cxGrid1DBTableView1TSP_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1TSP_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1TSP_UNITM: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure BtnDelSpecProdClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure eFilterChange(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnClearEFilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditPrice: TFormEditPrice;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TFormEditPrice.BtnClearEFilterClick(Sender: TObject);
begin
 eFilter.Clear;
 DataModule.ds_Metal.Filtered := False;
end;

procedure TFormEditPrice.BtnDelSpecProdClick(Sender: TObject);
begin
  DataModule.ds_Specification_Production.Delete;
end;

procedure TFormEditPrice.cxGrid2DBTableView1DblClick(Sender: TObject);
var
QuantityProd, SVM_ID, TSP_COUNT, TM_ID :integer;
TM_NAME, TM_UNITM, TM_GOST :STRING;
begin
// ���-�� ����������)
  DataModule.QuantityMetInProduction.ParamByName('Perem1').Value:=DataModule.ds_metal.FieldByName('TM_NAME').AsString;
  DataModule.QuantityMetInProduction.ParamByName('Perem2').Value:=label1.Caption;
  DataModule.QuantityMetInProduction.ExecQuery;

  //SVM_ID:=DataModule.Query_QuantityMet.FieldByName('SVM_ID').AsInteger;
  TSP_COUNT:=DataModule.QuantityMetInProduction.FieldByName('COUNT').AsInteger;
  //ShowMessage('�������: '+intToStr(SVM_COUNT)+'          ������� ��'+intToStr(SVM_ID));

  // - �� ����������

  if TSP_COUNT>=1 then
   begin
     ShowMessage('�������� '+DataModule.ds_metal.FieldByName('TM_NAME').AsString +' ��� ���� � ������!'+'  ������� ��');
     DataModule.ds_Specification_Production.ReopenLocate('TSP_NAME');
   end

  else
  Begin
  DataModule.ds_Specification_Production.Open;
  DataModule.ds_Specification_Production.Insert;
  DataModule.ds_Specification_Production.FieldByName('TSP_TMID').AsInteger :=DataModule.ds_metal.FieldByName('TM_ID').AsInteger;
  DataModule.ds_Specification_Production.FieldByName('TSP_TPID').AsInteger :=StrToInt(Label1.Caption);
  DataModule.ds_Specification_Production.FieldByName('TSP_NAME').AsString :=DataModule.ds_metal.FieldByName('TM_NAME').AsString;
//DataModule.ds_Specification_Production.FieldByName('TSP_COUNT').AsString :=COUNT;
  DataModule.ds_Specification_Production.FieldByName('TSP_UNITM').AsString :=DataModule.ds_metal.FieldByName('TM_UNITM').AsString;;
  DataModule.ds_Specification_Production.Post;

  DataModule.ds_Specification_Production.ReopenLocate('TSP_NAME');
  end;

end;

procedure TFormEditPrice.eFilterChange(Sender: TObject);
var
  filterText:string;
begin
   if (Length(Trim(eFilter.Text)) > 0) and (eFilter.Text <> filterText) then
     begin
       DataModule.ds_Metal.Filtered := False;
       DataModule.ds_Metal.FilterOptions :=[foCaseInsensitive];
       DataModule.ds_Metal.Filter := 'TM_NAME LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%');
       DataModule.ds_Metal.Filtered := True;

     end;

   if Length(Trim(eFilter.Text)) = 0 then
      begin
        eFilter.Clear;
        DataModule.ds_Metal.Filtered := False;
        DataModule.ds_SERV_R.ReopenLocate('SVR_ID');
      end;
end;

procedure TFormEditPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DataModule.ds_Metal.Close;
//DataModule.ds_product.Close;
DataModule.DS_Status_Production.Close;
DataModule.ds_Specification_Production.Close;
DataModule.ds_product.ReopenLocate('TP_NAME');
end;

procedure TFormEditPrice.FormShow(Sender: TObject);
begin
  DataModule.ds_product.Open;
  DataModule.ds_product.Edit;
  DataModule.ds_Metal.Open;
  DataModule.ds_Metal.Filtered := False;
//  DataModule.ds_Metal.ReopenLocate('TM_NAME');
  DataModule.ds_Specification_Production.Close;
  DataModule.ds_Specification_Production.ParamByName('Perem').Value:=DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  DataModule.ds_Specification_Production.Open;

  Label1.Caption:=DataModule.ds_product.FieldByName('TP_ID').AsString;
  Edit1.Text:=DataModule.ds_product.FieldByName('TP_NAME').AsString;
  Edit1.Enabled:=false;
  Edit6.Text:=DataModule.ds_product.FieldByName('TP_WEIGHT').AsString;
  Edit4.Text:=DataModule.ds_product.FieldByName('TP_UNITM').AsString;
  Edit2.Text:=DataModule.ds_product.FieldByName('TP_PRICE').AsString;
  eDateBegin.DateTime:=DataModule.ds_product.FieldByName('TP_DATE').AsDateTime;
  Memo1.Text:=DataModule.ds_product.FieldByName('TP_PRIM').AsString;

end;

procedure TFormEditPrice.SaveButtonClick(Sender: TObject);
   Begin
    DataModule.ds_product.FieldByName('TP_NAME').AsString :=Trim(Edit1.Text);
    DataModule.ds_product.FieldByName('TP_WEIGHT').AsString :=Trim(Edit6.Text);
    DataModule.ds_product.FieldByName('TP_UNITM').AsString :=Trim(Edit4.Text);
    DataModule.ds_product.FieldByName('TP_PRICE').AsString :=Trim(Edit2.Text);
    DataModule.ds_product.FieldByName('TP_DATE').AsDateTime := eDateBegin.Date;
    DataModule.ds_product.FieldByName('TP_PRIM').AsString :=Trim(Memo1.Text);
    DataModule.ds_product.Post;
    Label1.Caption:=DataModule.ds_product.FieldByName('TP_ID').AsString;
    DataModule.ds_Specification_Production.Close;
    DataModule.ds_Specification_Production.ParamByName('Perem').Value:=DataModule.ds_product.FieldByName('TP_ID').AsInteger;
    DataModule.ds_Specification_Production.Open;
    Panel1.visible:=true;
    Panel3.visible:=true;
    SaveButton.Enabled:=false;
   end;

end.
