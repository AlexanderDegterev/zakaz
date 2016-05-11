unit Supplier_Add_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TSupplier_Add = class(TForm)
    Edit1: TEdit;
    SaveButton: TBitBtn;
    CancelButton: TBitBtn;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure CancelButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Supplier_Add: TSupplier_Add;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TSupplier_Add.CancelButtonClick(Sender: TObject);
begin
  modalResult := mrCancel;
end;

procedure TSupplier_Add.SaveButtonClick(Sender: TObject);
begin
  DataModule.ds_Supplier.Insert;
  DataModule.ds_Supplier.FieldByName('SUP_NAME').AsString := Trim(Edit1.Text);
  DataModule.ds_Supplier.FieldByName('SUP_ADRES').AsString := Trim(Edit2.Text);
  DataModule.ds_Supplier.FieldByName('SUP_UNN').AsString := Trim(Edit3.Text);
  DataModule.ds_Supplier.FieldByName('SUP_TELEPHONE').AsString :=
    Trim(Edit4.Text);
  DataModule.ds_Supplier.Post;
  modalResult := mrOk;
end;

end.
