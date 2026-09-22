--bloque anonimo

DECLARE
BEGIN
    registrar_cliente('11.325.259-6','Mario','Vargas','Mvargas@gmail.com',NULL);
END;
/
--DROP PROCEDURE registrar_cliente;

DECLARE
    v_nombre cliente.nombre%TYPE;
    v_apellido cliente.apellido%TYPE;
    v_email cliente.email%TYPE;
    v_telefono cliente.telefono%TYPE;
BEGIN
    cliente_datos(1,v_nombre,v_apellido,v_email,v_telefono);
    DBMS_OUTPUT.PUT_LINE('los datos del cliente son: '||v_nombre||''||v_apellido||''||v_email||''||v_telefono);
END;