unit Clients_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TClients = class(TForm)
    DBGrid1: TDBGrid;
    EditButton: TBitBtn;
    ADDButton: TBitBtn;
    DelButton: TBitBtn;
    CloseButton: TBitBtn;
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
  Clients: TClients;

implementation

uses DataModuleForm, Edit_Clients_Form, ADD_Clients_Form;

{$R *.dfm}

procedure TClients.ADDButtonClick(Sender: TObject);
begin
  Application.CreateForm(TAdd_Clients, Add_Clients);
  Add_Clients.ShowModal;
end;

procedure TClients.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TClients.DelButtonClick(Sender: TObject);
begin
  ShowMessage('�������� ��������� ! (��������)');
  // DataModule.DS_Clients.Delete;
end;

procedure TClients.EditButtonClick(Sender: TObject);
begin
  Application.CreateForm(TEdit_Clients, Edit_Clients);
  Edit_Clients.ShowModal;
end;

end.
