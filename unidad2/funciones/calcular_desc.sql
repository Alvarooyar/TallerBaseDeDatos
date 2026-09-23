--calcular descuento de una entrada (tabla convenio banco)

--SELECT DESCUENTO_PORCENTAJE FROM CONVENIO_BANCO WHERE CONVENIO_BANCO_ID=4 AND ACTIVO='S';

CREATE OR REPLACE FUNCTION descuento_cliente_banco(
    p_id_banco in NUMBER,
    p_monto_bruto_entrada IN NUMBER
) RETURN NUMBER 
IS
    v_porcentaje_descuento NUMBER;
    v_precio_final_entrada NUMBER;
BEGIN
   SELECT DESCUENTO_PORCENTAJE INTO v_porcentaje_descuento FROM CONVENIO_BANCO 
   WHERE CONVENIO_BANCO_ID = p_id_banco AND ACTIVO='S';

   v_precio_final_entrada :=p_monto_bruto_entrada - (p_monto_bruto_entrada
   *v_porcentaje_descuento) /100;

   RETURN v_precio_final_entrada;
END descuento_cliente_banco;
/

SELECT DESCUENTO_CLIENTE_BANCO(1,100000) AS MONTO_REAL_ENTRADA FROM DUAL;
