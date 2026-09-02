# Reto PostgreSQL - Gestión de Videojuegos y Categorías

Este repositorio contiene la solución al reto de diseño de base de datos relacional en PostgreSQL, migración de datos desde archivos semiestructurados (JSON y XML) y ejecución de consultas de análisis y auditoría.

---

## Estructura del Proyecto

```text
reto_postgresql/
├── database/
│   ├── ddl/
│   │   └── schema.sql        # Creación de tablas relacionales y temporales
│   ├── dml/
│   │   └── inserts.sql       # Extracción y carga desde JSON y XML
│   └── dql/
│       └── queries.sql       # Consultas de comparación y auditoría
├── docs/
│   ├── categorias.json       # Datos fuente de categorías
│   └── juegos.xml            # Datos fuente de videojuegos
└── README.md                 # Documentación del proyecto
```

# Resumen del Proyecto
## Diseño de Esquema (DDL): 
Creación de las tablas categorias y juegos con sus respectivas llaves primarias, foráneas y restricciones únicas (schema.sql).

## Carga de Datos ETL (DML): 
Importación de categorias.json mediante funciones JSONB y de juegos.xml usando XMLTABLE hacia las tablas relacionales (inserts.sql).

## Consultas de Análisis (DQL): 
Ejecución de filtros avanzados para obtener juegos por encima del promedio general y por categoría, así como conteos de auditoría (queries.sql).

## Requerimientos del Reto Importar JSON: 
Cargar el archivo categorias.json en la base de datos (4 categorías importadas).

## Importar XML: 
Cargar el archivo juegos.xml en la base de datos (20 juegos importados).

# Comparación:

Obtener los 8 juegos cuyo precio se encuentra por encima del promedio global.

Obtener los 10 juegos cuyo precio supera el promedio de su propia categoría.

Auditoría: Contar la cantidad total de juegos por categoría utilizando una combinación LEFT JOIN (validando 5 juegos en cada una de las 4 categorías).

Evidencias de Ejecución
Las evidencias del correcto funcionamiento se encuentran en la carpeta docs/evidencias/:

Datos cargados a la tabla categorias (DML):

Datos cargados a la tabla juegos (DML):

Juegos sobre el Promedio General:

Juegos sobre el Promedio por Categoría:

Conteo de Auditoría por Categoría:

Autores
Stefani Sánchez

Jakelin Quino
