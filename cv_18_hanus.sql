SELECT jmeno_prijmeni
FROM studenti
WHERE datum_narozeni = (SELECT MIN(datum_narozeni) FROM studenti);
SELECT jmeno_prijmeni
FROM studenti
WHERE datum_narozeni = (SELECT MAX(datum_narozeni) FROM studenti);