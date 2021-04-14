-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 14. Apr 2021 um 14:55
-- Server-Version: 10.4.18-MariaDB
-- PHP-Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `Healt_Center_2`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `health_staff`
--

CREATE TABLE `health_staff` (
  `pk_staff_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `fk_role_id` int(10) UNSIGNED DEFAULT NULL,
  `fk_unit_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `health_staff`
--

INSERT INTO `health_staff` (`pk_staff_id`, `first_name`, `last_name`, `date_of_birth`, `fk_role_id`, `fk_unit_id`) VALUES
(1, 'Sigismundo', 'Roswarn', '1952-01-07', 1, 1),
(2, 'Randee', 'MacDuff', '2012-07-11', 1, 2),
(3, 'Annemarie', 'Wheal', '2001-04-13', 2, 3),
(4, 'Aeriel', 'Charleston', '1994-12-17', 1, 1),
(5, 'Cati', 'Greenroyd', '1990-02-07', 1, 3),
(6, 'Hugo', 'Anwyl', '1949-10-10', 2, 2),
(7, 'Fabian', 'Eversfield', '1976-02-27', 2, 3),
(8, 'Maximo', 'Cotilard', '1960-08-02', 2, 1),
(9, 'Herbie', 'Mourant', '1946-11-18', 2, 2),
(10, 'Channa', 'Skewes', '1967-05-07', 2, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `patient`
--

CREATE TABLE `patient` (
  `pk_patient_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `date_of_admission` date DEFAULT NULL,
  `fk_performance_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `patient`
--

INSERT INTO `patient` (`pk_patient_id`, `first_name`, `last_name`, `date_of_birth`, `date_of_admission`, `fk_performance_id`) VALUES
(1, 'Ky', 'Mussilli', '1979-06-02', '2019-05-04', 1),
(2, 'Charla', 'Baldrey', '1943-10-09', '2020-02-10', 2),
(3, 'Earvin', 'Craft', '1978-08-22', '2019-07-27', NULL),
(4, 'Bastian', 'Sibray', '1995-03-01', '2020-02-02', NULL),
(5, 'Guendolen', 'Yewdell', '1993-06-30', '2020-03-20', NULL),
(6, 'Brinn', 'Aberchirder', '2004-05-26', '2021-03-29', 3),
(7, 'Odille', 'Feasey', '2015-12-21', '2019-05-13', NULL),
(8, 'Amandie', 'Scoular', '1997-10-04', '2019-07-03', NULL),
(9, 'Michele', 'Winfindale', '2016-12-30', '2020-05-10', NULL),
(10, 'Dorris', 'Barfoot', '1949-02-14', '2019-08-16', 5),
(11, 'Mordecai', 'Brady', '1955-11-24', '2020-09-07', NULL),
(12, 'Xerxes', 'Zaniolo', '1962-08-10', '2020-11-03', NULL),
(13, 'Blair', 'Hurlston', '1984-08-19', '2020-04-15', 4),
(14, 'Marcello', 'McCartan', '1994-06-05', '2020-06-02', NULL),
(15, 'Zeke', 'McLucky', '1983-03-15', '2021-02-06', NULL),
(16, 'Rodrick', 'Wildor', '2004-06-25', '2020-01-01', NULL),
(17, 'Umeko', 'Tender', '1973-03-13', '2020-08-09', NULL),
(18, 'Magda', 'Snibson', '1988-05-10', '2020-02-20', NULL),
(19, 'Jennifer', 'Goodlet', '2002-10-11', '2020-02-23', NULL),
(20, 'Chaddie', 'Cracknell', '2016-07-01', '2019-12-03', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `performance`
--

CREATE TABLE `performance` (
  `pk_performance_id` int(10) UNSIGNED NOT NULL,
  `fk_treatment_id` int(10) UNSIGNED DEFAULT NULL,
  `fk_staff_id` int(10) UNSIGNED DEFAULT NULL,
  `performance_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `performance`
--

INSERT INTO `performance` (`pk_performance_id`, `fk_treatment_id`, `fk_staff_id`, `performance_date`) VALUES
(1, 1, 5, '2021-04-14'),
(2, 3, 9, '2021-04-14'),
(3, 2, 4, '2021-04-14'),
(4, 1, 8, '2021-04-14'),
(5, 1, 5, '2021-04-14');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `role`
--

CREATE TABLE `role` (
  `pk_role_id` int(10) UNSIGNED NOT NULL,
  `role_name` varchar(30) DEFAULT NULL,
  `head` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `role`
--

INSERT INTO `role` (`pk_role_id`, `role_name`, `head`) VALUES
(1, 'Nurse', 0),
(2, 'Doctor', 0),
(3, 'Chief-Doctor', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `treatment`
--

CREATE TABLE `treatment` (
  `pk_treatment_id` int(10) UNSIGNED NOT NULL,
  `treatment_name` varchar(30) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `treatment`
--

INSERT INTO `treatment` (`pk_treatment_id`, `treatment_name`, `price`) VALUES
(1, 'Mock-treament', '10'),
(2, 'Mock-treament', '1000'),
(3, 'Mock-treament', '50');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `unit`
--

CREATE TABLE `unit` (
  `pk_unit_id` int(10) UNSIGNED NOT NULL,
  `unit_name` varchar(30) DEFAULT NULL,
  `floor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `unit`
--

INSERT INTO `unit` (`pk_unit_id`, `unit_name`, `floor`) VALUES
(1, 'Mock-unit', 1),
(2, 'Mock-unit', 2),
(3, 'Mock-unit', 3);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `health_staff`
--
ALTER TABLE `health_staff`
  ADD PRIMARY KEY (`pk_staff_id`),
  ADD KEY `health_staff_ibfk_1` (`fk_role_id`),
  ADD KEY `health_staff_ibfk_2` (`fk_unit_id`);

--
-- Indizes für die Tabelle `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pk_patient_id`),
  ADD KEY `patient_ibfk_1` (`fk_performance_id`);

--
-- Indizes für die Tabelle `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`pk_performance_id`),
  ADD KEY `performance_ibfk_1` (`fk_treatment_id`),
  ADD KEY `performance_ibfk_2` (`fk_staff_id`);

--
-- Indizes für die Tabelle `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`pk_role_id`);

--
-- Indizes für die Tabelle `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`pk_treatment_id`);

--
-- Indizes für die Tabelle `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`pk_unit_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `health_staff`
--
ALTER TABLE `health_staff`
  MODIFY `pk_staff_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `patient`
--
ALTER TABLE `patient`
  MODIFY `pk_patient_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `performance`
--
ALTER TABLE `performance`
  MODIFY `pk_performance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `role`
--
ALTER TABLE `role`
  MODIFY `pk_role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `treatment`
--
ALTER TABLE `treatment`
  MODIFY `pk_treatment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `unit`
--
ALTER TABLE `unit`
  MODIFY `pk_unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `health_staff`
--
ALTER TABLE `health_staff`
  ADD CONSTRAINT `health_staff_ibfk_1` FOREIGN KEY (`fk_role_id`) REFERENCES `role` (`pk_role_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `health_staff_ibfk_2` FOREIGN KEY (`fk_unit_id`) REFERENCES `unit` (`pk_unit_id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`fk_performance_id`) REFERENCES `performance` (`pk_performance_id`) ON UPDATE CASCADE;

--
-- Constraints der Tabelle `performance`
--
ALTER TABLE `performance`
  ADD CONSTRAINT `performance_ibfk_1` FOREIGN KEY (`fk_treatment_id`) REFERENCES `treatment` (`pk_treatment_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `performance_ibfk_2` FOREIGN KEY (`fk_staff_id`) REFERENCES `health_staff` (`pk_staff_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
