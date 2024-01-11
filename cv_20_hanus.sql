INSERT INTO autor (jméno, příjmení)
VALUES ('Karel', 'Čapek'),
('František', 'Kafka'),
('Olga', 'Tokarczuková');

INSERT INTO kniha (název, autor_id, rok_vydání, jazyk, žánr, stav)
VALUES ('R.U.R.', 1, 1920, 'čeština', 'sci-fi', 'k dispozici'),
('Proces', 2, 1925, 'čeština', 'dystopie', 'k dispozici'),
('Život na Marsu', 3, 2017, 'polština', 'sci-fi', 'vypůjčeno'),
('Případ 39', 3, 2006, 'polština', 'thriller', 'k dispozici'),
('Předčítač', 3, 2009, 'polština', 'drama', 'k dispozici');

INSERT INTO čtenář (jméno, příjmení, datum_narození, e-mail, telefonní_číslo, datum_od)
VALUES ('Jan', 'Novák', '1970-01-01', 'jan.novak@seznam.cz', '737777777', '2023-01-01'),
('Marie', 'Doležalová', '1995-03-08', 'marie.dolezalova@gmail.com', '777777777', '2022-01-01');
