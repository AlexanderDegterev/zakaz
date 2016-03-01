unit Product_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TPRODUCT = class(TForm)
    DBGrid1: TDBGrid;
    EditButton: TBitBtn;
    ADDButton: TBitBtn;
    DelButton: TBitBtn;
    CloseButton: TBitBtn;
    Panel1: TPanel;
    MonEdit: TEdit;
    procedure FormShow(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure ADDButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PRODUCT: TPRODUCT;

implementation

uses DataModuleForm, Edit_Product_Form, Add_Product_Form;

{$R *.dfm}

procedure TPRODUCT.ADDButtonClick(Sender: TObject);
begin
Application.CreateForm(TAdd_product, Add_product);
Add_product.ShowModal;
end;

procedure TPRODUCT.CloseButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TPRODUCT.DelButtonClick(Sender: TObject);
var
  Count : integer;
begin
  // ��������� ����� FIBQuery (���-�� TP_ID)
  DataModule.QueryTP_ID.ParamByName('Perem').Value:=DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  DataModule.QueryTP_ID.ExecQuery;
  COUNT:=DataModule.QueryTP_ID.FieldByName('TPID').AsInteger;
  //ShowMessage('���-�� ������������ : '+IntToStr(COUNT));
  if COUNT=0 then
     DataModule.ds_product.Delete
     else
     ShowMessage('���-�� ������������ : '+IntToStr(COUNT)+' �������� ���������� !');
end;

procedure TPRODUCT.EditButtonClick(Sender: TObject);
begin
 Application.CreateForm(TEdit_Product, Edit_Product);
  try
  Edit_Product:=TEdit_Product.create(self);
  Edit_Product.ShowModal;
 finally
 Edit_Product.free;
end;
end;

procedure TPRODUCT.FormShow(Sender: TObject);
Var f,SQLTEXT:string;
begin
  DataModule.ds_ProdGroup.ParamByName('X').AsInteger:=DataModule.ds_ProdGroup.FieldByName('PG_ID').AsInteger;
  DataModule.ds_ProdGroup.Open;
  Panel1.Caption :=DataModule.ds_ProdGroup.FieldByName('PG_NAME').AsString;
  MonEdit.Text :=DataModule.ds_ProdGroup.FieldByName('PG_ID').AsString;

  begin
  f:= Trim(MonEdit.Text);

  SQLTEXT:='SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT';
  //ShowMessage('�� ������������� ������ �������������? '+f+'          ������� ��');
  with DataModule.ds_product do
  begin
    DisableControls;
    Close;
    SelectSQL.Text:= SQLTEXT;
    if (Pos(' WHERE TP_PGID =: ', SelectSQL.Text) = 0) then
      SelectSQL.Add(' WHERE TP_PGID =' + f )
       else
        SelectSQL.Text:= SQLTEXT;

        Open;
        EnableControls;

  end;
end;
end;

  //DataModule.ds_product.Close;
  //DataModule.ds_product.ParamByName('Perem').Value:=Trim(MOnEdit.Text);
  //DataModule.ds_product.Open;
  //cxButtonEdit2.Text:=DataModule.DS_T_USERS.FieldByName('Clients').AsString;
  //Edit1.Text:=DataModule.DS_T_USERS.FieldByName('U_NAME').AsString;

end.
