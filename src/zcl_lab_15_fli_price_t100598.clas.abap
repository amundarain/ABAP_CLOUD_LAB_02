CLASS zcl_lab_15_fli_price_t100598 DEFINITION
  PUBLIC

  CREATE PUBLIC .

  PUBLIC SECTION.

      TYPES: BEGIN OF ty_flight,
             price           TYPE /dmo/flight_price,
             connection_id   TYPE /dmo/connection_id,
             carrier_id      TYPE /dmo/carrier_id,
             END OF ty_flight,
           tt_flight TYPE TABLE OF ty_flight.

  METHODS ADD_PRICE  IMPORTING iv_price TYPE /DMO/FLIGHT OPTIONAL
                      RETURNING VALUE(rv_price) TYPE /DMO/FLIGHT-price .

  DATA MT_FLIGHTS TYPE /DMO/FLIGHT.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_fli_price_t100598 IMPLEMENTATION.
  METHOD add_price.
        SELECT SINGLE carrier_id,
                   connection_id,
                   price
            FROM   /dmo/flight
            WHERE carrier_id = @me->mt_flights-carrier_id
            AND connection_id = '0001'
            AND price = @me->mt_flights-price "'10818.00'
            INTO  @DATA(tt_flight).
     rv_price = tt_flight-price.

  ENDMETHOD.

ENDCLASS.
