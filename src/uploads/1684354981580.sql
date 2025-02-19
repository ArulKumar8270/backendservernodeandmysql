-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 08:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kavalar`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_users`
--

CREATE TABLE `company_users` (
  `id` int(11) NOT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `contractName` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `panNo` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company_users`
--

INSERT INTO `company_users` (`id`, `companyName`, `contractName`, `phoneNo`, `EmailId`, `panNo`, `userName`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'ioss', 'efds', '34645645', 'ioss@gmdi..com', 'ewtrwt', 'ioss', '12345', '2023-04-12 15:55:30', '2023-04-12 15:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `job_fairs`
--

CREATE TABLE `job_fairs` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `empName` varchar(255) DEFAULT NULL,
  `relEmp` varchar(255) DEFAULT NULL,
  `empStatus` varchar(255) DEFAULT NULL,
  `policePersonnel` varchar(255) DEFAULT NULL,
  `spouseCertificate` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ranks` varchar(255) DEFAULT NULL,
  `gpfcpsNumber` varchar(255) DEFAULT NULL,
  `ploliceGradeNnumber` varchar(255) DEFAULT NULL,
  `stationUnit` varchar(255) DEFAULT NULL,
  `workingDistrict` varchar(255) DEFAULT NULL,
  `policeMobilePhone` varchar(255) DEFAULT NULL,
  `CandidateNname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `dobDate` date DEFAULT NULL,
  `email1` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `CityDistrict` varchar(255) DEFAULT NULL,
  `state1` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `aadharNumber` varchar(255) DEFAULT NULL,
  `myCheckboxes` varchar(255) DEFAULT NULL,
  `perference1` varchar(255) DEFAULT NULL,
  `preference2` varchar(255) DEFAULT NULL,
  `preference3` varchar(255) DEFAULT NULL,
  `otherPreferred` varchar(255) DEFAULT NULL,
  `workPreference1` varchar(255) DEFAULT NULL,
  `workPreference2` varchar(255) DEFAULT NULL,
  `workPreference3` varchar(255) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `candPhoto` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `Qualification` varchar(255) DEFAULT NULL,
  `studied` varchar(255) DEFAULT NULL,
  `Board` varchar(255) DEFAULT NULL,
  `pass10` date DEFAULT NULL,
  `Percentage` varchar(255) DEFAULT NULL,
  `Board12` varchar(255) DEFAULT NULL,
  `Passing` date DEFAULT NULL,
  `Percentage12` varchar(255) DEFAULT NULL,
  `course` varchar(255) DEFAULT NULL,
  `Passingiti` date DEFAULT NULL,
  `Percentageiti` varchar(255) DEFAULT NULL,
  `courseDip` varchar(255) DEFAULT NULL,
  `PassingDip` date DEFAULT NULL,
  `PercentageDip` varchar(255) DEFAULT NULL,
  `GraduationDg` varchar(255) DEFAULT NULL,
  `Institute` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Passinghigi` date DEFAULT NULL,
  `Percentagehigi` varchar(255) DEFAULT NULL,
  `Degreename` varchar(255) DEFAULT NULL,
  `University` varchar(255) DEFAULT NULL,
  `MajorSubject` varchar(255) DEFAULT NULL,
  `passedYear` date DEFAULT NULL,
  `Percentageunder` varchar(255) DEFAULT NULL,
  `Universityphd` varchar(255) DEFAULT NULL,
  `Subjectphd` varchar(255) DEFAULT NULL,
  `Passingphd` varchar(255) DEFAULT NULL,
  `Percentagephd` varchar(255) DEFAULT NULL,
  `Pursuing` varchar(255) DEFAULT NULL,
  `Employment` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `CompanyName` varchar(255) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `Workingplz` varchar(255) DEFAULT NULL,
  `fromDate` date DEFAULT NULL,
  `toDate` date DEFAULT NULL,
  `companyDet` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` int(11) NOT NULL,
  `jobPost` varchar(255) DEFAULT NULL,
  `jobTitle` varchar(255) DEFAULT NULL,
  `jobLocation` varchar(255) DEFAULT NULL,
  `fromSalary` varchar(255) DEFAULT NULL,
  `toSalary` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `timings` varchar(255) DEFAULT NULL,
  `inteview` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `contractName` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `panNo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `emailId` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `retired_users`
--

CREATE TABLE `retired_users` (
  `id` int(11) NOT NULL,
  `ppoNo` varchar(255) NOT NULL,
  `aadhaarNo` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serveing_users`
--

CREATE TABLE `serveing_users` (
  `id` int(11) NOT NULL,
  `gpfcpsNo` varchar(255) NOT NULL,
  `ifhrmsNo` varchar(255) NOT NULL,
  `aadhaarNo` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `son_registers`
--

CREATE TABLE `son_registers` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `mobileNo` varchar(255) NOT NULL,
  `emailId` varchar(255) NOT NULL,
  `aadhaarNo` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `conPassword` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `son_registers`
--

INSERT INTO `son_registers` (`id`, `fullName`, `mobileNo`, `emailId`, `aadhaarNo`, `userName`, `password`, `conPassword`, `createdAt`, `updatedAt`) VALUES
(1, 'testson', '87923434', 'test@wwe.com', '42352345', 'testson', 'testson', 'testson', '2023-04-12 15:42:25', '2023-04-12 15:42:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_registers`
--

CREATE TABLE `user_registers` (
  `id` int(11) NOT NULL,
  `empName` varchar(255) DEFAULT NULL,
  `empStatus` varchar(255) DEFAULT NULL,
  `gpfcpd` varchar(255) DEFAULT NULL,
  `ppocps` varchar(255) DEFAULT NULL,
  `rand` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `District` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `doe` varchar(255) DEFAULT NULL,
  `dopr` varchar(255) DEFAULT NULL,
  `dod` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `mobileNo` varchar(255) DEFAULT NULL,
  `gno` varchar(255) DEFAULT NULL,
  `policePersonnel` varchar(255) DEFAULT NULL,
  `familyMember` varchar(255) DEFAULT NULL,
  `familystatusList` varchar(255) DEFAULT NULL,
  `unitName` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registers`
--

INSERT INTO `user_registers` (`id`, `empName`, `empStatus`, `gpfcpd`, `ppocps`, `rand`, `department`, `District`, `dob`, `doe`, `dopr`, `dod`, `gender`, `mobileNo`, `gno`, `policePersonnel`, `familyMember`, `familystatusList`, `unitName`, `userName`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'Test1', 'Serving Personnel', '123456', '', 'Assistant Commandant', 'test', 'Nagapattinam', '2023-04-14', '2023-04-14', '', '', 'Male', '8793245234', '43245', 'Police Personnel', 'dasfd', 'Brother', 'test', 'Test1', 'Test1', '2023-04-12 15:41:29', '2023-04-12 15:41:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_users`
--
ALTER TABLE `company_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_fairs`
--
ALTER TABLE `job_fairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retired_users`
--
ALTER TABLE `retired_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serveing_users`
--
ALTER TABLE `serveing_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `son_registers`
--
ALTER TABLE `son_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registers`
--
ALTER TABLE `user_registers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_users`
--
ALTER TABLE `company_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_fairs`
--
ALTER TABLE `job_fairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `retired_users`
--
ALTER TABLE `retired_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `serveing_users`
--
ALTER TABLE `serveing_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `son_registers`
--
ALTER TABLE `son_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_registers`
--
ALTER TABLE `user_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
