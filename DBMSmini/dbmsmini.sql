-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2019 at 08:38 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmsmini`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `disp` ()  BEGIN
SELECT * FROM student;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Adm_No`, `Name`, `Class`, `English`, `Kannada`, `Mathematics`, `Science`, `Social_Science`, `Total`) VALUES
('1', 'Sayan', 5, 13, 12, 11, 14, 13, 63);

--
-- Triggers `attendance`
--
DELIMITER $$
CREATE TRIGGER `tot1` BEFORE INSERT ON `attendance` FOR EACH ROW BEGIN
SET NEW.Total = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dailyfood`
--

CREATE TABLE `dailyfood` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` text NOT NULL,
  `Date` varchar(10) NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fa1`
--

CREATE TABLE `fa1` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Class` int(11) NOT NULL,
  `English_` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fa1`
--

INSERT INTO `fa1` (`Adm_No`, `Name`, `Class`, `English_`, `Kannada`, `Mathematics`, `Science`, `Social_Science`, `Average`) VALUES
('1', 'Sayan', 5, 23, 23, 25, 27, 30, 26);

--
-- Triggers `fa1`
--
DELIMITER $$
CREATE TRIGGER `avg1` BEFORE INSERT ON `fa1` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English_+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fa2`
--

CREATE TABLE `fa2` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `fa2`
--
DELIMITER $$
CREATE TRIGGER `avg2` BEFORE INSERT ON `fa2` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fa3`
--

CREATE TABLE `fa3` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `fa3`
--
DELIMITER $$
CREATE TRIGGER `avg3` BEFORE INSERT ON `fa3` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `fa4`
--

CREATE TABLE `fa4` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `fa4`
--
DELIMITER $$
CREATE TRIGGER `avg4` BEFORE INSERT ON `fa4` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `ptm`
--

CREATE TABLE `ptm` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` int(11) NOT NULL,
  `Teachers_name` varchar(20) NOT NULL,
  `Discussion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sa1`
--

CREATE TABLE `sa1` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `sa1`
--
DELIMITER $$
CREATE TRIGGER `avg22` BEFORE INSERT ON `sa1` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sa2`
--

CREATE TABLE `sa2` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Class` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Kannada` int(11) NOT NULL,
  `Mathematics` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Social_Science` int(11) NOT NULL,
  `Average` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `sa2`
--
DELIMITER $$
CREATE TRIGGER `avg21` BEFORE INSERT ON `sa2` FOR EACH ROW BEGIN
SET NEW.Average = (NEW.English+New.Kannada+new.Science+new.Social_Science+new.Mathematics)/5;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stationery`
--

CREATE TABLE `stationery` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `Books` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Adm_No` varchar(10) NOT NULL,
  `Name` varchar(10) NOT NULL,
  `FathersName` varchar(10) NOT NULL,
  `MothersName` varchar(10) NOT NULL,
  `DOB` varchar(10) NOT NULL,
  `Caste` varchar(10) NOT NULL,
  `DateOfAdmission` varchar(10) NOT NULL,
  `Weight` int(11) NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Adm_No`, `Name`, `FathersName`, `MothersName`, `DOB`, `Caste`, `DateOfAdmission`, `Weight`, `Address`) VALUES
('1', 'Sayan', 'Aman', 'sangita', '27/07/1999', 'GM', '07/08/2017', 75, 'kolkata'),
('2', 'raghav', 'mohan', 'priya', '23/09/1999', 'gm', '09/08/2017', 65, 'bangalore');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Adm_No`,`Name`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `dailyfood`
--
ALTER TABLE `dailyfood`
  ADD PRIMARY KEY (`Adm_No`,`Date`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `fa1`
--
ALTER TABLE `fa1`
  ADD PRIMARY KEY (`Adm_No`,`Name`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `fa2`
--
ALTER TABLE `fa2`
  ADD PRIMARY KEY (`Adm_No`,`Name`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `fa3`
--
ALTER TABLE `fa3`
  ADD PRIMARY KEY (`Adm_No`,`Name`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `fa4`
--
ALTER TABLE `fa4`
  ADD PRIMARY KEY (`Adm_No`,`Name`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `ptm`
--
ALTER TABLE `ptm`
  ADD PRIMARY KEY (`Adm_No`,`Teachers_name`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `sa1`
--
ALTER TABLE `sa1`
  ADD PRIMARY KEY (`Adm_No`,`Name`);

--
-- Indexes for table `sa2`
--
ALTER TABLE `sa2`
  ADD PRIMARY KEY (`Adm_No`,`Name`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `stationery`
--
ALTER TABLE `stationery`
  ADD PRIMARY KEY (`Adm_No`,`Name`),
  ADD KEY `Adm_No` (`Adm_No`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Adm_No`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `dailyfood`
--
ALTER TABLE `dailyfood`
  ADD CONSTRAINT `dailyfood_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `fa1`
--
ALTER TABLE `fa1`
  ADD CONSTRAINT `fa1_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `fa2`
--
ALTER TABLE `fa2`
  ADD CONSTRAINT `fa2_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `fa3`
--
ALTER TABLE `fa3`
  ADD CONSTRAINT `fa3_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `fa4`
--
ALTER TABLE `fa4`
  ADD CONSTRAINT `fa4_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `ptm`
--
ALTER TABLE `ptm`
  ADD CONSTRAINT `ptm_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `sa1`
--
ALTER TABLE `sa1`
  ADD CONSTRAINT `sa1_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`),
  ADD CONSTRAINT `sa1_ibfk_2` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `sa2`
--
ALTER TABLE `sa2`
  ADD CONSTRAINT `sa2_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);

--
-- Constraints for table `stationery`
--
ALTER TABLE `stationery`
  ADD CONSTRAINT `stationery_ibfk_1` FOREIGN KEY (`Adm_No`) REFERENCES `student` (`Adm_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
