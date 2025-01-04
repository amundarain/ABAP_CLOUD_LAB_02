CLASS zcl_lab_17_super_dcto_t100598 DEFINITION INHERITING FROM zcl_lab_16_price_dcto_t100598
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS ADD_PRICE REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_dcto_t100598 IMPLEMENTATION.
  METHOD add_price.
  me->lp_porcentaje = ( me->lp_porcentaje / 100 ).
  lp_precio = super->add_price(  ).
  rv_price = lp_precio * me->lp_porcentaje. "( super->add_price(  ) ) * me->lp_porcentaje.
  ENDMETHOD.

ENDCLASS.
