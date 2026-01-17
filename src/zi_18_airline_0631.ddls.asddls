@AbapCatalog.sqlViewName: 'ZVI18AIR_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Metadata Extension'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZI_18_AIRLINE_0631
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url
}
