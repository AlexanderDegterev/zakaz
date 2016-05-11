unit my_Unit;

interface

function IsInt(ch : char) : Boolean;
// ������� IsInt ���������, �������� �� ������
// ���������� �� ����� ����� ������ �����

function IsFloat(ch : char; st : string) : Boolean;
// ������� IsFloat ���������, �������� �� ������
// ���������� �� ����� ����� �������� �����
// ch - ��������� ������
// st - ��� ��������� ������

procedure eFilterT_Metal(text: String);

implementation

uses DataModuleForm, DB, DBGrids, SysUtils;

function IsInt(ch : char) : Boolean;
begin
  if (ch >='0') and (ch <='9')  // ����� then
    or (ch = #13)  // Key <Enter>
    or (ch = #8)   // Key <BackSpace>
  then IsInt :=True    // ������ ����������
  else IsInt :=False;  // ������������ ������
end;

function IsFloat(ch : char; st : string) : Boolean;
begin
  if (ch >='0') and (ch <='9')  // ����� then
    or (ch = #13)  // Key <Enter>
    or (ch = #8)   // Key <BackSpace>
  then
    Begin
        IsFloat := True; // ������ ������
        Exit;
    end;
  case ch of
    '-': if Length(st) = 0 then IsFloat:= True;
    ',': if (Pos(',',st) = 0)
         and (st[Length(st)] >= '0')
         and (st[Length(st)] <= '9')
      then
      IsFloat:=True;
      else
      IsFloat:=False;
      //en
      //��� ����������� �������������
      // �� � ������ ������ �� �������� ����������
  end;
end;


procedure eFilterT_Metal(text: String);
var
  filterText: string;
begin
  if (Length(Trim(text)) > 0) and (text <> filterText) then
  begin
    DataModule.ds_Metal.Filtered := False;
    DataModule.ds_Metal.FilterOptions := [foCaseInsensitive];
    DataModule.ds_Metal.Filter := 'TM_NAME LIKE ' + QuotedStr('%' + Trim(text) + '%');
    DataModule.ds_Metal.Filtered := True;

  end;

  if Length(Trim(text)) = 0 then
  begin
    // eFilter.Clear;
    DataModule.ds_Metal.Filtered := False;
    DataModule.ds_SERV_S.ReopenLocate('SVS_NAME');
  end;
end;

end.
