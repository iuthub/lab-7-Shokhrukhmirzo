SELECT * FROM movies WHERE movies.year=1995;

SELECT count(*) FROM roles r JOIN movies m ON m.id=r.movie_id WHERE m.name="Lost in Translation";

SELECT first_name, last_name, M.name FROM actors  A JOIN roles R on A.id=R.actor_id JOIN  movies M on R.movie_id=M.id 
WHERE M.name="Lost in Translation";

SELECT first_name, last_name FROM directors AS D JOIN movies_directors as MD ON D.id= MD.director_id JOIN movies as M ON m.id = MD.movie_id WHERE M.name = "Fight Club";

SELECT count(*) FROM movies As m
JOIN movies_directors AS md ON m.id=md.movie_id JOIN directors AS dr ON dr.id=md.movie_id WHERE dr.first_name="Clint" AND dr.last_name="Eastwood";


SELECT name FROM movies As m JOIN movies_directors AS md ON md.director_id=m.id JOIN directors AS dr ON dr.id=md.director_id WHERE dr.first_name="Clint" AND dr.last_name="Eastwood";