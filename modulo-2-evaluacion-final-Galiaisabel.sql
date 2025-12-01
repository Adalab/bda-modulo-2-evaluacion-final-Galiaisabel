-- Selecciona todos los nombres de las películas sin que aparezcan duplicados.
SELECT DISTINCT title
FROM film;

-- Muestra los nombres de todas las películas que tengan una clasificación de "PG-13".
SELECT title,rating
FROM film
WHERE rating="PG-13";


-- Encuentra el título y la descripción de todas las películas que contengan la palabra "amazing" en su descripción.
SELECT title,description
FROM film
WHERE description LIKE '%amazing%';

-- Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos.
SELECT title, length
FROM film
WHERE length>120;

-- Recupera los nombres de todos los actores.
SELECT first_name AS Nombre_de_actores
FROM actor;

-- Encuentra el nombre y apellido de los actores que tengan "Gibson" en su apellido.
SELECT first_name, last_name
FROM actor
WHERE last_name like '%Gibson%'; --  PARA QUE CONTENGA USAMOS EL LIKE PERO SI NO NOS DA IGUAL PODEMOS USAR WHERE LAST_NAME="Gibson"

--  Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20.
SELECT first_name, actor_id
FROM actor
WHERE actor_id>9 AND actor_id<20;

SELECT first_name, last_name, actor_id
FROM actor
WHERE actor_id BETWEEN 10 AND 20;

-- Encuentra el título de las películas en la tabla film que no sean ni "R" ni "PG-13" en cuanto a su clasificación.
SELECT title,rating
FROM film
WHERE rating NOT IN  ('R','PG-13'); 


-- Encuentra la cantidad total de películas en cada clasificación de la tabla film y muestra la clasificación junto con el recuento.
SELECT rating AS CLASIFICACION,COUNT(rating) AS CANTIDAD_TOTAL_PELICULAS
FROM film
GROUP BY rating;


-- Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido junto con la cantidad de películas alquiladas.
SELECT customer.customer_id,customer.first_name, customer.last_name, COUNT(rental_id) AS TOTAL
FROM customer
INNER JOIN rental on rental.customer_id=customer.customer_id
GROUP BY customer.customer_id,customer.first_name, customer.last_name;


-- Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres.

-- Encuentra el promedio de duración de las películas para cada clasificación de la tabla film y muestra la clasificación junto con el promedio de duración.
SELECT AVG(length) AS PROMEDIO, rating
FROM film
GROUP BY rating;


-- Encuentra el nombre y apellido de los actores que aparecen en la película con title "Indian Love".
select actor.first_name, actor.last_name
from actor
INNER JOIN film_actor on film_actor.actor_id =actor.actor_id
INNER JOIN film on film.film_id =film_actor.film_id
WHERE film.title="Indian Love";

-- Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción.
SELECT title, description
FROM film
WHERE description LIKE '%dog%' OR '%cat%';

-- Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010.
SELECT title, release_year
FROM film
WHERE release_year BETWEEN 2005 AND 2010;
