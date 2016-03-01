{********************************************************************}
{                                                                    }
{       Extention for                                                }
{       Developer Express Visual Component Library                   }
{       from http://pyatochkin.blogspot.com/                         }
{                                                                    }
{********************************************************************}

unit cxDBLookupComboBoxIMP;

interface

uses
  cxFilter,
  StrUtils,
  SysUtils, Classes, Controls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  ExtCtrls;

type

  // IMP - типа Improved
  // на текущий момент реализует следующие варианты
  // фильтрации списка подстановок
  TSearchOption = (
    soNotConsiderOrdrer, // Ќ≈ учитывать пор€док введенных через пробел шаблонов
    soConsiderOrdrer // учитывать пор€док введенных через пробел шаблонов
    );

const
  CDefaultSearchOption = soNotConsiderOrdrer;

type
  TConditionParser = class(TObject)
  private
    FSl: TStringList;
    function Get(StrIndex: Integer): string;
    procedure SetSearchText(const Value: string);
    function GetSearchText: string;
    function GetCount: Integer;
  public
    property SearchCondition[Index: Integer]: string read Get; default;
    property Count: Integer read GetCount;

    property SearchText: string read GetSearchText write SetSearchText;

    constructor Create(AOwner: TComponent);
    destructor Destroy; override;
  end;

  TcxDBLookupComboBoxIMP = class(TcxDBLookupComboBox)
  private
    { Private declarations }
    FUseDelayTimer: Boolean;
    FSearchOption: TSearchOption;
    procedure OnChangeText(Sender: TObject);
    procedure DoFilter(Sender: TObject);
    procedure SetUseDelayTimer(const Value: Boolean);
    procedure SetSearchOption(const Value: TSearchOption);
  protected
    { Protected declarations }
    FDelayTimer: TTimer;
    Condition: TConditionParser;
    procedure ApplyFilter; virtual;

    procedure Init; virtual;

  public

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

  published
    property SearchOption: TSearchOption read FSearchOption write SetSearchOption
      default soNotConsiderOrdrer;
    // если операци€ поиска быстра€, то можно не использовать таймер
    property UseDelayTimer: Boolean read FUseDelayTimer write SetUseDelayTimer
      default True;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Express DBEditors 6', [TcxDBLookupComboBoxIMP]);
end;

{ TcxDBLookupComboBoxIMP }

constructor TcxDBLookupComboBoxIMP.Create(AOwner: TComponent);
begin
  inherited;
  FDelayTimer := TTimer.Create(self);
  FDelayTimer.Enabled := False;
  Condition := TConditionParser.Create(self);
  Init;
end;

destructor TcxDBLookupComboBoxIMP.Destroy;
begin
  FDelayTimer.Enabled := False;
  inherited;
end;

procedure TcxDBLookupComboBoxIMP.ApplyFilter;
var
  I: Integer;
  SearchFor: string;
begin
  { TODO : сейчас ищет только по Properties.ListColumns[0] - можно сделать учет нескольких колонок... }
  Properties.DataController.Filter.BeginUpdate;
  with Properties.DataController.Filter.Root do
  begin
    Clear;
    BoolOperatorKind := fboAnd;
    if SearchOption = soNotConsiderOrdrer then
    begin
      for I := 0 to Condition.Count - 1 do
      begin
        SearchFor := '%' + AnsiUpperCase(Condition[I]) + '%';
        AddItem(Properties.ListColumns[0], foLike, SearchFor, SearchFor);
      end;
    end
    else
    begin
      SearchFor := AnsiUpperCase('%' +
        AnsiReplaceText(trim(Condition.SearchText), ' ', '%')
        + '%');
      AddItem(Properties.ListColumns[0], foLike, SearchFor, SearchFor);
    end;
  end;
  Properties.DataController.Filter.Active := True;
  Properties.DataController.Filter.EndUpdate;
end;

procedure TcxDBLookupComboBoxIMP.Init;
begin
  SearchOption := CDefaultSearchOption;
  UseDelayTimer := True;
  FDelayTimer.OnTimer := DoFilter;
  FDelayTimer.Interval := 300;
  Properties.DataController.Filter.AutoDataSetFilter := True;
  Properties.IncrementalSearch := False;
  Properties.IncrementalFiltering := False;
  Properties.DataController.Filter.Options :=
    Properties.DataController.Filter.Options + [fcoCaseInsensitive];
  Properties.OnChange := OnChangeText;
end;

procedure TcxDBLookupComboBoxIMP.DoFilter(Sender: TObject);
begin
  if (csDesigning in ComponentState) then
    Exit;

  FDelayTimer.Enabled := False;
  if Condition.SearchText = trim(Self.Text) then
    Exit;
  if trim(Self.Text) = '' then
  begin
    Properties.DataController.Filter.Root.Clear;
    Exit;
  end;
  Condition.SearchText := Self.Text;
  ApplyFilter;
  if DroppedDown and (Properties.ListSource.DataSet.RecordCount > 0) then
  begin
    DroppedDown := False;
    DroppedDown := True;
  end;
end;

procedure TcxDBLookupComboBoxIMP.OnChangeText(Sender: TObject);
begin
  if (csDesigning in ComponentState) then
    Exit;

  if FUseDelayTimer then
  begin
    FDelayTimer.Enabled := False;
    FDelayTimer.Enabled := True;
  end
  else
  begin
    FDelayTimer.Enabled := False;
    DoFilter(Sender);
  end;
end;

procedure TcxDBLookupComboBoxIMP.SetSearchOption(const Value: TSearchOption);
begin
  FSearchOption := Value;
end;

procedure TcxDBLookupComboBoxIMP.SetUseDelayTimer(const Value: Boolean);
begin
  FUseDelayTimer := Value;
  if not FUseDelayTimer then
    FDelayTimer.Enabled := False;
end;

{ TConditionParser }

constructor TConditionParser.Create(AOwner: TComponent);
begin
  FSl := TStringList.Create;
end;

destructor TConditionParser.Destroy;
begin
  FSl.Free;
  inherited;
end;

function TConditionParser.Get(StrIndex: Integer): string;
begin
  Result := FSl[StrIndex];
end;

function TConditionParser.GetCount: Integer;
begin
  Result := FSl.Count;
end;

function TConditionParser.GetSearchText: string;
begin
  Result := FSl.Text;
end;

procedure TConditionParser.SetSearchText(const Value: string);
begin
  FSl.DelimitedText := Value;
end;

end.

