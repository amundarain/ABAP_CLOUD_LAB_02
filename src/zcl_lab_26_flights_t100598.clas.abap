CLASS zcl_lab_26_flights_t100598 DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: zif_lab_01_flight_t100598,
                zif_lab_02_customer_t100598.
    ALIASES: get_airports FOR zif_lab_03_airports_t100598~get_airports,
             set_conn_id  FOR zif_lab_01_flight_t100598~set_conn_id,
             get_conn_id  FOR zif_lab_01_flight_t100598~get_conn_id.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_26_flights_t100598 IMPLEMENTATION.

  METHOD set_conn_id. "zif_lab_01_flight_t100598~set_conn_id.

   me->zif_lab_01_flight_t100598~conn_id = im_conn_id.

  ENDMETHOD.

  METHOD get_conn_id. "zif_lab_01_flight_t100598~get_conn_id.

   ex_conn_id = me->zif_lab_01_flight_t100598~conn_id.

  ENDMETHOD.



  METHOD zif_lab_02_customer_t100598~get_customer.

             SELECT SINGLE FROM /dmo/customer
                    FIELDS FIRST_name,
                           last_name
             WHERE customer_id = @IV_CUSTOMER_ID
            INTO @rv_type.
            .

  ENDMETHOD.

  METHOD get_airports. "zif_lab_03_airports_t100598~get_airports.
            SELECT SINGLE FROM /dmo/airport
            FIELDS *
            WHERE airport_id = @IV_AIRPORT_ID
            INTO  @rv_id_airport.

  ENDMETHOD.

ENDCLASS.
