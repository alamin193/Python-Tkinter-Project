-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 05:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library-management-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_registration`
--

CREATE TABLE `admin_registration` (
  `Name` varchar(40) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_registration`
--

INSERT INTO `admin_registration` (`Name`, `Phone`, `Username`, `Password`) VALUES
('aa aa', 'aa', 'aa', 'aa'),
('Md. Alamin', '01705606854', 'alamin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booklist`
--

CREATE TABLE `booklist` (
  `Book_ID` varchar(40) NOT NULL,
  `Book_Name` varchar(40) NOT NULL,
  `Author` varchar(40) NOT NULL,
  `Edition` varchar(40) NOT NULL,
  `Category` varchar(40) NOT NULL,
  `Price` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booklist`
--

INSERT INTO `booklist` (`Book_ID`, `Book_Name`, `Author`, `Edition`, `Category`, `Price`) VALUES
('CSE113', 'Microprocessor Data Handbook', 'BPB Publications', '5th', 'Computer Science', '870'),
('CSE114', 'Introduction to Computers', 'Peter Norton', '6th', 'Computer Science', '340');

-- --------------------------------------------------------

--
-- Table structure for table `issuebook`
--

CREATE TABLE `issuebook` (
  `BookID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `IssueDate` varchar(40) NOT NULL,
  `DueDate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `issuebookstatics`
--

CREATE TABLE `issuebookstatics` (
  `BookID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `IssueDate` varchar(40) NOT NULL,
  `DueDate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issuebookstatics`
--

INSERT INTO `issuebookstatics` (`BookID`, `StudentID`, `IssueDate`, `DueDate`) VALUES
('CSE112', '193-15-2965', '18/08/2021', '18/08/2021'),
('CSE112', '193-15-2966', '18/08/2021', '18/08/2021'),
('CSE112', '193-15-2966', '18/08/2021', '18/08/2021'),
('CSE113', '193-15-2966', '18/08/2021', '18/08/2021'),
('CSE113', '193-15-2965', '19/08/2021', '19/08/2021'),
('CSE114', '193-15-2966', '19/08/2021', '27/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `BookID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `IssueDate` varchar(40) NOT NULL,
  `ReturnDate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`BookID`, `StudentID`, `IssueDate`, `ReturnDate`) VALUES
('CSE113', '193-15-2965', '19/08/2021', '19/08/2021'),
('CSE114', '193-15-2966', '19/08/2021', '19/08/2021');

-- --------------------------------------------------------

--
-- Table structure for table `studentlist`
--

CREATE TABLE `studentlist` (
  `student_Id` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` varchar(40) NOT NULL,
  `department` varchar(40) NOT NULL,
  `gender` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentlist`
--

INSERT INTO `studentlist` (`student_Id`, `name`, `email`, `mobile`, `department`, `gender`) VALUES
('193-15-2965', 'Md. Al Amin Miah', 'alamin15-2965@diu.edu.bd', '01705606854', 'CSE', 'male'),
('193-15-2966', 'Md. Harun Or Rashid', 'harun15-2966@diu.edu.bd', '01700000000', 'CSE', 'male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_registration`
--
ALTER TABLE `admin_registration`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `booklist`
--
ALTER TABLE `booklist`
  ADD PRIMARY KEY (`Book_ID`),
  ADD UNIQUE KEY `Book_ID` (`Book_ID`);

--
-- Indexes for table `issuebook`
--
ALTER TABLE `issuebook`
  ADD PRIMARY KEY (`BookID`);

--
-- Indexes for table `studentlist`
--
ALTER TABLE `studentlist`
  ADD PRIMARY KEY (`student_Id`),
  ADD UNIQUE KEY `student_Id` (`student_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
