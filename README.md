# CONSULTAS EN SQL 

## Ejercicio 2. Base de Datos Sakila

Para este ejercicio utilizaremos la bases de datos de Sakila. Es una base de datos de ejemplo que simula
una tienda de alquiler de películas. Con tablas como:
    - film (películas)
    - actor (actores)
    - customer(clientes)
    - rental (alquileres)
    - category (categorías)
    - film category
    - inventory
    - film_actor
    - country
    - store
    - city,  entre otras. 

### CONSULTAS:

1. Obtenemos todos los títulos de películas sin duplicados; utilizamos *DISTINCT* para que no se nos duplice la información. La tabla que utilizamos es *film* con la columna *title*.

2. Mostramos las películas(el título y la columna *rating* para comprobar el resultado) con clasificación "PG-13"(dónde rating sea igual a la clasificación PG-13).

3. Mostramos el título y la descripción de las películas(tabla *film*) que contengan la palabra "amazing" en su descripción, en este caso usamos *LIKE* com '%'antes y después de la 'amazing' ¿Por qué? % significa que 'no le importa lo que tenga antes ni después de'.

4. Películas con una duración mayor a 120 minutos; de la tabla *film* mostramos el título y la duración(columna length), en el where escribiremos la condición(length>12).

5. Recuperamos todos los nombres de los actores. Tabla *actor*, seleccionamos la columna *first_name*.

6. Mostramos nombre y apellidos de los actores que en el apellido tengan 'GIBSON'. Utilicé un like como en el ejercico3, pero también se podría poner 'WHERE last_name="GIBSON".

7. Muestra los nombres de los actores que tengan un ID entre 10 y 20. Dos maneras para poder ver esta consulta, en el *WHERE* se utiliza la condición que ID sea mayor a 9 e ID meno a 20, por qué 9, porque sino no me muestra la película con id 10. Y por otro lado también se puede hacer con *BETWEEN* ID entre 10 y 20.

8. Películas que no sean ni 'R' ni 'PG-13' en su clasificaciín; para esta consulta utilicé un *NOT IN* que compara un valor con una lista de posible valores, es decir, muestrame las películas que NO sea de clasificación 'R' y 'PG-13'.

9. Mostramos la cantidad total de películas por clasificación. 'CANTIDAD TOTAL'--> COUNT y le damos un alias, cuando hacemos un count tenemos que usar un *GROUP BY* de la columna que usamos en el count.

10. Total de películas alquiladas por cada cliente, mostramos su nombre y apellido junto con la cantidad de películas alquiladas.
Tenemos que usar dos tablas; clientes y rental, y 'crear una columna ficticia para mostrar la cantidad de películas alquiladas. Para las dos tablas tenemos que igualar las columnas que tengan en las dos tablas(FK), como queremos la cantidad total usamos *COUNT* y como mencionamos anteriormente con el count tenemos que hacer un *GROUP BY*.

11. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres. Tenemos que relacionar 4 tablas( category, film, inventory y film_category).Primero partimos de la tabla rental, donde se registran todos los alquileres. Se relaciona cada alquiler con inventario (inventory) para saber qué película fue alquilada. Luego  se relaciona con la película original (film). Se obtiene la categoría de cada película a través de film_category. Se recupera el nombre de la categoría desde la tabla category, se cuenta (COUNT) cuántos alquileres tiene cada categoría. Y por último agrupamos los resultados por categoría.

12. Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración. Para esta consulta seleccionamos la columna *rating* de la tabla *film*, que indica su clasificación (G, PG, PG-13, R, NC-17) calculamos el promedio de la duración de todas las películas que tienen esa clasificación y por último con un *GROUP BY* agrupamos los resultados por clasificación, para que cada fila represente una clasificación con su duración promedio.

13. Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love". Empezamos por la tabla *actor* donde se tiene las columnas nombre y apellidos de los actores, se une con la tabla *film_actor* que se relaciona cada cactor con las películas en las que aparece, luego unimos con film para obtener los títulos de las películas. Filtramos en el *WHERE* film_title='Indian Love' para seleccionar solo la película deseada.

14. Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción. Usamos la tabla *film* donde se almacena títulos y descripciones de las películas. Utilizo *LIKE* CON '%' para buscar coincidencias en la columna description:
  - %dog% --> coincide con cualquier descripción que contenga la palabra dog.
  - %cat%--> coincide con cualquier descripción que contenga la palabra cat.
  Y un OR para que devuelvan películas que contengan cualquiera de las dos palabras.

15. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.Usamos  WHERE release_year BETWEEN 2005 AND 2010 para filtrar solo las películas lanzadas entre 2005 y 2010 inclusive.





