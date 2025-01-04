CLASS zcl_lab_10_constructor_t100598 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .


  PUBLIC SECTION.

   METHODS constructor IMPORTING iv_log TYPE STRING.

   CLASS-METHODS class_constructor.

   " class-METHODS constructor IMPORTING iv_log TYPE STRING .
   METHODS get_log EXPORTING ev_log TYPE STRING.

   CLASS-DATA LOG TYPE STRING.


  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_lab_10_constructor_t100598 IMPLEMENTATION.
  METHOD constructor.
   log = |{ log } Instance Constructor { iv_log }-->|.
  ENDMETHOD.

  METHOD get_log.
   ev_log = me->log.
  ENDMETHOD.

  METHOD class_constructor.
   log = |{ log } Static Constructor -->|.
  ENDMETHOD.

ENDCLASS.
