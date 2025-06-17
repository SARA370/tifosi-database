-- Script de création des tables Tifosi
CREATE DATABASE IF NOT EXISTS tifosi;
USE tifosi;

-- Table client
CREATE TABLE client (
  id_client INT PRIMARY KEY,
  nom_client VARCHAR(45),
  age INT,
  cp_client INT
);

-- Table focaccia
CREATE TABLE focaccia (
  id_focaccia INT PRIMARY KEY,
  nom_focaccia VARCHAR(45),
  prix_focaccia FLOAT
);

-- Table ingredient
CREATE TABLE ingredient (
  id_ingredient INT PRIMARY KEY,
  nom_ingredient VARCHAR(45)
);

-- Table marque
CREATE TABLE marque (
  id_marque INT PRIMARY KEY,
  nom_marque VARCHAR(45)
);

-- Table boisson
CREATE TABLE boisson (
  id_boisson INT PRIMARY KEY,
  nom_boisson VARCHAR(45),
  id_marque INT,
  FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

-- Table menu
CREATE TABLE menu (
  id_menu INT PRIMARY KEY,
  nom_menu VARCHAR(45),
  prix_menu FLOAT,
  id_focaccia INT,
  FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

-- Table achete (relation N:N)
CREATE TABLE achete (
  id_client INT,
  id_focaccia INT,
  jour DATE,
  PRIMARY KEY (id_client, id_focaccia, jour),
  FOREIGN KEY (id_client) REFERENCES client(id_client),
  FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

-- Table comprend (relation N:N)
CREATE TABLE comprend (
  id_focaccia INT,
  id_ingredient INT,
  PRIMARY KEY (id_focaccia, id_ingredient),
  FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
  FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);

-- Table contient (relation N:N)
CREATE TABLE contient (
  id_menu INT,
  id_boisson INT,
  PRIMARY KEY (id_menu, id_boisson),
  FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
  FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
);

-- Table paye (relation N:N)
CREATE TABLE paye (
  id_client INT,
  id_menu INT,
  jour DATE,
  PRIMARY KEY (id_client, id_menu, jour),
  FOREIGN KEY (id_client) REFERENCES client(id_client),
  FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);
