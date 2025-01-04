CLASS zcl_lab_14_grid_t100598 DEFINITION INHERITING FROM zcl_lab_13_view_t100598
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS constructor IMPORTING IV_VIEW_TYPE TYPE STRING
                                  IV_BOX      TYPE STRING.
   METHODS get_box EXPORTING ev_box TYPE STRING.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_14_grid_t100598 IMPLEMENTATION.
  METHOD constructor.
    super->constructor( iv_view_type = iv_view_type ).
    me->box = IV_BOX.
  ENDMETHOD.

  METHOD get_box.
  ev_box = me->box.
  ENDMETHOD.

ENDCLASS.
