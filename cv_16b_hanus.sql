-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost
-- Vytvořeno: Čtv 30. lis 2023, 10:06
-- Verze serveru: 10.3.34-MariaDB-0+deb10u1
-- Verze PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `mykhailo_buncha`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE `knihy` (
  `idkniha` int(255) NOT NULL,
  `kniha_nazev` varchar(40) NOT NULL,
  `kniha_pocet_stran` int(255) NOT NULL,
  `kniha_autor` varchar(64) NOT NULL,
  `kniha_popis` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`idkniha`, `kniha_nazev`, `kniha_pocet_stran`, `kniha_autor`, `kniha_popis`) VALUES
(1, '1984', 272, 'George Orwell', 'Popisuje svět, v němž vládne absolutní totalita, kterou živí permanentní, „udržovací“ válka mezi třemi kontinentálními mocnostmi. Společnosti vládne Strana a cokoli proti kolektivnímu myšlení Strany je krutě trestáno, lidská individualita se stává zločinem.'),
(2, 'Lolita', 384, 'Vladimir Nabokov', 'Bolestná, šokující i dojemná zpověď čtyřicátníka Humberta o bezmezné erotické posedlosti kouzlem dvanáctileté \"nymfičky\" a jejích tragických důsledcích dokáže i bezmála půlstoletí po svém vzniku zasáhnout čtenáře otevřeností a důsledností, s níž otevírá a rozvíjí své tabuizované téma, s odstupem času jej však stále výrazněji oslovuje jako to, co vždy představovala především: mistrovsky komponované mnohovrstevné pojednání na téma vášně, lásky a hříchu, vycházející z bohatého kulturního zázemí a překypující pro Nabokova typickou slovní virtuozitou, ironií i humorem.');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD PRIMARY KEY (`idkniha`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `knihy`
--
ALTER TABLE `knihy`
  MODIFY `idkniha` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
