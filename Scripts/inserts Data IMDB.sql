-- CREACION DE TABLAS DEL MODELO ER

create table genre(
    id int IDENTITY(1,1),
    name VARCHAR(75),
    PRIMARY KEY (id)
);

insert  into  genre (name) values('Animation');
insert  into  genre (name) values('Comedy,Short');
insert  into  genre (name) values('Short');
insert  into  genre (name) values('Documentary');
insert  into  genre (name) values('Romance');
insert  into  genre (name) values('Comedy');
insert  into  genre (name) values('Drama');
insert  into  genre (name) values('Sci-Fi');
insert  into  genre (name) values('Action');
insert  into  genre (name) values('Thriller');
insert  into  genre (name) values('Musical');
insert  into  genre (name) values('Biography');
insert  into  genre (name) values('Adventure');
insert  into  genre (name) values('Film-Noir');
insert  into  genre (name) values('Crime');
insert  into  genre (name) values('Mystery');
insert  into  genre (name) values('War');
insert  into  genre (name) values('Fantasy');
insert  into  genre (name) values('Western');
insert  into  genre (name) values('History');
insert  into  genre (name) values('Sport');
insert  into  genre (name) values('Music');
insert  into  genre (name) values('Family');

select * from genre;

CREATE TABLE titletype(
    id int IDENTITY(1,1),
    name VARCHAR(75),
    PRIMARY KEY(id)
);

insert into titletype (name) values ('short');
insert into titletype (name) values ('movie');
insert into titletype (name) values ('tvSeries');


CREATE TABLE title(
    id VARCHAR(45),
    titleTypeId int,
    primaryTitle VARCHAR(500),
    originalTitle VARCHAR(500),
    isAdult int,
    startYear int,
    endYear int,
    runtime int,
    PRIMARY KEY (id),
    FOREIGN KEY (titleTypeId) REFERENCES titletype(id)
);

insert into title values ('tt0000001',	1,	'Carmencita',	'Carmencita',	0,	1894,	null,	1);
insert into title values ('tt0000002',	1,	'Le clown et ses chiens',	'Le clown et ses chiens',	0,	1892,	null,	5);
insert into title values ('tt0000003',	1,	'Pauvre Pierrot',	'Pauvre Pierrot',	0,	1892,	null,	4);
insert into title values ('tt0000004',	1,	'Un bon bock',	'Un bon bock',	0,	1892,	null,	12);
insert into title values ('tt0000005',	1,	'Blacksmith Scene',	'Blacksmith Scene',	0,	1893,	null,	1);
insert into title values ('tt0000006',	1,	'Chinese Opium Den',	'Chinese Opium Den',	0,	1894,	null,	1);
insert into title values ('tt0000007',	1,	'Corbett and Courtney Before the Kinetograph',	'Corbett and Courtney Before the Kinetograph',	0,	1894,	null,	1);
insert into title values ('tt0000008',	1,	'Edison Kinetoscopic Record of a Sneeze	Edison', 'Kinetoscopic Record of a Sneeze',	0,	1894,	null,	1);
insert into title values ('tt0000009',	1,	'Miss Jerry',	'Miss Jerry',	0,	1894,	null,	40);

insert into title values ('tt0000010',	1,	'Leaving the Factory',	'La sortie de lusine Lumière à Lyon',	0,	1895,	null,	1);

insert into title values ('tt0000011',	1,	'Akrobatisches Potpourri',	'Akrobatisches Potpourri',	0,	1895,	null,	1);
insert into title values ('tt0000012',	1,	'The Arrival of a Train',	'Larrivée dun train à La Ciotat',	0,	1896	,null,	1);
insert into title values ('tt0000013',	1,	'The Photographical Congress Arrives in Lyon'	,'Le débarquement du congrès de photographie à Lyon',	0,	1895,	null,	1);

insert into title values ('tt0000014',	1,	'The Waterer Watered',	'Larroseur arrosé',	0,	1895,	null,	1);
insert into title values ('tt0000015',	1,	'Autour dune cabine',	'Autour dune cabine',	0,	1894,	null,	2);
insert into title values ('tt0000016',	1,	'Boat Leaving the Port',	'Barque sortant du port',	0,	1895,	null,	1);
insert into title values ('tt0000017',	1,	'Italienischer Bauerntanz',	'Italienischer Bauerntanz',	0	,1895,	null,	1);
insert into title values ('tt0000018',	1,	'Das boxende Känguruh',	'Das boxende Känguruh',	0,	1895,	null,	1);


insert into title values ('tt0000019',	1,	'The Clown Barber',	'The Clown Barber',	0,	1898,	null,	null);
insert into title values ('tt0000020',	1,	'The Derby 1895',	'The Derby 1895',	0,	1895,	null,	1);
insert into title values ('tt0053137',	2,	'On the Beach',	'On the Beach'	,0,	1959,	null,	134);


insert into title values ('tt0072308',	2,	'The Towering Inferno',	'The Towering Inferno',	0,	1974,	null,	165);
insert into title values ('tt0050419',	2,	'Funny Face',	'Funny Face',	0,	1957,	null,	103);
insert into title values ('tt0031983',	2,	'The Story of Vernon and Irene Castle',	'The Story of Vernon and Irene Castle',	0,	1939	,null,	93);
insert into title values ('tt0037382',	2,	'To Have and Have Not',	'To Have and Have Not'	,0	,1944	,null,	100);
insert into title values ('tt0117057',	2,	'The Mirror Has Two Faces',	'The Mirror Has Two Faces'	,0	,1996	,null,	126);
insert into title values ('tt0071877',	2,	'Murder on the Orient Express',	'Murder on the Orient Express',	0,	1974,	null,	128);
insert into title values ('tt0038355',	2,	'The Big Sleep',	'The Big Sleep',	0,	1946,	null,	114);
insert into title values ('tt0054452',	2,	'La Vérité',	'La vérité'	,0	,1960,	null	,128);
insert into title values ('tt0049189',	2,	'...And God Created Woman',	'Et Dieu... créa la femme',	0	,1956,	null,	95);
insert into title values ('tt0056404',	2,	'Love on a Pillow',	'Le repos du guerrier',	0	,1962	,null	,102);
insert into title values ('tt0057345',	2,	'Contempt',	'Le mépris'	,0	,1963	,null,	103);
insert into title values ('tt0072562',	3,	'Saturday Night Live',	'Saturday Night Live',	0	,1975,	null,	90);
insert into title values ('tt0077975',	2,	'National Lampoons Animal House',	'National Lampoons Animal House',	0	,1978,	null,	109);
insert into title values ('tt0078723',	2,	'1941',	'1941',	0,	1979,	null,	118);
insert into title values ('tt0080455',	2,	'The Blues Brothers',	'The Blues Brothers',	0,	1980,	null,	133);
insert into title values ('tt0050976',	2,	'The Seventh Seal',	'Det sjunde inseglet',	0	,1957,	null,	96);
insert into title values ('tt0083922',	2,	'Fanny and Alexander',	'Fanny och Alexander'	,0,	1982,	null	,188);
insert into title values ('tt0060827',	2,	'Persona',	'Persona',	0	,1966	,null	,85);
insert into title values ('tt0050986',	2,	'Wild Strawberries',	'Smultronstället',	0	,1957	,null	,91);
insert into title values ('tt0038109',	2,	'Spellbound',	'Spellbound'	,0	,1945	,null	,111);
insert into title values ('tt0077711',	2,	'Autumn Sonata'	,'Höstsonaten',	0	,1978,	null,	99);
insert into title values ('tt0034583',	2,	'Casablanca',	'Casablanca',	0	,1942	,null	,102);
insert into title values ('tt0036855',	2,	'Gaslight',	'Gaslight',	0	,1944	,null,	114);

insert into title values ('tt0036860',	1,	'Gents Without Cents',	'Gents Without Cents',	0,	1944,	null,	19);
insert into title values ('tt0036868',	2,	'The Best Years of Our Lives',	'The Best Years of Our Lives',	0,	1946,	null,	170);
insert into title values ('tt0036882',	2,	'Great Freedom No. 7',	'Grosse Freiheit Nr. 7',	0,	1944,	null,	111);
insert into title values ('tt0036891',	2,	'Hail the Conquering Hero',	'Hail the Conquering Hero',	0,	1944,	null,	101);
insert into title values ('tt0036905',	1,	'Hell-Bent for Election'	,'Hell-Bent for Election',	0,	1944,	null,	13);
insert into title values ('tt0036907',	2,	'Henry Aldrich Plays Cupid',	'Henry Aldrich Plays Cupid',	0,	1944,	null,	65);
insert into title values ('tt0036918',	2,	'Hidden Valley Outlaws',	'Hidden Valley Outlaws',	0,	1944,	null,	56);
insert into title values ('tt0036946',	2,	'Ich habe von dir geträumt',	'Ich habe von dir geträumt',	0,	1944,	null,	72);
insert into title values ('tt0036963',	2,	'Ivan Nikulin - russkiy matros',	'Ivan Nikulin - russkiy matros',	0,	1945,	null,	90);
insert into title values ('tt0036980',	2,	'Kato hayabusa sento-tai',	'Kato hayabusa sento-tai',	0,	1944,	null,	110);
insert into title values ('tt0037000',	2,	'Lady in the Dark',	'Lady in the Dark',	0,	1944,	null,	100);
insert into title values ('tt0037022',	1,	'Little Red Riding Rabbit',	'Little Red Riding Rabbit',	0,	1944,	null,	7);
insert into title values ('tt0037035',	2,	'Madonna of the Seven Moons',	'Madonna of the Seven Moons',	0,	1945,	null,	110);
insert into title values ('tt0037051',	2,	'Marriage Is a Private Affair',	'Marriage Is a Private Affair',	0,	1944,	null,	116);
insert into title values ('tt0037070',	2,	'The Merry Monahans',	'The Merry Monahans',	0,	1944,	null,	91);
insert into title values ('tt0037085',	2,	'Moon Over Las Vegas',	'Moon Over Las Vegas',	0,	1944,	null,	65);
insert into title values ('tt0037101',	2,	'Murder, My Sweet',	'Murder, My Sweet',	0,	1944,	null,	95);
insert into title values ('tt0037125',	1,	'New Americans',	'New Americans',	0,	1944,	null,	19);
insert into title values ('tt0037126',	2,	'Ni pobre, ni rico, sino todo lo contrario',	'Ni pobre, ni rico, sino todo lo contrario',	0,	1944,	null,	75);
insert into title values ('tt0037145',	2,	'Oh, What a Night!',	'Oh, What a Night!',	0,	1944,	null,	72);
insert into title values ('tt0037157',	2,	'Den osynliga muren',	'Den osynliga muren',	0,	1944,	null,	105);
insert into title values ('tt0037158',	2,	'Our Hearts Were Young and Gay',	'Our Hearts Were Young and Gay',	0,	1944,	null,	81);
insert into title values ('tt0037175',	2,	'Pin Up Girl',	'Pin Up Girl',	0,	1944	,null,	84);
insert into title values ('tt0037176',	2,	'The Pinto Bandit',	'The Pinto Bandit',	0,	1944,	null,	56);
insert into title values ('tt0037205',	2,	'Raduga',	'Raduga',	0,	1944,	null,	93);
insert into title values ('tt0037206',	2,	'Raiders of Ghost City',	'Raiders of Ghost City',	0,	1944,	null,	225);

select * from title;

truncate table titleGenre;
select *from titleGenre;
CREATE TABLE titleGenre(
    titleId VARCHAR(45),
    genreId int,
    FOREIGN KEY (titleId) REFERENCES title(id),
    FOREIGN KEY (genreId) REFERENCES genre(id)
);

insert into titleGenre values ('tt0000001',4);
insert into titleGenre values ('tt0000001',3);
insert into titleGenre values ('tt0000002',1);
insert into titleGenre values ('tt0000002',3);
insert into titleGenre values ('tt0000003',1);
insert into titleGenre values ('tt0000003',2);
insert into titleGenre values ('tt0000003',5);
insert into titleGenre values ('tt0000004',1);
insert into titleGenre values ('tt0000004',3);
insert into titleGenre values ('tt0000005',2);
insert into titleGenre values ('tt0000005',3);
insert into titleGenre values ('tt0000006',3);

insert into titleGenre values ('tt0000007',3);
insert into titleGenre values ('tt0000007',21);
insert into titleGenre values ('tt0000008',4);
insert into titleGenre values ('tt0000008',3);

insert into titleGenre values ('tt0000009',5);
insert into titleGenre values ('tt0000009',3);
insert into titleGenre values ('tt0000010',4);
insert into titleGenre values ('tt0000010',3);
insert into titleGenre values ('tt0000011',4);
insert into titleGenre values ('tt0000011',3);
insert into titleGenre values ('tt0000012',4);
insert into titleGenre values ('tt0000012',3);
insert into titleGenre values ('tt0000013',4);


insert into titleGenre values ('tt0000013',3);
insert into titleGenre values ('tt0000014',2);
insert into titleGenre values ('tt0000014',3);
insert into titleGenre values ('tt0000015',1);
insert into titleGenre values ('tt0000015',3);
insert into titleGenre values ('tt0000016',4);
insert into titleGenre values ('tt0000016',3);
insert into titleGenre values ('tt0000017',	4);
insert into titleGenre values ('tt0000017',	3);
insert into titleGenre values ('tt0000018',	3);
insert into titleGenre values ('tt0000019',	2);
insert into titleGenre values ('tt0000019',	3);
insert into titleGenre values ('tt0000020',	4);
insert into titleGenre values ('tt0000020',	3);
insert into titleGenre values ('tt0000020',	21);
insert into titleGenre values ('tt0053137',	7);
insert into titleGenre values ('tt0053137',	5);
insert into titleGenre values ('tt0053137',	8);
insert into titleGenre values ('tt0072308',	9);
insert into titleGenre values ('tt0072308',	7);
insert into titleGenre values ('tt0072308',	10);
insert into titleGenre values ('tt0050419',	2);
insert into titleGenre values ('tt0050419',	11);
insert into titleGenre values ('tt0050419',	5);
insert into titleGenre values ('tt0031983',	12);
insert into titleGenre values ('tt0031983',	7);
insert into titleGenre values ('tt0031983',	11);
insert into titleGenre values ('tt0037382',	13);
insert into titleGenre values ('tt0037382',	2);
insert into titleGenre values ('tt0037382',	14);
insert into titleGenre values ('tt0117057',	2);
insert into titleGenre values ('tt0117057',	7);
insert into titleGenre values ('tt0071877',	5);
insert into titleGenre values ('tt0071877',	15);
insert into titleGenre values ('tt0038355',	7);
insert into titleGenre values ('tt0038355',	16);
insert into titleGenre values ('tt0054452',	15);
insert into titleGenre values ('tt0054452',	14);
insert into titleGenre values ('tt0049189',	16);
insert into titleGenre values ('tt0049189',	7);
insert into titleGenre values ('tt0056404',	7);
insert into titleGenre values ('tt0056404',5);
insert into titleGenre values ('tt0057345',7);
insert into titleGenre values ('tt0057345',5);
insert into titleGenre values ('tt0072562',7);
insert into titleGenre values ('tt0072562',5);
insert into titleGenre values ('tt0077975',2);
insert into titleGenre values ('tt0077975',22);
insert into titleGenre values ('tt0078723',2);
insert into titleGenre values ('tt0078723',9);
insert into titleGenre values ('tt0080455',	2);
insert into titleGenre values ('tt0080455',	17);
insert into titleGenre values ('tt0050976',	9);
insert into titleGenre values ('tt0050976',	13);
insert into titleGenre values ('tt0083922',	2);
insert into titleGenre values ('tt0083922',	7);
insert into titleGenre values ('tt0060827',	18);
insert into titleGenre values ('tt0060827',	7);
insert into titleGenre values ('tt0050986',	7);
insert into titleGenre values ('tt0038109',	10);
insert into titleGenre values ('tt0038109',	7);
insert into titleGenre values ('tt0077711',	5);
insert into titleGenre values ('tt0034583',	14);
insert into titleGenre values ('tt0036855',	16);
insert into titleGenre values ('tt0036855',	5);
insert into titleGenre values ('tt0036860',	7);
insert into titleGenre values ('tt0036860',	22);
insert into titleGenre values ('tt0036868',	7);
insert into titleGenre values ('tt0036868',	5);
insert into titleGenre values ('tt0036882',	17);
insert into titleGenre values ('tt0036882',	15);
insert into titleGenre values ('tt0036891',	7);
insert into titleGenre values ('tt0036891',	16);
insert into titleGenre values ('tt0036905',	2);
insert into titleGenre values ('tt0036905',	22);
insert into titleGenre values ('tt0036907',	3);
insert into titleGenre values ('tt0036907',	7);
insert into titleGenre values ('tt0036918',	5);
insert into titleGenre values ('tt0036918',	17);
insert into titleGenre values ('tt0036946',	7);
insert into titleGenre values ('tt0036946',	22);
insert into titleGenre values ('tt0036963',	5);
insert into titleGenre values ('tt0036963',	2);
insert into titleGenre values ('tt0036980',	17);
insert into titleGenre values ('tt0037000',	1);
insert into titleGenre values ('tt0037000',	3);
insert into titleGenre values ('tt0037022',	2);
insert into titleGenre values ('tt0037022',	23);
insert into titleGenre values ('tt0037035',	9);
insert into titleGenre values ('tt0037035',	7);
insert into titleGenre values ('tt0037051',	19);
insert into titleGenre values ('tt0037051',	2);
insert into titleGenre values ('tt0037070',	7);
insert into titleGenre values ('tt0037070',	17);
insert into titleGenre values ('tt0037085',	9);
insert into titleGenre values ('tt0037085',	17);
insert into titleGenre values ('tt0037101',	7);
insert into titleGenre values ('tt0037101',	11);
insert into titleGenre values ('tt0037125',	5);
insert into titleGenre values ('tt0037125',	1);
insert into titleGenre values ('tt0037125',	2);
insert into titleGenre values ('tt0037126',	23);
insert into titleGenre values ('tt0037126',	7);
insert into titleGenre values ('tt0037126',	16);
insert into titleGenre values ('tt0037145',	5);
insert into titleGenre values ('tt0037145',	17);
insert into titleGenre values ('tt0037157',	2);
insert into titleGenre values ('tt0037157',	7);
insert into titleGenre values ('tt0037157',	22);
insert into titleGenre values ('tt0037158',	2);
insert into titleGenre values ('tt0037158',	22);
insert into titleGenre values ('tt0037175',	5);
insert into titleGenre values ('tt0037175',	15);
insert into titleGenre values ('tt0037175',	7);
insert into titleGenre values ('tt0037176',	14);
insert into titleGenre values ('tt0037176',	4);
insert into titleGenre values ('tt0037176',	3);
insert into titleGenre values ('tt0037205',	7);
insert into titleGenre values ('tt0037205',	15);
insert into titleGenre values ('tt0037206',	7);
insert into titleGenre values ('tt0037206',	5);


CREATE TABLE name(
    id VARCHAR(45),
    primaryName VARCHAR(115),
    birthYear int,
    deathYear int,
    PRIMARY KEY (id)
);

insert into name values('nm0000001','Fred Astaire',1899,1987);
insert into name values('nm0000002','Lauren Bacall',1924,2014);
insert into name values('nm0000003','Brigitte Bardot',1934,null);
insert into name values('nm0000004','John Belushi',1949,1982);
insert into name values('nm0000005','Ingmar Bergman',1918,2007);
insert into name values('nm0000006','Ingrid Bergman',1915,1982);
insert into name values('nm0000007','Humphrey Bogart',1899,1957);
insert into name values('nm0000008','Marlon Brando',1924,2004);
insert into name values('nm0000009','Richard Burton',1925,1984);
insert into name values('nm0000010','James Cagney',1899,1986);
insert into name values('nm0000011','Gary Cooper',1901,1961);
insert into name values('nm0000012','Bette Davis',1908,1989);
insert into name values('nm0000013','Doris Day',1922,2019);
insert into name values('nm0000014','Olivia de Havilland',1916,2020);
insert into name values('nm0000015','James Dean',1931,1955);
insert into name values('nm0000016','Georges Delerue',1925,1992);
insert into name values('nm0000017','Marlene Dietrich',1901,1992);
insert into name values('nm0000018','Kirk Douglas',1916,2020);
insert into name values('nm0000019','Federico Fellini',1920,1993);
insert into name values('nm0000020','Henry Fonda',1905,1982);


CREATE TABLE profession(
    id int IDENTITY(1,1),
    name VARCHAR(115),
    PRIMARY KEY(id)
);

insert into profession values('soundtrack');
insert into profession values('actor');
insert into profession values('miscellaneous');
insert into profession values('actress');
insert into profession values('music_department');
insert into profession values('writer');
insert into profession values('director');
insert into profession values('producer');
insert into profession values('make_up_department');
insert into profession values('composer');
insert into profession values('assistant_director');



CREATE TABLE nameProfession(
    nameId VARCHAR(45),
    professionId int,
    FOREIGN KEY(nameId) REFERENCES name(id),
    FOREIGN KEY(professionId) REFERENCES profession(id)
);
insert into nameProfession values('nm0000001',	1);
insert into nameProfession values('nm0000001',	2);
insert into nameProfession values('nm0000001',	3);
insert into nameProfession values('nm0000002',	4);
insert into nameProfession values('nm0000002',	1);
insert into nameProfession values('nm0000003',	4);
insert into nameProfession values('nm0000003',	1);
insert into nameProfession values('nm0000003',	5);
insert into nameProfession values('nm0000004',	2);
insert into nameProfession values('nm0000004',	1);
insert into nameProfession values('nm0000004',	6);
insert into nameProfession values('nm0000005',	6);
insert into nameProfession values('nm0000005',	7);
insert into nameProfession values('nm0000005',	2);
insert into nameProfession values('nm0000006',	4);
insert into nameProfession values('nm0000006',	1);
insert into nameProfession values('nm0000006',	8);
insert into nameProfession values('nm0000007',	2);
insert into nameProfession values('nm0000007',	1);
insert into nameProfession values('nm0000007',	8);
insert into nameProfession values('nm0000008',	2);
insert into nameProfession values('nm0000008',	1);
insert into nameProfession values('nm0000008',	7);
insert into nameProfession values('nm0000009',	2);
insert into nameProfession values('nm0000009',	1);
insert into nameProfession values('nm0000009',	8);
insert into nameProfession values('nm0000010',	2);
insert into nameProfession values('nm0000010',	1);
insert into nameProfession values('nm0000010',	7);
insert into nameProfession values('nm0000011',	2);
insert into nameProfession values('nm0000011',	1);
insert into nameProfession values('nm0000011',	8);
insert into nameProfession values('nm0000012',	4);
insert into nameProfession values('nm0000012',	1);
insert into nameProfession values('nm0000012',	9);
insert into nameProfession values('nm0000013',	1);
insert into nameProfession values('nm0000013',	4);
insert into nameProfession values('nm0000013',	8);
insert into nameProfession values('nm0000014',	4);
insert into nameProfession values('nm0000014',	8);
insert into nameProfession values('nm0000015',	2);
insert into nameProfession values('nm0000015',	3);
insert into nameProfession values('nm0000016',	10);
insert into nameProfession values('nm0000016',	1);
insert into nameProfession values('nm0000016',	5);
insert into nameProfession values('nm0000017',	1);
insert into nameProfession values('nm0000017',	4);
insert into nameProfession values('nm0000017',	5);
insert into nameProfession values('nm0000018',	2);
insert into nameProfession values('nm0000018',	8);
insert into nameProfession values('nm0000018',	1);
insert into nameProfession values('nm0000019',	6);
insert into nameProfession values('nm0000019',	11);
insert into nameProfession values('nm0000019',	7);
insert into nameProfession values('nm0000020',	2);
insert into nameProfession values('nm0000020',	8);
insert into nameProfession values('nm0000020',	1);



CREATE TABLE category(
    id int IDENTITY(1,1),
    name varchar(115),
    PRIMARY KEY(id)
);

insert into category values('self');
insert into category values('director');
insert into category values('cinematographer');
insert into category values('director');
insert into category values('composer');
insert into category values('director');
insert into category values('producer');
insert into category values('composer');
insert into category values('editor');
insert into category values('director');
insert into category values('composer');
insert into category values('actor');
insert into category values('actor');
insert into category values('director');
insert into category values('producer');
insert into category values('director');
insert into category values('actor');
insert into category values('actor');
insert into category values('director');
insert into category values('director');

truncate table principal;
CREATE TABLE principal(
    id int IDENTITY(1,1),
    nameId VARCHAR(45),
    titleId VARCHAR(45),
    categoryId int,
    jobId VARCHAR(1000),
    orden VARCHAR(45),
    character VARCHAR(6000),
    PRIMARY KEY (id),
    FOREIGN KEY (nameId) REFERENCES name(id),
    FOREIGN KEY (titleId) REFERENCES title(id),
    FOREIGN KEY (categoryId) REFERENCES category(id)
);

insert into principal values('nm0000001','tt0000001',1,	null,1,'Self');
insert into principal values('nm0000002','tt0000001',2,	null,2,null);
insert into principal values('nm0000003','tt0000001',3,	'director of photography',	3,	null);
insert into principal values('nm0000004','tt0000002',4,	null,1,null);
insert into principal values('nm0000006','tt0000002',5,	null,2,null);
insert into principal values('nm0000004','tt0000003',6,	null,1,null);
insert into principal values('nm0000007','tt0000003',7,	'producer',	2,	null);
insert into principal values('nm0000006','tt0000003',8,	null,3,null);
insert into principal values('nm0000008','tt0000003',9,	null,4,null);
insert into principal values('nm0000004','tt0000004',10,null,1,null);
insert into principal values('nm0000005','tt0000004',11,null,2,null);
insert into principal values('nm0000009','tt0000005',12,null,1,'Blacksmith');
insert into principal values('nm0000010','tt0000005',13,null,2,'Assistant');
insert into principal values('nm0000002','tt0000005',14,null,3,null);
insert into principal values('nm0000011','tt0000005',15,'producer',4,null);
insert into principal values('nm0000002','tt0000006',16,null,1,null);
insert into principal values('nm0000012','tt0000007',17,null,1,null);
insert into principal values('nm0000013','tt0000007',18,null,2,null);
insert into principal values('nm0000002','tt0000007',19,null,3,null);
insert into principal values('nm0000003','tt0000007',20,null,4,null);

CREATE TABLE knowForTitle(
    nameId VARCHAR(45),
    titleId VARCHAR(45),
    FOREIGN KEY (nameId) REFERENCES name(id),
    FOREIGN KEY (titleId) REFERENCES title(id)
);

insert into knowForTitle values('nm0000001','tt0053137');
insert into knowForTitle values('nm0000001','tt0072308');
insert into knowForTitle values('nm0000001','tt0050419');
insert into knowForTitle values('nm0000001','tt0031983');
insert into knowForTitle values('nm0000002','tt0037382');
insert into knowForTitle values('nm0000002','tt0117057');
insert into knowForTitle values('nm0000002','tt0071877');
insert into knowForTitle values('nm0000002','tt0038355');
insert into knowForTitle values('nm0000003','tt0054452');
insert into knowForTitle values('nm0000003','tt0049189');
insert into knowForTitle values('nm0000003','tt0056404');
insert into knowForTitle values('nm0000003','tt0057345');
insert into knowForTitle values('nm0000004','tt0072562');
insert into knowForTitle values('nm0000004','tt0077975');
insert into knowForTitle values('nm0000004','tt0078723');
insert into knowForTitle values('nm0000004','tt0080455');
insert into knowForTitle values('nm0000005','tt0050976');
insert into knowForTitle values('nm0000005','tt0083922');
insert into knowForTitle values('nm0000005','tt0060827');
insert into knowForTitle values('nm0000005','tt0050986');
insert into knowForTitle values('nm0000006','tt0038109');
insert into knowForTitle values('nm0000006','tt0077711');
insert into knowForTitle values('nm0000006','tt0034583');
insert into knowForTitle values('nm0000006','tt0036855');
insert into knowForTitle values('nm0000007','tt0036860');
insert into knowForTitle values('nm0000007','tt0036868');
insert into knowForTitle values('nm0000007','tt0036882');
insert into knowForTitle values('nm0000008','tt0036891');
insert into knowForTitle values('nm0000009','tt0036905');
insert into knowForTitle values('nm0000009','tt0036907');
insert into knowForTitle values('nm0000010','tt0036918');
insert into knowForTitle values('nm0000010','tt0036946');
insert into knowForTitle values('nm0000011','tt0036963');
insert into knowForTitle values('nm0000011','tt0036980');
insert into knowForTitle values('nm0000012','tt0037000');
insert into knowForTitle values('nm0000012','tt0037022');
insert into knowForTitle values('nm0000013','tt0037035');
insert into knowForTitle values('nm0000013','tt0037051');
insert into knowForTitle values('nm0000014','tt0037070');
insert into knowForTitle values('nm0000014','tt0037085');
insert into knowForTitle values('nm0000015','tt0037101');
insert into knowForTitle values('nm0000016','tt0037125');
insert into knowForTitle values('nm0000016','tt0037126');
insert into knowForTitle values('nm0000017','tt0037145');
insert into knowForTitle values('nm0000017','tt0037157');
insert into knowForTitle values('nm0000018','tt0037158');
insert into knowForTitle values('nm0000018','tt0037175');
insert into knowForTitle values('nm0000019','tt0037176');
insert into knowForTitle values('nm0000019','tt0037205');
insert into knowForTitle values('nm0000020','tt0037206');



CREATE TABLE director(
    nameId VARCHAR(45),
    titleId VARCHAR(45),
    FOREIGN KEY (nameId) REFERENCES name(id),
    FOREIGN KEY (titleId) REFERENCES title(id)
);

insert into director values ('nm0000005','tt0000008');
insert into director values ('nm0000008','tt0000003');
insert into director values ('nm0000010','tt0000005');

CREATE TABLE writer(
    nameId VARCHAR(45),
    titleId VARCHAR(45),
    FOREIGN KEY (nameId) REFERENCES name(id),
    FOREIGN KEY (titleId) REFERENCES title(id)
);

insert into writer values('nm0000004','tt0000002');
insert into writer values('nm0000004','tt0000003');
insert into writer values('nm0000004','tt0000004');
insert into writer values('nm0000005','tt0000004');
insert into writer values('nm0000010','tt0000003');

CREATE TABLE rating(
    id int IDENTITY(1,1),
    titleId VARCHAR(45),
    averageRating DECIMAL,
    numVotes int,
    PRIMARY KEY (id),
    FOREIGN KEY (titleId) REFERENCES title(id)
);


insert into rating values('tt0000001',5.7,1892);
insert into rating values('tt0000002',5.9,252);
insert into rating values('tt0000003',6.5,1682);
insert into rating values('tt0000004',5.7,165);
insert into rating values('tt0000005',6.2,2499);
insert into rating values('tt0000006',5.2,169);
insert into rating values('tt0000007',5.4,781);
insert into rating values('tt0000008',5.4,2029);
insert into rating values('tt0000009',5.3,197);
insert into rating values('tt0000010',6.9,6832);
insert into rating values('tt0000011',5.3,350);
insert into rating values('tt0000012',7.4,11733);
insert into rating values('tt0000013',5.7,1811);
insert into rating values('tt0000014',7.1,5255);
insert into rating values('tt0000015',6.2,1010);
insert into rating values('tt0000016',5.9,1417);
insert into rating values('tt0000017',4.6,310);
insert into rating values('tt0000018',5.3,568);
insert into rating values('tt0000019',5.2,31);
insert into rating values('tt0000020',4.8,336);



CREATE TABLE episode(
    id int IDENTITY(1,1),
    titleId VARCHAR(45),
    parentId VARCHAR(45),
    season int,
    episode int,
    PRIMARY KEY (id),
    FOREIGN KEY (titleId) REFERENCES title(id),
    FOREIGN KEY (parentId) REFERENCES title(id)
);

insert into episode values('tt0000001','tt0000001',1,2);
insert into episode values('tt0000001','tt0000001',1,3);
insert into episode values('tt0000001','tt0000001',1,4);
insert into episode values('tt0000001','tt0000001',1,5);
insert into episode values('tt0000001','tt0000001',1,6);
insert into episode values('tt0000002','tt0000002',1,1);
insert into episode values('tt0000003','tt0000003',1,1);
insert into episode values('tt0000003','tt0000003',1,2);
insert into episode values('tt0000003','tt0000003',1,3);
insert into episode values('tt0000003','tt0000003',1,4);
insert into episode values('tt0000003','tt0000003',1,5);
insert into episode values('tt0000003','tt0000003',1,6);
insert into episode values('tt0000003','tt0000003',1,7);
insert into episode values('tt0000004','tt0000004',2,1);
insert into episode values('tt0000004','tt0000004',2,2);
insert into episode values('tt0000004','tt0000004',2,3);
insert into episode values('tt0000004','tt0000004',2,4);
insert into episode values('tt0000004','tt0000004',2,5);
insert into episode values('tt0000005','tt0000005',2,1);
insert into episode values('tt0000006','tt0000006',2,1);
insert into episode values('tt0000007','tt0000007',2,1);
insert into episode values('tt0000008','tt0000008',2,1);
insert into episode values('tt0000008','tt0000008',2,2);
insert into episode values('tt0000008','tt0000008',2,3);
insert into episode values('tt0000008','tt0000008',2,4);
insert into episode values('tt0000009','tt0000009',2,1);
insert into episode values('tt0000009','tt0000009',2,2);
insert into episode values('tt0000009','tt0000009',2,3);
insert into episode values('tt0000009','tt0000009',2,4);
insert into episode values('tt0000010','tt0000010',2,1);
insert into episode values('tt0000011','tt0000011',2,1);
insert into episode values('tt0000012','tt0000012',2,1);
insert into episode values('tt0000013','tt0000013',2,1);
insert into episode values('tt0000014','tt0000014',2,1);
insert into episode values('tt0000015','tt0000015',3,1);
insert into episode values('tt0000015','tt0000015',3,2);
insert into episode values('tt0000015','tt0000015',3,3);
insert into episode values('tt0000015','tt0000015',3,4);
insert into episode values('tt0000016','tt0000016',3,1);
insert into episode values('tt0000017','tt0000017',3,1);
insert into episode values('tt0000018','tt0000018',3,1);
insert into episode values('tt0000019','tt0000019',3,1);
insert into episode values('tt0000020','tt0000020',3,1);


CREATE TABLE region(
    id int IDENTITY(1,1),
    name VARCHAR(55),
    PRIMARY KEY(id)
);

insert into region values('null');
insert into region values('DE');
insert into region values('HU');
insert into region values('GR');
insert into region values('RU');
insert into region values('US');
insert into region values('UA');
insert into region values('JP');
insert into region values('FR');
insert into region values('RO');
insert into region values('GB');
insert into region values('CA');
insert into region values('PT');
insert into region values('Fi');
insert into region values('AR');
insert into region values('PL');
insert into region values('RS');
insert into region values('UY');
insert into region values('IT');
insert into region values('BR');
insert into region values('DK');
insert into region values('TR');
insert into region values('XWW');
insert into region values('SE');
insert into region values('CZ');
insert into region values('SK');


CREATE TABLE language(
    id int IDENTITY(1,1),
    name VARCHAR(55),
    PRIMARY KEY(id)
);

insert into language values ('null');
insert into language values ('ja');
insert into language values ('en');
insert into language values ('sv');
insert into language values ('tr');

truncate table alternativeType;
CREATE TABLE alternativeType(
    id int IDENTITY(1,1),
    name VARCHAR(55),
    PRIMARY KEY(id)
);

insert into alternativeType values('null');
insert into alternativeType values('imdbDisplay');
insert into alternativeType values('original');
insert into alternativeType values('alternative');


CREATE TABLE alternativeAttribute(
    id int IDENTITY(1,1),
    name VARCHAR(55),
    PRIMARY KEY(id)
);

insert into alternativeAttribute values('null');
insert into alternativeAttribute values('literal title');
insert into alternativeAttribute values('literal English title');
insert into alternativeAttribute values('informal alternative title');
insert into alternativeAttribute values('promotional title');
insert into alternativeAttribute values('complete title');
insert into alternativeAttribute values('reissue title');
insert into alternativeAttribute values('informal title');
insert into alternativeAttribute values('premiere title');
insert into alternativeAttribute values('short title');

select * from alternativeAttribute;
CREATE TABLE alternativeTitle(
    id int IDENTITY(1,1),
    titleId VARCHAR(45),
    regionId int,
    languageId int,
    alternativeTypeId int,
    alternativeAttributeId int,
    title VARCHAR(500),
    ordering int,
    isOriginal int,
    PRIMARY KEY(id),
    FOREIGN KEY (titleId) REFERENCES title(id),
    FOREIGN KEY (regionId) REFERENCES region(id),
    FOREIGN KEY (languageId) REFERENCES language(id),
    FOREIGN KEY (alternativeTypeId) REFERENCES alternativeType(id),
    FOREIGN KEY (alternativeAttributeId) REFERENCES alternativeAttribute(id)
);
select * from alternativeTitle;
insert into alternativeTitle values('tt0000001',1,1,2,1,'Карменсіта'	,1	,0);
insert into alternativeTitle values('tt0000001',2,1,1,2,'Carmencita'	,2	,0);
insert into alternativeTitle values('tt0000001',3,1,2,1,'Carmencita - spanyol tánc'	,3	,0);
insert into alternativeTitle values('tt0000001',4,1,2,1,'Καρμενσίτα'	,4	,0);
insert into alternativeTitle values('tt0000001',5,1,2,1,'Карменсита'	,5	,0);
insert into alternativeTitle values('tt0000001',6,1,2,1,'Carmencita'	,6	,0);
insert into alternativeTitle values('tt0000001',1,1,2,1,'Carmencita'	,7	,1);
insert into alternativeTitle values('tt0000001',8,2,2,1,'カルメンチータ'	,8	,0);
insert into alternativeTitle values('tt0000002',1,1,2,1,'Le clown et ses chiens'	,1	,1);
insert into alternativeTitle values('tt0000002',9,1,2,1,'Le clown et ses chiens'	,2	,0);
insert into alternativeTitle values('tt0000002',3,1,2,1,'A bohóc és kutyái'	,3	,0);
insert into alternativeTitle values('tt0000002',2,1,1,2,'Der Clown und seine Hunde'	,4	,0);
insert into alternativeTitle values('tt0000002',10,1,2,1,'Clovnul si cainii sai'	,5	,0);
insert into alternativeTitle values('tt0000002',5,1,2,1,'Клоун и его собаки'	,6	,0);
insert into alternativeTitle values('tt0000002',6,1,1,3,'The Clown and His Dogs'	,7	,0);
insert into alternativeTitle values('tt0000002',8,2,2,1,'道化師と犬'	,8	,0);
insert into alternativeTitle values('tt0000003',10,1,2,1,'Sarmanul Pierrot'	,1	,0);
insert into alternativeTitle values('tt0000003',3,1,2,1,'Szegény Pierrot'	,2	,0);
insert into alternativeTitle values('tt0000003',8,2,2,1,'哀れなピエロ'	,3	,0);
insert into alternativeTitle values('tt0000003',1,1,2,1,'Бідний Пєро'	,4	,0);
insert into alternativeTitle values('tt0000003',5,1,2,1,'Бедный Пьеро',5,0);
insert into alternativeTitle values('tt0000003',1,1,2,1,'Pauvre Pierrot',6,1);
insert into alternativeTitle values('tt0000003',11,1,2,1,'Poor Pierrot',7,0);
insert into alternativeTitle values('tt0000003',9,1,2,1,'Pauvre Pierrot',8,0);
insert into alternativeTitle values('tt0000003',2,1,1,2,'Armer Pierrot',9,0);
insert into alternativeTitle values('tt0000004',1,1,2,1,'Un bon bock',1,1);
insert into alternativeTitle values('tt0000004',9,1,2,1,'Un bon bock',2,0);
insert into alternativeTitle values('tt0000004',2,1,1,2,'Ein gutes Glas Bier',3,0);
insert into alternativeTitle values('tt0000004',10,1,2,1,'Un ţap de bere',4,0);
insert into alternativeTitle values('tt0000004',5,1,2,1,'Полная кружка пива',5,0);
insert into alternativeTitle values('tt0000004',8,2,2,1,'一杯のビール',6,0);
insert into alternativeTitle values('tt0000004',1,1,1,1,'A Good Beer',7,0);
insert into alternativeTitle values('tt0000004',3,1,2,1,'Egy jó pohár sör',8,0);
insert into alternativeTitle values('tt0000005',6,1,2,1,'Blacksmith Scene',10,0);
insert into alternativeTitle values('tt0000005',1,1,2,1,'Blacksmith Scene',11,1);
insert into alternativeTitle values('tt0000005',11,1,1,4,'The Blacksmiths Forge',12,0);
insert into alternativeTitle values('tt0000005',6,1,2,1,'Blacksmithing Scene',1,0);
insert into alternativeTitle values('tt0000005',7,1,2,1,'Ковальська сцена',2,0);
insert into alternativeTitle values('tt0000005',5,1,2,1,'Сцена в кузне',3,0);
insert into alternativeTitle values('tt0000005',12,3,2,1,'Blacksmith Scene',4,0);
insert into alternativeTitle values('tt0000005',11,1,1,4,'Blacksmith Shop',5,0);
insert into alternativeTitle values('tt0000005',6,1,2,1,'Blacksmith Scene #1',6,0);
insert into alternativeTitle values('tt0000005',6,1,1,4,'Blacksmithing',7,0);
insert into alternativeTitle values('tt0000005',2,1,1,2,'Schmiedszene',8,0);
insert into alternativeTitle values('tt0000005',3,1,2,1,'A patkolókovács',9,0);
insert into alternativeTitle values('tt0000006',5,1,2,1,'Китайский опиумный притон',1,0);
insert into alternativeTitle values('tt0000006',13,1,1,5,'Chinezes Fumadores de Ópio',2,0);
insert into alternativeTitle values('tt0000006',6,1,2,1,'Chinese Opium Den',3,0);
insert into alternativeTitle values('tt0000006',3,1,2,1,'Kínai ópiumbarlang',4,0);
insert into alternativeTitle values('tt0000006',1,1,2,1,'Chinese Opium Den',5,1);
insert into alternativeTitle values('tt0000006',2,1,1,2,'Chinesische Opiumhöhle',6,0);
insert into alternativeTitle values('tt0000007',6,1,2,1,'Corbett and Courtney Before the Kinetograph',1,0);
insert into alternativeTitle values('tt0000007',1,1,2,1,'Corbett and Courtney Before the Kinetograph',2,1);
insert into alternativeTitle values('tt0000007',3,1,2,1,'A Corbett-Courtney bokszmeccs',3,0);
insert into alternativeTitle values('tt0000007',8,2,2,1,'キネトグラフの前のコーベットとコートニー',4,0);
insert into alternativeTitle values('tt0000007',6,1,2,1,'The Corbett-Courtney Fight',5,0);
insert into alternativeTitle values('tt0000007',6,1,2,1,'Jim Corbett vs. Peter Courtney',6,0);
insert into alternativeTitle values('tt0000007',1,1,1,1,'Edison Kinetoscopic Record of Boxers',7,0);
insert into alternativeTitle values('tt0000007',5,1,2,1,'Корбетт и Кортни перед кинематографом',8,0);
insert into alternativeTitle values('tt0000007',2,1,1,2,'Corbett und Courtney vor dem Kinetographen',9,0);
insert into alternativeTitle values('tt0000008',1,1,1,1,'Fred Otts Sneeze',10,0);
insert into alternativeTitle values('tt0000008',2,1,1,2,'Edison kinetoskopische Aufnahme eines Niesens',11,0);
insert into alternativeTitle values('tt0000008',3,1,2,1,'Edison asszisztense tüsszent',1,0);
insert into alternativeTitle values('tt0000008',8,2,2,1,'フレッド・オット－のくしゃみ',2,0);
insert into alternativeTitle values('tt0000008',6,1,1,6,'Edison Kinetoscopic Record of a Sneeze, January 7, 1894',3,0);
insert into alternativeTitle values('tt0000008',6,1,2,1,'Edison Kinetoscopic Record of a Sneeze',4,0);
insert into alternativeTitle values('tt0000008',1,1,2,1,'Edison Kinetoscopic Record of a Sneeze',5,1);
insert into alternativeTitle values('tt0000008',2,1,1,2,'Fred Otts Niesen',6,0);
insert into alternativeTitle values('tt0000008',	5,	1,	2,	1,	'Чих, записанный на кинетоскоп Эдисона'	,7	,0);
insert into alternativeTitle values('tt0000008',	6,	1,	1,	7,	'The Films of Thomas A Edison presented by Raymond Rohauer'	,8	,0);
insert into alternativeTitle values('tt0000008',	7,	1,	2,	1,	'Чхання Фреда Отта'	,9	,0);
insert into alternativeTitle values('tt0000009',	1,	1,	2,	1,	'Miss Jerry'	,1	,1);
insert into alternativeTitle values('tt0000009',	2,	1,	1,	2,	'Fräulein Jerry'	,2	,0);
insert into alternativeTitle values('tt0000009',	3,	1,	2,	1,	'Miss Jerry'	,3	,0);
insert into alternativeTitle values('tt0000009',	6,	1,	2,	1,	'Miss Jerry'	,4	,0);
insert into alternativeTitle values('tt0000010',	7,	1,	2,	1,	'Вихід робітників із фабрики'	,10	,0);
insert into alternativeTitle values('tt0000010',	24,	1,	2,	1,	'La salida de la fábrica Lumière en Lyon'	,11	,0);
insert into alternativeTitle values('tt0000010',	14,	1,	1,	8,	'Työntekijät poistuvat Lumière-tehtaalta'	,12	,0);
insert into alternativeTitle values('tt0000010',	3,	1,	2,	1,	'A munkaidő vége'	,13	,0);
insert into alternativeTitle values('tt0000010',	16,	1,	2,	1,	'Wyjście robotników z fabryki'	,14	,0);
insert into alternativeTitle values('tt0000010',	14,	4,	1,	8,	'Lumière-fabrikens arbetare'	,15	,0);
insert into alternativeTitle values('tt0000010',	6,	1,	2,	1,	'Exiting the Factory'	,16	,0);
insert into alternativeTitle values('tt0000010',	9,	1,	2,	1,	'La sortie de lusine Lumière'	,17	,0);
insert into alternativeTitle values('tt0000010',	1,	1,	2,	1,	'La sortie de lusine Lumière à Lyon'	,18	,1);
insert into alternativeTitle values('tt0000010',	9,	1,	2,	1,	'La sortie des usines Lumière'	,19	,0);
insert into alternativeTitle values('tt0000010',	15,	1,	1,	1,	'La salida de los obreros de la fábrica Lumière'	,1	,0);
insert into alternativeTitle values('tt0000010',	17,	1,	2,	1,	'Радници напуштају фабрику Лимијер'	,20	,0);
insert into alternativeTitle values('tt0000010',	6,	1,	2,	1,	'Leaving the Factory'	,21	,0);
insert into alternativeTitle values('tt0000010',	17,	1,	1,	9,	'Salida de obreros de la fábrica Lumiere'	,22	,0);
insert into alternativeTitle values('tt0000010',	9,	1,	1,	4,	'La sortie des ouvriers de lusine Lumière'	,23	,0);
insert into alternativeTitle values('tt0000010',	19,	1,	2,	1,	'Luscita dalle fabbriche Lumière'	,24	,0);
insert into alternativeTitle values('tt0000010',	5,	1,	2,	1,	'Выход рабочих с фабрики Люмьер'	,25	,0);
insert into alternativeTitle values('tt0000010',	20,	1,	1,	1,	'A Saída dos Operários da Fábrica Lumière'	,2	,0);
insert into alternativeTitle values('tt0000010',	6,	1,	2,	1,	'Employees Leaving the Lumière Factory'	,3	,0);
insert into alternativeTitle values('tt0000010',	9,	1,	1,	10,	'Sortie dusine'	,4	,0);
insert into alternativeTitle values('tt0000010',	9,	1,	2,	1,	'La sortie de lusine Lumière à Lyon'	,5	,0);
insert into alternativeTitle values('tt0000010',	12,	3,	2,	1,	'La sortie de lusine Lumière à Lyon'	,6	,0);
insert into alternativeTitle values('tt0000010',	2,	1,	2,	1,	'Arbeiter verlassen die Lumière-Werke'	,7	,0);
insert into alternativeTitle values('tt0000010',	6,	1,	2,	1,	'Workers Leaving the Lumière Factory'	,8	,0);
insert into alternativeTitle values('tt0000010',	8,	2,	2,	1,	'工場の出口'	,9	,0);
insert into alternativeTitle values('tt0000011',	2,	1,	2,	1,	'Akrobatisches Potpourri'	,1	,0);
insert into alternativeTitle values('tt0000011',	1,	1,	2,	1,	'Akrobatisches Potpourri'	,2	,1);
insert into alternativeTitle values('tt0000011',	5,	1,	2,	1,	'Акробатическая смесь'	,3	,0);
insert into alternativeTitle values('tt0000012',	14,	1,	1,	8,	'Juna saapuu asemalle'	,10	,0);
insert into alternativeTitle values('tt0000012',	2,	1,	2,	1,	'Ankunft eines Zuges in La Ciotat'	,11	,0);
insert into alternativeTitle values('tt0000012',	3,	1,	2,	1,	'A vonat érkezése'	,12	,0);
insert into alternativeTitle values('tt0000012',	5,	1,	2,	1,	'Прибытие поезда на вокзал города Ла-Сьота'	,13	,0);
insert into alternativeTitle values('tt0000012',	21,	1,	1,	1,	'Toget kører ind på Le Ciotat'	,14	,0);
insert into alternativeTitle values('tt0000012',	22,	5,	2,	1,	'Bir trenin La Ciotat garına varışı'	,15	,0);
insert into alternativeTitle values('tt0000012',	11,	1,	2,	1,	'The Arrival of a Train'	,16	,0);
insert into alternativeTitle values('tt0000012',	11,	1,	2,	1,	'Train Pulling into a Station'	,17	,0);
insert into alternativeTitle values('tt0000012',	9,	1,	2,	1,	'Larrivée dun train à La Ciotat'	,18	,0);
insert into alternativeTitle values('tt0000012',	19,	1,	1,	1,	'Larrivo di un treno nella stazione di La Ciotat'	,19	,0);
insert into alternativeTitle values('tt0000012',	6,	1,	2,	1,	'The Arrival of a Train'	,1	,0);
insert into alternativeTitle values('tt0000012',	9,	1,	2,	1,	'Larrivée dun train en gare de La Ciotat'	,20	,0);
insert into alternativeTitle values('tt0000012',	16,	1,	2,	1,	'Przyjazd pociągu na stację'	,21	,0);
insert into alternativeTitle values('tt0000012',	23,	3,	2,	1,	'The Arrival of a Train'	,22	,0);
insert into alternativeTitle values('tt0000012',	24,	1,	2,	1,	'La llegada de un tren a la estación de La Ciotat'	,23	,0);
insert into alternativeTitle values('tt0000012',	12,	3,	2,	1,	'Larrivée dun train à La Ciotat'	,24	,0);
insert into alternativeTitle values('tt0000012',	8,	2,	2,	1,	'ラ・シオタ駅への列車の到着'	,25	,0);
insert into alternativeTitle values('tt0000012',	7,	1,	2,	1,	'Прибуття потяга на вокзал Ла-Сьота'	,26	,0);
insert into alternativeTitle values('tt0000012',	23,	3,	2,	1,	'The Arrival of a Train'	,27	,0);
insert into alternativeTitle values('tt0000012',	19,	1,	1,	1,	'Larrivo di un treno alla stazione di La Ciotat'	,28	,0);
insert into alternativeTitle values('tt0000012',	23,	1,	2,	1,	'The Arrival of a Train'	,2	,0);
insert into alternativeTitle values('tt0000012',	6,	1,	2,	1,	'The Arrival of the Mail Train'	,3	,0);
insert into alternativeTitle values('tt0000012',	1,	1,	2,	1,	'Larrivée dun train à La Ciotat'	,4	,1);
insert into alternativeTitle values('tt0000012',	26,	1,	2,	1,	'Príchod vlaku do stanice La Ciotat'	,5	,0);
insert into alternativeTitle values('tt0000012',	17,	1,	2,	1,	'Долазак воза на станицу'	,6	,0);
insert into alternativeTitle values('tt0000012',	20,	1,	2,	1,	'A Chegada de um Trem à Estação'	,7	,0);
insert into alternativeTitle values('tt0000012',	14,	4,	1,	8,	'Tåget anländer till stationen'	,8	,0);
insert into alternativeTitle values('tt0000012',	23,	3,	2,	1,	'The Arrival of a Train at La Ciotat'	,9	,0);
insert into alternativeTitle values('tt0000013',	3,	1,	2,	1,	'A kongresszus tagjainak partraszállása'	,10	,0);
insert into alternativeTitle values('tt0000013',	23,	3,	2,	1,	'The Photographical Congress Arrives in Lyon'	,11	,0);
insert into alternativeTitle values('tt0000013',	9,	1,	2,	1,	'Arrivée des congressistes à Neuville-sur-Saône'	,12	,0);
insert into alternativeTitle values('tt0000013',	7,	1,	2,	1,	'Прибуття делегатів на фотоконгрес у Ліоні'	,13	,0);
insert into alternativeTitle values('tt0000013',	17,	1,	2,	1,	'Fotografi napuštaju palubu u Lionu'	,14	,0);
insert into alternativeTitle values('tt0000013',	11,	1,	2,	1,	'The Photographical Congress Arrives in Lyon'	,1	,0);
insert into alternativeTitle values('tt0000013',	24,	1,	2,	1,	'El desembarco del congreso de fotografía en Lyon'	,2	,0);
insert into alternativeTitle values('tt0000013',	1,	1,	2,	1,	'Le débarquement du congrès de photographie à Lyon'	,3	,1);
insert into alternativeTitle values('tt0000013',	9,	1,	2,	1,	'Le débarquement du congrès de photographie à Lyon'	,4	,0);
insert into alternativeTitle values('tt0000013',	5,	1,	2,	1,	'Прибытие делегатов на фотоконгресс в Лионе'	,5	,0);
insert into alternativeTitle values('tt0000013',	9,	1,	2,	1,	'Le débarquement des congressistes à Neuville'	,6	,0);
insert into alternativeTitle values('tt0000013',	6,	1,	2,	1,	'The Photographical Congress Arrives in Lyon'	,7	,0);
insert into alternativeTitle values('tt0000013',	9,	1,	2,	1,	'Neuville-sur-Saône: Débarquement du congrès des photographes à Lyon'	,8	,0);
insert into alternativeTitle values('tt0000013',	16,	1,	2,	1,	'Przybycie delegatów na kongres fotograficzny w Lyonie'	,9	,0);
insert into alternativeTitle values('tt0000014',	20,	1,	2,	1,	'O Regador Regado'	,10	,0);
insert into alternativeTitle values('tt0000014',	6,	1,	2,	1,	'The Sprayer Sprayed'	,11	,0);
insert into alternativeTitle values('tt0000014',	9,	1,	2,	1,	'Larroseur arrosé'	,12	,0);
insert into alternativeTitle values('tt0000014',	1,	1,	2,	1,	'Larroseur arrosé'	,13	,1);
insert into alternativeTitle values('tt0000014',	17,	1,	2,	1,	'Заливена вода'	,14	,0);
insert into alternativeTitle values('tt0000014',	6,	1,	2,	1,	'The Waterer Watered'	,15	,0);
insert into alternativeTitle values('tt0000014',	9,	1,	2,	1,	'Arroseur et arrosé'	,16	,0);
insert into alternativeTitle values('tt0000014',	14,	1,	1,	1,	'Puutarhuri'	,17	,0);
insert into alternativeTitle values('tt0000014',	21,	1,	2,	1,	'Pokropený kropic'	,18	,0);
insert into alternativeTitle values('tt0000014',	7,	1,	2,	1,	'Политий поливальник'	,19	,0);
insert into alternativeTitle values('tt0000014',	6,	1,	2,	1,	'The Sprinkler Sprinkled'	,1	,0);
insert into alternativeTitle values('tt0000014',	2,	1,	2,	1,	'Der begossene Gärtner'	,20	,0);
insert into alternativeTitle values('tt0000014',	19,	1,	2,	1,	'El regador regado'	,21	,0);
insert into alternativeTitle values('tt0000014',	14,	4,	1,	1,	'Trädgårsmästarn'	,22	,0);
insert into alternativeTitle values('tt0000014',	9,	1,	2,	1,	'Le jardinier et le petit espiègle'	,23	,0);
insert into alternativeTitle values('tt0000014',	5,	1,	2,	1,	'Политый поливальщик'	,24	,0);
insert into alternativeTitle values('tt0000014',	6,	1,	2,	1,	'Tables Turned on the Gardener'	,2	,0);
insert into alternativeTitle values('tt0000014',	21,	1,	1,	1,	'Gartneren vandes'	,3	,0);
insert into alternativeTitle values('tt0000014',	3,	1,	2,	1,	'A megöntözött öntöző'	,4	,0);
insert into alternativeTitle values('tt0000014',	24,	1,	1,	1,	'Vattnaren bevattnad'	,5	,0);
insert into alternativeTitle values('tt0000014',	9,	1,	1,	9,	'Le jardinier'	,6	,0);
insert into alternativeTitle values('tt0000014',	16,	1,	1,	1,	'Oblany ogrodnik'	,7	,0);
insert into alternativeTitle values('tt0000014',	19,	1,	1,	1,	'Linnaffiatore annaffiato'	,8	,0);
insert into alternativeTitle values('tt0000014',	8,	2,	2,	1,	'水をかけられた散水夫'	,9	,0);
insert into alternativeTitle values('tt0000015',	5,	1,	2,	1,	'Вoкруг кабинки'	,1	,0);
insert into alternativeTitle values('tt0000015',	3,	1,	2,	1,	'Egy kabin körül'	,2	,0);
insert into alternativeTitle values('tt0000015',	6,	1,	1,	3,	'Around a Bathing Hut'	,3	,0);
insert into alternativeTitle values('tt0000015',	9,	1,	2,	1,	'Autour dune cabine'	,4	,0);
insert into alternativeTitle values('tt0000015',	1,	1,	2,	1,	'Autour dune cabine'	,5	,1);
insert into alternativeTitle values('tt0000015',	7,	1,	2,	1,	'Навколо кабінки'	,6	,0);
insert into alternativeTitle values('tt0000016',	14,	4,	1,	8,	'Båten lämnar hamnet'	,10	,0);
insert into alternativeTitle values('tt0000016',	16,	1,	2,	1,	'Łódź wypływająca z portu'	,11	,0);
insert into alternativeTitle values('tt0000016',	17,	1,	2,	1,	'Brod napušta luku'	,12	,0);
insert into alternativeTitle values('tt0000016',	23,	3,	2,	1,	'Boat Leaving the Port'	,1	,0);
insert into alternativeTitle values('tt0000016',	9,	1,	2,	1,	'La sortie du port'	,2	,0);
insert into alternativeTitle values('tt0000016',	5,	1,	2,	1,	'Лодка выходит из порта'	,3	,0);
insert into alternativeTitle values('tt0000016',	3,	1,	2,	1,	'Kikötőből távozó bárka'	,4	,0);
insert into alternativeTitle values('tt0000016',	11,	1,	2,	1,	'Boat Leaving the Port'	,5	,0);
insert into alternativeTitle values('tt0000016',	14,	1,	1,	8,	'Vene lähtee satamasta'	,6	,0);
insert into alternativeTitle values('tt0000016',	9,	1,	2,	1,	'Barque sortant du port'	,7	,0);
insert into alternativeTitle values('tt0000016',	6,	1,	2,	1,	'Boat Leaving the Port'	,8	,0);
insert into alternativeTitle values('tt0000016',	1,	1,	2,	1,	'Barque sortant du port'	,9	,1);
insert into alternativeTitle values('tt0000017',	1,	1,	2,	1,	'Italienischer Bauerntanz'	,1	,1);
insert into alternativeTitle values('t0000017',	2,	1,	1,	9,	'Bauerntanz zweier Kinder'	,2	,0);
insert into alternativeTitle values('tt0000017',	2,	1,	2,	1,	'Italienischer Bauerntanz'	,3	,0);
insert into alternativeTitle values('tt0000017',	5,	1,	2,	1,	'Итальянский крестьянский танец'	,4	,0);
insert into alternativeTitle values('tt0000018',	2,	1,	2,	1,	'Das boxende Känguruh'	,1	,0);
insert into alternativeTitle values('tt0000018',	10,	1,	2,	1,	'Cangurul boxer'	,2	,0);
insert into alternativeTitle values('tt0000018',	1,	1,	2,	1,	'Das boxende Känguruh'	,3	,1);
insert into alternativeTitle values('tt0000018',	5,	1,	2,	1,	'Бокс с кенгуру'	,4	,0);
insert into alternativeTitle values('tt0000018',	11,	1,	1,	7,	'Mr. Delaware and the Boxing Kangaroo'	,5	,0);
insert into alternativeTitle values('tt0000019',	11,	1,	2,	1,	'The Clown Barber'	,1	,0);
insert into alternativeTitle values('tt0000019',	1,	1,	2,	1,	'The Clown Barber'	,2	,1);
insert into alternativeTitle values('tt0000020',	1,	1,	2,	1,	'The Derby 1895'	,1	,1);
insert into alternativeTitle values('tt0000020',	5,	1,	2,	1,	'Дерби 1895'	,2	,0);
insert into alternativeTitle values('tt0000020',	11,	1,	2,	1,	'The Derby 1895'	,3	,0);
