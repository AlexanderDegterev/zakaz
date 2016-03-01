unit Supplier_Edit_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TSupplier_Edit = class(TForm)
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
    procedure SaveButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Supplier_Edit: TSupplier_Edit;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TSupplier_Edit.FormShow(Sender: TObject);
begin
 DataModule.ds_Supplier.Open;
 Edit1.Text:=DataModule.ds_Supplier.FieldByName('SUP_NAME').AsString;
 Edit2.Text:=DataModule.ds_Supplier.FieldByName('SUP_ADRES').AsString;
 Edit3.Text:=DataModule.ds_Supplier.FieldByName('SUP_UNN').AsString;
 Edit4.Text:=DataModule.ds_Supplier.FieldByName('SUP_TELEPHONE').AsString;
end;

procedure TSupplier_Edit.SaveButtonClick(Sender: TObject);
begin
 DataModule.ds_Supplier.Edit;
 DataModule.ds_Supplier.FieldByName('SUP_NAME').AsString := Trim(Edit1.Text);
 DataModule.ds_Supplier.FieldByName('SUP_ADRES').AsString := Trim(Edit2.Text);
 DataModule.ds_Supplier.FieldByName('SUP_UNN').AsString := Trim(Edit3.Text);
 DataModule.ds_Supplier.FieldByName('SUP_TELEPHONE').AsString := Trim(Edit4.Text);
 DataModule.ds_Supplier.Post;
 modalResult :=mrOk;
end;

end.
