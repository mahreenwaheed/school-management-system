-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 02:37 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `day` varchar(300) NOT NULL,
  `start` varchar(300) NOT NULL,
  `end` varchar(300) NOT NULL,
  `class` int(255) NOT NULL,
  `year` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`day`, `start`, `end`, `class`, `year`) VALUES
('Monday', '1 october', '10 september', 5, 2019),
('Tuesday', '1 March', '5 April', 3, 2022),
('wednesday', '1 october ', '10 september', 2, 2018),
('thursday', '1 March', '5 April', 1, 2020),
('Friday', '12 may', '17 june', 4, 2021),
('Tuesday', '1 March', '5 April', 3, 2018),
('saturday', '15 August', '1 Nov', 6, 2023),
('Monday', '', '10 september', 3, 2018);

-- --------------------------------------------------------

--
-- Table structure for table `attendencestudent`
--

CREATE TABLE `attendencestudent` (
  `id` int(255) NOT NULL,
  `name` varchar(300) NOT NULL,
  `time` int(255) NOT NULL,
  `select` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendencestudent`
--

INSERT INTO `attendencestudent` (`id`, `name`, `time`, `select`) VALUES
(0, '', 0, 'select'),
(1, 'mahreen', 2, 'leave'),
(4, 'mehri', 3, 'weakly'),
(5, 'aqsa', 2, 'leave'),
(6, 'kinza', 7, 'leave'),
(7, 'bushra', 5, 'weakly'),
(8, 'alisha', 5, 'weakly');

-- --------------------------------------------------------

--
-- Table structure for table `attentendencereport`
--

CREATE TABLE `attentendencereport` (
  `class` int(255) NOT NULL,
  `year` int(255) NOT NULL,
  `month` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attentendencereport`
--

INSERT INTO `attentendencereport` (`class`, `year`, `month`) VALUES
(1, 2016, 'Febrauary'),
(2, 2017, 'october'),
(0, 0, '$month'),
(2, 2016, 'Febrauary'),
(3, 2020, 'september'),
(4, 2022, 'july'),
(3, 2017, 'july'),
(2, 2020, 'Febrauary'),
(1, 2022, 'september');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`) VALUES
(1),
(2),
(3);

-- --------------------------------------------------------

--
-- Table structure for table `examonline`
--

CREATE TABLE `examonline` (
  `id` int(255) NOT NULL,
  `exam` varchar(300) NOT NULL,
  `quiz` varchar(300) NOT NULL,
  `exam_from` varchar(300) NOT NULL,
  `exam_to` varchar(300) NOT NULL,
  `result_pub` varchar(300) NOT NULL,
  `time_duration` int(255) NOT NULL,
  `attempt` int(255) NOT NULL,
  `percentage` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `examonline`
--

INSERT INTO `examonline` (`id`, `exam`, `quiz`, `exam_from`, `exam_to`, `result_pub`, `time_duration`, `attempt`, `percentage`, `description`) VALUES
(1, 'cs', '2', '20/3/2023', '25//3/202', '30/3/2023', 2, 1, '', 'computer is an electric machine'),
(2, 'science', '3', '20/9/2023', '30/9/2023', '2024', 4, 2, '80%', 'hello world'),
(3, 'math', '1', '2023', '2023', '2024', 1, 1, '50%', 'hello world'),
(4, 'cs201', '2', '10/5/2023', '20/5/2023', '30/5/2023', 2, 4, '60%', 'computer is an electric machine which can convert information');

-- --------------------------------------------------------

--
-- Table structure for table `get student`
--

CREATE TABLE `get student` (
  `class` int(255) NOT NULL,
  `date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `get student`
--

INSERT INTO `get student` (`class`, `date`) VALUES
(1, '2/3/2020');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `stdname` varchar(300) NOT NULL,
  `class` int(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `time` varchar(300) NOT NULL,
  `year` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`stdname`, `class`, `day`, `time`, `year`) VALUES
('maheen', 10, 'Monday', '2', 2022),
('noor', 9, 'tuesday', '3.00pm', 2021),
('maheen', 10, 'Monday', '2', 2022);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(255) NOT NULL,
  `name` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `password`) VALUES
(0, 'mahre', 'like'),
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `class` int(255) NOT NULL,
  `date` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`class`, `date`) VALUES
(1, '10/5/2020'),
(0, ''),
(0, ''),
(2, '4/10/2021'),
(0, '...select...'),
(0, '...select...'),
(0, '...select...');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendencestudent`
--
ALTER TABLE `attendencestudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examonline`
--
ALTER TABLE `examonline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
