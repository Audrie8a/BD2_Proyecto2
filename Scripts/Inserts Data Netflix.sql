--select * from [IMBD AZURE].[IMDB].[dbo].[PRUEBA];
INSERT INTO role(name)
SELECT name FROM [IMBD AZURE].[IMDB].[dbo].profession;

SELECT * FROM role;

INSERT INTO titletype(name)
SELECT name FROM [IMBD AZURE].[IMDB].[dbo].titletype;

SELECT * FROM titletype;

INSERT INTO genre(name)
SELECT name FROM [IMBD AZURE].[IMDB].[dbo].genre;

SELECT * FROM genre;

INSERT INTO person(id, name)
SELECT id, primaryName FROM [IMBD AZURE].[IMDB].[dbo].name;

SELECT * FROM person;


SELECT TOP 1 * FROM role order by id desc;

insert into title values('Prueba', 0,2000, 2004, 120, 1);

select * from title;

INSERT INTO title_genre
SELECT 1, g1.genreId from [IMBD AZURE].[IMDB].[dbo].[titleGenre] g1 where g1.titleId='tt0000001';

SELECT n1.nameId, n1.professionId, p1.titleId from [IMBD AZURE].[IMDB].[dbo].[nameProfession] n1, [IMBD AZURE].[IMDB].[dbo].name n2 , [IMBD AZURE].[IMDB].[dbo].principal p1 
where n2.id= p1.nameId
and n1.nameId = n2.id
and p1.titleId='tt0000001';


SELECT * FROM person;

SELECT * from [IMBD AZURE].[IMDB].[dbo].name;
SELECT * from [IMBD AZURE].[IMDB].[dbo].principal;
SELECT * from [IMBD AZURE].[IMDB].[dbo].[nameProfession] ;

SELECT n1.nameId, n1.professionId from [IMBD AZURE].[IMDB].[dbo].[nameProfession] n1, [IMBD AZURE].[IMDB].[dbo].name n2 , [IMBD AZURE].[IMDB].[dbo].principal p1 
where n2.id= p1.nameId
and p1.titleId='tt0000001'; 