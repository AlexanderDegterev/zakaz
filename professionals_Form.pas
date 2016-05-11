unit professionals_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, DataModuleForm;

type
  TProfessionals = class(TForm)
    DBGrid1: TDBGrid;
    EditButton: TBitBtn;
    ADDButton: TBitBtn;
    DelButton: TBitBtn;
    CloseButton: TBitBtn;
    procedure ADDButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Professionals: TProfessionals;

implementation

uses ADD_Prof_Form;

{$R *.dfm}

procedure TProfessionals.ADDButtonClick(Sender: TObject);
begin
  Application.CreateForm(TADD_Prof, ADD_Prof);
  ADD_Prof.ShowModal;
end;

procedure TProfessionals.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TProfessionals.DelButtonClick(Sender: TObject);
begin
  DataModule.ds_Proffesionals.Delete;
end;

procedure TProfessionals.FormShow(Sender: TObject);
begin
  DataModule.ds_Proffesionals.FieldByName('p_id').Visible := False;
end;

end.
