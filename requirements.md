# Requerimientos del Reto: Reproduce el Pipeline sin copiar SQL

Este documento detalla la metodología y los requisitos técnicos de la práctica guiada basada en la diapositiva del módulo **PostgreSQL I (Clase 05)**.

---
## Requerimientos del Pipeline

### 1. Importar JSON
* **Instrucción:** Cargar el archivo `categorias.json` en la base de datos.
* **Resultado Esperado:** Demostrar que se importaron exitosamente **4 categorías**.

### 2. Importar XML
* **Instrucción:** Cargar el archivo `juegos.xml` en la base de datos.
* **Resultado Esperado:** Demostrar que se importaron exitosamente **20 juegos**.

### 3. Comparación
* **Instrucción:** Realizar consultas avanzadas de filtrado de precios:
  * Obtener los **8 juegos** cuyo precio se encuentra por encima del promedio global.
  * Obtener los **10 juegos** cuyo precio supera el promedio de su propia categoría.

### 4. Auditoría
* **Instrucción:** Contar la cantidad total de juegos por categoría utilizando una combinación `LEFT JOIN`.
* **Resultado Esperado:** Validar que el conteo devuelva **5 juegos en cada una** de las 4 categorías.