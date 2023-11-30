-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 11:39 PM
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
-- Database: `grading_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ROLE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `FIRST_NAME`, `LAST_NAME`, `USERNAME`, `PASSWORD`, `ROLE`) VALUES
(1, 'Loselle', 'Ruans', 'mosh', 'pass1234', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`ID`, `COURSE_NAME`) VALUES
(2, 'BSIT'),
(3, 'Bachelor of Science in Criminology'),
(4, 'Bachelor of Science in Environmental Science'),
(5, 'Bachelor of Science in Agribusiness Management'),
(7, 'Bachelor of Science in Mathematics'),
(8, 'Bachelor of Science in Nursing'),
(9, 'Bachelor of Physical Education'),
(10, 'Bachelor of Science in Business Administration'),
(14, 'Bachelor of Science in Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `ROLE` varchar(50) NOT NULL,
  `FIRST_NAME` varchar(125) NOT NULL,
  `MIDDLE_NAME` varchar(125) NOT NULL,
  `LAST_NAME` varchar(125) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `GENDER` varchar(50) NOT NULL,
  `INSTITUTE` varchar(125) NOT NULL,
  `COURSE` varchar(125) NOT NULL,
  `CONTACT_NUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`ID`, `USERNAME`, `PASSWORD`, `ROLE`, `FIRST_NAME`, `MIDDLE_NAME`, `LAST_NAME`, `BIRTH_DATE`, `GENDER`, `INSTITUTE`, `COURSE`, `CONTACT_NUM`) VALUES
(1, 'wilkin', 'pass1234', 'faculty', 'Wilkins', 'Felisilda', 'Simo', '2023-11-23', 'Male', 'ICE', 'IT', 938683848),
(4, '', '', '', 'Jhon', 'A.', 'Inoco', '2023-11-23', 'Male', 'ICE', 'IT', 64564874);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_students`
--

CREATE TABLE `faculty_students` (
  `ID` int(11) NOT NULL,
  `STUDENT_ID` int(11) NOT NULL,
  `FACULTY_ID` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subjects`
--

CREATE TABLE `faculty_subjects` (
  `ID` int(11) NOT NULL,
  `FACULTY_ID` int(11) NOT NULL,
  `SUBJECT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `ID` int(11) NOT NULL,
  `FACULTY` varchar(128) NOT NULL,
  `SUBJECT` varchar(128) NOT NULL,
  `STUDENT` varchar(128) NOT NULL,
  `GRADE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `ID` int(11) NOT NULL,
  `INSTIUTE_NAME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`ID`, `INSTIUTE_NAME`) VALUES
(1, 'Institute of Computing and Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `ID` int(11) NOT NULL,
  `SCHOOL_YEAR` int(11) NOT NULL,
  `SEMESTER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `ID` int(11) NOT NULL,
  `SCHOOL_YEAR` varchar(50) NOT NULL,
  `SEMESTER` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`ID`, `SCHOOL_YEAR`, `SEMESTER`, `STATUS`) VALUES
(1, '2023-2024', '1st semester', 'active'),
(2, '2022-2023', '2nd semester', 'inactive'),
(12, '2023-2024', '1st semester', 'inactive'),
(13, '1989-1999', 'Summer', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ROLE` varchar(50) NOT NULL,
  `FIRST_NAME` varchar(100) NOT NULL,
  `MIDDLE_NAME` varchar(100) NOT NULL,
  `LAST_NAME` varchar(100) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `GENDER` varchar(50) NOT NULL,
  `PUROK` varchar(100) NOT NULL,
  `BARANGAY` varchar(100) NOT NULL,
  `MUNICIPALITY` varchar(100) NOT NULL,
  `PROVINCE` varchar(100) NOT NULL,
  `ZIP_CODE` int(100) NOT NULL,
  `CONTACT_NUM` int(100) NOT NULL,
  `INSTITUTE` varchar(100) NOT NULL,
  `COURSE` varchar(100) NOT NULL,
  `GUARDIAN` varchar(100) NOT NULL,
  `GUARD_CONTACT` int(100) NOT NULL,
  `GUARD_ADDRESS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `USERNAME`, `PASSWORD`, `ROLE`, `FIRST_NAME`, `MIDDLE_NAME`, `LAST_NAME`, `BIRTH_DATE`, `GENDER`, `PUROK`, `BARANGAY`, `MUNICIPALITY`, `PROVINCE`, `ZIP_CODE`, `CONTACT_NUM`, `INSTITUTE`, `COURSE`, `GUARDIAN`, `GUARD_CONTACT`, `GUARD_ADDRESS`) VALUES
(1, 'iankarl', 'pass1234', 'student', 'Ian', 'Trocio', 'Mamontayao', '2002-11-07', 'Non-Binary', 'Vilallobos', 'San Ignacio', 'Manay', 'Dav. Or.', 8201, 938683848, 'ICE', 'BSIT', 'Rodel Matute', 989334532, 'Poblacio, Mati City'),
(7, 'kenty', 'pass1234', 'student', 'Kent', 'Tristan', 'Suico', '2023-11-26', 'Male', 'DMM', 'Don Mariano', 'Kagami', 'Davao Oriental', 4416, 2147483647, 'ICE', 'BSIT', 'Rodel', 12316251, 'Mati City');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(128) NOT NULL,
  `UNIT` int(11) NOT NULL,
  `TYPE` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`ID`, `CODE`, `DESCRIPTION`, `UNIT`, `TYPE`) VALUES
(1, 'ITPE130', 'Integrative Programming and Technologies 2', 3, 'Lecture/Laboratory'),
(2, 'ITPFE1', 'Web Systems and Technologies 2', 3, 'Lecture/Laboratory');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faculty_students`
--
ALTER TABLE `faculty_students`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `STUDENT_ID` (`STUDENT_ID`),
  ADD KEY `FACULTY_ID` (`FACULTY_ID`);

--
-- Indexes for table `faculty_subjects`
--
ALTER TABLE `faculty_subjects`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FACULTY_ID` (`FACULTY_ID`),
  ADD KEY `SUBJECT_ID` (`SUBJECT_ID`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faculty_students`
--
ALTER TABLE `faculty_students`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty_subjects`
--
ALTER TABLE `faculty_subjects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institute`
--
ALTER TABLE `institute`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty_students`
--
ALTER TABLE `faculty_students`
  ADD CONSTRAINT `faculty_students_ibfk_1` FOREIGN KEY (`STUDENT_ID`) REFERENCES `student` (`ID`),
  ADD CONSTRAINT `faculty_students_ibfk_2` FOREIGN KEY (`FACULTY_ID`) REFERENCES `faculty` (`ID`);

--
-- Constraints for table `faculty_subjects`
--
ALTER TABLE `faculty_subjects`
  ADD CONSTRAINT `faculty_subjects_ibfk_2` FOREIGN KEY (`FACULTY_ID`) REFERENCES `faculty` (`ID`),
  ADD CONSTRAINT `faculty_subjects_ibfk_3` FOREIGN KEY (`SUBJECT_ID`) REFERENCES `subjects` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
