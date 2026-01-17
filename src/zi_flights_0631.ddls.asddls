@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - Table functions'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_Flights_0631
  with parameters
    p_AirlineCode : s_carr_id
  as select from sflight
    inner join   ZTF_FLIGHTS_0631(p_Clnt : $session.client, p_AirlineCode : $parameters.p_AirlineCode ) as Flights on Flights.FlightConn = sflight.connid
{
  key sflight.carrid     as Carrid,
  key sflight.connid     as Connid,
  key sflight.fldate     as Fldate,
      @Semantics.amount.currencyCode: 'Currency'
      sflight.price      as Price,
      sflight.currency   as Currency,
      sflight.planetype  as PlaneType,
      sflight.seatsocc   as Seatsocc,
      @Semantics.amount.currencyCode: 'Currency'
      sflight.paymentsum as Paymentsum,
      Flights.AirlineName,
      Flights.FlightConn,
      Flights.CityFrom,
      Flights.CityTo
}
