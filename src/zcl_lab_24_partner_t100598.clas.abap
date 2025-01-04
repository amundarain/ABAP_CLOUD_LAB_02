CLASS zcl_lab_24_partner_t100598 DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS GET_COMPANY_CAPITAL RETURNING VALUE(rv_company_cap) TYPE STRING.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_24_partner_t100598 IMPLEMENTATION.
  METHOD get_company_capital.
   DATA(lo_company) = new zcl_lab_23_company_t100598(  ).
   lo_company->capital = 'Caracas'.
   rv_company_cap = lo_company->capital.
  ENDMETHOD.

ENDCLASS.
