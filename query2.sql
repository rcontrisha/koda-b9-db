-- Soal Nomor 1
SELECT m.title AS "Movie Title", d.first_name AS "Director Name", g.name AS "Genre Name"
FROM public.movies m 
JOIN public.directors d ON d.id = m.director_id
JOIN genres g ON g.id = m.genre_id
LIMIT 50

-- Soal Nomor 2
SELECT m.title AS "Movie Title", a.first_name AS "First Name", a.last_name AS "Last Name", ma.role AS "Role"
FROM public.movies_actors ma
JOIN public.movies m ON m.id = ma.movie_id
JOIN public.actors a ON a.id = ma.actor_id
ORDER BY m.title