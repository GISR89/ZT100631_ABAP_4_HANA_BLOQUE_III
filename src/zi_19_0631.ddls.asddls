@AbapCatalog.sqlViewName: 'ZVI19_0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Metadata Extension with parameters'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZI_19_0631
  with parameters
    p_Airline : s_carr_id
  as select from scarr
{
  key carrid   as Carrid,
      carrname as Carrname,
      currcode as Currcode,
      url      as Url
}
where
  carrid = $parameters.p_Airline;
