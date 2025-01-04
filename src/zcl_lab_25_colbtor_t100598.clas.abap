CLASS zcl_lab_25_colbtor_t100598 DEFINITION INHERITING FROM zcl_lab_24_partner_t100598
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS GET_CAPITAL RETURNING VALUE(rv_capital) TYPE STRING.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_25_colbtor_t100598 IMPLEMENTATION.
  METHOD get_capital.
   DATA(lo_capital) = NEW zcl_lab_23_company_t100598(  ).
   lo_capital->capital = 'Sucre'.
   rv_capital = lo_capital->capital.
  ENDMETHOD.

ENDCLASS.
