-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu0.1
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost:3306
-- Vytvořeno: Stř 08. lis 2023, 23:05
-- Verze serveru: 8.0.35-0ubuntu0.23.04.1
-- Verze PHP: 8.1.12-1ubuntu4.3

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
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `auta`
--
ALTER TABLE `auta`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
