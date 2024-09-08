SELECT round(AVG(PRO.costo), 0), TP.tipo_producto, "Mayor costo promedio" 
FROM producto AS PRO
INNER JOIN tipo_producto AS TP ON PRO.idtipo_producto = TP.idtipo_producto
GROUP BY TP.tipo_producto
HAVING round(AVG(PRO.costo), 0) = (
    SELECT MAX(SQ1.promedio) 
    FROM (
        SELECT round(AVG(PRO.costo), 0) AS promedio 
        FROM producto AS PRO
        INNER JOIN tipo_producto AS TP ON PRO.idtipo_producto = TP.idtipo_producto
        GROUP BY TP.tipo_producto
    ) AS SQ1
)

UNION

SELECT round(AVG(PRO.costo), 0), TP.tipo_producto, "Menor costo promedio" 
FROM producto AS PRO
INNER JOIN tipo_producto AS TP ON PRO.idtipo_producto = TP.idtipo_producto
GROUP BY TP.tipo_producto
HAVING round(AVG(PRO.costo), 0) = (
    SELECT MIN(SQ1.promedio) 
    FROM (
        SELECT round(AVG(PRO.costo), 0) AS promedio 
        FROM producto AS PRO
        INNER JOIN tipo_producto AS TP ON PRO.idtipo_producto = TP.idtipo_producto
        GROUP BY TP.tipo_producto
    ) AS SQ1
)
