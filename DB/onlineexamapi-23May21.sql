-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 11:01 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineexamapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `courseDescription` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `courseName`, `courseDescription`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Mathmatics', 'This is Mathmatics course.', 1, '0000-00-00 00:00:00', '2021-05-10 09:12:56'),
(2, 'Hindi', 'This is hindi course.', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'English', 'This is english course.', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Social Science', 'This is Social Science course.', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Science', 'This is science course.', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gangcontents`
--

CREATE TABLE `gangcontents` (
  `id` int(11) NOT NULL,
  `bId` int(11) DEFAULT NULL,
  `fileOriginalName` varchar(255) DEFAULT NULL,
  `savingFileName` varchar(255) DEFAULT NULL,
  `fileExtension` varchar(255) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangcontents`
--

INSERT INTO `gangcontents` (`id`, `bId`, `fileOriginalName`, `savingFileName`, `fileExtension`, `filePath`, `createdAt`, `updatedAt`) VALUES
(1, 2, 'Electricity X physics.pdf', 'Batch-2-1620990729_9cf9f7eafc00cd7e6aef.pdf', 'pdf', '/upload/BatchContent/Batch-2-1620990729_9cf9f7eafc00cd7e6aef.pdf', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 6, 'english work.jpeg', 'Batch-6-1621155842_ba962a1548d0b5f58a99.jpeg', 'jpeg', '/upload/BatchContent/Batch-6-1621155842_ba962a1548d0b5f58a99.jpeg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gangs`
--

CREATE TABLE `gangs` (
  `id` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `bName` varchar(255) DEFAULT NULL,
  `bDescription` text,
  `status` enum('0','1') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gangs`
--

INSERT INTO `gangs` (`id`, `courseId`, `bName`, `bDescription`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Maths Batch 1', 'Maths Batch 1 description.', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Maths Batch 2', 'This is Maths Batch 2.', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 1, 'Maths Batch 3', 'This is Maths Batch 3', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'Hindi Batch 1', 'This is Hindi Batch 1.', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'Hindi Batch 2', 'This is Hindi Batch 2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 3, 'English Batch 1', 'This is English Batch 1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 3, 'English Batch 2', 'This is English Batch 2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 4, 'Social Science Batch 1', 'This is Social Science Batch 1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 4, 'Social Science Batch 2', 'This is Social Science Batch 2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 5, 'Science Batch 1', 'This is Science Batch 1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 5, 'Science Batch 2', 'This is Science Batch 2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210218054819-create-course.js'),
('20210218061323-create-course.js'),
('20210221024500-create-user.js'),
('20210222050333-create-user-course.js'),
('20210316061814-create-user.js'),
('20210316063258-addPhonenoInUserTable.js'),
('20210317044610-create-gangs.js'),
('20210317050042-create-gangcontent.js'),
('20210317050453-create-testquestion.js'),
('20210317051616-create-test.js'),
('20210317051843-create-usercoursegang.js');

-- --------------------------------------------------------

--
-- Table structure for table `testquestions`
--

CREATE TABLE `testquestions` (
  `id` int(11) NOT NULL,
  `testId` int(11) DEFAULT NULL,
  `question` text,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `option5` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testquestions`
--

INSERT INTO `testquestions` (`id`, `testId`, `question`, `option1`, `option2`, `option3`, `option4`, `option5`, `answer`, `createdAt`, `updatedAt`) VALUES
(1, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 2, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 2, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 5, 'Grand Central Terminal, Park Avenue, New York is the world\'s', 'largest railway station', 'highest railway station', 'longest railway station', 'None of the above', NULL, 'A', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 5, 'Entomology is the science that studies', 'Behavior of human beings', 'Insects', 'The origin and history of technical and scientific terms', 'The formation of rocks', NULL, 'C', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 4, 'Rahul will pass the message.', 'The message will passed by Rahul.', 'The message would be passed by Rahul.', 'The message will pass by Rahul.', 'The message will be passed by Rahul.', NULL, 'E', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 4, 'His hard work satisfied me.', 'I was satisfied for his hard work.', ' I was satisfied by his hard work.', 'I was satisfied with his hard work.', 'I was satisfied at his hard work.', NULL, 'D', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 4, 'His comment hurt me deeply.', ' I was hurt deeply by his comment.', 'I could be hurt deeply by his comment.', 'His comment was hurtful.', 'I should not be hurt by his comment.', NULL, 'B', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 4, 'He stole that watch.', 'hat watch was stolen by him.', 'That watch stolen by him', 'That watch stole by him.', 'That watch had stolen by him.', NULL, 'B', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 4, 'Sita was reading the Gita.', 'The Gita was being read by Sita.', 'The Gita were being read by Sita.', 'Gita was being read by Sita.', 'he Gita was read by Sita.', NULL, 'B', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `testId` int(11) NOT NULL,
  `courseId` int(11) DEFAULT NULL,
  `bId` int(11) DEFAULT NULL,
  `testName` varchar(255) DEFAULT NULL,
  `testDescription` text,
  `status` enum('0','1') DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`testId`, `courseId`, `bId`, `testName`, `testDescription`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 5, 10, 'Science B-11 Test-1', 'This is Science Batch 1 Test 1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 3, 'Mathmatics B-3 Test-1', 'This i sMathmatics Batch 3 Test 1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 4, 'Hindi B-1 Test-1', 'This is Hindi Batch 1 Test 1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 3, 7, 'English B-2 Test-1', 'This is English Batch 2 Test 1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 1, 2, 'Mathmatics B-2 Test-1', 'This is Mathmatics Batch 2 Test 1', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 2, 4, 'Hindi B-1 Test-2', 'This is Hindi Batch 1 Test 2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 2, 'Mathmatics B-2 Test-2', 'This is Mathmatics B-2 Test-2', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `usercoursegangs`
--

CREATE TABLE `usercoursegangs` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `gangId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `phoneno` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `password`, `email`, `permission_id`, `createdAt`, `updatedAt`, `phoneno`) VALUES
(1, 'anand', 'shukla', 'anand4143', '$2a$10$xahEzlOj7XGVzPjIaOTXVeYfV8XbcblVP/8MOk.Jg2EF4LA3WuNSy', 'anand.knp@gmail.com', 1, '2021-02-23 03:50:36', '2021-02-23 03:50:36', NULL),
(2, '222anand', 'shukla', 'anand4143', '$2y$10$xgYmAUC7it9ag/9kv4OZL.iFHe5ToVqKr3fr9IfACIiDFUHVcArmy', 'anand.knp1@gmail.com', 1, '2021-02-23 03:51:08', '2021-03-18 10:05:04', 1234567890),
(3, 'anand', 'shukla', 'anand4143', '$2a$10$aVmXLyxXJtXkGCUakWBf..wiojXwiD63Y5BgPdeiG/Hg4NLS3cvTu', 'anand.knp2@gmail.com', 1, '2021-02-24 07:00:32', '2021-02-24 07:00:32', NULL),
(4, 'sadf', 'sdfasdf', 'asdfsdf', '$2a$10$FKlnB/v9iB8QQr94fCSgMecoGpSbe/U.gXl4lw0krNarYyULOUXd2', 'superAdmin@pippintechnologies.com', 1, '2021-02-24 07:06:07', '2021-03-18 10:05:23', 1234567890),
(5, 'asdf', 'sdafasdf', 'asdfsdfsdf', '$2a$10$mBHlrJI5VlzvA4SpWamMJOVb8/13ysMzbF03ddjQjq.AYXSnKzCfG', 'test@test.com', 1, '2021-02-24 07:12:06', '2021-02-24 07:12:06', NULL),
(6, 'asdf', 'asdfsadf', 'asdfsdf', '$2y$10$xgYmAUC7it9ag/9kv4OZL.iFHe5ToVqKr3fr9IfACIiDFUHVcArmy', 'testt@fasdf.sdf', 1, '2021-02-24 07:14:02', '2021-02-24 07:14:02', NULL),
(7, 'asdf', 'asdfsadf', 'asdfsdf', '$2a$10$9UiWrMcw/bJXFPHaCd6Wtesh2pLnYTgNKqrxpK41L.HrGAkNakYr6', 'testt444@fasdf.sdf', 1, '2021-02-24 07:17:36', '2021-02-24 07:17:36', NULL),
(8, 'asdf', 'asdf', 'asdfsdf', '$2a$10$gGCyhc2y1pl6kTHWcssDhOsqDbVA.Ku/14bOcuNkRB/iHykUUBsHe', 'sdfsdf@psdfsdf.com', 1, '2021-02-24 07:18:47', '2021-02-24 07:18:47', NULL),
(9, 'sadfsdf', 'asdfasdf', 'asdfsadf', '$2a$10$KVfDm6xNfIceunXZXqarouLf0Ynf5ahXlOYqZvRH0sKsfrkWCHTYu', 'sdfsadf@sdfas.sadfsdf', 1, '2021-02-24 07:42:37', '2021-02-24 07:42:37', NULL),
(10, 'sdfsdf', 'asdfasd', 'fasdfasdf', '$2a$10$HqghEig30wKjJy4t6.GTIeoGmihieMVBodv83CiAEcJiu83G/DUsm', 'asf@fsd.asdf', 1, '2021-02-24 07:47:47', '2021-02-24 07:47:47', NULL),
(11, 'anand', 'shukla', 'anand123456', '$2a$10$uhgvZY5E4QSxBSJjqWaNWuemDoKsyoq/YBz48f3fbOOXR3sWKXg1i', 'anand.kkk@gmail.com', 1, '2021-02-25 05:12:24', '2021-02-25 05:12:24', NULL),
(12, 'anand', 'shukla', 'aaaaaaa', '$2a$10$Iuuedv0yyeD01TLf3Xi3sekQo8dmydh79l6G2zH1tPUfd/9lcwmF6', 'anand.knpknp@gmail.com', 1, '2021-02-27 08:09:15', '2021-02-27 08:09:15', NULL),
(13, 'sharad', 'patel', 'sadfasdf', '$2a$10$Nlx4BR4biAZ/V/6Es5NiEuAXTY5G6OygPydBpnajVOrpFKJXkFC6S', 'sharad@gmail.com', 1, '2021-02-27 08:12:56', '2021-02-27 08:12:56', NULL),
(14, 'anand', 'shukla', 'anand4143', '$2a$10$uZ1pXJeg2H70u7OFHPhfluTFU2AJAGPlm169HJIAHvPjlJKg8pXPK', 'anand.knppasswordtest@gmail.com', 1, '2021-03-07 11:40:17', '2021-03-07 11:40:17', NULL),
(15, 'anand', 'shukla', 'anand4143', '$2a$10$glLEG5LrxdHen5HWuM3wYurH4YfrdNwaiAcVK.YsfLj1Qh/YxiR22', 'anand.knppasswordtest1@gmail.com', 1, '2021-03-07 11:47:54', '2021-03-07 11:47:54', NULL),
(16, 'John', 'Doe', NULL, NULL, 'example@example.com', NULL, '2021-03-16 05:49:17', '2021-03-16 05:49:17', NULL),
(17, 'anand', 'shukla', 'anand4143', '$2a$10$xahEzlOj7XGVzPjIaOTXVeYfV8XbcblVP/8MOk.Jg2EF4LA3WuNSy', 'neeraj@gmail.com', 1, '2021-03-16 07:01:59', '2021-03-16 07:01:59', NULL),
(18, 'anand', 'shukla', 'anand4143', '$2a$10$jnU1ZM8YLoJWlzT9ENuOkOvxErVMMIAJoc20r3WQOJGgDKYVPBChm', 'neeraj1@gmail.com', 1, '2021-03-17 04:00:26', '2021-03-17 04:00:26', NULL),
(19, 'anand', 'shukla', 'anand4143', '$2a$10$7O3F58LkTejjatRWa9CT6u6cfv5K3NSRH6D.jDDfqKKib1bWd6cEy', 'neeraj2@gmail.com', 1, '2021-03-17 04:05:33', '2021-03-18 10:04:50', 1345678903),
(20, 'hi new', 'shukla', NULL, '$2y$10$hXklmAG0EHQWUIk8Mp5JpOuEuir0BMOlRBD2fIQeH1cvADfuxk.uS', 'anand.knphinew@gmail.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2345678901),
(21, 'anand', 'shukla', NULL, '$2y$10$J/ZPg8i50hWbkQ1xubNz4O0k.0BdC2j4vSfhkvpHV.dyQt2PZR.o.', 'anand.knp343434@gmail.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 7042105960),
(22, 'sdfsdf', 'adfsdf', NULL, '$2y$10$9cBpD1ARxv8L.bng9NgBNe5cPN7wdoVxglLfAMsGKTM6AuIxStxM2', 'anand.kndddp@gmail.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1234567890),
(23, 'sdfsdaf', 'asdfsdfsdf', NULL, '$2y$10$CDxruAFrz3gMfyQ4eETg5OBTrXHxkJBAdoyEdEMnSFJuSSyzhMEv2', 'anand.kddddfnp@gmail.com', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1234567890),
(24, 'anand', 'shukla', NULL, '$2y$10$QY0hrUy2OEU.nYPI0KnzDeDSMRWayod7QTgRn7VJoIShxJWG4L9z2', 'anandddfdf.knp@gmail.com', 1, '2021-03-18 10:16:39', '0000-00-00 00:00:00', 7042105960),
(25, 'anand1234', 'shukla', NULL, '$2y$10$jjA6586TvdwAoqerDWmqauTvUMMRSnCuMM7HzeySECkyKVu2dYW9u', 'ananddfaaad.knp@gmail.com', 1, '2021-03-18 10:18:17', '2021-03-18 10:18:54', 7042105960),
(26, 'anandnode', 'shukla', '', '$2a$10$kvIow5u6A.NIQGA7Wg01XuhaEAzZXnZmDnHcfxf/jZNfMDvP6tfEC', 'neeraj2node@gmail.com', 1, '2021-03-18 05:10:01', '2021-03-18 05:10:01', 134567890),
(27, 'anandnode', 'shukla', '', '$2a$10$zdC3aKHeCPzNxIzWJZNnCOEAwMCL7BcFnZ6fp9n37RZWE5cOGxfn2', 'ram@gmail.com', 1, '2021-03-20 10:02:14', '2021-03-20 10:02:14', 134567890),
(28, 'ASD', 'AD', NULL, '$2a$10$RSLMIeLpC8oePVpxTNT7m.a9nHR8xBEDJau4sTxP8zL4D84Oy8a96', 'anand.knaaadsfsdfp@gmail.com', 1, '2021-03-20 10:17:25', '2021-03-20 10:17:25', NULL),
(29, 'anand', 'shukla', NULL, '$2a$10$0uSud3uEIF/QdXfYzrQa.u0LoM32//S0H/CD9g98Oh4iy3TzAPwBi', 'anand.kndfdfsfdp@gmail.com', 1, '2021-03-20 13:28:52', '2021-03-20 13:28:52', 333333333333);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangcontents`
--
ALTER TABLE `gangcontents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangs`
--
ALTER TABLE `gangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `testquestions`
--
ALTER TABLE `testquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`testId`);

--
-- Indexes for table `usercoursegangs`
--
ALTER TABLE `usercoursegangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`),
  ADD KEY `gangId` (`gangId`),
  ADD KEY `courseId` (`courseId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gangcontents`
--
ALTER TABLE `gangcontents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gangs`
--
ALTER TABLE `gangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `testquestions`
--
ALTER TABLE `testquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `testId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usercoursegangs`
--
ALTER TABLE `usercoursegangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `usercoursegangs`
--
ALTER TABLE `usercoursegangs`
  ADD CONSTRAINT `usercoursegangs_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `usercoursegangs_ibfk_2` FOREIGN KEY (`gangId`) REFERENCES `gangs` (`id`),
  ADD CONSTRAINT `usercoursegangs_ibfk_3` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
