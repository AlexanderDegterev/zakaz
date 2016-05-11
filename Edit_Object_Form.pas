unit Edit_Object_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TEdit_Object = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    SaveButton: TBitBtn;
    CancelButton: TBitBtn;
    procedure CancelButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Edit_Object: TEdit_Object;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TEdit_Object.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TEdit_Object.FormShow(Sender: TObject);
begin
  DataModule.ds_Object.ParamByName('X').AsInteger :=
    DataModule.ds_Object.FieldByName('OB_ID').AsInteger;
  DataModule.ds_Object.Open;
  Edit1.Text := DataModule.ds_Object.FieldByName('OB_NAME').AsString;
end;

procedure TEdit_Object.SaveButtonClick(Sender: TObject);
begin
  DataModule.ds_Object.Edit;
  DataModule.ds_Object.FieldByName('OB_NAME').AsString := Trim(Edit1.Text);
  DataModule.ds_Object.Post;
  Close;
end;

end.
