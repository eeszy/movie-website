SELECT DISTINCT CONCAT(first,' ', last) as actorname from Actor as a, Movie as m, MovieActor as ma where a.id = ma.aid and m.id = ma.mid and m.title = 'Death to Smoochy';

SELECT COUNT(id) from (SELECT id ,count(mid) from Director join MovieDirector on id = did group by id having COUNT(mid) >= 4) as T;

-- all the titles of movies which are released after 2000
SELECT title from Movie where year > 2002;

-- find the movie which has the hightest IMDb rating
SELECT * from MovieRating where imdb >= all (SELECT imdb from MovieRating);




