-- MESSAGE

INSERT INTO message (message, phone, email) VALUES
('Sveiki! Šis ir mans ziņojums.', '+123456789', 'mans@email.com');

-- PASUTIJUMI

INSERT INTO pasutijumi (id, lietotaja_id, produkta_id, datums, statuss, piegades_adrese, cena) VALUES
('0001', '1', '1000', '', '', 'Cēsu nov. Taigas pag. Liepu iela 5-76', '1');

-- LIETOTAJI

INSERT INTO lietotaji (id, vards, uzvards, epasta_adrese, adrese, talrunis) VALUES
('0001', 'Aina', 'Poiša', 'aina.poisa@inbox.lv', 'Cēsu nov. Taigas pag. Liepu iela 2-21', '+371 28374361');

INSERT INTO lietotaji (id, vards, uzvards, epasta_adrese, adrese, talrunis) VALUES
('2', 'Egīls', 'Liepiņš', 'egīls.liepins12@inbox.lv', 'Cēsu nov. Taigas pag. Kalnu iela 4-9', '+371 22738299');

INSERT INTO lietotaji (id, vards, uzvards, epasta_adrese, adrese, talrunis) VALUES
('3', 'Ainars', 'Pakalns', 'ainars.pakalns123@inbox.lv', 'Tukums Bērzu iela 1-16', '+371 22712299');

INSERT INTO lietotaji (id, vards, uzvards, epasta_adrese, adrese, talrunis) VALUES
('3', 'Ainars', 'Pakalns', 'ainars.pakalns123@inbox.lv', 'Tukums Bērzu iela 1-16', '+371 22712299');

-- KATEGORIJAS

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

-- NOLIKTAVAS

INSERT INTO noliktavas (id, noliktavas_nosaukums, adrese, kapacitate, piegades, izsniegumi) VALUES
('1', 'Keramika', 'Parka iela', '14', '35', '8');

INSERT INTO noliktavas (id, noliktavas_nosaukums, adrese, kapacitate, piegades, izsniegumi) VALUES
('2', 'Aušana', 'Parka iela', '9', '35', '5');

-- ATSAUKSMES

INSERT INTO atsauksmes (id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('3000', '1200', '3', 'Skaists darbiņš', '8');

INSERT INTO atsauksmes (atsauksmes_id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('0001', '1000', '1', 'Šis produkts ir lielisks!', '9');

INSERT INTO atsauksmes (atsauksmes_id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('0002', '1100', '2', 'Saņemies! Tu vari labak XD', '5');

INSERT INTO atsauksmes (id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('3', '1200', '5', 'Lieliski', '9');

INSERT INTO atsauksmes (id, produkta_id, lietotaja_id, atsauksmes_teksts, vertejums) VALUES
('4', '2000', '11', 'Man patīk krāsas', '8');

-- PRODUKTI

INSERT INTO produkti (`id`,  `nosaukums`, `apraksts`,  `cena`,  `pieejamiba`,  `krājumu_daudzums`,  `kategorijas_id`,  `ražotājs`,  `image_url`,  `created_at`,  `updated_at`) VALUES
('1100', 'Vāze', 'Ļoti skaista!', '8.00', '1', '7', '1000', 'Lidija Priede', '9e7b5f6a-3689-4b9d-ac3d-11d44b9e2047.jpg', NULL, NULL);

