CREATE DATABASE if NOT exists `amatii` COLLATE 'utf8_latvian_ci';
USE amatii;
CREATE TABLE message (
    id INT AUTO_INCREMENT PRIMARY KEY,
    message TEXT,
    phone VARCHAR(31),
    email VARCHAR(63),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO message (message, phone, email) VALUES
('Sveiki! Šis ir mans ziņojums.', '+123456789', 'mans@email.com');

CREATE USER 'egils'@'localhost' IDENTIFIED BY 'amatnieks23';
GRANT ALL PRIVILEGES ON amatii.* TO 'egilsk'@'localhost';
FLUSH PRIVILEGES;

-- PRODUKTU TABULA

-- CREATE TABLE produkti (
--     produkta_id INT AUTO_INCREMENT PRIMARY KEY,
--     nosaukums VARCHAR(255) NOT NULL,
--     apraksts TEXT,
--     cena DECIMAL(10, 2) NOT NULL,
--     pieejamiba INT NOT NULL,
--     krājumu_daudzums INT NOT NULL,
--     kategorijas_id INT,
--     ražotājs VARCHAR(255),
--     image_url VARCHAR(255),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
--     );

SHOW TRIGGERS FROM `amatii`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='amatii';
SELECT * FROM `information_schema`.`COLUMNS` WHERE TABLE_SCHEMA='amatii' AND TABLE_NAME='pasutijumi' ORDER BY ORDINAL_POSITION;
SHOW INDEXES FROM `pasutijumi` FROM `amatii`;
SELECT * FROM information_schema.REFERENTIAL_CONSTRAINTS WHERE   CONSTRAINT_SCHEMA='amatii'   AND TABLE_NAME='pasutijumi'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SELECT * FROM information_schema.KEY_COLUMN_USAGE WHERE   TABLE_SCHEMA='amatii'   AND TABLE_NAME='pasutijumi'   AND REFERENCED_TABLE_NAME IS NOT NULL;
SHOW CREATE TABLE `amatii`.`pasutijumi`;
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='amatii' AND TABLE_NAME='pasutijumi';
/* Entering session "egilsroot" */

SHOW CREATE TABLE `amatii`.`pasutijumi`;

CREATE TABLE pasutijumi (
    pasutijuma_id INT AUTO_INCREMENT PRIMARY KEY,
    lietotaja_id INT,
    produkta_id INT,
    datums TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    statuss VARCHAR(255),
    piegades_adrese TEXT,
    cena DECIMAL(10, 2);

INSERT INTO pasutijumi (id, lietotaja_id, produkta_id, datums, statuss, piegades_adrese, cena) VALUES
('0001', '1', '1000', '', '', 'Cēsu nov. Taigas pag. Liepu iela 5-76', '1');

);
SELECT CONSTRAINT_NAME, CHECK_CLAUSE FROM `information_schema`.`CHECK_CONSTRAINTS` WHERE CONSTRAINT_SCHEMA='amatii' AND TABLE_NAME='message';
CREATE TABLE pasutijumi (
    id INT AUTO_INCREMENT PRIMARY KEY,
    lietotaja_id INT,
    produkta_id INT,
    datums TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    statuss VARCHAR(255),
    piegades_adrese TEXT,
    cena DECIMAL(10, 2)
);



CREATE TABLE lietotaji (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vards VARCHAR(255),
    uzvards VARCHAR(255),
    epasta_adrese VARCHAR(255) NOT NULL,
    parole VARCHAR(255) NOT NULL,
    adrese TEXT,
    talrunis VARCHAR(20)
);

INSERT INTO lietotaji (id, vards, uzvards, epasta_adrese, parole, adrese, talrunis) VALUES
('0001', 'Aina', 'Poiša', 'aina.poisa@inbox.lv', '', 'Cēsu nov. Taigas pag. Liepu iela 2-21', '+371 28374361');

INSERT INTO lietotaji (id, vards, uzvards, epasta_adrese, adrese, talrunis) VALUES
('2', 'Egīls', 'Liepiņš', 'egīls.liepins12@inbox.lv', 'Cēsu nov. Taigas pag. Kalnu iela 4-9', '+371 22738299');

INSERT INTO lietotaji (id, vards, uzvards, epasta_adrese, adrese, talrunis) VALUES
('3', 'Ainars', 'Pakalns', 'ainars.pakalns123@inbox.lv', 'Tukums Bērzu iela 1-16', '+371 22712299');



CREATE TABLE kategorijas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produkta_id INT NOT NULL, -- Produkta kods vai ID
    kategorijas_nosaukums VARCHAR(255) NOT NULL,
    apraksts TEXT
);

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('1', '1000', 'Zvans', 'Keramika', 'Ziemassvētki');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('2', '1100', 'Vāze', 'Keramika', 'Ziedi');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('3', '1200', 'Svečturis', 'Keramika', 'Sveces');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('4', '1300', 'Sienas_šķīvis', 'Keramika', 'Rotajums');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('5', '1400', 'Tortes_paliknis', 'Keramika', 'Torte');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('6', '2000', 'Mazā_sedziņa', 'Aušana', 'Mazā sedziņa');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('7', '2100', 'Lielā_sedziņa', 'Aušana', 'Lielā sedziņa');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('8', '2200', 'Šalle', 'Aušana', 'Šalle');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('9', '2300', 'Grāmatzīme', 'Aušana', 'Grāmatzīme');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('10', '2400', 'Dekoratīvā_spilvendrāna', 'Aušana', 'Dekoratīvā_spilvendrāna');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('11', '3000', 'Paplāte', 'Grozu_pīšana', 'Paplāte');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('12', '3100', 'Groziņš', 'Grozu_pīšana', 'Groziņš');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('13', '3200', 'Trauciņš', 'Grozu_pīšana', 'Trauciņš');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('14', '3300', 'Malkas_grozs', 'Grozu_pīšana', 'Malkas grozs');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('15', '3400', 'Velas_grozs', 'Grozu_pīšana', 'Veļas grozs');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('16', '4000', 'Koka_karote', 'Koka_izstradajumi', 'Koka karote');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('17', '4100', 'Taburete', 'Koka_izstradajumi', 'Taburete');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('18', '4200', 'Bernu_trauki', 'Koka_izstradajumi', 'Bērnu trauki');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('19', '4300', 'Brokastu_paplate', 'Koka_izstradajumi', 'Brokastu paplate');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('20', '4400', 'Dzirnavas', 'Koka_izstradajumi', 'Dzirnavas');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('21', '4500', 'Rati', 'Koka_izstradajumi', 'Rati');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('22', '4600', 'Servejamais_galdins', 'Koka_izstradajumi', 'Servejamais galdins');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('23', '4700', 'Maizes_trauks', 'Koka_izstradajumi', 'Maizes trauks');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('24', '4800', 'Trijnieki', 'Koka_izstradajumi', 'Trijnieki');

INSERT INTO kategorijas (id, produkta_id, produkta_nosaukums, kategorijas_nosaukums, apraksts) VALUES
('25', '5000', 'Gramata_adas_vakos', 'Adas_izstradajumi', 'Grāmata ādas vākos');

CREATE TABLE noliktavas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    noliktavas_nosaukums VARCHAR(255) NOT NULL,
    adrese TEXT,
    kapacitate INT
);

INSERT INTO noliktavas (id, noliktavas_nosaukums, adrese, kapacitate, piegades, izsniegumi) VALUES
('1', 'Keramika', 'Parka iela', '14', '35', '8');

INSERT INTO noliktavas (id, noliktavas_nosaukums, adrese, kapacitate, piegades, izsniegumi) VALUES
('2', 'Aušana', 'Parka iela', '9', '35', '5');


CREATE TABLE atsauksmes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produkta_id INT,
    lietotaja_id INT,
    atsauksmes_teksts TEXT,
    vertejums INT
);

INSERT INTO atsauksmes (id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('3000', '1200', '3', 'Skaists darbiņš', '8');

SELECT  `atsauksmes_id`,  `produkta_id`,  `lietotaja_id`, LEFT(`atsauksmes_teksts`, 256),  `vertejums` FROM `amatii`.`atsauksmes` LIMIT 1000;
SHOW CREATE TABLE `amatii`.`atsauksmes`;

INSERT INTO atsauksmes (atsauksmes_id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('0001', '1000', '1', 'Šis produkts ir lielisks!', '9');

SELECT  `kategorijas_id`,  `kategorijas_nosaukums`, LEFT(`apraksts`, 256) FROM `amatii`.`kategorijas` LIMIT 1000;
SHOW CREATE TABLE `amatii`.`atsauksmes`;
SELECT  `atsauksmes_id`,  `produkta_id`,  `lietotaja_id`, LEFT(`atsauksmes_teksts`, 256),  `vertejums` FROM `amatii`.`atsauksmes` LIMIT 1000;
INSERT INTO atsauksmes (atsauksmes_id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('0002', '1100', '2', 'Saņemies! Tu vari labak XD', '5');

INSERT INTO atsauksmes (id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('3', '1200', '5', 'Lieliski', '9');

INSERT INTO atsauksmes (id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('4', '2000', '11', 'Man patīk krāsas', '8');



produkti

SHOW CREATE TABLE `amatii`.`produkti`;
SELECT  `id`,  `nosaukums`, LEFT(`apraksts`, 256),  `cena`,  `pieejamiba`,  `krājumu_daudzums`,  `kategorijas_id`,  `ražotājs`,  `image_url`,  `created_at`,  `updated_at` FROM `amatii`.`produkti` LIMIT 1000;

INSERT INTO produkti (`id`,  `nosaukums`, `apraksts`,  `cena`,  `pieejamiba`,  `krājumu_daudzums`,  `kategorijas_id`,  `ražotājs`,  `image_url`,  `created_at`,  `updated_at`) VALUES
('1100', 'Vāze', 'Ļoti skaista!', '8.00', '1', '7', '1000', 'Lidija Priede', '9e7b5f6a-3689-4b9d-ac3d-11d44b9e2047.jpg', NULL, NULL);









