*&---------------------------------------------------------------------*
*& Report ztf_run_0631
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztf_run_0631.

SELECT FROM ztf_flights_0631( P_AirlineCode = 'LH' )
     FIELDS *
     INTO TABLE @DATA(gt_results).

IF sy-subrc EQ 0.
  cl_demo_output=>display( gt_results ).
ENDIF.
