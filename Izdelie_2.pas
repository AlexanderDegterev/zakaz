unit Izdelie_2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, StdCtrls, Buttons, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, RzButton, RzPanel, ExtCtrls, ImgList;

type
  TIzdelie2 = class(TForm)
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1SV_ID: TcxGridDBColumn;
    cxGrid1DBTableView1SV_UID: TcxGridDBColumn;
    cxGrid1DBTableView1SV_TPID: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1SV_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1SV_ZAGOTOVKI: TcxGridDBColumn;
    cxGrid1DBTableView1SV_READY: TcxGridDBColumn;
    cxGrid1DBTableView1SV_DATEOTGRUZ: TcxGridDBColumn;
    cxGrid1DBTableView1SV_SHIP: TcxGridDBColumn;
    cxGrid1DBTableView1SV_UNITM: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    SaveButton: TBitBtn;
    Edit1: TEdit;
    ImageList: TImageList;
    Panel3: TPanel;
    RzToolbar2: TRzToolbar;
    RzSpacer4: TRzSpacer;
    RzSpacer5: TRzSpacer;
    RzSpacer6: TRzSpacer;
    RzBitBtn2: TRzBitBtn;
    RzBitBtn3: TRzBitBtn;
    eFilter: TEdit;
    Panel1: TPanel;
    Edit3: TEdit;
    RzBitBtn4: TRzBitBtn;
    RzBitBtn5: TRzBitBtn;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1TP_ID: TcxGridDBColumn;
    cxGrid2DBTableView1TP_PGID: TcxGridDBColumn;
    cxGrid2DBTableView1TP_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1TP_VOLUME: TcxGridDBColumn;
    cxGrid2DBTableView1TP_UNITM: TcxGridDBColumn;
    cxGrid2DBTableView1TP_GOST: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    ButtonDel: TBitBtn;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure ButtonDelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure eFilterChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Izdelie2: TIzdelie2;

implementation

uses DataModuleForm, BTS_Office_form, Add_Product_Form, ADD_ProdGroup_Form,
  ProdGroup_Form;

{$R *.dfm}

procedure TIzdelie2.BitBtn1Click(Sender: TObject);
begin
  DataModule.ds_SERV.Edit;
  DataModule.ds_SERV.FieldByName('SV_READY').AsString:=DataModule.ds_SERV.FieldByName('SV_OLDREADY').AsString;
  DataModule.ds_SERV.Post;
end;

procedure TIzdelie2.ButtonDelClick(Sender: TObject);
begin
 DataModule.ds_SERV.Delete;
 DataModule.ds_SERV.ReopenLocate('SV_UID');
end;

procedure TIzdelie2.cxGrid2DBTableView1DblClick(Sender: TObject);
var
QuantityProd, SV_ID, SV_COUNT, TP_ID, TP_PGID :integer;
TP_NAME, TP_UNITM, TP_GOST :STRING;
begin
  TP_ID:=DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  TP_UNITM:=DataModule.ds_product.FieldByName('TP_UNITM').AsString;

  SV_COUNT:=0;
  //
  // ��������� ����� FIBQuery (���-�� ���������)
  DataModule.Query_QuantityProd.ParamByName('Perem1').Value:=DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  DataModule.Query_QuantityProd.ParamByName('Perem2').Value:=TRIM(Edit1.Text);
  //DataModule.Query_QuantityProd.Transaction.StartTransaction;
  DataModule.Query_QuantityProd.ExecQuery;
  //DataModule.Query_QuantityProd.Transaction.Commit;

  SV_ID:=DataModule.Query_QuantityProd.FieldByName('SV_ID').AsInteger;
  SV_COUNT:=DataModule.Query_QuantityProd.FieldByName('SV_COUNT').AsInteger;
  //ShowMessage('�������: '+intToStr(SV_COUNT)+'          ������� ��'+intToStr(SV_ID));

  //

  if SV_COUNT>=1 then
   begin

     // UpDate ����� Query
     DataModule.ds_SERV.Open;
     DataModule.ds_SERV.Edit;
     DataModule.QueryUpDate.ParamByName('Perem1').Value:=SV_COUNT + 1;
     DataModule.QueryUpDate.ParamByName('Perem2').Value:=SV_ID;
     //ShowMessage('��������� ���������� QueryUpDate '+intToStr(QuantityProd)+'SV_COUNT:'+intToStr(SV_COUNT)+'          ������� ��');
     DataModule.QueryUpDate.ExecQuery;

     // �������� ��� �������� ��������
     //eFilter.Clear;                             // �� �������� �� ������

     // ����������� ��������� 16,09,2013

     //DataModule.ds_ProdGroup.Close;
     //DataModule.ds_ProdGroup.Open;
     DataModule.ds_SERV.ReopenLocate('SV_UID'); // �� �������� �� ������
     //DataModule.ds_SERV.Close;
     //DataModule.ds_SERV.Open;
     //ShowMessage('�������� !');

   end

  else
  Begin

  //ShowMessage('STOP');
  DataModule.ds_SERV.Open;
  DataModule.ds_SERV.Insert;
  DataModule.ds_SERV.FieldByName('SV_UID').AsInteger :=strToInt(Trim(Edit1.Text));
  DataModule.ds_SERV.FieldByName('SV_TPID').AsInteger :=TP_ID;
  DataModule.ds_SERV.FieldByName('SV_COUNT').AsString :='1';
  DataModule.ds_SERV.FieldByName('SV_UNITM').AsString :=TP_UNITM;
  DataModule.ds_SERV.Post;

       // �������� ��� �������� ��������
  //eFilter.Clear;
  //DataModule.ds_ProdGroup.Close;
  //DataModule.ds_ProdGroup.Open;
  DataModule.ds_SERV.ReopenLocate('SV_UID');
  End;
end;

procedure TIzdelie2.eFilterChange(Sender: TObject);
var
  filterText:string;
begin
   if (Length(Trim(eFilter.Text)) > 0) and (eFilter.Text <> filterText) then
     begin
       DataModule.ds_product.Filtered := False;
       DataModule.ds_product.FilterOptions :=[foCaseInsensitive];
       DataModule.ds_product.Filter := 'TP_NAME LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%');// +
                           //' OR U_NOMERZAK LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%'); //+
                          // ' OR U_INV LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%') ;
       DataModule.ds_product.Filtered := True;

     end;

   if Length(Trim(eFilter.Text)) = 0 then
      begin
        {DBLookupComboBox1.KeyValue := -1;}
        eFilter.Clear;
        DataModule.ds_product.Filtered := False;
        DataModule.ds_SERV.ReopenLocate('SV_UID');
      end;
end;

procedure TIzdelie2.FormShow(Sender: TObject);
begin
  eFilter.Clear;
  DataModule.ds_product.Filtered := False;
//  DataModule.ds_product.Close;
//  DataModule.ds_product.SelectSQL.Text:='SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT order by TP_NAME'; //COLLATE PXW_CYRL';
//  DataModule.ds_product.Open;
  DataModule.ds_product.ReopenLocate('TP_ID');   //TP_ID

  DataModule.ds_SERV.Close;
  DataModule.ds_SERV.ParamByName('Perem').Value:=DataModule.DS_T_USERS.FieldByName('U_ID').AsInteger;
  DataModule.ds_SERV.Open;
  //DataModule.ds_SERV.Edit;

  //Label4.Caption :=IntToStr(UserRight);
  if UserRight = 1 then
   Begin
    ButtonDel.Visible:=false;
    BitBtn1.Visible:=false;
    cxGrid1DBTableView1SV_COUNT.Options.Editing :=False;
    cxGrid1DBTableView1SV_ZAGOTOVKI.Options.Editing :=False;
    cxGrid1DBTableView1SV_DATEOTGRUZ.Options.Editing :=False;
   End;
   edit1.Text:=DataModule.DS_T_Users.FieldByName('U_ID').AsString; // �� ������� ������������ !
end;

procedure TIzdelie2.RzBitBtn2Click(Sender: TObject);
begin
Application.CreateForm(TAdd_product, Add_product);
 try
  Add_product:=TAdd_product.create(self);
  Add_product.ShowModal;
 finally
 Add_product.free;
end;
end;

procedure TIzdelie2.RzBitBtn3Click(Sender: TObject);
var
  Count : integer;
begin
  // ��������� ����� FIBQuery (���-�� TP_ID)
  DataModule.QueryTP_ID.ParamByName('Perem').Value:=DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  DataModule.QueryTP_ID.ExecQuery;
  COUNT:=DataModule.QueryTP_ID.FieldByName('TPID').AsInteger;
  if COUNT=0 then
     DataModule.ds_product.Delete
     else
     ShowMessage('���-�� ������������ : '+IntToStr(COUNT)+' �������� ���������� !');
end;


procedure TIzdelie2.RzBitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TProdGroup, ProdGroup);
  try
   ProdGroup:=TProdGroup.Create(self);
   if (ProdGroup.ShowModal = mrOk) then
    begin
      DataModule.ds_product.Filtered := False;
      DataModule.ds_product.Close;
      DataModule.ds_product.SelectSQL.Text:='SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT order by TP_NAME';
      DataModule.ds_product.Open;
      DataModule.ds_SERV.ReopenLocate('SV_UID');
    end;

  finally
  ProdGroup.Free;

  end;
end;

procedure TIzdelie2.SaveButtonClick(Sender: TObject);
var
SUM,SV_COUNT:Real;  // ��� ��� Integer; (����� ��� ��� �� �������������� ����� ����� �������)
begin
  DataModule.Query_QuantityReady.ParamByName('Perem').Value:=DataModule.DS_T_USERS.FieldByName('U_ID').AsInteger;
  DataModule.Query_QuantityReady.ExecQuery;
  SUM:=DataModule.Query_QuantityReady.FieldByName('SUMMA').AsFloat;
  //ShowMessage('���-�� ������������ : '+IntToStr(SUM)+' �������� ���������� !');
  DataModule.Query_QuantityCount.ParamByName('Perem').Value:=DataModule.DS_T_USERS.FieldByName('U_ID').AsInteger;
  DataModule.Query_QuantityCount.ExecQuery;
  SV_COUNT:=DataModule.Query_QuantityCount.FieldByName('SV_COUNT').AsInteger;


  if ((SUM = SV_COUNT) and (SUM <> 0) and (DataModule.DS_T_Users.FieldByName('U_NASED').AsString <> '����') and (DataModule.DS_T_Users.FieldByName('U_NASED').AsString <> '���������')) then
    Begin
      DataModule.DS_T_Users.Open;
      DataModule.DS_T_Users.Edit;
      DataModule.DS_T_Users.FieldByName('U_NASED').AsString:='������';
      DataModule.DS_T_Users.Post;
      DataModule.DS_T_Users.ReopenLocate('U_ID');
    End;

  if ((SUM > 0) and (DataModule.DS_T_Users.FieldByName('U_NASED').AsString <> '����') and (SUM < SV_COUNT)) then
  begin
    if ((SUM > 0) and (DataModule.DS_T_Users.FieldByName('U_NASED').AsString <> '������') and (SUM < SV_COUNT)) then
      begin
         if ((SUM > 0) and (DataModule.DS_T_Users.FieldByName('U_NASED').AsString <> '���������') and (SUM < SV_COUNT)) then
          begin
          DataModule.DS_T_Users.Open;
          DataModule.DS_T_Users.Edit;
          DataModule.DS_T_Users.FieldByName('U_NASED').AsString:='�������� ��������';
          DataModule.DS_T_Users.Post;
          DataModule.DS_T_Users.ReopenLocate('U_ID');
          end;
      end;
  end;
  ModalResult := mrOk;
end;

end.
