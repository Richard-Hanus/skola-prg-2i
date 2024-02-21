CREATE TABLE studenti (
  id INT NOT NULL AUTO_INCREMENT,
  jmeno_prijmeni VARCHAR(255) NOT NULL,
  datum_narozeni DATE NOT NULL,
  trida VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO studenti (jmeno_prijmeni, datum_narozeni, trida) VALUES
  ("Jan Novák", "1990-01-01", "3.A"),
  ("Jana Veselá", "1991-02-02", "3.B"),
  ("Petr Černý", "1992-03-03", "4.A"),
  ("Anna Dvořáková", "1993-04-04", "4.B");