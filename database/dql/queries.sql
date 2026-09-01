CREATE TEMP TABLE temporal_json(data JSONB);

\COPY temporal_json(data) FROM PROGRAM 'tr -d "\r\n" < /home/camper/postgresdata/categorias.json';

CREATE TEMP TABLE temporal_xml (data XML);

\copy temporal_xml(data) FROM PROGRAM 'tr -d "\r\n" < /home/camper/postgresdata/juegos.xml'

-- COMPARACION
--- ==============================================
SELECT *
FROM juegos
WHERE precio > (SELECT AVG(precio) FROM juegos)
ORDER BY precio DESC
LIMIT 8;


-- =================================================
SELECT j.*
FROM juegos j
INNER JOIN (
   SELECT categoria_id, AVG(precio) AS promedio_categoria
   FROM juegos
   GROUP BY categoria_id
) avg_cat ON j.categoria_id = avg_cat.categoria_id
WHERE j.precio > avg_cat.promedio_categoria
ORDER BY j.precio DESC
LIMIT 10;
