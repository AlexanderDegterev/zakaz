unit ADD_Object_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TAdd_Object = class(TForm)
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
  Add_Object: TAdd_Object;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TAdd_Object.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TAdd_Object.SaveButtonClick(Sender: TObject);
begin
  DataModule.ds_Object.Insert;
  DataModule.ds_Object.FieldByName('OB_NAME').AsString := Trim(Edit1.Text);
  DataModule.ds_Object.Post;
  Close;
end;

end.
