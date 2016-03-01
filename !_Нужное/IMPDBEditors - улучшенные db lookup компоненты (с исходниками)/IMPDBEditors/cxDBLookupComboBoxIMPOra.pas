{********************************************************************}
{                                                                    }
{       Extention for                                                }
{       Developer Express Visual Component Library                   }
{       from http://pyatochkin.blogspot.com/                         }
{                                                                    }
{********************************************************************}

unit cxDBLookupComboBoxIMPOra;

interface

uses
  DB,
  Ora,
  //cxDBLookupComboBox, //(TcxLookupComboBoxProperties)
  cxEdit, //(TcxCustomEditPropertiesClass)
  cxDBLookupComboBoxIMP,
  Classes;

const
  CMaxRowNumDefault = 15;

type
  // понизить уровень видимости нельзя ...
  // нужно для "защиты" того, что возвращает GetPropertiesClass
  // в случае использования внутренних компонентов
  // т.е. по простому совсем скрыть внутренние компоненты нельзя
  // *** possible solution ***
  // This could be solved with a 'Proxy' or 'Facade' style component, which
  // contains an embedded (private) instance of the real component and
  // publishes only the required properties and methods.
  // but... I'm too lazy ;)

  TcxDBLookupComboBoxIMPOra = class(TcxDBLookupComboBoxIMP)
  private
    FListQuery: TOraQuery;
    FFilterField: string;
    FMaxRowNum: Integer;

    procedure SetListQuery(const Value: TOraQuery);
    procedure SetListSource(const Value: TDataSource);
    function GetListSource: TDataSource;
    procedure SetMaxRowNum(const Value: Integer);
    property ListSource: TDataSource read GetListSource write SetListSource;
  protected
    FLastEditValue: Variant;

    procedure ApplyFilter; override;
    procedure EditValueChanged(Sender: TObject);
    procedure Init; override;

  public

    procedure UpdateText;

    //    class function GetPropertiesClass: TcxCustomEditPropertiesClass; override;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property ListQuery: TOraQuery read FListQuery write SetListQuery
      stored True;
    property MaxRowNum: Integer read FMaxRowNum write SetMaxRowNum default
      CMaxRowNumDefault;
  end;

procedure Register;

implementation

uses
  StrUtils, SysUtils, Variants;

procedure Register;
begin
  RegisterComponents('Express DBEditors 6', [TcxDBLookupComboBoxIMPOra]);
end;

{ TcxDBLookupComboBoxIMPOra }

procedure TcxDBLookupComboBoxIMPOra.ApplyFilter;
var
  i: Integer;
  SearchFor, tmp: string;
begin
  FListQuery.Close;
  if trim(FListQuery.SQL.Text) = '' then
    exit;
  FListQuery.DeleteWhere;
  FFilterField := Properties.ListColumns[0].FieldName;
  if SearchOption = soNotConsiderOrdrer then
  begin
    for I := 0 to Condition.Count - 1 do
    begin
      tmp := '( UPPER(' + FFilterField + ')  like ''%' +
        AnsiUpperCase(Condition[I]) + '%'' ) ';
      if i > 0 then
        SearchFor := SearchFor + ' and ' + tmp
      else
        SearchFor := tmp;
    end;
  end
  else
  begin
    SearchFor := '( UPPER(' + FFilterField + ')  like ''%' +
      AnsiUpperCase(AnsiReplaceText(trim(Condition.SearchText), ' ', '%'))
      + '%'') ';
  end;
  FListQuery.AddWhere(SearchFor);
  FListQuery.AddWhere(' rownum <= ' + IntToStr(MaxRowNum));
  FListQuery.Open;
end;

constructor TcxDBLookupComboBoxIMPOra.Create(AOwner: TComponent);
begin
  inherited;
  FListQuery := TOraQuery.Create(self);
  ListSource := TDataSource.Create(self);
  FListQuery.SetSubComponent(True);
  ListSource.DataSet := FListQuery;
end;

destructor TcxDBLookupComboBoxIMPOra.Destroy;
begin
  ListSource.Free;
  FListQuery.Free;
  inherited;
end;

procedure TcxDBLookupComboBoxIMPOra.EditValueChanged(Sender: TObject);
begin
  if not VarSameValue(FLastEditValue, EditValue) then
  begin
    FLastEditValue := EditValue;
    UpdateText;
  end;
end;

function TcxDBLookupComboBoxIMPOra.GetListSource: TDataSource;
begin
  Result := Properties.ListSource;
end;

procedure TcxDBLookupComboBoxIMPOra.Init;
begin
  inherited;
  Properties.OnEditValueChanged := EditValueChanged;
  MaxRowNum := CMaxRowNumDefault;
  FLastEditValue:=Null;
end;

//class function TcxDBLookupComboBoxIMPOra.GetPropertiesClass:
//  TcxCustomEditPropertiesClass;
//begin
//  Result := TcxLookupComboBoxPropertiesIMPOra;
//end;

procedure TcxDBLookupComboBoxIMPOra.SetListQuery(const Value: TOraQuery);
begin
  FListQuery := Value;
end;

procedure TcxDBLookupComboBoxIMPOra.SetListSource(const Value:
  TDataSource);
begin
  Properties.Grid.DataSource := Value;
end;

procedure TcxDBLookupComboBoxIMPOra.SetMaxRowNum(const Value: Integer);
begin
  FMaxRowNum := Value;
end;

procedure TcxDBLookupComboBoxIMPOra.UpdateText;
var
  Event: TNotifyEvent;
begin
  FListQuery.Close;
  if VarIsNull(FLastEditValue) then
    Exit;
  Event := Properties.OnChange;
  FDelayTimer.Enabled := False;
  Properties.OnChange := nil;
  FListQuery.DeleteWhere;
  try
    FListQuery.AddWhere(Properties.KeyFieldNames + '=' +
      VarToStr(FLastEditValue));
    FListQuery.Open;
    if FListQuery.RecordCount > 0 then
      Self.Text :=
        FListQuery.FieldByName(Properties.ListColumns[0].FieldName).AsString;
  finally
    Properties.OnChange := Event;
  end;
end;

end.

