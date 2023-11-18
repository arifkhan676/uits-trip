-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2023 at 07:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2020-07-08 06:38:36', 2, 'u', '2020-07-08 06:53:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 06:43:25', 1, NULL, '2020-07-08 06:52:44'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 06:44:39', 2, 'a', '2020-07-08 06:49:55'),
(4, 8, 'arifulh5500@gmail.com', '2023-11-15', '2023-11-16', 'we will come', '2023-11-14 08:37:46', 2, 'a', '2023-11-14 08:40:30'),
(5, 8, 'arifulh5500@gmail.com', '2023-11-20', '2023-11-15', 'we will come this date', '2023-11-14 08:38:17', 1, NULL, '2023-11-14 08:40:11'),
(6, 10, 'mizan5500@gmail.com', '2023-11-16', '2023-11-16', 'we will come this date', '2023-11-18 17:47:23', 1, NULL, '2023-11-18 17:49:12'),
(7, 12, 'arif55@gmail.com', '2023-11-18', '2023-11-21', 'see you then', '2023-11-18 18:01:03', 2, 'a', '2023-11-18 18:02:21'),
(8, 13, 'arif55@gmail.com', '2023-11-23', '2023-11-30', 'We are 20 people', '2023-11-18 18:01:40', 1, NULL, '2023-11-18 18:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Mizan', 'Mizan5500@gmail.com', '4646464646', 'Rangamati trip enquiry', 'what about picnic?', '2020-07-08 06:30:32', 1),
(2, 'Arif', 'ariful5500@gmail.com', '6797947987', 'Curious', 'Do you have Ladakh trip?', '2020-07-08 06:31:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 06:36:03', 'Ok, We will fix the issue asap', '2020-07-08 06:55:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 06:56:29', NULL, NULL),
(8, NULL, NULL, NULL, '2023-11-14 08:36:55', NULL, NULL),
(9, 'arifulh5500@gmail.com', 'Cancellation', 'i want to cancel my booking', '2023-11-14 08:39:14', 'Okay see you at the time', '2023-11-14 08:40:51'),
(10, NULL, NULL, NULL, '2023-11-18 17:44:56', NULL, NULL),
(11, 'mizan5500@gmail.com', 'Booking Issues', 'need 2 more tickets', '2023-11-18 17:55:35', 'Okay you will get', '2023-11-18 17:57:06'),
(12, NULL, NULL, NULL, '2023-11-18 18:00:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																				<p align=\"justify\"><font size=\"2\"><strong><br>Here are the rules terms and conditions.</strong></font></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">What will you Secure?</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Clear-cut payment terms and cancellation policies.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Explicit liability and responsibility delineations for bookings.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Well-defined protocols for refunds, chargebacks, adjustments, and no-shows.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Detailed insights on rates and inclusions to uphold client preparedness.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">A precise language compliant with key sellers of travel states, ensuring legality and conformity across borders.</span></p><p align=\"justify\"><br></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Key Components:</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Responsibilities and Liabilities: Unveil the roles and obligations of every party involved: the agency, supplier, and customer.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Force Majeure Clause: A shield against the unpredictable and uncontrollable events disrupting travel plans.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Limitations of Liability: An armor to guard against consequential damages, aligning client expectations right from the start.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Arbitration and Jurisdiction: The compass guiding legal compliance across all states, tailored with expert precision.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Strive for Transparency and Trust! Don’t let the absence of solid terms and conditions be a roadblock to legal recourse in service discrepancies or abrupt cancellations. Erect a fortress of legal clarity around your agency, ensuring every party is on the same wavelength throughout the journey.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Invest in Harmony and Clarity! This isn’t a mere procedural step, it’s your gateway to seamless operations and enduring client relationships. So, take the leap! Root your agency in legality and clarity.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Join TIS now to fortify your travel agency with our Client Booking Terms and Conditions. Steer clear of ambiguities, protect your venture, and sail smoothly towards unparalleled client satisfaction and business success!</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Unlock Your Secure Path Now! Enlist Expert Protection for Your Travel Agency Today!</span></p><p align=\"justify\"><font size=\"2\"><strong></strong><br></font></p>\r\n										\r\n										'),
(2, 'privacy', '										<p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">What will you Secure?</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\"><br></span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Clear-cut payment terms and cancellation policies.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Explicit liability and responsibility delineations for bookings.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Well-defined protocols for refunds, chargebacks, adjustments, and no-shows.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">Detailed insights on rates and inclusions to uphold client preparedness.</span></p><p align=\"justify\"><span style=\"font-size: small; font-weight: 700;\">A precise language compliant with key sellers of travel states, ensuring legality and conformity across borders.</span></p><p align=\"justify\"><br></p>\r\n										'),
(3, 'aboutus', '										<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to UITS Trip with Computer Club!!!</span><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">UITS&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; font-weight: 700;\">Computer&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Club put in countless hours of hard work, dedication and teamwork, and it has all paid off. Our team\'s relentless dedication to the success of this tour makes us really proud. We appreciate all of the people that helped us along the journey.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;courier new&quot;; font-size: 15px;\">Special thanks to Computer Club, who played a key role in the UITS trip journey.</span></div></div>'),
(11, 'contact', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Holding 190, Road 5, Block J, Baridhara, Maddha Nayanagar, Vatara, Dhaka, Bangladesh</span><br></div><div style=\"text-align: justify;\"><br></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(6, 'Sikkim Trip with US', 'Group (30)', 'Sikkim', 11500, 'Whole trip cost, except personal cost', 'Train Ticket, Hotel, Rides, Lunch, Dinner, so on', 'download (2).jpg', '2020-07-08 05:51:26', NULL),
(10, 'Rangamati Trip ', 'Group Package ( Approx 10-100)', 'Rangamati', 1500, '2days, 1 night. Bus Ticket, Hotel , Boat', 'With 2days, 1 night. Bus Ticket, Hotel , Boat', 'Rangamati.jpg', '2023-11-17 19:02:55', NULL),
(11, 'Sylhet jaflong', 'Group Package ( Approx 10-30)', 'Sylhet', 2000, '2days, 1 night. Bus Ticket, Hotel , Boat', '2days, 1 night. Bus Ticket, Hotel , Boat', 'jaflong.jpg', '2023-11-18 06:38:02', NULL),
(12, 'Sajek, Rangamati ', 'Group Package ( Approx 10-50)', 'Rangamati', 3000, '2days, 1 night. Bus Ticket, Hotel , Chader Gari, Lunch, Dinner', '2days, 1 night. Bus Ticket, Hotel , Chader Gari, Lunch, Dinner', 'Sajek.jpg', '2023-11-18 06:39:53', NULL),
(13, 'Saint Martin island ', 'Group Package ( Approx 10-70)', 'Saint Martin island ', 4000, '2days, 1 night. Bus Ticket, Hotel , Launch  , Lunch, Dinner', '2days, 1 night. Bus Ticket, Hotel , Launch  , Lunch, Dinner', 'saint.jpg', '2023-11-18 06:41:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(8, 'Md Ariful Hasanul', '1811225515', 'arifulh5500@gmail.com', '7699340ec2432d628ec2be635654a004', '2023-11-14 08:36:55', NULL),
(9, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2023-11-14 08:39:14', NULL),
(10, 'Mizan', '0171144771', 'mizan5500@gmail.com', 'e912b479c758ce0c2956ca27b281493f', '2023-11-18 17:44:56', NULL),
(11, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2023-11-18 17:55:35', NULL),
(12, 'arif khan', '0167878172', 'arif55@gmail.com', 'd256a8c043e0e9a8614d076312cb804d', '2023-11-18 18:00:13', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
