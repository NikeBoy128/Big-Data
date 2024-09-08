SELECT cliente.nombre, cliente.apellido, factura.fecha
FROM cliente
INNER JOIN factura ON cliente.idcliente = factura.idcliente;
