unit Edit_Template_Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, StdCtrls, RzCmboBx,
  RzLabel, RzBorder, RzStatus, ExtCtrls, RzPanel, Buttons, cxTextEdit, cxDBEdit,
  RzDBCmbo;

type
  TEdit_Templates = class(TForm)
    cxDBTextEdit1: TcxDBTextEdit;
    SaveButton: TBitBtn;
    CancelButton: TBitBtn;
    RzStatusBar1: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    RzBorder1: TRzBorder;
    RzLabel1: TRzLabel;
    RzBorder2: TRzBorder;
    RzLabel2: TRzLabel;
    RzComboBox1: TRzComboBox;
    RzDBComboBox1: TRzDBComboBox;
    procedure SaveButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Edit_Templates: TEdit_Templates;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TEdit_Templates.SaveButtonClick(Sender: TObject);
begin
 DataModule.ds_Template.Edit;
 if RzComboBox1.ItemIndex  = 0 then //Договора
 DataModule.ds_Template.FieldByName('T_TYPE').AsInteger:=1
 else
 DataModule.ds_Template.FieldByName('T_TYPE').AsInteger:=0;
 DataModule.ds_Template.Post;

end;

end.
