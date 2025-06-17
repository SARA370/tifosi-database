-- 🔹 Sélection de la base de données
USE tifosi;

-- 🔸 Insertion des ingrédients
INSERT INTO ingredient (id_ingredient, nom_ingredient)
VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chevre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise');

-- 🔸 Insertion des focaccias
INSERT INTO focaccia (id_focaccia, nom_focaccia, prix_focaccia) VALUES
(1, 'Mozaccia', 9.80),
(2, 'Gorgonzollaccia', 10.80),
(3, 'Raclaccia', 8.90),
(4, 'Emmentalaccia', 9.80),
(5, 'Tradizione', 8.90),
(6, 'Hawaienne', 11.20),
(7, 'Américaine', 10.80),
(8, 'Paysanne', 12.80);

-- 🔸 Ingrédients utilisés dans chaque focaccia (relation N:N)
INSERT INTO comprend (id_focaccia, id_ingredient) VALUES
(1, 5),(1, 9),(1, 13),(1, 1),(1, 3),(1, 7),(1, 18),(1, 20),(1, 16),
(2, 5),(2, 11),(2, 9),(2, 1),(2, 7),(2, 18),(2, 20),(2, 16),
(3, 5),(3, 22),(3, 9),(3, 1),(3, 7),(3, 18),(3, 20),
(4, 6),(4, 10),(4, 9),(4, 7),(4, 18),(4, 20),(4, 15),
(5, 5),(5, 9),(5, 12),(5, 7),(5, 18),(5, 20),(5, 16),(5, 17),
(6, 5),(6, 9),(6, 4),(6, 2),(6, 19),(6, 18),(6, 20),(6, 16),
(7, 5),(7, 9),(7, 4),(7, 21),(7, 18),(7, 20),(7, 16),
(8, 6),(8, 8),(8, 9),(8, 21),(8, 13),(8, 1),(8, 3),(8, 7),(8, 18),(8, 20),(8, 16),(8, 14);

-- 🔸 Insertion des marques de boissons
INSERT INTO marque (id_marque, nom_marque) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- 🔸 Insertion des boissons liées aux marques
INSERT INTO boisson (id_boisson, nom_boisson, id_marque) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 2);

-- 🔸 Insertion des menus (liés à une focaccia)
INSERT INTO menu (id_menu, nom_menu, prix_menu, id_focaccia) VALUES
(1, 'Menu Italie', 13.90, 1),
(2, 'Menu US', 14.80, 7),
(3, 'Menu Fromage', 12.00, 3),
(4, 'Menu Paysan', 15.50, 8);

-- 🔸 Boissons contenues dans chaque menu (relation N:N)
INSERT INTO contient (id_menu, id_boisson) VALUES
(1, 1),(1, 2),
(2, 6),(2, 7),
(3, 3),(3, 4),
(4, 11),(4, 12);

-- 🔸 Insertion des clients
INSERT INTO client (id_client, nom_client, age, cp_client) VALUES
(1, 'Alice', 28, 75001),
(2, 'Bob', 32, 69001),
(3, 'Claire', 22, 13001),
(4, 'David', 40, 59000);

-- 🔸 Historique des achats de focaccias (relation N:N avec date)
INSERT INTO achete (id_client, id_focaccia, jour) VALUES
(1, 1, '2025-06-10'),
(2, 3, '2025-06-11'),
(3, 5, '2025-06-12'),
(4, 2, '2025-06-13');

-- 🔸 Historique des paiements de menus (relation N:N avec date)
INSERT INTO paye (id_client, id_menu, jour) VALUES
(1, 1, '2025-06-10'),
(2, 2, '2025-06-11'),
(3, 3, '2025-06-12'),
(4, 4, '2025-06-13');