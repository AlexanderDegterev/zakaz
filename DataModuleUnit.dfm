object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 832
  Width = 963
  object DataSource1: TDataSource
    DataSet = T_Contracts
    Left = 48
    Top = 440
  end
  object T_Contracts: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'T_CONTRACTS'
    Left = 48
    Top = 376
    object T_ContractsCT_ID: TIntegerField
      FieldName = 'CT_ID'
    end
    object T_ContractsCT_NOMER: TStringField
      FieldName = 'CT_NOMER'
      Size = 50
    end
    object T_ContractsCT_DATEIN: TDateField
      FieldName = 'CT_DATEIN'
    end
    object T_ContractsCT_DATEOUT: TDateField
      FieldName = 'CT_DATEOUT'
    end
    object T_ContractsCT_CLIENTID: TIntegerField
      FieldName = 'CT_CLIENTID'
    end
    object T_ContractsCT_USERID: TIntegerField
      FieldName = 'CT_USERID'
    end
    object T_ContractsCT_DOCNAME: TStringField
      FieldName = 'CT_DOCNAME'
      Size = 52
    end
    object T_ContractsCT_DOCNOMER: TStringField
      FieldName = 'CT_DOCNOMER'
      Size = 30
    end
    object T_ContractsCT_DOCDATE: TDateField
      FieldName = 'CT_DOCDATE'
    end
    object T_ContractsCT_INACTIVEID: TIntegerField
      FieldName = 'CT_INACTIVEID'
    end
    object T_ContractsCT_TYPE: TIntegerField
      FieldName = 'CT_TYPE'
    end
    object T_ContractsCT_ONCE: TIntegerField
      FieldName = 'CT_ONCE'
    end
    object T_ContractsCT_PROF: TStringField
      FieldName = 'CT_PROF'
      Size = 50
    end
    object T_ContractsCT_FIO: TStringField
      FieldName = 'CT_FIO'
      Size = 50
    end
    object T_ContractsCT_PROFFIO: TStringField
      FieldName = 'CT_PROFFIO'
      Size = 100
    end
    object T_ContractsCT_SMNOMER: TIntegerField
      FieldName = 'CT_SMNOMER'
    end
    object T_ContractsCT_ADDINFO: TStringField
      FieldName = 'CT_ADDINFO'
      Size = 100
    end
    object T_ContractsCT_OPLFORM: TIntegerField
      FieldName = 'CT_OPLFORM'
    end
    object T_ContractsCT_NDCST: TIntegerField
      FieldName = 'CT_NDCST'
    end
    object T_ContractsCT_CONFORM: TIntegerField
      FieldName = 'CT_CONFORM'
    end
    object T_ContractsCT_REMARK: TStringField
      FieldName = 'CT_REMARK'
      Size = 50
    end
    object T_ContractsCT_TYPEOPL: TIntegerField
      FieldName = 'CT_TYPEOPL'
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=masterkey;Persist Security Info=True' +
      ';User ID=sysdba;Data Source=Base;Initial Catalog=Base'
    LoginPrompt = False
    Left = 48
    Top = 312
  end
  object DataSource2: TDataSource
    DataSet = T_CLIENTS
    Left = 120
    Top = 440
  end
  object FindSource: TDataSource
    DataSet = FindQuery
    Left = 64
    Top = 576
  end
  object FindQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'D1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'D2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'left join t_users on t_contracts.ct_userid=t_users.u_id'
      
        'where CT_INACTIVEID is null and (CT_TYPE=14 or CT_TYPE=15) and C' +
        'T_DATEIN  >= :D1'
      'and CT_DATEIN  <= :D2'
      'order by CT_DATEIN')
    Left = 64
    Top = 512
    object FindQueryCT_ID: TIntegerField
      FieldName = 'CT_ID'
      ReadOnly = True
    end
    object FindQueryCT_NOMER: TStringField
      FieldName = 'CT_NOMER'
      ReadOnly = True
      Size = 50
    end
    object FindQueryCT_DATEIN: TDateField
      FieldName = 'CT_DATEIN'
      ReadOnly = True
    end
    object FindQueryCT_DATEOUT: TDateField
      FieldName = 'CT_DATEOUT'
      ReadOnly = True
    end
    object FindQueryCT_CLIENTID: TIntegerField
      FieldName = 'CT_CLIENTID'
      ReadOnly = True
    end
    object FindQueryCT_USERID: TIntegerField
      FieldName = 'CT_USERID'
      ReadOnly = True
    end
    object FindQueryCT_DOCNAME: TStringField
      FieldName = 'CT_DOCNAME'
      ReadOnly = True
      Size = 52
    end
    object FindQueryCT_DOCNOMER: TStringField
      FieldName = 'CT_DOCNOMER'
      ReadOnly = True
      Size = 30
    end
    object FindQueryCT_DOCDATE: TDateField
      FieldName = 'CT_DOCDATE'
      ReadOnly = True
    end
    object FindQueryCT_INACTIVEID: TIntegerField
      FieldName = 'CT_INACTIVEID'
      ReadOnly = True
    end
    object FindQueryCT_TYPE: TIntegerField
      FieldName = 'CT_TYPE'
      ReadOnly = True
    end
    object FindQueryCT_ONCE: TIntegerField
      FieldName = 'CT_ONCE'
      ReadOnly = True
    end
    object FindQueryCT_PROF: TStringField
      FieldName = 'CT_PROF'
      ReadOnly = True
      Size = 50
    end
    object FindQueryCT_FIO: TStringField
      FieldName = 'CT_FIO'
      ReadOnly = True
      Size = 50
    end
    object FindQueryCT_PROFFIO: TStringField
      FieldName = 'CT_PROFFIO'
      ReadOnly = True
      Size = 100
    end
    object FindQueryCT_SMNOMER: TIntegerField
      FieldName = 'CT_SMNOMER'
      ReadOnly = True
    end
    object FindQueryCT_ADDINFO: TStringField
      FieldName = 'CT_ADDINFO'
      ReadOnly = True
      Size = 100
    end
    object FindQueryCT_OPLFORM: TIntegerField
      FieldName = 'CT_OPLFORM'
      ReadOnly = True
    end
    object FindQueryCT_NDCST: TIntegerField
      FieldName = 'CT_NDCST'
      ReadOnly = True
    end
    object FindQueryCT_CONFORM: TIntegerField
      FieldName = 'CT_CONFORM'
      ReadOnly = True
    end
    object FindQueryCT_REMARK: TStringField
      FieldName = 'CT_REMARK'
      ReadOnly = True
      Size = 50
    end
    object FindQueryCT_TYPEOPL: TIntegerField
      FieldName = 'CT_TYPEOPL'
      ReadOnly = True
    end
    object FindQueryCL_ID: TIntegerField
      FieldName = 'CL_ID'
      ReadOnly = True
    end
    object FindQueryCL_NAME: TStringField
      FieldName = 'CL_NAME'
      ReadOnly = True
      Size = 200
    end
    object FindQueryCL_ADRES: TStringField
      FieldName = 'CL_ADRES'
      ReadOnly = True
      Size = 200
    end
    object FindQueryCL_STATUS: TIntegerField
      FieldName = 'CL_STATUS'
      ReadOnly = True
    end
    object FindQueryCL_COUNTRY: TStringField
      FieldName = 'CL_COUNTRY'
      ReadOnly = True
      Size = 3
    end
    object FindQueryCL_NOMERACC: TStringField
      FieldName = 'CL_NOMERACC'
      ReadOnly = True
    end
    object FindQueryCL_BANKID: TStringField
      FieldName = 'CL_BANKID'
      ReadOnly = True
      Size = 15
    end
    object FindQueryCL_UNN: TStringField
      FieldName = 'CL_UNN'
      ReadOnly = True
      Size = 15
    end
    object FindQueryCL_OKPO: TStringField
      FieldName = 'CL_OKPO'
      ReadOnly = True
    end
    object FindQueryCL_INN: TStringField
      FieldName = 'CL_INN'
      ReadOnly = True
    end
    object FindQueryCL_PHID: TIntegerField
      FieldName = 'CL_PHID'
      ReadOnly = True
    end
    object FindQueryCL_PHONE: TStringField
      FieldName = 'CL_PHONE'
      ReadOnly = True
      Size = 75
    end
    object FindQueryCL_POSTADRES: TStringField
      FieldName = 'CL_POSTADRES'
      ReadOnly = True
      Size = 200
    end
    object FindQueryCL_EMAIL: TStringField
      FieldName = 'CL_EMAIL'
      ReadOnly = True
      Size = 100
    end
    object FindQueryCL_BANKNAME: TStringField
      FieldName = 'CL_BANKNAME'
      ReadOnly = True
      Size = 100
    end
    object FindQueryCL_PASSNOMER: TStringField
      FieldName = 'CL_PASSNOMER'
      ReadOnly = True
    end
    object FindQueryCL_PASSDATE: TDateField
      FieldName = 'CL_PASSDATE'
      ReadOnly = True
    end
    object FindQueryCL_PASSPLACE: TStringField
      FieldName = 'CL_PASSPLACE'
      ReadOnly = True
      Size = 50
    end
    object FindQueryCL_BANKADDR: TStringField
      FieldName = 'CL_BANKADDR'
      ReadOnly = True
      Size = 70
    end
    object FindQueryCL_REGADRES: TStringField
      FieldName = 'CL_REGADRES'
      ReadOnly = True
      Size = 70
    end
    object FindQueryP_ID: TIntegerField
      FieldName = 'P_ID'
      ReadOnly = True
    end
    object FindQueryP_PROF: TStringField
      FieldName = 'P_PROF'
      ReadOnly = True
      Size = 200
    end
    object FindQueryP_FIO: TStringField
      FieldName = 'P_FIO'
      ReadOnly = True
      Size = 100
    end
    object FindQueryP_ADRES: TStringField
      FieldName = 'P_ADRES'
      ReadOnly = True
      Size = 200
    end
    object FindQueryP_PASSNOMER: TStringField
      FieldName = 'P_PASSNOMER'
      ReadOnly = True
      Size = 30
    end
    object FindQueryP_PASSDATE: TDateField
      FieldName = 'P_PASSDATE'
      ReadOnly = True
    end
    object FindQueryP_PASSPLACE: TStringField
      FieldName = 'P_PASSPLACE'
      ReadOnly = True
      Size = 100
    end
    object FindQueryP_PASSCODE: TStringField
      FieldName = 'P_PASSCODE'
      ReadOnly = True
      Size = 30
    end
    object FindQueryP_COUNTRY: TStringField
      FieldName = 'P_COUNTRY'
      ReadOnly = True
      Size = 3
    end
    object FindQueryU_ID: TIntegerField
      FieldName = 'U_ID'
    end
    object FindQueryU_NAME: TStringField
      FieldName = 'U_NAME'
      Size = 50
    end
    object FindQueryU_PROF: TStringField
      FieldName = 'U_PROF'
      Size = 50
    end
    object FindQueryU_STAMP: TStringField
      FieldName = 'U_STAMP'
      Size = 5
    end
    object FindQueryU_NDOV: TStringField
      FieldName = 'U_NDOV'
      Size = 10
    end
    object FindQueryU_DDOV: TDateField
      FieldName = 'U_DDOV'
    end
    object FindQueryU_NPR: TStringField
      FieldName = 'U_NPR'
      Size = 10
    end
    object FindQueryU_DPR: TDateField
      FieldName = 'U_DPR'
    end
    object FindQueryU_PASSCODE: TStringField
      FieldName = 'U_PASSCODE'
      Size = 30
    end
    object FindQueryU_ACTIVE: TIntegerField
      FieldName = 'U_ACTIVE'
    end
    object FindQueryU_MD5HASH: TStringField
      FieldName = 'U_MD5HASH'
      Size = 34
    end
    object FindQueryU_RIGHTS: TStringField
      FieldName = 'U_RIGHTS'
      Size = 10
    end
    object FindQueryU_PROFFIO: TStringField
      FieldName = 'U_PROFFIO'
      Size = 100
    end
    object FindQueryU_PUNDOV: TStringField
      FieldName = 'U_PUNDOV'
      Size = 10
    end
    object FindQueryU_PUDDOV: TDateField
      FieldName = 'U_PUDDOV'
    end
    object FindQueryU_PUNAME: TStringField
      FieldName = 'U_PUNAME'
    end
    object FindQueryU_PUPASS: TStringField
      FieldName = 'U_PUPASS'
    end
    object FindQueryU_ATTESTAT: TStringField
      FieldName = 'U_ATTESTAT'
    end
  end
  object IBSQL1: TIBSQL
    Database = IBDatabase1
    SQL.Strings = (
      'SET GENERATOR NEW_CONTRACT TO :Result2')
    Transaction = IBTransaction1
    Left = 624
    Top = 776
  end
  object IBDatabase1: TIBDatabase
    Connected = True
    DatabaseName = 'D:\PTO\temp\PTO.FDB'
    Params.Strings = (
      'user_name=sysdba')
    AllowStreamedConnected = False
    Left = 624
    Top = 712
  end
  object IBUpdateSQL1: TIBUpdateSQL
    ModifySQL.Strings = (
      'SET GENERATOR NEW_CONTRACT to 220200')
    Left = 688
    Top = 776
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    Transaction = IBTransaction1
    Active = True
    SQL.Strings = (
      'UpDate T_CONTRACTS'
      'set CT_INACTIVEID=:INACTIV'
      'where T_CONTRACTS.CT_ID=:Client'
      '')
    Left = 472
    Top = 784
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'INACTIV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Client'
        ParamType = ptUnknown
      end>
    object IBQuery1GEN_ID: TLargeintField
      FieldName = 'GEN_ID'
      ProviderFlags = []
    end
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDatabase1
    Left = 728
    Top = 712
  end
  object GENQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GEN_ID(NEW_CONTRACT,1) FROM RDB$DataBase')
    Left = 456
    Top = 704
    object LargeintField1: TLargeintField
      FieldName = 'GEN_ID'
    end
  end
  object NewClientQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GEN_ID(NEW_Client,1) FROM RDB$DataBase')
    Left = 368
    Top = 632
    object NewClientQueryGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
    end
  end
  object T_CLIENTS: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'T_CLIENTS'
    Left = 120
    Top = 376
    object T_CLIENTSCL_ID: TIntegerField
      FieldName = 'CL_ID'
    end
    object T_CLIENTSCL_NAME: TStringField
      FieldName = 'CL_NAME'
      Size = 200
    end
    object T_CLIENTSCL_ADRES: TStringField
      FieldName = 'CL_ADRES'
      Size = 200
    end
    object T_CLIENTSCL_STATUS: TIntegerField
      FieldName = 'CL_STATUS'
    end
    object T_CLIENTSCL_COUNTRY: TStringField
      FieldName = 'CL_COUNTRY'
      Size = 3
    end
    object T_CLIENTSCL_NOMERACC: TStringField
      FieldName = 'CL_NOMERACC'
    end
    object T_CLIENTSCL_BANKID: TStringField
      FieldName = 'CL_BANKID'
      Size = 15
    end
    object T_CLIENTSCL_UNN: TStringField
      FieldName = 'CL_UNN'
      Size = 15
    end
    object T_CLIENTSCL_OKPO: TStringField
      FieldName = 'CL_OKPO'
    end
    object T_CLIENTSCL_INN: TStringField
      FieldName = 'CL_INN'
    end
    object T_CLIENTSCL_PHID: TIntegerField
      FieldName = 'CL_PHID'
    end
    object T_CLIENTSCL_PHONE: TStringField
      FieldName = 'CL_PHONE'
      Size = 75
    end
    object T_CLIENTSCL_POSTADRES: TStringField
      FieldName = 'CL_POSTADRES'
      Size = 200
    end
    object T_CLIENTSCL_EMAIL: TStringField
      FieldName = 'CL_EMAIL'
      Size = 100
    end
    object T_CLIENTSCL_BANKNAME: TStringField
      FieldName = 'CL_BANKNAME'
      Size = 100
    end
    object T_CLIENTSCL_PASSNOMER: TStringField
      FieldName = 'CL_PASSNOMER'
    end
    object T_CLIENTSCL_PASSDATE: TDateField
      FieldName = 'CL_PASSDATE'
    end
    object T_CLIENTSCL_PASSPLACE: TStringField
      FieldName = 'CL_PASSPLACE'
      Size = 50
    end
    object T_CLIENTSCL_BANKADDR: TStringField
      FieldName = 'CL_BANKADDR'
      Size = 70
    end
    object T_CLIENTSCL_REGADRES: TStringField
      FieldName = 'CL_REGADRES'
      Size = 70
    end
  end
  object NewUsersQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GEN_ID(NEW_User,1) FROM RDB$DataBase')
    Left = 456
    Top = 632
    object NewUsersQueryGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
    end
  end
  object NewPhysicalsQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GEN_ID(NEW_PHYSICAL,1) FROM RDB$DataBase')
    Left = 544
    Top = 632
    object NewPhysicalsQueryGEN_ID: TLargeintField
      FieldName = 'GEN_ID'
    end
  end
  object T_PHYSICALS: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'T_PHYSICALS'
    Left = 192
    Top = 376
  end
  object IBSQL2: TIBSQL
    Left = 544
    Top = 784
  end
  object TESTQuery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SET GENERATOR NEW_CONTRACT TO 30000')
    Left = 352
    Top = 768
  end
  object Query2011: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      
        'where CT_INACTIVEID is null and (CT_TYPE=14 or CT_TYPE=15) and C' +
        'T_DATEIN  >= '#39'01.06.2012'#39
      'and CT_DATEOUT  <= '#39'31.12.2012'#39)
    Left = 200
    Top = 632
    object Query2011CT_ID: TIntegerField
      FieldName = 'CT_ID'
    end
    object Query2011CT_NOMER: TStringField
      FieldName = 'CT_NOMER'
      Size = 50
    end
    object Query2011CT_DATEIN: TDateField
      FieldName = 'CT_DATEIN'
    end
    object Query2011CT_DATEOUT: TDateField
      FieldName = 'CT_DATEOUT'
    end
    object Query2011CT_CLIENTID: TIntegerField
      FieldName = 'CT_CLIENTID'
    end
    object Query2011CT_USERID: TIntegerField
      FieldName = 'CT_USERID'
    end
    object Query2011CT_DOCNAME: TStringField
      FieldName = 'CT_DOCNAME'
      Size = 52
    end
    object Query2011CT_DOCNOMER: TStringField
      FieldName = 'CT_DOCNOMER'
      Size = 30
    end
    object Query2011CT_DOCDATE: TDateField
      FieldName = 'CT_DOCDATE'
    end
    object Query2011CT_INACTIVEID: TIntegerField
      FieldName = 'CT_INACTIVEID'
    end
    object Query2011CT_TYPE: TIntegerField
      FieldName = 'CT_TYPE'
    end
    object Query2011CT_ONCE: TIntegerField
      FieldName = 'CT_ONCE'
    end
    object Query2011CT_PROF: TStringField
      FieldName = 'CT_PROF'
      Size = 50
    end
    object Query2011CT_FIO: TStringField
      FieldName = 'CT_FIO'
      Size = 50
    end
    object Query2011CT_PROFFIO: TStringField
      FieldName = 'CT_PROFFIO'
      Size = 100
    end
    object Query2011CT_SMNOMER: TIntegerField
      FieldName = 'CT_SMNOMER'
    end
    object Query2011CT_ADDINFO: TStringField
      FieldName = 'CT_ADDINFO'
      Size = 100
    end
    object Query2011CT_OPLFORM: TIntegerField
      FieldName = 'CT_OPLFORM'
    end
    object Query2011CT_NDCST: TIntegerField
      FieldName = 'CT_NDCST'
    end
    object Query2011CT_CONFORM: TIntegerField
      FieldName = 'CT_CONFORM'
    end
    object Query2011CT_REMARK: TStringField
      FieldName = 'CT_REMARK'
      Size = 50
    end
    object Query2011CT_TYPEOPL: TIntegerField
      FieldName = 'CT_TYPEOPL'
    end
    object Query2011CL_ID: TIntegerField
      FieldName = 'CL_ID'
    end
    object Query2011CL_NAME: TStringField
      FieldName = 'CL_NAME'
      Size = 200
    end
    object Query2011CL_ADRES: TStringField
      FieldName = 'CL_ADRES'
      Size = 200
    end
    object Query2011CL_STATUS: TIntegerField
      FieldName = 'CL_STATUS'
    end
    object Query2011CL_COUNTRY: TStringField
      FieldName = 'CL_COUNTRY'
      Size = 3
    end
    object Query2011CL_NOMERACC: TStringField
      FieldName = 'CL_NOMERACC'
    end
    object Query2011CL_BANKID: TStringField
      FieldName = 'CL_BANKID'
      Size = 15
    end
    object Query2011CL_UNN: TStringField
      FieldName = 'CL_UNN'
      Size = 15
    end
    object Query2011CL_OKPO: TStringField
      FieldName = 'CL_OKPO'
    end
    object Query2011CL_INN: TStringField
      FieldName = 'CL_INN'
    end
    object Query2011CL_PHID: TIntegerField
      FieldName = 'CL_PHID'
    end
    object Query2011CL_PHONE: TStringField
      FieldName = 'CL_PHONE'
      Size = 75
    end
    object Query2011CL_POSTADRES: TStringField
      FieldName = 'CL_POSTADRES'
      Size = 200
    end
    object Query2011CL_EMAIL: TStringField
      FieldName = 'CL_EMAIL'
      Size = 100
    end
    object Query2011CL_BANKNAME: TStringField
      FieldName = 'CL_BANKNAME'
      Size = 100
    end
    object Query2011CL_PASSNOMER: TStringField
      FieldName = 'CL_PASSNOMER'
    end
    object Query2011CL_PASSDATE: TDateField
      FieldName = 'CL_PASSDATE'
    end
    object Query2011CL_PASSPLACE: TStringField
      FieldName = 'CL_PASSPLACE'
      Size = 50
    end
    object Query2011CL_BANKADDR: TStringField
      FieldName = 'CL_BANKADDR'
      Size = 70
    end
    object Query2011CL_REGADRES: TStringField
      FieldName = 'CL_REGADRES'
      Size = 70
    end
    object Query2011P_ID: TIntegerField
      FieldName = 'P_ID'
    end
    object Query2011P_PROF: TStringField
      FieldName = 'P_PROF'
      Size = 200
    end
    object Query2011P_FIO: TStringField
      FieldName = 'P_FIO'
      Size = 100
    end
    object Query2011P_ADRES: TStringField
      FieldName = 'P_ADRES'
      Size = 200
    end
    object Query2011P_PASSNOMER: TStringField
      FieldName = 'P_PASSNOMER'
      Size = 30
    end
    object Query2011P_PASSDATE: TDateField
      FieldName = 'P_PASSDATE'
    end
    object Query2011P_PASSPLACE: TStringField
      FieldName = 'P_PASSPLACE'
      Size = 100
    end
    object Query2011P_PASSCODE: TStringField
      FieldName = 'P_PASSCODE'
      Size = 30
    end
    object Query2011P_COUNTRY: TStringField
      FieldName = 'P_COUNTRY'
      Size = 3
    end
  end
  object DataSource2011: TDataSource
    DataSet = Query2011
    Left = 200
    Top = 696
  end
  object FindQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'D1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'D2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'left join t_users on t_contracts.ct_userid=t_users.u_id'
      
        'where CT_INACTIVEID is null and (CT_TYPE=14 or CT_TYPE=15) and C' +
        'T_DATEIN  >= :D1'
      'and CT_DATEIN  <= :D2 and T_Clients.CL_UNN is null'
      'order by CT_DATEIN')
    Left = 128
    Top = 512
    object StringField1: TStringField
      DisplayWidth = 40
      FieldName = 'CT_NOMER'
      ReadOnly = True
      Size = 50
    end
    object DateField1: TDateField
      DisplayWidth = 15
      FieldName = 'CT_DATEIN'
      ReadOnly = True
    end
    object DateField2: TDateField
      DisplayWidth = 16
      FieldName = 'CT_DATEOUT'
      ReadOnly = True
    end
    object StringField9: TStringField
      DisplayWidth = 30
      FieldName = 'CL_NAME'
      ReadOnly = True
      Size = 200
    end
    object StringField14: TStringField
      DisplayWidth = 15
      FieldName = 'CL_UNN'
      Size = 15
    end
  end
  object FindSource2: TDataSource
    DataSet = FindQuery2
    Left = 128
    Top = 577
  end
  object FindQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'D1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end
      item
        Name = 'D2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 10
        Size = 6
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'left join t_users on t_contracts.ct_userid=t_users.u_id'
      
        'where CT_INACTIVEID is null and (CT_TYPE=14 or CT_TYPE=15) and C' +
        'T_DATEIN  >= :D1'
      'and CT_DATEIN  <= :D2 and T_Clients.CL_UNN <> '#39#39
      'order by CT_DATEIN')
    Left = 200
    Top = 512
    object FindQuery3CT_ID: TIntegerField
      FieldName = 'CT_ID'
    end
    object FindQuery3CT_NOMER: TStringField
      FieldName = 'CT_NOMER'
      Size = 50
    end
    object FindQuery3CT_DATEIN: TDateField
      FieldName = 'CT_DATEIN'
    end
    object FindQuery3CT_DATEOUT: TDateField
      FieldName = 'CT_DATEOUT'
    end
    object FindQuery3CT_CLIENTID: TIntegerField
      FieldName = 'CT_CLIENTID'
    end
    object FindQuery3CT_USERID: TIntegerField
      FieldName = 'CT_USERID'
    end
    object FindQuery3CT_DOCNAME: TStringField
      FieldName = 'CT_DOCNAME'
      Size = 52
    end
    object FindQuery3CT_DOCNOMER: TStringField
      FieldName = 'CT_DOCNOMER'
      Size = 30
    end
    object FindQuery3CT_DOCDATE: TDateField
      FieldName = 'CT_DOCDATE'
    end
    object FindQuery3CT_INACTIVEID: TIntegerField
      FieldName = 'CT_INACTIVEID'
    end
    object FindQuery3CT_TYPE: TIntegerField
      FieldName = 'CT_TYPE'
    end
    object FindQuery3CT_ONCE: TIntegerField
      FieldName = 'CT_ONCE'
    end
    object FindQuery3CT_PROF: TStringField
      FieldName = 'CT_PROF'
      Size = 50
    end
    object FindQuery3CT_FIO: TStringField
      FieldName = 'CT_FIO'
      Size = 50
    end
    object FindQuery3CT_PROFFIO: TStringField
      FieldName = 'CT_PROFFIO'
      Size = 100
    end
    object FindQuery3CT_SMNOMER: TIntegerField
      FieldName = 'CT_SMNOMER'
    end
    object FindQuery3CT_ADDINFO: TStringField
      FieldName = 'CT_ADDINFO'
      Size = 100
    end
    object FindQuery3CT_OPLFORM: TIntegerField
      FieldName = 'CT_OPLFORM'
    end
    object FindQuery3CT_NDCST: TIntegerField
      FieldName = 'CT_NDCST'
    end
    object FindQuery3CT_CONFORM: TIntegerField
      FieldName = 'CT_CONFORM'
    end
    object FindQuery3CT_REMARK: TStringField
      FieldName = 'CT_REMARK'
      Size = 50
    end
    object FindQuery3CT_TYPEOPL: TIntegerField
      FieldName = 'CT_TYPEOPL'
    end
    object FindQuery3CL_ID: TIntegerField
      FieldName = 'CL_ID'
    end
    object FindQuery3CL_NAME: TStringField
      FieldName = 'CL_NAME'
      Size = 200
    end
    object FindQuery3CL_ADRES: TStringField
      FieldName = 'CL_ADRES'
      Size = 200
    end
    object FindQuery3CL_STATUS: TIntegerField
      FieldName = 'CL_STATUS'
    end
    object FindQuery3CL_COUNTRY: TStringField
      FieldName = 'CL_COUNTRY'
      Size = 3
    end
    object FindQuery3CL_NOMERACC: TStringField
      FieldName = 'CL_NOMERACC'
    end
    object FindQuery3CL_BANKID: TStringField
      FieldName = 'CL_BANKID'
      Size = 15
    end
    object FindQuery3CL_UNN: TStringField
      FieldName = 'CL_UNN'
      Size = 15
    end
    object FindQuery3CL_OKPO: TStringField
      FieldName = 'CL_OKPO'
    end
    object FindQuery3CL_INN: TStringField
      FieldName = 'CL_INN'
    end
    object FindQuery3CL_PHID: TIntegerField
      FieldName = 'CL_PHID'
    end
    object FindQuery3CL_PHONE: TStringField
      FieldName = 'CL_PHONE'
      Size = 75
    end
    object FindQuery3CL_POSTADRES: TStringField
      FieldName = 'CL_POSTADRES'
      Size = 200
    end
    object FindQuery3CL_EMAIL: TStringField
      FieldName = 'CL_EMAIL'
      Size = 100
    end
    object FindQuery3CL_BANKNAME: TStringField
      FieldName = 'CL_BANKNAME'
      Size = 100
    end
    object FindQuery3CL_PASSNOMER: TStringField
      FieldName = 'CL_PASSNOMER'
    end
    object FindQuery3CL_PASSDATE: TDateField
      FieldName = 'CL_PASSDATE'
    end
    object FindQuery3CL_PASSPLACE: TStringField
      FieldName = 'CL_PASSPLACE'
      Size = 50
    end
    object FindQuery3CL_BANKADDR: TStringField
      FieldName = 'CL_BANKADDR'
      Size = 70
    end
    object FindQuery3CL_REGADRES: TStringField
      FieldName = 'CL_REGADRES'
      Size = 70
    end
    object FindQuery3P_ID: TIntegerField
      FieldName = 'P_ID'
    end
    object FindQuery3P_PROF: TStringField
      FieldName = 'P_PROF'
      Size = 200
    end
    object FindQuery3P_FIO: TStringField
      FieldName = 'P_FIO'
      Size = 100
    end
    object FindQuery3P_ADRES: TStringField
      FieldName = 'P_ADRES'
      Size = 200
    end
    object FindQuery3P_PASSNOMER: TStringField
      FieldName = 'P_PASSNOMER'
      Size = 30
    end
    object FindQuery3P_PASSDATE: TDateField
      FieldName = 'P_PASSDATE'
    end
    object FindQuery3P_PASSPLACE: TStringField
      FieldName = 'P_PASSPLACE'
      Size = 100
    end
    object FindQuery3P_PASSCODE: TStringField
      FieldName = 'P_PASSCODE'
      Size = 30
    end
    object FindQuery3P_COUNTRY: TStringField
      FieldName = 'P_COUNTRY'
      Size = 3
    end
    object FindQuery3U_ID: TIntegerField
      FieldName = 'U_ID'
    end
    object FindQuery3U_NAME: TStringField
      FieldName = 'U_NAME'
      Size = 50
    end
    object FindQuery3U_PROF: TStringField
      FieldName = 'U_PROF'
      Size = 50
    end
    object FindQuery3U_STAMP: TStringField
      FieldName = 'U_STAMP'
      Size = 5
    end
    object FindQuery3U_NDOV: TStringField
      FieldName = 'U_NDOV'
      Size = 10
    end
    object FindQuery3U_DDOV: TDateField
      FieldName = 'U_DDOV'
    end
    object FindQuery3U_NPR: TStringField
      FieldName = 'U_NPR'
      Size = 10
    end
    object FindQuery3U_DPR: TDateField
      FieldName = 'U_DPR'
    end
    object FindQuery3U_PASSCODE: TStringField
      FieldName = 'U_PASSCODE'
      Size = 30
    end
    object FindQuery3U_ACTIVE: TIntegerField
      FieldName = 'U_ACTIVE'
    end
    object FindQuery3U_MD5HASH: TStringField
      FieldName = 'U_MD5HASH'
      Size = 34
    end
    object FindQuery3U_RIGHTS: TStringField
      FieldName = 'U_RIGHTS'
      Size = 10
    end
    object FindQuery3U_PROFFIO: TStringField
      FieldName = 'U_PROFFIO'
      Size = 100
    end
    object FindQuery3U_PUNDOV: TStringField
      FieldName = 'U_PUNDOV'
      Size = 10
    end
    object FindQuery3U_PUDDOV: TDateField
      FieldName = 'U_PUDDOV'
    end
    object FindQuery3U_PUNAME: TStringField
      FieldName = 'U_PUNAME'
    end
    object FindQuery3U_PUPASS: TStringField
      FieldName = 'U_PUPASS'
    end
    object FindQuery3U_ATTESTAT: TStringField
      FieldName = 'U_ATTESTAT'
    end
  end
  object FindSource3: TDataSource
    DataSet = FindQuery3
    Left = 200
    Top = 577
  end
  object QQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'T14'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 14
      end
      item
        Name = 'T15'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 15
      end
      item
        Name = 'UNN_NOMER'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'where CT_INACTIVEID is null and (CT_TYPE=:T14 or CT_TYPE=:T15)'
      'and T_Clients.CL_UNN = :UNN_NOMER')
    Left = 424
    Top = 432
  end
  object QQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'UPDATE T_CONTRACTS(CT_NOMER,CT_DATEIN,CT_DATEOUT,'
      'CT_CLIENTID,CT_USERID,CT_DOCNAME,CT_DOCNOMER,'
      'CT_DOCDATE,CT_INACTIVED,CT_TYPE,CT_ONCE,CT_PROF,'
      'CT_FIO,CT_PROFFIO,CT_SMNOMER,CT_ADDINFO,CT_OPLFORM,'
      'CT_NDCST,CT_CONFORM,CT_REMARK,CT_TYPEOPL)'
      'values();')
    Left = 72
    Top = 768
  end
  object QuantityQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'T14'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'T15'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UNN_NOMER'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select count(*)'
      'from'
      '(Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'where CT_INACTIVEID is null and (CT_TYPE=:T14 or CT_TYPE=:T15)'
      'and T_Clients.CL_UNN = :UNN_NOMER)')
    Left = 424
    Top = 376
  end
  object GenInactive: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GEN_ID(NEW_INACTIVE,1) FROM RDB$DataBase')
    Left = 624
    Top = 632
    object LargeintField2: TLargeintField
      FieldName = 'GEN_ID'
    end
  end
  object T_INACTIVES: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'T_INACTIVES'
    Left = 272
    Top = 376
  end
  object T_contrQuery: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    ExecuteOptions = [eoExecuteNoRecords]
    EnableBCD = False
    Parameters = <
      item
        Name = 'INACTIV'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Client'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UpDate T_CONTRACTS'
      'set CT_INACTIVEID=:INACTIV'
      'where T_CONTRACTS.CT_ClientID=:Client')
    Left = 424
    Top = 488
  end
  object GenNewContract: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GEN_ID(NEW_CONTRACT,1) FROM RDB$DataBase')
    Left = 704
    Top = 632
    object LargeintField3: TLargeintField
      FieldName = 'GEN_ID'
    end
  end
  object UserQuery: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Passcode'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 30
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'Select count(*)'
      'from'
      '(Select *'
      'From T_Users'
      'where T_Users.U_active ='#39'1'#39' '
      'and T_Users.U_Passcode=:Passcode)')
    Left = 632
    Top = 320
  end
  object UserQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Passcode'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 30
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Users'
      'where T_Users.U_active ='#39'1'#39' '
      'and T_Users.U_Passcode=:Passcode')
    Left = 696
    Top = 320
  end
  object T_USERS: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'T_USERS'
    Left = 344
    Top = 376
  end
  object GenUser: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT GEN_ID(NEW_USER,1) FROM RDB$DataBase')
    Left = 544
    Top = 704
    object LargeintField4: TLargeintField
      FieldName = 'GEN_ID'
    end
  end
  object QQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'T14'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'T15'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UNN_NOMER'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'where  (CT_TYPE=:T14 or CT_TYPE=:T15) and'
      'T_Clients.CL_UNN =:UNN_NOMER')
    Left = 424
    Top = 552
  end
  object QuantityQueryT14: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'T14'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UNN_NOMER'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select count(*)'
      'from'
      '(Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'where CT_INACTIVEID is null and CT_TYPE=:T14 '
      'and T_Clients.CL_UNN = :UNN_NOMER)')
    Left = 512
    Top = 376
  end
  object QuantityQueryT15: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'T15'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'UNN_NOMER'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select count(*)'
      'from'
      '(Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'where CT_INACTIVEID is null and CT_TYPE=:T15'
      'and T_Clients.CL_UNN = :UNN_NOMER)')
    Left = 608
    Top = 376
  end
  object QQueryT14: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'UNN_NOMER'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'where CT_INACTIVEID is null '
      'and T_Clients.CL_UNN = :UNN_NOMER')
    Left = 504
    Top = 432
  end
  object QQueryT15: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'UNN_NOMER'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'where CT_INACTIVEID is null '
      'and T_Clients.CL_UNN = :UNN_NOMER')
    Left = 600
    Top = 432
  end
  object T_contrQueryT15: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    ExecuteOptions = [eoExecuteNoRecords]
    EnableBCD = False
    Parameters = <
      item
        Name = 'INACTIV'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Client'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'T15'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UpDate T_CONTRACTS'
      'set CT_INACTIVEID=:INACTIV'
      'where T_CONTRACTS.CT_ClientID=:Client'
      'and T_CONTRACTS.CT_TYPE=:T15')
    Left = 600
    Top = 488
  end
  object T_contrQueryT14: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    ExecuteOptions = [eoExecuteNoRecords]
    EnableBCD = False
    Parameters = <
      item
        Name = 'INACTIV'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Client'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'T14'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UpDate T_CONTRACTS'
      'set CT_INACTIVEID=:INACTIV'
      'where T_CONTRACTS.CT_ClientID=:Client '
      'and T_CONTRACTS.CT_TYPE=:T14')
    Left = 504
    Top = 488
  end
  object QQuery1T14: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'UNN_NOMER'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'where T_Clients.CL_UNN =:UNN_NOMER')
    Left = 504
    Top = 552
  end
  object QQuery1T15: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'UNN_NOMER'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 15
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      'Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'left join t_physicals on t_clients.cl_phid=t_physicals.p_id'
      'where T_Clients.CL_UNN =:UNN_NOMER')
    Left = 600
    Top = 552
  end
  object qGen: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Passcode'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 30
        Size = 30
        Value = Null
      end>
    SQL.Strings = (
      'Select count(*)'
      'from'
      '(Select *'
      'From T_Users'
      'where T_Users.U_active ='#39'1'#39' '
      'and T_Users.U_Passcode=:Passcode)')
    Left = 512
    Top = 304
  end
  object T_ContractsTemp: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'T_CONTRACTSTEMP'
    Left = 200
    Top = 440
  end
  object SelectCountNomerDog: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'NomerDog'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 50
        Size = 50
        Value = Null
      end>
    SQL.Strings = (
      'Select count(*)'
      'from'
      '(Select *'
      'From T_Contracts'
      'left join t_clients on t_contracts.ct_clientid=t_clients.cl_id'
      'where CT_INACTIVEID is null '
      'and T_Contracts.CT_nomer = :NomerDog)')
    Left = 704
    Top = 432
  end
  object FIB_DB: TpFIBDatabase
    AutoReconnect = True
    Connected = True
    DBName = 'E:\SASHA\Delphi_TEST\Cert\CERTIFICAT.FDB'
    DBParams.Strings = (
      'lc_ctype=WIN1251'
      'user_name=SYSDBA'
      'password=masterkey')
    DefaultTransaction = FIBTransaction
    SQLDialect = 1
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 56
    Top = 32
  end
  object DS_T_USERS: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_USERS'
      'SET '
      '    U_NAME = :U_NAME,'
      '    U_LOGIN = :U_LOGIN,'
      '    U_PASS = :U_PASS,'
      '    U_NASED = :U_NASED,'
      '    U_OTD = :U_OTD,'
      '    U_PROFFIO = :U_PROFFIO,'
      '    U_CERT = :U_CERT,'
      '    U_KEY = :U_KEY,'
      '    U_INV = :U_INV,'
      '    U_PRIM = :U_PRIM,'
      '    U_RIGHTS = :U_RIGHTS'
      'WHERE'
      '    U_ID = :OLD_U_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_USERS'
      'WHERE'
      '        U_ID = :OLD_U_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_USERS('
      '    U_ID,'
      '    U_NAME,'
      '    U_LOGIN,'
      '    U_PASS,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_KEY,'
      '    U_INV,'
      '    U_PRIM,'
      '    U_RIGHTS'
      ')'
      'VALUES('
      '    :U_ID,'
      '    :U_NAME,'
      '    :U_LOGIN,'
      '    :U_PASS,'
      '    :U_NASED,'
      '    :U_OTD,'
      '    :U_PROFFIO,'
      '    :U_CERT,'
      '    :U_KEY,'
      '    :U_INV,'
      '    :U_PRIM,'
      '    :U_RIGHTS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    U_ID,'
      '    U_NAME,'
      '    U_LOGIN,'
      '    U_PASS,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_KEY,'
      '    U_INV,'
      '    U_PRIM,'
      '    U_RIGHTS'
      'FROM'
      '    T_USERS'
      'where(  U_ID<>:X'
      '     ) and (     T_USERS.U_ID = :OLD_U_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    U_ID,'
      '    U_NAME,'
      '    U_LOGIN,'
      '    U_PASS,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_KEY,'
      '    U_INV,'
      '    U_PRIM,'
      '    U_RIGHTS'
      'FROM'
      '    T_USERS'
      'where U_ID<>:X'
      'ORDER BY U_ID')
    AutoUpdateOptions.KeyFields = 'U_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_USER'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Active = True
    Transaction = FIBTransaction
    Database = FIB_DB
    AutoCommit = True
    Left = 144
    Top = 32
    object DS_T_USERSU_ID: TFIBIntegerField
      DisplayWidth = 6
      FieldName = 'U_ID'
    end
    object DS_T_USERSU_NAME: TFIBStringField
      DisplayWidth = 30
      FieldName = 'U_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_USERSU_LOGIN: TFIBStringField
      DisplayWidth = 10
      FieldName = 'U_LOGIN'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_USERSU_PASS: TFIBStringField
      DisplayWidth = 10
      FieldName = 'U_PASS'
      Size = 10
      EmptyStrToNull = True
    end
    object DS_T_USERSU_NASED: TFIBStringField
      Alignment = taCenter
      DisplayWidth = 7
      FieldName = 'U_NASED'
      Size = 10
      EmptyStrToNull = True
    end
    object DS_T_USERSU_OTD: TFIBIntegerField
      DisplayWidth = 5
      FieldName = 'U_OTD'
    end
    object DS_T_USERSOTD_NAME: TStringField
      FieldKind = fkLookup
      FieldName = 'OTD_NAME'
      LookupDataSet = FIBDataSet_OTD
      LookupKeyFields = 'O_ID'
      LookupResultField = 'O_NAME'
      KeyFields = 'U_OTD'
      Lookup = True
    end
    object DS_T_USERSU_PROFFIO: TFIBStringField
      DisplayWidth = 15
      FieldName = 'U_PROFFIO'
      Size = 100
      EmptyStrToNull = True
    end
    object DS_T_USERSU_CERT: TFIBMemoField
      DisplayWidth = 10
      FieldName = 'U_CERT'
      BlobType = ftMemo
      Size = 8
    end
    object DS_T_USERSU_KEY: TFIBStringField
      DisplayWidth = 12
      FieldName = 'U_KEY'
      Size = 30
      EmptyStrToNull = True
    end
    object DS_T_USERSU_INV: TFIBIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 10
      FieldName = 'U_INV'
    end
    object DS_T_USERSU_PRIM: TFIBStringField
      DisplayWidth = 13
      FieldName = 'U_PRIM'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_USERSU_RIGHTS: TFIBStringField
      DisplayWidth = 15
      FieldName = 'U_RIGHTS'
      Size = 10
      EmptyStrToNull = True
    end
  end
  object FIB_SOURCE: TDataSource
    DataSet = DS_T_USERS
    Left = 144
    Top = 96
  end
  object FIBTransaction: TpFIBTransaction
    Active = True
    DefaultDatabase = FIB_DB
    TimeoutAction = TARollback
    Left = 48
    Top = 96
  end
  object pFIBQuery1: TpFIBQuery
    Transaction = FIBTransaction
    Database = FIB_DB
    Left = 240
    Top = 96
  end
  object ds_USER_DEL: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_USERS_DEL'
      'SET '
      '    U_ID_OLD = :U_ID_OLD,'
      '    U_NAME = :U_NAME,'
      '    U_LOGIN = :U_LOGIN,'
      '    U_PASS = :U_PASS,'
      '    U_NASED = :U_NASED,'
      '    U_OTD = :U_OTD,'
      '    U_PROFFIO = :U_PROFFIO,'
      '    U_CERT = :U_CERT,'
      '    U_KEY = :U_KEY,'
      '    U_INV = :U_INV,'
      '    U_PRIM = :U_PRIM,'
      '    U_RIGHTS = :U_RIGHTS'
      'WHERE'
      '    U_ID = :OLD_U_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_USERS_DEL'
      'WHERE'
      '        U_ID = :OLD_U_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_USERS_DEL('
      '    U_ID,'
      '    U_ID_OLD,'
      '    U_NAME,'
      '    U_LOGIN,'
      '    U_PASS,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_KEY,'
      '    U_INV,'
      '    U_PRIM,'
      '    U_RIGHTS'
      ')'
      'VALUES('
      '    :U_ID,'
      '    :U_ID_OLD,'
      '    :U_NAME,'
      '    :U_LOGIN,'
      '    :U_PASS,'
      '    :U_NASED,'
      '    :U_OTD,'
      '    :U_PROFFIO,'
      '    :U_CERT,'
      '    :U_KEY,'
      '    :U_INV,'
      '    :U_PRIM,'
      '    :U_RIGHTS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    U_ID,'
      '    U_ID_OLD,'
      '    U_NAME,'
      '    U_LOGIN,'
      '    U_PASS,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_KEY,'
      '    U_INV,'
      '    U_PRIM,'
      '    U_RIGHTS'
      'FROM'
      '    T_USERS_DEL '
      ''
      ' WHERE '
      '        T_USERS_DEL.U_ID = :OLD_U_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    U_ID,'
      '    U_ID_OLD,'
      '    U_NAME,'
      '    U_LOGIN,'
      '    U_PASS,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_KEY,'
      '    U_INV,'
      '    U_PRIM,'
      '    U_RIGHTS'
      'FROM'
      '    T_USERS_DEL ')
    AutoUpdateOptions.KeyFields = 'U_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_USER_DEL'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Active = True
    Transaction = FIBTransaction
    Database = FIB_DB
    AutoCommit = True
    Left = 240
    Top = 32
  end
  object Q_Gen_user_del: TpFIBQuery
    Left = 328
    Top = 96
  end
  object FIBDataSet_OTD: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_OTDSOURCE'
      'SET '
      '    O_NAME = :O_NAME'
      'WHERE'
      '    O_ID = :OLD_O_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_OTDSOURCE'
      'WHERE'
      '        O_ID = :OLD_O_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_OTDSOURCE('
      '    O_ID,'
      '    O_NAME'
      ')'
      'VALUES('
      '    :O_ID,'
      '    :O_NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    O_ID,'
      '    O_NAME'
      'FROM'
      '    T_OTDSOURCE'
      'where(  O_ID<>:X'
      '     ) and (     T_OTDSOURCE.O_ID = :OLD_O_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    O_ID,'
      '    O_NAME'
      'FROM'
      '    T_OTDSOURCE'
      'where O_ID<>:X'
      'ORDER BY O_ID  ')
    AutoUpdateOptions.KeyFields = 'O_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_OTDSOURCE'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Active = True
    Transaction = FIBTransaction
    Database = FIB_DB
    AutoCommit = True
    Left = 448
    Top = 32
  end
  object FIB_OTD: TDataSource
    DataSet = FIBDataSet_OTD
    Left = 448
    Top = 96
  end
  object ds_QuantityLogin: TpFIBDataSet
    SelectSQL.Strings = (
      'select count (t_users.u_login)'
      'from t_users'
      'where t_users.u_login =:perem')
    Active = True
    Transaction = FIBTransaction
    Database = FIB_DB
    AutoCommit = True
    Left = 560
    Top = 32
  end
  object ds_QuantityKey: TpFIBDataSet
    SelectSQL.Strings = (
      'select count (t_users.u_Key)'
      'from t_users'
      'where t_users.u_Key =UPPER(:perem)')
    Active = True
    Transaction = FIBTransaction
    Database = FIB_DB
    AutoCommit = True
    Left = 656
    Top = 32
  end
  object ds_QuantityInv: TpFIBDataSet
    SelectSQL.Strings = (
      'select count (t_users.u_Inv)'
      'from t_users'
      'where t_users.u_Inv =:perem')
    Active = True
    Transaction = FIBTransaction
    Database = FIB_DB
    AutoCommit = True
    Left = 752
    Top = 32
  end
  object ds_users: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    LOGIN,'
      '    PWD,'
      '    PID'
      'FROM'
      '    USERS ')
    FilterOptions = [foCaseInsensitive]
    Active = True
    Transaction = FIBTransaction
    Database = FIB_DB
    AutoCommit = True
    Left = 856
    Top = 32
    object ds_usersLOGIN: TFIBStringField
      FieldName = 'LOGIN'
      Size = 30
      EmptyStrToNull = True
    end
  end
  object DataSource_Users: TDataSource
    DataSet = ds_users
    Left = 856
    Top = 88
  end
end
