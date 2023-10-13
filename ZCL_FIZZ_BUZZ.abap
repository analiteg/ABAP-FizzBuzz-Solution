CLASS zcl_fizz_buzz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .
  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fizz_buzz IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    TRY.
        out->write( lcl_fizz_buzz=>create( )->run( 100 ) ).
      CATCH cx_root INTO DATA(exc).
        out->write( exc->get_text(  ) ).
    ENDTRY.
  ENDMETHOD.

ENDCLASS.
