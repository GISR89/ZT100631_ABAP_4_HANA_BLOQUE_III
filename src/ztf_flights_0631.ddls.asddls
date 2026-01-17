@EndUserText.label: 'Table Function'
define table function ZTF_FLIGHTS_0631
  with parameters
    @Environment.systemField: #CLIENT
    p_Clnt        : abap.clnt,
    p_AirlineCode : s_carr_id
returns
{
  client      : abap.clnt;
  AirlineName : s_carrname;
  FlightConn  : s_conn_id;
  CityFrom    : s_from_cit;
  CityTo      : s_to_city;
}
implemented by method
  zcl_table_fun_0631=>get_flights;
