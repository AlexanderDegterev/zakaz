object DataModule: TDataModule
  Left = 0
  Top = 0
  Caption = 'DataModule'
  ClientHeight = 699
  ClientWidth = 1042
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DB: TpFIBDatabase
    AutoReconnect = True
    Connected = True
    DBName = '192.168.93.98:D:\ZAKAZ\ZAKAZ.FDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251'
      'sql_role_name=')
    DefaultTransaction = TransactionDB
    SQLDialect = 3
    Timeout = 0
    WaitForRestoreConnect = 0
    Left = 32
    Top = 24
  end
  object DS_T_Users: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_USERS'
      'SET '
      '    U_NAME = :U_NAME,'
      '    U_NOMERZAK = :U_NOMERZAK,'
      '    U_OBJECT = :U_OBJECT,'
      '    U_DIVISION =:U_DIVISION,'
      '    U_DATEBEG = :U_DATEBEG,'
      '    U_DATESTART = :U_DATESTART,'
      '    U_DATEEND = :U_DATEEND,'
      '    U_NASED = :U_NASED,'
      '    U_OTD = :U_OTD,'
      '    U_PROFFIO = :U_PROFFIO,'
      '    U_CERT = :U_CERT,'
      '    U_MET = :U_MET,'
      '    U_INV = :U_INV,'
      '    U_CONTRACTFROM = :U_CONTRACTFROM,'
      '    U_CONTRACTTO = :U_CONTRACTTO,'
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
      '    U_NOMERZAK,'
      '    U_OBJECT,'
      '    U_DIVISION,'
      '    U_DATEBEG,'
      '    U_DATESTART,'
      '    U_DATEEND,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_MET,'
      '    U_INV,'
      '    U_CONTRACTFROM,'
      '    U_CONTRACTTO,'
      '    U_PRIM,'
      '    U_RIGHTS'
      ')'
      'VALUES('
      '    :U_ID,'
      '    :U_NAME,'
      '    :U_NOMERZAK,'
      '    :U_OBJECT,'
      '    :U_DIVISION, '
      '    :U_DATEBEG,'
      '    :U_DATESTART,'
      '    :U_DATEEND,'
      '    :U_NASED,'
      '    :U_OTD,'
      '    :U_PROFFIO,'
      '    :U_CERT,'
      '    :U_MET,'
      '    :U_INV,'
      '    :U_CONTRACTFROM,'
      '    :U_CONTRACTTO,'
      '    :U_PRIM,'
      '    :U_RIGHTS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    U_ID,'
      '    U_NAME,'
      '    U_NOMERZAK,'
      '    U_OBJECT,'
      '    U_DIVISION,'
      '    U_DATEBEG,'
      '    U_DATESTART,'
      '    U_DATEEND,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_MET,'
      '    U_INV,'
      '    U_CONTRACTFROM,'
      '    U_CONTRACTTO,'
      '    U_PRIM,'
      '    U_RIGHTS'
      'FROM'
      '    T_USERS '
      ''
      ' WHERE '
      '        T_USERS.U_ID = :OLD_U_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    U_ID,'
      '    U_NAME,'
      '    CL_NAME,'
      '    U_NOMERZAK,'
      '    U_OBJECT,'
      '    U_DIVISION,'
      '    DV_NAME,'
      '    OB_NAME,'
      '    U_DATEBEG,'
      '    U_DATESTART,'
      '    U_DATEEND,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_MET,'
      '    U_PRIM,'
      '    P_Prof,'
      '    U_RIGHTS'
      'FROM'
      '    T_USERS'
      'left join T_clients on t_users.u_name=t_clients.cl_id'
      'left join t_object on t_users.u_object=t_object.ob_id'
      
        'left join T_PROFESIONALS on t_users.u_proffio=T_PROFESIONALS.p_i' +
        'd'
      'left join T_Division on t_users.u_Division=t_Division.dv_id'
      'WHERE U_NASED <> '#39#1054#1090#1075#1088#1091#1078#1077#1085#1086#39' and '
      '      U_NASED <> '#39#1057#1085#1103#1090#39
      'ORDER BY U_DATEBEG DESC')
    AutoUpdateOptions.KeyFields = 'U_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_USER'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Active = True
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 112
    Top = 24
    object DS_T_UsersU_ID: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'U_ID'
    end
    object DS_T_UsersU_NAME: TFIBIntegerField
      FieldName = 'U_NAME'
    end
    object DS_T_UsersCL_NAME: TFIBStringField
      FieldName = 'CL_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object DS_T_UsersU_NOMERZAK: TFIBStringField
      DisplayWidth = 7
      FieldName = 'U_NOMERZAK'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_UsersU_OBJECT: TFIBIntegerField
      FieldName = 'U_OBJECT'
    end
    object DS_T_UsersOB_NAME: TFIBStringField
      FieldName = 'OB_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object DS_T_UsersU_DIVISION: TFIBIntegerField
      FieldName = 'U_DIVISION'
    end
    object DS_T_UsersDV_NAME: TFIBStringField
      FieldName = 'DV_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object DS_T_UsersU_DATEBEG: TFIBDateField
      DisplayWidth = 8
      FieldName = 'U_DATEBEG'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object DS_T_UsersU_DATESTART: TFIBDateField
      DisplayWidth = 8
      FieldName = 'U_DATESTART'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object DS_T_UsersU_DATEEND: TFIBDateField
      DisplayWidth = 8
      FieldName = 'U_DATEEND'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object DS_T_UsersU_NASED: TFIBStringField
      DisplayWidth = 28
      FieldName = 'U_NASED'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_UsersU_PRIM: TFIBStringField
      DisplayWidth = 181
      FieldName = 'U_PRIM'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_UsersU_PROFFIO: TFIBStringField
      FieldName = 'U_PROFFIO'
      Size = 100
      EmptyStrToNull = True
    end
    object DS_T_UsersP_PROF2: TFIBStringField
      FieldName = 'P_PROF'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_UsersU_CERT: TFIBBCDField
      FieldName = 'U_CERT'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object DS_T_UsersU_MET: TFIBBCDField
      FieldName = 'U_MET'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
  end
  object TransactionDB: TpFIBTransaction
    Active = True
    DefaultDatabase = DB
    TimeoutAction = TARollback
    Left = 32
    Top = 88
  end
  object Source_T_Users: TDataSource
    DataSet = DS_T_Users
    Left = 112
    Top = 88
  end
  object ds_USER_DEL: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_USERS_DEL'
      'SET '
      '    U_ID_OLD = :U_ID_OLD,'
      '    U_NAME = :U_NAME,'
      '    U_NOMERZAK = :U_NOMERZAK,'
      '    U_OBJECT = :U_OBJECT,'
      '    U_DATEBEG = :U_DATEBEG,'
      '    U_DATESTART = :U_DATESTART,'
      '    U_DATEEND = :U_DATEEND,'
      '    U_NASED = :U_NASED,'
      '    U_OTD = :U_OTD,'
      '    U_PROFFIO = :U_PROFFIO,'
      '    U_CERT = :U_CERT,'
      '    U_MET = :U_MET,'
      '    U_INV = :U_INV,'
      '    U_CONTRACTFROM = :U_CONTRACTFROM,'
      '    U_CONTRACTTO = :U_CONTRACTTO,'
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
      '    U_NOMERZAK,'
      '    U_OBJECT,'
      '    U_DATEBEG,'
      '    U_DATESTART,'
      '    U_DATEEND,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_MET,'
      '    U_INV,'
      '    U_CONTRACTFROM,'
      '    U_CONTRACTTO,'
      '    U_PRIM,'
      '    U_RIGHTS'
      ')'
      'VALUES('
      '    :U_ID,'
      '    :U_ID_OLD,'
      '    :U_NAME,'
      '    :U_NOMERZAK,'
      '    :U_OBJECT,'
      '    :U_DATEBEG,'
      '    :U_DATESTART,'
      '    :U_DATEEND,'
      '    :U_NASED,'
      '    :U_OTD,'
      '    :U_PROFFIO,'
      '    :U_CERT,'
      '    :U_MET,'
      '    :U_INV,'
      '    :U_CONTRACTFROM,'
      '    :U_CONTRACTTO,'
      '    :U_PRIM,'
      '    :U_RIGHTS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    U_ID,'
      '    U_ID_OLD,'
      '    U_NAME,'
      '    U_NOMERZAK,'
      '    U_OBJECT,'
      '    U_DATEBEG,'
      '    U_DATESTART,'
      '    U_DATEEND,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_MET,'
      '    U_INV,'
      '    U_CONTRACTFROM,'
      '    U_CONTRACTTO,'
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
      '    CL_NAME,    '
      '    U_NOMERZAK,'
      '    U_OBJECT,'
      '    OB_NAME,'
      '    U_DATEBEG,'
      '    U_DATESTART,'
      '    U_DATEEND,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_MET,'
      '    U_INV,'
      '    U_CONTRACTFROM,'
      '    U_CONTRACTTO,'
      '    U_PRIM,'
      '    P_Prof,'
      '    U_RIGHTS'
      'FROM'
      '    T_USERS_DEL'
      'left join T_clients on t_users_del.u_name=t_clients.cl_id'
      'left join t_object on t_users_del.u_object=t_object.ob_id'
      
        'left join T_PROFESIONALS on t_users_del.u_proffio=T_PROFESIONALS' +
        '.p_id'
      'ORDER BY U_DATEBEG DESC ')
    AutoUpdateOptions.KeyFields = 'U_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_USER_DEL'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 456
    Top = 256
    object ds_USER_DELU_ID: TFIBIntegerField
      FieldName = 'U_ID'
    end
    object ds_USER_DELU_ID_OLD: TFIBIntegerField
      FieldName = 'U_ID_OLD'
    end
    object ds_USER_DELU_NAME: TFIBIntegerField
      FieldName = 'U_NAME'
    end
    object ds_USER_DELCL_NAME: TFIBStringField
      FieldName = 'CL_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object ds_USER_DELU_NOMERZAK: TFIBStringField
      FieldName = 'U_NOMERZAK'
      Size = 50
      EmptyStrToNull = True
    end
    object ds_USER_DELU_OBJECT: TFIBIntegerField
      FieldName = 'U_OBJECT'
    end
    object ds_USER_DELOB_NAME: TFIBStringField
      FieldName = 'OB_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object ds_USER_DELU_DATEBEG: TFIBDateField
      FieldName = 'U_DATEBEG'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object ds_USER_DELU_DATESTART: TFIBDateField
      FieldName = 'U_DATESTART'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object ds_USER_DELU_DATEEND: TFIBDateField
      FieldName = 'U_DATEEND'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object ds_USER_DELU_NASED: TFIBStringField
      FieldName = 'U_NASED'
      Size = 50
      EmptyStrToNull = True
    end
    object ds_USER_DELU_OTD: TFIBIntegerField
      FieldName = 'U_OTD'
    end
    object ds_USER_DELU_PROFFIO: TFIBStringField
      FieldName = 'U_PROFFIO'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_USER_DELU_CERT: TFIBBCDField
      FieldName = 'U_CERT'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object ds_USER_DELU_MET: TFIBBCDField
      FieldName = 'U_MET'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object ds_USER_DELU_INV: TFIBStringField
      FieldName = 'U_INV'
      Size = 12
      EmptyStrToNull = True
    end
    object ds_USER_DELU_CONTRACTFROM: TFIBStringField
      FieldName = 'U_CONTRACTFROM'
      Size = 12
      EmptyStrToNull = True
    end
    object ds_USER_DELU_CONTRACTTO: TFIBStringField
      FieldName = 'U_CONTRACTTO'
      Size = 12
      EmptyStrToNull = True
    end
    object ds_USER_DELU_PRIM: TFIBStringField
      FieldName = 'U_PRIM'
      Size = 50
      EmptyStrToNull = True
    end
    object ds_USER_DELP_PROF: TFIBStringField
      FieldName = 'P_PROF'
      Size = 50
      EmptyStrToNull = True
    end
    object ds_USER_DELU_RIGHTS: TFIBStringField
      FieldName = 'U_RIGHTS'
      Size = 10
      EmptyStrToNull = True
    end
  end
  object ds_OTD: TpFIBDataSet
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
      'ORDER BY O_NAME  ')
    AutoUpdateOptions.KeyFields = 'O_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_OTDSOURCE'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 536
    Top = 256
  end
  object Source_OTD: TDataSource
    DataSet = ds_Object
    Left = 536
    Top = 320
  end
  object DS_USERS: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE USERS'
      'SET '
      '    LOGIN = :LOGIN,'
      '    PWD = :PWD,'
      '    PID = :PID'
      'WHERE'
      '    ID = :OLD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    USERS'
      'WHERE'
      '        ID = :OLD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO USERS('
      '    ID,'
      '    LOGIN,'
      '    PWD,'
      '    PID'
      ')'
      'VALUES('
      '    :ID,'
      '    :LOGIN,'
      '    :PWD,'
      '    :PID'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    LOGIN,'
      '    PWD,'
      '    PID'
      'FROM'
      '    USERS '
      ''
      ' WHERE '
      '        USERS.ID = :OLD_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    LOGIN,'
      '    PWD,'
      '    PID'
      'FROM'
      '    USERS ')
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 264
    Top = 208
    object DS_USERSLOGIN: TFIBStringField
      FieldName = 'LOGIN'
      Size = 30
      EmptyStrToNull = True
    end
    object DS_USERSID: TFIBIntegerField
      FieldName = 'ID'
      Visible = False
    end
    object DS_USERSPWD: TFIBStringField
      FieldName = 'PWD'
      Visible = False
      Size = 32
      EmptyStrToNull = True
    end
    object DS_USERSPID: TFIBIntegerField
      FieldName = 'PID'
      Visible = False
    end
  end
  object Source_USERS: TDataSource
    DataSet = DS_USERS
    Left = 264
    Top = 272
  end
  object Source_USERS_DEL: TDataSource
    DataSet = ds_USER_DEL
    Left = 456
    Top = 320
  end
  object ds_Proffesionals: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_PROFESIONALS'
      'SET '
      '    P_PROF = :P_PROF'
      'WHERE'
      '    P_ID = :OLD_P_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_PROFESIONALS'
      'WHERE'
      '        P_ID = :OLD_P_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_PROFESIONALS('
      '    P_ID,'
      '    P_PROF'
      ')'
      'VALUES('
      '    :P_ID,'
      '    :P_PROF'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    P_ID,'
      '    P_PROF'
      'FROM'
      '    T_PROFESIONALS '
      ''
      ' WHERE '
      '        T_PROFESIONALS.P_ID = :OLD_P_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    P_ID,'
      '    P_PROF'
      'FROM'
      '    T_PROFESIONALS'
      'ORDER BY P_PROF ')
    AutoUpdateOptions.KeyFields = 'P_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_PROF'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 184
    Top = 208
    object ds_ProffesionalsP_ID: TFIBIntegerField
      FieldName = 'P_ID'
      Visible = False
    end
    object ds_ProffesionalsP_PROF: TFIBStringField
      DisplayWidth = 63
      FieldName = 'P_PROF'
      Size = 50
      EmptyStrToNull = True
    end
  end
  object Source_Prof: TDataSource
    DataSet = ds_Proffesionals
    Left = 184
    Top = 272
  end
  object ds_Template: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_TEMPLATES'
      'SET '
      '    T_NAME = :T_NAME,'
      '    T_BLOB = :T_BLOB,'
      '    T_TYPE = :T_TYPE'
      'WHERE'
      '    T_ID = :OLD_T_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_TEMPLATES'
      'WHERE'
      '        T_ID = :OLD_T_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_TEMPLATES('
      '    T_ID,'
      '    T_NAME,'
      '    T_BLOB,'
      '    T_TYPE'
      ')'
      'VALUES('
      '    :T_ID,'
      '    :T_NAME,'
      '    :T_BLOB,'
      '    :T_TYPE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    T_ID,'
      '    T_NAME,'
      '    T_BLOB,'
      '    T_TYPE'
      'FROM'
      '    T_TEMPLATES '
      ''
      ' WHERE '
      '        T_TEMPLATES.T_ID = :OLD_T_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    T_ID,'
      '    T_NAME,'
      '    T_BLOB,'
      '    T_TYPE'
      'FROM'
      '    T_TEMPLATES'
      'where T_ID<>:X '
      'order by 1')
    AutoUpdateOptions.KeyFields = 'T_ID'
    AutoUpdateOptions.GeneratorName = 'GEN_TEMPLATES_ID'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 344
    Top = 208
    object ds_TemplateT_ID: TFIBIntegerField
      FieldName = 'T_ID'
      Visible = False
    end
    object ds_TemplateT_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1072
      FieldName = 'T_NAME'
      Size = 30
      EmptyStrToNull = True
    end
    object ds_TemplateT_BLOB: TFIBBlobField
      FieldName = 'T_BLOB'
      Visible = False
      Size = 8
    end
    object ds_TemplateT_TYPE: TFIBIntegerField
      FieldName = 'T_TYPE'
      Visible = False
    end
  end
  object Source_Template: TDataSource
    DataSet = ds_Template
    Left = 344
    Top = 272
  end
  object ds_Clients: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_CLIENTS'
      'SET '
      '    CL_NAME = :CL_NAME'
      'WHERE'
      '    CL_ID = :OLD_CL_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_CLIENTS'
      'WHERE'
      '        CL_ID = :OLD_CL_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_CLIENTS('
      '    CL_ID,'
      '    CL_NAME'
      ')'
      'VALUES('
      '    :CL_ID,'
      '    :CL_NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    CL_ID,'
      '    CL_NAME'
      'FROM'
      '    T_CLIENTS'
      'where(  CL_ID<>:X'
      '     ) and (     T_CLIENTS.CL_ID = :OLD_CL_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    CL_ID,'
      '    CL_NAME'
      'FROM'
      '    T_CLIENTS'
      'where CL_ID<>:X'
      'ORDER BY CL_NAME  ')
    AutoUpdateOptions.KeyFields = 'CL_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_CLIENTS'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 480
    Top = 24
    object ds_ClientsCL_ID: TFIBIntegerField
      FieldName = 'CL_ID'
      Visible = False
    end
    object ds_ClientsCL_NAME: TFIBStringField
      FieldName = 'CL_NAME'
      Size = 200
      EmptyStrToNull = True
    end
  end
  object Source_Clients: TDataSource
    DataSet = ds_Clients
    Left = 480
    Top = 88
  end
  object ds_ProdGroup: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE PRODGROUP'
      'SET '
      '    PG_NAME = :PG_NAME'
      'WHERE'
      '    PG_ID = :OLD_PG_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    PRODGROUP'
      'WHERE'
      '        PG_ID = :OLD_PG_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO PRODGROUP('
      '    PG_ID,'
      '    PG_NAME'
      ')'
      'VALUES('
      '    :PG_ID,'
      '    :PG_NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    PG_ID,'
      '    PG_NAME'
      'FROM'
      '    PRODGROUP '
      ''
      ' WHERE '
      '        PRODGROUP.PG_ID = :OLD_PG_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    PG_ID,'
      '    PG_NAME'
      'FROM '
      '    PRODGROUP'
      'where PG_ID<>:X '
      'ORDER BY PG_NAME'
      '    ')
    AutoUpdateOptions.KeyFields = 'PG_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_PRODGROUP'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 568
    Top = 24
    object ds_ProdGroupPG_ID: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'PG_ID'
      Visible = False
    end
    object ds_ProdGroupPG_NAME: TFIBStringField
      DisplayLabel = #1043#1088#1091#1087#1087#1099' '#1080#1079#1076#1077#1083#1080#1081
      DisplayWidth = 120
      FieldName = 'PG_NAME'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object Source_ProdGroup: TDataSource
    DataSet = ds_ProdGroup
    Left = 568
    Top = 88
  end
  object ds_Object: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_OBJECT'
      'SET '
      '    OB_NAME = :OB_NAME,'
      '    OB_ADRES = :OB_ADRES,'
      '    OB_STATUS = :OB_STATUS,'
      '    OB_COUNTRY = :OB_COUNTRY,'
      '    OB_NOMERACC = :OB_NOMERACC,'
      '    OB_BANKID = :OB_BANKID,'
      '    OB_UNN = :OB_UNN,'
      '    OB_OKPO = :OB_OKPO,'
      '    OB_INN = :OB_INN,'
      '    OB_PHID = :OB_PHID,'
      '    OB_PHONE = :OB_PHONE,'
      '    OB_POSTADRES = :OB_POSTADRES,'
      '    OB_EMAIL = :OB_EMAIL,'
      '    OB_BANKNAME = :OB_BANKNAME,'
      '    OB_PASSNOMER = :OB_PASSNOMER,'
      '    OB_PASSDATE = :OB_PASSDATE,'
      '    OB_PASSPLACE = :OB_PASSPLACE,'
      '    OB_BANKADDR = :OB_BANKADDR,'
      '    OB_REGADRES = :OB_REGADRES'
      'WHERE'
      '    OB_ID = :OLD_OB_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_OBJECT'
      'WHERE'
      '        OB_ID = :OLD_OB_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_OBJECT('
      '    OB_ID,'
      '    OB_NAME,'
      '    OB_ADRES,'
      '    OB_STATUS,'
      '    OB_COUNTRY,'
      '    OB_NOMERACC,'
      '    OB_BANKID,'
      '    OB_UNN,'
      '    OB_OKPO,'
      '    OB_INN,'
      '    OB_PHID,'
      '    OB_PHONE,'
      '    OB_POSTADRES,'
      '    OB_EMAIL,'
      '    OB_BANKNAME,'
      '    OB_PASSNOMER,'
      '    OB_PASSDATE,'
      '    OB_PASSPLACE,'
      '    OB_BANKADDR,'
      '    OB_REGADRES'
      ')'
      'VALUES('
      '    :OB_ID,'
      '    :OB_NAME,'
      '    :OB_ADRES,'
      '    :OB_STATUS,'
      '    :OB_COUNTRY,'
      '    :OB_NOMERACC,'
      '    :OB_BANKID,'
      '    :OB_UNN,'
      '    :OB_OKPO,'
      '    :OB_INN,'
      '    :OB_PHID,'
      '    :OB_PHONE,'
      '    :OB_POSTADRES,'
      '    :OB_EMAIL,'
      '    :OB_BANKNAME,'
      '    :OB_PASSNOMER,'
      '    :OB_PASSDATE,'
      '    :OB_PASSPLACE,'
      '    :OB_BANKADDR,'
      '    :OB_REGADRES'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    OB_ID,'
      '    OB_NAME,'
      '    OB_ADRES,'
      '    OB_STATUS,'
      '    OB_COUNTRY,'
      '    OB_NOMERACC,'
      '    OB_BANKID,'
      '    OB_UNN,'
      '    OB_OKPO,'
      '    OB_INN,'
      '    OB_PHID,'
      '    OB_PHONE,'
      '    OB_POSTADRES,'
      '    OB_EMAIL,'
      '    OB_BANKNAME,'
      '    OB_PASSNOMER,'
      '    OB_PASSDATE,'
      '    OB_PASSPLACE,'
      '    OB_BANKADDR,'
      '    OB_REGADRES'
      'FROM'
      '    T_OBJECT '
      ''
      ' WHERE '
      '        T_OBJECT.OB_ID = :OLD_OB_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    OB_ID,'
      '    OB_NAME,'
      '    OB_ADRES,'
      '    OB_STATUS,'
      '    OB_COUNTRY,'
      '    OB_NOMERACC,'
      '    OB_BANKID,'
      '    OB_UNN,'
      '    OB_OKPO,'
      '    OB_INN,'
      '    OB_PHID,'
      '    OB_PHONE,'
      '    OB_POSTADRES,'
      '    OB_EMAIL,'
      '    OB_BANKNAME,'
      '    OB_PASSNOMER,'
      '    OB_PASSDATE,'
      '    OB_PASSPLACE,'
      '    OB_BANKADDR,'
      '    OB_REGADRES'
      'FROM'
      '    T_OBJECT '
      'where OB_ID<>:X'
      'ORDER BY OB_NAME')
    AutoUpdateOptions.KeyFields = 'OB_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_OBJECT'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 656
    Top = 24
    object ds_ObjectOB_ID: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'OB_ID'
      Visible = False
    end
    object ds_ObjectOB_NAME: TFIBStringField
      DisplayLabel = #1054#1073#1098#1077#1082#1090
      DisplayWidth = 39
      FieldName = 'OB_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object ds_ObjectOB_ADRES: TFIBStringField
      DisplayLabel = #1040#1076#1088#1077#1089
      DisplayWidth = 30
      FieldName = 'OB_ADRES'
      Size = 200
      EmptyStrToNull = True
    end
  end
  object Source_Object: TDataSource
    DataSet = ds_Object
    Left = 656
    Top = 88
  end
  object ds_ObjectName: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT OB_NAME '
      'FROM T_OBJECT '
      'WHERE OB_ID =:perem')
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 736
    Top = 24
  end
  object ds_product: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_PRODUCT'
      'SET '
      '    TP_PGID = :TP_PGID,'
      '    TP_NAME = :TP_NAME,'
      '    TP_WEIGHT = :TP_WEIGHT,'
      '    TP_UNITM = :TP_UNITM,'
      '    TP_PRICE = :TP_PRICE,'
      '    TP_DATE = :TP_DATE,'
      '    TP_STATUS = :TP_STATUS,'
      '    TP_PRIM = :TP_PRIM,'
      '    TP_VOLUME = :TP_VOLUME,'
      '    TP_GOST = :TP_GOST'
      'WHERE'
      '    TP_ID = :OLD_TP_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_PRODUCT'
      'WHERE'
      '        TP_ID = :OLD_TP_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_PRODUCT('
      '    TP_ID,'
      '    TP_PGID,'
      '    TP_NAME,'
      '    TP_WEIGHT,'
      '    TP_UNITM,'
      '    TP_PRICE,'
      '    TP_DATE,'
      '    TP_STATUS,'
      '    TP_PRIM,'
      '    TP_VOLUME,'
      '    TP_GOST'
      ')'
      'VALUES('
      '    :TP_ID,'
      '    :TP_PGID,'
      '    :TP_NAME,'
      '    :TP_WEIGHT,'
      '    :TP_UNITM,'
      '    :TP_PRICE,'
      '    :TP_DATE,'
      '    :TP_STATUS,'
      '    :TP_PRIM,'
      '    :TP_VOLUME,'
      '    :TP_GOST'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    TP_ID,'
      '    TP_PGID,'
      '    TP_NAME,'
      '    TP_WEIGHT,'
      '    TP_UNITM,'
      '    TP_PRICE,'
      '    TP_DATE,'
      '    TP_STATUS,'
      '    TP_PRIM,'
      '    TP_VOLUME,'
      '    TP_GOST'
      'FROM'
      '    T_PRODUCT '
      ''
      ' WHERE '
      '        T_PRODUCT.TP_ID = :OLD_TP_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    TP_ID,'
      '    TP_PGID,'
      '    TP_NAME,'
      '    TP_WEIGHT,'
      '    TP_UNITM,'
      '    TP_PRICE,'
      '    TP_DATE,'
      '    TP_STATUS,'
      '    TP_PRIM,'
      '    TP_VOLUME,'
      '    TP_GOST'
      'FROM'
      '    T_PRODUCT'
      'order by TP_NAME ')
    AutoUpdateOptions.KeyFields = 'TP_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_T_PRODUCT'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 816
    Top = 24
    object ds_productTP_ID: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'TP_ID'
      Visible = False
    end
    object ds_productTP_PGID: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'TP_PGID'
      Visible = False
    end
    object ds_productTP_NAME: TFIBStringField
      DisplayLabel = #1048#1079#1076#1077#1083#1080#1103
      DisplayWidth = 25
      FieldName = 'TP_NAME'
      Size = 250
      EmptyStrToNull = True
    end
    object ds_productTP_VOLUME: TFIBBCDField
      DisplayWidth = 5
      FieldName = 'TP_VOLUME'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object ds_productTP_UNITM: TFIBStringField
      DisplayLabel = #1045#1076'.'#1080#1079#1084'.'
      DisplayWidth = 5
      FieldName = 'TP_UNITM'
      Size = 3
      EmptyStrToNull = True
    end
    object ds_productTP_GOST: TFIBStringField
      DisplayLabel = #1043#1054#1057#1058
      DisplayWidth = 25
      FieldName = 'TP_GOST'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_productTP_WEIGHT: TFIBBCDField
      FieldName = 'TP_WEIGHT'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object ds_productTP_PRICE: TFIBBCDField
      FieldName = 'TP_PRICE'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object ds_productTP_DATE: TFIBDateField
      FieldName = 'TP_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object ds_productTP_STATUS: TFIBIntegerField
      FieldName = 'TP_STATUS'
    end
    object ds_productTP_PRIM: TFIBStringField
      FieldName = 'TP_PRIM'
      Size = 200
      EmptyStrToNull = True
    end
  end
  object Source_Product: TDataSource
    DataSet = ds_product
    Left = 816
    Top = 88
  end
  object ds_QuantityProd: TpFIBDataSet
    SelectSQL.Strings = (
      'Select count (T_SERV.sv_tpid)'
      'from t_serv'
      'left join t_product on t_product.tp_id=t_serv.sv_tpid'
      'where t_serv.sv_tpid =:Perem1 and t_serv.sv_uid =:Perem2')
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 536
    Top = 208
  end
  object Query_QuantityProd: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select count (T_SERV.sv_tpid),SV_ID,SV_COUNT'
      'from t_serv'
      'left join t_product on t_product.tp_id=t_serv.sv_tpid'
      'where t_serv.sv_tpid =:Perem1 and t_serv.sv_uid =:Perem2'
      'group by T_SERV.sv_tpid, sv_id, SV_COUNT')
    Left = 480
    Top = 144
  end
  object QueryUpDate: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'update t_serv'
      'set sv_count =:perem1'
      'where sv_id =:perem2')
    Left = 568
    Top = 144
  end
  object QueryInsert: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'INSERT INTO T_SERV ('
      '    SV_ID,'
      '    SV_UID,'
      '    SV_TPID,'
      '    SV_COUNT,'
      '    SV_TP_VOLUME,'
      '    SV_UNITM,'
      '    SV_SUMM'
      ') VALUES ('
      '    :SV_ID,'
      '    :SV_UID,'
      '    :SV_TPID,'
      '    :SV_COUNT,'
      '    :SV_TP_VOLUME,'
      '    :SV_UNITM,'
      '    :SV_SUMM'
      ')')
    Left = 656
    Top = 144
  end
  object ds_Metal: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_METAL'
      'SET '
      '    TM_NAME = :TM_NAME,'
      '    TM_UNITM = :TM_UNITM,'
      '    TM_GOST = :TM_GOST'
      'WHERE'
      '    TM_ID = :OLD_TM_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_METAL'
      'WHERE'
      '        TM_ID = :OLD_TM_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_METAL('
      '    TM_ID,'
      '    TM_NAME,'
      '    TM_UNITM,'
      '    TM_GOST'
      ')'
      'VALUES('
      '    :TM_ID,'
      '    :TM_NAME,'
      '    :TM_UNITM,'
      '    :TM_GOST'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    TM_ID,'
      '    TM_NAME,'
      '    TM_UNITM,'
      '    TM_GOST'
      'FROM'
      '    T_METAL '
      ''
      ' WHERE '
      '        T_METAL.TM_ID = :OLD_TM_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    TM_ID,'
      '    TM_NAME,'
      '    TM_UNITM,'
      '    TM_GOST'
      'FROM'
      '    T_METAL'
      'Order by TM_NAME ')
    AutoUpdateOptions.KeyFields = 'TM_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_T_METAL'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 968
    Top = 152
    object ds_MetalTM_ID: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'TM_ID'
      Visible = False
    end
    object ds_MetalTM_NAME: TFIBStringField
      DisplayLabel = #1052#1072#1090#1077#1088#1080#1072#1083
      DisplayWidth = 25
      FieldName = 'TM_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_MetalTM_UNITM: TFIBStringField
      DisplayLabel = #1045#1076'.'#1080#1079#1084'.'
      FieldName = 'TM_UNITM'
      Size = 3
      EmptyStrToNull = True
    end
    object ds_MetalTM_GOST: TFIBStringField
      DisplayLabel = #1043#1054#1057#1058
      DisplayWidth = 25
      FieldName = 'TM_GOST'
      Size = 100
      EmptyStrToNull = True
    end
  end
  object Source_Metal: TDataSource
    DataSet = ds_Metal
    Left = 968
    Top = 216
  end
  object Source_SERV: TDataSource
    DataSet = ds_SERV
    Left = 888
    Top = 88
  end
  object ds_SERV: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_SERV'
      'SET '
      '    SV_UID = :SV_UID,'
      '    SV_TPID = :SV_TPID,'
      '    SV_COUNT = :SV_COUNT,'
      '    SV_ZAGOTOVKI = :SV_ZAGOTOVKI,'
      '    SV_READY = :SV_READY,'
      '    SV_OLDREADY = :SV_OLDREADY,'
      '    SV_DATEOTGRUZ = :SV_DATEOTGRUZ,'
      '    SV_SHIP = :SV_SHIP,'
      '    SV_UNITM = :SV_UNITM'
      'WHERE'
      '    SV_ID = :OLD_SV_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_SERV'
      'WHERE'
      '        SV_ID = :OLD_SV_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_SERV('
      '    SV_ID,'
      '    SV_UID,'
      '    SV_TPID,'
      '    SV_COUNT,'
      '    SV_ZAGOTOVKI,'
      '    SV_READY,'
      '    SV_OLDREADY,'
      '    SV_DATEOTGRUZ,'
      '    SV_SHIP,'
      '    SV_UNITM'
      ')'
      'VALUES('
      '    :SV_ID,'
      '    :SV_UID,'
      '    :SV_TPID,'
      '    :SV_COUNT,'
      '    :SV_ZAGOTOVKI,'
      '    :SV_READY,'
      '    :SV_OLDREADY,'
      '    :SV_DATEOTGRUZ,'
      '    :SV_SHIP,'
      '    :SV_UNITM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SV_ID,'
      '    SV_UID,'
      '    SV_TPID,'
      '    SV_COUNT,'
      '    SV_ZAGOTOVKI,'
      '    SV_READY,'
      '    SV_OLDREADY,'
      '    SV_DATEOTGRUZ,'
      '    SV_SHIP,'
      '    SV_UNITM'
      'FROM'
      '    T_SERV '
      'left join T_PRODUCT on T_PRODUCT.TP_ID = T_SERV.SV_TPID'
      
        'where(  SV_UID=:perem     ) and (     T_SERV.SV_ID = :OLD_SV_ID ' +
        '    )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SV_ID,'
      '    SV_UID,'
      '    SV_TPID,'
      '    TP_NAME,'
      '    SV_COUNT,'
      '    SV_ZAGOTOVKI,'
      '    SV_READY,'
      '    SV_OLDREADY,'
      '    SV_DATEOTGRUZ,'
      '    SV_SHIP,'
      '    SV_UNITM'
      'FROM'
      '    T_SERV'
      'left join T_PRODUCT on T_SERV.SV_TPID = T_PRODUCT.TP_ID'
      'where SV_UID=:perem'
      'order by SV_ID '
      ' ')
    AutoUpdateOptions.KeyFields = 'SV_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_T_SERV'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AfterInsert = ds_SERVAfterInsert
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 888
    Top = 24
    object ds_SERVSV_ID: TFIBIntegerField
      FieldName = 'SV_ID'
    end
    object ds_SERVSV_UID: TFIBIntegerField
      FieldName = 'SV_UID'
    end
    object ds_SERVSV_TPID: TFIBStringField
      FieldName = 'SV_TPID'
      Size = 10
      EmptyStrToNull = True
    end
    object ds_SERVTP_NAME: TFIBStringField
      FieldName = 'TP_NAME'
      Size = 250
      EmptyStrToNull = True
    end
    object ds_SERVSV_COUNT: TFIBBCDField
      FieldName = 'SV_COUNT'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 4
    end
    object ds_SERVSV_ZAGOTOVKI: TFIBBCDField
      FieldName = 'SV_ZAGOTOVKI'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 4
    end
    object ds_SERVSV_READY: TFIBBCDField
      FieldName = 'SV_READY'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 4
    end
    object ds_SERVSV_OLDREADY: TFIBBCDField
      FieldName = 'SV_OLDREADY'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 4
    end
    object ds_SERVSV_DATEOTGRUZ: TFIBDateField
      FieldName = 'SV_DATEOTGRUZ'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object ds_SERVSV_SHIP: TFIBBCDField
      FieldName = 'SV_SHIP'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 4
    end
    object ds_SERVSV_UNITM: TFIBStringField
      FieldName = 'SV_UNITM'
      Size = 15
      EmptyStrToNull = True
    end
  end
  object ds_SERV_M: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_SERV_M'
      'SET '
      '    SVM_UID = :SVM_UID,'
      '    SVM_TMID = :SVM_TMID,'
      '    SVM_COUNT = :SVM_COUNT,'
      '    SVM_READY = :SVM_READY,'
      '    SVM_TM_VOLUME = :SVM_TM_VOLUME,'
      '    SVM_UNITM = :SVM_UNITM,'
      '    SVM_SUMM = :SVM_SUMM'
      'WHERE'
      '    SVM_ID = :OLD_SVM_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_SERV_M'
      'WHERE'
      '        SVM_ID = :OLD_SVM_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_SERV_M('
      '    SVM_ID,'
      '    SVM_UID,'
      '    SVM_TMID,'
      '    SVM_COUNT,'
      '    SVM_READY,'
      '    SVM_TM_VOLUME,'
      '    SVM_UNITM,'
      '    SVM_SUMM'
      ')'
      'VALUES('
      '    :SVM_ID,'
      '    :SVM_UID,'
      '    :SVM_TMID,'
      '    :SVM_COUNT,'
      '    :SVM_READY,'
      '    :SVM_TM_VOLUME,'
      '    :SVM_UNITM,'
      '    :SVM_SUMM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SVM_ID,'
      '    SVM_UID,'
      '    SVM_TMID,'
      '    SVM_COUNT,'
      '    SVM_READY,'
      '    SVM_TM_VOLUME,'
      '    SVM_UNITM,'
      '    SVM_SUMM'
      'FROM'
      '    T_SERV_M '
      ''
      ' WHERE '
      '        T_SERV_M.SVM_ID = :OLD_SVM_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SVM_ID,'
      '    SVM_UID,'
      '    SVM_TMID,'
      '    TM_NAME,'
      '    SVM_COUNT,'
      '    SVM_READY,'
      '    SVM_TM_VOLUME,'
      '    SVM_UNITM,'
      '    SVM_SUMM'
      'FROM'
      '    T_SERV_M'
      'left join T_METAL on T_SERV_M.SVM_TMID = T_METAL.TM_ID'
      'where SVM_UID=:perem'
      'order by SVM_ID ')
    AutoUpdateOptions.KeyFields = 'SVM_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_T_SERV_M'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 968
    Top = 24
    object ds_SERV_MSVM_ID: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'SVM_ID'
    end
    object ds_SERV_MSVM_UID: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'SVM_UID'
    end
    object ds_SERV_MSVM_TMID: TFIBStringField
      DisplayWidth = 3
      FieldName = 'SVM_TMID'
      Size = 10
      EmptyStrToNull = True
    end
    object ds_SERV_MTM_NAME: TFIBStringField
      FieldName = 'TM_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_SERV_MSVM_COUNT: TFIBBCDField
      FieldName = 'SVM_COUNT'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 4
    end
    object ds_SERV_MSVM_READY: TFIBBCDField
      FieldName = 'SVM_READY'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 4
    end
    object ds_SERV_MSVM_TM_VOLUME: TFIBBCDField
      FieldName = 'SVM_TM_VOLUME'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object ds_SERV_MSVM_UNITM: TFIBStringField
      FieldName = 'SVM_UNITM'
      Size = 15
      EmptyStrToNull = True
    end
    object ds_SERV_MSVM_SUMM: TFIBBCDField
      FieldName = 'SVM_SUMM'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
  end
  object Source_Serv_M: TDataSource
    DataSet = ds_SERV_M
    Left = 968
    Top = 88
  end
  object Query_QuantityMet: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select count (T_SERV_M.svm_tmid),SVM_ID,SVM_COUNT'
      'from t_serv_m'
      'left join t_metal on t_metal.tm_id=t_serv_m.svm_tmid'
      'where t_serv_m.svm_tmid =:Perem1 and t_serv_m.svm_uid =:Perem2'
      'group by T_SERV_M.svm_tmid, svm_id, SVM_COUNT')
    Left = 368
    Top = 144
  end
  object QuerySummIzd: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select SUM(SV_SUMM)'
      'from T_SERV'
      'where SV_UID=:perem')
    Left = 728
    Top = 144
  end
  object QuerySummMet: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select SUM(SVM_COUNT)'
      'from T_SERV_M'
      'where SVM_UID=:perem')
    Left = 728
    Top = 208
  end
  object ds_Files: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_FILES'
      'SET '
      '    T_UID = :T_UID,'
      '    T_NAME = :T_NAME,'
      '    T_BLOB = :T_BLOB,'
      '    T_TYPE = :T_TYPE'
      'WHERE'
      '    T_ID = :OLD_T_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_FILES'
      'WHERE'
      '        T_ID = :OLD_T_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_FILES('
      '    T_ID,'
      '    T_UID,'
      '    T_NAME,'
      '    T_BLOB,'
      '    T_TYPE'
      ')'
      'VALUES('
      '    :T_ID,'
      '    :T_UID,'
      '    :T_NAME,'
      '    :T_BLOB,'
      '    :T_TYPE'
      ')')
    RefreshSQL.Strings = (
      'SELECT *'
      'FROM T_FILES'
      ''
      ' WHERE '
      '        T_FILES.T_ID = :OLD_T_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    T_ID,'
      '    T_UID,'
      '    T_NAME,'
      '    T_BLOB,'
      '    T_TYPE'
      'FROM'
      '    T_FILES'
      'where T_UID=:perem'
      'Order by T_NAME ')
    AutoUpdateOptions.KeyFields = 'T_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_T_FILES'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 888
    Top = 152
    object ds_FilesT_ID: TFIBIntegerField
      DisplayWidth = 5
      FieldName = 'T_ID'
      Visible = False
    end
    object ds_FilesT_UID: TFIBIntegerField
      DisplayWidth = 7
      FieldName = 'T_UID'
      Visible = False
    end
    object ds_FilesT_NAME: TFIBStringField
      DisplayLabel = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DisplayWidth = 63
      FieldName = 'T_NAME'
      Size = 30
      EmptyStrToNull = True
    end
    object ds_FilesT_BLOB: TFIBBlobField
      DisplayWidth = 15
      FieldName = 'T_BLOB'
      Visible = False
      Size = 8
    end
  end
  object Source_Files: TDataSource
    DataSet = ds_Files
    Left = 888
    Top = 216
  end
  object Query_QuantityReady: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'select (sum(SV_READY)) as SUMMA'
      'from t_serv'
      'where sv_uid =:perem')
    Left = 264
    Top = 144
  end
  object QueryTP_ID: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select count(SV_TPID) as TPID'
      'from T_serv'
      'where sv_tpid=:perem')
    Left = 736
    Top = 272
  end
  object Query_QuantityCount: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'select (sum(SV_COUNT)) as SV_COUNT'
      'from t_serv'
      'where sv_uid =:perem')
    Left = 264
    Top = 80
  end
  object DS_Division: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_DIVISION'
      'SET '
      '    DV_NAME = :DV_NAME'
      'WHERE'
      '    DV_ID = :OLD_DV_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_DIVISION'
      'WHERE'
      '        DV_ID = :OLD_DV_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_DIVISION('
      '    DV_ID,'
      '    DV_NAME'
      ')'
      'VALUES('
      '    :DV_ID,'
      '    :DV_NAME'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    DV_ID,'
      '    DV_NAME'
      'FROM'
      '    T_DIVISION '
      ''
      ' WHERE '
      '        T_DIVISION.DV_ID = :OLD_DV_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    DV_ID,'
      '    DV_NAME'
      'FROM'
      '    T_DIVISION ')
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 96
    Top = 208
    object DS_DivisionDV_ID: TFIBIntegerField
      FieldName = 'DV_ID'
    end
    object DS_DivisionDV_NAME: TFIBStringField
      FieldName = 'DV_NAME'
      Size = 200
      EmptyStrToNull = True
    end
  end
  object Source_Division: TDataSource
    DataSet = DS_Division
    Left = 96
    Top = 272
  end
  object ds_TemplatePrint: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_TEMPLATES'
      'SET '
      '    T_NAME = :T_NAME,'
      '    T_BLOB = :T_BLOB,'
      '    T_TYPE = :T_TYPE'
      'WHERE'
      '    T_ID = :OLD_T_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_TEMPLATES'
      'WHERE'
      '        T_ID = :OLD_T_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_TEMPLATES('
      '    T_ID,'
      '    T_NAME,'
      '    T_BLOB,'
      '    T_TYPE'
      ')'
      'VALUES('
      '    :T_ID,'
      '    :T_NAME,'
      '    :T_BLOB,'
      '    :T_TYPE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    T_ID,'
      '    T_NAME,'
      '    T_BLOB,'
      '    T_TYPE'
      'FROM'
      '    T_TEMPLATES '
      ''
      ' WHERE '
      '        T_TEMPLATES.T_ID = :OLD_T_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    T_ID,'
      '    T_NAME,'
      '    T_BLOB,'
      '    T_TYPE'
      'FROM'
      '    T_TEMPLATES'
      'where T_ID=:X '
      'order by 1')
    AutoUpdateOptions.KeyFields = 'T_ID'
    AutoUpdateOptions.GeneratorName = 'GEN_TEMPLATES_ID'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 840
    Top = 288
    object FIBIntegerField1: TFIBIntegerField
      FieldName = 'T_ID'
      Visible = False
    end
    object FIBStringField1: TFIBStringField
      DisplayLabel = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1090#1095#1077#1090#1072
      FieldName = 'T_NAME'
      Size = 30
      EmptyStrToNull = True
    end
    object FIBBlobField1: TFIBBlobField
      FieldName = 'T_BLOB'
      Visible = False
      Size = 8
    end
    object FIBIntegerField2: TFIBIntegerField
      FieldName = 'T_TYPE'
      Visible = False
    end
  end
  object DS_SUP_First: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_DOGOVOR'
      'SET '
      '    DOG_SUPID = :DOG_SUPID,'
      '    DOG_NUMBER = :DOG_NUMBER,'
      '    DOG_DATE = :DOG_DATE,'
      '    DOG_ACTIVE = :DOG_ACTIVE,'
      '    DOG_PRIM = :DOG_PRIM'
      'WHERE'
      '    DOG_ID = :OLD_DOG_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_DOGOVOR'
      'WHERE'
      '        DOG_ID = :OLD_DOG_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_DOGOVOR('
      '    DOG_ID,'
      '    DOG_SUPID,'
      '    DOG_NUMBER,'
      '    DOG_DATE,'
      '    DOG_ACTIVE,'
      '    DOG_PRIM'
      ')'
      'VALUES('
      '    :DOG_ID,'
      '    :DOG_SUPID,'
      '    :DOG_NUMBER,'
      '    :DOG_DATE,'
      '    :DOG_ACTIVE,'
      '    :DOG_PRIM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    DOG_ID,'
      '    DOG_SUPID,'
      '    DOG_NUMBER,'
      '    DOG_DATE,'
      '    DOG_ACTIVE,'
      '    DOG_PRIM'
      'FROM'
      '    T_DOGOVOR '
      ''
      ' WHERE '
      '        T_DOGOVOR.DOG_ID = :OLD_DOG_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    DOG_ID,'
      '    DOG_SUPID,'
      '    SUP_NAME,'
      '    DOG_NUMBER,'
      '    DOG_DATE,'
      '    DOG_ACTIVE,'
      '    DOG_PRIM'
      'FROM'
      '    T_DOGOVOR'
      'left join T_SUPPLIER on T_SUPPLIER.SUP_ID = t_dogovor.dog_SUPID'
      'order by DOG_DATE ')
    AutoUpdateOptions.KeyFields = 'DOG_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_DOGOVOR'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 64
    Top = 352
    object DS_SUP_FirstDOG_ID: TFIBIntegerField
      FieldName = 'DOG_ID'
    end
    object DS_SUP_FirstDOG_SUPID: TFIBIntegerField
      FieldName = 'DOG_SUPID'
    end
    object DS_SUP_FirstSUP_NAME: TFIBStringField
      FieldName = 'SUP_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object DS_SUP_FirstDOG_NUMBER: TFIBStringField
      FieldName = 'DOG_NUMBER'
      EmptyStrToNull = True
    end
    object DS_SUP_FirstDOG_DATE: TFIBDateField
      FieldName = 'DOG_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object DS_SUP_FirstDOG_ACTIVE: TFIBIntegerField
      FieldName = 'DOG_ACTIVE'
    end
    object DS_SUP_FirstDOG_PRIM: TFIBStringField
      FieldName = 'DOG_PRIM'
      Size = 250
      EmptyStrToNull = True
    end
  end
  object Source_SUP_First: TDataSource
    DataSet = DS_SUP_First
    Left = 64
    Top = 416
  end
  object DS_SERV_S: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_SERV_S'
      'SET '
      '    SVS_SUPID = :SVS_SUPID,'
      '    SVS_DOGID = :SVS_DOGID,'
      '    SVS_TMID = :SVS_TMID,'
      '    SVS_NAME = :SVS_NAME,'
      '    SVS_UNITM = :SVS_UNITM,'
      '    SVS_VOLUME = :SVS_VOLUME,'
      '    SVS_PAYMENT_TERM = :SVS_PAYMENT_TERM,'
      '    SVS_PRICE_TN_W_NDS = :SVS_PRICE_TN_W_NDS,'
      '    SVS_VOL_GET = :SVS_VOL_GET,'
      '    SVS_PAYMENT_NAKL = :SVS_PAYMENT_NAKL,'
      '    SVS_NAKL_DATE = :SVS_NAKL_DATE,'
      '    SVS_NAKL_NUM = :SVS_NAKL_NUM'
      'WHERE'
      '    SVS_ID = :OLD_SVS_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_SERV_S'
      'WHERE'
      '        SVS_ID = :OLD_SVS_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_SERV_S('
      '    SVS_ID,'
      '    SVS_SUPID,'
      '    SVS_DOGID,'
      '    SVS_TMID,'
      '    SVS_NAME,'
      '    SVS_UNITM,'
      '    SVS_VOLUME,'
      '    SVS_PAYMENT_TERM,'
      '    SVS_PRICE_TN_W_NDS,'
      '    SVS_VOL_GET,'
      '    SVS_PAYMENT_NAKL,'
      '    SVS_NAKL_DATE,'
      '    SVS_NAKL_NUM'
      ')'
      'VALUES('
      '    :SVS_ID,'
      '    :SVS_SUPID,'
      '    :SVS_DOGID,'
      '    :SVS_TMID,'
      '    :SVS_NAME,'
      '    :SVS_UNITM,'
      '    :SVS_VOLUME,'
      '    :SVS_PAYMENT_TERM,'
      '    :SVS_PRICE_TN_W_NDS,'
      '    :SVS_VOL_GET,'
      '    :SVS_PAYMENT_NAKL,'
      '    :SVS_NAKL_DATE,'
      '    :SVS_NAKL_NUM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SVS_ID,'
      '    SVS_SUPID,'
      '    SVS_DOGID,'
      '    SVS_TMID,'
      '    SVS_NAME,'
      '    SVS_UNITM,'
      '    SVS_VOLUME,'
      '    SVS_PAYMENT_TERM,'
      '    SVS_PRICE_TN_W_NDS,'
      '    SVS_VOL_GET,'
      '    SVS_PAYMENT_NAKL,'
      '    SVS_NAKL_DATE,'
      '    SVS_NAKL_NUM'
      'FROM'
      '    T_SERV_S'
      'where(  SVS_DOGID=:perem1'
      '     ) and (     T_SERV_S.SVS_ID = :OLD_SVS_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SVS_ID,'
      '    SVS_SUPID,'
      '    SVS_DOGID,'
      '    SVS_TMID,'
      '    SVS_NAME,'
      '    SVS_UNITM,'
      '    SVS_VOLUME,'
      '    SVS_PAYMENT_TERM,'
      '    SVS_PRICE_TN_W_NDS,'
      '    SVS_VOL_GET,'
      '    SVS_PAYMENT_NAKL,'
      '    SVS_NAKL_DATE,'
      '    SVS_NAKL_NUM'
      'FROM'
      '    T_SERV_S'
      'where SVS_DOGID=:perem1'
      'order by SVS_NAME  ')
    AutoUpdateOptions.KeyFields = 'SVS_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_SERV_S'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    AfterInsert = ds_SERVAfterInsert
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 160
    Top = 352
    object DS_SERV_SSVS_ID: TFIBIntegerField
      FieldName = 'SVS_ID'
    end
    object DS_SERV_SSVS_SUPID: TFIBIntegerField
      FieldName = 'SVS_SUPID'
    end
    object DS_SERV_SSVS_DOGID: TFIBIntegerField
      FieldName = 'SVS_DOGID'
    end
    object DS_SERV_SSVS_TMID: TFIBIntegerField
      FieldName = 'SVS_TMID'
    end
    object DS_SERV_SSVS_NAME: TFIBStringField
      FieldName = 'SVS_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object DS_SERV_SSVS_UNITM: TFIBStringField
      FieldName = 'SVS_UNITM'
      Size = 3
      EmptyStrToNull = True
    end
    object DS_SERV_SSVS_VOLUME: TFIBBCDField
      FieldName = 'SVS_VOLUME'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object DS_SERV_SSVS_PAYMENT_TERM: TFIBIntegerField
      FieldName = 'SVS_PAYMENT_TERM'
    end
    object DS_SERV_SSVS_PRICE_TN_W_NDS: TFIBBCDField
      FieldName = 'SVS_PRICE_TN_W_NDS'
      DisplayFormat = '#,##0.'
      EditFormat = '0.00'
      Size = 2
    end
    object DS_SERV_SSVS_VOL_GET: TFIBBCDField
      FieldName = 'SVS_VOL_GET'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object DS_SERV_SSVS_NAKL_DATE: TFIBDateField
      FieldName = 'SVS_NAKL_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object DS_SERV_SSVS_NAKL_NUM: TFIBIntegerField
      FieldName = 'SVS_NAKL_NUM'
    end
    object DS_SERV_SSVS_PAYMENT_NAKL: TFIBBCDField
      FieldName = 'SVS_PAYMENT_NAKL'
      DisplayFormat = '##############,##0.'
      Size = 0
    end
  end
  object Source_SERV_S: TDataSource
    DataSet = DS_SERV_S
    Left = 160
    Top = 416
  end
  object Query_QuantityMet_S: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select count (T_SERV_S.svs_tmid),SVS_ID,SVS_VOLUME'
      'from t_serv_S'
      'left join t_metal on t_metal.tm_id=t_serv_S.svs_tmid'
      'where t_serv_S.svs_tmid =:Perem1 '
      'and t_serv_S.SVS_DOGID =:Perem2 '
      'group by T_SERV_S.svs_tmid, svs_id, SVS_VOLUME')
    Left = 264
    Top = 416
  end
  object ds_Dogovor: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_DOGOVOR'
      'SET '
      '    DOG_SUPID = :DOG_SUPID,'
      '    DOG_NUMBER = :DOG_NUMBER,'
      '    DOG_DATE = :DOG_DATE,'
      '    DOG_ACTIVE = :DOG_ACTIVE,'
      '    DOG_PRIM = :DOG_PRIM'
      'WHERE'
      '    DOG_ID = :OLD_DOG_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_DOGOVOR'
      'WHERE'
      '        DOG_ID = :OLD_DOG_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_DOGOVOR('
      '    DOG_ID,'
      '    DOG_SUPID,'
      '    DOG_NUMBER,'
      '    DOG_DATE,'
      '    DOG_ACTIVE,'
      '    DOG_PRIM'
      ')'
      'VALUES('
      '    :DOG_ID,'
      '    :DOG_SUPID,'
      '    :DOG_NUMBER,'
      '    :DOG_DATE,'
      '    :DOG_ACTIVE,'
      '    :DOG_PRIM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    DOG_ID,'
      '    DOG_SUPID,'
      '    DOG_NUMBER,'
      '    DOG_DATE,'
      '    DOG_ACTIVE,'
      '    DOG_PRIM'
      'FROM'
      '    T_DOGOVOR '
      ''
      ' WHERE '
      '        T_DOGOVOR.DOG_ID = :OLD_DOG_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    DOG_ID,'
      '    DOG_SUPID,'
      '    DOG_NUMBER,'
      '    DOG_DATE,'
      '    DOG_ACTIVE,'
      '    DOG_PRIM'
      'FROM'
      '    T_DOGOVOR ')
    AutoUpdateOptions.KeyFields = 'DOG_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_DOGOVOR'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 360
    Top = 352
    object ds_DogovorDOG_ID: TFIBIntegerField
      FieldName = 'DOG_ID'
    end
    object ds_DogovorDOG_SUPID: TFIBIntegerField
      FieldName = 'DOG_SUPID'
    end
    object ds_DogovorDOG_NUMBER: TFIBStringField
      FieldName = 'DOG_NUMBER'
      EmptyStrToNull = True
    end
    object ds_DogovorDOG_DATE: TFIBDateField
      FieldName = 'DOG_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object ds_DogovorDOG_ACTIVE: TFIBIntegerField
      FieldName = 'DOG_ACTIVE'
    end
    object ds_DogovorDOG_PRIM: TFIBStringField
      FieldName = 'DOG_PRIM'
      Size = 250
      EmptyStrToNull = True
    end
  end
  object Source_Dogovor: TDataSource
    DataSet = ds_Dogovor
    Left = 360
    Top = 416
  end
  object ds_Supplier: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_SUPPLIER'
      'SET '
      '    SUP_NAME = :SUP_NAME,'
      '    SUP_ADRES = :SUP_ADRES,'
      '    SUP_STATUS = :SUP_STATUS,'
      '    SUP_COUNTRY = :SUP_COUNTRY,'
      '    SUP_TELEPHONE = :SUP_TELEPHONE,'
      '    SUP_UNN = :SUP_UNN'
      'WHERE'
      '    SUP_ID = :OLD_SUP_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_SUPPLIER'
      'WHERE'
      '        SUP_ID = :OLD_SUP_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_SUPPLIER('
      '    SUP_ID,'
      '    SUP_NAME,'
      '    SUP_ADRES,'
      '    SUP_STATUS,'
      '    SUP_COUNTRY,'
      '    SUP_TELEPHONE,'
      '    SUP_UNN'
      ')'
      'VALUES('
      '    :SUP_ID,'
      '    :SUP_NAME,'
      '    :SUP_ADRES,'
      '    :SUP_STATUS,'
      '    :SUP_COUNTRY,'
      '    :SUP_TELEPHONE,'
      '    :SUP_UNN'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SUP_ID,'
      '    SUP_NAME,'
      '    SUP_ADRES,'
      '    SUP_STATUS,'
      '    SUP_COUNTRY,'
      '    SUP_TELEPHONE,'
      '    SUP_UNN'
      'FROM'
      '    T_SUPPLIER '
      ''
      ' WHERE '
      '        T_SUPPLIER.SUP_ID = :OLD_SUP_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SUP_ID,'
      '    SUP_NAME,'
      '    SUP_ADRES,'
      '    SUP_STATUS,'
      '    SUP_COUNTRY,'
      '    SUP_TELEPHONE,'
      '    SUP_UNN'
      'FROM'
      '    T_SUPPLIER ')
    AutoUpdateOptions.KeyFields = 'SUP_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_SUPPLIER'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 456
    Top = 376
    object ds_SupplierSUP_ID: TFIBIntegerField
      FieldName = 'SUP_ID'
    end
    object ds_SupplierSUP_NAME: TFIBStringField
      FieldName = 'SUP_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object ds_SupplierSUP_ADRES: TFIBStringField
      FieldName = 'SUP_ADRES'
      Size = 200
      EmptyStrToNull = True
    end
    object ds_SupplierSUP_STATUS: TFIBIntegerField
      FieldName = 'SUP_STATUS'
    end
    object ds_SupplierSUP_COUNTRY: TFIBStringField
      FieldName = 'SUP_COUNTRY'
      Size = 3
      EmptyStrToNull = True
    end
    object ds_SupplierSUP_TELEPHONE: TFIBStringField
      FieldName = 'SUP_TELEPHONE'
      Size = 70
      EmptyStrToNull = True
    end
    object ds_SupplierSUP_UNN: TFIBStringField
      FieldName = 'SUP_UNN'
      Size = 15
      EmptyStrToNull = True
    end
  end
  object Source_Supplier: TDataSource
    DataSet = ds_Supplier
    Left = 456
    Top = 432
  end
  object ds_Detail: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    SVS_ID,'
      '    SVS_SUPID,'
      '    SVS_DOGID,'
      '    SVS_TMID,'
      '    SVS_NAME,'
      '    SVS_UNITM,'
      '    SVS_VOLUME,'
      '    SVS_PAYMENT_TERM,'
      '    SVS_PRICE_TN_W_NDS,'
      '    SVS_VOL_GET,'
      '    SVS_PAYMENT_NAKL,'
      '    SVS_NAKL_DATE,'
      '    SVS_NAKL_NUM'
      'FROM'
      '    T_SERV_S'
      'where svs_dogid = :DOG_ID'
      'order by SVS_NAME ')
    AutoUpdateOptions.KeyFields = 'SVS_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_SERV_S'
    Transaction = TransactionDB
    Database = DB
    DataSource = Source_SUP_First
    Left = 64
    Top = 480
    object ds_DetailSVS_ID: TFIBIntegerField
      FieldName = 'SVS_ID'
    end
    object ds_DetailSVS_SUPID: TFIBIntegerField
      FieldName = 'SVS_SUPID'
    end
    object ds_DetailSVS_DOGID: TFIBIntegerField
      FieldName = 'SVS_DOGID'
    end
    object ds_DetailSVS_TMID: TFIBIntegerField
      FieldName = 'SVS_TMID'
    end
    object ds_DetailSVS_NAME: TFIBStringField
      FieldName = 'SVS_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_DetailSVS_UNITM: TFIBStringField
      FieldName = 'SVS_UNITM'
      Size = 3
      EmptyStrToNull = True
    end
    object ds_DetailSVS_VOLUME: TFIBBCDField
      FieldName = 'SVS_VOLUME'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 2
    end
    object ds_DetailSVS_PAYMENT_TERM: TFIBIntegerField
      FieldName = 'SVS_PAYMENT_TERM'
    end
    object ds_DetailSVS_PRICE_TN_W_NDS: TFIBBCDField
      FieldName = 'SVS_PRICE_TN_W_NDS'
      DisplayFormat = '#,##0.'
      EditFormat = '0.00'
      Size = 2
    end
    object ds_DetailSVS_VOL_GET: TFIBBCDField
      FieldName = 'SVS_VOL_GET'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Size = 3
    end
    object ds_DetailSVS_PAYMENT_NAKL: TFIBBCDField
      FieldName = 'SVS_PAYMENT_NAKL'
      DisplayFormat = '##############,##0.'
      Size = 0
    end
    object ds_DetailSVS_NAKL_DATE: TFIBDateField
      FieldName = 'SVS_NAKL_DATE'
      DisplayFormat = 'dd.mm.yyyy'
    end
    object ds_DetailSVS_NAKL_NUM: TFIBIntegerField
      FieldName = 'SVS_NAKL_NUM'
    end
  end
  object Source_Detail: TDataSource
    DataSet = ds_Detail
    Left = 64
    Top = 528
  end
  object ds_connectDB: TpFIBDataSet
    SelectSQL.Strings = (
      'select *'
      'from mon$attachments'
      'order by MON$REMOTE_ADDRESS')
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 968
    Top = 288
  end
  object SourceDB: TDataSource
    DataSet = ds_connectDB
    Left = 968
    Top = 352
  end
  object ds_Request: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_REQUEST'
      'SET '
      '    REQ_CLNAME = :REQ_CLNAME,'
      '    REQ_OBNAME = :REQ_OBNAME,'
      '    REQ_N_ZAKAZ = :REQ_N_ZAKAZ,'
      '    REQ_DATE = :REQ_DATE,'
      '    REQ_LOGIN = :REQ_LOGIN,'
      '    REQ_PRIM = :REQ_PRIM,'
      '    REQ_LOGIN_EDIT = :REQ_LOGIN_EDIT,'
      '    REQ_DATE_EDIT = :REQ_DATE_EDIT'
      'WHERE'
      '    REQ_ID = :OLD_REQ_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_REQUEST'
      'WHERE'
      '        REQ_ID = :OLD_REQ_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_REQUEST('
      '    REQ_ID,'
      '    REQ_CLNAME,'
      '    REQ_OBNAME,'
      '    REQ_N_ZAKAZ,'
      '    REQ_DATE,'
      '    REQ_LOGIN,'
      '    REQ_PRIM,'
      '    REQ_LOGIN_EDIT,'
      '    REQ_DATE_EDIT'
      ')'
      'VALUES('
      '    :REQ_ID,'
      '    :REQ_CLNAME,'
      '    :REQ_OBNAME,'
      '    :REQ_N_ZAKAZ,'
      '    :REQ_DATE,'
      '    :REQ_LOGIN,'
      '    :REQ_PRIM,'
      '    :REQ_LOGIN_EDIT,'
      '    :REQ_DATE_EDIT'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    REQ_ID,'
      '    REQ_CLNAME,'
      '    REQ_OBNAME,'
      '    REQ_N_ZAKAZ,'
      '    REQ_DATE,'
      '    REQ_LOGIN,'
      '    REQ_PRIM,'
      '    REQ_LOGIN_EDIT,'
      '    REQ_DATE_EDIT'
      'FROM'
      '    T_REQUEST '
      ''
      ' WHERE '
      '        T_REQUEST.REQ_ID = :OLD_REQ_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    REQ_ID,'
      '    REQ_CLNAME,'
      '    CL_NAME,'
      '    REQ_OBNAME,'
      '    OB_NAME,'
      '    REQ_N_ZAKAZ,'
      '    REQ_DATE,'
      '    REQ_LOGIN,'
      '    REQ_PRIM,'
      '    REQ_LOGIN_EDIT,'
      '    REQ_DATE_EDIT'
      'FROM'
      '   T_REQUEST'
      'left join T_CLIENTS on T_CLIENTS.cl_ID = t_request.REQ_CLNAME'
      'left join T_OBJECT on T_OBJECT.OB_ID = T_REQUEST.REQ_OBNAME'
      'order by REQ_DATE DESC'
      '')
    AutoUpdateOptions.KeyFields = 'REQ_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_T_REQUEST'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 544
    Top = 376
    object ds_RequestREQ_ID: TFIBIntegerField
      FieldName = 'REQ_ID'
    end
    object ds_RequestREQ_CLNAME: TFIBIntegerField
      FieldName = 'REQ_CLNAME'
    end
    object ds_RequestCL_NAME: TFIBStringField
      FieldName = 'CL_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object ds_RequestREQ_OBNAME: TFIBIntegerField
      FieldName = 'REQ_OBNAME'
    end
    object ds_RequestOB_NAME: TFIBStringField
      FieldName = 'OB_NAME'
      Size = 200
      EmptyStrToNull = True
    end
    object ds_RequestREQ_N_ZAKAZ: TFIBStringField
      FieldName = 'REQ_N_ZAKAZ'
      Size = 64
      EmptyStrToNull = True
    end
    object ds_RequestREQ_DATE: TFIBDateTimeField
      FieldName = 'REQ_DATE'
      DisplayFormat = 'dd.mm.yyyy hh:mm AMPM'
    end
    object ds_RequestREQ_LOGIN: TFIBIntegerField
      FieldName = 'REQ_LOGIN'
    end
    object ds_RequestREQ_PRIM: TFIBStringField
      FieldName = 'REQ_PRIM'
      Size = 250
      EmptyStrToNull = True
    end
  end
  object Source_Request: TDataSource
    DataSet = ds_Request
    Left = 544
    Top = 432
  end
  object ds_SERV_R: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_SERV_R'
      'SET '
      '    SVR_REQID = :SVR_REQID,'
      '    SVR_TMID = :SVR_TMID,'
      '    SVR_NAME = :SVR_NAME,'
      '    SVR_COUNT = :SVR_COUNT,'
      '    SVR_UNITM = :SVR_UNITM,'
      '    SVR_GOST = :SVR_GOST,'
      '    SVR_LOGIN = :SVR_LOGIN'
      'WHERE'
      '    SVR_ID = :OLD_SVR_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_SERV_R'
      'WHERE'
      '        SVR_ID = :OLD_SVR_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_SERV_R('
      '    SVR_ID,'
      '    SVR_REQID,'
      '    SVR_TMID,'
      '    SVR_NAME,'
      '    SVR_COUNT,'
      '    SVR_UNITM,'
      '    SVR_GOST,'
      '    SVR_LOGIN'
      ')'
      'VALUES('
      '    :SVR_ID,'
      '    :SVR_REQID,'
      '    :SVR_TMID,'
      '    :SVR_NAME,'
      '    :SVR_COUNT,'
      '    :SVR_UNITM,'
      '    :SVR_GOST,'
      '    :SVR_LOGIN'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SVR_ID,'
      '    SVR_REQID,'
      '    SVR_TMID,'
      '    SVR_NAME,'
      '    SVR_COUNT,'
      '    SVR_UNITM,'
      '    SVR_GOST,'
      '    SVR_LOGIN'
      'FROM'
      '    T_SERV_R '
      ''
      ' WHERE '
      '        T_SERV_R.SVR_ID = :OLD_SVR_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SVR_ID,'
      '    SVR_REQID,'
      '    SVR_TMID,'
      '    SVR_NAME,'
      '    SVR_COUNT,'
      '    SVR_UNITM,'
      '    SVR_GOST,'
      '    SVR_LOGIN'
      'FROM'
      '    T_SERV_R'
      'where SVR_REQID=:perem'
      'order by SVR_ID   ')
    AutoUpdateOptions.KeyFields = 'SVR_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_T_SERV_R'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 616
    Top = 376
    object ds_SERV_RSVR_ID: TFIBIntegerField
      FieldName = 'SVR_ID'
    end
    object ds_SERV_RSVR_REQID: TFIBIntegerField
      FieldName = 'SVR_REQID'
    end
    object ds_SERV_RSVR_TMID: TFIBIntegerField
      FieldName = 'SVR_TMID'
    end
    object ds_SERV_RSVR_NAME: TFIBStringField
      FieldName = 'SVR_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_SERV_RSVR_COUNT: TFIBBCDField
      FieldName = 'SVR_COUNT'
      Size = 0
    end
    object ds_SERV_RSVR_UNITM: TFIBStringField
      FieldName = 'SVR_UNITM'
      Size = 3
      EmptyStrToNull = True
    end
    object ds_SERV_RSVR_GOST: TFIBStringField
      FieldName = 'SVR_GOST'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_SERV_RSVR_LOGIN: TFIBIntegerField
      FieldName = 'SVR_LOGIN'
    end
  end
  object Source_SERV_R: TDataSource
    DataSet = ds_SERV_R
    Left = 616
    Top = 432
  end
  object qGen: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'select gen_id(NEW_T_REQUEST,0) from RDB$DATABASE')
    Left = 688
    Top = 376
  end
  object Query_QuantityTMetal: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select count (T_Metal.TM_NAME)'
      'from T_METAL'
      'where TM_NAME =:Perem1'
      'group by T_Metal.TM_NAME')
    Left = 776
    Top = 384
  end
  object Query_QuantityMetR: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select count (T_SERV_R.svr_tmid),SVR_ID'
      'from t_serv_R'
      'left join t_metal on t_metal.tm_id=t_serv_r.svr_tmid'
      'where t_serv_r.svr_tmid =:Perem1 and t_serv_r.SVR_REQID =:Perem2'
      'group by T_SERV_R.svr_tmid, svr_id')
    Left = 776
    Top = 448
  end
  object ds_Detail_R: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_SERV_R'
      'SET '
      '    SVR_REQID = :SVR_REQID,'
      '    SVR_TMID = :SVR_TMID,'
      '    SVR_NAME = :SVR_NAME,'
      '    SVR_COUNT = :SVR_COUNT,'
      '    SVR_UNITM = :SVR_UNITM,'
      '    SVR_GOST = :SVR_GOST,'
      '    SVR_LOGIN = :SVR_LOGIN'
      'WHERE'
      '    SVR_ID = :OLD_SVR_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_SERV_R'
      'WHERE'
      '        SVR_ID = :OLD_SVR_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_SERV_R('
      '    SVR_ID,'
      '    SVR_REQID,'
      '    SVR_TMID,'
      '    SVR_NAME,'
      '    SVR_COUNT,'
      '    SVR_UNITM,'
      '    SVR_GOST,'
      '    SVR_LOGIN'
      ')'
      'VALUES('
      '    :SVR_ID,'
      '    :SVR_REQID,'
      '    :SVR_TMID,'
      '    :SVR_NAME,'
      '    :SVR_COUNT,'
      '    :SVR_UNITM,'
      '    :SVR_GOST,'
      '    :SVR_LOGIN'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SVR_ID,'
      '    SVR_REQID,'
      '    SVR_TMID,'
      '    SVR_NAME,'
      '    SVR_COUNT,'
      '    SVR_UNITM,'
      '    SVR_GOST,'
      '    SVR_LOGIN'
      'FROM'
      '    T_SERV_R '
      ''
      ' WHERE '
      '        T_SERV_R.SVR_ID = :OLD_SVR_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    SVR_ID,'
      '    SVR_REQID,'
      '    SVR_TMID,'
      '    SVR_NAME,'
      '    SVR_COUNT,'
      '    SVR_UNITM,'
      '    SVR_GOST,'
      '    SVR_LOGIN'
      'FROM'
      '    T_SERV_R'
      'where SVR_REQID=:REQ_ID'
      'order by SVR_ID  ')
    Transaction = TransactionDB
    Database = DB
    DataSource = Source_Request
    Left = 152
    Top = 472
    object ds_Detail_RSVR_ID: TFIBIntegerField
      FieldName = 'SVR_ID'
    end
    object ds_Detail_RSVR_REQID: TFIBIntegerField
      FieldName = 'SVR_REQID'
    end
    object ds_Detail_RSVR_TMID: TFIBIntegerField
      FieldName = 'SVR_TMID'
    end
    object ds_Detail_RSVR_NAME: TFIBStringField
      FieldName = 'SVR_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_Detail_RSVR_COUNT: TFIBBCDField
      FieldName = 'SVR_COUNT'
      Size = 0
    end
    object ds_Detail_RSVR_UNITM: TFIBStringField
      FieldName = 'SVR_UNITM'
      Size = 3
      EmptyStrToNull = True
    end
    object ds_Detail_RSVR_GOST: TFIBStringField
      FieldName = 'SVR_GOST'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_Detail_RSVR_LOGIN: TFIBIntegerField
      FieldName = 'SVR_LOGIN'
    end
  end
  object Source_Detail_R: TDataSource
    DataSet = ds_Detail_R
    Left = 152
    Top = 528
  end
  object Query_QuantityT_Product: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select count (T_Product.TP_NAME)'
      'from T_Product'
      'where TP_NAME =:Perem1'
      'group by T_Product.TP_NAME')
    Left = 896
    Top = 384
  end
  object DS_Status_Production: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_STATUS_PRODUCTION'
      'SET '
      '    TST_STATUS = :TST_STATUS'
      'WHERE'
      '    TSP_ID = :OLD_TSP_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_STATUS_PRODUCTION'
      'WHERE'
      '        TSP_ID = :OLD_TSP_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_STATUS_PRODUCTION('
      '    TSP_ID,'
      '    TST_STATUS'
      ')'
      'VALUES('
      '    :TSP_ID,'
      '    :TST_STATUS'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    TSP_ID,'
      '    TST_STATUS'
      'FROM'
      '    T_STATUS_PRODUCTION '
      ''
      ' WHERE '
      '        T_STATUS_PRODUCTION.TSP_ID = :OLD_TSP_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    TSP_ID,'
      '    TST_STATUS'
      'FROM'
      '    T_STATUS_PRODUCTION ')
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 264
    Top = 472
    object DS_Status_ProductionTSP_ID: TFIBIntegerField
      FieldName = 'TSP_ID'
    end
    object DS_Status_ProductionTST_STATUS: TFIBStringField
      FieldName = 'TST_STATUS'
      Size = 150
      EmptyStrToNull = True
    end
  end
  object Source_Status_production: TDataSource
    DataSet = DS_Status_Production
    Left = 264
    Top = 528
  end
  object ds_Specification_Production: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_SPECIFICATION_PRODUCTION'
      'SET '
      '    TSP_TMID = :TSP_TMID,'
      '    TSP_TPID = :TSP_TPID,'
      '    TSP_NAME = :TSP_NAME,'
      '    TSP_COUNT = :TSP_COUNT,'
      '    TSP_UNITM = :TSP_UNITM'
      'WHERE'
      '    TSP_ID = :OLD_TSP_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_SPECIFICATION_PRODUCTION'
      'WHERE'
      '        TSP_ID = :OLD_TSP_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_SPECIFICATION_PRODUCTION('
      '    TSP_ID,'
      '    TSP_TMID,'
      '    TSP_TPID,'
      '    TSP_NAME,'
      '    TSP_COUNT,'
      '    TSP_UNITM'
      ')'
      'VALUES('
      '    :TSP_ID,'
      '    :TSP_TMID,'
      '    :TSP_TPID,'
      '    :TSP_NAME,'
      '    :TSP_COUNT,'
      '    :TSP_UNITM'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    TSP_ID,'
      '    TSP_TMID,'
      '    TSP_TPID,'
      '    TSP_NAME,'
      '    TSP_COUNT,'
      '    TSP_UNITM'
      'FROM'
      '    T_SPECIFICATION_PRODUCTION '
      ''
      ' WHERE '
      '        T_SPECIFICATION_PRODUCTION.TSP_ID = :OLD_TSP_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    TSP_ID,'
      '    TSP_TMID,'
      '    TSP_TPID,'
      '    TSP_NAME,'
      '    TSP_COUNT,'
      '    TSP_UNITM'
      'FROM'
      '    T_SPECIFICATION_PRODUCTION'
      'where TSP_TPID=:perem'
      'order by TSP_NAME  ')
    AutoUpdateOptions.KeyFields = 'TSP_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_T_SPECIFICATION_PRODUCTION'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 400
    Top = 472
    object ds_Specification_ProductionTSP_ID: TFIBIntegerField
      FieldName = 'TSP_ID'
    end
    object ds_Specification_ProductionTSP_TMID: TFIBIntegerField
      FieldName = 'TSP_TMID'
    end
    object ds_Specification_ProductionTSP_TPID: TFIBIntegerField
      FieldName = 'TSP_TPID'
    end
    object ds_Specification_ProductionTSP_NAME: TFIBStringField
      FieldName = 'TSP_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_Specification_ProductionTSP_COUNT: TFIBBCDField
      FieldName = 'TSP_COUNT'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 4
    end
    object ds_Specification_ProductionTSP_UNITM: TFIBStringField
      FieldName = 'TSP_UNITM'
      Size = 15
      EmptyStrToNull = True
    end
  end
  object Source_Specification_Prod: TDataSource
    DataSet = ds_Specification_Production
    Left = 400
    Top = 528
  end
  object QuantityMetInProduction: TpFIBQuery
    Transaction = TransactionDB
    Database = DB
    SQL.Strings = (
      'Select count (T_SPECIFICATION_PRODUCTION.TSP_NAME)'
      'from T_SPECIFICATION_PRODUCTION'
      'where (TSP_NAME =:Perem1)'
      'and (TSP_TPID =:Perem2)'
      'group by T_SPECIFICATION_PRODUCTION.TSP_NAME')
    Left = 896
    Top = 448
  end
  object ds_Spec_Prod_detail: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_SERV_R'
      'SET '
      '    SVR_REQID = :SVR_REQID,'
      '    SVR_TMID = :SVR_TMID,'
      '    SVR_NAME = :SVR_NAME,'
      '    SVR_COUNT = :SVR_COUNT,'
      '    SVR_UNITM = :SVR_UNITM,'
      '    SVR_GOST = :SVR_GOST,'
      '    SVR_LOGIN = :SVR_LOGIN'
      'WHERE'
      '    SVR_ID = :OLD_SVR_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_SERV_R'
      'WHERE'
      '        SVR_ID = :OLD_SVR_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_SERV_R('
      '    SVR_ID,'
      '    SVR_REQID,'
      '    SVR_TMID,'
      '    SVR_NAME,'
      '    SVR_COUNT,'
      '    SVR_UNITM,'
      '    SVR_GOST,'
      '    SVR_LOGIN'
      ')'
      'VALUES('
      '    :SVR_ID,'
      '    :SVR_REQID,'
      '    :SVR_TMID,'
      '    :SVR_NAME,'
      '    :SVR_COUNT,'
      '    :SVR_UNITM,'
      '    :SVR_GOST,'
      '    :SVR_LOGIN'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    SVR_ID,'
      '    SVR_REQID,'
      '    SVR_TMID,'
      '    SVR_NAME,'
      '    SVR_COUNT,'
      '    SVR_UNITM,'
      '    SVR_GOST,'
      '    SVR_LOGIN'
      'FROM'
      '    T_SERV_R '
      ''
      ' WHERE '
      '        T_SERV_R.SVR_ID = :OLD_SVR_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    TSP_ID,'
      '    TSP_TMID,'
      '    TSP_TPID,'
      '    TSP_NAME,'
      '    TSP_COUNT,'
      '    TSP_UNITM'
      'FROM'
      '    T_SPECIFICATION_PRODUCTION'
      'where TSP_TPID=:TP_ID'
      'order by TSP_NAME   ')
    Active = True
    Transaction = TransactionDB
    Database = DB
    DataSource = Source_Product
    Left = 528
    Top = 480
    object ds_Spec_Prod_detailTSP_ID: TFIBIntegerField
      FieldName = 'TSP_ID'
    end
    object ds_Spec_Prod_detailTSP_TMID: TFIBIntegerField
      FieldName = 'TSP_TMID'
    end
    object ds_Spec_Prod_detailTSP_TPID: TFIBIntegerField
      FieldName = 'TSP_TPID'
    end
    object ds_Spec_Prod_detailTSP_NAME: TFIBStringField
      FieldName = 'TSP_NAME'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_Spec_Prod_detailTSP_COUNT: TFIBBCDField
      FieldName = 'TSP_COUNT'
      DisplayFormat = '#,##0.0000'
      EditFormat = '0.0000'
      Size = 4
    end
    object ds_Spec_Prod_detailTSP_UNITM: TFIBStringField
      FieldName = 'TSP_UNITM'
      Size = 15
      EmptyStrToNull = True
    end
  end
  object Source_Spec_Prod_Detail: TDataSource
    DataSet = ds_Spec_Prod_detail
    Left = 528
    Top = 528
  end
end