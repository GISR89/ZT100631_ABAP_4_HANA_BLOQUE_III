@AbapCatalog.sqlViewName: 'ZC16CO0631'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS - OData Comsumption'
@VDM.viewType: #CONSUMPTION 
@Analytics.query: true 
@OData.publish: true
define view ZC_16_Cons_T100631 
 as select from ZI_15_Cube_T100631
{
     @AnalyticsDetails.query.axis: #ROWS
  key Airline,
      @AnalyticsDetails.query.axis: #ROWS
  key Flightconnection,
      @AnalyticsDetails.query.axis: #ROWS
  key FlightDate,
      @Semantics.amount.currencyCode: 'currency'
      @AnalyticsDetails.query.axis: #COLUMNS
      FlightPrice,
      @AnalyticsDetails.query.axis: #COLUMNS
      currency,
      @AnalyticsDetails.query.axis: #COLUMNS
      MaxNumberofSeat,
      @AnalyticsDetails.query.axis: #COLUMNS
      NumberofOcupiedSeats,
      @AnalyticsDetails.query.axis: #COLUMNS
      @DefaultAggregation: #FORMULA
      @EndUserText.label: 'Available Seats'
      MaxNumberofSeat - NumberofOcupiedSeats as NumberOfAvailableSeats,
      @Semantics.amount.currencyCode: 'currency'
      @AnalyticsDetails.query.axis: #COLUMNS
      totalAmount
}
