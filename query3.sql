-- Soal Nomor 1
SELECT CONCAT(d.first_name, ' ', d.last_name) AS "Director Name", COUNT(DISTINCT m.genre_id) AS "Genre(s) Directed"
FROM public.movies m
JOIN public.directors d ON d.id = m.director_id
JOIN public.genres g ON g.id = m.genre_id
GROUP BY d.id

-- Soal Nomor 2
SELECT CONCAT(a.first_name, ' ', a.last_name) AS "Actor Name", COUNT(ma.role) AS "Role Count"
FROM public.movies_actors ma
JOIN public.movies m ON m.id = ma.movie_id
JOIN public.actors a ON a.id = ma.actor_id
GROUP BY ma.actor_id, a.first_name, a.last_name
HAVING COUNT(ma.role) >= 5
ORDER BY "Role Count" DESC

-- Soal Nomor 3
SELECT CONCAT(d.first_name, ' ', d.last_name) AS "Director Name", COUNT(m.id) AS "Films Directed"
FROM public.directors d
JOIN public.movies m ON m.director_id = d.id
GROUP BY d.id
ORDER BY "Films Directed" DESC LIMIT 1

-- Soal Nomor 4
SELECT EXTRACT(YEAR FROM release_date) AS "Year", COUNT(id) AS "Film(s) Released"
FROM public.movies
GROUP BY "Year"
ORDER BY "Film(s) Released" DESC LIMIT 1

-- Soal Nomor 5
SELECT m.title, STRING_AGG(a.first_name, ', ') AS "Actor List"
FROM public.movies_actors ma
JOIN public.movies m ON m.id = ma.movie_id
JOIN public.actors a ON a.id = ma.actor_id
GROUP BY m.id