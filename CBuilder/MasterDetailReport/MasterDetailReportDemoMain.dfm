inherited frmMasterDetail: TfrmMasterDetail
  Caption = 'DX SpreadSheet - Master-Detail Reports Demo'
  ClientHeight = 531
  ClientWidth = 1086
  ExplicitWidth = 1102
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited sbMain: TStatusBar
    Top = 512
    Width = 1086
    ExplicitTop = 412
    ExplicitWidth = 864
  end
  inherited ReportDesigner: TdxSpreadSheetReportDesigner
    Width = 748
    Height = 512
    DataBinding.DataSource = dsMaster
    DataBinding.Options.DisplayName = 'Suppliers'
    Options.ReportMode = rmMultipleSheets
    OnAfterBuild = ReportDesignerAfterBuild
    ExplicitWidth = 526
    ExplicitHeight = 412
    Data = {
      B002000044585353763242460C00000042465320000000000000000001000101
      010100000000000001004246532000000000424653200200000001000000200B
      00000007000000430061006C0069006200720069000000000000002000000020
      00000000200000000020000000002000000000200007000000470045004E0045
      00520041004C0000000000000200000000000000000101000000200B00000007
      000000430061006C006900620072006900000000000000200000002000000000
      200000000020000000002000000000200007000000470045004E004500520041
      004C000000000000020000000000000000014246532001000000424653201D00
      0000540064007800530070007200650061006400530068006500650074005200
      650070006F00720074005400610062006C006500560069006500770006000000
      53006800650065007400310001FFFFFFFFFFFFFFFF6400000002000000020000
      0002000000550000001400000002000000020000000002000000000000010000
      0000000101000042465320550000000000000042465320000000004246532014
      0000000000000042465320000000000000000000000000010000000000000000
      0000000000000000000000424653200000000002020000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000064000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000200020200020000000000000000000000000000000000020000000000
      0000000000000000000000000000000000000000000000000000000000000202
      0000000000000000424653200000000000000000}
    object ReportDesignerDetail1: TdxSpreadSheetReportDetail
      DataGroups = <>
      DataSource = dsDetailLevel0
      MasterKeyFieldName = 'SupplierID'
      DetailKeyFieldName = 'SupplierID'
      Options.DisplayName = 'Products'
      SectionID = 0
      SortedFields = <>
      object ReportDesignerDetail2: TdxSpreadSheetReportDetail
        DataGroups = <>
        DataSource = dsDetailLevel1
        MasterKeyFieldName = 'ProductID'
        DetailKeyFieldName = 'ProductID'
        Options.DisplayName = 'OrderReports'
        SectionID = 1
        SortedFields = <>
      end
    end
  end
  inherited cxSplitter1: TcxSplitter
    Left = 748
    Height = 512
    ExplicitLeft = 526
    ExplicitHeight = 412
  end
  inherited Panel1: TPanel
    Left = 756
    Height = 512
    ExplicitLeft = 534
    ExplicitHeight = 412
    inherited cxSplitter2: TcxSplitter
      Top = 234
      ExplicitTop = 134
    end
    inherited cxgFieldChooserSite: TcxGroupBox
      ExplicitHeight = 134
      Height = 234
    end
    inherited cxgFilter: TcxGroupBox
      Top = 238
      ExplicitTop = 138
      inherited cbxUseFilter: TcxCheckBox
        ExplicitWidth = 69
      end
    end
  end
  object dsMaster: TDataSource
    DataSet = mdsMaster
    Left = 112
    Top = 168
  end
  object mdsMaster: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    SortedField = 'SupplierID'
    Left = 192
    Top = 168
    object mdsMasterSupplierID: TAutoIncField
      FieldName = 'SupplierID'
    end
    object mdsMasterCompanyName: TWideStringField
      FieldName = 'CompanyName'
      Size = 40
    end
    object mdsMasterContactName: TWideStringField
      FieldName = 'ContactName'
      Size = 30
    end
    object mdsMasterContactTitle: TWideStringField
      FieldName = 'ContactTitle'
      Size = 30
    end
    object mdsMasterAddress: TWideStringField
      FieldName = 'Address'
      Size = 60
    end
    object mdsMasterCity: TWideStringField
      FieldName = 'City'
      Size = 15
    end
    object mdsMasterRegion: TWideStringField
      FieldName = 'Region'
      Size = 15
    end
    object mdsMasterPostalCode: TWideStringField
      FieldName = 'PostalCode'
      Size = 10
    end
    object mdsMasterCountry: TWideStringField
      FieldName = 'Country'
      Size = 15
    end
    object mdsMasterPhone: TWideStringField
      FieldName = 'Phone'
      Size = 24
    end
    object mdsMasterFax: TWideStringField
      FieldName = 'Fax'
      Size = 24
    end
    object mdsMasterHomePage: TWideMemoField
      FieldName = 'HomePage'
      BlobType = ftWideMemo
    end
  end
  object dsDetailLevel0: TDataSource
    DataSet = mdsDetailLevel0
    Left = 112
    Top = 219
  end
  object mdsDetailLevel0: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    SortedField = 'SupplierID'
    Left = 192
    Top = 219
    object mdsDetailLevel0ProductID: TAutoIncField
      FieldName = 'ProductID'
    end
    object mdsDetailLevel0ProductName: TWideStringField
      FieldName = 'ProductName'
      Size = 40
    end
    object mdsDetailLevel0SupplierID: TIntegerField
      FieldName = 'SupplierID'
    end
    object mdsDetailLevel0CategoryID: TIntegerField
      FieldName = 'CategoryID'
    end
    object mdsDetailLevel0QuantityPerUnit: TWideStringField
      FieldName = 'QuantityPerUnit'
    end
    object mdsDetailLevel0UnitPrice: TBCDField
      FieldName = 'UnitPrice'
    end
    object mdsDetailLevel0UnitsInStock: TSmallintField
      FieldName = 'UnitsInStock'
    end
    object mdsDetailLevel0UnitsOnOrder: TSmallintField
      FieldName = 'UnitsOnOrder'
    end
    object mdsDetailLevel0ReorderLevel: TSmallintField
      FieldName = 'ReorderLevel'
    end
    object mdsDetailLevel0Discontinued: TBooleanField
      FieldName = 'Discontinued'
    end
    object mdsDetailLevel0EAN13: TWideStringField
      FieldName = 'EAN13'
      Size = 12
    end
  end
  object dsDetailLevel1: TDataSource
    DataSet = mdsDetailLevel1
    Left = 112
    Top = 275
  end
  object mdsDetailLevel1: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    SortedField = 'ProductID'
    OnCalcFields = mdsDetailLevel1CalcFields
    Left = 192
    Top = 275
    object mdsDetailLevel1OrderID: TIntegerField
      FieldName = 'OrderID'
    end
    object mdsDetailLevel1ProductID: TIntegerField
      FieldName = 'ProductID'
    end
    object mdsDetailLevel1UnitPrice: TBCDField
      FieldName = 'UnitPrice'
    end
    object mdsDetailLevel1Quantity: TSmallintField
      FieldName = 'Quantity'
    end
    object mdsDetailLevel1Discount: TFloatField
      FieldName = 'Discount'
    end
    object mdsDetailLevel1SubTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'SubTotal'
      Calculated = True
    end
  end
end
