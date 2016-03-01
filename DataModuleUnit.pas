unit DataModuleUnit;

interface

uses
  SysUtils, Classes, DB, ADODB, IBDatabase, IBSQL, IBCustomDataSet, IBUpdateSQL,
  IBQuery, FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, pFIBDataRefresh,
  FIBQuery, pFIBQuery, DataBaseConnection;

type
  TDataModule1 = class(TDataModule)
    DataSource1: TDataSource;
    T_Contracts: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource2: TDataSource;
    FindSource: TDataSource;
    FindQuery: TADOQuery;
    T_ContractsCT_ID: TIntegerField;
    T_ContractsCT_NOMER: TStringField;
    T_ContractsCT_DATEIN: TDateField;
    T_ContractsCT_DATEOUT: TDateField;
    T_ContractsCT_CLIENTID: TIntegerField;
    T_ContractsCT_USERID: TIntegerField;
    T_ContractsCT_DOCNAME: TStringField;
    T_ContractsCT_DOCNOMER: TStringField;
    T_ContractsCT_DOCDATE: TDateField;
    T_ContractsCT_INACTIVEID: TIntegerField;
    T_ContractsCT_TYPE: TIntegerField;
    T_ContractsCT_ONCE: TIntegerField;
    T_ContractsCT_PROF: TStringField;
    T_ContractsCT_FIO: TStringField;
    T_ContractsCT_PROFFIO: TStringField;
    T_ContractsCT_SMNOMER: TIntegerField;
    T_ContractsCT_ADDINFO: TStringField;
    T_ContractsCT_OPLFORM: TIntegerField;
    T_ContractsCT_NDCST: TIntegerField;
    T_ContractsCT_CONFORM: TIntegerField;
    T_ContractsCT_REMARK: TStringField;
    T_ContractsCT_TYPEOPL: TIntegerField;
    FindQueryCT_ID: TIntegerField;
    FindQueryCT_NOMER: TStringField;
    FindQueryCT_DATEIN: TDateField;
    FindQueryCT_DATEOUT: TDateField;
    FindQueryCT_CLIENTID: TIntegerField;
    FindQueryCT_USERID: TIntegerField;
    FindQueryCT_DOCNAME: TStringField;
    FindQueryCT_DOCNOMER: TStringField;
    FindQueryCT_DOCDATE: TDateField;
    FindQueryCT_INACTIVEID: TIntegerField;
    FindQueryCT_TYPE: TIntegerField;
    FindQueryCT_ONCE: TIntegerField;
    FindQueryCT_PROF: TStringField;
    FindQueryCT_FIO: TStringField;
    FindQueryCT_PROFFIO: TStringField;
    FindQueryCT_SMNOMER: TIntegerField;
    FindQueryCT_ADDINFO: TStringField;
    FindQueryCT_OPLFORM: TIntegerField;
    FindQueryCT_NDCST: TIntegerField;
    FindQueryCT_CONFORM: TIntegerField;
    FindQueryCT_REMARK: TStringField;
    FindQueryCT_TYPEOPL: TIntegerField;
    IBSQL1: TIBSQL;
    IBDatabase1: TIBDatabase;
    IBUpdateSQL1: TIBUpdateSQL;
    IBQuery1: TIBQuery;
    IBTransaction1: TIBTransaction;
    GENQuery2: TADOQuery;
    LargeintField1: TLargeintField;
    FindQueryCL_ID: TIntegerField;
    FindQueryCL_NAME: TStringField;
    FindQueryCL_ADRES: TStringField;
    FindQueryCL_STATUS: TIntegerField;
    FindQueryCL_COUNTRY: TStringField;
    FindQueryCL_NOMERACC: TStringField;
    FindQueryCL_BANKID: TStringField;
    FindQueryCL_UNN: TStringField;
    FindQueryCL_OKPO: TStringField;
    FindQueryCL_INN: TStringField;
    FindQueryCL_PHID: TIntegerField;
    FindQueryCL_PHONE: TStringField;
    FindQueryCL_POSTADRES: TStringField;
    FindQueryCL_EMAIL: TStringField;
    FindQueryCL_BANKNAME: TStringField;
    FindQueryCL_PASSNOMER: TStringField;
    FindQueryCL_PASSDATE: TDateField;
    FindQueryCL_PASSPLACE: TStringField;
    FindQueryCL_BANKADDR: TStringField;
    FindQueryCL_REGADRES: TStringField;
    NewClientQuery: TADOQuery;
    NewClientQueryGEN_ID: TLargeintField;
    T_CLIENTS: TADOTable;
    NewUsersQuery: TADOQuery;
    NewUsersQueryGEN_ID: TLargeintField;
    NewPhysicalsQuery: TADOQuery;
    NewPhysicalsQueryGEN_ID: TLargeintField;
    T_PHYSICALS: TADOTable;
    FindQueryP_ID: TIntegerField;
    FindQueryP_PROF: TStringField;
    FindQueryP_FIO: TStringField;
    FindQueryP_ADRES: TStringField;
    FindQueryP_PASSNOMER: TStringField;
    FindQueryP_PASSDATE: TDateField;
    FindQueryP_PASSPLACE: TStringField;
    FindQueryP_PASSCODE: TStringField;
    FindQueryP_COUNTRY: TStringField;
    IBSQL2: TIBSQL;
    TESTQuery: TADOQuery;
    IBQuery1GEN_ID: TLargeintField;
    Query2011: TADOQuery;
    DataSource2011: TDataSource;
    FindQuery2: TADOQuery;
    StringField1: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    StringField9: TStringField;
    StringField14: TStringField;
    FindSource2: TDataSource;
    FindQuery3: TADOQuery;
    FindSource3: TDataSource;
    FindQuery3CT_ID: TIntegerField;
    FindQuery3CT_NOMER: TStringField;
    FindQuery3CT_DATEIN: TDateField;
    FindQuery3CT_DATEOUT: TDateField;
    FindQuery3CT_CLIENTID: TIntegerField;
    FindQuery3CT_USERID: TIntegerField;
    FindQuery3CT_DOCNAME: TStringField;
    FindQuery3CT_DOCNOMER: TStringField;
    FindQuery3CT_DOCDATE: TDateField;
    FindQuery3CT_INACTIVEID: TIntegerField;
    FindQuery3CT_TYPE: TIntegerField;
    FindQuery3CT_ONCE: TIntegerField;
    FindQuery3CT_PROF: TStringField;
    FindQuery3CT_FIO: TStringField;
    FindQuery3CT_PROFFIO: TStringField;
    FindQuery3CT_SMNOMER: TIntegerField;
    FindQuery3CT_ADDINFO: TStringField;
    FindQuery3CT_OPLFORM: TIntegerField;
    FindQuery3CT_NDCST: TIntegerField;
    FindQuery3CT_CONFORM: TIntegerField;
    FindQuery3CT_REMARK: TStringField;
    FindQuery3CT_TYPEOPL: TIntegerField;
    FindQuery3CL_ID: TIntegerField;
    FindQuery3CL_NAME: TStringField;
    FindQuery3CL_ADRES: TStringField;
    FindQuery3CL_STATUS: TIntegerField;
    FindQuery3CL_COUNTRY: TStringField;
    FindQuery3CL_NOMERACC: TStringField;
    FindQuery3CL_BANKID: TStringField;
    FindQuery3CL_UNN: TStringField;
    FindQuery3CL_OKPO: TStringField;
    FindQuery3CL_INN: TStringField;
    FindQuery3CL_PHID: TIntegerField;
    FindQuery3CL_PHONE: TStringField;
    FindQuery3CL_POSTADRES: TStringField;
    FindQuery3CL_EMAIL: TStringField;
    FindQuery3CL_BANKNAME: TStringField;
    FindQuery3CL_PASSNOMER: TStringField;
    FindQuery3CL_PASSDATE: TDateField;
    FindQuery3CL_PASSPLACE: TStringField;
    FindQuery3CL_BANKADDR: TStringField;
    FindQuery3CL_REGADRES: TStringField;
    FindQuery3P_ID: TIntegerField;
    FindQuery3P_PROF: TStringField;
    FindQuery3P_FIO: TStringField;
    FindQuery3P_ADRES: TStringField;
    FindQuery3P_PASSNOMER: TStringField;
    FindQuery3P_PASSDATE: TDateField;
    FindQuery3P_PASSPLACE: TStringField;
    FindQuery3P_PASSCODE: TStringField;
    FindQuery3P_COUNTRY: TStringField;
    QQuery: TADOQuery;
    QQuery2: TADOQuery;
    T_CLIENTSCL_ID: TIntegerField;
    T_CLIENTSCL_NAME: TStringField;
    T_CLIENTSCL_ADRES: TStringField;
    T_CLIENTSCL_STATUS: TIntegerField;
    T_CLIENTSCL_COUNTRY: TStringField;
    T_CLIENTSCL_NOMERACC: TStringField;
    T_CLIENTSCL_BANKID: TStringField;
    T_CLIENTSCL_UNN: TStringField;
    T_CLIENTSCL_OKPO: TStringField;
    T_CLIENTSCL_INN: TStringField;
    T_CLIENTSCL_PHID: TIntegerField;
    T_CLIENTSCL_PHONE: TStringField;
    T_CLIENTSCL_POSTADRES: TStringField;
    T_CLIENTSCL_EMAIL: TStringField;
    T_CLIENTSCL_BANKNAME: TStringField;
    T_CLIENTSCL_PASSNOMER: TStringField;
    T_CLIENTSCL_PASSDATE: TDateField;
    T_CLIENTSCL_PASSPLACE: TStringField;
    T_CLIENTSCL_BANKADDR: TStringField;
    T_CLIENTSCL_REGADRES: TStringField;
    QuantityQuery: TADOQuery;
    GenInactive: TADOQuery;
    LargeintField2: TLargeintField;
    T_INACTIVES: TADOTable;
    T_contrQuery: TADOQuery;
    GenNewContract: TADOQuery;
    LargeintField3: TLargeintField;
    FindQueryU_ID: TIntegerField;
    FindQueryU_NAME: TStringField;
    FindQueryU_PROF: TStringField;
    FindQueryU_STAMP: TStringField;
    FindQueryU_NDOV: TStringField;
    FindQueryU_DDOV: TDateField;
    FindQueryU_NPR: TStringField;
    FindQueryU_DPR: TDateField;
    FindQueryU_PASSCODE: TStringField;
    FindQueryU_ACTIVE: TIntegerField;
    FindQueryU_MD5HASH: TStringField;
    FindQueryU_RIGHTS: TStringField;
    FindQueryU_PROFFIO: TStringField;
    FindQueryU_PUNDOV: TStringField;
    FindQueryU_PUDDOV: TDateField;
    FindQueryU_PUNAME: TStringField;
    FindQueryU_PUPASS: TStringField;
    FindQueryU_ATTESTAT: TStringField;
    FindQuery3U_ID: TIntegerField;
    FindQuery3U_NAME: TStringField;
    FindQuery3U_PROF: TStringField;
    FindQuery3U_STAMP: TStringField;
    FindQuery3U_NDOV: TStringField;
    FindQuery3U_DDOV: TDateField;
    FindQuery3U_NPR: TStringField;
    FindQuery3U_DPR: TDateField;
    FindQuery3U_PASSCODE: TStringField;
    FindQuery3U_ACTIVE: TIntegerField;
    FindQuery3U_MD5HASH: TStringField;
    FindQuery3U_RIGHTS: TStringField;
    FindQuery3U_PROFFIO: TStringField;
    FindQuery3U_PUNDOV: TStringField;
    FindQuery3U_PUDDOV: TDateField;
    FindQuery3U_PUNAME: TStringField;
    FindQuery3U_PUPASS: TStringField;
    FindQuery3U_ATTESTAT: TStringField;
    UserQuery: TADOQuery;
    UserQuery1: TADOQuery;
    T_USERS: TADOTable;
    GenUser: TADOQuery;
    LargeintField4: TLargeintField;
    QQuery1: TADOQuery;
    QuantityQueryT14: TADOQuery;
    QuantityQueryT15: TADOQuery;
    QQueryT14: TADOQuery;
    QQueryT15: TADOQuery;
    T_contrQueryT15: TADOQuery;
    T_contrQueryT14: TADOQuery;
    QQuery1T14: TADOQuery;
    QQuery1T15: TADOQuery;
    qGen: TADOQuery;
    Query2011CT_ID: TIntegerField;
    Query2011CT_NOMER: TStringField;
    Query2011CT_DATEIN: TDateField;
    Query2011CT_DATEOUT: TDateField;
    Query2011CT_CLIENTID: TIntegerField;
    Query2011CT_USERID: TIntegerField;
    Query2011CT_DOCNAME: TStringField;
    Query2011CT_DOCNOMER: TStringField;
    Query2011CT_DOCDATE: TDateField;
    Query2011CT_INACTIVEID: TIntegerField;
    Query2011CT_TYPE: TIntegerField;
    Query2011CT_ONCE: TIntegerField;
    Query2011CT_PROF: TStringField;
    Query2011CT_FIO: TStringField;
    Query2011CT_PROFFIO: TStringField;
    Query2011CT_SMNOMER: TIntegerField;
    Query2011CT_ADDINFO: TStringField;
    Query2011CT_OPLFORM: TIntegerField;
    Query2011CT_NDCST: TIntegerField;
    Query2011CT_CONFORM: TIntegerField;
    Query2011CT_REMARK: TStringField;
    Query2011CT_TYPEOPL: TIntegerField;
    Query2011CL_ID: TIntegerField;
    Query2011CL_NAME: TStringField;
    Query2011CL_ADRES: TStringField;
    Query2011CL_STATUS: TIntegerField;
    Query2011CL_COUNTRY: TStringField;
    Query2011CL_NOMERACC: TStringField;
    Query2011CL_BANKID: TStringField;
    Query2011CL_UNN: TStringField;
    Query2011CL_OKPO: TStringField;
    Query2011CL_INN: TStringField;
    Query2011CL_PHID: TIntegerField;
    Query2011CL_PHONE: TStringField;
    Query2011CL_POSTADRES: TStringField;
    Query2011CL_EMAIL: TStringField;
    Query2011CL_BANKNAME: TStringField;
    Query2011CL_PASSNOMER: TStringField;
    Query2011CL_PASSDATE: TDateField;
    Query2011CL_PASSPLACE: TStringField;
    Query2011CL_BANKADDR: TStringField;
    Query2011CL_REGADRES: TStringField;
    Query2011P_ID: TIntegerField;
    Query2011P_PROF: TStringField;
    Query2011P_FIO: TStringField;
    Query2011P_ADRES: TStringField;
    Query2011P_PASSNOMER: TStringField;
    Query2011P_PASSDATE: TDateField;
    Query2011P_PASSPLACE: TStringField;
    Query2011P_PASSCODE: TStringField;
    Query2011P_COUNTRY: TStringField;
    T_ContractsTemp: TADOTable;
    SelectCountNomerDog: TADOQuery;
    FIB_DB: TpFIBDatabase;
    DS_T_USERS: TpFIBDataSet;
    FIB_SOURCE: TDataSource;
    FIBTransaction: TpFIBTransaction;
    DS_T_USERSU_NAME: TFIBStringField;
    DS_T_USERSU_LOGIN: TFIBStringField;
    DS_T_USERSU_PASS: TFIBStringField;
    DS_T_USERSU_NASED: TFIBStringField;
    DS_T_USERSU_PROFFIO: TFIBStringField;
    DS_T_USERSU_CERT: TFIBMemoField;
    DS_T_USERSU_KEY: TFIBStringField;
    DS_T_USERSU_INV: TFIBIntegerField;
    DS_T_USERSU_PRIM: TFIBStringField;
    DS_T_USERSU_RIGHTS: TFIBStringField;
    pFIBQuery1: TpFIBQuery;
    DS_T_USERSU_ID: TFIBIntegerField;
    ds_USER_DEL: TpFIBDataSet;
    Q_Gen_user_del: TpFIBQuery;
    FIBDataSet_OTD: TpFIBDataSet;
    FIB_OTD: TDataSource;
    DS_T_USERSOTD_NAME: TStringField;
    DS_T_USERSU_OTD: TFIBIntegerField;
    ds_QuantityLogin: TpFIBDataSet;
    ds_QuantityKey: TpFIBDataSet;
    ds_QuantityInv: TpFIBDataSet;
    ds_users: TpFIBDataSet;
    DataSource_Users: TDataSource;
    ds_usersLOGIN: TFIBStringField;
    //procedure T_ContractsFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation



{$R *.dfm}

{procedure TDataModule1.T_ContractsFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
  begin
   {ID:=MainForm.FindEdit.Text;
  NOMER:=ID;
  MainForm.Label2.Caption:=NOMER;}
  {Accept:=false;
  if copy(DataModuleUnit.DataModule1.T_EPIEPI_NOMER.AsString,13,Length(MainForm.FindEdit.Text))=
  MainForm.FindEdit.Text then
  Accept:=true;
 end;}


end.