--SELECT NOMBRE,DIRECCION,CIUDAD,CAPACIDAD_TOTAL FROM recinto;
DECLARE
    TYPE r_recinto_info is RECORD(
        nombre_reci RECINTO.NOMBRE%TYPE,
        direccion_reci RECINTO.DIRECCION%TYPE,
        ciudad_reci RECINTO.CIUDAD%TYPE,
        capacidad RECINTO.CAPACIDAD_TOTAL%TYPE
    );

    v_recinto r_recinto_info;
BEGIN
    SELECT 
    NOMBRE,
    DIRECCION,
    CIUDAD,
    CAPACIDAD_TOTAL
    into v_recinto.nombre_reci,v_recinto.ciudad_reci,v_recinto.ciudad_reci,v_recinto.capacidad
    FROM RECINTO
    WHERE RECINTO_ID = 999;


    DBMS_OUTPUT.PUT_LINE('recinto con id 1: '||v_recinto.nombre_reci);

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('ESTE RECINTO NO EXISTE');
END;
/
SELECT tp.METODO_PAGO,t.CODIGO_TICKET from TRANSACCION_PAGO tp
JOIN TICKET t on tp.TRANSACCION_ID = t.TRANSACCION_ID;

DECLARE 
    CURSOR C_TICKETS_EMITIDOS IS 
BEGIN

END;