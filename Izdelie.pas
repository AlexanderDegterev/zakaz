unit Izdelie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinsDefaultPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, cxMaskEdit, cxButtonEdit, cxDropDownEdit,
  cxCheckComboBox, cxDBCheckComboBox, cxDBEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, RzButton, Grids, DBGrids, Buttons, RzPanel, ImgList;

type
  TIzdelieForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxButtonEdit4: TcxButtonEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SaveButton: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ButtonClose: TBitBtn;
    ButtonDel: TBitBtn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    RzToolbar1: TRzToolbar;
    RzSpacer1: TRzSpacer;
    RzSpacer3: TRzSpacer;
    AddBtn: TRzBitBtn;
    RzDelBtn: TRzBitBtn;
    eFilter: TEdit;
    Panel4: TPanel;
    MonEdit: TEdit;
    ImageList: TImageList;
    cxGrid1DBTableView1SV_ID: TcxGridDBColumn;
    cxGrid1DBTableView1SV_UID: TcxGridDBColumn;
    cxGrid1DBTableView1SV_TPID: TcxGridDBColumn;
    cxGrid1DBTableView1SV_COUNT: TcxGridDBColumn;
    cxGrid1DBTableView1SV_READY: TcxGridDBColumn;
    cxGrid1DBTableView1SV_UNITM: TcxGridDBColumn;
    cxGrid1DBTableView1SV_SHIP: TcxGridDBColumn;
    BitBtn2: TBitBtn;
    RzEditBtn: TRzBitBtn;
    Label3: TLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    RzSpacer2: TRzSpacer;
    RzBitBtn1: TRzBitBtn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1TP_ID: TcxGridDBColumn;
    cxGrid2DBTableView1TP_PGID: TcxGridDBColumn;
    cxGrid2DBTableView1TP_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1TP_VOLUME: TcxGridDBColumn;
    cxGrid2DBTableView1TP_UNITM: TcxGridDBColumn;
    cxGrid2DBTableView1TP_GOST: TcxGridDBColumn;
    cxGrid1DBTableView1SV_ZAGOTOVKI: TcxGridDBColumn;
    cxGrid1DBTableView1SV_DATEOTGRUZ: TcxGridDBColumn;
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure ButtonDelClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AddBtnClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure RzEditBtnClick(Sender: TObject);
    procedure eFilterChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzDelBtnClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxGrid2DBTableView1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IzdelieForm: TIzdelieForm;

implementation

uses DataModuleForm, ProdGroup_Form, BTS_Office_form, ADD_Form,
  Add_Product_Form;

{$R *.dfm}

procedure TIzdelieForm.BitBtn1Click(Sender: TObject);
begin
  DataModule.ds_SERV.Edit;
  DataModule.ds_SERV.FieldByName('SV_READY').AsString :=
    DataModule.ds_SERV.FieldByName('SV_OLDREADY').AsString;
  DataModule.ds_SERV.Post;
end;

procedure TIzdelieForm.BitBtn2Click(Sender: TObject);
begin
  DBLookupComboBox1.KeyValue := -1;
  eFilter.Clear;
  DataModule.ds_product.Filtered := False;
  DataModule.ds_product.Close;
  DataModule.ds_product.SelectSQL.Text :=
    'SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT order by TP_NAME';
  // COLLATE PXW_CYRL';
  DataModule.ds_product.Open;
  DataModule.ds_SERV.ReopenLocate('SV_UID');
end;

procedure TIzdelieForm.ButtonCloseClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  // CloseDS_T();
  // FormAdd.CloseButtonClick(self);
  // FormAdd.CloseButton.Click;
  // DataModule.DS_T_Users.ReopenLocate('U_ID');
  // Close;
end;

procedure TIzdelieForm.ButtonDelClick(Sender: TObject);
begin
  DataModule.ds_SERV.Delete;
  DataModule.ds_SERV.ReopenLocate('SV_UID');
end;

procedure TIzdelieForm.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TIzdelieForm.cxGrid2DBTableView1DblClick(Sender: TObject);
var
  QuantityProd, SV_ID, SV_COUNT, TP_ID, TP_PGID: integer;
  TP_NAME, TP_UNITM, TP_GOST: STRING;
begin
  TP_ID := DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  TP_UNITM := DataModule.ds_product.FieldByName('TP_UNITM').AsString;

  SV_COUNT := 0;
  //
  // Переделка через FIBQuery (Кол-во продукции)
  DataModule.Query_QuantityProd.ParamByName('Perem1').Value :=
    DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  DataModule.Query_QuantityProd.ParamByName('Perem2').Value := TRIM(Edit1.Text);
  // DataModule.Query_QuantityProd.Transaction.StartTransaction;
  DataModule.Query_QuantityProd.ExecQuery;
  // DataModule.Query_QuantityProd.Transaction.Commit;

  SV_ID := DataModule.Query_QuantityProd.FieldByName('SV_ID').AsInteger;
  SV_COUNT := DataModule.Query_QuantityProd.FieldByName('SV_COUNT').AsInteger;
  // ShowMessage('Найдено: '+intToStr(SV_COUNT)+'          Нажмите Ок'+intToStr(SV_ID));

  //

  if SV_COUNT >= 1 then
  begin

    // UpDate через Query
    DataModule.ds_SERV.Open;
    DataModule.ds_SERV.Edit;
    DataModule.QueryUpDate.ParamByName('Perem1').Value := SV_COUNT + 1;
    DataModule.QueryUpDate.ParamByName('Perem2').Value := SV_ID;
    // ShowMessage('Присвоили переменные QueryUpDate '+intToStr(QuantityProd)+'SV_COUNT:'+intToStr(SV_COUNT)+'          Нажмите Ок');
    DataModule.QueryUpDate.ExecQuery;

    // Отключил для проверки тормозов
    // eFilter.Clear;                             // на скорость не влияет

    // Внимательно проверить 16,09,2013

    // DataModule.ds_ProdGroup.Close;
    // DataModule.ds_ProdGroup.Open;
    DataModule.ds_SERV.ReopenLocate('SV_UID'); // на скорость не влияет
    // DataModule.ds_SERV.Close;
    // DataModule.ds_SERV.Open;
    // ShowMessage('Добавили !');

  end

  else
  Begin

    // ShowMessage('STOP');
    DataModule.ds_SERV.Open;
    DataModule.ds_SERV.Insert;
    DataModule.ds_SERV.FieldByName('SV_UID').AsInteger :=
      strToInt(TRIM(Edit1.Text));
    DataModule.ds_SERV.FieldByName('SV_TPID').AsInteger := TP_ID;
    DataModule.ds_SERV.FieldByName('SV_COUNT').AsString := '1';
    DataModule.ds_SERV.FieldByName('SV_UNITM').AsString := TP_UNITM;
    DataModule.ds_SERV.Post;

    // Отключил для проверки тормозов
    // eFilter.Clear;
    // DataModule.ds_ProdGroup.Close;
    // DataModule.ds_ProdGroup.Open;
    DataModule.ds_SERV.ReopenLocate('SV_UID');
  End;
end;

procedure TIzdelieForm.DBComboBox1Change(Sender: TObject);
Var
  f, SQLTEXT: string;
begin
  DataModule.ds_product.Close;
  DataModule.ds_product.SelectSQL.Text :=
    'SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT';
  //

  DataModule.ds_ProdGroup.ParamByName('X').AsInteger :=
    DataModule.ds_ProdGroup.FieldByName('PG_ID').AsInteger;
  DataModule.ds_ProdGroup.Open;
  Panel4.Caption := DataModule.ds_ProdGroup.FieldByName('PG_NAME').AsString;
  MonEdit.Text := DataModule.ds_ProdGroup.FieldByName('PG_ID').AsString;

  //

  begin
    f := TRIM(MonEdit.Text);

    SQLTEXT :=
      'SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT';
    // ShowMessage('Вы действительно хотите отсортировать? '+f+'          Нажмите Ок');
    with DataModule.ds_product do
    begin
      DisableControls;
      Close;
      if (Pos(' WHERE TP_PGID =: ', SelectSQL.Text) = 0) then
        SelectSQL.Add(' WHERE TP_PGID =' + f)
      else
        SelectSQL.Text := SQLTEXT;

      Open;
      EnableControls;

    end;
  end;
end;

procedure TIzdelieForm.DBGrid1DblClick(Sender: TObject);
var
  QuantityProd, SV_ID, SV_COUNT, TP_ID, TP_PGID: integer;
  TP_NAME, TP_UNITM, TP_GOST: STRING;
begin
  // edit2.Text:=DataModule.ds_product.FieldByName('TP_ID').AsString;
  TP_ID := DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  TP_UNITM := DataModule.ds_product.FieldByName('TP_UNITM').AsString;

  SV_COUNT := 0;
  //
  // Переделка через FIBQuery (Кол-во продукции)
  DataModule.Query_QuantityProd.ParamByName('Perem1').Value :=
    DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  DataModule.Query_QuantityProd.ParamByName('Perem2').Value := TRIM(Edit1.Text);
  // DataModule.Query_QuantityProd.Transaction.StartTransaction;
  DataModule.Query_QuantityProd.ExecQuery;
  // DataModule.Query_QuantityProd.Transaction.Commit;

  SV_ID := DataModule.Query_QuantityProd.FieldByName('SV_ID').AsInteger;
  SV_COUNT := DataModule.Query_QuantityProd.FieldByName('SV_COUNT').AsInteger;
  // ShowMessage('Найдено: '+intToStr(SV_COUNT)+'          Нажмите Ок'+intToStr(SV_ID));

  //

  if SV_COUNT >= 1 then
  begin

    // UpDate через Query
    DataModule.ds_SERV.Open;
    DataModule.ds_SERV.Edit;
    DataModule.QueryUpDate.ParamByName('Perem1').Value := SV_COUNT + 1;
    DataModule.QueryUpDate.ParamByName('Perem2').Value := SV_ID;
    // ShowMessage('Присвоили переменные QueryUpDate '+intToStr(QuantityProd)+'SV_COUNT:'+intToStr(SV_COUNT)+'          Нажмите Ок');
    DataModule.QueryUpDate.ExecQuery;

    // Отключил для проверки тормозов
    // eFilter.Clear;                             // на скорость не влияет

    // Внимательно проверить 16,09,2013

    // DataModule.ds_ProdGroup.Close;
    // DataModule.ds_ProdGroup.Open;
    DataModule.ds_SERV.ReopenLocate('SV_UID'); // на скорость не влияет
    // DataModule.ds_SERV.Close;
    // DataModule.ds_SERV.Open;
    // ShowMessage('Добавили !');

  end

  else
  Begin

    // ShowMessage('STOP');
    DataModule.ds_SERV.Open;
    DataModule.ds_SERV.Insert;
    DataModule.ds_SERV.FieldByName('SV_UID').AsInteger :=
      strToInt(TRIM(Edit1.Text));
    DataModule.ds_SERV.FieldByName('SV_TPID').AsInteger := TP_ID;
    DataModule.ds_SERV.FieldByName('SV_COUNT').AsString := '1';
    DataModule.ds_SERV.FieldByName('SV_UNITM').AsString := TP_UNITM;
    DataModule.ds_SERV.Post;

    // Отключил для проверки тормозов
    // eFilter.Clear;
    // DataModule.ds_ProdGroup.Close;
    // DataModule.ds_ProdGroup.Open;
    DataModule.ds_SERV.ReopenLocate('SV_UID');
  End;
end;

procedure TIzdelieForm.DBLookupComboBox1CloseUp(Sender: TObject);
Var
  f, SQLTEXT: string;
begin
  DataModule.ds_product.Close;
  DataModule.ds_product.SelectSQL.Text :=
    'SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT';
  //

  DataModule.ds_ProdGroup.ParamByName('X').AsInteger :=
    DataModule.ds_product.FieldByName('TP_PGID').AsInteger;
  DataModule.ds_ProdGroup.Open;
  Panel4.Caption := DataModule.ds_ProdGroup.FieldByName('PG_NAME').AsString;
  MonEdit.Text := DataModule.ds_ProdGroup.FieldByName('PG_ID').AsString;

  //

  begin
    f := TRIM(MonEdit.Text);

    SQLTEXT :=
      'SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT';
    // ShowMessage('Вы действительно хотите отсортировать? '+f+'          Нажмите Ок');
    with DataModule.ds_product do
    begin
      DisableControls;
      Close;
      if (Pos(' WHERE TP_PGID =: ', SelectSQL.Text) = 0) then
        SelectSQL.Add(' WHERE TP_PGID =' + f)
      else
        SelectSQL.Text := SQLTEXT;

      Open;
      EnableControls;

    end;
  end;

end;

procedure TIzdelieForm.eFilterChange(Sender: TObject);
var
  filterText: string;
begin
  if (Length(TRIM(eFilter.Text)) > 0) and (eFilter.Text <> filterText) then
  begin
    DataModule.ds_product.Filtered := False;
    DataModule.ds_product.FilterOptions := [foCaseInsensitive];
    DataModule.ds_product.Filter := 'TP_NAME LIKE ' +
      QuotedStr('%' + TRIM(eFilter.Text) + '%'); // +
    // ' OR U_NOMERZAK LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%'); //+
    // ' OR U_INV LIKE ' + QuotedStr('%' + Trim(eFilter.Text) + '%') ;
    DataModule.ds_product.Filtered := True;

  end;

  if Length(TRIM(eFilter.Text)) = 0 then
  begin
    { DBLookupComboBox1.KeyValue := -1; }
    eFilter.Clear;
    DataModule.ds_product.Filtered := False;
    DataModule.ds_SERV.ReopenLocate('SV_UID');
  end;
end;

procedure TIzdelieForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DataModule.DS_T_Users.ReopenLocate('U_ID');
  DataModule.ds_product.Close;
  DataModule.ds_SERV.Close;
  ModalResult := mrOk;
end;

procedure TIzdelieForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  SaveButtonClick(Self);
end;

procedure TIzdelieForm.FormShow(Sender: TObject);
begin
  // DBLookupComboBox1.KeyValue := -1;
  eFilter.Clear;
  DataModule.ds_product.Filtered := False;
  // DataModule.ds_product.Close;
  // DataModule.ds_product.SelectSQL.Text:='SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT order by TP_NAME'; //COLLATE PXW_CYRL';
  // DataModule.ds_product.Open;
  DataModule.ds_product.ReopenLocate('TP_ID'); // TP_ID

  DataModule.ds_SERV.Close;
  DataModule.ds_SERV.ParamByName('Perem').Value :=
    DataModule.DS_T_Users.FieldByName('U_ID').AsInteger;
  DataModule.ds_SERV.Open;
  // DataModule.ds_SERV.Edit;

  // Label4.Caption :=IntToStr(UserRight);
  if UserRight = 1 then
  Begin
    ButtonDel.Visible := False;
    BitBtn1.Visible := False;
    cxGrid1DBTableView1SV_COUNT.Options.Editing := False;
    cxGrid1DBTableView1SV_ZAGOTOVKI.Options.Editing := False;
    cxGrid1DBTableView1SV_DATEOTGRUZ.Options.Editing := False;
  End;

  // Запрет редактирования
  // DBGrid.Columns[0].ReadOnly := true;
  Edit1.Text := DataModule.DS_T_Users.FieldByName('U_ID').AsString;
  // Не удалять используется !
  Label3.Caption := 'Номер заказа: ' + DataModule.DS_T_Users.FieldByName
    ('U_NOMERZAK').AsString;

end;

procedure TIzdelieForm.RzBitBtn1Click(Sender: TObject);
begin
  eFilter.Clear;
  DataModule.ds_product.Filtered := False;
  DataModule.ds_SERV.ReopenLocate('SV_UID');
end;

procedure TIzdelieForm.RzDelBtnClick(Sender: TObject);
var
  Count: integer;
begin
  // Переделка через FIBQuery (Кол-во TP_ID)
  DataModule.QueryTP_ID.ParamByName('Perem').Value :=
    DataModule.ds_product.FieldByName('TP_ID').AsInteger;
  DataModule.QueryTP_ID.ExecQuery;
  Count := DataModule.QueryTP_ID.FieldByName('TPID').AsInteger;
  if Count = 0 then
    DataModule.ds_product.Delete
  else
    ShowMessage('кол-во используемых : ' + IntToStr(Count) +
      ' Удаление невозможно !');
end;

procedure TIzdelieForm.RzEditBtnClick(Sender: TObject);
begin
  Application.CreateForm(TProdGroup, ProdGroup);
  try
    ProdGroup := TProdGroup.Create(Self);
    if (ProdGroup.ShowModal = mrOk) then
    begin
      DataModule.ds_product.Filtered := False;
      DataModule.ds_product.Close;
      DataModule.ds_product.SelectSQL.Text :=
        'SELECT TP_ID, TP_PGID, TP_NAME, TP_VOLUME, TP_UNITM, TP_GOST FROM T_PRODUCT order by TP_NAME';
      DataModule.ds_product.Open;
      DataModule.ds_SERV.ReopenLocate('SV_UID');
    end;

  finally
    ProdGroup.Free;

  end;

end;

procedure TIzdelieForm.SaveButtonClick(Sender: TObject);
var
  SUM, SV_COUNT: Real;
  // был тип Integer; (убрал так как не поддерживается числа после запятой)
begin
  DataModule.Query_QuantityReady.ParamByName('Perem').Value :=
    DataModule.DS_T_Users.FieldByName('U_ID').AsInteger;
  DataModule.Query_QuantityReady.ExecQuery;
  SUM := DataModule.Query_QuantityReady.FieldByName('SUMMA').AsFloat;
  // ShowMessage('кол-во используемых : '+IntToStr(SUM)+' Удаление невозможно !');
  DataModule.Query_QuantityCount.ParamByName('Perem').Value :=
    DataModule.DS_T_Users.FieldByName('U_ID').AsInteger;
  DataModule.Query_QuantityCount.ExecQuery;
  SV_COUNT := DataModule.Query_QuantityCount.FieldByName('SV_COUNT').AsInteger;

  if ((SUM = SV_COUNT) and (SUM <> 0) and
    (DataModule.DS_T_Users.FieldByName('U_NASED').AsString <> 'Снят') and
    (DataModule.DS_T_Users.FieldByName('U_NASED').AsString <> 'Отгружено')) then
  Begin
    DataModule.DS_T_Users.Open;
    DataModule.DS_T_Users.Edit;
    DataModule.DS_T_Users.FieldByName('U_NASED').AsString := 'Готово';
    DataModule.DS_T_Users.Post;
    DataModule.DS_T_Users.ReopenLocate('U_ID');
  End;

  if ((SUM > 0) and (DataModule.DS_T_Users.FieldByName('U_NASED').AsString <>
    'Снят') and (SUM < SV_COUNT)) then
  begin
    if ((SUM > 0) and (DataModule.DS_T_Users.FieldByName('U_NASED').AsString <>
      'Готово') and (SUM < SV_COUNT)) then
    begin
      if ((SUM > 0) and (DataModule.DS_T_Users.FieldByName('U_NASED').AsString
        <> 'Отгружено') and (SUM < SV_COUNT)) then
      begin
        DataModule.DS_T_Users.Open;
        DataModule.DS_T_Users.Edit;
        DataModule.DS_T_Users.FieldByName('U_NASED').AsString :=
          'Выполнен частично';
        DataModule.DS_T_Users.Post;
        DataModule.DS_T_Users.ReopenLocate('U_ID');
      end;
    end;
  end;
  ModalResult := mrOk;
  Release;
end;

procedure TIzdelieForm.AddBtnClick(Sender: TObject);
begin
  Application.CreateForm(TAdd_product, Add_product);
  try
    Add_product := TAdd_product.Create(Self);
    Add_product.ShowModal;
  finally
    Add_product.Free;

  end;
end;

end.
