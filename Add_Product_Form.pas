unit Add_Product_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls;

type
  TAdd_product = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    SaveButton: TBitBtn;
    CancelButton: TBitBtn;
    Edit4: TEdit;
    GroupBox9: TGroupBox;
    Label6: TLabel;
    procedure SaveButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Add_product: TAdd_product;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TAdd_product.CancelButtonClick(Sender: TObject);
begin
  DataModule.ds_product.ReopenLocate('TP_ID');
  Close;
end;

procedure TAdd_product.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule.ds_product.ReopenLocate('TP_ID');
end;

procedure TAdd_product.FormShow(Sender: TObject);
begin
  DataModule.ds_product.Open;
  DataModule.ds_product.Insert;
end;

procedure TAdd_product.SaveButtonClick(Sender: TObject);
var
  IzdName: string;
  IzdQuantity: integer;
begin
  IzdName := Trim(Edit1.Text); // наименование
  //
  // Переделка через FIBQuery (Кол-во наименования)
  DataModule.Query_QuantityT_Product.ParamByName('Perem1').Value :=
    Trim(Edit1.Text);
  DataModule.Query_QuantityT_Product.ExecQuery;

  IzdQuantity := DataModule.Query_QuantityT_Product.FieldByName('COUNT')
    .AsInteger;

  if IzdQuantity >= 1 then
  begin
    ShowMessage('Изделие: ' + IzdName + ' уже есть с справочнике');
    DataModule.ds_product.FieldByName('TP_Name').AsString := Trim(Edit1.Text);
    DataModule.ds_product.FieldByName('TP_VOLUME').AsString := Trim(Edit2.Text);
    DataModule.ds_product.FieldByName('TP_UNITM').AsString := Trim(Edit3.Text);
    DataModule.ds_product.FieldByName('TP_GOST').AsString := Trim(Edit4.Text);
    DataModule.ds_product.Post;
    Close;
  end
  else
  begin
    // DataModule.ds_product.Insert;
    DataModule.ds_product.FieldByName('TP_Name').AsString := Trim(Edit1.Text);
    DataModule.ds_product.FieldByName('TP_VOLUME').AsString := Trim(Edit2.Text);
    DataModule.ds_product.FieldByName('TP_UNITM').AsString := Trim(Edit3.Text);
    DataModule.ds_product.FieldByName('TP_GOST').AsString := Trim(Edit4.Text);
    DataModule.ds_product.Post;
    Close;
  end;
end;

end.
