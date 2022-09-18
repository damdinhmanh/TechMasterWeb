-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 18, 2022 at 04:40 PM
-- Server version: 8.0.30
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TechMasterWeb`
--

-- --------------------------------------------------------

--
-- Table structure for table `AccountBanking`
--

CREATE TABLE `AccountBanking` (
  `id` int NOT NULL,
  `name_bank` varchar(20) DEFAULT NULL,
  `account_num` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `AccountBanking`
--

INSERT INTO `AccountBanking` (`id`, `name_bank`, `account_num`) VALUES
(1, 'ACB', '111111'),
(2, 'VCB', '222222'),
(3, 'VCB', '333333'),
(4, 'AGR', '444444'),
(5, 'AGR', '555555');

-- --------------------------------------------------------

--
-- Table structure for table `Blog`
--

CREATE TABLE `Blog` (
  `id` int NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `discription` varchar(20) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Blog`
--

INSERT INTO `Blog` (`id`, `title`, `discription`, `create_at`, `user_id`) VALUES
(1, 'Blog Thang 5', 'Blog Thang 5', '2022-05-05', 1),
(2, 'Blog Thang 6', 'Blog Thang 6', '2022-06-02', 2),
(3, 'Blog Thang 7', 'Blog Thang 7', '2022-07-21', 3),
(4, 'Blog Thang 8', 'Blog Thang 8', '2022-08-20', 4),
(5, 'Blog Thang 9', 'Blog Thang 9', '2022-09-16', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `timeline` int DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `type_course` varchar(20) DEFAULT NULL,
  `vote` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`id`, `name`, `timeline`, `description`, `price`, `type_course`, `vote`) VALUES
(1, 'Java', 120, 'Java full stack', 1000, 'online', 0),
(2, 'C#', 220, 'C# full stack', 2000, 'online', 0),
(3, 'Javascript', 150, 'Fronend advance', 3000, 'offline', 0),
(4, 'AWS', 190, 'AWS From beginner', 5000, 'offline', 5),
(5, 'IOS', 100, 'IOS Mobile App', 4000, 'online', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Course_OpenSchedule`
--

CREATE TABLE `Course_OpenSchedule` (
  `id` int NOT NULL,
  `course_id` int DEFAULT NULL,
  `openschedule_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Course_OpenSchedule`
--

INSERT INTO `Course_OpenSchedule` (`id`, `course_id`, `openschedule_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `OpeningSchedule`
--

CREATE TABLE `OpeningSchedule` (
  `id` int NOT NULL,
  `startdate` date DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `studyday` int DEFAULT NULL,
  `studytime` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `OpeningSchedule`
--

INSERT INTO `OpeningSchedule` (`id`, `startdate`, `address`, `studyday`, `studytime`) VALUES
(1, '2022-09-10', 'Cau Giay', 30, '00:05:55'),
(2, '2022-11-20', 'Tay Ho', 50, '00:02:32'),
(3, '2022-12-15', 'Cau Giay', 60, '00:03:43'),
(4, '2022-09-21', 'Tay Ho', 45, '00:01:23'),
(5, '2022-09-30', 'Cau Giay', 67, '10:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'mod'),
(3, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `TransactionHistory`
--

CREATE TABLE `TransactionHistory` (
  `id` int NOT NULL,
  `reg_date` date DEFAULT NULL,
  `status` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `TransactionHistory`
--

INSERT INTO `TransactionHistory` (`id`, `reg_date`, `status`, `user_id`, `course_id`) VALUES
(1, '2022-09-19', 1, 1, 1),
(2, '2022-09-21', 1, 1, 4),
(3, '2022-09-25', 1, 4, 3),
(4, '2022-09-01', 1, 5, 5),
(5, '2022-07-06', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `account_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `phone`, `email`, `role_id`, `account_id`) VALUES
(1, 'Tran Van A', '12324234', 'vana@gmail.com', 3, 1),
(2, 'Nguyen Thi B', '423423423', 'thic@gmail.com', 3, 2),
(3, 'Dang Van Bon', '3423432', 'dvbon@gmail.com', 3, 3),
(4, 'Pham Van Thanh', '5756757', 'vanthanh@gmail.com', 3, 4),
(5, 'Ta Quang Huy', '5657657', 'quanghuy@gmail.com', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `User_Course`
--

CREATE TABLE `User_Course` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `User_Course`
--

INSERT INTO `User_Course` (`id`, `user_id`, `course_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 4, 3),
(4, 5, 5),
(5, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AccountBanking`
--
ALTER TABLE `AccountBanking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Blog`
--
ALTER TABLE `Blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Blog_user_id_fk` (`user_id`);

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Course_OpenSchedule`
--
ALTER TABLE `Course_OpenSchedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `openschedule_id` (`openschedule_id`);

--
-- Indexes for table `OpeningSchedule`
--
ALTER TABLE `OpeningSchedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `TransactionHistory`
--
ALTER TABLE `TransactionHistory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `TransactionHistory_user_id_fk` (`user_id`),
  ADD KEY `TransactionHistory_course_id_fk` (`course_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Users_role_id_fk` (`role_id`),
  ADD KEY `Users_account_id_fk` (`account_id`);

--
-- Indexes for table `User_Course`
--
ALTER TABLE `User_Course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AccountBanking`
--
ALTER TABLE `AccountBanking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Blog`
--
ALTER TABLE `Blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Course`
--
ALTER TABLE `Course`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Course_OpenSchedule`
--
ALTER TABLE `Course_OpenSchedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `OpeningSchedule`
--
ALTER TABLE `OpeningSchedule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Role`
--
ALTER TABLE `Role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `TransactionHistory`
--
ALTER TABLE `TransactionHistory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `User_Course`
--
ALTER TABLE `User_Course`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Blog`
--
ALTER TABLE `Blog`
  ADD CONSTRAINT `Blog_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);

--
-- Constraints for table `Course_OpenSchedule`
--
ALTER TABLE `Course_OpenSchedule`
  ADD CONSTRAINT `course_openschedule_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Course` (`id`),
  ADD CONSTRAINT `course_openschedule_ibfk_2` FOREIGN KEY (`openschedule_id`) REFERENCES `OpeningSchedule` (`id`);

--
-- Constraints for table `TransactionHistory`
--
ALTER TABLE `TransactionHistory`
  ADD CONSTRAINT `TransactionHistory_course_id_fk` FOREIGN KEY (`course_id`) REFERENCES `Course` (`id`),
  ADD CONSTRAINT `TransactionHistory_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);

--
-- Constraints for table `Users`
--
ALTER TABLE `Users`
  ADD CONSTRAINT `Users_account_id_fk` FOREIGN KEY (`account_id`) REFERENCES `AccountBanking` (`id`),
  ADD CONSTRAINT `Users_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `Role` (`id`);

--
-- Constraints for table `User_Course`
--
ALTER TABLE `User_Course`
  ADD CONSTRAINT `user_course_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`),
  ADD CONSTRAINT `user_course_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `Course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
