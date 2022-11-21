--exercice 2--

select TITLE from movie where director = 'Steven Spielberg';

select movie.YEAR, rating.STARS from rating, movie where movie.mID=rating.mID and stars=4 or stars=5 order by movie.YEAR;

select reviewer.name from rating, reviewer, movie where reviewer.RID=rating.RID and movie.mID=rating.mID and movie.title='Gone with the Wind';

select movie.director, movie.title, rating.STARS from movie, reviewer, rating where movie.director=reviewer.name and reviewer.RID=rating.RID;

select reviewer.name, movie.title, rating.stars from rating, reviewer, movie where reviewer.RID=rating.RID and movie.mID=rating.mID order by reviewer.NAME, movie.TITLE, rating.STARS DESC;
