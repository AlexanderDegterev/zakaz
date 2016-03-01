unit Edit_Reference_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DataModuleForm;

type
  TEdit_Reference = class(TForm)
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
  Edit_Reference: TEdit_Reference;

implementation

{$R *.dfm}

procedure TEdit_Reference.CancelButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TEdit_Reference.FormShow(Sender: TObject);
begin
 DataModule.DS_OTD.ParamByName('X').AsInteger:=DataModule.DS_T_USERS.FieldByName('U_ID').AsInteger;
 DataModule.DS_OTD.Open;
 Edit1.Text:=DataModule.DS_OTD.FieldByName('O_NAME').AsString;
end;

procedure TEdit_Reference.SaveButtonClick(Sender: TObject);
begin
  DataModule.DS_OTD.Edit;
  DataModule.DS_OTD.FieldByName('O_NAME').AsString := Trim(Edit1.Text);
  DataModule.DS_OTD.Post;
  Close;
end;

end.
