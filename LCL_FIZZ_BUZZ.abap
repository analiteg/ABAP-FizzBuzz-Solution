CLASS lcl_fizz_buzz  DEFINITION CREATE PRIVATE.

  PUBLIC SECTION.

    CLASS-METHODS: create
      RETURNING
        VALUE(ro_fizzbuzz) TYPE REF TO lcl_fizz_buzz.

    METHODS: run
      IMPORTING lv_number          TYPE i
      RETURNING VALUE(lt_fizzbuzz) TYPE string_table
      RAISING   cx_static_check.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS lcl_fizz_buzz IMPLEMENTATION.

  METHOD create.
    ro_fizzbuzz = NEW lcl_fizz_buzz( ).
  ENDMETHOD.

  METHOD run.
    lt_fizzbuzz = VALUE string_table(
                  FOR i = 1 WHILE i <= lv_number (
                  COND string( LET lv_3  = i MOD 3
                                   lv_5  = i MOD 5 IN
                                   WHEN lv_3 = 0              THEN |Fizz|
                                   WHEN lv_5 = 0              THEN |Buzz|
                                   WHEN lv_3 = 0 AND lv_5 = 0 THEN |FizzBuzz|
                                   ELSE i
                                                                )
                                                                )
                                                                ).
  ENDMETHOD.

ENDCLASS.
