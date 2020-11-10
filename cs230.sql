-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 05:34 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `uname` varchar(30) NOT NULL,
  `picpath` varchar(50) NOT NULL DEFAULT '../uploads/anon.png',
  `bio` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`uname`, `picpath`, `bio`) VALUES
('test', '../uploads/5f95abeae0e401.39897442.jpg', 'nike obsidian jordan 1'),
('test1', '../uploads/anon.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL COMMENT 'review id',
  `item_id` int(11) NOT NULL COMMENT 'item id to be reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user who will review it',
  `title` varchar(60) NOT NULL,
  `review_text` text NOT NULL,
  `rev_date` datetime NOT NULL,
  `rating_num` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT 'Is there at least 1 review'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `item_id`, `uname`, `title`, `review_text`, `rev_date`, `rating_num`, `status`) VALUES
(1, 0, 'test', 'dfdsf', 'dfsdfsdf', '2020-10-21 21:33:51', 0, 1),
(2, 0, 'test', 'dfdsf', 'dfsdfsdf', '2020-10-21 21:56:47', 0, 1),
(3, 0, 'test', 'dfdsf', 'dfsdfsdf', '2020-10-21 21:57:28', 0, 1),
(4, 0, 'test', 'dfd', 'dfdfd', '2020-10-21 22:04:42', 0, 1),
(5, 0, '', 'bred toe', '', '2020-10-24 18:03:59', 0, 1),
(6, 0, '', 'bred toe', '', '2020-10-24 18:09:14', 0, 1),
(7, 0, '', '', '', '2020-10-24 18:09:26', 0, 1),
(8, 0, 'test', 'dkjks', 'fgdg', '2020-10-24 19:15:57', 0, 1),
(9, 8, 'test', 'dfdsf', '', '2020-10-25 00:20:20', 0, 1),
(10, 8, 'test', 'dfdf df', 'fdsfsdgdf  gds ', '2020-10-25 00:20:26', 0, 1),
(11, 8, 'test', '', '', '2020-10-25 00:45:36', 0, 1),
(12, 8, 'test', 'bred toe', 'love this shoe', '2020-10-25 16:45:03', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sneakers`
--

CREATE TABLE `sneakers` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sneakers`
--

INSERT INTO `sneakers` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(6, 'lknln', '', '5f821e43b5f986.40175661.png', '2020-10-10', NULL),
(7, 'dsfaDSf', '', '5f8395ef3516f9.01527827.jpg', '2020-10-11', NULL),
(8, 'adsfasfd', '', '5f83991e525737.17671555.jpg', '2020-10-11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `lname`, `fname`, `email`, `uname`, `password`) VALUES
(4, 'test2', 'test1', 't@t.com', 'test1', '$2y$10$dY3MvdKVUfNFoHZVJ6Ghj.WpesHuanuTPmu37HntqQ6O91VlN0uTe'),
(5, 'test', 'tesst', 't@t.com', 'test', '$2y$10$Fsl/o2EfrxzHnohW5LYzXO0tUl4v10Uz8245JIhG.tSLvkpPd24x.'),
(6, 'sdfgasf', 'asDd', 'asdf@test', 'test2', '$2y$10$UktSU4vCn3wUoQlc3jzIJesiVSmmrYUHmcyjvOc4RooI8ojdjxD4u');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`uname`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`);

--
-- Indexes for table `sneakers`
--
ALTER TABLE `sneakers`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'review id', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sneakers`
--
ALTER TABLE `sneakers`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
