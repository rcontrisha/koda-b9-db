-- Soal Nomor 1
SELECT *
FROM public.movies
WHERE EXTRACT(YEAR FROM release_date) = 2020;

-- Soal Nomor 2
SELECT *
FROM public.actors
WHERE lower(first_name) LIKE lower('%s')

-- Soal Nomor 3
SELECT *
FROM public.movies
WHERE (movies.rating BETWEEN 4 AND 8) AND (EXTRACT(YEAR FROM release_date) BETWEEN 2004 AND 2010)
