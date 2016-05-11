unit my_Unit;

interface

function IsInt(ch : char) : Boolean;
// функция IsInt проверяет, является ли символ
// допустимым во время ввода целого числа

function IsFloat(ch : char; st : string) : Boolean;
// функция IsFloat проверяет, является ли символ
// допустимым во время ввода дробного числа
// ch - очередной символ
// st - уже введенный символ

procedure eFilterT_Metal(text: String);

implementation

uses DataModuleForm, DB, DBGrids, SysUtils;

function IsInt(ch : char) : Boolean;
begin
  if (ch >='0') and (ch <='9')  // цифры then
    or (ch = #13)  // Key <Enter>
    or (ch = #8)   // Key <BackSpace>
  then IsInt :=True    // символ допустимый
  else IsInt :=False;  // недопустимый символ
end;

function IsFloat(ch : char; st : string) : Boolean;
begin
  if (ch >='0') and (ch <='9')  // цифры then
    or (ch = #13)  // Key <Enter>
    or (ch = #8)   // Key <BackSpace>
  then
    Begin
        IsFloat := True; // символ верный
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
      //это разделитель инициализации
      // он в данном случае не содержит инструкции
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
