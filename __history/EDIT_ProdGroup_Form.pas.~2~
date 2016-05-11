unit EDIT_ProdGroup_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TEdit_ProdGroup = class(TForm)
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
  Edit_ProdGroup: TEdit_ProdGroup;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TEdit_ProdGroup.CancelButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TEdit_ProdGroup.FormShow(Sender: TObject);
begin
 DataModule.ds_ProdGroup.ParamByName('X').AsInteger:=DataModule.ds_ProdGroup.FieldByName('PG_ID').AsInteger;
 DataModule.ds_ProdGroup.Open;
 Edit1.Text:=DataModule.ds_ProdGroup.FieldByName('PG_NAME').AsString;
end;

procedure TEdit_ProdGroup.SaveButtonClick(Sender: TObject);
begin
 DataModule.ds_ProdGroup.Edit;
 DataModule.ds_ProdGroup.FieldByName('PG_NAME').AsString := Trim(Edit1.Text);
 DataModule.ds_ProdGroup.Post;
 Close;
end;

end.
