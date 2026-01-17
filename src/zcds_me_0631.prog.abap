*&---------------------------------------------------------------------*
*& Report zcds_me_0631
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zcds_me_0631.

cl_dd_ddl_annotation_service=>get_annos(
  EXPORTING
    entityname         = 'ZI_18_AIRLINE_0631'
  IMPORTING
    element_annos      = DATA(gt_element_annos) ).

cl_demo_output=>display( gt_element_annos ).
