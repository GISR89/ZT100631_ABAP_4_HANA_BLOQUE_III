@AbapCatalog.sqlViewName: 'ZVI17AIR_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'CDS - Impedir acceso'
@Metadata.ignorePropagatedAnnotations: true
define view ZI_17_AIRLINE_0631
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url
}
