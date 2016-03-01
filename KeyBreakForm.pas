unit KeyBreakForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls,
  Buttons, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DataModuleForm;

type
  TKeyBreak = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ButtonClose: TBitBtn;
    cxGrid1DBTableView1K_ID: TcxGridDBColumn;
    cxGrid1DBTableView1K_KEY: TcxGridDBColumn;
    cxGrid1DBTableView1K_INV: TcxGridDBColumn;
    cxGrid1DBTableView1K_DATE: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  KeyBreak: TKeyBreak;

implementation

{$R *.dfm}

end.
