@AbapCatalog.sqlViewName: 'ZV_VHPROD_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'vh Product'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@OData.publish: true
define view ZVH_Product_0631
  as select from ZI_SO_Item_0631
  association [0..1] to ZI_Product_0631 as _ProductA on $projection.ProductA = _ProductA.Product
  association [0..1] to ZI_Product_0631 as _ProductB on $projection.ProductB = _ProductB.Product
{
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.4
      @Search.ranking: #MEDIUM
  key Salesorder     as SalesOrder,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #HIGH
  key Salesorderitem as SalesOrderItem,
      @ObjectModel.foreignKey.association: '_ProductA'
      Product        as ProductA,
      @Consumption.valueHelpDefinition: [{association: '_ProductB'}]
      @ObjectModel.foreignKey.association: '_ProductB'
      Product        as ProductB,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_Product_0631',
                                                     element: 'Product' } }]
      Product        as ProductC,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_Product_0631',
                                                     element: 'Product' },
                                           additionalBinding: [{ localElement: 'ProductType',
                                                                 element: 'ProductType' }] }]
      Product        as ProductD,
      ''             as ProductType,
      _ProductA,
      _ProductB
}
