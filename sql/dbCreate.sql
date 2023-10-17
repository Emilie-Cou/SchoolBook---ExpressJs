USE SchoolBook_Express;
GO

create table [Classe] (
	[IdClasse] NVARCHAR(5) NOT NULL,
	[NomClasse] NVARCHAR(30) NOT NULL,
	[IdProf] NVARCHAR(10) NOT NULL,
	[Description] NVARCHAR(500),
	[CourteDescription] NVARCHAR(100),
	[Img] NVARCHAR(200) NULL,
);


create table [Professor] (
	[IdProf] NVARCHAR(10) UNIQUE NOT NULL,
	[Password] NVARCHAR(20) UNIQUE NOT NULL,
	[Nom] NVARCHAR(30) NULL,
	[IdClasse] NVARCHAR(5) NOT NULL,
	[Email] NVARCHAR(75),
	[Img] NVARCHAR(200) NULL,
);


create table [Student] (
	[IdStudent] NVARCHAR(10) NOT NULL,
	[Password1] NVARCHAR(20) NOT NULL,
	[Password2] NVARCHAR(20) NULL,
	[Nom] NVARCHAR(30),
	[Prénom] NVARCHAR(30),
	[IdClasse] NVARCHAR(5) NOT NULL,
	[SeparatedParents] NVARCHAR(5),
	[Email1] NVARCHAR(75),
	[Email2] NVARCHAR(75),
);


create table [Commentaire] (
	[Prenom] NVARCHAR(30) NOT NULL,
	[Content] NVARCHAR(MAX) NOT NULL,
);


create table [Blog] (
	[IdClasse] NVARCHAR(5) NOT NULL,
	[IdBlog] INT IDENTITY(1,1) NOT NULL,
	[Titre] NVARCHAR(50) NOT NULL,
	[Img] NVARCHAR(200),
	[Desc] NVARCHAR(MAX) NOT NULL,
);


create table [BlogCom] (
	[IdClasse] NVARCHAR(5) NOT NULL,
	[IdBlog] INT NOT NULL,
	[IdCom] INT IDENTITY(1,1) NOT NULL,
	[Prenom] NVARCHAR(30) NOT NULL,
	[Content] NVARCHAR(MAX) NOT NULL,
);


create table [MsgParent] (
	[IdClasse] NVARCHAR(5) NOT NULL,
	[IdMsg] INT IDENTITY(1,1) NOT NULL,
	[Prenom] NVARCHAR(30),
	[Content] NVARCHAR(MAX),
)


INSERT INTO [Commentaire]([Prenom], [Content])
VALUES	('Zaza','Hello World'),
		('Princesse', 'Coucou Emilie');


INSERT INTO [Blog]([IdClasse], [Titre], [Img], [Desc])
VALUES	('P1A', 'Lecture', '/ecole/Ecole.jpg', 'La lecture est un apprentissage difficile.'),
		('P2A', 'Annif', '/ecole/ecolehaut.jpg', 'Jouyeux anniversaire');


INSERT INTO [BlogCom] ([IdClasse], [IdBlog], [Prenom], [Content])
VALUES	('P1A', 1, 'prenom test', 'Ceci est un message test'),
		('P2A', 2, 'prenom bis', 'Ceci est un autre message test')


select * from [Classe];
select * from [Professor];
select * from [Student];
select * from [Commentaire];
select * from [Blog];
select * from [BlogCom];
select * from [MsgParent];


-- A faire / trouver
-- J'ai @user et @password
-- Je dois v�rifier si ils sont bons
-- Puis le comparer aux id
-- Puis r�cup�rer l'id classe et prof/�l�ve correspondant
-- Et afficher la page en fonction de cet id


-- A mettre � jour
-- Cr�taion des id et psw (random)
-- [IdProf] dans [Classe]

