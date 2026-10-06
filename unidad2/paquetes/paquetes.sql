--necesita el SPEC del package
CREATE OR REPLACE PACKAGE pkg_boletaria
AS
    FUNCTION fn_verificar_stock(p_localidad_evento_id IN NUMBER)
    RETURN NUMBER;

    PROCEDURE sp_vender_entrada(p_localidad_evento_id IN NUMBER,
    p_cantidad_entradas_a_comprar IN NUMBER);
END pkg_boletaria;
/
--body del paquete 
CREATE OR REPLACE PACKAGE BODY pkg_boletaria AS
FUNCTION fn_verificar_stock(p_localidad_evento_id IN NUMBER)
    RETURN NUMBER
    AS
        v_stock_disponible NUMBER;
    BEGIN
        SELECT stock_disponible INTO v_stock_disponible from LOCALIDAD_EVENTO WHERE LOCALIDAD_EVENTO=p_localidad_evento_id;
        RETURN v_stock_disponible;
    END fn_verificar_stock;

    PROCEDURE sp_vender_entrada(p_localidad_evento_id IN NUMBER,
    p_cantidad_entradas_a_comprar IN NUMBER)
    AS
        v_stock_disponible NUMBER;
    BEGIN
        v_stock_disponible := fn_verificar_stock(p_localidad_evento_id);
        IF v_stock_disponible <= 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'no queda stock para ese evento en concreto');
        END IF;
        UPDATE LOCALIDAD_EVENTO SET STOCK_DISPONIBLE = STOCK_DISPONIBLE - p_cantidad_entradas_a_comprar 
        WHERE LOCALIDAD_EVENTO_ID=p_localidad_evento_id;
    END sp_vender_entrada;

END pkg_boletaria;
/