/*
Contexto de negocio: El departamento de finanzas requiere evaluar el desempeño de las ventas para una productora específica (por ejemplo, Bizarro Live Entertainment).

Requerimiento: Generar un desglose detallado de 
todos los tickets vendidos ('EMITIDO') para los eventos de dicha productora, mostrando el nombre del evento, la localidad, el método de pago 
utilizado en la transacción, el monto final pagado y el descuento aplicado por convenios bancarios.
*/


SELECT 
e.nombre,
le.NOMBRE_LOCALIDAD,
le.PRECIO
FROM EVENTO e
join LOCALIDAD_EVENTO le on e.EVENTO_ID=le.EVENTO_ID
join RESERVA_TEMPORAL rt on e;

SELECT * FROM TRANSACCION_PAGO;