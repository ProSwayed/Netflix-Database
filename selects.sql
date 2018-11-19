/*	Question 1. 

List Movies With their Director And Genre.
*/
select MOVIE.Name as MovieTitle, CONCAT(DIRECTORS.FirstName , ' ' , DIRECTORS.LastName ) as DIRECTOR , GENRE.Genre , MOVIE.YearReleased 
from GENRE 
inner join TYPE_OF on GENRE.id = TYPE_OF.GenreID
inner join MOVIE on TYPE_OF.MovieID = MOVIE.id
inner join PERSON as DIRECTORS on DIRECTORS.id = MOVIE.id
ORDER BY YearReleased ASC;


/*
	QUESTION 2.

number of users who have viewed a movie in a specific genre 
	purpose - to find out what genre the viewer base watches the most

*/


Select GENRE.Genre,  count(GENRE.Genre) as Views_By_Genre
from GENRE 
inner join TYPE_OF on GENRE.id = TYPE_OF.GenreID
inner join MOVIE on TYPE_OF.MovieID = MOVIE.id 
inner join VIEWS_MOVIE ON MOVIE.id = VIEWS_MOVIE.MovieID
inner join PROFILE on VIEWS_MOVIE.ProfileID = PROFILE.id 
GROUP BY GENRE.Genre ORDER BY Views_By_Genre DESC;
