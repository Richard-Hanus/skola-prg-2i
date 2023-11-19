-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu1
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost:3306
-- Vytvořeno: Ned 19. lis 2023, 22:46
-- Verze serveru: 8.0.35-0ubuntu0.23.10.1
-- Verze PHP: 8.2.10-2ubuntu1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `skola`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `auta`
--

CREATE TABLE `auta` (
  `id` int NOT NULL,
  `nazev` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `znacka` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `barva` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rok_vyroby` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `objem_motoru` int NOT NULL,
  `vykon` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Vypisuji data pro tabulku `auta`
--

INSERT INTO `auta` (`id`, `nazev`, `znacka`, `barva`, `rok_vyroby`, `objem_motoru`, `vykon`) VALUES
(13, 'Skoda,Toyota,Ford,Tesla,Peugeot', 'Octavia,Corolla,Mustang,Model_X,307', 'cerverna,zelena,modra,bila,cerna', '2002,2005,2008,2015,2018', 250, 1024);

-- --------------------------------------------------------

--
-- Struktura tabulky `ctenari`
--

CREATE TABLE `ctenari` (
  `id` int NOT NULL,
  `jmeno` varchar(100) NOT NULL,
  `mesto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Vypisuji data pro tabulku `ctenari`
--

INSERT INTO `ctenari` (`id`, `jmeno`, `mesto`) VALUES
(1, 'Jan Novak', 'Praha'),
(2, 'Eva Vlckova', 'Brno'),
(3, 'Petr Svoboda', 'Praha'),
(4, 'Anna Prochazkova', 'Ostrava');

-- --------------------------------------------------------

--
-- Struktura tabulky `filmy`
--

CREATE TABLE `filmy` (
  `nazev` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rok_vydani` int NOT NULL,
  `delka` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Vypisuji data pro tabulku `filmy`
--

INSERT INTO `filmy` (`nazev`, `rok_vydani`, `delka`) VALUES
('Avatar', 2009, 162),
('Avatar', 2009, 162),
('Ghost Rider', 2007, 110),
('Zastav a Neprezijes', 2006, 93);

-- --------------------------------------------------------

--
-- Struktura tabulky `herci`
--

CREATE TABLE `herci` (
  `jmeno_a_prijmeni` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pocet_filmu` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Vypisuji data pro tabulku `herci`
--

INSERT INTO `herci` (`jmeno_a_prijmeni`, `pocet_filmu`) VALUES
('Jason Statham', 1),
('Nicolas Cage', 1),
('Samuel Henry John Worthington', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE `knihy` (
  `id` int NOT NULL,
  `nazev` varchar(255) NOT NULL,
  `zanr` varchar(50) DEFAULT NULL,
  `pocet_stran` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`id`, `nazev`, `zanr`, `pocet_stran`) VALUES
(1, 'Kniha 1', 'Drama', 60),
(2, 'Kniha 2', 'Romantika', 30),
(3, 'Kniha 3', 'Drama', 80),
(4, 'Kniha 4', 'Sci-fi', 100);

-- --------------------------------------------------------

--
-- Struktura tabulky `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `titulek` varchar(255) NOT NULL,
  `obsah` text,
  `datum_pridani` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `datum_publikace` date DEFAULT NULL,
  `stav` bit(1) DEFAULT NULL,
  `hodnoceni` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Vypisuji data pro tabulku `posts`
--

INSERT INTO `posts` (`id`, `titulek`, `obsah`, `datum_pridani`, `datum_publikace`, `stav`, `hodnoceni`) VALUES
(1, 'První článek', 'Obsah prvního článku...', '2023-11-19 22:21:28', '2023-01-01', b'1', 4),
(2, 'Druhý článek', 'Obsah druhého článku...', '2023-11-19 22:21:28', '2023-02-15', b'1', 3),
(3, 'Třetí článek', 'Obsah třetího článku...', '2023-11-19 22:21:28', '2023-03-20', b'0', 5);

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `heslo` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `email` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Struktura tabulky `zanry`
--

CREATE TABLE `zanry` (
  `nazev` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Vypisuji data pro tabulku `zanry`
--

INSERT INTO `zanry` (`nazev`) VALUES
('horor, akcni, romanticky');

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `auta`
--
ALTER TABLE `auta`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `ctenari`
--
ALTER TABLE `ctenari`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `auta`
--
ALTER TABLE `auta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pro tabulku `ctenari`
--
ALTER TABLE `ctenari`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `knihy`
--
ALTER TABLE `knihy`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
