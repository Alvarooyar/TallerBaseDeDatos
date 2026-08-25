DECLARE
    CURSOR c_clientes is 
        SELECT * FROM cliente;
    
    v_contador NUMBER := 0;

BEGIN
    FOR por_cada_cliente in c_clientes LOOP
    DBMS_OUTPUT.PUT_LINE('nombre: '||por_cada_cliente.nombre);
    DBMS_OUTPUT.PUT_LINE('vuelta: '|| v_contador);
    v_contador := v_contador+1;
    END LOOP;
END;
/