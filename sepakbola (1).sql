-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2023 at 01:39 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sepakbola`
--

-- --------------------------------------------------------

--
-- Table structure for table `ballpossession`
--

CREATE TABLE `ballpossession` (
  `match_id` int NOT NULL,
  `team_id` int NOT NULL,
  `possession_time` double NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ballpossession`
--

INSERT INTO `ballpossession` (`match_id`, `team_id`, `possession_time`, `id`) VALUES
(34, 15, 78.33333333333333, 7),
(34, 12, 16.66666666666666, 8),
(35, 12, 98.33333333333333, 9),
(35, 13, 0, 10),
(37, 12, 43.33333333333334, 11),
(37, 13, 43.33333333333334, 12),
(38, 12, 38.33333333333334, 13),
(38, 13, 56.66666666666666, 14),
(39, 12, 48.33333333333334, 15),
(39, 13, 45, 16),
(40, 12, 35, 17),
(40, 13, 60, 18),
(41, 13, 43.33333333333334, 19),
(41, 12, 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `match_id` int NOT NULL,
  `player_id` int NOT NULL,
  `card_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_time` int NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`match_id`, `player_id`, `card_type`, `card_time`, `id`) VALUES
(30, 23, 'yellow', 0, 45),
(30, 28, 'red', 0, 46),
(31, 27, 'red', 0, 47),
(33, 26, 'yellow', 0, 48),
(35, 26, 'yellow', 1, 49),
(39, 27, 'red', 0, 51),
(40, 28, 'yellow', 0, 52),
(41, 28, 'red', 0, 53),
(41, 23, 'red', 0, 54),
(42, 32, 'yellow', 0, 55),
(42, 30, 'yellow', 0, 56);

-- --------------------------------------------------------

--
-- Table structure for table `foul`
--

CREATE TABLE `foul` (
  `id` int NOT NULL,
  `match_id` int NOT NULL,
  `team_id` int NOT NULL,
  `player_id` int NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `id` int NOT NULL,
  `match_id` int NOT NULL,
  `player_id` int NOT NULL,
  `goal_time` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goal`
--

INSERT INTO `goal` (`id`, `match_id`, `player_id`, `goal_time`) VALUES
(88, 30, 23, 0),
(89, 30, 28, 0),
(90, 33, 23, 0),
(92, 35, 23, 0),
(93, 35, 28, 0),
(94, 35, 28, 1),
(96, 35, 27, 1),
(97, 35, 23, 2),
(98, 35, 27, 2),
(99, 37, 23, 0),
(100, 37, 28, 0),
(101, 38, 24, 0),
(102, 38, 28, 0),
(103, 38, 27, 0),
(105, 39, 28, 0),
(107, 40, 28, 0),
(108, 41, 23, 0),
(109, 41, 28, 0),
(110, 41, 23, 0),
(111, 42, 30, 0),
(112, 42, 33, 0);

-- --------------------------------------------------------

--
-- Table structure for table `injury`
--

CREATE TABLE `injury` (
  `id` int NOT NULL,
  `match_id` int NOT NULL,
  `player_id` int NOT NULL,
  `injury_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `match`
--

CREATE TABLE `match` (
  `id` int NOT NULL,
  `homeTeam` int NOT NULL,
  `awayTeam` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `match`
--

INSERT INTO `match` (`id`, `homeTeam`, `awayTeam`) VALUES
(30, 12, 13),
(31, 13, 12),
(32, 19, 18),
(33, 15, 12),
(34, 12, 15),
(35, 12, 13),
(36, 12, 13),
(37, 12, 13),
(38, 12, 13),
(39, 12, 13),
(40, 12, 13),
(41, 12, 13),
(42, 21, 22);

-- --------------------------------------------------------

--
-- Table structure for table `offset`
--

CREATE TABLE `offset` (
  `match_id` int NOT NULL,
  `offset_team_id` int NOT NULL,
  `offset_time` int NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offset`
--

INSERT INTO `offset` (`match_id`, `offset_team_id`, `offset_time`, `id`) VALUES
(30, 12, 0, 16),
(37, 13, 0, 17),
(38, 13, 0, 18),
(40, 12, 0, 19),
(41, 12, 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberJersey` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int NOT NULL,
  `status` enum('main','cadangan') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id`, `name`, `numberJersey`, `position`, `team_id`, `status`) VALUES
(23, 'A1', '1', 'CB', 12, 'main'),
(24, 'A2', '2', 'ST', 12, 'main'),
(26, 'A4', '4', 'CB', 12, 'cadangan'),
(27, 'B1', '1', 'CB', 13, 'main'),
(28, 'B2', '2', 'ST', 13, 'main'),
(29, 'A3', '3', 'STT', 12, 'main'),
(30, 'PEKOK', '12', 'CB', 21, 'main'),
(31, 'POlet', '13', 'GK', 21, 'cadangan'),
(32, 'DESPRATE', '2', 'ST', 22, 'main'),
(33, 'GK', '25', 'CB', 22, 'cadangan');

-- --------------------------------------------------------

--
-- Table structure for table `switchplayer`
--

CREATE TABLE `switchplayer` (
  `match_id` int NOT NULL,
  `player_out_id` int NOT NULL,
  `player_in_id` int NOT NULL,
  `switch_time` int NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `switchplayer`
--

INSERT INTO `switchplayer` (`match_id`, `player_out_id`, `player_in_id`, `switch_time`, `id`) VALUES
(35, 23, 24, 2, 20),
(39, 23, 26, 0, 21),
(40, 24, 26, 0, 22),
(42, 32, 33, 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `logo`) VALUES
(12, 'RSU. MULIA HATI FC WONOGIRI', 'logo-team-1685944343072-RSU. Mulia Hati FC.jpeg'),
(13, 'MUTIARA SOLO', 'logo-team-1685944366053-Mutiara Solo.jpeg'),
(14, 'PUTRA GEDANGAN FC', 'logo-team-1685944454449-WhatsApp Image 2023-06-03 at 11.57.33 (3).jpeg'),
(15, 'WALISONGO SRAGEN', 'logo-team-1685944503210-WhatsApp Image 2023-06-03 at 11.57.28 (1).jpeg'),
(16, 'ALIVE FC', 'logo-team-1685944524689-WhatsApp Image 2023-06-03 at 11.57.30.jpeg'),
(17, 'SURAKARTA UNITED', 'logo-team-1685944562132-WhatsApp Image 2023-06-03 at 11.57.30 (1).jpeg'),
(18, 'SEDULUR GAYENG FC', 'logo-team-1685944592971-WhatsApp Image 2023-06-03 at 11.57.30 (2).jpeg'),
(19, 'GIRIMUDA FC', 'logo-team-1685944613568-WhatsApp Image 2023-06-03 at 11.57.29 (2).jpeg'),
(21, 'PPP', 'logo-team-1686269706863-277148.jpg'),
(22, 'AAA', 'logo-team-1686269791993-iLSfkji-darker-than-black-wallpaper.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ballpossession`
--
ALTER TABLE `ballpossession`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ballPossession_match_id_fkey` (`match_id`),
  ADD KEY `ballPossession_team_id_fkey` (`team_id`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_match_id_fkey` (`match_id`),
  ADD KEY `card_player_id_fkey` (`player_id`);

--
-- Indexes for table `foul`
--
ALTER TABLE `foul`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foul_player_id_fkey` (`player_id`),
  ADD KEY `foul_match_id_fkey` (`match_id`);

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goal_player_id_fkey` (`player_id`),
  ADD KEY `goal_match_id_fkey` (`match_id`);

--
-- Indexes for table `injury`
--
ALTER TABLE `injury`
  ADD PRIMARY KEY (`id`),
  ADD KEY `injury_player_id_fkey` (`player_id`),
  ADD KEY `injury_match_id_fkey` (`match_id`);

--
-- Indexes for table `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `match_homeTeam_fkey` (`homeTeam`),
  ADD KEY `match_awayTeam_fkey` (`awayTeam`);

--
-- Indexes for table `offset`
--
ALTER TABLE `offset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offset_match_id_fkey` (`match_id`),
  ADD KEY `offset_offset_team_id_fkey` (`offset_team_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_team_id_fkey` (`team_id`);

--
-- Indexes for table `switchplayer`
--
ALTER TABLE `switchplayer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `switchPlayer_match_id_fkey` (`match_id`),
  ADD KEY `switchPlayer_player_out_id_fkey` (`player_out_id`),
  ADD KEY `switchPlayer_player_in_id_fkey` (`player_in_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ballpossession`
--
ALTER TABLE `ballpossession`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `card`
--
ALTER TABLE `card`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `foul`
--
ALTER TABLE `foul`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goal`
--
ALTER TABLE `goal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `injury`
--
ALTER TABLE `injury`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `match`
--
ALTER TABLE `match`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `offset`
--
ALTER TABLE `offset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `switchplayer`
--
ALTER TABLE `switchplayer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ballpossession`
--
ALTER TABLE `ballpossession`
  ADD CONSTRAINT `ballPossession_match_id_fkey` FOREIGN KEY (`match_id`) REFERENCES `match` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ballPossession_team_id_fkey` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_match_id_fkey` FOREIGN KEY (`match_id`) REFERENCES `match` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `card_player_id_fkey` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `foul`
--
ALTER TABLE `foul`
  ADD CONSTRAINT `foul_match_id_fkey` FOREIGN KEY (`match_id`) REFERENCES `match` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foul_player_id_fkey` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `goal`
--
ALTER TABLE `goal`
  ADD CONSTRAINT `goal_match_id_fkey` FOREIGN KEY (`match_id`) REFERENCES `match` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `goal_player_id_fkey` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `injury`
--
ALTER TABLE `injury`
  ADD CONSTRAINT `injury_match_id_fkey` FOREIGN KEY (`match_id`) REFERENCES `match` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `injury_player_id_fkey` FOREIGN KEY (`player_id`) REFERENCES `player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `match`
--
ALTER TABLE `match`
  ADD CONSTRAINT `match_awayTeam_fkey` FOREIGN KEY (`awayTeam`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `match_homeTeam_fkey` FOREIGN KEY (`homeTeam`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `offset`
--
ALTER TABLE `offset`
  ADD CONSTRAINT `offset_match_id_fkey` FOREIGN KEY (`match_id`) REFERENCES `match` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `offset_offset_team_id_fkey` FOREIGN KEY (`offset_team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player`
--
ALTER TABLE `player`
  ADD CONSTRAINT `player_team_id_fkey` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `switchplayer`
--
ALTER TABLE `switchplayer`
  ADD CONSTRAINT `switchPlayer_match_id_fkey` FOREIGN KEY (`match_id`) REFERENCES `match` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `switchPlayer_player_in_id_fkey` FOREIGN KEY (`player_in_id`) REFERENCES `player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `switchPlayer_player_out_id_fkey` FOREIGN KEY (`player_out_id`) REFERENCES `player` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
