unit BTS_Office_form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModuleForm, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Menus,DB,
  EditForm, ADD_Form, Reference_Form, About, DataBaseConnection, frxClass,
  frxDBSet, frxFIBComponents, ActnList, RzStatus, RzPanel, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  KeyBreakForm,ClipBrd, ImgList, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, XPMan,
  ComCtrls, cxCheckBox;

type
  TMain = class(TForm)
    RzStatusBar1: TRzStatusBar;
    RzClockStatus1: TRzClockStatus;
    Label2: TLabel;
    ActionList1: TActionList;
    ActionClose: TAction;
    ImageList: TImageList;
    XPManifest1: TXPManifest;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    TabSheet3: TTabSheet;
    TabZakaz: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    RadioGroup2: TRadioGroup;
    ButtonClear: TBitBtn;
    eFilter: TEdit;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1U_ID: TcxGridDBColumn;
    cxGrid1DBTableView1U_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1CL_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1U_NOMERZAK: TcxGridDBColumn;
    cxGrid1DBTableView1U_OBJECT: TcxGridDBColumn;
    cxGrid1DBTableView1OB_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1U_DIVISION: TcxGridDBColumn;
    cxGrid1DBTableView1DV_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1U_DATEBEG: TcxGridDBColumn;
    cxGrid1DBTableView1U_DATESTART: TcxGridDBColumn;
    cxGrid1DBTableView1U_DATEEND: TcxGridDBColumn;
    cxGrid1DBTableView1U_NASED: TcxGridDBColumn;
    cxGrid1DBTableView1U_CERT: TcxGridDBColumn;
    cxGrid1DBTableView1U_MET: TcxGridDBColumn;
    cxGrid1DBTableView1U_PRIM: TcxGridDBColumn;
    cxGrid1DBTableView1U_PROFFIO: TcxGridDBColumn;
    cxGrid1DBTableView1P_PROF: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel2: TPanel;
    ButtonEdit: TBitBtn;
    ButtonAdd: TBitBtn;
    ButtonDel: TBitBtn;
    ButtonClose: TBitBtn;
    frxFIBComponents1: TfrxFIBComponents;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N6: TMenuItem;
    N2: TMenuItem;
    N16: TMenuItem;
    N31: TMenuItem;
    N5: TMenuItem;
    N9: TMenuItem;
    N18: TMenuItem;
    N23: TMenuItem;
    N19: TMenuItem;
    N22: TMenuItem;
    N25: TMenuItem;
    N21: TMenuItem;
    N20: TMenuItem;
    N15: TMenuItem;
    N10: TMenuItem;
    N24: TMenuItem;
    N13: TMenuItem;
    N11: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    cxGrid3: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGridDBTableView1DOG_ID: TcxGridDBColumn;
    cxGridDBTableView1DOG_SUPID: TcxGridDBColumn;
    cxGridDBTableView1SUP_NAME: TcxGridDBColumn;
    cxGridDBTableView1DOG_NUMBER: TcxGridDBColumn;
    cxGridDBTableView1DOG_DATE: TcxGridDBColumn;
    cxGridDBTableView1DOG_ACTIVE: TcxGridDBColumn;
    cxGridDBTableView1DOG_PRIM: TcxGridDBColumn;
    N12: TMenuItem;
    cxGrid2DBTableView1SVS_ID: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_SUPID: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_DOGID: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_TMID: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_UNITM: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_VOLUME: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_PAYMENT_TERM: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_PRICE_TN_W_NDS: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_VOL_GET: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_NAKL_DATE: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_NAKL_NUM: TcxGridDBColumn;
    cxGrid2DBTableView1SVS_PAYMENT_NAKL: TcxGridDBColumn;
    N14: TMenuItem;
    Panel8: TPanel;
    N17: TMenuItem;
    Panel9: TPanel;
    BtnEdit_R: TBitBtn;
    BtnAdd_R: TBitBtn;
    BtnDel_R: TBitBtn;
    BtnClose_R: TBitBtn;
    BitReport: TBitBtn;
    ActionReport: TAction;
    BitEdit_S: TBitBtn;
    BitDel_S: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitAdd_S: TBitBtn;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    Panel10: TPanel;
    cxGrid5: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    ActionAddMetal: TAction;
    ActionEditMetal: TAction;
    ActionAddForm_R: TAction;
    Action1: TAction;
    ActionAddForm_S: TAction;
    cxGridDBTableView2SVR_ID: TcxGridDBColumn;
    cxGridDBTableView2SVR_REQID: TcxGridDBColumn;
    cxGridDBTableView2SVR_TMID: TcxGridDBColumn;
    cxGridDBTableView2SVR_NAME: TcxGridDBColumn;
    cxGridDBTableView2SVR_COUNT: TcxGridDBColumn;
    cxGridDBTableView2SVR_UNITM: TcxGridDBColumn;
    cxGridDBTableView2SVR_GOST: TcxGridDBColumn;
    cxGridDBTableView2SVR_LOGIN: TcxGridDBColumn;
    cxGrid4DBTableView1REQ_ID: TcxGridDBColumn;
    cxGrid4DBTableView1REQ_CLNAME: TcxGridDBColumn;
    cxGrid4DBTableView1CL_NAME: TcxGridDBColumn;
    cxGrid4DBTableView1REQ_OBNAME: TcxGridDBColumn;
    cxGrid4DBTableView1OB_NAME: TcxGridDBColumn;
    cxGrid4DBTableView1REQ_DATE: TcxGridDBColumn;
    cxGrid4DBTableView1REQ_LOGIN: TcxGridDBColumn;
    cxGrid4DBTableView1REQ_PRIM: TcxGridDBColumn;
    cxGrid4DBTableView1REQ_N_ZAKAZ: TcxGridDBColumn;
    BitRefrash: TBitBtn;
    ActionEditForm_R: TAction;
    ��������: TBitBtn;
    TabPrice: TTabSheet;
    Panel11: TPanel;
    eFilterRequest: TEdit;
    Panel12: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BtnPriceDelete: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Panel13: TPanel;
    eFilterPrice: TEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    cxGrid7: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    BtnClearFindPrice: TBitBtn;
    cxGrid6: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    Action2: TAction;
    ActionAddFormPrice: TAction;
    cxGridDBTableView3TP_ID: TcxGridDBColumn;
    cxGridDBTableView3TP_PGID: TcxGridDBColumn;
    cxGridDBTableView3TP_NAME: TcxGridDBColumn;
    cxGridDBTableView3TP_VOLUME: TcxGridDBColumn;
    cxGridDBTableView3TP_UNITM: TcxGridDBColumn;
    cxGridDBTableView3TP_GOST: TcxGridDBColumn;
    cxGridDBTableView3TP_WEIGHT: TcxGridDBColumn;
    cxGridDBTableView3TP_PRICE: TcxGridDBColumn;
    cxGridDBTableView3TP_DATE: TcxGridDBColumn;
    cxGridDBTableView3TP_STATUS: TcxGridDBColumn;
    cxGridDBTableView3TP_PRIM: TcxGridDBColumn;
    cxGridDBTableView4TSP_ID: TcxGridDBColumn;
    cxGridDBTableView4TSP_TMID: TcxGridDBColumn;
    cxGridDBTableView4TSP_TPID: TcxGridDBColumn;
    cxGridDBTableView4TSP_NAME: TcxGridDBColumn;
    cxGridDBTableView4TSP_COUNT: TcxGridDBColumn;
    cxGridDBTableView4TSP_UNITM: TcxGridDBColumn;
    ActionDelProduction: TAction;
    ActionEditFormPrice: TAction;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cBox: TcxGridDBColumn;
    cxGrid1DBTableView1Checked: TcxGridDBColumn;
    procedure eFilterChange(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure ButtonEditClick(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonDelClick(Sender: TObject);
    procedure aboutProgramClick(Sender: TObject);
    //procedure DBGrid1TitleClick(Column: TColumn);
    procedure N5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActionCloseExecute(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure ButtonClearClick(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure templatsClick(Sender: TObject);
    procedure N17Click(Sender: TObject);
    {procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1U_NASEDCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);}
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure eFilterKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure BitDel_SClick(Sender: TObject);
    procedure BitEdit_SClick(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure BtnClose_ZClick(Sender: TObject);
    procedure ActionReportExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitAdd_SClick(Sender: TObject);
    procedure ActionAddMetalExecute(Sender: TObject);
    procedure ActionEditMetalExecute(Sender: TObject);
    procedure ActionAddForm_RExecute(Sender: TObject);
    procedure ActionAddForm_SExecute(Sender: TObject);
    procedure T_METAL_ClearExecute(Sender: TObject);
    procedure BtnDel_RClick(Sender: TObject);
    procedure BitRefrashClick(Sender: TObject);
    procedure ActionEditForm_RExecute(Sender: TObject);
    procedure ��������Click(Sender: TObject);
    procedure ActionAddFormPriceExecute(Sender: TObject);
    procedure eFilterRequestChange(Sender: TObject);
    procedure eFilterRequestKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure eFilterPriceChange(Sender: TObject);
    procedure BtnPriceDeleteClick(Sender: TObject);
    procedure ActionDelProductionExecute(Sender: TObject);
    procedure ActionEditFormPriceExecute(Sender: TObject);
    procedure cxGridDBTableView3TP_PRICECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;
  UserRight,UserIDGlobal : integer;
  UserName : string;

implementation

uses DelUsers_Forn, professionals_Form, GenerateReportForm, ControlOfTemplates_Form,
  Clients_Form, ProdGroup_Form, Object_Form, Metal_Form, remote_orders,
  ADD_Form_S, Edit_Form_S, Supplier_Form, ConnectBD_form, ADD_Metal_Form,
  Edit_Metal_Form, ADD_Form_R, Edit_Form_R, ADD_FormPrice, Edit_FormPrice;

{$R *.dfm}

//function Date : TDateTime;

procedure RemoveAll(path: string);
var
  sr: TSearchRec;
begin
  if FindFirst(path + '\*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      if sr.Attr and faDirectory = 0 then
      begin
        DeleteFile(path + '\' + sr.name);
      end
      else
      begin
        if pos('.', sr.name) <= 0 then
          RemoveAll(path + '\' + sr.name);
      end;
    until
      FindNext(sr) <> 0;
  end;
  FindClose(sr);
  RemoveDirectory(PChar(path));
end;

procedure TMain.ActionReportExecute(Sender: TObject);
begin
Application.CreateForm(TGenerateReport, GenerateReport);
  try
  GenerateReport:=TGenerateReport.create(self);
  GenerateReport.ShowModal;
 finally
 GenerateReport.free;
 end;
end;

procedure TMain.T_METAL_ClearExecute(Sender: TObject);
begin
 eFilter.Clear;
 DataModule.ds_Metal.Filtered := False;
end;

procedure TMain.��������Click(Sender: TObject);
begin
eFilter.Clear;
DataModule.DS_T_Users.Filtered := False;
DataModule.DS_T_Users.ReopenLocate('U_DATEBEG');
end;

procedure TMain.ActionEditFormPriceExecute(Sender: TObject);
begin
Application.CreateForm(TFormEditPrice, FormEditPrice);
  try
  FormEditPrice:=TFormEditPrice.create(self);
  FormEditPrice.ShowModal;
 finally
 FormEditPrice.free;
 end;

end;

procedure TMain.ActionEditForm_RExecute(Sender: TObject);
begin
Application.CreateForm(TFormEdit_R, FormEdit_R);
  try
  FormEdit_R:=TFormEdit_R.create(self);
  FormEdit_R.ShowModal;
 finally
 FormEdit_R.free;
 end;
end;

procedure TMain.ActionDelProductionExecute(Sender: TObject);
begin
if MessageDlg('�� ������������� ������ �������?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo
            then exit;

  DataModule.ds_product.Delete;
end;

procedure TMain.ActionAddFormPriceExecute(Sender: TObject);
begin
Application.CreateForm(TFormAddPrice, FormAddPrice);
  try
  FormAddPrice:=TFormAddPrice.create(self);
  FormAddPrice.ShowModal;
 finally
 FormAddPrice.free;
 end;

end;

procedure TMain.ActionAddForm_RExecute(Sender: TObject);
begin
Application.CreateForm(TFormAdd_R, FormAdd_R);
  try
  FormAdd_R:=TFormAdd_R.create(self);
  FormAdd_R.ShowModal;
 finally
 FormAdd_R.free;
 end;
end;

procedure TMain.ActionAddForm_SExecute(Sender: TObject);
begin
  Application.CreateForm(TFormAdd_S, FormAdd_S);
  try
  FormAdd_S:=TFormAdd_S.create(self);
  FormAdd_S.ShowModal;
 finally
 FormAdd_S.free;
 end;
end;

procedure TMain.ActionAddMetalExecute(Sender: TObject);
begin
Application.CreateForm(TADD_Metal, ADD_Metal);
 try
  ADD_Metal:=TADD_Metal.create(self);
  ADD_Metal.ShowModal;
 finally
  Add_Metal.free;
 end;
end;

procedure TMain.ActionCloseExecute(Sender: TObject);
var
   MyDIR,dir:string;

begin
 // �������� �������� temp � ������
  MyDIR:=ExtractFileDir(Application.ExeName);
  dir:=MyDIR+'\temp\';
  //if MessageDlg('�� ������������� ������ ������� �����:'+dir, mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;
  RemoveAll(dir);
 Close()
end;

procedure TMain.ActionEditMetalExecute(Sender: TObject);
begin
Application.CreateForm(TEdit_Metal, Edit_Metal);
 try
   Edit_Metal:=TEdit_Metal.create(self);
   Edit_Metal.Showmodal;
 finally
   Edit_Metal.Free;
 end;
end;

procedure TMain.BitDel_SClick(Sender: TObject);
begin
if MessageDlg('�� ������������� ������ �������?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo
            then exit;

  DataModule.DS_SUP_First.Delete;
end;

procedure TMain.BitEdit_SClick(Sender: TObject);
begin
 Application.CreateForm(TFormEdit_S, FormEdit_S);
  try
  FormEdit_S:=TFormEdit_S.create(self);
  FormEdit_S.ShowModal;
 finally
 FormEdit_S.free;
 end;
end;

procedure TMain.BitRefrashClick(Sender: TObject);
begin
DataModule.ds_Request.ReopenLocate('REQ_DATE');
DataModule.ds_Detail_R.ReopenLocate('SVR_ID');
end;

procedure TMain.BitAdd_SClick(Sender: TObject);
begin
Application.CreateForm(TFormAdd_S, FormAdd_S);
  try
  FormAdd_S:=TFormAdd_S.create(self);
  FormAdd_S.ShowModal;
 finally
 FormAdd_S.free;
 end;
end;

procedure TMain.BtnClose_ZClick(Sender: TObject);
begin
 Close();
end;

procedure TMain.BtnDel_RClick(Sender: TObject);
begin
if MessageDlg('�� ������������� ������ �������?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo
            then exit;

  DataModule.ds_Request.Delete;
end;

procedure TMain.BtnPriceDeleteClick(Sender: TObject);
begin
if MessageDlg('�� ������������� ������ �������?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo
            then exit;

  DataModule.ds_product.Delete;
end;

procedure TMain.ButtonAddClick(Sender: TObject);
begin
 Application.CreateForm(TFormAdd, FormAdd);
  try
  FormAdd:=TFormAdd.create(self);
  FormAdd.ShowModal;
 finally
 FormAdd.free;
 end;

end;

procedure TMain.ButtonClearClick(Sender: TObject);
begin
 eFilterPrice.Clear;
 DataModule.ds_product.Filtered := False;
end;

procedure TMain.ButtonCloseClick(Sender: TObject);
begin
 Close;
end;

procedure TMain.ButtonDelClick(Sender: TObject);
begin
 if MessageDlg('�� ������������� ������ �������?',
            mtConfirmation, [mbYes, mbNo], 0) = mrNo
            then exit;

  DataModule.DS_T_USERS.Delete;
end;

procedure TMain.ButtonEditClick(Sender: TObject);
begin
 Application.CreateForm(TFormEdit, FormEdit);
  try
  FormEdit:=TFormEdit.create(self);
  FormEdit.ShowModal;
 finally
 FormEdit.free;
 end;
end;

procedure TMain.cxGridDBTableView3TP_PRICECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
Var
  TextToDraw : string;
  begin
  TextToDraw:= trim(AViewInfo.GridRecord.DisplayTexts[7]);
  if TextToDraw <> '' then
  ACanvas.Brush.Color := clGreen;
end;

procedure TMain.eFilterChange(Sender: TObject);
 var
  filterText:string;
begin
   if (Length(Trim(eFilter.Text)) > 0) and (eFilter.Text <> filterText) then
     begin
       DataModule.DS_T_Users.Filtered := False;
       DataModule.DS_T_Users.FilterOptions :=[foCaseInsensitive];
       DataModule.DS_T_Users.Filter := 'U_NOMERZAK LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%');// +
                           //' OR U_NOMERZAK LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%'); //+
                          // ' OR U_INV LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%') ;
       DataModule.DS_T_Users.Filtered := True;
     end;
   if Length(Trim(eFilter.Text)) = 0 then
      begin
        eFilter.Clear;
        DataModule.DS_T_Users.Filtered := False;
        DataModule.DS_T_Users.ReopenLocate('U_DATEBEG');
      end;

end;

procedure TMain.eFilterKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then // ���� ������ ������� <Enter>
  ButtonEditClick(Self);
end;

procedure TMain.eFilterPriceChange(Sender: TObject);
var
  filterTextPrice:string;
begin
   if (Length(Trim(eFilterPrice.Text)) > 0) and (eFilterPrice.Text <> filterTextPrice) then
     begin
       DataModule.ds_product.Filtered := False;
       DataModule.ds_product.FilterOptions :=[foCaseInsensitive];
       DataModule.ds_product.Filter := 'TP_NAME LIKE ' + QuotedStr('%' + Trim(eFilterPrice.Text) + '%');// +
       DataModule.ds_product.Filtered := True;
     end;
   if Length(Trim(eFilterPrice.Text)) = 0 then
      begin
        eFilterPrice.Clear;
        DataModule.ds_product.Filtered := False;
        DataModule.ds_product.ReopenLocate('TP_NAME');
      end;

end;

procedure TMain.eFilterRequestChange(Sender: TObject);
var
  filterTextRequest:string;
begin
   if (Length(Trim(eFilterRequest.Text)) > 0) and (eFilterRequest.Text <> filterTextRequest) then
     begin
       DataModule.ds_Request.Filtered := False;
       DataModule.ds_Request.FilterOptions :=[foCaseInsensitive];
       DataModule.ds_Request.Filter := 'REQ_N_ZAKAZ LIKE ' + QuotedStr('%' + Trim(eFilterRequest.Text) + '%');// +
       DataModule.ds_Request.Filtered := True;
     end;
   if Length(Trim(eFilterRequest.Text)) = 0 then
      begin
        eFilterRequest.Clear;
        DataModule.ds_Request.Filtered := False;
        DataModule.ds_Request.ReopenLocate('REQ_DATE');
      end;

end;

procedure TMain.eFilterRequestKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_DELETE then
Begin
  eFilterRequest.Clear;
  DataModule.ds_Request.Filtered := False;
  DataModule.ds_Request.ReopenLocate('REQ_DATE');
end;

end;

procedure TMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //case Key of
      //VK_F4: ActionList1.Actions[]
    //13: if ssCtrl in Shift then vsTreeDblClick(nil);
    //27:  //if eEditRecord.Visible then
         //else Close;
    //39: //if (ssCtrl in Shift) and (sbTo.Enabled) then sbToClick(nil);   // ������� ������
    //45:  //NewEditRecord;
    //70:  //if ActiveControl <> mComment then FindInTree; // ctrl-F
    //107: iBuyClick(nil);
    //113: EditRecord; // F2 - �������������
    //114: FindInTree(True); // F3 - ����������� ������
    //116: iReloadClick(nil); // F5 ��������
    //117: if sbTo.Enabled then sbToClick(nil); // F6
    //120: if ssCtrl in Shift then sbChoceAkkClick(nil) // Ctrl-F9 ����� ������������
    //     else sbAccumulatorClick(nil);  // F9 ������ ������������
  //end;
end;

procedure TMain.FormShow(Sender: TObject);
begin
// �������� ������ �������� � ������� ����������
  DataModule.DS_SUP_First.Open;
  DataModule.ds_Detail.Open;
  DataModule.ds_Supplier.Open;
  DataModule.ds_Request.Open;
  DataModule.ds_Detail_R.Open;
  DataModule.ds_Spec_Prod_detail.Open;


  CreateDir('temp');
  {if CreateDir('temp')
  then ShowMessage('����� ������� ��������')
  else ShowMessage('���������� ������ �������� ����������� � �������: '+ IntToStr(GetLastError));}
  if UserRight = 0 then
    Label2.Caption := '�� ����� ��� ' +UserName;
    //PageControl.Pages[2].TabVisible:=False;  // �������� ������

if UserRight = 1 then  // ��� �/�
Begin
 Label2.Caption := '�� ����� ��� ������������ ' + UserName;
 ButtonDel.Visible := False;
 ButtonAdd.Visible := False;
 N2.Visible := False;
 N9.Visible := False;
 N31.Visible := False;
 PageControl.Pages[0].TabVisible:=False;  // �������� ������
 PageControl.Pages[1].TabVisible:=False;  // �������� ����������
 PageControl.Pages[2].TabVisible:=False;  // �������� ������
 //PageControl.Pages[3].TabVisible:=False;  // �������� ������
End;

 if UserRight = 2 then
  Begin
    Label2.Caption := '�� ����� ��� (��������) ' + UserName;
    PageControl.Pages[2].TabVisible:=False;  // �������� ������
    PageControl.Pages[3].TabVisible:=False;  // �������� ������
  End;

end;


procedure TMain.N11Click(Sender: TObject);
begin
  Application.CreateForm(TGenerateReport, GenerateReport);
  GenerateReport.Showmodal;
end;


procedure TMain.N12Click(Sender: TObject);
begin
 Application.CreateForm(TSupplier, Supplier);
  try
  Supplier:=TSupplier.create(self);
  Supplier.ShowModal;
 finally
 Supplier.free;
end;
end;

procedure TMain.N15Click(Sender: TObject);
begin
   Application.CreateForm(TProfessionals, Professionals);
   Professionals.ShowModal;
end;

procedure TMain.templatsClick(Sender: TObject);
begin
 Application.CreateForm(TControlOfTemplates, ControlOfTemplates);
 ControlOfTemplates.Showmodal;
end;

procedure TMain.N17Click(Sender: TObject);
begin
 Application.CreateForm(TConnectDB, ConnectDB);
  try
  ConnectDB:=TConnectDB.create(self);
  ConnectDB.ShowModal;
 finally
 ConnectDB.free;
 end;
end;

procedure TMain.N18Click(Sender: TObject);
begin
Application.CreateForm(TClients, Clients);
Clients.ShowModal;
end;

procedure TMain.N19Click(Sender: TObject);
begin
 Application.CreateForm(TProdGroup, ProdGroup);
 ProdGroup.Showmodal;
end;

procedure TMain.N20Click(Sender: TObject);
begin
  Application.CreateForm(TObj, Obj);
  Obj.Showmodal;
end;

procedure TMain.N25Click(Sender: TObject);
begin
  Application.CreateForm(TMetal, Metal);
  Metal.Showmodal;
end;

procedure TMain.aboutProgramClick(Sender: TObject);
begin
  Application.CreateForm(TFormAbout, FormAbout);
  try
    FormAbout:=TFormAbout.Create(self);
    FormAbout.Showmodal;
  finally
   FormAbout.Free;
  end;
end;

procedure TMain.N5Click(Sender: TObject);
begin
 Application.CreateForm(TDataBase, DataBase);
 DataBASE.SHOWMODAL;
end;

procedure TMain.N6Click(Sender: TObject);
begin
 Close;
end;



procedure TMain.N8Click(Sender: TObject);
begin
Application.CreateForm(TRemot_orders, Remot_orders);
  try
  Remot_orders:=TRemot_orders.create(self);
  Remot_orders.ShowModal;
 finally
 Remot_orders.free;
 end;
end;

procedure TMain.RadioButton1Click(Sender: TObject);
begin
 DataModule.DS_T_Users.Close;
 DataModule.DS_T_Users.SelectSQL.Clear;
 DataModule.DS_T_Users.SelectSQL.add('SELECT U_ID, U_NAME, CL_NAME, U_NOMERZAK, U_OBJECT, U_Division, DV_NAME, OB_NAME, U_DATEBEG, U_DATESTART, U_DATEEND, U_NASED, U_OTD, U_PROFFIO, U_CERT, U_MET, U_PRIM, P_Prof, U_RIGHTS FROM T_USERS');
 DataModule.DS_T_Users.SelectSQL.add('left join T_clients on t_clients.cl_id=t_users.u_name left join t_object on t_object.ob_id=t_users.u_object left join T_PROFESIONALS on T_PROFESIONALS.p_id=t_users.u_proffio left join T_Division on t_users.u_Division=t_Division.dv_id');
 DataModule.DS_T_Users.SelectSQL.add('WHERE U_NASED <> ''���������'' and U_NASED <> ''����'' ORDER BY U_DATEBEG');
 DataModule.DS_T_Users.open;
end;

procedure TMain.RadioButton2Click(Sender: TObject);
begin
 DataModule.DS_T_Users.Close;
 //SQLtext:='SELECT U_ID, U_NAME, CL_NAME, U_NOMERZAK, U_OBJECT, OB_NAME, U_DATEBEG, U_DATESTART, U_DATEEND, U_NASED, U_OTD, U_PROFFIO, U_CERT, U_MET, U_PRIM, P_Prof, U_RIGHTS FROM T_USERS left join T_clients on t_clients.cl_id=t_users.u_name left join t_object on t_object.ob_id=t_users.u_object left join T_PROFESIONALS on T_PROFESIONALS.p_id=t_users.u_proffio WHERE U_NASED = ''���������'' ORDER BY U_DATEBEG';
 DataModule.DS_T_Users.SelectSQL.Clear;
 DataModule.DS_T_Users.SelectSQL.add('SELECT U_ID, U_NAME, CL_NAME, U_NOMERZAK, U_OBJECT, U_Division, DV_NAME, OB_NAME, U_DATEBEG, U_DATESTART, U_DATEEND, U_NASED, U_OTD, U_PROFFIO, U_CERT, U_MET, U_PRIM, P_Prof, U_RIGHTS FROM T_USERS');
 DataModule.DS_T_Users.SelectSQL.add('left join T_clients on t_clients.cl_id=t_users.u_name left join t_object on t_object.ob_id=t_users.u_object left join T_PROFESIONALS on T_PROFESIONALS.p_id=t_users.u_proffio left join T_Division on t_users.u_Division=t_Division.dv_id');
 DataModule.DS_T_Users.SelectSQL.add('WHERE U_NASED = ''���������'' or U_NASED = ''����'' ORDER BY U_DATEBEG');
 DataModule.DS_T_Users.open;
end;

end.
