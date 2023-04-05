-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 08:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medcare_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` varchar(45) NOT NULL,
  `appoint_date` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phno` varchar(45) NOT NULL,
  `diseases` varchar(45) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `user_id`, `fullname`, `gender`, `age`, `appoint_date`, `email`, `phno`, `diseases`, `doctor_id`, `address`, `status`) VALUES
(1, 1, 'Tran Chan Hung', 'male', '18', '2023-04-06', 'ninbook0708@gmail.com', '0979810953', 'ho Lao', 1, '1321456', 'ok'),
(2, 1, 'Tran Chan Hung', 'male', '22', '2001-03-01', 'ninbook0708@gmail.com', '0979810953', 'no sleep', 1, 'District 9, Ho Chi Minh City', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `birthday` varchar(45) NOT NULL,
  `qualification` varchar(45) NOT NULL,
  `specialist` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `full_name`, `birthday`, `qualification`, `specialist`, `email`, `phone`, `password`) VALUES
(1, 'Dr. Hung Ninzy', '2023-03-06', 'Nobel\'s Prize', 'Expert Doctor', 'ninbook0708@gmail.com', '0979810953', '123456'),
(2, 'Dr. Thanh Corn', '2023-04-10', 'MBBS', 'Plastic Surgery', 'thanhcorn@gmail.com', '213216513215', '123456'),
(3, 'Dr. Tuan Lee', '2023-04-10', 'Oscar\'s Prize', 'Virology', 'tuanlee@gmail.com', '13651321', '123456'),
(4, 'Dr. Octopus', '1977-10-09', 'Captured Spiderman', 'Professor', 'octavius@gmail.com', '2135146513', '123456'),
(5, 'Walter White', '1958-09-07', 'Nobel\'s Prize', 'Chemistry Teacher', 'walterwhite@gmail.com', '51356131561', '123456'),
(6, 'Jesse Pinkman', '2023-04-03', 'Street Drug Dealers', 'Meth Cooker', 'jessepinkman@gmail.com', '564515616', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `id` int(11) NOT NULL,
  `spec_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`id`, `spec_name`) VALUES
(1, 'Expert Doctor'),
(2, 'Dentist'),
(3, 'Psychiatrist'),
(4, 'Neurologist'),
(5, 'Optometry'),
(6, 'Virology'),
(7, 'Radiology'),
(8, 'Geriatric'),
(9, 'Obstetric'),
(10, 'Professor'),
(11, 'Dermatologist'),
(12, 'Plastic Surgery'),
(13, 'Meth Cooker'),
(14, 'Chemistry Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `user_dtls`
--

CREATE TABLE `user_dtls` (
  `id` int(11) NOT NULL,
  `full_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_dtls`
--

INSERT INTO `user_dtls` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'Trần Chấn Hưng', 'ninbook0708@gmail.com', '123456'),
(3, 'Ngo Nguyen Ngoc Thanh', 'thanhcorn123@gmail.com', '123456'),
(4, 'Le Hoang Minh Tuan', 'tuanlee@gmail.com', '123456'),
(5, 'Tran Van Tinh', 'tranvantinh@gmail.com', '123456'),
(6, 'Tran Anh Thu', 'anhthucute@gmail.com', '123456'),
(7, 'Nguyen Thi Anh Dao', 'anhdao123@gmail.com', '123456'),
(8, 'Lee Min Ho', 'leeminho@gmail.com', '123456'),
(9, 'Lee San Yeok', 'leesanyeok@gmail.com', '123456'),
(10, 'John Cena', 'johncena@gmail.com', '123456'),
(11, 'Roman Reigns', 'romanreigns@gmail.com', '123456'),
(12, 'Walter White', 'walterwhite@gmail.com', '123456'),
(13, 'Jesse Pinkman', 'jessepinkman@gmail.com', '123456'),
(14, 'Gustavo Fring', 'gus@gmail.com', '123456'),
(15, 'Skyler White', 'mynameisskylerwhiteyo@gmail.com', '123456'),
(16, 'Saul Goodman', 'bettercallsaul@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`user_id`),
  ADD KEY `did` (`doctor_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_dtls`
--
ALTER TABLE `user_dtls`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specialist`
--
ALTER TABLE `specialist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_dtls`
--
ALTER TABLE `user_dtls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `did` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `uid` FOREIGN KEY (`user_id`) REFERENCES `user_dtls` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
