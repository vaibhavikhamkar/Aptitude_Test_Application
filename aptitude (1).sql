-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2024 at 11:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aptitude`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `MobileNo` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `Username`, `MobileNo`) VALUES
(1, 'Office', '9970288613'),
(2, 'Office', '9970288616'),
(3, 'Vishal Khamkar', '7892678765'),
(4, 'Vikrant Nikam', '7892679090');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_answer` int(11) NOT NULL CHECK (`correct_answer` in (1,2,3,4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`) VALUES
(1, 'Which of the following is not a Java features?', 'Dynamic', 'Architecture Neutral', 'Use of pointers', 'Object-oriented', 3),
(2, ' _____ is used to find and fix bugs in the Java programs.', 'JVM', 'JRE', 'JDK', 'JDB', 4),
(3, 'What is the return type of the hashCode() method in the Object class?', 'Object', 'int', 'long', 'void', 2),
(4, ' Evaluate the following Java expression, if x=3, y=5, and z=10: \r\n ++z + y - y + z + x++', '24', '23', '20', '25', 4),
(5, 'In which process, a local variable has the same name as one of the instance variables?', 'Serialization', 'Variable Shadowing', 'Abstraction', 'Multi-threading', 2),
(6, 'How many threads can be executed at a time?', 'Only one thread', 'Multiple threads', 'Only main (main() method) thread', 'Two threads', 2),
(7, ' Who invented Java Programming?', 'Guido van Rossum', ' James Gosling', 'Dennis Ritchie', 'Bjarne Stroustrup', 2),
(8, 'Which of these packages contains the exception Stack Overflow in Java?', ' java.io', ' java.system', 'java.lang', 'java.util', 3),
(9, 'Which one of the following is not an access modifier?', 'Protected', 'Void', 'Public', 'Private', 2),
(10, 'Which of the following is a type of polymorphism in Java?', 'Compile time polymorphism', 'Execution time polymorphism', 'Multiple polymorphism', ' Multilevel polymorphism', 1),
(11, 'Which concept of Java is a way of converting real world objects in terms of class?', 'Polymorphism', 'Encapsulation', 'Abstraction', 'Inheritance', 3),
(12, 'Which of the following is used to create web pages?', 'HTML', 'C', 'JVM', 'DTD', 1),
(13, '27, 24, 30, 27, 33,____', '48', '27', '30', '24', 3),
(14, '285, 253, 221, 189, ________ 	', '173', '167', '157', '146', 3),
(15, '5, 9, 16, 29, 54, 103, ____', '102', '294', '203', '200', 4),
(16, '4, 9, 20, 43, 90, ___	', '180', '182', '179', '185', 4),
(17, '29, 36, 44, 53, ________	', '55', '63', '65', '69', 2),
(18, 'Z,W,S,P,L,I,E,___	', 'F', 'G', 'B', 'K', 2),
(19, 'B,E,I,N,T,___', 'R', 'U', 'S', 'A', 4),
(20, 'TAILOR : SUIT', 'scheme : agent', 'earchitect : building', 'mention : opinion', 'edit : manuscript', 2),
(21, 'LAWN : GRASS', 'wool : sheep', 'skin : goat', 'fur : animal skin', 'rice : farm  ', 3),
(22, 'Who became the first Acting Prime Minister of India?', 'Lal Bahadur Shastri', 'Gulzarilal Nanda', 'Charan Singh', 'None of them', 2),
(23, 'Who was the first Vice-President of India?', 'Dr. S. Radhakrishnan', 'Dr. Rajendra Prasad', 'Dr. Zakir Hussain', 'G.S. Pathak', 1),
(24, 'The JDBC-ODBC bridge allows ……… to be used as ……….', 'JDBC drivers, ODBC drivers', 'Drivers, Application', 'ODBC drivers, JDBC drivers', 'Application, drivers', 3),
(25, ' Which method will a web browser call on a new applet?', 'main method', 'destroy method', 'execute method', ' init method', 4),
(26, 'In order to run JSP ……………….. is required. ', 'Mail Server', 'Applet viewer', 'Java Web Server', 'Database connection', 3),
(27, 'In the second type the information written in java after // is ignored by the ............', 'Interpreter', 'Compiler', 'Programmer', 'All Of Above', 2),
(28, 'What is the full form of SQL?', 'Structured Query List', 'Structure Query Language', 'Sample Query Language', 'None of these.', 2),
(29, 'Which of the following are TCL commands?', 'COMMIT and ROLLBACK', 'UPDATE and TRUNCATE', 'SELECT and INSERT', 'GRANT and REVOKE', 1),
(30, 'How many Primary keys can have in a table?', 'Only 1 ', 'Only 2', 'Depends on no of Columns ', 'Depends on DBA', 1),
(31, 'In which of the following cases a DML statement is not executed?', 'When existing rows are modified.', 'When a table is deleted.', 'When some rows are deleted.', 'All of the above', 2),
(32, 'A command that lets you change one or more field in a table is:', 'INSERT', 'MODIFY', 'LOOK-UP', 'All of the above', 2),
(33, 'Which command is used to change the definition of a table in SQL?', 'CREATE', 'UPDATE', 'ALTER ', 'SELECT', 3),
(34, ' Which of the following is the basic approaches for joining tables?', 'Union JOIN', 'Natural JOIN ', 'Subqueries ', 'All of the above', 4),
(35, 'The full form of CSS is:', 'Cascade style sheets ', 'Color and style sheets', 'Cascading style sheets ', 'None of the above', 3),
(36, 'The property in CSS used to change the background color of an element is -', 'bgcolor ', 'color ', 'background-color ', 'All of the above', 3),
(37, 'The HTML attribute used to define the inline styles is -', 'style ', 'styles ', 'class ', 'None of the above', 1),
(38, 'Which of the following property is used as the shorthand property for the padding properties?', 'padding-left ', 'padding-right ', 'padding ', 'All of the above', 3),
(39, 'The CSS property used to specify the transparency of an element is -', 'opacity ', 'filter ', 'visibility ', 'overlay', 1),
(40, 'The CSS property used to draw a line around the elements outside the border?', 'border ', 'outline ', 'padding ', 'line', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `mobileNumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `username`, `mobileNumber`) VALUES
(114, 'Manasvi Thorat', '7892678090'),
(115, 'Antara Kadam', '7889234590'),
(116, 'Harshita Yadhav', '9970256443'),
(117, 'Suhani  lohar', '7889234590'),
(118, 'Shivnya Lohar', '9970288443'),
(119, 'Akshay Ghorpde', '9970256443'),
(120, 'Mahi Raje', '9867783442'),
(121, 'Baby Ahire', '7889234590'),
(122, 'varsha rane', '9970256443'),
(123, 'Ganesh Raut', '7892679090'),
(124, 'Vishakha  Jadhav', '7689230987'),
(125, 'Karan Jadhav', '7892679090'),
(126, 'Harini Kadam', '9867793442'),
(127, 'Varad  Nikam', '7423834891'),
(128, 'Priya Bapat', '9866782134'),
(129, 'Darshan Gadakh', '8790216778'),
(130, 'Dhanu Patil', '8967452309'),
(131, 'Ankul Salunkhe', '7889234590'),
(132, 'Vidya Shewale', '9881672322'),
(133, 'Harshad Garad', '9867982390'),
(134, 'Sarika Patil', '9970289876'),
(135, 'Arjun Raut', '9970258788'),
(136, 'Swamini Joshi', '9970256443'),
(137, 'Prachi nikam', '9970288443'),
(138, 'kavita Sankpal', '9970288618'),
(139, 'Shubham Khamkar', '9867783880'),
(140, 'Sangram patil', '9970288443'),
(141, 'Raj Mlohtra', '7889234587'),
(142, 'Pramod Jadhav', '9034567812'),
(143, 'Shankar Shitole', '7792679090'),
(144, 'Piyush Sawant', '9867562209'),
(145, 'Muskan  Nadaf', '9867783442'),
(146, 'Sagar Chavhan', '9867783442'),
(147, 'Tanuja Shinde', '7892678756'),
(148, 'Manoj Sharma', '9867783442');

-- --------------------------------------------------------

--
-- Table structure for table `student_register`
--

CREATE TABLE `student_register` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `total_true` int(11) DEFAULT 0,
  `total_false` int(11) DEFAULT 0,
  `marks` int(11) DEFAULT 0,
  `pass_fail` enum('pass','fail') NOT NULL,
  `date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_register`
--

INSERT INTO `student_register` (`id`, `username`, `question_id`, `answer`, `total_true`, `total_false`, `marks`, `pass_fail`, `date`) VALUES
(1, 'Sagar Chavhan', 7, '2', 11, 14, 11, 'fail', '2024-10-28'),
(2, 'Tanuja Shinde', 22, '1', 6, 19, 6, 'fail', '2024-10-28'),
(3, 'Manoj Sharma', 29, '1', 8, 17, 8, 'fail', '2024-10-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_register`
--
ALTER TABLE `student_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `student_register`
--
ALTER TABLE `student_register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
