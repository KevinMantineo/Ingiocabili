-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Set 24, 2025 alle 15:38
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roadpulse`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `role` enum('USER','ADMIN','MOD','') NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `motorbike`
--

CREATE TABLE `motorbike` (
  `id` int(11) NOT NULL,
  `brand` varchar(15) NOT NULL,
  `model` varchar(15) NOT NULL,
  `km_l` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `motorbike`
--

INSERT INTO `motorbike` (`id`, `brand`, `model`, `km_l`) VALUES
(1, 'Honda', 'CBR500R', 25),
(2, 'Yamaha', 'MT-07', 22.5),
(3, 'Kawasaki', 'Ninja 650', 20),
(4, 'Suzuki', 'GSX-S750', 19.5),
(5, 'Ducati', 'Monster 821', 18),
(6, 'BMW', 'F900R', 21),
(7, 'Triumph', 'Street Triple', 20.5),
(8, 'KTM', 'Duke 390', 35),
(9, 'Harley-Davidson', 'Iron 883', 15),
(10, 'Aprilia', 'RS 660', 21.5),
(11, 'Honda', 'CB650R', 20),
(12, 'Yamaha', 'R6', 18.5),
(13, 'Kawasaki', 'Z900', 19),
(14, 'Suzuki', 'SV650', 21),
(15, 'Ducati', 'Panigale V2', 17),
(16, 'BMW', 'R1250R', 19.5),
(17, 'Triumph', 'Tiger 900', 18.5),
(18, 'KTM', '1290 Super Duke', 15.5),
(19, 'Harley-Davidson', 'Forty-Eight', 14.5),
(20, 'Aprilia', 'Tuono V4', 17.5),
(21, 'Honda', 'CB300R', 30),
(22, 'Yamaha', 'XSR700', 23),
(23, 'Kawasaki', 'Versys 650', 21.5),
(24, 'Suzuki', 'GSX-R1000', 16.5),
(25, 'Ducati', 'Multistrada 950', 19),
(26, 'BMW', 'S1000R', 18.5),
(27, 'Triumph', 'Bonneville T120', 22),
(28, 'KTM', '390 Adventure', 33),
(29, 'Harley-Davidson', 'Street Glide', 13.5),
(30, 'Aprilia', 'RSV4', 16),
(31, 'Honda', 'NC750X', 28),
(32, 'Yamaha', 'Tracer 9', 20),
(33, 'Kawasaki', 'Z650', 22),
(34, 'Suzuki', 'V-Strom 650', 21.5),
(35, 'Ducati', 'Scrambler Icon', 19),
(36, 'BMW', 'F750GS', 20.5),
(37, 'Triumph', 'Speed Triple', 17.5),
(38, 'KTM', '690 Enduro R', 25),
(39, 'Harley-Davidson', 'Softail Standar', 14),
(40, 'Aprilia', 'Shiver 900', 19),
(41, 'Honda', 'CB1000R', 18.5),
(42, 'Yamaha', 'MT-09', 18),
(43, 'Kawasaki', 'Ninja ZX-6R', 16.5),
(44, 'Suzuki', 'Hayabusa', 14.5),
(45, 'Ducati', 'Diavel 1260', 15),
(46, 'BMW', 'R nineT', 19),
(47, 'Triumph', 'Thruxton RS', 21),
(48, 'KTM', 'RC 390', 32),
(49, 'Harley-Davidson', 'Sportster 1200', 13.5),
(50, 'Aprilia', 'Caponord 1200', 17),
(51, 'Honda', 'CBR500F', 24.5),
(52, 'Yamaha', 'FZ-07', 23),
(53, 'Kawasaki', 'ER-6N', 22),
(54, 'Suzuki', 'GSX-S1000F', 17.5),
(55, 'Ducati', 'Monster 1200', 16),
(56, 'BMW', 'S1000XR', 17),
(57, 'Triumph', 'Tiger 1200', 15.5),
(58, 'KTM', '1290 Super Adve', 14.5),
(59, 'Harley-Davidson', 'Fat Boy', 12.5),
(60, 'Aprilia', 'RS125', 35),
(61, 'Honda', 'VFR800', 20.5),
(62, 'Yamaha', 'MT-10', 16.5),
(63, 'Kawasaki', 'Z900RS', 18),
(64, 'Suzuki', 'GSX250R', 30),
(65, 'Ducati', 'Scrambler Deser', 18.5),
(66, 'BMW', 'F900XR', 19),
(67, 'Triumph', 'Tiger Sport 660', 21),
(68, 'KTM', 'Adventure 390', 33),
(69, 'Harley-Davidson', 'Street Bob', 13),
(70, 'Aprilia', 'RSV4 RR', 16.5),
(71, 'Honda', 'CBR1000RR', 15),
(72, 'Yamaha', 'YZF-R3', 28),
(73, 'Kawasaki', 'Ninja 400', 28.5),
(74, 'Suzuki', 'GSX-S750F', 19.5),
(75, 'Ducati', 'Monster 696', 20),
(76, 'BMW', 'R1250RT', 17.5),
(77, 'Triumph', 'Scrambler 1200', 19),
(78, 'KTM', 'RC 125', 42),
(79, 'Harley-Davidson', 'Iron 1200', 14),
(80, 'Aprilia', 'Tuono 660', 21),
(81, 'Honda', 'CBR300R', 29),
(82, 'Yamaha', 'MT-03', 28),
(83, 'Kawasaki', 'Z400', 27.5),
(84, 'Suzuki', 'GSX-R125', 38),
(85, 'Ducati', 'SuperSport 950', 20),
(86, 'BMW', 'G310R', 35),
(87, 'Triumph', 'Street Twin', 22),
(88, 'KTM', 'Duke 200', 40),
(89, 'Harley-Davidson', 'Low Rider', 13.5),
(90, 'Aprilia', 'RSV4 Factory', 15.5),
(91, 'Honda', 'CB500X', 27),
(92, 'Yamaha', 'Tenere 700', 25),
(93, 'Kawasaki', 'Versys-X 300', 33),
(94, 'Suzuki', 'V-Strom 250', 35),
(95, 'Ducati', 'Diavel 1260 S', 15),
(96, 'BMW', 'R1250RS', 18),
(97, 'Triumph', 'Speed Twin', 20),
(98, 'KTM', '690 SMC R', 25),
(99, 'Harley-Davidson', 'Breakout', 12.5),
(100, 'Aprilia', 'Shiver 750', 20),
(101, 'Honda', 'CBR650F', 19.5),
(102, 'Yamaha', 'XSR900', 20),
(103, 'Kawasaki', 'Z1000SX', 16),
(104, 'Suzuki', 'GSX-R600', 18),
(105, 'Ducati', 'Monster 1100', 17.5),
(106, 'BMW', 'S1000RR', 15.5),
(107, 'Triumph', 'Tiger Explorer', 16.5),
(108, 'KTM', '1290 Super Duke', 14.5),
(109, 'Harley-Davidson', 'Road Glide', 12),
(110, 'Aprilia', 'Tuono V4 1100', 17.5);

-- --------------------------------------------------------

--
-- Struttura della tabella `moto_account`
--

CREATE TABLE `moto_account` (
  `id_account` int(11) NOT NULL,
  `id_moto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `message` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `star` enum('1','2','3','4','5') NOT NULL,
  `delete_message` bit(1) NOT NULL,
  `sending_message` enum('DRAFT','PUBLISHED','','') NOT NULL,
  `experience` enum('NEOFITA','PRINCIPIANTE','INTERMEDIO','ESPERTO','PILOTA') NOT NULL,
  `id_street` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `street`
--

CREATE TABLE `street` (
  `id` int(11) NOT NULL,
  `city_start` varchar(20) NOT NULL,
  `point1` varchar(30) DEFAULT NULL,
  `point2` varchar(30) DEFAULT NULL,
  `point3` varchar(30) DEFAULT NULL,
  `point4` varchar(30) DEFAULT NULL,
  `point5` varchar(30) DEFAULT NULL,
  `point6` varchar(30) DEFAULT NULL,
  `point7` varchar(30) DEFAULT NULL,
  `point8` varchar(30) DEFAULT NULL,
  `point9` varchar(30) DEFAULT NULL,
  `point10` varchar(30) DEFAULT NULL,
  `city_end` varchar(20) NOT NULL,
  `length` int(11) NOT NULL,
  `asphalt` enum('PESSIMO','MEDIO','BUONO','PERFETTO') NOT NULL,
  `difficulty` enum('EASY','MEDIUM','HIGH') NOT NULL,
  `star` enum('1','2','3','4','5') NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `street`
--

INSERT INTO `street` (`id`, `city_start`, `point1`, `point2`, `point3`, `point4`, `point5`, `point6`, `point7`, `point8`, `point9`, `point10`, `city_end`, `length`, `asphalt`, `difficulty`, `star`, `description`) VALUES
(1, 'San Venanzo', '42°49\'21.0\"N 12°12\'43.4\"E', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Colonnetta', 23, 'BUONO', 'HIGH', '4', 'una delle strade più belle nella zona di Marsciano, soprattutto per gli amanti del misto stretto viene chiamata da i piloti la 1000 curve, con la possibilità di fermarsi al belvedere di ospedaletto'),
(2, 'Farmacia Piccione', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Gubbio', 28, 'BUONO', 'EASY', '3', 'Buona strada per chi si sta avvicinando al mondo delle moto, curve molto larghe che non stringono all\'ultimo, manto stradale ben fatto, in questa strada si può divertire sia un pilota già esperto sia un neofita'),
(3, 'Gubbio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Scheggia', 12, 'PERFETTO', 'MEDIUM', '5', 'La strada del fagioli, una delle strade con il miglior manto stradale, permette di far esprimere al meglio qualsiasi pilota, attenzione se fatta in discesa'),
(4, 'Valfabbrica', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Casacastalda', 9, 'PESSIMO', 'HIGH', '3', 'peccato per l\'asfalto rovinato perché questa la miglior strada per le varianti veloci in Umbria, una delle strade più importanti del territorio');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `motorbike`
--
ALTER TABLE `motorbike`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `moto_account`
--
ALTER TABLE `moto_account`
  ADD KEY `id_account` (`id_account`,`id_moto`),
  ADD KEY `id_motorbike` (`id_moto`) USING BTREE;

--
-- Indici per le tabelle `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_street` (`id_street`);

--
-- Indici per le tabelle `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `motorbike`
--
ALTER TABLE `motorbike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT per la tabella `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `street`
--
ALTER TABLE `street`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `moto_account`
--
ALTER TABLE `moto_account`
  ADD CONSTRAINT `moto_account_ibfk_1` FOREIGN KEY (`id_account`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `moto_account_ibfk_2` FOREIGN KEY (`id_moto`) REFERENCES `motorbike` (`id`);

--
-- Limiti per la tabella `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `account` (`id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`id_street`) REFERENCES `street` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
