unit remote_orders;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons, ExtCtrls;

type
  TRemot_orders = class(TForm)
    Panel3: TPanel;
    Label1: TLabel;
    ButtonClear: TBitBtn;
    eFilter: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    ButtonEdit: TBitBtn;
    ButtonDel: TBitBtn;
    ButtonClose: TBitBtn;
    cxGrid_Remote: TcxGrid;
    cxGrid_RemoteDBTableView1: TcxGridDBTableView;
    cxGrid_RemoteDBTableView1U_ID: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_NAME: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1CL_NAME: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_NOMERZAK: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_OBJECT: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1OB_NAME: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_DATEBEG: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_DATESTART: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_DATEEND: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_NASED: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_CERT: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_MET: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_PRIM: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1U_PROFFIO: TcxGridDBColumn;
    cxGrid_RemoteDBTableView1P_PROF: TcxGridDBColumn;
    cxGrid_RemoteLevel1: TcxGridLevel;
    procedure ButtonCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Remot_orders: TRemot_orders;

implementation

uses DataModuleForm;

{$R *.dfm}

procedure TRemot_orders.ButtonCloseClick(Sender: TObject);
begin
  Close()
end;

end.
