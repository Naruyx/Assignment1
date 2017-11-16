-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2017 at 03:45 PM
-- Server version: 5.5.57-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.22
DROP DATABASE IF EXISTS csuDB1;
CREATE DATABASE csuDB1;
USE csuDB1;



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `csuDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `courseID` int(11) NOT NULL AUTO_INCREMENT,
  `courseName` varchar(60) NOT NULL,
  `credits` int(60) NOT NULL,
  `crn` varchar(11) NOT NULL,
  `section` varchar(15) NOT NULL,
  `day` varchar(60) NOT NULL,
  `time` varchar(60) NOT NULL,
  `location` varchar(60) NOT NULL,
  `professorID` int(11) NOT NULL,
  PRIMARY KEY (`courseID`),
  UNIQUE KEY `professorID_2` (`professorID`),
  KEY `professorID` (`professorID`),
  KEY `professorID_3` (`professorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `courseName`, `credits`, `crn`, `section`, `day`, `time`, `location`, `professorID`) VALUES
(1, 'CPSC 1301 Computer Science I', 3, '22172', '06', 'MWF', '01:00-01:50 PM', 'CCT- Ctr for Commerc 405', 1),
(2, 'CPSC 2108 Data Structures', 3, '21780', '02', 'TR', '11:00 AM - 12:15 PM', 'CCT - Ctr for Commerc 409', 2),
(3, 'CPSC 2125 Internet Programming', 3, '20413', 'V01', 'TBA', '', 'ONLINE', 3),
(4, 'ENGL 1101 English Comp I', 3, '20136', '03', 'MWF', '10:00 AM - 10:50 AM', 'Howard Hall 208', 4),
(5, 'ENGL 1102 English Comp II', 3, '20152', '19', 'MW', '2:00 PM - 2:50 PM', 'Howard Hall 105', 5),
(6, 'ENGL 2111 World Literature I', 3, '23056', '03', 'TR', '11:00 AM - 12:15 PM', 'Howard Hall 20', 6),
(7, 'MATH 111 College Algebra', 3, '50055', '01', 'MTWR', '10:00 AM - 10:50 PM', 'Woodall Hall 159', 7),
(8, 'MATH 1113 Pre-Calculus', 3, '50208', '01', 'MTWR', '10:00 AM - 11:55 PM', 'University Hall 200', 8),
(9, 'MATH 1401 Intro to Stats', 3, '50665', '01G', 'TBA', '', 'ONLINE', 9),
(10, 'PSYC 1101 General Psychology', 3, '20861', '03', 'MW', '06:00 PM - 07:15 PM', 'Stanley Hall 209A', 10),
(11, 'PSYC 2103 Lifespan Dev Psyc', 3, '22646', '01', 'TR', '09:30 AM - 10:45 AM', 'Arnold Hall 113', 11),
(12, 'PSYC 3265 Evolutionary Psychology', 3, '22675', '01', 'TR', '03:00 PM - 04:15 PM', 'Arnold Hall 111', 12),
(13, 'PHED 1205 Concepts of Fitness', 2, '80692', '07', 'MW', '03:00 PM - 4:15 PM', 'Health and Wellness 109', 13),
(14, 'PHED 2205 Intro to Physical Ed and Rec', 2, '80997', '01', 'TR', '08:00 AM - 09:15 AM', 'Lumpkin, Frank G. Jr 110', 14),
(15, 'PHED 3316 Teaching Dance', 1, '81005', '01', 'F', '11:00 AM - 12:40 PM', 'Lumpkin, Frank G. Jr 158', 15);

-- --------------------------------------------------------

--
-- Table structure for table `Fall Semester`
--

CREATE TABLE IF NOT EXISTS `Fall Semester` (
  `CPSC 1` int(10) NOT NULL,
  `CPSC 2` int(10) NOT NULL,
  `CPSC 3` int(10) NOT NULL,
  `ENGL 1` int(10) NOT NULL,
  `ENGL 2` int(10) NOT NULL,
  `ENGL 3` int(10) NOT NULL,
  `PHED 1` int(10) NOT NULL,
  `PHED 2` int(10) NOT NULL,
  `PHED 3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Fall Semester`
--

INSERT INTO `Fall Semester` (`CPSC 1`, `CPSC 2`, `CPSC 3`, `ENGL 1`, `ENGL 2`, `ENGL 3`, `PHED 1`, `PHED 2`, `PHED 3`) VALUES
(1, 2, 3, 4, 5, 6, 13, 14, 15);

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE IF NOT EXISTS `professors` (
  `professorID` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  PRIMARY KEY (`professorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `professors`
--

INSERT INTO `professors` (`professorID`, `firstName`, `lastName`) VALUES
(1, 'Hillary', 'Fleenor'),
(2, 'Rania', 'Hodhod'),
(3, 'Vladimir', 'Zanev'),
(4, 'Natalia', 'Temesgen'),
(5, 'Robert', 'Norwood'),
(6, 'Daniel', 'Ross'),
(7, 'Richard', 'Stevens'),
(8, 'Nehal', 'Shukla'),
(9, '--', '--'),
(10, 'John', 'Roop'),
(11, 'Kristen', 'Campbell'),
(12, 'Brandt', 'Smith'),
(13, 'Erik', 'Richman'),
(14, 'Ann', 'Klinkenborg'),
(15, 'Ellen', 'Martin');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE IF NOT EXISTS `semester` (
  `Spring Semester` varchar(60) NOT NULL,
  `Summer Semester` varchar(60) NOT NULL,
  `Fall Semester` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`Spring Semester`, `Summer Semester`, `Fall Semester`) VALUES
('Spring Semester', '', ''),
('', 'Summer Semester', ''),
('', '', 'Fall Semester');

-- --------------------------------------------------------

--
-- Table structure for table `Spring Semester`
--

CREATE TABLE IF NOT EXISTS `Spring Semester` (
  `CPSC 1` int(10) NOT NULL,
  `CPSC 2` int(10) NOT NULL,
  `CPSC 3` int(10) NOT NULL,
  `ENGL 1` int(10) NOT NULL,
  `ENGL 2` int(10) NOT NULL,
  `ENGL 3` int(10) NOT NULL,
  `PSYC 1` int(10) NOT NULL,
  `PSYC 2` int(10) NOT NULL,
  `PSYC 3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Spring Semester`
--

INSERT INTO `Spring Semester` (`CPSC 1`, `CPSC 2`, `CPSC 3`, `ENGL 1`, `ENGL 2`, `ENGL 3`, `PSYC 1`, `PSYC 2`, `PSYC 3`) VALUES
(1, 2, 3, 4, 5, 6, 10, 11, 12);

-- --------------------------------------------------------

--
-- Table structure for table `Summer Semester`
--

CREATE TABLE IF NOT EXISTS `Summer Semester` (
  `CPSC 1` int(10) NOT NULL,
  `CPSC 2` int(10) NOT NULL,
  `CPSC 3` int(10) NOT NULL,
  `ENGL 1` int(10) NOT NULL,
  `ENGL 2` int(10) NOT NULL,
  `ENGL 3` int(10) NOT NULL,
  `MATH 1` int(10) NOT NULL,
  `MATH 2` int(10) NOT NULL,
  `MATH 3` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Summer Semester`
--

INSERT INTO `Summer Semester` (`CPSC 1`, `CPSC 2`, `CPSC 3`, `ENGL 1`, `ENGL 2`, `ENGL 3`, `MATH 1`, `MATH 2`, `MATH 3`) VALUES
(1, 2, 3, 4, 5, 6, 7, 8, 9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

GRANT SELECT, INSERT, UPDATE, DELETE
ON *
TO mgs_user@localhost
IDENTIFIED BY 'pa55word';
