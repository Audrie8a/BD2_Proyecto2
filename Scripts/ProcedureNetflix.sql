

CREATE PROCEDURE insert_title 
    @titulo varchar(600), 
	@isAdult int,
    @anio int, 
	@anioFin int, 
    @tipo_titulo int, 
    @runtime int,
	@rating int
AS
    DECLARE @id_title VARCHAR(115);
	DECLARE @id_titleNetflix int;


	-- Verificar que no se haya insertado anteriormente la pelicula
	IF (SELECT id from title 
		where primaryTitle=@titulo 
		and isAdult=@isAdult 
		and startYear=@anio 
		and endYear=@anioFin 
		and runtime=@runtime 
		and titleTypeId=@tipo_titulo) IS NULL
		BEGIN
			SET @id_title = (
				SELECT TOP 1 tl.id FROM [IMBD AZURE].[IMDB].[dbo].title tl
				WHERE UPPER(tl.primaryTitle) LIKE UPPER(@titulo) AND tl.startYear = @anio AND tl.titleTypeId = @tipo_titulo
			);
			IF @id_title IS NULL
				BEGIN
					-- SIGNIFICA QUE EL TITULO NO ESTA EN EL CATALOGO DE IMDB
		
					INSERT INTO title values(@titulo, @isAdult, @anio, @anioFin, @runtime, @tipo_titulo,@rating);
					RETURN
				END
			ELSE
				BEGIN
					INSERT INTO title values(@titulo, @isAdult, @anio, @anioFin, @runtime, @tipo_titulo,@rating);
					SET @id_titleNetflix=(
						SELECT TOP 1 id FROM title order by id desc
					);

					INSERT INTO RegistroIMDB values( @id_titleNetflix,@id_title);
					INSERT INTO title_genre
					SELECT g1.genreId, @id_titleNetflix from [IMBD AZURE].[IMDB].[dbo].[titleGenre] g1 where g1.titleId=@id_title;

					INSERT INTO crew 
					SELECT @id_titleNetflix,n1.nameId, n1.professionId from [IMBD AZURE].[IMDB].[dbo].[nameProfession] n1, [IMBD AZURE].[IMDB].[dbo].name n2 , [IMBD AZURE].[IMDB].[dbo].principal p1 
					where n2.id= p1.nameId
					and n1.nameId = n2.id
					and p1.titleId=@id_title;

					RETURN
				END
		END
	ELSE
		BEGIN
			RETURN;
		END
GO



