unit Add_Reference_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DataModuleForm;

type
  TAdd_reference = class(TForm)
    Edit1: TEdit;
    Panel1: TPanel;
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
  Add_reference: TAdd_reference;

implementation

{$R *.dfm}

procedure TAdd_reference.CancelButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TAdd_reference.SaveButtonClick(Sender: TObject);
begin
 //DataModule.DS_OTD.Open;
 DataModule.DS_OTD.Insert;
 DataModule.DS_OTD.FieldByName('O_NAME').AsString := Trim(Edit1.Text);
 DataModule.DS_OTD.Post;
 //DataModule.DS_OTD.Close;
 //DataModule.DS_OTD.Open; //���� ��� �� ������� - BDGrid - ��������
 Close;
end;

end.