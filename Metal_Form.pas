unit Metal_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids;

type
  TMetal = class(TForm)
    DBGrid1: TDBGrid;
    EditButton: TBitBtn;
    ADDButton: TBitBtn;
    DelButton: TBitBtn;
    CloseButton: TBitBtn;
    procedure CloseButtonClick(Sender: TObject);
    procedure DelButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Metal: TMetal;

implementation

uses DataModuleForm, ADD_Metal_Form, Edit_Metal_Form, BTS_Office_form;

{$R *.dfm}

procedure TMetal.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TMetal.DelButtonClick(Sender: TObject);
begin
  DataModule.ds_Metal.Delete;
end;

procedure TMetal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule.ds_Metal.Close;
end;

procedure TMetal.FormShow(Sender: TObject);
begin
  DataModule.ds_Metal.Open;
end;

end.
