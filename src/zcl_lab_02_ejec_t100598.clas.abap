CLASS zcl_lab_02_ejec_t100598 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.
  PUBLIC SECTION.

  INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_02_ejec_t100598 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
*   ""INSTANCIAS
*   "" zcl_lab_10_constructor_t100598
*   out->write( zcl_lab_10_constructor_t100598=>log ).
*   DATA(lo_constructor) = new zcl_lab_10_constructor_t100598( iv_log = '01' ).
*   out->write( zcl_lab_10_constructor_t100598=>log ).
*   DATA(lo_constructor_02) = new zcl_lab_10_constructor_t100598( iv_log = '02' ).
*    out->write( zcl_lab_10_constructor_t100598=>log ).
*   lo_constructor->get_log( IMPORTING ev_log = DATA(lo_log) ).

   "" HERENCIA
   "" zcl_lab_11_system_t100598
*   DATA(lo_herencia) = new zcl_lab_12_linux_t100598(  ).
*   lo_herencia->get_architecture( IMPORTING ev_architecture = DATA(lv_architecture) ).
*   out->write( |El Valor de Architecture es: { lv_architecture }| ).

*   ""Constructores con herencia
*   DATA(lo_hc) = new zcl_lab_14_grid_t100598( iv_view_type = '01' iv_box = '02' ).
*   lo_hc->get_box( IMPORTING ev_box = DATA(lv_box) ).
*   out->write( lv_box ).

   ""3. Redefinición de métodos

*   DATA(lo_rdoriginal) = new zcl_lab_15_fli_price_t100598(  ).
*   lo_rdoriginal->mt_flights-carrier_id = 'SQ'.
*   lo_rdoriginal->mt_flights-price      = '5950.00'.
*   "lo_rd->mt_flights-price      = '10818.00'.
*   DATA(lo_result_ori) = lo_rdoriginal->add_price( ).
*   out->write( |Precio Original: { lo_result_ori }|  ).
*
*   DATA(lo_descuento10) = new zcl_lab_16_price_dcto_t100598(  ).
*   lo_descuento10->mt_flights-carrier_id = 'SQ'.
*   lo_descuento10->mt_flights-price      = '5950.00'.
*   lo_descuento10->lp_porcentaje = 10.
*   "lo_rd->mt_flights-price      = '10818.00'.
*   DATA(lo_resul_des10) = lo_descuento10->add_price( ).
*   out->write( |Precio 10% Descuento: { lo_resul_des10 }|  ).
*
*   DATA(lo_descuento20) = new zcl_lab_16_price_dcto_t100598(  ).
*   lo_descuento20->mt_flights-carrier_id = 'SQ'.
*   lo_descuento20->mt_flights-price      = '5950.00'.
*   lo_descuento20->lp_porcentaje = 20.
*   "lo_rd->mt_flights-price      = '10818.00'.
*   DATA(lo_resul_des20) = lo_descuento20->add_price( ).
*   out->write( |Precio 20% Descuento: { lo_resul_des20 }|  ).

*   ""4. Narrowing Cast
*   DATA(lo_Narrowing_animal) = new zcl_lab_18_animal_t100598(  ).
*   DATA(lo_Narrowing_lion)   = new zcl_lab_19_lion_t100598(  ).
*   lo_Narrowing_animal = lo_Narrowing_lion.
*   out->write( |Narrowing Cast: { lo_Narrowing_animal->walk(  ) }| ).
*
   ""5. Widening Cast
*   DATA(lo_Widening_lion)   = new zcl_lab_19_lion_t100598(  ).
*   TRY.
*      lo_Widening_lion ?= lo_Narrowing_animal.
*   CATCH cx_sy_move_cast_error INTO DATA(lx_cast).
*    out->write( lx_cast->get_text( ) ).
*   ENDTRY.
*    out->write( |Widening Cast: { lo_Widening_lion->walk(  ) }| ).
*
*    ""8. Encapsulación de instancias
*    "DATA(lo_encapsula_instancia) = new zcl_lab_21_classroom_t100598(  ).
*
*    ""9. Concepto Friends – Clase amiga
*    DATA(lo_company) = NEW zcl_lab_24_partner_t100598(  ).
*    out->write( |Valor Clase Friends: { lo_company->get_company_capital(  ) }| ).
*
*    ""10. Herencia con clase amiga
*    DATA(lo_herencia_amiga) = NEW zcl_lab_25_colbtor_t100598(  ).
*    out->write( |Valor Herencia con clase amiga: { lo_herencia_amiga->get_capital(  ) }| ).

*    ""1. Definir interfaz y 2. Llamadas a métodos de interfaz
    DATA(lo_interfaz) = NEW zcl_lab_26_flights_t100598(  ).
*
    lo_interfaz->set_conn_id( im_conn_id = 'Hola Interfaz' ).
    lo_interfaz->get_conn_id( IMPORTING ex_conn_id = DATA(ls_interfaz) ).
    out->write( |El Valor del al Interfaz es: { ls_interfaz }| ).

*      DATA(lo_if_customer) = NEW zcl_lab_26_flights_t100598(  ).
*      out->write( lo_if_customer->zif_lab_02_customer_t100598~get_customer( IV_CUSTOMER_ID = '000002' ) ).

      DATA(lo_if_airport) = NEW zcl_lab_26_flights_t100598(  ).
      out->write( lo_if_airport->zif_lab_03_airports_t100598~get_airports( IV_AIRPORT_ID = 'FRA' ) ).


  ENDMETHOD.

ENDCLASS.
