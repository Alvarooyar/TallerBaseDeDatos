CREATE OR REPLACE PROCEDURE registrar_cliente(
    p_rut IN VARCHAR2,
    p_nombre IN VARCHAR2,
    p_apellido IN VARCHAR2,
    p_email IN VARCHAR2,
    p_telefono IN VARCHAR2
) 
AS
--aca se puede declarar variables

BEGIN
    INSERT INTO CLIENTE(RUT,NOMBRE,APELLIDO,EMAIL,TELEFONO)
    VALUES(p_rut,p_nombre,p_apellido,p_email,p_telefono);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('cliente '||p_nombre||'registrado');
END registrar_cliente;
/

