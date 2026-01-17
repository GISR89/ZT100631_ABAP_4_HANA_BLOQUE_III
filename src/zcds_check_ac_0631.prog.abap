*&---------------------------------------------------------------------*
*& Report zcds_check_ac_0631
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_check_ac_0631.

SELECT * FROM zi_16_airline_0631
 INTO TABLE @DATA(gt_results).

IF sy-subrc EQ 0.
  cl_demo_output=>display( gt_results ).
ENDIF.
