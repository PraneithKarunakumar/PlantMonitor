-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2024 at 05:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plantsensorvalues`
--

-- --------------------------------------------------------

--
-- Table structure for table `datas`
--

CREATE TABLE `datas` (
  `id` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `humidity` float DEFAULT NULL,
  `moisture` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datas`
--

INSERT INTO `datas` (`id`, `Date`, `temperature`, `humidity`, `moisture`) VALUES
(329, '2024-09-10 23:01:21', 23.3, 61, 1023),
(330, '2024-09-10 23:01:27', 23.3, 61, 1023),
(331, '2024-09-10 23:01:32', 23.3, 61, 1023),
(332, '2024-09-10 23:01:37', 23.3, 61, 1023),
(333, '2024-09-10 23:01:41', 23.2, 61, 1023),
(334, '2024-09-10 23:01:46', 23.3, 61, 1023),
(335, '2024-09-10 23:01:52', 23.2, 61, 1023),
(336, '2024-09-10 23:01:57', 23.3, 61, 1023),
(337, '2024-09-10 23:02:02', 23.2, 61, 1023),
(338, '2024-09-10 23:02:07', 23.3, 61, 1023),
(339, '2024-09-10 23:02:12', 23.2, 61, 1023),
(340, '2024-09-10 23:02:17', 23.2, 61, 1023),
(341, '2024-09-10 23:02:22', 23.3, 61, 169),
(342, '2024-09-10 23:02:27', 23.2, 61, 183),
(343, '2024-09-10 23:02:32', 23.3, 61, 181),
(344, '2024-09-10 23:02:37', 23.2, 61, 180),
(345, '2024-09-10 23:02:42', 23.2, 61, 993),
(346, '2024-09-10 23:02:47', 23.2, 61, 985),
(347, '2024-09-10 23:02:52', 23.2, 61, 1000),
(348, '2024-09-10 23:02:57', 23.2, 61, 1023),
(349, '2024-09-10 23:03:02', 23.2, 61, 1023),
(350, '2024-09-10 23:03:07', 23.2, 61, 1023),
(351, '2024-09-10 23:03:13', 23.2, 61, 1023),
(352, '2024-09-10 23:03:18', 23.2, 61, 1023),
(353, '2024-09-10 23:03:22', 23.2, 61, 1023),
(354, '2024-09-10 23:03:27', 23.2, 61, 1023),
(355, '2024-09-10 23:03:32', 23.2, 61, 1023),
(356, '2024-09-10 23:03:37', 23.2, 61, 1023),
(357, '2024-09-10 23:03:43', 23.2, 61, 1023),
(358, '2024-09-10 23:03:48', 23.2, 61, 1023),
(359, '2024-09-10 23:03:53', 23.2, 61, 1022),
(360, '2024-09-10 23:03:58', 23.2, 61, 189),
(361, '2024-09-10 23:04:03', 23.3, 61, 188),
(362, '2024-09-10 23:04:07', 23.2, 61, 187),
(363, '2024-09-10 23:04:12', 23.3, 61, 1014),
(364, '2024-09-10 23:04:17', 23.2, 61, 1023),
(365, '2024-09-10 23:04:23', 23.3, 61, 1023),
(366, '2024-09-10 23:04:28', 23.2, 61, 1021),
(367, '2024-09-10 23:04:33', 23.2, 61, 1013),
(368, '2024-09-10 23:04:38', 23.2, 61, 1023),
(369, '2024-09-10 23:04:43', 23.2, 61, 1023),
(370, '2024-09-10 23:04:48', 23.2, 61, 1023),
(371, '2024-09-10 23:04:53', 23.2, 61, 1023),
(372, '2024-09-10 23:04:59', 23.2, 61, 1023),
(373, '2024-09-10 23:05:03', 23.2, 61, 1023),
(374, '2024-09-10 23:05:08', 23.2, 61, 1023),
(375, '2024-09-10 23:05:13', 23.2, 61, 1023),
(376, '2024-09-10 23:05:18', 23.2, 61, 1023),
(377, '2024-09-10 23:05:23', 23.2, 61, 1023),
(378, '2024-09-10 23:05:29', 23.2, 61, 1023),
(379, '2024-09-10 23:05:34', 23.2, 61, 1023),
(380, '2024-09-10 23:05:38', 23.2, 61, 1023),
(381, '2024-09-10 23:05:43', 23.3, 61, 1023),
(382, '2024-09-10 23:05:48', 23.3, 61, 1023),
(383, '2024-09-10 23:05:53', 23.2, 61, 1023),
(384, '2024-09-10 23:05:59', 23.2, 61, 1023),
(385, '2024-09-10 23:06:04', 23.2, 61, 1023),
(386, '2024-09-10 23:06:09', 23.2, 61, 1023),
(387, '2024-09-10 23:06:14', 23.2, 61, 1023),
(388, '2024-09-10 23:06:19', 23.2, 61, 1023),
(389, '2024-09-10 23:06:24', 23.2, 61, 1023),
(390, '2024-09-10 23:06:29', 23.2, 61, 1023),
(391, '2024-09-10 23:06:34', 23.2, 61, 1023),
(392, '2024-09-10 23:06:39', 23.3, 61, 1023),
(393, '2024-09-10 23:06:44', 23.3, 61, 1023),
(394, '2024-09-10 23:06:48', 23.2, 61, 1023),
(395, '2024-09-10 23:06:54', 23.2, 61, 1023),
(396, '2024-09-10 23:06:59', 23.2, 61, 1023),
(397, '2024-09-10 23:07:04', 23.2, 61, 1023),
(398, '2024-09-10 23:07:09', 23.2, 61, 1023),
(399, '2024-09-10 23:07:14', 23.2, 61, 1023),
(400, '2024-09-10 23:07:19', 23.2, 61, 1023),
(401, '2024-09-10 23:07:25', 23.2, 61, 1023),
(402, '2024-09-10 23:07:29', 23.2, 61, 1023),
(403, '2024-09-10 23:07:34', 23.2, 61, 1023),
(404, '2024-09-10 23:07:39', 23.2, 61, 1023),
(405, '2024-09-10 23:07:44', 23.2, 61, 1023),
(406, '2024-09-10 23:07:49', 23.2, 61, 1023),
(407, '2024-09-10 23:07:54', 23.2, 61, 1023);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hi`
-- (See below for the actual view)
--
CREATE TABLE `hi` (
`ID` int(11)
,`Date` datetime
,`Temperature` float
,`Humidity` float
,`Moisture` float
);

-- --------------------------------------------------------

--
-- Table structure for table `sensorvalues1`
--

CREATE TABLE `sensorvalues1` (
  `ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Temperature` float DEFAULT NULL,
  `Humidity` float DEFAULT NULL,
  `Moisture` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure for view `hi`
--
DROP TABLE IF EXISTS `hi`;

CREATE ALGORITHM=MERGE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hi`  AS SELECT `sensorvalues1`.`ID` AS `ID`, `sensorvalues1`.`Date` AS `Date`, `sensorvalues1`.`Temperature` AS `Temperature`, `sensorvalues1`.`Humidity` AS `Humidity`, `sensorvalues1`.`Moisture` AS `Moisture` FROM `sensorvalues1` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datas`
--
ALTER TABLE `datas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sensorvalues1`
--
ALTER TABLE `sensorvalues1`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datas`
--
ALTER TABLE `datas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT for table `sensorvalues1`
--
ALTER TABLE `sensorvalues1`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
