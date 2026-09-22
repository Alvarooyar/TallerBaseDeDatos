--crear un procedimiento almacenado que devuelva
--los datos de un cliente segun su id


CREATE OR REPLACE PROCEDURE cliente_datos(
    p_cli_id IN NUMBER,
    p_nombre OUT VARCHAR2,
    p_apellido OUT VARCHAR2,
    p_email OUT VARCHAR2,
    p_telefono OUT VARCHAR2
)
IS 

BEGIN
    SELECT nombre,apellido,email,telefono 
    INTO p_nombre,p_apellido,p_email,p_telefono FROM CLIENTE
    WHERE CLIENTE_ID = p_cli_id;
END cliente_datos;
/