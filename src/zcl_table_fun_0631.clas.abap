CLASS zcl_table_fun_0631 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_amdp_marker_hdb .

    CLASS-METHODS get_flights FOR TABLE FUNCTION ztf_flights_0631.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_table_fun_0631 IMPLEMENTATION.
  METHOD get_flights BY DATABASE FUNCTION FOR HDB
                     LANGUAGE SQLSCRIPT
                     OPTIONS READ-ONLY
                     USING scarr spfli.

    RETURN SELECT airline.mandt as Client,
           airline.carrname as AirlineName,
           flight.connid as FlightConn,
           flight.cityfrom as CityFrom,
           flight.cityto as CityTo
             from  scarr as airline
             inner join spfli flight
             on airline.mandt = flight.mandt
             and airline.carrid = flight.carrid
             where airline.mandt = :p_Clnt
               and flight.carrid = :P_AirlineCode
            order by airline.carrid, flight.connid;

  endmethod.

ENDCLASS.
