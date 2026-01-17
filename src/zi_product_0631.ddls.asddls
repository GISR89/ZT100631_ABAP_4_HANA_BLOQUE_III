@AbapCatalog.sqlViewName: 'ZV_PROD0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
define view ZI_Product_0631
  as select from zproduct_0631
  association [0..*] to ZI_ProductText_0631 as _ProdText on $projection.Product = _ProdText.Product
{
  key product            as Product,
      @ObjectModel.text.association: '_ProdText'
      @Search.defaultSearchElement: true
      product_type       as ProductType,
      creation_date_time as CreationDateTime,
      _ProdText
}
