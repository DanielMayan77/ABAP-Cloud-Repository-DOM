CLASS ydom_class_art DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ydom_class_art IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data: it_art TYPE StandarD TABLE OF ydom_tab_art.

   it_art = VALUE #(
   ( client = sy-mandt id_art = 1 descr = 'Mini colores' desc2 = 'Un mini estuche, con mini colores'
     color = 'varios' piezas = 12 stock = 10
     url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-mini-colores-estuche-01_700x.jpg?v=1676577703' )
   ( client = sy-mandt id_art = 2 descr = 'Monthly planner' desc2 = 'Deal para planificar tus metas y proyectos. Tiene un diseño minimalista, con un formato de 12 meses, ideal para organizar tu año.'
     color = 'negro' piezas = 1 stock = 100
     url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-Libreta-MonthyPlanner-3_204e518f-b0a5-4ed1-a5c3-676dd8e98a6f_700x.jpg?v=1588283579' )
   ( client = sy-mandt id_art = 3 descr = 'Marcadores' desc2 = 'Zebra mildliner colores pasteles'
     color = 'varios' piezas = 5 stock = 20
     url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-zebra-sarasa-clip-01_700x.jpg?v=1711596505' )
   ( client = sy-mandt id_art = 4 descr = 'Lapiz' desc2 = 'Refill de 0,5 mm en para el bolígrafo Tombow Mono Graph Multi 2.'
     color = 'negro' piezas = 1 stock = 1
     url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-zebra-sarasa-clip-01_700x.jpg?v=1711596505' )
    ).

    INSERT ydom_tab_art FROM TABLE @it_art.
    IF sy-subrc EQ 0.
     out->write( 'Insert successful' ).
    ELSE.
     out->write( 'Insert wrong' ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
