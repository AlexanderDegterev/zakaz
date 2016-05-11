unit DataBaseConnection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DataModuleForm;

type
  TDataBase = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    GroupBox6: TGroupBox;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    SaveButton: TButton;
    CloseButton: TButton;
    procedure CloseButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataBase: TDataBase;

implementation

uses DataModuleUnit, BTScertificat_form;

{$R *.dfm}

procedure TDataBase.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TDataBase.SaveButtonClick(Sender: TObject);
begin
  DataModule.DB.Connected := False;
  with DataModule.DB.ConnectParams do
  begin
    UserName := Trim(Edit4.Text);
    Password := Trim(Edit5.Text);
  end;
  // ������� ���������� ����
  DataModule.DB.DBName := (Trim(Edit1.Text) + ':' + Trim(Edit2.Text));
  try
    DataModule.DB.Connected := True;
    DataModule.DS_T_USERS.Active := True;
    DataModule.ds_Clients.Active := True;
    DataModule.ds_ProdGroup.Active := True;
    DataModule.ds_Object.Active := True;
    DataModule.ds_ObjectName.Active := True;
    DataModule.ds_product.Active := True;
    DataModule.ds_SERV.Active := True;
    DataModule.ds_SERV_M.Active := True;
    DataModule.ds_Files.Active := True;
    DataModule.ds_Metal.Active := True;
    DataModule.DS_Division.Active := True;
    DataModule.ds_Proffesionals.Active := True;
    DataModule.DS_USERS.Active := True;
    DataModule.ds_Template.Active := True;
    DataModule.ds_QuantityProd.Active := True;
    DataModule.ds_USER_DEL.Active := True;
    DataModule.ds_OTD.Active := True;

    DataModule.DS_T_USERS.Refresh;
    DataModule.DS_T_USERS.ReopenLocate('U_ID');

    ShowMessage('Ok');
    Close;
  except
    ShowMessage('Error!');
  end;

end;

end.
