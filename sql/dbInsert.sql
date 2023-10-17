use SchoolBook_Express;
go

-- Professeurs pour les classes de Maternelle (M1 à M3)
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('CA1234', 'M1a12345', 'Camille', 'M1a', 'camille@ecole.com', '/profs/cruella.jpg'),
('DA5678', 'M1b12345', 'David', 'M1b', 'david@ecole.com', '/profs/crochet.jpg'),
('EL1234', 'M2a12345', 'Elise', 'M2a', 'elise@ecole.com', '/profs/damedecoeur.jpg'),
('FL5678', 'M2b12345', 'Florian', 'M2b', 'florian@ecole.com', '/profs/facilier.jpg'),
('GI1234', 'M3a12345', 'Giselle', 'M3a', 'giselle@ecole.com', '/profs/malefique.jpg'),
('HU5678', 'M3b12345', 'Hugo', 'M3b', 'hugo@ecole.com', '/profs/febus.jpg');
-- Professeurs pour les classes de Primaire (P1 à P6)
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('AL1234', 'P1a12345', 'Alexis', 'P1a', 'alexis@ecole.com', '/profs/jafar.jpg'),
('BE5678', 'P1b12345', 'Béatrice', 'P1b', 'beatrice@ecole.com', '/profs/meregothel.jpg'),
('CL1234', 'P2a12345', 'Clément', 'P2a', 'clement@ecole.com', '/profs/hades.jpg'),
('DE5678', 'P2b12345', 'Delphine', 'P2b', 'delphine@ecole.com', '/profs/mmemime.jpg'),
('EM1234', 'P3a12345', 'Emile', 'P3a', 'emile@ecole.com', '/profs/hans.jpg'),
('FA5678', 'P3b12345', 'Fanny', 'P3b', 'fanny@ecole.com', '/profs/ursula.jpg'),
('GA1234', 'P4a12345', 'Gaston', 'P4a', 'gaston@ecole.com', '/profs/gaston.jpg'),
('HE5678', 'P4b12345', 'Héléne', 'P4b', 'helene@ecole.com', '/profs/vieillereine.jpg'),
('IS1234', 'P5a12345', 'Isabelle', 'P5a', 'isabelle@ecole.com', '/profs/shanyu.jpg'),
('JU5678', 'P5b12345', 'Julien', 'P5b', 'julien@ecole.com', '/profs/ratcliffe.jpg'),
('KA1234', 'P6a12345', 'Karine', 'P6a', 'karine@ecole.com', '/profs/tamatoa.jpg'),
('LO5678', 'P6b12345', 'Louis', 'P6b', 'louis@ecole.com', '/profs/scar.jpg');
-- Directrice
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('MA1234', 'Dir12345', 'Maratre', 'DIR', 'directrice@ecole.com', '/profs/maratre.jpg');
-- Secrétaire 1
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('AN1234', 'Sec12345', 'Anastasie', 'SEC', 'secretaire1@ecole.com', '/profs/anastasie.jpg');
-- Secrétaire 2
INSERT INTO [Professor] ([IdProf], [Password], [Nom], [IdClasse], [Email], [Img])
VALUES
('JA5678', 'Sec12346', 'Javotte', 'SEC', 'secretaire2@ecole.com', '/profs/javotte.jpg');


-- Classes de Maternelle (M1 à M3)
INSERT INTO [Classe] ([IdClasse], [NomClasse], [IdProf], [Description], [CourteDescription], [Img])
VALUES
('M1a', 'Maternelle 1A', 'CA1234', 'Apprentissage et jeu pour les plus petits.', 'Vive les jeux', '/ecole/Ecole.jpg'),
('M1b', 'Maternelle 1B', 'DA5678', 'Découverte et créativité pour les tout-petits.', 'Quelle créativité', '/ecole/Ecole.jpg'),
('M2a', 'Maternelle 2A', 'EL1234', 'Continuation de lapprentissage et de lexploration.', 'Les explorateurs font des explorations', '/ecole/Ecole.jpg'),
('M2b', 'Maternelle 2B', 'FL5678', 'Jeux et découvertes pour les enfants.', 'On découvre le monde', '/ecole/Ecole.jpg'),
('M3a', 'Maternelle 3A', 'GI1234', 'Préparation pour le primaire.', 'Bientét chez les grands', '/ecole/Ecole.jpg'),
('M3b', 'Maternelle 3B', 'HU5678', 'Derniére étape avant le primaire.', 'Bientét chez les grands', '/ecole/Ecole.jpg');
-- Classes de Primaire (P1 à P6)
INSERT INTO [Classe] ([IdClasse], [NomClasse], [IdProf], [Description], [CourteDescription], [Img])
VALUES
('P1a', 'Primaire 1A', 'AL1234', 'Premier pas vers le primaire.', 'Je suis un grand', '/ecole/Ecole.jpg'),
('P1b', 'Primaire 1B', 'BE5678', 'Apprentissage et découverte pour les premiers primaires.', 'Je suis un grand', '/ecole/Ecole.jpg'),
('P2a', 'Primaire 2A', 'CL1234', 'Deuxiéme année de primaire.', 'On lit beaucoup', '/ecole/Ecole.jpg'),
('P2b', 'Primaire 2B', 'DE5678', 'Continuation de lapprentissage au primaire.', 'On écrit beaucoup', '/ecole/Ecole.jpg'),
('P3a', 'Primaire 3A', 'EM1234', 'Troisiéme année de primaire.', 'Je suis é la moitié', '/ecole/Ecole.jpg'),
('P3b', 'Primaire 3B', 'FA5678', 'étapes vers le CM1.', 'Plus que la moitié é faire', '/ecole/Ecole.jpg'),
('P4a', 'Primaire 4A', 'GA1234', 'Quatriéme année de primaire.', 'Les examens vont étre durs', '/ecole/Ecole.jpg'),
('P4b', 'Primaire 4B', 'HE5678', 'En route pour un grand voyage.', 'Les examens vont étre durs', '/ecole/Ecole.jpg'),
('P5a', 'Primaire 5A', 'IS1234', 'Cinquiéme année de primaire.', 'Derniére ligne droite', '/ecole/Ecole.jpg'),
('P5b', 'Primaire 5B', 'JU5678', 'Préparation pour la sixiéme année.', 'Derniére ligne droite', '/ecole/Ecole.jpg'),
('P6a', 'Primaire 6A', 'KA1234', 'Derniére année de primaire avant le secondaire.', 'Je suis chez les trés grands', '/ecole/Ecole.jpg'),
('P6b', 'Primaire 6B', 'LO5678', 'Préparation pour le secondaire.', 'Je suis chez les trés grands', '/ecole/Ecole.jpg');
-- Direction
INSERT INTO [Classe] ([IdClasse], [NomClasse], [IdProf], [Description], [CourteDescription], [Img])
VALUES
('Dir', 'Direction', 'MA1234', 'Direction', 'Direction', '/ecole/ecolehaut.jpg'),
('SEC', 'Secrétaire', 'AN1234', 'Secrétaire', 'Secrétaire', '/ecole/ecolehaut.jpg'),
('SEC', 'Secrétaire', 'JA5678', 'Secrétaire', 'Secrétaire', '/ecole/ecolehaut.jpg');


-- Etudiants pour Maternelle 1A (M1a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('CA12345', 'M1a1234CA', 'M1a5678CA', 'Camille', 'André', 'M1a', 'False', 'parent1@ecole.com', NULL),
('LE12346', 'M1a7890CA', 'M1a2345CA', 'Léa', 'Emile', 'M1a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('MA12347', 'M1a9123CA', 'M1a4567CA', 'Maxime', 'Antoine', 'M1a', 'False', 'parent4@ecole.com', NULL),
('AL12348', 'M1a3456CA', 'M1a6789CA', 'Alice', 'Louis', 'M1a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('EV12349', 'M1a5678CA', 'M1a0123CA', 'Eva', 'Victor', 'M1a', 'False', 'parent7@ecole.com', NULL),
('LI12340', 'M1a7890CA', 'M1a2345CA', 'Liam', 'Isabelle', 'M1a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('ZO12341', 'M1a0123CA', 'M1a3456CA', 'Zoé', 'Oliver', 'M1a', 'False', 'parent10@ecole.com', NULL),
('AN12342', 'M1a2345CA', 'M1a5678CA', 'Anna', 'Nathan', 'M1a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EM12343', 'M1a4567CA', 'M1a7890CA', 'Emma', 'Mathis', 'M1a', 'False', 'parent13@ecole.com', NULL),
('TI12344', 'M1a5678CA', 'M1a0123CA', 'Tim', 'Inés', 'M1a', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- Etudiants pour Maternelle 1B (M1b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('DA12345', 'M1b1234DA', 'M1b5678DA', 'David', 'Alice', 'M1b', 'False', 'parent16@ecole.com', NULL),
('LU12346', 'M1b7890DA', 'M1b2345DA', 'Lucas', 'Ursula', 'M1b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('SI12347', 'M1b9123DA', 'M1b4567DA', 'Simon', 'Isabelle', 'M1b', 'False', 'parent19@ecole.com', NULL),
('EN12348', 'M1b3456DA', 'M1b6789DA', 'Emma', 'Noah', 'M1b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('LI12349', 'M1b5678DA', 'M1b0123DA', 'Liam', 'Lina', 'M1b', 'False', 'parent22@ecole.com', NULL),
('EL12340', 'M1b7890DA', 'M1b2345DA', 'Ella', 'Léo', 'M1b', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('AL12341', 'M1b0123DA', 'M1b3456DA', 'Alice', 'Léon', 'M1b', 'False', 'parent25@ecole.com', NULL),
('LO12342', 'M1b2345DA', 'M1b5678DA', 'Louis', 'Olivia', 'M1b', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('MA12343', 'M1b4567DA', 'M1b7890DA', 'Mia', 'Alexis', 'M1b', 'False', 'parent28@ecole.com', NULL),
('ZI12344', 'M1b5678DA', 'M1b0123DA', 'Zoé', 'Isaac', 'M1b', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- Etudiants pour Maternelle 2A (M2a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'M2a1234EL', 'M2a5678EL', 'Elise', 'Lucas', 'M2a', 'False', 'parent31@ecole.com', NULL),
('AL12346', 'M2a7890EL', 'M2a2345EL', 'Alice', 'Léo', 'M2a', 'True', 'parent32@ecole.com', 'parent33@ecole.com'),
('LO12347', 'M2a9123EL', 'M2a4567EL', 'Louis', 'Olivia', 'M2a', 'False', 'parent34@ecole.com', NULL),
('MI12348', 'M2a2345EL', 'M2a6789EL', 'Mia', 'Isaac', 'M2a', 'True', 'parent35@ecole.com', 'parent36@ecole.com'),
('JA12349', 'M2a4567EL', 'M2a0123EL', 'Jade', 'Aaron', 'M2a', 'False', 'parent37@ecole.com', NULL),
('OL12340', 'M2a7890EL', 'M2a2345EL', 'Olivia', 'Léon', 'M2a', 'True', 'parent38@ecole.com', 'parent39@ecole.com'),
('LU12341', 'M2a0123EL', 'M2a3456EL', 'Lucas', 'Lina', 'M2a', 'False', 'parent40@ecole.com', NULL),
('AM12342', 'M2a2345EL', 'M2a5678EL', 'Amélie', 'Mathis', 'M2a', 'True', 'parent41@ecole.com', 'parent42@ecole.com'),
('EL12343', 'M2a4567EL', 'M2a0123EL', 'Eloése', 'Lucie', 'M2a', 'False', 'parent43@ecole.com', NULL),
('TH12344', 'M2a5678EL', 'M2a3456EL', 'Théo', 'Léa', 'M2a', 'True', 'parent44@ecole.com', 'parent45@ecole.com');

-- Etudiants pour Maternelle 2B (M2b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('FL12345', 'M2b1234FL', 'M2b5678FL', 'Florian', 'Léa', 'M2b', 'False', 'parent46@ecole.com', NULL),
('MI12346', 'M2b7890FL', 'M2b2345FL', 'Mia', 'Isabelle', 'M2b', 'True', 'parent47@ecole.com', 'parent48@ecole.com'),
('OL12347', 'M2b9123FL', 'M2b4567FL', 'Olivia', 'Léo', 'M2b', 'False', 'parent49@ecole.com', NULL),
('LU12348', 'M2b2345FL', 'M2b6789FL', 'Lucas', 'Lina', 'M2b', 'True', 'parent50@ecole.com', 'parent51@ecole.com'),
('AN12349', 'M2b4567FL', 'M2b0123FL', 'Anna', 'Noah', 'M2b', 'False', 'parent52@ecole.com', NULL),
('LO12340', 'M2b7890FL', 'M2b2345FL', 'Louis', 'Oliver', 'M2b', 'True', 'parent53@ecole.com', 'parent54@ecole.com'),
('LE12341', 'M2b0123FL', 'M2b3456FL', 'Léo', 'Elisabeth', 'M2b', 'False', 'parent55@ecole.com', NULL),
('SI12342', 'M2b2345FL', 'M2b5678FL', 'Simon', 'Isabella', 'M2b', 'True', 'parent56@ecole.com', 'parent57@ecole.com'),
('EN12343', 'M2b4567FL', 'M2b0123FL', 'Emma', 'Nathan', 'M2b', 'False', 'parent58@ecole.com', NULL),
('LI12344', 'M2b5678FL', 'M2b3456FL', 'Liam', 'Lina', 'M2b', 'True', 'parent59@ecole.com', 'parent60@ecole.com');

-- Etudiants pour Maternelle 3A (M3a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'M3a1234GI', 'M3a5678GI', 'Elise', 'Lucas', 'M3a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'M3a7890GI', 'M3a2345GI', 'Alice', 'Léo', 'M3a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LO12347', 'M3a9123GI', 'M3a4567GI', 'Louis', 'Olivia', 'M3a', 'False', 'parent4@ecole.com', NULL),
('MI12348', 'M3a2345GI', 'M3a6789GI', 'Mia', 'Isaac', 'M3a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('JA12349', 'M3a4567GI', 'M3a0123GI', 'Jade', 'Aaron', 'M3a', 'False', 'parent7@ecole.com', NULL),
('OL12340', 'M3a7890GI', 'M3a2345GI', 'Olivia', 'Léon', 'M3a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LU12341', 'M3a0123GI', 'M3a3456GI', 'Lucas', 'Lina', 'M3a', 'False', 'parent10@ecole.com', NULL),
('AM12342', 'M3a2345GI', 'M3a5678GI', 'Amélie', 'Mathis', 'M3a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'M3a4567GI', 'M3a0123GI', 'Eloése', 'Lucie', 'M3a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'M3a5678GI', 'M3a3456GI', 'Théo', 'Léa', 'M3a', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- Etudiants pour Maternelle 3B (M3b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('FL12345', 'M3b1234HU', 'M3b5678HU', 'Florian', 'Léa', 'M3b', 'False', 'parent16@ecole.com', NULL),
('MI12346', 'M3b7890HU', 'M3b2345HU', 'Mia', 'Isabelle', 'M3b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('OL12347', 'M3b9123HU', 'M3b4567HU', 'Olivia', 'Léo', 'M3b', 'False', 'parent19@ecole.com', NULL),
('LU12348', 'M3b2345HU', 'M3b6789HU', 'Lucas', 'Lina', 'M3b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'M3b4567HU', 'M3b0123HU', 'Anna', 'Noah', 'M3b', 'False', 'parent22@ecole.com', NULL),
('LO12340', 'M3b7890HU', 'M3b2345HU', 'Louis', 'Oliver', 'M3b', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('LE12341', 'M3b0123HU', 'M3b3456HU', 'Léo', 'Elisabeth', 'M3b', 'False', 'parent25@ecole.com', NULL),
('SI12342', 'M3b2345HU', 'M3b5678HU', 'Simon', 'Isabella', 'M3b', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('EN12343', 'M3b4567HU', 'M3b0123HU', 'Emma', 'Nathan', 'M3b', 'False', 'parent28@ecole.com', NULL),
('LI12344', 'M3b5678HU', 'M3b3456HU', 'Liam', 'Lina', 'M3b', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- Etudiants pour Primaire 1A (P1a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P1a1234AL', 'P1a5678AL', 'Emma', 'Samuel', 'P1a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P1a7890AL', 'P1a2345AL', 'Alex', 'Sophie', 'P1a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P1a9123AL', 'P1a4567AL', 'Liam', 'Isabelle', 'P1a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P1a2345AL', 'P1a6789AL', 'Olivia', 'Lucas', 'P1a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P1a4567AL', 'P1a0123AL', 'Noah', 'Océane', 'P1a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P1a7890AL', 'P1a2345AL', 'Mia', 'Isaac', 'P1a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P1a0123AL', 'P1a3456AL', 'Léa', 'Ethan', 'P1a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P1a2345AL', 'P1a5678AL', 'Liam', 'Inés', 'P1a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P1a4567AL', 'P1a0123AL', 'Elise', 'Léo', 'P1a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P1a5678AL', 'P1a3456AL', 'Théo', 'Héloése', 'P1a', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- Etudiants pour Primaire 1B (P1b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('AL12345', 'P1b1234BE', 'P1b5678BE', 'Alice', 'Léo', 'P1b', 'False', 'parent16@ecole.com', NULL),
('MI12346', 'P1b7890BE', 'P1b2345BE', 'Mia', 'Isabelle', 'P1b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('OL12347', 'P1b9123BE', 'P1b4567BE', 'Olivia', 'Léo', 'P1b', 'False', 'parent19@ecole.com', NULL),
('LU12348', 'P1b2345BE', 'P1b6789BE', 'Lucas', 'Lina', 'P1b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P1b4567BE', 'P1b0123BE', 'Anna', 'Noah', 'P1b', 'False', 'parent22@ecole.com', NULL),
('LO12340', 'P1b7890BE', 'P1b2345BE', 'Louis', 'Oliver', 'P1b', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('LE12341', 'P1b0123BE', 'P1b3456BE', 'Léo', 'Elisabeth', 'P1b', 'False', 'parent25@ecole.com', NULL),
('SI12342', 'P1b2345BE', 'P1b5678BE', 'Simon', 'Isabella', 'P1b', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('EN12343', 'P1b4567BE', 'P1b0123BE', 'Emma', 'Nathan', 'P1b', 'False', 'parent28@ecole.com', NULL),
('LI12344', 'P1b5678BE', 'P1b3456BE', 'Liam', 'Lina', 'P1b', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- Etudiants pour Primaire 2A (P2a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P2a1234CL', 'P2a5678CL', 'Elise', 'Samuel', 'P2a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P2a7890CL', 'P2a2345CL', 'Alex', 'Sophie', 'P2a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P2a9123CL', 'P2a4567CL', 'Liam', 'Isabelle', 'P2a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P2a2345CL', 'P2a6789CL', 'Olivia', 'Lucas', 'P2a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P2a4567CL', 'P2a0123CL', 'Noah', 'Océane', 'P2a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P2a7890CL', 'P2a2345CL', 'Mia', 'Isaac', 'P2a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P2a0123CL', 'P2a3456CL', 'Léa', 'Ethan', 'P2a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P2a2345CL', 'P2a5678CL', 'Liam', 'Inés', 'P2a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P2a4567CL', 'P2a0123CL', 'Elise', 'Léo', 'P2a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P2a5678CL', 'P2a3456CL', 'Théo', 'Héloése', 'P2a', 'True', 'parent14@ecole.com', 'parent15@ecole.com');

-- Etudiants pour Primaire 2B (P2b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('AL12345', 'P2b1234DE', 'P2b5678DE', 'Alice', 'Léo', 'P2b', 'False', 'parent16@ecole.com', NULL),
('MI12346', 'P2b7890DE', 'P2b2345DE', 'Mia', 'Isabelle', 'P2b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('OL12347', 'P2b9123DE', 'P2b4567DE', 'Olivia', 'Léo', 'P2b', 'False', 'parent19@ecole.com', NULL),
('LU12348', 'P2b2345DE', 'P2b6789DE', 'Lucas', 'Lina', 'P2b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P2b4567DE', 'P2b0123DE', 'Anna', 'Noah', 'P2b', 'False', 'parent22@ecole.com', NULL),
('LO12340', 'P2b7890DE', 'P2b2345DE', 'Louis', 'Oliver', 'P2b', 'True', 'parent23@ecole.com', 'parent24@ecole.com'),
('LE12341', 'P2b0123DE', 'P2b3456DE', 'Léo', 'Elisabeth', 'P2b', 'False', 'parent25@ecole.com', NULL),
('SI12342', 'P2b2345DE', 'P2b5678DE', 'Simon', 'Isabella', 'P2b', 'True', 'parent26@ecole.com', 'parent27@ecole.com'),
('EN12343', 'P2b4567DE', 'P2b0123DE', 'Emma', 'Nathan', 'P2b', 'False', 'parent28@ecole.com', NULL),
('LI12344', 'P2b5678DE', 'P2b3456DE', 'Liam', 'Lina', 'P2b', 'True', 'parent29@ecole.com', 'parent30@ecole.com');

-- Etudiants pour Primaire 3A (P3a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P3a1234EM', 'P3a5678EM', 'Emma', 'Samuel', 'P3a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P3a7890EM', 'P3a2345EM', 'Alex', 'Sophie', 'P3a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P3a9123EM', 'P3a4567EM', 'Liam', 'Isabelle', 'P3a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P3a2345EM', 'P3a6789EM', 'Olivia', 'Lucas', 'P3a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P3a4567EM', 'P3a0123EM', 'Noah', 'Océane', 'P3a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P3a7890EM', 'P3a2345EM', 'Mia', 'Isaac', 'P3a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P3a0123EM', 'P3a3456EM', 'Léa', 'Ethan', 'P3a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P3a2345EM', 'P3a5678EM', 'Liam', 'Inés', 'P3a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P3a4567EM', 'P3a0123EM', 'Elise', 'Léo', 'P3a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P3a5678EM', 'P3a3456EM', 'Théo', 'Héloése', 'P3a', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P3a1234EM', 'P3a5678EM', 'Amélie', 'Mathis', 'P3a', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P3a7890EM', 'P3a2345EM', 'Rose', 'Olivier', 'P3a', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P3a9123EM', 'P3a4567EM', 'Thomas', 'Héloése', 'P3a', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P3a2345EM', 'P3a6789EM', 'Victor', 'Isabella', 'P3a', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P3a4567EM', 'P3a0123EM', 'Anna', 'Nathan', 'P3a', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P3a7890EM', 'P3a2345EM', 'Liam', 'Lina', 'P3a', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 3B (P3b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P3b1234FA', 'P3b5678FA', 'Elise', 'Samuel', 'P3b', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P3b7890FA', 'P3b2345FA', 'Alex', 'Sophie', 'P3b', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P3b9123FA', 'P3b4567FA', 'Liam', 'Isabelle', 'P3b', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P3b2345FA', 'P3b6789FA', 'Olivia', 'Lucas', 'P3b', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P3b4567FA', 'P3b0123FA', 'Noah', 'Océane', 'P3b', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P3b7890FA', 'P3b2345FA', 'Mia', 'Isaac', 'P3b', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P3b0123FA', 'P3b3456FA', 'Léa', 'Ethan', 'P3b', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P3b2345FA', 'P3b5678FA', 'Liam', 'Inés', 'P3b', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P3b4567FA', 'P3b0123FA', 'Elise', 'Léo', 'P3b', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P3b5678FA', 'P3b3456FA', 'Théo', 'Héloése', 'P3b', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P3b1234FA', 'P3b5678FA', 'Amélie', 'Mathis', 'P3b', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P3b7890FA', 'P3b2345FA', 'Rose', 'Olivier', 'P3b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P3b9123FA', 'P3b4567FA', 'Thomas', 'Héloése', 'P3b', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P3b2345FA', 'P3b6789FA', 'Victor', 'Isabella', 'P3b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P3b4567FA', 'P3b0123FA', 'Anna', 'Nathan', 'P3b', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P3b7890FA', 'P3b2345FA', 'Liam', 'Lina', 'P3b', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 4A (P4a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P4a1234GA', 'P4a5678GA', 'Emma', 'Samuel', 'P4a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P4a7890GA', 'P4a2345GA', 'Alex', 'Sophie', 'P4a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P4a9123GA', 'P4a4567GA', 'Liam', 'Isabelle', 'P4a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P4a2345GA', 'P4a6789GA', 'Olivia', 'Lucas', 'P4a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P4a4567GA', 'P4a0123GA', 'Noah', 'Océane', 'P4a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P4a7890GA', 'P4a2345GA', 'Mia', 'Isaac', 'P4a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P4a0123GA', 'P4a3456GA', 'Léa', 'Ethan', 'P4a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P4a2345GA', 'P4a5678GA', 'Liam', 'Inés', 'P4a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P4a4567GA', 'P4a0123GA', 'Elise', 'Léo', 'P4a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P4a5678GA', 'P4a3456GA', 'Théo', 'Héloése', 'P4a', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P4a1234GA', 'P4a5678GA', 'Amélie', 'Mathis', 'P4a', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P4a7890GA', 'P4a2345GA', 'Rose', 'Olivier', 'P4a', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P4a9123GA', 'P4a4567GA', 'Thomas', 'Héloése', 'P4a', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P4a2345GA', 'P4a6789GA', 'Victor', 'Isabella', 'P4a', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P4a4567GA', 'P4a0123GA', 'Anna', 'Nathan', 'P4a', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P4a7890GA', 'P4a2345GA', 'Liam', 'Lina', 'P4a', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 4B (P4b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P4b1234HE', 'P4b5678HE', 'Elise', 'Samuel', 'P4b', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P4b7890HE', 'P4b2345HE', 'Alex', 'Sophie', 'P4b', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P4b9123HE', 'P4b4567HE', 'Liam', 'Isabelle', 'P4b', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P4b2345HE', 'P4b6789HE', 'Olivia', 'Lucas', 'P4b', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P4b4567HE', 'P4b0123HE', 'Noah', 'Océane', 'P4b', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P4b7890HE', 'P4b2345HE', 'Mia', 'Isaac', 'P4b', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P4b0123HE', 'P4b3456HE', 'Léa', 'Ethan', 'P4b', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P4b2345HE', 'P4b5678HE', 'Liam', 'Inés', 'P4b', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P4b4567HE', 'P4b0123HE', 'Elise', 'Léo', 'P4b', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P4b5678HE', 'P4b3456HE', 'Théo', 'Héloése', 'P4b', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P4b1234HE', 'P4b5678HE', 'Amélie', 'Mathis', 'P4b', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P4b7890HE', 'P4b2345HE', 'Rose', 'Olivier', 'P4b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P4b9123HE', 'P4b4567HE', 'Thomas', 'Héloése', 'P4b', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P4b2345HE', 'P4b6789HE', 'Victor', 'Isabella', 'P4b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P4b4567HE', 'P4b0123HE', 'Anna', 'Nathan', 'P4b', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P4b7890HE', 'P4b2345HE', 'Liam', 'Lina', 'P4b', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 5A (P5a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P5a1234IS', 'P5a5678IS', 'Emma', 'Samuel', 'P5a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P5a7890IS', 'P5a2345IS', 'Alex', 'Sophie', 'P5a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P5a9123IS', 'P5a4567IS', 'Liam', 'Isabelle', 'P5a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P5a2345IS', 'P5a6789IS', 'Olivia', 'Lucas', 'P5a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P5a4567IS', 'P5a0123IS', 'Noah', 'Océane', 'P5a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P5a7890IS', 'P5a2345IS', 'Mia', 'Isaac', 'P5a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P5a0123IS', 'P5a3456IS', 'Léa', 'Ethan', 'P5a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P5a2345IS', 'P5a5678IS', 'Liam', 'Inés', 'P5a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P5a4567IS', 'P5a0123IS', 'Elise', 'Léo', 'P5a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P5a5678IS', 'P5a3456IS', 'Théo', 'Héloése', 'P5a', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P5a1234IS', 'P5a5678IS', 'Amélie', 'Mathis', 'P5a', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P5a7890IS', 'P5a2345IS', 'Rose', 'Olivier', 'P5a', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P5a9123IS', 'P5a4567IS', 'Thomas', 'Héloése', 'P5a', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P5a2345IS', 'P5a6789IS', 'Victor', 'Isabella', 'P5a', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P5a4567IS', 'P5a0123IS', 'Anna', 'Nathan', 'P5a', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P5a7890IS', 'P5a2345IS', 'Liam', 'Lina', 'P5a', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 5B (P5b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P5b1234JU', 'P5b5678JU', 'Elise', 'Samuel', 'P5b', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P5b7890JU', 'P5b2345JU', 'Alex', 'Sophie', 'P5b', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P5b9123JU', 'P5b4567JU', 'Liam', 'Isabelle', 'P5b', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P5b2345JU', 'P5b6789JU', 'Olivia', 'Lucas', 'P5b', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P5b4567JU', 'P5b0123JU', 'Noah', 'Océane', 'P5b', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P5b7890JU', 'P5b2345JU', 'Mia', 'Isaac', 'P5b', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P5b0123JU', 'P5b3456JU', 'Léa', 'Ethan', 'P5b', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P5b2345JU', 'P5b5678JU', 'Liam', 'Inés', 'P5b', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P5b4567JU', 'P5b0123JU', 'Elise', 'Léo', 'P5b', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P5b5678JU', 'P5b3456JU', 'Théo', 'Héloése', 'P5b', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P5b1234JU', 'P5b5678JU', 'Amélie', 'Mathis', 'P5b', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P5b7890JU', 'P5b2345JU', 'Rose', 'Olivier', 'P5b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P5b9123JU', 'P5b4567JU', 'Thomas', 'Héloése', 'P5b', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P5b2345JU', 'P5b6789JU', 'Victor', 'Isabella', 'P5b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P5b4567JU', 'P5b0123JU', 'Anna', 'Nathan', 'P5b', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P5b7890JU', 'P5b2345JU', 'Liam', 'Lina', 'P5b', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 6A (P6a)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EM12345', 'P6a1234KA', 'P6a5678KA', 'Emma', 'Samuel', 'P6a', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P6a7890KA', 'P6a2345KA', 'Alex', 'Sophie', 'P6a', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P6a9123KA', 'P6a4567KA', 'Liam', 'Isabelle', 'P6a', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P6a2345KA', 'P6a6789KA', 'Olivia', 'Lucas', 'P6a', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P6a4567KA', 'P6a0123KA', 'Noah', 'Océane', 'P6a', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P6a7890KA', 'P6a2345KA', 'Mia', 'Isaac', 'P6a', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P6a0123KA', 'P6a3456KA', 'Léa', 'Ethan', 'P6a', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P6a2345KA', 'P6a5678KA', 'Liam', 'Inés', 'P6a', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P6a4567KA', 'P6a0123KA', 'Elise', 'Léo', 'P6a', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P6a5678KA', 'P6a3456KA', 'Théo', 'Héloése', 'P6a', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P6a1234KA', 'P6a5678KA', 'Amélie', 'Mathis', 'P6a', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P6a7890KA', 'P6a2345KA', 'Rose', 'Olivier', 'P6a', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P6a9123KA', 'P6a4567KA', 'Thomas', 'Héloése', 'P6a', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P6a2345KA', 'P6a6789KA', 'Victor', 'Isabella', 'P6a', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P6a4567KA', 'P6a0123KA', 'Anna', 'Nathan', 'P6a', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P6a7890KA', 'P6a2345KA', 'Liam', 'Lina', 'P6a', 'True', 'parent23@ecole.com', 'parent24@ecole.com');

-- Etudiants pour Primaire 6B (P6b)
INSERT INTO [Student] ([IdStudent], [Password1], [Password2], [Nom], [Prénom], [IdClasse], [SeparatedParents], [Email1], [Email2])
VALUES
('EL12345', 'P6b1234LO', 'P6b5678LO', 'Elise', 'Samuel', 'P6b', 'False', 'parent1@ecole.com', NULL),
('AL12346', 'P6b7890LO', 'P6b2345LO', 'Alex', 'Sophie', 'P6b', 'True', 'parent2@ecole.com', 'parent3@ecole.com'),
('LI12347', 'P6b9123LO', 'P6b4567LO', 'Liam', 'Isabelle', 'P6b', 'False', 'parent4@ecole.com', NULL),
('OL12348', 'P6b2345LO', 'P6b6789LO', 'Olivia', 'Lucas', 'P6b', 'True', 'parent5@ecole.com', 'parent6@ecole.com'),
('NO12349', 'P6b4567LO', 'P6b0123LO', 'Noah', 'Océane', 'P6b', 'False', 'parent7@ecole.com', NULL),
('MI12340', 'P6b7890LO', 'P6b2345LO', 'Mia', 'Isaac', 'P6b', 'True', 'parent8@ecole.com', 'parent9@ecole.com'),
('LE12341', 'P6b0123LO', 'P6b3456LO', 'Léa', 'Ethan', 'P6b', 'False', 'parent10@ecole.com', NULL),
('LI12342', 'P6b2345LO', 'P6b5678LO', 'Liam', 'Inés', 'P6b', 'True', 'parent11@ecole.com', 'parent12@ecole.com'),
('EL12343', 'P6b4567LO', 'P6b0123LO', 'Elise', 'Léo', 'P6b', 'False', 'parent13@ecole.com', NULL),
('TH12344', 'P6b5678LO', 'P6b3456LO', 'Théo', 'Héloése', 'P6b', 'True', 'parent14@ecole.com', 'parent15@ecole.com'),
('AM12345', 'P6b1234LO', 'P6b5678LO', 'Amélie', 'Mathis', 'P6b', 'False', 'parent16@ecole.com', NULL),
('RO12346', 'P6b7890LO', 'P6b2345LO', 'Rose', 'Olivier', 'P6b', 'True', 'parent17@ecole.com', 'parent18@ecole.com'),
('TH12347', 'P6b9123LO', 'P6b4567LO', 'Thomas', 'Héloése', 'P6b', 'False', 'parent19@ecole.com', NULL),
('VI12348', 'P6b2345LO', 'P6b6789LO', 'Victor', 'Isabella', 'P6b', 'True', 'parent20@ecole.com', 'parent21@ecole.com'),
('AN12349', 'P6b4567LO', 'P6b0123LO', 'Anna', 'Nathan', 'P6b', 'False', 'parent22@ecole.com', NULL),
('LI12340', 'P6b7890LO', 'P6b2345LO', 'Liam', 'Lina', 'P6b', 'True', 'parent23@ecole.com', 'parent24@ecole.com');
