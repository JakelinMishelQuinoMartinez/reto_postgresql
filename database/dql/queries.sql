CREATE TEMP TABLE temporal_json(data JSONB);

\COPY temporal_json(data) FROM PROGRAM 'tr -d "\r\n" < /home/camper/postgresdata/categorias.json';

CREATE TEMP TABLE temporal_xml (data XML);

\copy temporal_xml(data) FROM PROGRAM 'tr -d "\r\n" < /home/camper/postgresdata/juegos.xml'

