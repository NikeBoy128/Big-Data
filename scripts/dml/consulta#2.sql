SELECT factura.idfactura, producto.producto, factura_producto.cantidad
FROM factura_producto
INNER JOIN producto ON factura_producto.idproducto = producto.idproducto
WHERE factura_producto.idfactura = 1;
