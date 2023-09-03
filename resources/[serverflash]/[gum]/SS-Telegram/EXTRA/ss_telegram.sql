-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Apr 16, 2022 alle 22:03
-- Versione del server: 10.4.13-MariaDB-1:10.4.13+maria~bionic-log
-- Versione PHP: 7.2.24-0ubuntu0.18.04.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s25674_vestulsalbatic`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `ss_telegram`
--

CREATE TABLE `ss_telegram` (
  `id` int(11) NOT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `senderid` int(11) DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `sendername` varchar(100) DEFAULT NULL,
  `dest` varchar(50) DEFAULT NULL,
  `destid` int(11) DEFAULT NULL,
  `destname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `ss_telegram`
--
ALTER TABLE `ss_telegram`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `ss_telegram`
--
ALTER TABLE `ss_telegram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
