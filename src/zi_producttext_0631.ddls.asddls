@AbapCatalog.sqlViewName: 'ZV_PRODTEXT0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Product Text'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_ProductText_0631
  as select from zprodtext_0631
{
  key language     as Language,
  key product      as Product,
      product_name as ProductName
}
