-- ¿Cuántas películas tienen una duración superior a 120 minutos?

SELECT COUNT(*) 
FROM pelicula
WHERE duracion > 120;

-- ¿Cuántas películas incluyen subtítulos en español?
SELECT COUNT(*)
FROM subtitulo
WHERE idioma="es";

-- ¿Cuántas películas tienen contenido adulto?
SELECT COUNT(*)
FROM pelicula
WHERE adultos="1";

--  ¿Cuál es la película más antigua registrada en la base de datos?
SELECT titulo
FROM pelicula
ORDER BY año ASC
LIMIT 1;

-- Muestra el promedio de duración de las películas agrupado por género.
SELECT AVG(duracion), genero
FROM pelicula
GROUP BY genero;

-- ¿Cuántas películas por año se han registrado en la base de datos? Ordena de mayor a menor
SELECT COUNT(*) AS peliculas_por_año, año
FROM pelicula
GROUP BY año
ORDER BY peliculas_por_año DESC;

-- ¿Cuál es el año con más películas en la base de datos
SELECT COUNT(*) AS peliculas_por_año, año
FROM pelicula
GROUP BY año
ORDER BY peliculas_por_año DESC
LIMIT 1;

-- Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno.
SELECT genero, COUNT(*) AS total
FROM pelicula
GROUP BY genero
ORDER BY total DESC;

-- Muestra todas las películas cuyo título contenga la palabra "Godfather" (puedes usar cualquier palabra).
SELECT *
FROM pelicula
WHERE titulo LIKE '%GODFATHER%'

