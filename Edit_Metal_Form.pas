unit Edit_Metal_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TEdit_Metal = class(TForm)
    SaveButton: TBitBtn;
    CancelButton: TBitBtn;
    Panel1: TPanel;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox9: TGroupBox;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    procedure CancelButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Edit_Metal: TEdit_Metal;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TEdit_Metal.CancelButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TEdit_Metal.FormShow(Sender: TObject);
begin
  DataModule.ds_Metal.Open;
  Edit1.Text:=DataModule.ds_Metal.FieldByName('TM_NAME').AsString;
  Edit3.Text:=DataModule.ds_Metal.FieldByName('TM_UNITM').AsString;
  Edit4.Text:=DataModule.ds_Metal.FieldByName('TM_GOST').AsString;
end;

procedure TEdit_Metal.SaveButtonClick(Sender: TObject);
begin
 DataModule.ds_Metal.Edit;
 DataModule.ds_Metal.FieldByName('TM_NAME').AsString := Trim(Edit1.Text);
 DataModule.ds_Metal.FieldByName('TM_UNITM').AsString := Trim(Edit3.Text);
 DataModule.ds_Metal.FieldByName('TM_GOST').AsString := Trim(Edit4.Text);
 DataModule.ds_Metal.Post;
 Close;
end;

end.
