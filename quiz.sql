-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 05:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `aid` int(11) NOT NULL,
  `optiona` varchar(250) NOT NULL,
  `ans_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `question` varchar(250) NOT NULL,
  `ans_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`, `date`) VALUES
(1, 'What is the full meaning of html', 1, '2023-04-20 07:06:57'),
(2, 'what is computer', 2, '2023-04-20 07:06:57'),
(3, 'out put devices includes the following except', 3, '2023-04-20 07:06:57'),
(4, 'is PHP a programming language', 4, '2023-04-20 07:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `userid` int(11) NOT NULL,
  `q_attempt` int(11) NOT NULL,
  `result` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `fullname`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, '', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 08:25:12'),
(2, '', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 08:29:25'),
(3, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 08:59:18'),
(4, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 08:59:54'),
(5, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 09:06:37'),
(6, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 09:07:03'),
(7, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 09:10:04'),
(8, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 09:11:03'),
(9, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 09:11:43'),
(10, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 09:12:31'),
(11, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 09:12:49'),
(12, 'gbenga famodun', 'gbengeneh', 'gbengeneh55@gmail.com', 'db020a94a92918fbb6b48d3152ac8e56', '2023-04-19 09:14:23'),
(13, 'gbenga famodun', 'gbengeneh', 'ademola@gmail.com', 'a562cfa07c2b1213b3a5c99b756fc206', '2023-04-19 22:48:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `questions` (`qid`);

--
-- Constraints for table `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `result_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
