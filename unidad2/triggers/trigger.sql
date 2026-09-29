--validacion de datos de cliente

SELECT * FROM cliente;

INSERT INTO CLIENTE(RUT,NOMBRE,APELLIDO,EMAIL) 
VALUES('22.236.235-9','  AM aD oR','su AREz','a mAdo rssss@gmail.com');
COMMIT;

CREATE OR REPLACE TRIGGER tgr_limpiador_de_datos_cliente 
BEFORE INSERT OR UPDATE ON CLIENTE
FOR EACH ROW
BEGIN
    :NEW.NOMBRE := INITCAP( TRIM(REPLACE(:NEW.NOMBRE, ' ','')));
    :NEW.APELLIDO := INITCAP(TRIM(REPLACE(:NEW.APELLIDO, ' ','')));
    :NEW.EMAIL := LOWER(TRIM(REPLACE(:NEW.EMAIL,' ','')));
end tgr_limpiador_de_datos_cliente;
/