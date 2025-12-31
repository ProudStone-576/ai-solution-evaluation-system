-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2025 at 11:31 AM
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
-- Database: `gamify`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai_evaluation`
--

CREATE TABLE `ai_evaluation` (
  `evaluationID` int(11) NOT NULL,
  `solutionID` int(11) DEFAULT NULL,
  `ai_score` float DEFAULT NULL,
  `feedback` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_evaluation`
--

INSERT INTO `ai_evaluation` (`evaluationID`, `solutionID`, `ai_score`, `feedback`) VALUES
(1, 1, 98, 'celestial worthy!'),
(2, 2, 60, 'Good!'),
(3, 3, 32, 'Need Work!'),
(4, 4, 85, 'Clean UX, nice touch!'),
(5, 5, 77, 'Celestial worthy!'),
(6, 6, 95, 'Great!');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `solutionID` int(11) DEFAULT NULL,
  `comment_text` text DEFAULT NULL,
  `created_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `userID`, `solutionID`, `comment_text`, `created_time`) VALUES
(1, 1, 1, 'Good shit', '2025-04-06 12:30:00'),
(2, 2, 2, 'bro you saved my life', '2025-04-06 13:00:00'),
(3, 3, 3, 'you know you could have done this better', '2025-04-06 13:30:00'),
(4, 4, 4, 'das INSANE', '2025-04-07 14:00:00'),
(5, 5, 5, 'we got this before GTA6', '2025-04-07 14:15:00'),
(6, 6, 6, 'Bro just reinvented Duolingo but for math', '2025-04-07 14:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `ratingID` int(11) NOT NULL,
  `solutionID` int(11) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `stars` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`ratingID`, `solutionID`, `userID`, `review`, `stars`) VALUES
(1, 1, 2, 'good', 4),
(2, 2, 3, 'great', 5),
(3, 3, 1, 'get good bozo', 3),
(4, 4, 5, 'This goes hard', 5),
(5, 5, 6, 'hahaha this hella good!!', 4),
(6, 6, 4, 'ok', 5);

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `solutionID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `taskID` int(11) DEFAULT NULL,
  `solution_method` text DEFAULT NULL,
  `submitted_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`solutionID`, `userID`, `taskID`, `solution_method`, `submitted_time`) VALUES
(1, 1, 1, 'Develop gamify app for task management', '2025-04-06 14:30:00'),
(2, 2, 2, 'Full stack development in a week', '2025-04-06 15:00:00'),
(3, 3, 3, 'Diversify the portfolio in TFSA for falling profits', '2025-04-06 16:00:00'),
(4, 4, 4, 'use the course learn how to learn on EDX', '2025-04-07 12:30:00'),
(5, 5, 5, 'Chart.js and benjmin yt chennel', '2025-04-07 13:00:00'),
(6, 6, 6, 'GPT-4 fine-tuned with either school data and kaggle', '2025-04-07 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `difficulty_level` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`taskID`, `userID`, `title`, `description`, `category`, `difficulty_level`, `status`, `created_time`) VALUES
(1, 1, 'Gamify App Development', 'Create a mobile app that gamifies everyday tasks', 'App Development', 'Polymath', 'Pending', '2025-04-06 14:00:00'),
(2, 2, 'Full Stack Development', 'Develop a full stack application in a week', 'Web Development', 'Advanced', 'Completed', '2025-04-06 15:00:00'),
(3, 3, 'Investment Strategy', 'Diversify portfolio in TFSA to recover from falling profits', 'Investment', 'Expert', 'In Progress', '2025-04-06 16:00:00'),
(4, 4, 'learning how to learn', 'Build a journal and learn your own learning patterns', 'App Development', 'Intermediate', 'Pending', '2025-04-07 10:00:00'),
(5, 5, 'Trading', 'analyze companies using deep value strategy', 'Finance Tech', 'Advanced', 'In Progress', '2025-04-07 11:00:00'),
(6, 6, 'AI Study Buddy', 'an ai app that could change the study platform', 'AI Tools', 'Expert', 'Pending', '2025-04-07 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `titleID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `title_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`titleID`, `userID`, `title_name`) VALUES
(1, 1, 'Golden bird of dominion'),
(2, 2, 'The eye contractor'),
(3, 3, 'The platinum chicken'),
(4, 4, 'Absolute Statements'),
(5, 5, 'the eye contractor'),
(6, 6, 'the pattern seeker');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `email`, `password`, `created_time`) VALUES
(1, 'Alex', 'alex@g.com', 'password123', '2025-04-07 08:00:00'),
(2, 'Sam', 'sam@g.com', 'sam1234', '2025-04-07 08:30:00'),
(3, 'Jordan', 'jordan@g.com', 'jordansafe', '2025-04-07 09:00:00'),
(4, 'Zara', 'zara@g.com', 'zara2025', '2025-04-07 09:30:00'),
(5, 'Riko', 'riko@g.com', 'rikospassword', '2025-04-07 10:00:00'),
(6, 'Neo', 'neo@g.com', 'neo2025secure', '2025-04-07 10:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ai_evaluation`
--
ALTER TABLE `ai_evaluation`
  ADD PRIMARY KEY (`evaluationID`),
  ADD KEY `solutionID` (`solutionID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `solutionID` (`solutionID`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`ratingID`),
  ADD KEY `solutionID` (`solutionID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`solutionID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `taskID` (`taskID`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`taskID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`titleID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ai_evaluation`
--
ALTER TABLE `ai_evaluation`
  MODIFY `evaluationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `ratingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `solutionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `taskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `titleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ai_evaluation`
--
ALTER TABLE `ai_evaluation`
  ADD CONSTRAINT `ai_evaluation_ibfk_1` FOREIGN KEY (`solutionID`) REFERENCES `solutions` (`solutionID`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`solutionID`) REFERENCES `solutions` (`solutionID`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`solutionID`) REFERENCES `solutions` (`solutionID`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `solutions`
--
ALTER TABLE `solutions`
  ADD CONSTRAINT `solutions_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `solutions_ibfk_2` FOREIGN KEY (`taskID`) REFERENCES `task` (`taskID`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
