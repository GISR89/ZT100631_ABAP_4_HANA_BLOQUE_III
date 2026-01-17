@AbapCatalog.sqlViewName: 'ZCDS_16_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Literal access'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_16_AIRLINE_0631
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url
}
