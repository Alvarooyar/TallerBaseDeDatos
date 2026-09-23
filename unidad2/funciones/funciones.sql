CREATE OR REPLACE FUNCTION calcular_cuadrado(
    p_numero in NUMBER
) RETURN NUMBER
IS
    v_resultado NUMBER;

BEGIN
    v_resultado := p_numero*p_numero;
    RETURN v_resultado;
END calcular_cuadrado;
/
--esto es para probar una funcion
--SELECT CALCULAR_CUADRADO(5) as cuadrado_de_un_numero FROM DUAL;

DECLARE
    v_resultado NUMBER;
BEGIN
    v_resultado:=CALCULAR_CUADRADO(14);

    DBMS_OUTPUT.PUT_LINE('el cuadrado es de: '||v_resultado);
END;
/
