unit ADD_Clients_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TAdd_Clients = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    SaveButton: TBitBtn;
    CancelButton: TBitBtn;
    procedure SaveButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Add_Clients: TAdd_Clients;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TAdd_Clients.CancelButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TAdd_Clients.SaveButtonClick(Sender: TObject);
begin
 DataModule.ds_Clients.Insert;
 DataModule.ds_Clients.FieldByName('CL_NAME').AsString := Trim(Edit1.Text);
 DataModule.ds_Clients.Post;
 Close;
end;

end.
