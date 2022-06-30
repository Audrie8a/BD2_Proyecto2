
--SELECT * FROM [IMBD AZURE].[IMDB].[dbo].writer;
CREATE DATABASE NETFLIX;
USE NETFLIX;

CREATE TABLE titletype(
    id int IDENTITY(1,1),
    name VARCHAR(115),
    PRIMARY KEY (id)
);

CREATE TABLE genre(
    id int IDENTITY(1,1),
    name VARCHAR(115),
    PRIMARY KEY (id)
);

--alter table title drop column idRegistroIMDB;
CREATE TABLE title(
    id int IDENTITY(1,1),
    primaryTitle VARCHAR(600),
    isAdult int,
    startYear int,
    endYear int,
    runtime int,
    titleTypeId int null,
    PRIMARY KEY (id),
    FOREIGN KEY (titleTypeId) REFERENCES titletype(id)
);


CREATE TABLE RegistroIMDB(
    id int IDENTITY(1,1),
    idTitle int,
	idTitleIMDB VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (idTitle) REFERENCES title(id)
);

CREATE TABLE title_genre(
    genreId int,
    titleId int,
    PRIMARY KEY (genreId, titleId),
    FOREIGN KEY (genreId) REFERENCES genre(id),
    FOREIGN KEY (titleId) REFERENCES title(id)
);

CREATE TABLE episode(
    id int IDENTITY(1,1),
    season int,
    episode int,
    titleId int,
    PRIMARY KEY (id),
    FOREIGN KEY (titleId) REFERENCES title(id)
);

CREATE TABLE person(
    id VARCHAR(115),
    name VARCHAR(115),
    PRIMARY KEY (id)
);

CREATE TABLE role(
    id int IDENTITY(1,1),
    name VARCHAR(45),
    PRIMARY KEY (id)
);

CREATE TABLE crew(
    id int IDENTITY(1,1),
    titleId int,
    personId VARCHAR(115),
    roleId int,
    PRIMARY KEY (id),
    FOREIGN KEY (titleId) REFERENCES title(id),
    FOREIGN KEY (personId) REFERENCES person(id),
    FOREIGN KEY (roleId) REFERENCES role(id)
);