unit ADD_Metal_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TADD_Metal = class(TForm)
    Panel1: TPanel;
    SaveButton: TBitBtn;
    CancelButton: TBitBtn;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ADD_Metal: TADD_Metal;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TADD_Metal.CancelButtonClick(Sender: TObject);
begin
 Close;
end;

procedure TADD_Metal.SaveButtonClick(Sender: TObject);
var
  MetName: string;
  MetQuantity: integer;
begin
  MetName:=Trim(Edit1.Text); //наименование
  //
  // Переделка через FIBQuery (Кол-во наименования)
  DataModule.Query_QuantityTMetal.ParamByName('Perem1').Value:=TRIM(Edit1.Text);
  DataModule.Query_QuantityTMetal.ExecQuery;

  MetQuantity:=DataModule.Query_QuantityTMetal.FieldByName('COUNT').AsInteger;

  if MetQuantity>=1 then
    begin
     ShowMessage('Материал: '+MetName+' уже есть с справочнике');
    end
   else
   Begin
    DataModule.ds_Metal.Insert;
    DataModule.ds_Metal.FieldByName('TM_NAME').AsString := Trim(Edit1.Text); //наименование
    DataModule.ds_Metal.FieldByName('TM_UNITM').AsString := Trim(Edit3.Text);
    DataModule.ds_Metal.FieldByName('TM_GOST').AsString := Trim(Edit4.Text);
    DataModule.ds_Metal.Post;
    Close;
   End;
end;

end.
