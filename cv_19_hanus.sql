CREATE TABLE cternari (
    idctenar INT AUTO_INCREMENT PRIMARY KEY,
    ctenar_jmeno VARCHAR(32) NOT NULL,
    ctenar_datum_narozeni DATE NOT NULL,
    ctenar_email VARCHAR(64) NOT NULL,
    ctenar_mesto VARCHAR(32) NOT NULL
);