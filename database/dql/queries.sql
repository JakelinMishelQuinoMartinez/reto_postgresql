CREATE TEMP TABLE temporal_json(data JSONB);

\COPY temporal_json(data) FROM PROGRAM 'tr -d "\r\n" < /home/camper/postgresdata/categorias.json';
 
 
INSERT INTO categorias(codigo, nombre, descripcion)
SELECT 
     e->> 'codigo',
     e->>'nombre',
     e->>'descripcion'
FROM temporal_json AS t 
CROSS JOIN LATERAL  jsonb_array_elements(t.data) AS e;

CREATE TEMP TABLE temporal_xml (data XML);

\copy temporal_xml(data) FROM PROGRAM 'tr -d "\r\n" < /home/camper/postgresdata/juegos.xml'

INSERT INTO juegos (
    codigo, titulo, precio, 
    fecha_lanzamiento, categoria_id
)
SELECT x.codigo, x.titulo, 
       x.precio::numeric, 
       x.fecha_lanzamiento::date, 
       x.categoria_id::int
FROM temporal_xml AS t,
XMLTABLE(
    '/juegos/juego'
    PASSING t.data
    COLUMNS 
        codigo TEXT PATH 'codigo',
        titulo TEXT PATH 'titulo',
        precio TEXT PATH 'precio',
        fecha_lanzamiento TEXT PATH 'fecha_lanzamiento',
        categoria_id TEXT PATH 'categoria_id'
) AS x;
