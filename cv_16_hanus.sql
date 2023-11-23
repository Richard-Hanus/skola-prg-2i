UPDATE filmy
SET nazev = 'Nový název prvního filmu', zanr = 'Nový název prvního žánru'
WHERE id = 1;

UPDATE filmy
SET nazev = 'Nový název druhého filmu', zanr = 'Nový název druhého žánru'
WHERE id = 2;

UPDATE filmy
SET popis = 'Název nového popisu'
WHERE id = 3;

DELETE FROM filmy
WHERE id = 4;
