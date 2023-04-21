use bdEBoutiqueLivres;

select * from clients;

DROP TABLE IF EXISTS Categories;
create table Categories(
idCategorie VARCHAR(20) NOT NULL PRIMARY KEY,
libelleCatg VARCHAR(60) NOT NULL,
descriptionCatg VARCHAR(250) NOT NULL);

INSERT INTO Categories (idCategorie, libelleCatg, descriptionCatg) VALUES ("eco123", "Economique", "livres d'economie");
INSERT INTO Categories (idCategorie, libelleCatg, descriptionCatg) VALUES ("litt123", "Litterature", "livres de litterature");
INSERT INTO Categories (idCategorie, libelleCatg, descriptionCatg) VALUES ("philos123", "Philosophie", "livres de Philosophie");
INSERT INTO Categories (idCategorie, libelleCatg, descriptionCatg) VALUES ("hist123", "Histoire", "livres d'histoire");
select * from Categories;

DROP TABLE IF EXISTS Livres;
create table Livres(
idLivre VARCHAR(20) NOT NULL PRIMARY KEY,
libelleProd VARCHAR(60) NOT NULL,
descriptionProduit VARCHAR(250) NOT NULL,
marque VARCHAR(200),
prix DECIMAL(10,2) NOT NULL,
dateParution DATE,
imageLivre VARCHAR(255),
idCategorie VARCHAR(20) NOT null,
foreign key (idCategorie) references Categories(idCategorie)
);

INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("brn123", "Burn", "Livre Burn","sans", 20.50, "02/02/2002", "burn.webp","philos123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("bzrk123", "Bzrk", "Livre Bzrk","sans", 15.00, "16/04/1999", "bzrk.webp","philos123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("circe123", "Circe", "Livre Circe","sans", 30.50, "30/09/2019", "circe.webp","hist123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("cold123", "Cold", "Livre Cold","sans", 34.50, "02/09/2010", "cold.webp","litt123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("demise123", "Demise", "Livre Demise","sans", 48.50, "07/02/1945", "demise.webp","eco123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("find123", "Find", "Livre Find","sans", 32.50, "02/11/2010", "find.webp","litt123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("fiveY123", "FiveYear", "Livre FiveYear","sans", 38.50, "08/10/2013", "fiveYear.webp","hist123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("horde123", "Horde", "Livre Horde","sans", 40.50, "02/05/1985", "horde.webp","philos123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("lum123", "Luminosity", "Livre Luminosity","sans", 35.50, "21/05/1985", "luminosity.webp","hist123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("mer123", "Meridian", "Livre Meridian","sans", 30.50, "02/08/1985", "meridian.webp","eco123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("pawn123", "Pawn", "Livre Pawn","sans", 90.50, "02/05/2022", "pawn.webp","litt123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("people123", "People", "Livre People","sans", 67.50, "14/05/2004", "people.webp","philos123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("rebel123", "Rebel", "Livre Rebel","sans", 35.50, "02/07/1965", "rebel.webp","eco123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("scot123", "ScottCard", "Livre scottCard","sans", 16.50, "02/05/1983", "scottCard.webp","hist123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("scy123", "Scythe", "Livre Scythe","sans", 10.50, "24/05/1985", "scythe.webp","philos123");
INSERT INTO Livres (idLivre, libelleProd, descriptionProduit, marque, prix, dateParution, imageLivre, idCategorie) VALUES ("taylor123", "Taylor", "Livre Taylor","sans", 55.50, "13/07/2005", "taylor.webp","litt123");
select * from Livres;

DROP TABLE IF EXISTS Commandes;
create table Commandes (
idCommande INT NOT NULL auto_increment PRIMARY KEY,
dateCommande DATE,
idClient INT NOT null,
FOREIGN KEY (idClient) REFERENCES Clients(idClient),
idLivre VARCHAR(20) NOT null,
FOREIGN key (idLivre) REFERENCES Livres(idLivre)
);

DROP TABLE IF EXISTS DetailsCommandes;
create table DetailsCommades (
quantite INT NOT NULL,
prix DECIMAL(10,2),
idCommande INT NOT null,
FOREIGN key (idCommande) REFERENCES Commandes(idCommande),
idLivre VARCHAR(20) NOT null,
FOREIGN KEY (idLivre) REFERENCES Livres(idLivre)
);

