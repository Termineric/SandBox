object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'TerminEric SandBox [ Json Content Read / Writer  ]'
  ClientHeight = 386
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object MMO_InJsonContent: TMemo
    Left = 0
    Top = 0
    Width = 217
    Height = 386
    Align = alLeft
    Lines.Strings = (
      '{'
      '"JSON-Data": ['
      '                {'
      '                    "Name": "Test#01",'
      '                    "Value": "Some test data '
      'here",'
      '                    "Titel":"Test nr 1"'
      '                },'
      '                {'
      '                    "Name": "Test#02",'
      '                    "Value": "Some other test '
      'data here",'
      '                    "Titel":"Test nr 2"'
      '                }'
      '            ]'
      '}')
    TabOrder = 0
    ExplicitHeight = 421
  end
  object PNL_GPX_Data_Items: TPanel
    Left = 217
    Top = 0
    Width = 557
    Height = 386
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 754
    ExplicitHeight = 421
    object Panel12: TPanel
      Left = 0
      Top = 0
      Width = 557
      Height = 91
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = 'GPX Data Items'
      Color = 16091980
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      ShowCaption = False
      TabOrder = 0
      ExplicitWidth = 886
      object Label1: TLabel
        Left = 6
        Top = 3
        Width = 88
        Height = 15
        Caption = 'Json Data Items'
      end
      object BTN_LoadFromJsonString: TButton
        Left = 6
        Top = 24
        Width = 155
        Height = 25
        Caption = '>> Load from Json string'
        TabOrder = 0
        OnClick = BTN_LoadFromJsonStringClick
      end
      object BTN_SaveToJsonString: TButton
        Left = 6
        Top = 55
        Width = 138
        Height = 25
        Caption = '<<< Save to Json string'
        TabOrder = 1
        OnClick = BTN_SaveToJsonStringClick
      end
      object CHB_NeedWrite: TCheckBox
        Left = 224
        Top = 48
        Width = 97
        Height = 17
        Caption = 'Need Update'
        TabOrder = 2
      end
    end
    object DBGrid3: TDBGrid
      Left = 0
      Top = 91
      Width = 557
      Height = 153
      Align = alClient
      DataSource = DS_Json_Data
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object Panel1: TPanel
      Left = 0
      Top = 244
      Width = 557
      Height = 142
      Align = alBottom
      Caption = 'Panel1'
      ShowCaption = False
      TabOrder = 2
      ExplicitTop = 279
      ExplicitWidth = 754
      DesignSize = (
        557
        142)
      object LBL_001: TLabel
        Left = 6
        Top = 22
        Width = 66
        Height = 15
        Caption = 'Title of entry'
      end
      object LBL_002: TLabel
        Left = 6
        Top = 83
        Width = 76
        Height = 15
        Caption = 'Name of entry'
      end
      object LBL_003: TLabel
        Left = 182
        Top = 6
        Width = 99
        Height = 15
        Anchors = [akTop, akRight]
        Caption = 'Value of entry >>>'
        ExplicitLeft = 479
      end
      object DBEdit1: TDBEdit
        Left = 6
        Top = 38
        Width = 268
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Titel'
        DataSource = DS_Json_Data
        TabOrder = 0
        ExplicitWidth = 465
      end
      object DBMemo1: TDBMemo
        Left = 287
        Top = 1
        Width = 269
        Height = 140
        Align = alRight
        DataField = 'Value'
        DataSource = DS_Json_Data
        TabOrder = 1
        ExplicitLeft = 484
      end
      object DBEdit2: TDBEdit
        Left = 6
        Top = 104
        Width = 268
        Height = 23
        Anchors = [akLeft, akTop, akRight]
        DataField = 'Name'
        DataSource = DS_Json_Data
        TabOrder = 2
        ExplicitWidth = 465
      end
    end
  end
  object DS_Json_Data: TDataSource
    DataSet = TBL_Json_Data
    Left = 552
    Top = 248
  end
  object TBL_Json_Data: TFDMemTable
    AfterOpen = TBL_Json_DataAfterOpen
    ObjectView = False
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvStoreItems, rvSilentMode, rvStorePrettyPrint, rvStoreMergeData]
    ResourceOptions.StoreItems = [siData]
    ResourceOptions.StorePrettyPrint = True
    ResourceOptions.StoreMergeData = dmDataSet
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.RefreshMode = rmAll
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 552
    Top = 200
    object TBL_Json_DataTitel: TStringField
      FieldName = 'Titel'
    end
    object TBL_Json_DataValue: TMemoField
      FieldName = 'Value'
      BlobType = ftMemo
    end
    object TBL_Json_DataName: TStringField
      DisplayWidth = 20
      FieldName = 'Name'
      Visible = False
      Size = 50
    end
  end
  object RRDSA_Json_Data: TRESTResponseDataSetAdapter
    Dataset = TBL_Json_Data
    FieldDefs = <>
    RootElement = 'JSON-Data'
    NestedElementsDepth = 12
    NestedElements = True
    Left = 552
    Top = 160
  end
  object FDStanStorageJSONLink1: TFDStanStorageJSONLink
    Left = 696
    Top = 232
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 700
    Top = 160
  end
  object FDBatchMove1: TFDBatchMove
    Reader = FDBatchMoveDataSetReader1
    Writer = FDBatchMoveJSONWriter1
    Mappings = <>
    LogFileName = 'Data.log'
    Left = 254
    Top = 138
  end
  object FDBatchMoveDataSetReader1: TFDBatchMoveDataSetReader
    DataSet = TBL_Json_Data
    Left = 398
    Top = 130
  end
  object FDBatchMoveJSONWriter1: TFDBatchMoveJSONWriter
    DataDef.Fields = <>
    DataDef.ExtendedJsonMode = StrictMode
    DataDef.Formatting = Indented
    DataDef.FloatFormatHandling = String
    Encoding = ecANSI
    Left = 398
    Top = 186
  end
end
