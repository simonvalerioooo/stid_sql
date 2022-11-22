--exercice 2--

select TITLE from movie where director = 'Steven Spielberg';

select movie.YEAR, rating.STARS from rating, movie where movie.mID=rating.mID and stars=4 or stars=5 order by movie.YEAR;

select reviewer.name from rating, reviewer, movie where reviewer.RID=rating.RID and movie.mID=rating.mID and movie.title='Gone with the Wind';

select movie.director, movie.title, rating.STARS from movie, reviewer, rating where movie.director=reviewer.name and reviewer.RID=rating.RID;

select reviewer.name, movie.title, rating.stars from rating, reviewer, movie where reviewer.RID=rating.RID and movie.mID=rating.mID order by reviewer.NAME, movie.TITLE, rating.STARS DESC;


select re.name, m.title
from rating r1, rating r2, movie m, reviewer re
where re.rID = r1.rID 
and r1.mID = m.mID
and r1.mID = r2.mID
and r1.rID = r2.rID
and r1.ratingdate < r2.ratingdate
and r1.stars < r2.stars; 
--8--
select distinct re1.name, re2.name
from rating r1, rating r2, reviewer re1, reviewer re2
where re2.rID = r2.rID
and re1.rID = r1.rID
and r1.mID = r2.mID
and re1.name > re2.name;
