-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 25, 2021 at 01:38 PM
-- Server version: 8.0.18
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
-- Database: `details`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpdrive`
--

CREATE TABLE `addpdrive` (
  `CompanyName` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `C/P` tinyint(1) NOT NULL DEFAULT '0',
  `PVenue` varchar(255) NOT NULL,
  `SSLC` float NOT NULL,
  `PU/Dip` float NOT NULL,
  `BE` float NOT NULL,
  `Backlogs` int(11) NOT NULL,
  `HofBacklogs` tinyint(1) NOT NULL,
  `DetainYears` int(11) NOT NULL,
  `ODetails` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addpdrive`
--

INSERT INTO `addpdrive` (`CompanyName`, `Date`, `C/P`, `PVenue`, `SSLC`, `PU/Dip`, `BE`, `Backlogs`, `HofBacklogs`, `DetainYears`, `ODetails`) VALUES
('Apple', '2015-07-23', 0, 'RVCE', 98, 98, 90, 0, 0, 0, 'Welcome to Apple'),
('Haritha Tech', '2015-06-26', 1, 'SIT', 60, 65, 65, 0, 0, 0, '0'),
('HP', '2013-08-19', 1, 'SSIT', 70, 75, 75, 0, 0, 0, '0'),
('IBM', '2015-05-12', 0, 'CIT College', 60, 65, 65, 0, 0, 0, '0'),
('Infosis', '2015-01-10', 0, 'CIT College', 60, 60, 60, 0, 0, 0, '0'),
('Intel', '2013-09-08', 0, 'CIT', 60, 65, 65, 0, 0, 0, '0'),
('Microsoft company', '2014-12-09', 0, 'CIT', 60, 65, 65, 0, 0, 0, '0'),
('Skype', '2014-06-10', 1, 'SIT College', 75, 75, 75, 0, 0, 0, '0'),
('STONE inc', '2021-05-03', 1, 'standford', 10, 10, 10, 2, 0, 1, 'ad'),
('Tata Consultency Services', '2015-11-24', 1, 'AIE', 65, 70, 75, 0, 0, 0, '0'),
('VTECK', '2013-03-24', 0, 'CIT College', 60, 60, 65, 0, 0, 0, '0'),
('WDS', '2014-09-30', 1, 'KIT', 65, 65, 65, 0, 0, 0, '0'),
('yy', '2015-07-04', 0, '', 45, 55, 55, 8, 1, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `basicdetails`
--

CREATE TABLE `basicdetails` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `USN` varchar(10) NOT NULL,
  `Mobile` bigint(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Sem` int(11) NOT NULL,
  `Branch` varchar(15) NOT NULL,
  `SSLC` float NOT NULL,
  `PU/Dip` float NOT NULL,
  `BE` float NOT NULL,
  `Backlogs` int(11) NOT NULL,
  `HofBacklogs` tinyint(1) NOT NULL DEFAULT '0',
  `DetainYears` int(11) NOT NULL,
  `Approve` tinyint(1) NOT NULL DEFAULT '0',
  `ApprovalDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basicdetails`
--

INSERT INTO `basicdetails` (`Id`, `FirstName`, `LastName`, `USN`, `Mobile`, `Email`, `DOB`, `Sem`, `Branch`, `SSLC`, `PU/Dip`, `BE`, `Backlogs`, `HofBacklogs`, `DetainYears`, `Approve`, `ApprovalDate`) VALUES
(1, 'veda', 'kumar', '1cg13is400', 11111, 'v@gmil.comk', '2015-06-09', 1, 'ISE', 70, 70, 70, 0, 0, 0, 1, '0000-00-00'),
(2, 'vastala', 'hs', '1cg13cs400', 22222, 'vhs@gmil.com', '1996-03-08', 2, 'CSE', 75, 75, 70, 0, 0, 0, 1, '0000-00-00'),
(3, 'ragini', 'mn', '1cg12is001', 33333, 'r@gmail.com', '1991-01-28', 6, 'ISE', 55, 55, 55, 0, 0, 0, 1, '0000-00-00'),
(4, 'Punith', 'raj kumar', '1cg12cs002', 66666, 'p@gmail.com', '1991-02-13', 8, 'CSE', 85, 85, 85, 0, 0, 0, 0, '0000-00-00'),
(5, 'Manvith', 'kumar', '1cg12cv001', 7777, 'mk@gmail.com', '1998-05-31', 7, 'CVE', 99, 99, 99, 0, 0, 0, 0, '0000-00-00'),
(6, 'Harsha', 'M S', '1cg12ee001', 88888, 'h@gmail.com', '1999-01-04', 8, 'EEE', 99, 99, 99, 0, 0, 0, 0, '0000-00-00'),
(7, 'Tejaswini', 'T L', '1cg12cv002', 99999, 't@gmil.com', '1997-08-13', 4, 'CVE', 65, 65, 65, 0, 0, 0, 0, '0000-00-00'),
(8, 'Ashraf', 'Unissa', '1cg12ee005', 10000, 'au@gmail.com', '1992-10-23', 4, 'EEE', 55, 55, 55, 0, 0, 0, 0, '0000-00-00'),
(9, 'Roja', 'Bai', '1cg12is009', 20000, 'rb@gmail.com', '1997-04-28', 4, 'ISE', 66, 63, 62, 0, 0, 0, 1, '2015-07-23'),
(10, 'Yogesh', 'B L', '1cg12cs031', 40000, 'y@gmail.com', '2000-06-13', 5, 'CSE', 41, 45, 45, 0, 0, 0, 0, '0000-00-00'),
(11, 'rahul', 'khanna', '1cg13is401', 2147483647, 'rr@gmail.com', '2015-07-02', 4, 'ise', 77, 66, 77, 0, 0, 0, 1, '0000-00-00'),
(12, 'Vishruth', 'Harithsa', '1cg12is094', 9880796862, 'harithsa@aol.com', '1994-10-22', 6, 'ISE', 91, 70, 50, 5, 0, 1, 1, '2015-08-18'),
(13, 'Neil', 'Armstrong', '1cg12is000', 2147483647, 'armstrong@neil.com', '2015-07-23', 7, 'ISE', 100, 100, 100, 0, 0, 0, 1, '2015-07-23'),
(14, 'Vishruth', 'Harithsa', '1cg12is011', 9880796862, 'harithsa@aol.com', '2015-08-21', 6, 'ISE', 40, 70, 50, 5, 0, 1, 0, '0000-00-00'),
(277, 'Raheem', 'BHOI', '336522', 78596079, 'stone@cvr.ac.in', '2021-04-29', 1, 'CSE', 11, 1788, 11, 1, 1, 1, 0, '2021-05-17'),
(278, 'Vaishnavi', 'Gadepally', '5H7', 78596079, 'lambointruder.77@gmail.com', '2021-04-27', 2, 'select', 80, 90, 90, 0, 0, 0, 0, '2021-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `hlogin`
--

CREATE TABLE `hlogin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `Branch` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hlogin`
--

INSERT INTO `hlogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`, `Branch`) VALUES
(1, 'stone', 'stone', '336522', 'stonedragonheart@gmail.com', 'What is your fav spot?', 'Bangalore', 'ISE'),
(4, 'Raheem', 'stoney', '123456', 'sone@gmail.com', 'Hi?', 'Hi', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `plogin`
--

CREATE TABLE `plogin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plogin`
--

INSERT INTO `plogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`) VALUES
(1, 'STONE', 'admin', 'admin', 'admin@placement.com', 'What is your fav spot?', 'mangalore');

-- --------------------------------------------------------

--
-- Table structure for table `prilogin`
--

CREATE TABLE `prilogin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prilogin`
--

INSERT INTO `prilogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`) VALUES
(1, 'Principal', 'admin', '336522', 'admin@gmail.com', 'What is your fav spot?', 'madikeri');

-- --------------------------------------------------------

--
-- Table structure for table `slogin`
--

CREATE TABLE `slogin` (
  `id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `USN` varchar(10) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slogin`
--

INSERT INTO `slogin` (`id`, `Name`, `USN`, `PASSWORD`, `Email`, `Question`, `Answer`) VALUES
(1, 'veda', '1cg13is401', '123', 'veda', 'What is your fav spot?', 'circket'),
(2, 'Veda', '1cg12is096', 'veda', 'v@gmil.com', 'what is your fav spot?', 'mysore'),
(3, 'rama', '1cg12cs001', 'rama', 'rama@gmail.com', 'What is your fav dish?', 'chicken'),
(4, 'Vishruth Harithsa', '1cg12is094', 'CUTESTAR22', 'har', 'What is your nickname?', ''),
(5, 'Armstrong', '1cg12is000', 'asdfg', 'armstrong@neil.com', 'What is your fav spot?', 'New York'),
(8, 'Harry', '1cg12is007', 'asdfg', 'asdfg@gmail.com', 'What is your fav spot?', 'Manali'),
(9, '', '', '', '', '', ''),
(10, 'Harithsa', '1cg12is009', 'qwerty', 'harithsa@aol.com', 'What is your nickname?', 'Gunda'),
(11, 'Vishruth Harithsa', '1cg12is011', 'qwerty', 'astroman225@gmail.com', 'What is your fav spot?', 'Manali'),
(12, 'Raheem', '1122', '', 'stone@gmail.com', 'What is your nickname?', 'Me'),
(13, 'Raheem', '5F1', 'stone', 'stone@gmail.com', 'What is your nickname?', 'mw'),
(14, 'Likith', '5E0', '11223', 'likith@gmail.com', 'What is your nickname?', 'lik'),
(15, 'STONEY', '336522', '1122', 'stone@cvr.ac.in', 'What is your nickname?', 'STONE'),
(16, 'Likitha', '5E1', '5E1', 'likitha@cvr.ac.in', 'What is your one truth which ohers donot know?', 'donno'),
(17, 'Vaishnavi', '5H7', '336522', 'lambointruder.77@gmail.com', 'What is your nickname?', 'Jumbo');

-- --------------------------------------------------------

--
-- Table structure for table `updatedrive`
--

CREATE TABLE `updatedrive` (
  `USN` varchar(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Attendence` tinyint(1) NOT NULL DEFAULT '0',
  `WT` tinyint(1) NOT NULL DEFAULT '0',
  `GD` tinyint(1) NOT NULL DEFAULT '0',
  `Techical` tinyint(1) NOT NULL DEFAULT '0',
  `Placed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updatedrive`
--

INSERT INTO `updatedrive` (`USN`, `Name`, `CompanyName`, `Date`, `Attendence`, `WT`, `GD`, `Techical`, `Placed`) VALUES
('1cg13is400', 'Veda', 'Haritha Tech', '2015-06-26', 1, 1, 1, 1, 1),
('1cg13cs400', 'Vastala', 'HP', '2013-08-19', 1, 1, 1, 1, 1),
('1cg12cs002', 'Punith', 'IBM', '2015-05-12', 1, 1, 1, 1, 1),
('1cg12cv001', 'Manvith', 'Infosis', '2015-01-10', 1, 1, 1, 1, 1),
('1cg12ee001', 'Harsha', 'Intel', '2013-09-08', 1, 1, 1, 1, 1),
('1cg12ee005', 'Ashraf', 'Microsoft company', '2014-12-09', 1, 1, 1, 1, 1),
('1cg12is009', 'Roja', 'Skype', '2014-06-10', 1, 1, 1, 1, 1),
('1cg12cs031', 'Yogesh', 'Tata Consultency Services', '2015-11-24', 1, 1, 1, 1, 1),
('1cg12is001', 'Ragini', 'VTECK', '2013-03-24', 1, 1, 1, 1, 1),
('1cg12cv002', 'Tesjaswini', 'WDS', '2014-09-30', 1, 1, 1, 1, 1),
('1cg12cs002', 'punith', 'yy', '2015-07-04', 1, 1, 1, 0, 0),
('1cg12is094', 'Vishruth Harithsa', 'Apple', '2015-07-23', 1, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addpdrive`
--
ALTER TABLE `addpdrive`
  ADD PRIMARY KEY (`CompanyName`,`Date`);

--
-- Indexes for table `basicdetails`
--
ALTER TABLE `basicdetails`
  ADD PRIMARY KEY (`Id`,`USN`),
  ADD UNIQUE KEY `USN` (`USN`,`Mobile`,`Email`);

--
-- Indexes for table `hlogin`
--
ALTER TABLE `hlogin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`,`Email`);

--
-- Indexes for table `plogin`
--
ALTER TABLE `plogin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`,`Email`);

--
-- Indexes for table `prilogin`
--
ALTER TABLE `prilogin`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Username` (`Username`,`Email`);

--
-- Indexes for table `slogin`
--
ALTER TABLE `slogin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USN` (`USN`,`Email`);

--
-- Indexes for table `updatedrive`
--
ALTER TABLE `updatedrive`
  ADD KEY `USN` (`USN`),
  ADD KEY `CompanyName` (`CompanyName`,`Date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basicdetails`
--
ALTER TABLE `basicdetails`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `hlogin`
--
ALTER TABLE `hlogin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `plogin`
--
ALTER TABLE `plogin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prilogin`
--
ALTER TABLE `prilogin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slogin`
--
ALTER TABLE `slogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `updatedrive`
--
ALTER TABLE `updatedrive`
  ADD CONSTRAINT `updatedrive_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `basicdetails` (`USN`) ON DELETE CASCADE,
  ADD CONSTRAINT `updatedrive_ibfk_2` FOREIGN KEY (`CompanyName`,`Date`) REFERENCES `addpdrive` (`CompanyName`, `Date`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

    -- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2021 at 07:11 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `details`
--

-- --------------------------------------------------------

--
-- Table structure for table `notify`
--

CREATE TABLE `notify` (
  `id` int(255) NOT NULL,
  `Subject` varchar(10000) NOT NULL,
  `Message` varchar(30000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notify`
--

INSERT INTO `notify` (`id`, `Subject`, `Message`) VALUES
(1, 'hiii', 'this is my 1st message'),
(2, '1-2 main exams ', 'this is to inform that 1-2 main examination are held on 1/2/21'),
(3, '1-2 results', 'This is to inform that 1-2 results are out.Kindly check out.. '),
(4, '1-2 supply', 'This is to inform that 1-2 supply are held on 4/2/21.Kindly check out.'),
(5, '2-2 main exams', 'this is to inform that 2-2 main examination are held on 1/2/21'),
(6, '2-2 results', 'This is to inform that 2-2 results are out.Kindly check out.. '),
(7, '2-2  supply', 'This is to inform that 2-2 supply are held on 4/2/21.Kindly check out.'),
(8, '3-1 main exams', 'this is to inform that 3-1 main examination are held on 1/2/21'),
(9, '3-1 results', 'This is to inform that 3-1 results are out.Kindly check out.. '),
(10, '3-2 supply', 'This is to inform that 3-1 supply are held on 4/2/21.Kindly check out.'),
(11, 'miniproject', 'Revised Mini Project Review -1 schedule for Batch 19:\r\nDate: 22-4-2021\r\nTime : 12-15 PM to 12:30 PM.'),
(12, 'hii', 'epople'),
(17, 'hjg', 'yjhasgdsakj'),
(18, 'this is ', 'my message'),
(19, 'this is ', 'my message'),
(27, 'welcome', 'everyone'),
(28, 'message', 'from principal\r\n'),
(29, 'message', 'from principal\r\n'),
(30, 'message', 'from principal\r\n'),
(31, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(32, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(33, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(34, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(35, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(36, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(37, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(38, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(39, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(40, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(41, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(42, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(43, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(44, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(45, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(46, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(47, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(48, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(49, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(50, 'optional elective', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(51, 'optional electiveq', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(52, 'optional elective2', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(53, 'optional ele3ctive', 'kindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021  HOD CSE'),
(54, 'hello', 'mesbcsakindly refer to the attached mail for information regarding offering additional subjects for B.Tech III year II semester 2020-21 .kindly fill the form kept in 110cb on or before 25.2.2021 \r\nHOD CSE\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notify`
--
ALTER TABLE `notify`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notify`
--
ALTER TABLE `notify`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

    

