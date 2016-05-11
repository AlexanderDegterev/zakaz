unit Object_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DB;

type
  TObj = class(TForm)
    DBGrid1: TDBGrid;
    EditButton: TBitBtn;
    ADDButton: TBitBtn;
    DelButton: TBitBtn;
    CloseButton: TBitBtn;
    eFilter: TEdit;
    ButtonClear: TBitBtn;
    procedure CloseButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure ADDButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure eFilterChange(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    // procedure eFilterKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure eFilterKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Obj: TObj;

implementation

uses ADD_Object_Form, DataModuleForm, Edit_Object_Form, EditForm, ADD_Form;

{$R *.dfm}

procedure TObj.ADDButtonClick(Sender: TObject);
begin
  Application.CreateForm(TAdd_Object, Add_Object);
  Add_Object.ShowModal;
end;

procedure TObj.ButtonClearClick(Sender: TObject);
begin
  eFilter.Clear;
  DataModule.ds_Object.Filtered := False;
end;

procedure TObj.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TObj.DBGrid1CellClick(Column: TColumn);
begin
  ModalResult := mrOk;
end;

procedure TObj.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then // ���� ������ ������� <Enter>
    ModalResult := mrOk;
end;

procedure TObj.DelButtonClick(Sender: TObject);
begin
  ShowMessage('�������� ��������� ! (��������)');
  // DataModule.ds_Object.Delete;
end;

procedure TObj.EditButtonClick(Sender: TObject);
begin
  Application.CreateForm(TEdit_Object, Edit_Object);
  Edit_Object.ShowModal;
end;

procedure TObj.eFilterChange(Sender: TObject);
// � ������ USES �������� DB
var
  filterText: string;
begin
  if (Length(Trim(eFilter.Text)) > 0) and (eFilter.Text <> filterText) then
  begin
    DataModule.ds_Object.Filtered := False;
    DataModule.ds_Object.FilterOptions := [foCaseInsensitive];
    DataModule.ds_Object.Filter := 'OB_NAME LIKE' +
      QuotedStr('%' + Trim(eFilter.Text) + '%'); // +
    // ' OR U_NOMERZAK LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%'); //+
    // ' OR U_INV LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%') ;
    DataModule.ds_Object.Filtered := True;
  end;
  if Length(Trim(eFilter.Text)) = 0 then
  begin
    eFilter.Clear;
    DataModule.ds_Object.Filtered := False;
    DataModule.ds_Object.ReopenLocate('OB_NAME');
  end;

end;

procedure TObj.eFilterKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = 40 then // ���� ������ ������� ������� ����
    DBGrid1.SetFocus;
end;

{ procedure TObj.eFilterKeyPress(Sender: TObject; var Key: Char);
  begin
  if key = #13 then // ���� ������ ������� <enter>
  DBGrid1.SetFocus;
  end; }

end.
