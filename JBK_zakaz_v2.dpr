program JBK_zakaz_v2;

uses
  Forms,
  About in 'About.pas' {FormAbout},
  EditForm in 'EditForm.pas' {FormEdit},
  ADD_Form in 'ADD_Form.pas' {FormAdd},
  Reference_Form in 'Reference_Form.pas' {Reference},
  Edit_Clients_Form in 'Edit_Clients_Form.pas' {Edit_Clients},
  Add_Reference_Form in 'Add_Reference_Form.pas' {Add_reference},
  DataBaseConnection in 'DataBaseConnection.pas' {DataBase},
  registration_form in 'registration_form.pas' {registration},
  BTS_Office_form in 'BTS_Office_form.pas' {Main},
  DataModuleForm in 'DataModuleForm.pas' {DataModule},
  professionals_Form in 'professionals_Form.pas' {Professionals},
  ADD_Prof_Form in 'ADD_Prof_Form.pas' {ADD_Prof},
  GenerateReportForm in 'GenerateReportForm.pas' {GenerateReport},
  ControlOfTemplates_Form in 'ControlOfTemplates_Form.pas' {ControlOfTemplates},
  Edit_Template_Form in 'Edit_Template_Form.pas' {Edit_Templates},
  Clients_Form in 'Clients_Form.pas' {Clients},
  ADD_Clients_Form in 'ADD_Clients_Form.pas' {Add_Clients},
  ProdGroup_Form in 'ProdGroup_Form.pas' {ProdGroup},
  ADD_ProdGroup_Form in 'ADD_ProdGroup_Form.pas' {Add_ProdGroup},
  EDIT_ProdGroup_Form in 'EDIT_ProdGroup_Form.pas' {Edit_ProdGroup},
  Object_Form in 'Object_Form.pas' {Obj},
  ADD_Object_Form in 'ADD_Object_Form.pas' {Add_Object},
  Edit_Object_Form in 'Edit_Object_Form.pas' {Edit_Object},
  Izdelie in 'Izdelie.pas' {IzdelieForm},
  Product_Form in 'Product_Form.pas' {PRODUCT},
  Metal_Form in 'Metal_Form.pas' {Metal},
  ADD_Metal_Form in 'ADD_Metal_Form.pas' {ADD_Metal},
  Edit_Metal_Form in 'Edit_Metal_Form.pas' {Edit_Metal},
  Edit_Product_Form in 'Edit_Product_Form.pas' {Edit_Product},
  Add_Product_Form in 'Add_Product_Form.pas' {Add_product},
  Material_Form in 'Material_Form.pas' {Material},
  remote_orders in 'remote_orders.pas' {Remot_orders},
  Izdelie_2 in 'Izdelie_2.pas' {Izdelie2},
  ADD_Form_S in 'ADD_Form_S.pas' {FormAdd_S},
  Edit_Form_S in 'Edit_Form_S.pas' {FormEdit_S},
  Supplier_Form in 'Supplier_Form.pas' {Supplier},
  Supplier_Add_Form in 'Supplier_Add_Form.pas' {Supplier_Add},
  Supplier_Edit_Form in 'Supplier_Edit_Form.pas' {Supplier_Edit},
  ConnectBD_form in 'ConnectBD_form.pas' {ConnectDB},
  ADD_Form_R in 'ADD_Form_R.pas' {FormAdd_R},
  Edit_Form_R in 'Edit_Form_R.pas' {FormEdit_R},
  ADD_FormPrice in 'ADD_FormPrice.pas' {FormAddPrice},
  Edit_FormPrice in 'Edit_FormPrice.pas' {FormEditPrice};

{$R *.res}

begin
  Application.Initialize;
  if Tregistration.Execute then
  begin
    Application.MainFormOnTaskbar := True;
    Application.Title := '�� "�����"';
//  Application.Title := '�� "�������� ��������"';
  Application.CreateForm(TMain, Main);
  Application.CreateForm(TIzdelie2, Izdelie2);
  Application.CreateForm(TFormAdd_S, FormAdd_S);
  Application.CreateForm(TFormEdit_S, FormEdit_S);
  Application.CreateForm(TSupplier, Supplier);
  Application.CreateForm(TSupplier_Add, Supplier_Add);
  Application.CreateForm(TSupplier_Edit, Supplier_Edit);
  Application.CreateForm(TConnectDB, ConnectDB);
  Application.CreateForm(TFormAdd_R, FormAdd_R);
  Application.CreateForm(TFormEdit_R, FormEdit_R);
  Application.CreateForm(TFormAddPrice, FormAddPrice);
  Application.CreateForm(TFormEditPrice, FormEditPrice);
  Application.Run;

  end;

end.
