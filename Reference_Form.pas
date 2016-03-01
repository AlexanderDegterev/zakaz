unit Reference_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons,
  Edit_Reference_Form, Add_Reference_Form, DataModuleForm;

type
  TReference = class(TForm)
    DBGrid1: TDBGrid;
    EditButton: TBitBtn;
    ADDButton: TBitBtn;
    DelButton: TBitBtn;
    CloseButton: TBitBtn;
    procedure CloseButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure ADDButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Reference: TReference;

implementation

{$R *.dfm}

procedure TReference.ADDButtonClick(Sender: TObject);
begin
 Application.CreateForm(TAdd_reference, Add_reference);
 Add_reference.ShowModal;
end;

procedure TReference.CloseButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TReference.DelButtonClick(Sender: TObject);
begin
 ShowMessage('Удаление запрещено ! (временно)');
 //DataModule.DS_OTD.Delete;
end;

procedure TReference.EditButtonClick(Sender: TObject);
begin
 Application.CreateForm(TEdit_Reference, Edit_Reference);
 Edit_Reference.ShowModal;
end;

procedure TReference.FormShow(Sender: TObject);
begin
 DataModule.ds_OTD.FieldByName('O_ID').Visible:=False;
end;

end.
