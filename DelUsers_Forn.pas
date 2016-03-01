unit DelUsers_Forn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DataModuleForm, StdCtrls, Buttons;

type
  TFormDelUsers = class(TForm)
    DBGrid1: TDBGrid;
    ButtonClose: TBitBtn;
    procedure ButtonCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDelUsers: TFormDelUsers;

implementation

{$R *.dfm}

procedure TFormDelUsers.ButtonCloseClick(Sender: TObject);
begin
 Close;
end;

end.
