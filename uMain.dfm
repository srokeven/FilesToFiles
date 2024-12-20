object fmMainFiles: TfmMainFiles
  Left = 0
  Top = 0
  Caption = 'FilesToFiles - Manipulador de arquivos e pastas'
  ClientHeight = 517
  ClientWidth = 1011
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 15
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clCadetblue
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 76
      Height = 28
      Caption = 'Fun'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 185
      Top = 10
      Width = 84
      Height = 28
      Caption = 'Arquivos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlSide: TPanel
    Left = 0
    Top = 55
    Width = 185
    Height = 462
    Align = alLeft
    BevelOuter = bvNone
    Color = clCadetblue
    ParentBackground = False
    TabOrder = 1
    object btnOrganizacao: TButton
      AlignWithMargins = True
      Left = 3
      Top = 0
      Width = 179
      Height = 46
      Margins.Top = 0
      Align = alTop
      Caption = 'Organiza'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlBackground: TPanel
    Left = 185
    Top = 55
    Width = 826
    Height = 462
    Align = alClient
    BevelOuter = bvNone
    Color = clFloralwhite
    ParentBackground = False
    TabOrder = 2
    object pnlListaArquivos: TPanel
      Left = 0
      Top = 57
      Width = 826
      Height = 340
      Margins.Top = 0
      Align = alClient
      TabOrder = 0
      ExplicitTop = 65
      ExplicitHeight = 397
      object grListaArquivos: TDBGrid
        Left = 1
        Top = 1
        Width = 824
        Height = 338
        Align = alClient
        DataSource = dsListaArquivos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnCellClick = grListaArquivosCellClick
        OnDrawColumnCell = grListaArquivosDrawColumnCell
        OnDblClick = grListaArquivosDblClick
        OnTitleClick = grListaArquivosTitleClick
      end
      object pnlFiltros: TPanel
        Left = 64
        Top = 52
        Width = 482
        Height = 286
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Visible = False
      end
    end
    object cpPrincipal: TCardPanel
      Left = 0
      Top = 397
      Width = 826
      Height = 65
      Align = alBottom
      ActiveCard = cOrganizacao
      Caption = 'cpPrincipal'
      TabOrder = 1
      ExplicitTop = 0
      object cOrganizacao: TCard
        Left = 1
        Top = 1
        Width = 824
        Height = 63
        Caption = 'cOrganizacao'
        CardIndex = 0
        TabOrder = 0
        ExplicitLeft = 6
        ExplicitTop = 5
        object Label4: TLabel
          Left = 60
          Top = 5
          Width = 87
          Height = 15
          Caption = 'Quais arquivos...'
        end
        object Label6: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 54
          Height = 57
          Align = alLeft
          Caption = 'A'#231#245'es:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDarkslategray
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitHeight = 63
        end
        object Label7: TLabel
          Left = 319
          Top = 5
          Width = 69
          Height = 15
          Caption = 'O que fazer...'
        end
        object Button1: TButton
          Left = 60
          Top = 26
          Width = 229
          Height = 31
          Caption = 'Defina um filtro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDarkslategray
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          StyleName = 'Windows'
        end
        object Button2: TButton
          Left = 319
          Top = 26
          Width = 229
          Height = 31
          Caption = 'Defina uma uma a'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          StyleName = 'Windows'
        end
        object Button3: TButton
          Left = 576
          Top = 26
          Width = 113
          Height = 31
          Caption = 'Aplicar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          StyleName = 'Windows'
        end
      end
    end
    object pnlSelecaoDiretorio: TPanel
      Left = 0
      Top = 0
      Width = 826
      Height = 57
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 2
      ExplicitLeft = 3
      ExplicitTop = -3
      object Label3: TLabel
        Left = 9
        Top = 5
        Width = 46
        Height = 15
        Caption = 'Diret'#243'rio'
      end
      object edDiretorio: TEdit
        Left = 47
        Top = 26
        Width = 362
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'D:\Sistemas\FilesToFiles'
        OnChange = edDiretorioChange
      end
      object btnProcurarDiretorio: TButton
        Left = 415
        Top = 25
        Width = 75
        Height = 25
        Caption = 'Procurar'
        TabOrder = 1
        OnClick = btnProcurarDiretorioClick
      end
      object btnVoltarDiretorio: TButton
        Left = 9
        Top = 26
        Width = 32
        Height = 25
        Caption = #8592
        TabOrder = 2
        OnClick = btnVoltarDiretorioClick
      end
    end
  end
  object fmtListaArquivos: TFDMemTable
    AfterOpen = fmtListaArquivosAfterOpen
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 192
    Top = 360
    object fmtListaArquivosSELECAO: TIntegerField
      Alignment = taCenter
      DefaultExpression = '0'
      DisplayLabel = '  '
      DisplayWidth = 3
      FieldName = 'SELECAO'
    end
    object fmtListaArquivosTIPO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Tipo'
      DisplayWidth = 5
      FieldName = 'TIPO'
      OnGetText = fmtListaArquivosTIPOGetText
    end
    object fmtListaArquivosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Size = 256
    end
    object fmtListaArquivosTAMANHO: TLargeintField
      DisplayLabel = 'Tamanho'
      FieldName = 'TAMANHO'
      OnGetText = fmtListaArquivosTAMANHOGetText
    end
    object fmtListaArquivosDATA_CRIACAO: TDateTimeField
      DisplayLabel = 'Data de cria'#231#227'o'
      FieldName = 'DATA_CRIACAO'
    end
    object fmtListaArquivosDATA_MODIFICAO: TDateTimeField
      DisplayLabel = 'Data de modifica'#231#227'o'
      FieldName = 'DATA_MODIFICAO'
    end
    object fmtListaArquivosEXTENSAO: TStringField
      DisplayLabel = 'Tipo de extens'#227'o'
      DisplayWidth = 15
      FieldName = 'EXTENSAO'
      Size = 50
    end
    object fmtListaArquivosCAMINHO_COMPLETO: TStringField
      DisplayLabel = 'Caminho completo'
      DisplayWidth = 100
      FieldName = 'CAMINHO_COMPLETO'
      Size = 256
    end
  end
  object dsListaArquivos: TDataSource
    AutoEdit = False
    DataSet = fmtListaArquivos
    Left = 192
    Top = 312
  end
  object ilListaImagens: TImageList
    Left = 193
    Top = 264
    Bitmap = {
      494C01010A001800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000044A7E5FF59B1E8FF59B1E8FF59B1E8FF59B1E8FF59B1
      E8FF59B1E8FF59B1E8FF59B1E8FF59B1E8F70000000000000000000000000000
      00005A5A5A1E5A5A5A815A5A5AC35A5A5AE45A5A5AE45A5A5AC45A5A5A825A5A
      5A20000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B5793F022F9DE2EA59B1E8FF59B1E8FF59B1E8FF000000FF0000
      00FF59B1E8FF59B1E8FF59B1E8FF59B1E8AB00000000000000005A5A5A035A5A
      5A815A5A5AF95A5A5AFF606060FF787878FF787878FF606060FF5A5A5AFF5A5A
      5AF95A5A5A855A5A5A0400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B3783EDFB2773C6B0000000044A7E5FF59B1E8FF59B1E8FF59B1E8FF59B1
      E8FF59B1E8FF59B1E8FF44A7E5FF00000000000000005A5A5A035A5A5AAD5A5A
      5AFF707070FFC6C6C6FFFBFBFBFFFFFFFFFFFFFFFFFFFBFBFBFFC8C8C8FF7171
      71FF5A5A5AFF5A5A5AB15A5A5A04000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B378
      3EE7B1753AFFB2763AEADFC7AE0F2F9DE2AF59B1E8FF59B1E8FF000000FF0000
      00FF59B1E8FF59B1E8FF2F9DE2AC00000000000000005A5A5A865A5A5AFF8282
      82FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6
      F6FF848484FF5A5A5AFF5A5A5A8B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B3783EB9B175
      3AFFB7804BFFFEFEFFFFFFFFFF880000000044A7E5FF59B1E8FF000000FF0000
      00FF59B1E8FF44A7E5FF00000000000000005A5A5A245A5A5AFA6B6B6BFFF4F4
      F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5F5F5FF6D6D6DFF5A5A5AFB5A5A5A280000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B77B3F45B2773CFFB073
      38FFFCFBFAFFFFFFFFFFFFFFFFF7FFFFFF1F2F9DE27D59B1E8FF000000FF0000
      00FF59B1E8FF2F9DE27900000000000000005A5A5A8A5A5A5AFFBCBCBCFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC0C0C0FF5A5A5AFF5A5A5A900000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3783EDDAE7033FFE3CE
      BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA60000000059B1E8FF59B1E8FF59B1
      E8FF59B1E8FF0000000000000000000000005A5A5ACF5B5B5BFFF4F4F4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFDFCFCFFE7D5C4FFE9D9C9FFEDE0D3FFF2E9DFFFFAF5
      F2FFFFFFFFFFF6F6F6FF5C5C5CFF5A5A5AD40000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3783E13B2773CFFB1763BFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFF3630A3EA4859B1E8FF59B1
      E8FF30A2EA46B77B3F1200000000000000005A5A5AF16C6C6CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEFE1D5FFAC6B2CFFAC6B2CFFAC6C2EFFB3793FFFBD8B
      59FFD2B08EFFFCFAF7FF6F6F6FFF5A5A5AF60000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3783E65B07438FFCBA37CFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC20000000044A7E5FF44A7
      E5FFAF723501B4793E8200000000000000005A5A5AF36D6D6DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF1E7DDFFAC6B2CFFF2E8DEFFFEFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF717171FF5A5A5AF80000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3783E9EAF7235FFDABFA5FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F068ADC1E068A
      DC18AE703255B3783EEC00000000000000005A5A5AD55C5C5CFFF7F7F7FFFFFF
      FFFFFFFFFFFFFFFFFFFFF7F3EDFFAC6B2CFFFCFAF6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFAFAFAFF5D5D5DFF5A5A5ADA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3783EC8AF7134FFE3CDB8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDFFFFFF70F3EA
      E273AE6F31EEB3783EFF00000000000000005A5A5A955A5A5AFFC4C4C4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFB1763BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC7C7C7FF5A5A5AFF5A5A5A9A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3783EDFAF7134FFE1CBB7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4ED
      E4FFAE6F31FFB3783EFFBE7F410E000000005A5A5A305A5A5AFD737373FFF8F8
      F8FFFFFFFFFFFFFFFFFFFFFFFFFFC79B71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFAFAFF757575FF5A5A5AFE5A5A5A340000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3783EE7B2773CFFB57B45FFB983
      4EFFC69B70FFE8D7C7FFFFFFFFFFFFFFFFFFE9DBCBFFC69A6FFFB7814BFFB67F
      48FFB2763CFFB3783EFFBE7F411B00000000000000005A5A5A9C5A5A5AFF9090
      90FFFCFCFCFFFFFFFFFFFFFFFFFFF0E4D8FFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
      FCFF949494FF5A5A5AFF5A5A5AA1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B3783EDEB3783EFFB2773CFFB276
      3BFFB17439FFAD6D2EFFC59A6FFFCDA882FFAC6C2DFFB17439FFB2763BFFB276
      3CFFB3783EFFB3783EFFBE7F410700000000000000005A5A5A0A5A5A5AC45A5A
      5AFF7D7D7DFFDADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDCFF7F7F
      7FFF5A5A5AFF5A5A5AC75A5A5A0B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BE7F4109BE7F4105BC7E4117B77B
      3F52B3783EB4B3783EFFB17439FFB07438FFB3783EFFB3783EB2B77A3F4EBB7E
      411500000000BE7F410B000000000000000000000000000000005A5A5A0A5A5A
      5AA05A5A5AFE5A5A5AFF707070FF8C8C8CFF8C8C8CFF717171FF5A5A5AFF5A5A
      5AFE5A5A5AA45A5A5A0C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3783E09B3783EBEB3783ECFB3783E0B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A5A5A375A5A5A9F5A5A5AE25A5A5AFE5A5A5AFE5A5A5AE35A5A5AA15A5A
      5A3A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000005D0000009A0000009A00000000000000000000005D0000
      0045000000040000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000334CCC71334CCCC6334C
      CCFF334CCCC6334CCC710000000000000000AD6D2E02AD6D2E06AD6D2E06AD6D
      2E06AD6D2E06AD6D2E06AB6D2E06AA6D2F0200000000334CCC71334CCCC6334C
      CCFF334CCCC6334CCC7100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AD6D2EFFAD6D
      2EFFAD6D2EFF00000000000000000000000000000000000000000000002A0000
      0033707070037777776A858585C2A4A4A4CACFCFCFA1B9B9B9802F2F2FA50000
      009A000000390000000000000000000000006E6E6EB65C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CCA5C5C5C03334CCCAA334CCCFF334CCCFF334C
      CCFF334CCCFF334CCCFF334CCCAA00000000AD6D2EE3AB6D2EFFA96D30FFAA6D
      2FFFAA6D2FFFA86D31FFA36D36CA906D4803334CCCAA334CCCFF334CCCFF8392
      E0FF334CCCFF334CCCFF334CCCAA00000000666666B6535353FF535353FF5353
      53FF535353FF535353FF535353FF535353FF535353FF535353CA5353530DAD6D
      2EFFAD6D2EFFAD6D2EFF0000000000000000000000000000002D000000972323
      239DD4D4D4B7DFDFDFDBE0E0E0DBE0E0E0DBE0E0E0DBE0E0E0DBDFDFDFDBA9A9
      A9C28B8B8B160000000000000001000000005C5C5CFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF33334CCC71334CCCFFFFFFFFFF99A6E6FF334C
      CCFF99A6E6FFFFFFFFFF334CCCFF334CCC71AD6D2EEC7D6D5BFF727272FF7070
      70FF707070FF757575FF80808033334CCC71334CCCFF334CCCFF8392E0FFFFFF
      FFFF8392E0FF334CCCFF334CCCFF334CCC71535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0D000000000000000000000000000000005353
      5306AD6D2EFFAD6D2EFFAD6D2EFF00000000000000000606061E2B2B2B93D4D4
      D4D7E0E0E0DBE1E1E1DBE2E2E2DBE2E2E2DBE2E2E2DBE2E2E2DBE1E1E1DBE0E0
      E0DBDBDBDBBF4949494300000077000000035C5C5CFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0D334CCCC6334CCCFF99A6E6FFFFFFFFFF99A6
      E6FFFFFFFFFF99A6E6FF334CCCFF334CCCC6AD6D2EEC6F6D69FFF8F8F8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0D334CCCC6334CCCFF334CCCFF334CCCFF334C
      CCFF334CCCFF334CCCFF334CCCFF334CCCC6535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000AD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D
      2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EF9000000008F8F8F08D8D8D8BFE0E0
      E0DBE2E2E2DBE3E3E3DBE3E3E3DBE5E5E5DBE5E5E5DBE3E3E3DBE3E3E3DBE2E2
      E2DBE0E0E0DB9F9F9FC80000009A000000405C5C5CFFFDFDFDFFFFFFFFFFBE90
      62FFBE9062FFBE9062FF00000000334CCCFF334CCCFF334CCCFF99A6E6FFFFFF
      FFFF99A6E6FF334CCCFF334CCCFF334CCCFFAD6D2EEC6F6D69FFF8F8F8FF9898
      98FF989898FF989898FF00000000334CCCFF334CCCFF334CCCFF8392E0FFFFFF
      FFFF8392E0FF334CCCFF334CCCFF334CCCFF535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000AD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D
      2EFFAD6D2EFFAD6D2EFFAD6D2EFFAD6D2EFF0000005C96969670DFDFDFDBE1E1
      E1DBE3E3E3DBE5E5E5DBE6E6E6DBE6E6E6DBE6E6E6DBE6E6E6DBE5E5E5DBE3E3
      E3DBE1E1E1DBDFDFDFDB3838388E000000355C5C5CFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0D334CCCC6334CCCFF99A6E6FFFFFFFFFF99A6
      E6FFFFFFFFFF99A6E6FF334CCCFF334CCCC6AD6D2EEC6F6D69FFF8F8F8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0D334CCCC6334CCCFF334CCCFF8392E0FFFFFF
      FFFF8392E0FF334CCCFF334CCCFF334CCCC6535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF0D000000000000000000000000000000005353
      5306AD6D2EFFAD6D2EFFAD6D2EFFAD6D2E040000009AA2A2A2C9E0E0E0DBE2E2
      E2DBE5E5E5DBE6E6E6DBE7E7E7DBE7E7E7DBE7E7E7DBE7E7E7DBE6E6E6DBE3E3
      E3DBE2E2E2DBE0E0E0DBCACACA77000000005C5C5CFFFDFDFDFFFFFFFFFFBE90
      62FFBE9062FFBE9062FFBE906233334CCC71334CCCFFFFFFFFFF99A6E6FF334C
      CCFF99A6E6FFFFFFFFFF334CCCFF334CCC71AD6D2EEC6F6D69FFF8F8F8FF9898
      98FF989898FF989898FFE2E2E233334CCC71334CCCFF334CCCFF8392E0FFFFFF
      FFFF8392E0FF334CCCFF334CCCFF334CCC71535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAFEFEFE0DAD6D
      2EFEAD6D2EFFAD6D2EFFAD6D2E05000000000000007AC9C9C9D2E1E1E1DBE3E3
      E3DBE5E5E5DBE6E6E6DBE7E7E7DBE8E8E8DBE8E8E8DBE7E7E7DBE6E6E6DBE5E5
      E5DBE2E2E2DBE0E0E0DBC4C4C49F353535145C5C5CFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFCAFFFFFF03334CCCAA334CCCFF334CCCFF334C
      CCFF334CCCFF334CCCFF334CCCAA00000000AD6D2EEC6F6D69FFF8F8F8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFCAC9C9C903334CCCAA334CCCFF334CCCFF8392
      E0FF334CCCFF334CCCFF334CCCAA00000000535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAFFFFFF0DAD6D2EFFAD6D
      2EFFAD6D2EFFAD6D2E05000000000000000000000000DEDEDEC5E1E1E1DBE3E3
      E3DBE5E5E5DBE6E6E6DBE7E7E7DBE8E8E8DBE8E8E8DBE7E7E7DBE6E6E6DBE5E5
      E5DBE2E2E2DBE0E0E0DB9C9C9CC80000009A5C5C5CFFFDFDFDFFFFFFFFFFBE90
      62FFBE9062FFBE9062FFBE9062FFBE906271BE906203334CCC71334CCCC6334C
      CCFF334CCCC6334CCC710000000000000000AD6D2EEC6F6D69FFF8F8F8FF9898
      98FF989898FF989898FFE2E2E2FFC9C9C971E2E2E203334CCC71334CCCC6334C
      CCFF334CCCC6334CCC71AD6D2E0200000000535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0600000000000000000000
      00000000000000000000000000000000000000000000D9D9D9A6E0E0E0DBE2E2
      E2DBE5E5E5DBE6E6E6DBE7E7E7DBE7E7E7DBE7E7E7DBE7E7E7DBE6E6E6DBE3E3
      E3DBE2E2E2DBE0E0E0DB7A7A7ABF000000995C5C5CFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAFFFFFF33FFFFFF0D0000
      00005C5C5C0D000000000000000000000000AD6D2EEC6F6D69FFF8F8F8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9FFFFFFFFCAFFFFFF33FFFFFF0D0000
      0000F8F8F80D6F6D6933AD6D2EBA00000000535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFF5353
      53FF000000000000000000000000000000000707073F727272A3DFDFDFDBE2E2
      E2DBE3E3E3DBE5E5E5DBE6E6E6DBE6E6E6DBE6E6E6DBE6E6E6DBE5E5E5DBE3E3
      E3DBE1E1E1DBDFDFDFDB92929248000000335C5C5CFFFDFDFDFFFFFFFFFFBE90
      62FFBE9062FFBE9062FFFFFFFFFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFDFD
      FDFF5C5C5CFF000000000000000000000000AD6D2EEC6F6D69FFF8F8F8FF9898
      98FF989898FF989898FFE2E2E2FFC9C9C9FFE2E2E2FF989898FF989898FF9898
      98FFF8F8F8FF6F6D69FFAD6D2EEC00000000535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF5353
      53FF00000000000000000000000000000000000000650000009DCBCBCBD5E0E0
      E0DBE2E2E2DBE3E3E3DBE5E5E5DBE5E5E5DBE5E5E5DBE5E5E5DBE3E3E3DBE2E2
      E2DBE0E0E0DBD2D2D2AC00000000000000005C5C5CFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF969696FF5C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF000000000000000000000000AD6D2EEC6F6D69FFF8F8F8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF8F8F8FF6F6D69FFAD6D2EEC00000000535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF5353
      53FF00000000000000000000000000000000000000160000008173737357DFDF
      DFD6E0E0E0DBE2E2E2DBE2E2E2DBE3E3E3DBE3E3E3DBE2E2E2DBE1E1E1DBE0E0
      E0DBCDCDCDD51818189B05050532000000005C5C5CFFFDFDFDFFFFFFFFFFBE90
      62FFBE9062FFBE9062FFFFFFFFFFFFFFFFFF5C5C5CFFFEFEFEFFFFFFFFFFBCBC
      BCFF6E6E6ED4000000000000000000000000AD6D2EF86F6D69FFF8F8F8FF9898
      98FF989898FF989898FFE2E2E2FFC9C9C9FFE2E2E2FF989898FF989898FF9898
      98FFF8F8F8FF6F6D69FFAD6D2EF800000000535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF5353
      53FF00000000000000000000000000000000000000000000000100000000A2A2
      A241C9C9C9D4DFDFDFDBE0E0E0DBE1E1E1DBE1E1E1DBE0E0E0DBDFDFDFDBD7D7
      D7B4202020950000009400000021000000005C5C5CFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5C5CFFFEFEFEFFBDBDBDFF6E6E
      6EDB6F6F6F1C000000000000000000000000A66D33A46E6D6AFEF8F8F8FFFFFF
      FFFFFFFFFFFFFEFEFEFFEEEEEEFF9F9F9FFFEEEEEEFFFEFEFEFFFFFFFFFFFFFF
      FFFFF8F8F8FF6E6D6AFEA66D33A400000000535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF5353
      53FF000000000000000000000000000000000000000000000000000000000000
      005E0000009D5D5D5DA9D2D2D29DD9D9D9BBBABABACF949494C6939393609C9C
      9C030F0F0F260000002300000000000000005C5C5CFFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5C5CFFBDBDBDFF6E6E6EDC6F6F
      6F1C00000000000000000000000000000000000000006E6D6BAD6E6E6EFE7070
      70FF707070FF6D6D6DFD6D6D6DEA6D6D6DB96D6D6DEA6D6D6DFD707070FF7070
      70FF6E6E6EFE6E6D6BAD0000000000000000535353FFFDFDFDFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFF5353
      53FF000000000000000000000000000000000000000000000000000000000000
      0014000000610000005200000000000000000000008F0000009A0000004B0000
      0000000000000000000000000000000000006E6E6EB65C5C5CFF5C5C5CFF5C5C
      5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF5C5C5CFF6E6E6ED66F6F6F1D0000
      00000000000000000000000000000000000000000000000000006D6D6D036D6D
      6D076D6D6D066D6D6D0100000000000000000000000000000000000000000000
      000000000000000000000000000000000000666666B6535353FF535353FF5353
      53FF535353FF535353FF535353FF535353FF535353FF535353FF535353FF6666
      66B600000000000000000000000000000000000000006B6B6BB6595959FF5959
      59FF595959FF595959FF595959FF595959FF595959FF595959FF595959FF5959
      59FF595959FF6B6B6BBB00000000000000000000000000000000000000000000
      0000000000006B6B6B056B6B6BFF6B6B6BFF6B6B6B4E00000000000000000000
      0000000000006B6B6B4E6B6B6BFF6B6B6BFF00000000000000005CB3EBF95BB2
      E9FF5BB2E9FF5BB2E9FF5AB1E9FF58B0E7FF58B0E7FF5BB2E9FF5BB2E9FF5BB2
      E9FF5BB2E9FF5BB2E9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000595959FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF595959FF00000000000000000000000000000000000000000000
      0000000000006B6B6B056B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B
      6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF00000000000000005CB3EBFE5BB2
      E9FF5BB2E9FF5AB1E9FF5AB1E7FF75BEECFF74BDECFF58B0E7FF5BB2E9FF5BB2
      E9FF5BB2E9FF5BB2E9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000595959FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF595959FF00000000000000000000000000000000000000000000
      000000000000000000006B6B6BFF6B6B6BFF6B6B6B4E000000006B6B6BFF6B6B
      6BFF000000006B6B6B4E6B6B6BFF6B6B6BFF00000000000000005CB3EBFE5BB2
      E9FF5BB2E9FF5AB1E7FF5AB1E7FFFFFFFFFFFFFFFFFF50ADE6FF5AB1E9FF5BB2
      E9FF5BB2E9FF5BB2E9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000595959FFFDFDFDFFFFFF
      FFFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFFFFF
      FFFFFFFFFFFF595959FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6BFF6B6B
      6BFF0000000000000000000000000000000000000000000000005CB3EBFE5BB2
      E9FF5BB2E9FF5BB2E9FF4EABE6FFF8FCFDFFEAF4FCFF4FADE6FF5BB2E9FF5BB2
      E9FF5BB2E9FF5BB2E9FF00000000000000005696AE0004739D0003739E000373
      9E0003739E0003739E0003739E0003739E0003739E0003739E0003739E000373
      9E000F789F0000000000000000000000000000000000595959FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF595959FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFDFF6B6B
      6BFF0000000000000000000000000000000000000000000000005CB3EBFE5BB2
      E9FF5BB2E9FF5BB2E9FF4FADE6FFD2E9F8FFC4E3F6FF50ADE6FF5BB2E9FF5BB2
      E9FF5BB2E9FF5BB2E9FF00000000000000000E789F00CEEDF900DAF4FF00DAF4
      FF00DAF4FF00DAF4FF00DAF4FF00DAF4FF00DAF4FF00DAF4FF00DAF4FF00DAF4
      FF00A2D3E600317F9D00000000000000000000000000595959FFFDFDFDFFFFFF
      FFFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFFFFF
      FFFFFEFEFEFF595959FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6BFFFFFF
      FFFF000000006B6B6B02000000000000000000000000000000005CB3EBFE5BB2
      E9FF5BB2E9FF59B1E7FF69B8E9FFFFFFFFFFFFFFFEFF5DB2E7FF5AB1E7FF5BB2
      E9FF5BB2E9FF5BB2E9FF0000000000000000247E9E00AFDCED009AE1FB0083DA
      FB0083DAFB0083DAFB0083DAFB0083DAFB0083DAFB0083DAFB0083DAFB008EDD
      FB00CCEDFA00137EA700000000000000000000000000595959FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFF595959FF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006B6B6BFF6B6B
      6BFF0000000000000000000000000000000000000000000000005CB3EBFE5BB2
      E9FF5BB2E9FF58B0E7FF73BDEBFFFFFFFFFFFFFFFFFF66B6E9FF59B1E7FF5BB2
      E9FF5BB2E9FF5BB2E9FF00000000000000003C829A008DC9E00094DEFA0063CF
      F80063CFF80063CFF80063CFF80063CFF80063CFF80063CFF80063CFF80064CF
      F800C9EFFD002D91B700000000000000000000000000595959FFFDFDFDFFFFFF
      FFFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFFFFF
      FFFFFEFEFEFF595959FF00000000000000006B6B6B4E6B6B6BF36B6B6BFF6B6B
      6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BEB8282824D000000000000
      00008181810400000000000000000000000000000000000000005CB3EBFF5BB2
      E9FF5BB2E9FF5BB2E9FF55AFE7FF81C3EDFF79BFECFF56B0E7FF5BB2E9FF5BB2
      E9FF5BB2E9FF5BB2E9FF0000000000000000518393006FB9D50099E0FA0050C9
      F70050C9F70050C9F70050C9F70050C9F70050C9F70050C9F70050C9F70050C9
      F700AEE7FC0053A9CA008B9FA6000000000000000000595959FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEFF595959FF00000000000000006A6B6BD06B6B6BFF6B6B6BFF6B6B
      6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B
      6BFF6B6B6BF6B7B7B712000000000000000000000000000000005CB3EBFF5BB2
      E9FF5BB2E9FF5BB2E9FF5BB2E9FF57B0E7FF58B0E7FF5BB2E9FF5BB2E9FF5BB2
      E9FF5BB2E9FC5BB2E9FF000000000000000066848B0056ACCC00BFEDFF007BDB
      FF007BDBFF007BDBFF007BDBFF007BDBFF007BDBFF007BDBFF007BDBFF007BDB
      FF00ADE8FF007CC1DB006991A0000000000000000000595959FFFDFDFDFFFFFF
      FFFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFBC8D5EFFFFFF
      FFFFFEFEFEFF595959FF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6BD06B6B6BFF6B6B
      6BFF6B6B6BE7B8B8B80800000000000000000000000000000000000000005BB2
      E9FF5BB2E9BF0000000000000000000000000000000000000000000000005BB2
      E9C25BB2E9FF000000000000000000000000848D8B003A9EC300D1F2FE0088DE
      FD0088DEFD0088DEFD0088DEFD0088DEFD0088DEFD0088DEFD0088DEFD0088DE
      FD00A5E6FE00A1D6EA004A8CA4000000000000000000595959FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFEFE
      FEFFFDFDFDFF595959FF00000000000000000000000058B0E8FF58B0E8FF58B0
      E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FB0000000000000000000000000000
      000000000000B8B8B80A00000000000000000000000000000000000000005BB2
      E9FF5CB5EDC40000000000000000000000000000000000000000000000005DB6
      EFC65BB2E9FF000000000000000000000000B2A69B0046A2C400B4DFF000DBF4
      FE00DBF4FE00DBF4FE00DBF4FE00DBF4FE00DBF4FE00DBF4FE00DBF4FE00DBF4
      FE00DBF4FE00DBF4FD002996BE000000000000000000595959FFFDFDFDFFFFFF
      FFFFBC8D5EFFBC8D5EFFBC8D5EFFFFFFFFFFFFFFFFFF949494FF595959FF5959
      59FF595959FF595959FF00000000000000000000000058B0E8FF58B0E8FF58B0
      E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FB00000000B7B7B7086B6B6BFF6B6B
      6BFF000000000000000000000000000000000000000000000000000000005BB2
      E9FF5BB2E9CB0000000000000000000000000000000000000000000000005BB3
      EACD5BB2E9FF000000000000000000000000B4A99D00A6CFDD002B95BC002091
      BB002091BB002091BB002091BB002091BB002091BB002091BB002091BB002091
      BB002091BB002091BB005AA9C5000000000000000000595959FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF595959FFFEFEFEFFFFFF
      FFFFBABABAFF6B6B6BD400000000000000000000000058B0E8FF58B0E8FF58B0
      E8FF58B0E8FF58B0E8FF58B0E8FF58B0E8FB0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005BB2
      E9EF5BB2E9FF0000000000000000000000000000000000000000000000005BB2
      E9FF5BB2E9F1000000000000000000000000B5A99D00FEFAF600FCF2E800FAF1
      E700FAF0E700FAF0E600F9EBDE00F9EADB00F9EADB00F9EADB00F9EADB00F9F3
      EE00A396890000000000000000000000000000000000595959FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF595959FFFEFEFEFFBBBB
      BBFF6B6B6BDB6C6C6C1C00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006B6B6BD36B6B6BFF6B6B
      6BFF6B6B6BE90000000000000000000000000000000000000000000000005CB5
      ED685BB2E9FF5BB2E9E25DB6EE0700000000000000005EB7F0045BB2E9E05BB2
      E9FF5BB3EA6B000000000000000000000000B5A99D00FFEAD900FFD6B300FFDA
      B500FFE2B900FFEAC800FFFAF500FFF8F200FFF8F200FFF8F200FFF8F200FCF8
      F400A89B8E0000000000000000000000000000000000595959FFFDFDFDFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF595959FFBBBBBBFF6B6B
      6BDC6C6C6C1C0000000000000000000000006A6B6BD06B6B6BFF6B6B6BFF6B6B
      6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B
      6BFF6B6B6BF56B6B6B0200000000000000000000000000000000000000000000
      00005BB2E9B05BB2E9FF5BB2E9FF5BB2E9CB5BB3EAC95BB2E9FF5BB2E9FF5BB2
      E9B600000000000000000000000000000000AEA29500FBEFE500FFE9D600FFEB
      D700FFEFD900F6F0E600B0A49700A79A8C00A79A8C00A79A8C00A79A8C00A79B
      8D00C0B8B000000000000000000000000000000000006B6B6BB6595959FF5959
      59FF595959FF595959FF595959FF595959FF595959FF595959FF6B6B6BD66C6C
      6C1D000000000000000000000000000000006B6B6B4F6B6B6BF36B6B6BFF6B6B
      6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BFF6B6B6BED6B6B6B48000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005BB2E9525BB2E9CE5BB2E9FF5BB2E9FF5BB2E9D25BB2E9580000
      000000000000000000000000000000000000C7C0B800A99C8F00A79A8C00A79A
      8C00A79A8C00A99D9000CCC6C000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00FC00F00F00000000F800C00300000000
      F201800100000000E001800100000000C1030000000000008003000000000000
      8087000000000000000300000000000000430000000000000003000000000000
      0003000000000000000100000000000000018001000000000001800100000000
      000BC00300000000F87FF00F00000000F8C7FF830000FFC7C007000100000003
      80050000000001E18000000000000200800002000000020000000000000001E0
      00010000000000010000000100000003800000030000007F800000170000000F
      000000070000000F000300070000000F000100070000000FA00100070000000F
      E003000F0000000FE31F001F0000000F8003F878C003FFFF8003F800C003FFFF
      8003FC48C003FFFF8003FFCFC00300078003FFCFC00300038003FFCBC0030003
      8003FFCFC003000380030037C003000180030003C00300018003FF83E7E70001
      800380FBE7E700018003808FE7E70001800380FFE7E700078003FF87E1870007
      80070003F00F0007800F003FF81F01FF00000000000000000000000000000000
      000000000000}
  end
end
