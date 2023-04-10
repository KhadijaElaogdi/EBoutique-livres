use bdEBoutiqueLivres;

select * from DetailsCommades;

DROP TABLE IF EXISTS Categories;
create table Categories(
idCategorie VARCHAR(20) NOT NULL PRIMARY KEY,
libelleCatg VARCHAR(60) NOT NULL,
descriptionCatg VARCHAR(250) NOT NULL);

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
