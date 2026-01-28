SET search_path TO skol_info;


INSERT INTO skol_info.person (fornamn, efternamn, personnummer, email)
VALUES
('Johan', 'Jorin', '848475746362', 'johan@gmail.com'),
('Anna', 'Svensson', '876543657689', 'ansve@gmail.com'),
('Janne', 'Hakansson', '787463526354', 'janne@gmail.com'),
('Mange', 'Jansoon', '989876453647', 'mange@gmail.com'),
('Peter', 'person', '897865746574', 'peter@gmail.com');

INSERT INTO skol_info.program (programnamn, program_beskrivning)
VALUES
('Natur', 'Natur programmet handlar om naturvetenskap hsffsfsbfbfbfbfbfjbbfjdbfbf sbfd bb jbjdb bf'),
('Ekonomi', 'lorem ipsun dsdnsdjdnnjsbjhbfsfbjfbf'),
('Teknik', 'sfhskffnkfjnfkfnkfdfndkjfknsfkdnfk');

INSERT INTO skol_info.platser (ort, adress, anlaggningsnamn)
VALUES
('stockhlm', 'lorem ipsum gatan 1', 'yrkesco 1'),
('goteborg', 'lorem ipsun gatan 2', 'yrkesco 2');

INSERT INTO skol_info.kurser (kusrnamn, kurskod, poang, kurs_beskrivning)
VALUES
('Matte', 858, 40, 'hbffbsffbjfbfbfbfjsbfjsbfdsbfjsbfs'),
('python', 834, 40, 'hdsfffjfbbsdbfjdssdbjfbjfbjfjfbj');

INSERT INTO skol_info.konsultforetag (foretagsnamn, organisationsnummer, fskatt, adress, timarvode)
VALUES
('loremkonsult', 8498598, FALSE, 'address 123', 150);

INSERT INTO skol_info.utbildningsledare (person_id)
VALUES
(1);

INSERT INTO skol_info.klass (startar, aktiv, omgang, program_id, utbildningsledare_id, plats_id)
VALUES
('2025-11-07', TRUE, 2, 1, 1, 2),
('2026-12-04', TRUE, 1, 2, 1, 1),
('2026-10-03', TRUE, 3, 3, 1, 1);

INSERT INTO skol_info.studenter (studentnummer, aktivstudent, person_id, klass_id)
VALUES
(24, TRUE, 2, 1),
(25, TRUE, 3, 1);

INSERT INTO skol_info.utbildare (specialisering, person_id, anstallningstyp)
VALUES
('naturkunskap', 4, 'konsult'),
('teknik och matematik', 5, 'lokal');

INSERT INTO skol_info.konsult (utbildare_id, konsultforetag_id)
VALUES 
(1, 1);

INSERT INTO skol_info.kurs_program (program_id, kurs_id)
VALUES
(1,2); 

INSERT INTO skol_info.utbildare_kurser (utbildare_id, kurs_id)
VALUES
(2, 1);
