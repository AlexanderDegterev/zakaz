unit Edit_Clients_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DataModuleForm;

type
  TEdit_Clients = class(TForm)
    Edit1: TEdit;
    Panel1: TPanel;
    SaveButton: TBitBtn;
    CancelButton: TBitBtn;
    procedure CancelButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Edit_Clients: TEdit_Clients;

implementation

{$R *.dfm}

procedure TEdit_Clients.CancelButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TEdit_Clients.FormShow(Sender: TObject);
begin
 DataModule.DS_CLIENTS.ParamByName('X').AsInteger:=DataModule.DS_CLIENTS.FieldByName('CL_ID').AsInteger;
 DataModule.DS_CLIENTS.Open;
 Edit1.Text:=DataModule.DS_CLIENTS.FieldByName('CL_NAME').AsString;
end;

procedure TEdit_Clients.SaveButtonClick(Sender: TObject);
begin
  DataModule.DS_CLIENTS.Edit;
  DataModule.DS_CLIENTS.FieldByName('CL_NAME').AsString := Trim(Edit1.Text);
  DataModule.DS_CLIENTS.Post;
  Close;
end;

end.
