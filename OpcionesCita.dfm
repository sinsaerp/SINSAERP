object FOpcionesCita: TFOpcionesCita
  Left = 0
  Top = 0
  ClientHeight = 200
  ClientWidth = 353
  Caption = 'Opciones de Cita'
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel1: TUniPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 200
    Hint = ''
    Align = alClient
    TabOrder = 0
    Caption = ''
    ExplicitHeight = 209
    object UniLabel1: TUniLabel
      Left = 136
      Top = 40
      Width = 50
      Height = 18
      Hint = ''
      Caption = 'Estado'
      ParentFont = False
      Font.Height = -15
      Font.Style = [fsBold]
      TabOrder = 1
    end
    object ubNoAsistio: TUniSpeedButton
      Left = 32
      Top = 72
      Width = 137
      Height = 42
      Hint = ''
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000760000007600000000000000000000000000FF0000FF
        0000FF000000000000000000000000000000161F169A9AD695AEA5E6A1AAA5E6
        A1AA6E996DBC1F2535D7212144DD1D1E3ED3101023A20000000D000000000000
        0000000000000000000000000000000000001B251BAB9BD796FFA5E5A0FF7DAD
        7DFA2B2D56ED6C6DE2FF7577F7FF6E6FE7FF5E5FC5FB131327C9000000050000
        0000000000000000000000000000000000001B251BAB9BD796FFA5E5A0FF242A
        3AEB6567D4FF3B3B41ED2D2D36EE505055EB373855EB5153ABF60C0C1B680000
        0000000000000000000000000000000000001B2419A381B37DFF85B881FF2D30
        58EA6C6DE3FF434348ECFAFAFAFFCFCFCFFD3B3B5FEC7678F9FF121227B60000
        000000000000000000000000000000000000000000211A1E24EB546074E93033
        56E96466D3FF616164EDD9D9D9FFE1E1E1FF38384DEA7274F0FF121225AB0000
        000000000000000000000000000000000000080C103E5A667DECAFC6F5FF3339
        4CE96567D6FF31313FEC34344FED34343FEB46477AED6E71E9E00E0E21360000
        0000000000000000000000000000000000061F242DD4A9BFECFF8EA1C7FF8294
        B7FF272A40EB6567D3FE797BFFFF7779FAFF7778F9E42C2C5B6D000000000000
        0000000000000000000000000000171B217B8090B2F9AFC6F5FF556077FF97AB
        D3FFA3B9E5FF515A72ED1A1D28ED111123C21B1B313900000000000000000000
        00000000000000000000000000001E2129BAA5BAE7FF464F62FF525D73FFAFC6
        F5FFAFC6F5FFAFC6F5FF464F62E5000000160000000000000000000000000000
        00000000000000000000000000001E242CC19BAFD9FF556077FFAFC6F5FFAFC6
        F5FFAFC6F5FFAFC6F5FF454F61E4000000160000000000000000000000000000
        00000000000000000000000000001B1E25B46E7D9AFD525D73F699ADD6FFA1B6
        E2FF96AAD2FF7787A7FF454E60E4000000150000000000000000000000000000
        0000000000000000000000000000000000190A0A0C804D556AE6424B5CFF8597
        BAFF6B7996FF424B5CFF444D60E4000000150000000000000000000000000000
        0000000000000000000000000000000000000000001D4D556AE6424B5CFF8597
        BAFF6B7996FF3A4251FC373E4DE5000000100000000000000000000000000000
        0000000000000000000000000000000000000000001A464F62E53C4454FD8597
        BAFF6B7996FF1F222CDE171A216D000000000000000000000000000000000000
        00000000000000000000000000000000000000000001191B22980F1216E88597
        BAFF4E596EF721252FCE00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000171B21832023
        2DDF0A0C0E7F050B0B3000000000000000000000000000000000000000000000
        000000000000}
      Caption = 'No Asistio'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 2
      OnClick = ubNoAsistioClick
    end
    object UniSpeedButton2: TUniSpeedButton
      Left = 184
      Top = 72
      Width = 137
      Height = 42
      Hint = ''
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        200003000000000400006F0000006F00000000000000000000000000FF0000FF
        0000FF0000000000000600000062000000050000006F0000006A0000000A0000
        005C0000000C0000000C0000005C0000000A0000006A0000006F000000060000
        0062000000060000000800000070FFFFFF000000007900000079FFFFFF000000
        0068000000100000001000000068FFFFFF000000007900000079FFFFFF000000
        007000000008000000080503029716120B460505039D0505039D161207460504
        029100000010000000100504029116120B460505039D0505039D120F07450503
        02970000000800000008372F1BF0736238F83D331DFD3C331DFD715F34F73B2E
        11EF00000010000000103C331DF1736238F93D341DFD3C331DFD715E33F6362A
        0FEE00000008000000086C551FE9524422FF363636FF2C2C2CFF463715FF674E
        15E70000001000000010755C22EB5E5030FF686868FF5F5F5FFF554622FF5E48
        13E50000000800000008826626E5554939FF32386AFF252B5EFF44382EFF7C5D
        19E300000010000000108D6F29E856563DFF416573FE3C596DFF524C32FF7257
        17E00000000800000006795F23E362554EFF5367FFFF5561E1FF504445FF7156
        16E30000000C0000000C836726E6626B51FF63CBFFFF6DB7E4FF5C5B42FF6A51
        16E000000006FFFFFF00392D0FA6312D31ED5367FFFF4358F8FA292530EC3125
        0AABFFFFFF00FFFFFF00392D10AB374137ED63CBFFFF5EB7F9FC2E322BEC3025
        09A5FFFFFF00FFFFFF00FFFFFF001217389C4454D0FC2B3ED1FD080E379FFFFF
        FF00FFFFFF00FFFFFF00FFFFFF00162F3AA252A7D3FD488FCFFD11213499FFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000B08081560030515600000000CFFFF
        FF00FFFFFF00FFFFFF00FFFFFF000000000D081015610810165D0000000BFFFF
        FF00FFFFFF00FFFFFF00FFFFFF001D1D2847565C81E1485088E617172A4FFFFF
        FF00FFFFFF00FFFFFF00FFFFFF000D0D16501F2547E3181B34E507070F46FFFF
        FF00FFFFFF00FFFFFF00FFFFFF002C2F429EA8B3FDFF8E9CFFFF202541A0FFFF
        FF000000000E0000000EFFFFFF00111326A13D4585FF32386CFF0C0C1798FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0011111C2D414663CB373D6AD10F0F22344242
        427B888888DC908D86ED43413B7A0B0B162E121425DA0C0E1BDD08080F22FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000100000001000000077878
        78D5F1F1F1FFA8A7A5FF726E63D6000000040000001400000012FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000026B6B
        6BCBC3C3C3FFB2B1ADFF6A665CCBFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003A3A
        3A54656565C474716AD83A373153FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00}
      Caption = 'En Espera'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWhite
      TabOrder = 3
      OnClick = UniSpeedButton2Click
    end
    object ubDilatando: TUniSpeedButton
      Left = 32
      Top = 136
      Width = 137
      Height = 41
      Hint = ''
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000760000007600000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000130D0D282B241D722A211B7A3A2E27842A24
        204F0000000400000002241D174F2A211B7A2A211B7A342A247A131313290000
        00000000000000000000352B237C886D58EACFA685FF605044FFA38D7DFF7365
        5AFD2D2925DB463A2EC7C69E80FA967963FF8A7463FFA58C79FC8C7461F04B3E
        338C0000000099666605D8AD8ADDFFCCA4FF806A58FF958478FF9D9892FFCCC7
        BFFF665E56FFEEBE99FFE8BA95FF857262FF6B645DFFADA69EFF6B635CFF8870
        5EF20D0D072643372B9FFFCCA4FFEABB96FF8D7969FF817A74FFF1EDE9FFE8E3
        DCFFE4C1A4FFFFCCA4FF8F7560FF958477FFC5BFB8FFE1D9D0FFCAC1B8FF8E7C
        6EFF54463AB3634F40C7FFCCA4FFAE8C71FF928072FFC0BDB9FFF1EDE8FFB4AF
        A7FFC59E7FFFFFCCA4FF887261FF80756BFFEBE6DCFFEBE6DCFFDED5CBFF7A71
        69FF715D4FD6715A48D7FFCCA4FF8F7560FF8E7E71FFE3DFDBFFF0EDE8FF968F
        86FFE5B793FFFFCCA4FF887362FF827971FFEBE6DCFFEBE6DCFFE4DDD2FF7972
        6BFF756252DE725B4AD7FFCCA4FF907561FF8C7C6FFFE4E0DCFFF1ECE8FF958E
        86FFE7B995FFFFCCA4FF877261FF827970FFEBE6DCFFEBE6DCFFE6E0D6FF7972
        6BFF746152DC665142C6FFCCA4FFAF8D72FF9F8B7CFFD7D4CFFFF1EDE9FFB1AC
        A6FFC7A081FFFFCCA4FF88725FFF80756CFFEBE6DCFFEBE6DCFFE8E1D7FF7970
        69FF6D5B4CD043352AA4F7C69FFFEABB96FF947F6EFFB4AAA2FFF1EDE9FFE1DC
        D5FF877260FFFFCCA4FF8F7560FF978578FFCAC6BCFFEBE6DCFFE7DED4FFB8A2
        91FF55473CB4140D0D2792745DE9FFCCA4FF816A59FF968477FF9E9B96FFCFCC
        C6FF6A6259FFEFBF9AFFE9BA96FF847161FF716960FFB8B4ADFF81776FFF8B77
        68EA201A1A28000000003B2F277D997A62EBD5AA89FF605044FFA38D7DFF7164
        5AFD2E2A25DC4C3E31C9C49D7DFC977A63FF897666FFA48E7EFF877668E83A32
        2A7F0000000000000000000000001111112C2C231C752A211B7A3A3027842522
        1B4B00000004000000042A201A4F2A211B7A2D231D7C362E287A000000260000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      Caption = 'Dilatando'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 4
      OnClick = ubDilatandoClick
    end
    object UniLabel2: TUniLabel
      Left = 32
      Top = 16
      Width = 54
      Height = 18
      Hint = ''
      Caption = 'N'#176' Cita'
      ParentFont = False
      Font.Height = -15
      Font.Style = [fsBold]
      TabOrder = 5
    end
    object lblcita: TUniLabel
      Left = 128
      Top = 15
      Width = 10
      Height = 19
      Hint = ''
      Caption = '0'
      ParentFont = False
      Font.Color = clMaroon
      Font.Height = -16
      Font.Style = [fsBold]
      TabOrder = 6
    end
    object UniSpeedButton1: TUniSpeedButton
      Left = 184
      Top = 138
      Width = 137
      Height = 39
      Hint = ''
      Glyph.Data = {
        42040000424D4204000000000000420000002800000010000000100000000100
        20000300000000040000760000007600000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000002FA4FC4C2FA6FCBD2FA5FCF42DA3FCF62B9FFCDE2A9FFB800000
        0000000000000000000000000000000000006CBFFB4060BFFF18000000000000
        00002FA5FB8330A7FCFF49C3FDFF58D4FDFF4ED4FDFF3FC9FDFF2BA1FCFF2A9D
        FBC300000000000000006EBFFB486CC2FD7D66BEFCFB3EACFCF349B6FF0E30A7
        FC4B30A7FCFF59D4FDFF4BC6FDFF4AC4FDFF4AC4FDFF47C5FDFF3BD3FDFF2A9D
        FBFF2A9FFB80000000006CC0FD766DC1FCFF45B0FCFF43AFFBCB000000002FA6
        FCBD49C3FDFF54D0FDFF5FDBFEFF55D1FDFF55D1FDFF5FDBFEFF43CBFDFF3CC9
        FDFF299BFBEE000000004FB4FC9843AFFCFF39AAFBFF4BB1FF41000000002FA6
        FCF159D4FDFF57D3FDFF65E2FEFF51CBFDFF43BDFDFF65E2FEFF50D0FDFF39D3
        FDFF279AFBFE0000000060BFFF084DB2FF214BAEFF2C40BFFF04000000002FA6
        FCF259D4FDFF57D2FDFF65E2FEFF44BEFDFF50CBFDFF65E2FEFF50D0FDFF39D3
        FDFF279AFBFE0000000000000000D691564AD69155BCD58F51F1D38945F4559E
        CDF649C3FDFF55CFFDFF5FDBFEFF56D1FDFF55D1FDFF5FDBFEFF43CAFDFF3CC9
        FDFF299BFBEE00000000D6915584D79459FFE2BFA3FFEADCD3FFE9DED7FFADC0
        D0FF30A7FCFF59D4FDFF4BC5FDFF4AC4FDFF4AC4FDFF46C4FDFF3AD3FDFF2A9E
        FBFF2B9EFD81D792564DD7945AFFEBDFD5FFECEDF2FFEFF1F5FFEFF1F5FFEAEA
        EFFF87C2EEFF30A7FCFF49C3FDFF58D4FDFF4ED4FDFF3FC9FDFF2BA0FCFF2A9D
        FBC300000000D69255BFE3C0A3FFECEDF2FFF1F3F8FFF1F3F8FFBAEDFBFFEAF2
        F8FFE7E6EAFFADBFCEFF569CC7FA2FA6FCF32DA3FCF52B9FFCDE2A9FFB800000
        000000000000D69155F3EBDDD4FFEFF1F5FFF1F3F8FFB9DEF9FF76D7FCFFF0F3
        F8FFEDEDF2FFE6E0E0FFCC7718FE00000000FF808002FFBC6417FFAE5D16FFBF
        600800000000D69155F3EBDED5FFEFF0F5FFF1F3F8FFC1D2E3FFBFD1E1FFF1F3
        F8FFEDECF2FFE6E0E0FFCC7618FE00000000FFB66623FCB964FDFCB454FFFBAE
        43AE00000000D69155C0E3C1A5FFECEDF2FFF1F3F8FFEADCD2FFEADBD1FFF1F3
        F8FFE7E5EAFFE3CDBCFFCF7B22ED00000000FBBA648CFCB55AFFFBB14DFFFCAD
        44B500000000D591544FD7945AFFECDFD7FFECEDF2FFEFF0F3FFEFF0F3FFEAEA
        EFFFE7E0E1FFCE802BFFCF81307FFFAA5506FDB455DFFBA833FFFBAD42BDFBAD
        467C0000000000000000D6905488D7945AFFE3C1A5FFEBDDD4FFE9DED9FFE4CD
        BFFFD1873BFFCF7E28C40000000000000000FFB0492AFAAD4770000000000000
        0000000000000000000000000000D591544FD69155C0D59051F5D48A45F7D081
        30DECE802F830000000000000000000000000000000000000000000000000000
        000000000000}
      Caption = 'Cambiar Turno'
      ParentFont = False
      Font.Height = -13
      Font.Style = [fsBold]
      ParentColor = False
      Color = clWindow
      TabOrder = 7
      OnClick = UniSpeedButton1Click
    end
  end
end
