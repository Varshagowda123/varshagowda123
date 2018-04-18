-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2018 at 10:01 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2016cse051`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident`
--

CREATE TABLE `accident` (
  `report_no` int(11) NOT NULL,
  `acc_date` date DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accident`
--

INSERT INTO `accident` (`report_no`, `acc_date`, `location`) VALUES
(101, '2016-02-12', 'yelahanka'),
(102, '2012-01-31', 'jayanagar'),
(103, '2012-12-12', 'btm layout'),
(104, '2017-07-07', 'jp nagar'),
(105, '2016-05-01', 'yelahanka'),
(106, '2014-08-13', 'marathahalli'),
(107, '2006-01-19', 'marathahalli'),
(108, '2016-05-01', 'yelahanka');

-- --------------------------------------------------------

--
-- Table structure for table `ACCOUNT`
--

CREATE TABLE `ACCOUNT` (
  `ACC_NO` int(11) NOT NULL,
  `B_NAME` varchar(20) DEFAULT NULL,
  `BALANCE` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ACCOUNT`
--

INSERT INTO `ACCOUNT` (`ACC_NO`, `B_NAME`, `BALANCE`) VALUES
(123456, 'KORMANGALA', 5000),
(123457, 'SADASHIVANAGAR', 35000),
(123458, 'VITTALNAGAR', 60000),
(123459, 'KASTHURINAGAR', 255600),
(123460, 'VITTALNAGAR', 37890),
(123461, 'MARUTINAGAR', 20000),
(123462, 'SADASHIVANAGAR', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `aid` int(11) NOT NULL,
  `aname` varchar(20) DEFAULT NULL,
  `cruising_range` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`aid`, `aname`, `cruising_range`) VALUES
(11, 'boeing', 8000),
(12, 'airbus', 6000),
(13, 'airindia', 5000),
(14, 'indigo', 900),
(15, 'spicejet', 800);

-- --------------------------------------------------------

--
-- Table structure for table `BORROWER`
--

CREATE TABLE `BORROWER` (
  `C_NAME` varchar(20) NOT NULL,
  `L_NO` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BORROWER`
--

INSERT INTO `BORROWER` (`C_NAME`, `L_NO`) VALUES
('KAVYA', '231'),
('KSHAMITHA', '232'),
('SACHIN', '233'),
('LIKITH', '234'),
('ABHAY', '235');

-- --------------------------------------------------------

--
-- Table structure for table `BRANCH`
--

CREATE TABLE `BRANCH` (
  `B_NAME` varchar(20) NOT NULL,
  `B_CITY` varchar(20) DEFAULT NULL,
  `ASSETS` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `BRANCH`
--

INSERT INTO `BRANCH` (`B_NAME`, `B_CITY`, `ASSETS`) VALUES
('KASTHURINAGAR', 'DELHI', 125000),
('KORMANGALA', 'BENGALURU', 20500.3),
('MARUTINAGAR', 'HYDERABAD', 212351.6),
('SADASHIVANAGAR', 'BENGALURU', 154329.5),
('VITTALNAGAR', 'HYDERABAD', 350000);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `regno` varchar(20) NOT NULL,
  `model` char(20) DEFAULT NULL,
  `year` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`regno`, `model`, `year`) VALUES
('ka05d9834', 'maruti 800', 2010),
('ka23j1890', 'maruti zen', 2005),
('ka25y1878', 'audi a4', 2015),
('ka35f2845', 'fiat punto', 2013),
('ka36m0377', 'merc 520', 2016),
('ka36m9089', 'mahindra xuv', 2017),
('ka37k4332', 'honda city', 2013);

-- --------------------------------------------------------

--
-- Table structure for table `certified`
--

CREATE TABLE `certified` (
  `eid` int(11) NOT NULL,
  `aid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certified`
--

INSERT INTO `certified` (`eid`, `aid`) VALUES
(100, 11),
(200, 11),
(100, 12),
(400, 12),
(100, 13),
(200, 14),
(500, 14),
(100, 15),
(200, 15),
(600, 15);

-- --------------------------------------------------------

--
-- Table structure for table `certified_pilot`
--

CREATE TABLE `certified_pilot` (
  `eid` int(11) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certified_pilot`
--

INSERT INTO `certified_pilot` (`eid`, `no`) VALUES
(100, 111),
(100, 112),
(200, 113),
(200, 114),
(400, 114),
(200, 115),
(300, 115);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `C_NAME` varchar(10) NOT NULL,
  `Meets_At` varchar(10) DEFAULT NULL,
  `Room` varchar(5) DEFAULT NULL,
  `F_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`C_NAME`, `Meets_At`, `Room`, `F_ID`) VALUES
('CN', '2:00', 'R128', 104),
('DBMS', '9:00', 'MF01', 101),
('DS', '9:00', 'MF02', 103),
('EM4', '10:00', 'MF01', 103),
('ENGLISH', '2:00', 'MF01', 105),
('OOPJ', '11:15', 'MF04', 103),
('OS', '1:00', 'R128', 103),
('TOC', '10:00', 'MF02', 102);

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `C_NAME` varchar(20) NOT NULL,
  `C_STREET` varchar(30) DEFAULT NULL,
  `C_CITY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`C_NAME`, `C_STREET`, `C_CITY`) VALUES
('ABHAY', 'KAMALANAGAR', 'TUMKUR'),
('KAVYA', 'SADASHIVANAGAR', 'BENGALURU'),
('KSHAMITHA', 'MARUTILAYOUT', 'TUMKUR'),
('LIKITH', 'MADHURANAGAR', 'HYDERABAD'),
('SACHIN', 'VITTALNAGAR', 'HYDERABAD'),
('SHEETAL', 'KASTHURINAGAR', 'BENGALURU');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'accounting'),
(2, 'sales'),
(3, 'marketing');

-- --------------------------------------------------------

--
-- Table structure for table `department1`
--

CREATE TABLE `department1` (
  `dno` int(11) NOT NULL,
  `dname` varchar(30) DEFAULT NULL,
  `mgr_ssn` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department1`
--

INSERT INTO `department1` (`dno`, `dname`, `mgr_ssn`) VALUES
(1, 'research', 103),
(2, 'development', 102),
(3, 'marketing', 105),
(4, 'sales', 106);

-- --------------------------------------------------------

--
-- Table structure for table `DEPOSITOR`
--

CREATE TABLE `DEPOSITOR` (
  `C_NAME` varchar(20) NOT NULL,
  `ACC_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DEPOSITOR`
--

INSERT INTO `DEPOSITOR` (`C_NAME`, `ACC_NO`) VALUES
('ABHAY', 123456),
('KAVYA', 123456),
('KAVYA', 123457),
('KSHAMITHA', 123458),
('KSHAMITHA', 123460),
('LIKITH', 123461),
('KAVYA', 123462);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(20) DEFAULT NULL,
  `dept_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `dept_num`) VALUES
(1, 'alice', NULL),
(2, 'bob', 1),
(3, 'charles', 2),
(4, 'dan', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee1`
--

CREATE TABLE `employee1` (
  `ssn` int(11) NOT NULL,
  `ename` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(40) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `sex` enum('male','female') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee1`
--

INSERT INTO `employee1` (`ssn`, `ename`, `dob`, `address`, `salary`, `sex`) VALUES
(101, 'amit', '2000-03-30', 'hebbal', 40000, 'male'),
(102, 'anil', '1997-01-20', 'krpuram', 20000, 'male'),
(103, 'kruthi', '1995-02-15', 'yelahanka', 30000, 'female'),
(104, 'shruthi', '1996-04-25', 'hsr', 35000, 'female'),
(105, 'ganesh', '1987-08-27', 'silk board', 50000, 'male'),
(106, 'maria', '1988-05-18', 'banashankari', 60000, 'female');

--
-- Triggers `employee1`
--
DELIMITER $$
CREATE TRIGGER `salcheck` BEFORE INSERT ON `employee1` FOR EACH ROW if new.salary < 0 then set new.salary=9999; end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `eid` int(11) NOT NULL,
  `ename` varchar(20) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`eid`, `ename`, `salary`) VALUES
(100, 'arjun', 200000),
(200, 'nisha', 150000),
(300, 'kavya', 200000),
(400, 'akhilesh', 80000),
(500, 'priya', 10000),
(600, 'raj', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `S_NUM` int(11) NOT NULL,
  `C_NAME` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`S_NUM`, `C_NAME`) VALUES
(10, 'DBMS'),
(20, 'DBMS'),
(30, 'DBMS'),
(40, 'DBMS'),
(50, 'DBMS'),
(60, 'DS'),
(20, 'EM4'),
(50, 'ENGLISH'),
(30, 'OOPJ'),
(40, 'OS'),
(20, 'TOC');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `F_ID` int(11) NOT NULL,
  `F_Name` varchar(25) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `Dept_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`F_ID`, `F_Name`, `Address`, `Dept_ID`) VALUES
(101, 'KAVYA', 'no.92 Hebbala', 41),
(102, 'KISHORE', 'no.12 KRPURAM', 42),
(103, 'AVINASH', '2ND CROSS RAJANKUNTE', 43),
(104, 'PRABHU', '1ST MAIN SANJAY NAGAR', 44),
(105, 'ABHAY', '3RD CROSS BANASHANKARI', 41),
(106, 'SHEETAL', 'HNO 37 KODIGEHALLI', 42),
(107, 'POOJA', 'HNO 61 DOMLUR', 45);

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `no` int(11) NOT NULL,
  `from_place` varchar(20) NOT NULL,
  `to_place` varchar(20) NOT NULL,
  `distance` int(11) DEFAULT NULL,
  `departs` varchar(20) DEFAULT NULL,
  `arrives` varchar(20) DEFAULT NULL,
  `price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`no`, `from_place`, `to_place`, `distance`, `departs`, `arrives`, `price`) VALUES
(111, 'bengaluru', 'frankfurt', 7000, '21:30', '7:30', 70000),
(112, 'bengaluru', 'new delhi', 2000, '06:00', '8:30', 9000),
(113, 'bengaluru', 'mumbai', 1000, '7:05', '7:55', 8000),
(114, 'mumbai', 'new delhi', 1000, '19:30', '21:00', 7000),
(115, 'bengaluru', 'new delhi', 2000, '8:00', '9:15', 4000),
(116, 'bengaluru', 'pune', 800, '8:00', '9:25', 5000),
(117, 'bengaluru', 'frankfurt', 7000, '7:30', '21:30', 70500),
(118, 'new delhi', 'las vegas', 8000, '8:00', '22:30', 70000),
(119, 'mumbai', 'las vegas', 9000, '8:30', '21:30', 70700);

-- --------------------------------------------------------

--
-- Table structure for table `LOAN`
--

CREATE TABLE `LOAN` (
  `L_NO` varchar(10) NOT NULL,
  `B_NAME` varchar(20) DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `LOAN`
--

INSERT INTO `LOAN` (`L_NO`, `B_NAME`, `AMOUNT`) VALUES
('231', 'SADASHIVANAGAR', 50500.5),
('232', 'VITTALNAGAR', 25000),
('233', 'MARUTINAGAR', 60300.3),
('234', 'KASTHURINAGAR', 45000.7),
('235', 'KORMANGALA', 25534);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderNumber` int(11) NOT NULL,
  `PersonID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderNumber`, `PersonID`) VALUES
(1, 77895, 3),
(2, 44678, 3),
(3, 22456, 2),
(4, 24562, 1);

-- --------------------------------------------------------

--
-- Table structure for table `owns`
--

CREATE TABLE `owns` (
  `did` int(11) NOT NULL,
  `regno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owns`
--

INSERT INTO `owns` (`did`, `regno`) VALUES
(2, 'ka05d9834'),
(3, 'ka23j1890'),
(6, 'ka25y1878'),
(4, 'ka35f2845'),
(5, 'ka36m0377'),
(7, 'ka36m9089'),
(1, 'ka37k4332');

-- --------------------------------------------------------

--
-- Table structure for table `participated`
--

CREATE TABLE `participated` (
  `did` int(11) DEFAULT NULL,
  `regno` varchar(15) DEFAULT NULL,
  `report_no` int(11) DEFAULT NULL,
  `damage_amt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `participated`
--

INSERT INTO `participated` (`did`, `regno`, `report_no`, `damage_amt`) VALUES
(1, 'ka37k4332', 101, 25000),
(2, 'ka05d9834', 102, 13000),
(2, 'ka05d9834', 103, 14000),
(3, 'ka23j1890', 104, 12450),
(4, 'ka35f2845', 105, 10000),
(6, 'ka25y1878', 106, 30000),
(6, 'ka25y1878', 107, 20000),
(6, 'ka25y1878', 108, 5900);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `did` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`did`, `name`, `address`) VALUES
(1, 'amith', 'no a-1-12 koppal'),
(2, 'anil', '23 vijaya apts'),
(3, 'john', 'no 3423 vicky apts'),
(4, 'arun', 'kamal nivas koppal'),
(5, 'sunil', 'no 54 ravi nagar'),
(6, 'charlie', '4th cross rajankunte'),
(7, 'mark', '2nd main yelahanka');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `ID` int(11) NOT NULL,
  `FisrtName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) NOT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`ID`, `FisrtName`, `LastName`, `Age`) VALUES
(1, 'Ola', 'Hansen', 30),
(2, 'Tove', 'Svendson', 23),
(3, 'Kari', 'Pettersen', 20);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pno` int(11) NOT NULL,
  `pname` varchar(40) DEFAULT NULL,
  `plocation` varchar(30) DEFAULT NULL,
  `dno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pno`, `pname`, `plocation`, `dno`) VALUES
(501, 'data analytics', 'mumbai', 1),
(502, 'iot', 'delhi', 1),
(503, 'hadoop analysis', 'chennai', 3),
(504, 'artificial intelligence', 'bengaluru', 4),
(505, 'airline management', 'bengaluru', 2),
(506, 'banking system', 'chennai', 3),
(507, 'railway reservation', 'bengaluru', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `S_NUM` int(11) NOT NULL,
  `S_NAME` varchar(25) DEFAULT NULL,
  `major` varchar(25) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`S_NUM`, `S_NAME`, `major`, `level`, `DOB`) VALUES
(10, 'AJAY', 'CSE', 'JR', '1999-06-30'),
(20, 'ARCHANA', 'ISE', 'SR', '1987-06-25'),
(30, 'BHARATH', 'ISE', 'JR', '1989-10-20'),
(40, 'LIKITH', 'MECH', 'JR', '1992-08-15'),
(50, 'BHAVYA', 'MECH', 'JR', '1991-03-28'),
(60, 'NISHA', 'CSE', 'JR', '1992-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `works_for`
--

CREATE TABLE `works_for` (
  `ssn` int(11) NOT NULL,
  `dno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works_for`
--

INSERT INTO `works_for` (`ssn`, `dno`) VALUES
(101, 1),
(103, 1),
(102, 2),
(103, 2),
(106, 2),
(104, 3),
(105, 3),
(101, 4),
(105, 4);

--
-- Triggers `works_for`
--
DELIMITER $$
CREATE TRIGGER `companyupdatetrigger` BEFORE UPDATE ON `works_for` FOR EACH ROW if new.dno=old.dno then set new.dno=old.dno;end if
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `works_on`
--

CREATE TABLE `works_on` (
  `ssn` int(11) NOT NULL,
  `pno` int(11) NOT NULL,
  `hours` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `works_on`
--

INSERT INTO `works_on` (`ssn`, `pno`, `hours`) VALUES
(101, 501, 4),
(101, 502, 2),
(101, 503, 3),
(101, 504, 2),
(101, 505, 2),
(101, 506, 2),
(102, 502, 3.5),
(102, 503, 2.5),
(104, 504, 5),
(104, 505, 3),
(105, 501, 10),
(106, 502, 7),
(106, 506, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident`
--
ALTER TABLE `accident`
  ADD PRIMARY KEY (`report_no`);

--
-- Indexes for table `ACCOUNT`
--
ALTER TABLE `ACCOUNT`
  ADD PRIMARY KEY (`ACC_NO`),
  ADD KEY `B_NAME` (`B_NAME`);

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `BORROWER`
--
ALTER TABLE `BORROWER`
  ADD PRIMARY KEY (`C_NAME`,`L_NO`),
  ADD KEY `L_NO` (`L_NO`);

--
-- Indexes for table `BRANCH`
--
ALTER TABLE `BRANCH`
  ADD PRIMARY KEY (`B_NAME`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `certified`
--
ALTER TABLE `certified`
  ADD PRIMARY KEY (`eid`,`aid`),
  ADD KEY `aid` (`aid`);

--
-- Indexes for table `certified_pilot`
--
ALTER TABLE `certified_pilot`
  ADD PRIMARY KEY (`eid`,`no`),
  ADD KEY `no` (`no`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`C_NAME`),
  ADD KEY `F_ID` (`F_ID`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`C_NAME`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `department1`
--
ALTER TABLE `department1`
  ADD PRIMARY KEY (`dno`),
  ADD KEY `mgr_ssn` (`mgr_ssn`);

--
-- Indexes for table `DEPOSITOR`
--
ALTER TABLE `DEPOSITOR`
  ADD PRIMARY KEY (`C_NAME`,`ACC_NO`),
  ADD KEY `ACC_NO` (`ACC_NO`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `dept_num` (`dept_num`);

--
-- Indexes for table `employee1`
--
ALTER TABLE `employee1`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`S_NUM`,`C_NAME`),
  ADD KEY `C_NAME` (`C_NAME`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`F_ID`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `LOAN`
--
ALTER TABLE `LOAN`
  ADD PRIMARY KEY (`L_NO`),
  ADD KEY `B_NAME` (`B_NAME`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `PersonID` (`PersonID`);

--
-- Indexes for table `owns`
--
ALTER TABLE `owns`
  ADD PRIMARY KEY (`did`,`regno`),
  ADD KEY `regno` (`regno`);

--
-- Indexes for table `participated`
--
ALTER TABLE `participated`
  ADD KEY `did` (`did`),
  ADD KEY `regno` (`regno`),
  ADD KEY `report_no` (`report_no`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pno`),
  ADD KEY `dno` (`dno`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`S_NUM`);

--
-- Indexes for table `works_for`
--
ALTER TABLE `works_for`
  ADD PRIMARY KEY (`ssn`,`dno`),
  ADD KEY `dno` (`dno`);

--
-- Indexes for table `works_on`
--
ALTER TABLE `works_on`
  ADD PRIMARY KEY (`ssn`,`pno`),
  ADD KEY `pno` (`pno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident`
--
ALTER TABLE `accident`
  MODIFY `report_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ACCOUNT`
--
ALTER TABLE `ACCOUNT`
  ADD CONSTRAINT `ACCOUNT_ibfk_1` FOREIGN KEY (`B_NAME`) REFERENCES `BRANCH` (`B_NAME`) ON DELETE CASCADE;

--
-- Constraints for table `BORROWER`
--
ALTER TABLE `BORROWER`
  ADD CONSTRAINT `BORROWER_ibfk_1` FOREIGN KEY (`C_NAME`) REFERENCES `CUSTOMER` (`C_NAME`) ON DELETE CASCADE,
  ADD CONSTRAINT `BORROWER_ibfk_2` FOREIGN KEY (`L_NO`) REFERENCES `LOAN` (`L_NO`) ON DELETE CASCADE;

--
-- Constraints for table `certified`
--
ALTER TABLE `certified`
  ADD CONSTRAINT `certified_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employees` (`eid`) ON DELETE CASCADE,
  ADD CONSTRAINT `certified_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `aircraft` (`aid`) ON DELETE CASCADE;

--
-- Constraints for table `certified_pilot`
--
ALTER TABLE `certified_pilot`
  ADD CONSTRAINT `certified_pilot_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `employees` (`eid`) ON DELETE CASCADE,
  ADD CONSTRAINT `certified_pilot_ibfk_2` FOREIGN KEY (`no`) REFERENCES `flights` (`no`) ON DELETE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `faculty` (`F_ID`) ON DELETE CASCADE;

--
-- Constraints for table `department1`
--
ALTER TABLE `department1`
  ADD CONSTRAINT `department1_ibfk_1` FOREIGN KEY (`mgr_ssn`) REFERENCES `employee1` (`ssn`);

--
-- Constraints for table `DEPOSITOR`
--
ALTER TABLE `DEPOSITOR`
  ADD CONSTRAINT `DEPOSITOR_ibfk_1` FOREIGN KEY (`C_NAME`) REFERENCES `CUSTOMER` (`C_NAME`) ON DELETE CASCADE,
  ADD CONSTRAINT `DEPOSITOR_ibfk_2` FOREIGN KEY (`ACC_NO`) REFERENCES `ACCOUNT` (`ACC_NO`) ON DELETE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_num`) REFERENCES `department` (`dept_id`) ON DELETE CASCADE;

--
-- Constraints for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD CONSTRAINT `enrolled_ibfk_1` FOREIGN KEY (`S_NUM`) REFERENCES `student` (`S_NUM`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrolled_ibfk_2` FOREIGN KEY (`C_NAME`) REFERENCES `course` (`C_NAME`) ON DELETE CASCADE;

--
-- Constraints for table `LOAN`
--
ALTER TABLE `LOAN`
  ADD CONSTRAINT `LOAN_ibfk_1` FOREIGN KEY (`B_NAME`) REFERENCES `BRANCH` (`B_NAME`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`PersonID`) REFERENCES `persons` (`ID`);

--
-- Constraints for table `owns`
--
ALTER TABLE `owns`
  ADD CONSTRAINT `owns_ibfk_1` FOREIGN KEY (`did`) REFERENCES `person` (`did`),
  ADD CONSTRAINT `owns_ibfk_2` FOREIGN KEY (`regno`) REFERENCES `car` (`regno`);

--
-- Constraints for table `participated`
--
ALTER TABLE `participated`
  ADD CONSTRAINT `participated_ibfk_1` FOREIGN KEY (`did`) REFERENCES `person` (`did`),
  ADD CONSTRAINT `participated_ibfk_2` FOREIGN KEY (`regno`) REFERENCES `car` (`regno`),
  ADD CONSTRAINT `participated_ibfk_3` FOREIGN KEY (`report_no`) REFERENCES `accident` (`report_no`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `department1` (`dno`);

--
-- Constraints for table `works_for`
--
ALTER TABLE `works_for`
  ADD CONSTRAINT `works_for_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `employee1` (`ssn`),
  ADD CONSTRAINT `works_for_ibfk_2` FOREIGN KEY (`dno`) REFERENCES `department1` (`dno`);

--
-- Constraints for table `works_on`
--
ALTER TABLE `works_on`
  ADD CONSTRAINT `works_on_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `employee1` (`ssn`),
  ADD CONSTRAINT `works_on_ibfk_2` FOREIGN KEY (`pno`) REFERENCES `project` (`pno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
