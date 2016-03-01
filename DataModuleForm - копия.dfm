object DataModule: TDataModule
  Left = 0
  Top = 0
  Caption = 'DataModule'
  ClientHeight = 337
  ClientWidth = 898
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
    DBName = 'd:\Delphi_prog\Cert\CERTIFICAT.FDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
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
      '    U_LOGIN = :U_LOGIN,'
      '    U_PASS = :U_PASS,'
      '    U_NASED = :U_NASED,'
      '    U_OTD = :U_OTD,'
      '    U_PROFFIO = :U_PROFFIO,'
      '    U_CERT = :U_CERT,'
      '    U_KEY = :U_KEY,'
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
      '    U_LOGIN,'
      '    U_PASS,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_KEY,'
      '    U_INV,'
      '    U_CONTRACTFROM,'
      '    U_CONTRACTTO,'
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
      '    :U_CONTRACTFROM,'
      '    :U_CONTRACTTO,'
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
      '    U_LOGIN,'
      '    U_PASS,'
      '    U_NASED,'
      '    U_OTD,'
      '    U_PROFFIO,'
      '    U_CERT,'
      '    U_KEY,'
      '    U_INV,'
      '    U_CONTRACTFROM,'
      '    U_CONTRACTTO,'
      '    U_PRIM,'
      '    U_RIGHTS'
      'FROM'
      '    T_USERS'
      'where U_ID<>:X ')
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
      DisplayWidth = 4
      FieldName = 'U_ID'
    end
    object DS_T_UsersU_NAME: TFIBStringField
      DisplayWidth = 30
      FieldName = 'U_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_UsersU_LOGIN: TFIBStringField
      DisplayWidth = 5
      FieldName = 'U_LOGIN'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_UsersU_PASS: TFIBStringField
      DisplayWidth = 8
      FieldName = 'U_PASS'
      Size = 10
      EmptyStrToNull = True
    end
    object DS_T_UsersU_NASED: TFIBStringField
      DisplayWidth = 5
      FieldName = 'U_NASED'
      Size = 10
      EmptyStrToNull = True
    end
    object DS_T_UsersU_OTD: TFIBIntegerField
      FieldName = 'U_OTD'
      Visible = False
    end
    object DS_T_UsersOTD_NAME: TStringField
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'OTD_NAME'
      LookupDataSet = ds_OTD
      LookupKeyFields = 'O_ID'
      LookupResultField = 'O_NAME'
      KeyFields = 'U_OTD'
      Size = 50
      Lookup = True
    end
    object DS_T_UsersU_PROFFIO: TFIBStringField
      FieldName = 'U_PROFFIO'
      Visible = False
      Size = 100
      EmptyStrToNull = True
    end
    object DS_T_UsersP_Prof: TStringField
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'P_Prof'
      LookupDataSet = ds_Proffesionals
      LookupKeyFields = 'P_ID'
      LookupResultField = 'P_PROF'
      KeyFields = 'U_PROFFIO'
      Lookup = True
    end
    object DS_T_UsersU_CERT: TFIBMemoField
      DisplayWidth = 6
      FieldName = 'U_CERT'
      BlobType = ftMemo
      Size = 8
    end
    object DS_T_UsersU_KEY: TFIBStringField
      DisplayWidth = 10
      FieldName = 'U_KEY'
      Size = 30
      EmptyStrToNull = True
    end
    object DS_T_UsersU_INV: TFIBStringField
      FieldName = 'U_INV'
      Size = 12
      EmptyStrToNull = True
    end
    object DS_T_UsersU_CONTRACTFROM: TFIBStringField
      FieldName = 'U_CONTRACTFROM'
      Size = 12
      EmptyStrToNull = True
    end
    object DS_T_UsersU_CONTRACTTO: TFIBStringField
      FieldName = 'U_CONTRACTTO'
      Size = 12
      EmptyStrToNull = True
    end
    object DS_T_UsersU_PRIM: TFIBStringField
      FieldName = 'U_PRIM'
      Size = 50
      EmptyStrToNull = True
    end
    object DS_T_UsersU_RIGHTS: TFIBStringField
      FieldName = 'U_RIGHTS'
      Size = 10
      EmptyStrToNull = True
    end
  end
  object TransactionDB: TpFIBTransaction
    Active = True
    DefaultDatabase = DB
    TimeoutAction = TARollback
    Left = 16
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
      '    U_LOGIN = :U_LOGIN,'
      '    U_PASS = :U_PASS,'
      '    U_NASED = :U_NASED,'
      '    U_OTD = :U_OTD,'
      '    U_PROFFIO = :U_PROFFIO,'
      '    U_CERT = :U_CERT,'
      '    U_KEY = :U_KEY,'
      '    U_INV = :U_INV,'
      '    U_PRIM = :U_PRIM,'
      '    U_RIGHTS = :U_RIGHTS,'
      '    U_DATE_DEL = :U_DATE_DEL'
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
      '    U_RIGHTS,'
      '    U_DATE_DEL'
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
      '    :U_RIGHTS,'
      '    :U_DATE_DEL'
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
      '    U_RIGHTS,'
      '    U_DATE_DEL'
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
      '    U_RIGHTS,'
      '    U_DATE_DEL'
      'FROM'
      '    T_USERS_DEL ')
    AutoUpdateOptions.KeyFields = 'U_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_USER_DEL'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Active = True
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 296
    Top = 24
    object ds_USER_DELU_ID: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'U_ID'
    end
    object ds_USER_DELU_ID_OLD: TFIBIntegerField
      DisplayWidth = 3
      FieldName = 'U_ID_OLD'
    end
    object ds_USER_DELU_NAME: TFIBStringField
      DisplayWidth = 37
      FieldName = 'U_NAME'
      Size = 50
      EmptyStrToNull = True
    end
    object ds_USER_DELU_LOGIN: TFIBStringField
      DisplayWidth = 8
      FieldName = 'U_LOGIN'
      Size = 50
      EmptyStrToNull = True
    end
    object ds_USER_DELU_PASS: TFIBStringField
      DisplayWidth = 5
      FieldName = 'U_PASS'
      Size = 10
      EmptyStrToNull = True
    end
    object ds_USER_DELU_NASED: TFIBStringField
      DisplayWidth = 5
      FieldName = 'U_NASED'
      Size = 10
      EmptyStrToNull = True
    end
    object ds_USER_DELU_OTD: TFIBStringField
      DisplayWidth = 12
      FieldName = 'U_OTD'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_USER_DELU_PROFFIO: TFIBStringField
      DisplayWidth = 18
      FieldName = 'U_PROFFIO'
      Size = 100
      EmptyStrToNull = True
    end
    object ds_USER_DELU_CERT: TFIBMemoField
      DisplayWidth = 8
      FieldName = 'U_CERT'
      BlobType = ftMemo
      Size = 8
    end
    object ds_USER_DELU_KEY: TFIBStringField
      DisplayWidth = 12
      FieldName = 'U_KEY'
      Size = 30
      EmptyStrToNull = True
    end
    object ds_USER_DELU_INV: TFIBStringField
      FieldName = 'U_INV'
      Size = 4
      EmptyStrToNull = True
    end
    object ds_USER_DELU_PRIM: TFIBStringField
      FieldName = 'U_PRIM'
      Size = 50
      EmptyStrToNull = True
    end
    object ds_USER_DELU_RIGHTS: TFIBStringField
      FieldName = 'U_RIGHTS'
      Size = 10
      EmptyStrToNull = True
    end
    object ds_USER_DELU_DATE_DEL: TFIBDateField
      FieldName = 'U_DATE_DEL'
      DisplayFormat = 'dd.mm.yyyy'
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
      'ORDER BY O_ID  ')
    AutoUpdateOptions.KeyFields = 'O_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_OTDSOURCE'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Active = True
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 392
    Top = 24
  end
  object Source_OTD: TDataSource
    DataSet = ds_OTD
    Left = 392
    Top = 88
  end
  object ds_QuantityLogin: TpFIBDataSet
    SelectSQL.Strings = (
      'select count (t_users.u_login)'
      'from t_users'
      'where t_users.u_login =:perem')
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 616
    Top = 200
  end
  object ds_QuantityKey: TpFIBDataSet
    SelectSQL.Strings = (
      'select count (t_users.u_Key)'
      'from t_users'
      'where t_users.u_Key =UPPER(:perem)')
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 704
    Top = 200
  end
  object ds_QuantityInv: TpFIBDataSet
    SelectSQL.Strings = (
      'select count (t_users.u_Inv)'
      'from t_users'
      'where t_users.u_Inv =:perem')
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 784
    Top = 200
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
    Active = True
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 544
    Top = 24
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
    Left = 544
    Top = 88
  end
  object Source_USERS_DEL: TDataSource
    DataSet = ds_USER_DEL
    Left = 296
    Top = 88
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
      '    T_PROFESIONALS ')
    AutoUpdateOptions.KeyFields = 'P_ID'
    AutoUpdateOptions.GeneratorName = 'NEW_PROF'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Active = True
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 464
    Top = 24
  end
  object Source_Prof: TDataSource
    DataSet = ds_Proffesionals
    Left = 464
    Top = 88
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
    AutoUpdateOptions.WhenGetGenID = wgOnNewRecord
    Active = True
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 624
    Top = 24
    object ds_TemplateT_ID: TFIBIntegerField
      FieldName = 'T_ID'
    end
    object ds_TemplateT_NAME: TFIBStringField
      FieldName = 'T_NAME'
      Size = 30
      EmptyStrToNull = True
    end
    object ds_TemplateT_BLOB: TFIBBlobField
      FieldName = 'T_BLOB'
      Size = 8
    end
    object ds_TemplateT_TYPE: TFIBIntegerField
      FieldName = 'T_TYPE'
    end
  end
  object Source_Template: TDataSource
    DataSet = ds_Template
    Left = 624
    Top = 88
  end
  object pFIBDataSet1: TpFIBDataSet
    Left = 120
    Top = 232
  end
  object qGen: TpFIBDataSet
    SelectSQL.Strings = (
      'select gen_id(%s,%d)from rdb$database')
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 296
    Top = 176
  end
  object ds_KeyBreak: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE T_KEY_BREAK'
      'SET '
      '    K_KEY = :K_KEY,'
      '    K_INV = :K_INV,'
      '    K_DATE = :K_DATE'
      'WHERE'
      '    K_ID = :OLD_K_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    T_KEY_BREAK'
      'WHERE'
      '        K_ID = :OLD_K_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO T_KEY_BREAK('
      '    K_ID,'
      '    K_KEY,'
      '    K_INV,'
      '    K_DATE'
      ')'
      'VALUES('
      '    :K_ID,'
      '    :K_KEY,'
      '    :K_INV,'
      '    :K_DATE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    K_ID,'
      '    K_KEY,'
      '    K_INV,'
      '    K_DATE'
      'FROM'
      '    T_KEY_BREAK '
      ''
      ' WHERE '
      '        T_KEY_BREAK.K_ID = :OLD_K_ID'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    K_ID,'
      '    K_KEY,'
      '    K_INV,'
      '    K_DATE'
      'FROM'
      '    T_KEY_BREAK ')
    AutoUpdateOptions.KeyFields = 'K_ID'
    AutoUpdateOptions.GeneratorName = 'GEN_T_KEY_BREAK_ID'
    AutoUpdateOptions.WhenGetGenID = wgBeforePost
    Active = True
    Transaction = TransactionDB
    Database = DB
    AutoCommit = True
    Left = 720
    Top = 24
  end
  object Source_KeyBreak: TDataSource
    DataSet = ds_KeyBreak
    Left = 720
    Top = 88
  end
end
