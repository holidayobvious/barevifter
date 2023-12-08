-- Slette hele databasen
-- DROP schema vifter;

-- Velge rett database
USE `vifter` ;
-- DESC kunde;
-- SELECT * FROM kunde;
-- SELECT first_name, last_name FROM kunde;
-- SELECT * FROM kunde WHERE poststed = 'Oslo';
-- SELECT * FROM kunde ORDER BY poststed;
-- SELECT poststed, count(*) FROM kunde GROUP BY poststed;

-- Laget første kunde manuelt selv, passordet er topsecret
INSERT INTO kunde (email, first_name, last_name, postkode, adresse, poststed, passord)
VALUES ('per.pusling@kuben.no', 'Per', 'Pusling', '0289', 'Kubenveien 3', 'Oslo', '$2y$10$gWCtnHA1dRzU8aGrzP25HuFHadp7Ngax/6dMlzMaJBXfsUaUydykG');

-- Brukte AI til å lage test data basert på den jeg lagde selv 
-- passordet er passord123
INSERT INTO kunde (email, first_name, last_name, postkode, adresse, poststed, passord) VALUES
('ole.nordmann@example.com', 'Ole', 'Nordmann', '1234', 'Storgata 1', 'Oslo', '$2y$10$NF5tXAu4zdBewTV6JpXs5uY0vKgsNdia6Qb9IFn5OLu7fqI36zzXO'),
('kari.hansen@example.com', 'Kari', 'Hansen', '5678', 'Lilleveien 2', 'Bergen', '$2y$10$NF5tXAu4zdBewTV6JpXs5uY0vKgsNdia6Qb9IFn5OLu7fqI36zzXO'),
('erik.svensen@example.com', 'Erik', 'Svensen', '4321', 'Gågata 3', 'Trondheim', '$2y$10$NF5tXAu4zdBewTV6JpXs5uY0vKgsNdia6Qb9IFn5OLu7fqI36zzXO'),
('lise.pedersen@example.com', 'Lise', 'Pedersen', '8765', 'Smaugata 4', 'Stavanger', '$2y$10$NF5tXAu4zdBewTV6JpXs5uY0vKgsNdia6Qb9IFn5OLu7fqI36zzXO'),
('magnus.olsen@example.com', 'Magnus', 'Olsen', '5678', 'Bakken 5', 'Drammen', '$2y$10$NF5tXAu4zdBewTV6JpXs5uY0vKgsNdia6Qb9IFn5OLu7fqI36zzXO'),
('hilde.pettersen@example.com', 'Hilde', 'Pettersen', '9876', 'Nyveien 6', 'Kristiansand', '$2y$10$NF5tXAu4zdBewTV6JpXs5uY0vKgsNdia6Qb9IFn5OLu7fqI36zzXO'),
('arne.johansen@example.com', 'Arne', 'Johansen', '2345', 'Hovedgata 7', 'Fredrikstad', '$2y$10$NF5tXAu4zdBewTV6JpXs5uY0vKgsNdia6Qb9IFn5OLu7fqI36zzXO'),
('silje.andersen@example.com', 'Silje', 'Andersen', '7654', 'Sidesveien 8', 'Sandnes', '$2y$10$NF5tXAu4zdBewTV6JpXs5uY0vKgsNdia6Qb9IFn5OLu7fqI36zzXO'),
('martin.kristiansen@example.com', 'Martin', 'Kristiansen', '8765', 'Stien 9', 'Tromsø', '$2y$10$NF5tXAu4zdBewTV6JpXs5uY0vKgsNdia6Qb9IFn5OLu7fqI36zzXO');


-- Eksempel kommandoer
-- SELECT * FROM produkt;
-- SELECT storrelse, hastighet, navn, pris FROM produkt;
-- SELECT storrelse, hastighet, navn, pris FROM produkt WHERE hastighet = '150 rpm';
-- SELECT storrelse, hastighet, navn, pris FROM produkt ORDER BY pris;
-- SELECT storrelse, hastighet, navn, pris FROM produkt ORDER BY pris DESC;

-- Legger inn produkt manuelt
INSERT INTO produkt (storrelse, hastighet, navn, pris, bilde_url, beskrivelse)
VALUES ('30 cm', '100 rpm', 'liten bordvifte', 499, 'image0.jpg', 'perfekt for skrivebordet, hjemmekontor');
-- Fikk AI til å lage flere test data
INSERT INTO produkt (storrelse, hastighet, navn, pris, bilde_url, beskrivelse) VALUES
('40 cm', '120 rpm', 'medium gulvvifte', 799, 'image1.jpg', 'pefekt for sommerdager'),
('25 cm', '80 rpm', 'kompakt veggmontert vifte', 349, 'image2.jpg', null),
('35 cm', '90 rpm', 'stilig takvifte', 899, 'image3.jpg', null),
('50 cm', '150 rpm', 'kraftig industriell vifte', 1299, 'image4.jpg', null),
('28 cm', '85 rpm', 'smart bordsvifte', 599, 'image5.jpg', null),
('45 cm', '130 rpm', 'designer stående vifte', 1099, 'image6.jpg', null),
('32 cm', '100 rpm', 'energibesparende bordvifte', 449, 'image7.jpg', null),
('55 cm', '160 rpm', 'høyeffektiv takvifte', 1499, 'image8.jpg', null),
('38 cm', '110 rpm', 'trådløs fjernstyrt vifte', 699, 'image9.jpg', null),
('42 cm', '120 rpm', 'kompakt reisevifte', 599, 'image10.jpg', null),
('48 cm', '140 rpm', 'støysvak gulvvifte', 899, 'image11.jpg', null),
('30 cm', '95 rpm', 'bordvifte med timerfunksjon', 549, 'image12.jpg', null),
('33 cm', '105 rpm', 'fargerik barnevifte', 499, 'image13.jpg', null),
('52 cm', '155 rpm', 'justerbar stående vifte', 1199, 'image14.jpg', null),
('37 cm', '115 rpm', 'vifte med luftfukter', 749, 'image15.jpg', null),
('44 cm', '125 rpm', 'sølvfarget veggvifte', 749, 'image16.jpg', null),
('29 cm', '90 rpm', 'klassisk bordvifte', 499, 'image17.jpg', null),
('47 cm', '135 rpm', 'modernistisk takvifte', 999, 'image18.jpg', null),
('36 cm', '105 rpm', 'LED-belysning gulvvifte', 1099, 'image19.jpg', null),
('51 cm', '150 rpm', 'kompakt sammenleggbar vifte', 799, 'image20.jpg', null),
('31 cm', '100 rpm', 'smart home vifte', 649, 'image21.jpg', null),
('46 cm', '130 rpm', 'stilren stående vifte', 949, 'image22.jpg', null),
('34 cm', '95 rpm', 'bordvifte med USB-port', 579, 'image23.jpg', null),
('49 cm', '140 rpm', 'høyteknologisk takvifte', 1299, 'image24.jpg', null),
('39 cm', '110 rpm', 'kraftig bordvifte', 699, 'image25.jpg', null),
('53 cm', '160 rpm', 'trådløs stående vifte', 1149, 'image26.jpg', null),
('43 cm', '120 rpm', 'miljøvennlig takvifte', 999, 'image27.jpg', null),
('28 cm', '95 rpm', 'bærbar mini-vifte', 499, 'image28.jpg', null),
('54 cm', '150 rpm', 'designer liggende vifte', 1199, 'image29.jpg', null);

-- Lage fire bestillinger
-- SELECT * FROM bestilling;
-- SELECT * FROM bestilling, kunde WHERE bestilling.kunde_id = kunde.id;
INSERT INTO bestilling (kunde_id, bestillingstid) VALUES (1,'2023-11-19 15:25');
INSERT INTO bestilling (kunde_id, bestillingstid) VALUES (4,'2023-11-18 05:28');
INSERT INTO bestilling (kunde_id, bestillingstid) VALUES (8,'2023-11-17 14:45');
INSERT INTO bestilling (kunde_id, bestillingstid) VALUES (5,'2023-11-17 23:25');

-- Legge til produkter på bestilling 1
-- SELECT * FROM produkt p, produkt_i_bestilling pib WHERE pib.produkt_id = p.id;
-- SELECT pib.bestilling_id, pib.antall, p.navn, p.pris FROM produkt p, produkt_i_bestilling pib WHERE pib.produkt_id = p.id;
-- SELECT pib.bestilling_id, pib.antall, p.navn, p.pris FROM produkt p, produkt_i_bestilling pib WHERE pib.produkt_id = p.id ORDER BY bestilling_id;
-- SELECT b.id, b.bestillingstid, pib.antall, p.navn, p.pris FROM bestilling b, produkt p, produkt_i_bestilling pib WHERE pib.produkt_id = p.id AND pib.bestilling_id = b.id;
-- SELECT b.id, b.kunde_id, b.bestillingstid, pib.antall, p.navn, p.pris FROM bestilling b, produkt p, produkt_i_bestilling pib WHERE pib.produkt_id = p.id AND pib.bestilling_id = b.id;
-- SELECT b.id, k.email, b.bestillingstid, pib.antall, p.navn, p.pris FROM kunde k, bestilling b, produkt p, produkt_i_bestilling pib WHERE pib.produkt_id = p.id AND pib.bestilling_id = b.id AND b.kunde_id = k.id;
INSERT INTO produkt_i_bestilling (bestilling_id, produkt_id, antall) VALUES 
(1, 1, 2),(1,6,1),(1,25,25),
(2,7,3),(2,9,1),
(3,30,2),(3,29,2),(2,24,4),
(4,11,8),(4,19,6);


-- Noen spørringer

-- Viser alle bestillingene
-- SELECT * FROM bestilling;

-- Viser alle bestillinger og hvilken kunde de tilhører
-- SELECT * FROM bestilling b, kunde k WHERE b.kunde_id = k.id;

-- Viser alle bestillingene til Per Pusling
-- SELECT * FROM bestilling b, kunde k WHERE b.kunde_id = k.id AND k.email = 'per.pusling@kuben.no';

-- Legge til en til bestilling (blir id 5) for Per Pusling (kunde.id 1)
INSERT INTO bestilling (kunde_id, bestillingstid) VALUES (1,'2023-11-20 10:00');
INSERT INTO produkt_i_bestilling (bestilling_id, produkt_id, antall) VALUES 
(5,17,2),(5,26,1),(5,5,13),(5,14,6);

-- Endre bilde_url på produkt 1
UPDATE produkt SET bilde_url = 'https://www.example.com/image0.jpg' WHERE id = 1;

-- Hente ut produkter mellom 400-700 kr
SELECT * FROM produkt WHERE pris >= 400 AND pris <= 700;

-- Hent ut alle produkter for bestilling nr 5
SELECT * FROM produkt_i_bestilling pib, produkt p WHERE pib.produkt_id = p.id AND pib.bestilling_id = 5;

-- Hente summen for hvert produkt
SELECT * , antall*pris linjesum FROM produkt_i_bestilling pib, produkt p WHERE pib.produkt_id = p.id AND pib.bestilling_id = 5;

-- Finne total summen for hele bestillingen
SELECT sum(antall*pris) FROM produkt_i_bestilling pib, produkt p WHERE pib.produkt_id = p.id AND pib.bestilling_id = 5;

-- Finne totalsummen av alle bestillingene
SELECT pib.bestilling_id , sum(antall*pris) FROM produkt_i_bestilling pib, produkt p WHERE pib.produkt_id = p.id GROUP BY pib.bestilling_id;