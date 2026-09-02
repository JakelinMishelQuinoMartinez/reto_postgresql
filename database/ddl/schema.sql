CREATE TABLE categorias (
    categoria_id SERIAL PRIMARY KEY,
    codigo CHAR(3) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(250)
);

CREATE TABLE  juegos (
    juego_id SERIAL PRIMARY KEY,
    codigo CHAR(3) NOT NULL UNIQUE,
    titulo VARCHAR(150) NOT NULL,
    precio NUMERIC(8,2) NOT NULL,
    fecha_lanzamiento DATE,
    categoria_id INT NOT NULL REFERENCES categorias(categoria_id)
);

CREATE TEMP TABLE temporal_json(data JSONB);
\COPY temporal_json(data) FROM PROGRAM 'tr -d "\r\n" < /home/camper/postgresdata/categorias.json';


CREATE TEMP TABLE temporal_xml (data XML);
\copy temporal_xml(data) FROM PROGRAM 'tr -d "\r\n" < /home/camper/postgresdata/juegos.xml'