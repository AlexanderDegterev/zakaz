unit ADD_ProdGroup_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TAdd_ProdGroup = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    SaveButton: TBitBtn;
    CancelButton: TBitBtn;
    procedure CancelButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Add_ProdGroup: TAdd_ProdGroup;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TAdd_ProdGroup.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TAdd_ProdGroup.SaveButtonClick(Sender: TObject);
begin
  DataModule.ds_ProdGroup.Insert;
  DataModule.ds_ProdGroup.FieldByName('PG_NAME').AsString := Trim(Edit1.Text);
  DataModule.ds_ProdGroup.Post;
  Close;
end;

end.
