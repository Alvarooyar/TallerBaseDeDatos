
DECLARE
    TYPE BOLETA_CLIENTE IS RECORD(
        nombre_cliente CLIENTE.NOMBRE%TYPE,
        estado_reserva RESERVA_TEMPORAL.ESTADO%TYPE,
        estado_pago TRANSACCION_PAGO.ESTADO%TYPE,
        monto_bruto TRANSACCION_PAGO.MONTO_BRUTO%TYPE,
        descuento_monto TRANSACCION_PAGO.DESCUENTO%TYPE,
        monto_final TRANSACCION_PAGO.monto_final%TYPE
    );

    v_boleta BOLETA_CLIENTE;
BEGIN
    SELECT 
    c.NOMBRE||' '||c.APELLIDO as nombre,
    tp.MONTO_BRUTO as monto_bruto,
    tp.DESCUENTO as descuento,
    tp.MONTO_BRUTO-tp.DESCUENTO as monto_final,
    tp.ESTADO as estado
    INTO v_boleta.nombre_cliente,v_boleta.monto_bruto,v_boleta.descuento,v_boleta
    FROM cliente c
    INNER join RESERVA_TEMPORAL rt on c.CLIENTE_ID = rt.CLIENTE_ID
    INNER join TRANSACCION_PAGO tp on rt.RESERVA_ID = tp.RESERVA_ID
    where c.CLIENTE_ID=1;






    DBMS_OUTPUT.PUT_LINE('========ticket================');
    DBMS_OUTPUT.PUT_LINE('nombre cliente' || v_boleta.nombre_cliente);
    DBMS_OUTPUT.PUT_LINE('');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
    DBMS_OUTPUT.PUT_LINE('There are ' || in_stock || ' items in stock.');
END;