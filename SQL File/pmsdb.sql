-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 05:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Nikhil Gurav', 'nikh', 7620357285, 'nikh1292@gmail.com', '7684697f05a27ff68b5ce5717328c654', '2023-03-11 04:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblcart`
--

CREATE TABLE `tblcart` (
  `id` int(11) NOT NULL,
  `PharmacistId` int(11) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `ProductQty` int(11) NOT NULL,
  `IsCheckOut` int(11) DEFAULT NULL,
  `CartDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcart`
--

INSERT INTO `tblcart` (`id`, `PharmacistId`, `ProductId`, `BillingId`, `ProductQty`, `IsCheckOut`, `CartDate`) VALUES
(2, 1, 2, 122562633, 1, 1, '2023-03-10 15:16:57'),
(3, 1, 1, 122562633, 1, 1, '2023-03-10 05:29:28'),
(4, 1, 1, 879665702, 5, 1, '2023-03-10 16:33:51'),
(10, 3, 5, 975434326, 1, 1, '2023-03-15 03:42:03'),
(11, 3, 5, 524351834, 4, 1, '2023-03-15 03:53:19'),
(12, 3, 5, 184014523, 2, 1, '2023-03-16 05:04:15'),
(13, 3, 7, 284530445, 1, 1, '2023-03-16 15:12:15'),
(14, 3, 7, 352383831, 1, 1, '2023-03-16 15:13:11'),
(15, 3, 1, 851837555, 1, 1, '2023-03-16 15:16:10'),
(16, 3, 1, 293227408, -1, 1, '2023-03-16 15:17:20');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `ID` int(10) NOT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`ID`, `CompanyName`, `CreationDate`) VALUES
(1, 'Johnson & Johnson', '2023-03-09 11:04:38'),
(2, 'Novartis', '2023-03-09 11:04:57'),
(3, 'Roche', '2023-03-09 11:06:06'),
(4, 'Pfizer', '2023-03-09 11:06:29'),
(5, 'Sanofi', '2023-03-09 11:06:40'),
(6, 'Merck', '2023-03-09 11:06:52'),
(7, 'GSK (GlaxoSmithKline)', '2023-03-09 11:07:08'),
(8, 'AstraZeneca', '2023-03-09 11:07:21'),
(9, 'Bayer', '2023-03-09 11:07:35'),
(10, 'Gilead Sciences', '2023-03-09 11:11:14'),
(11, 'Cipla', '2023-03-09 11:11:25'),
(12, 'Abbot', '2023-03-09 11:11:36'),
(13, 'Medtronic', '2023-03-09 11:12:14'),
(14, 'test medicine', '2023-03-09 16:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `ID` int(10) NOT NULL,
  `BillingNumber` varchar(120) DEFAULT NULL,
  `CustomerName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `ModeofPayment` varchar(100) DEFAULT NULL,
  `BillingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`ID`, `BillingNumber`, `CustomerName`, `MobileNumber`, `ModeofPayment`, `BillingDate`) VALUES
(1, '111', 'ayush vani', 1234567890, 'cash', '2023-03-11 15:40:02'),
(2, '1111', 'nikhil', 7620357285, 'card', '2023-03-11 16:36:16'),
(3, '12111', 'Shubham', 23232455, 'cash', '2023-03-11 06:13:44'),
(6, '270585538', 'hemant', 7620357285, 'cash', '2023-03-15 03:34:33'),
(7, '319199189', 'nikhil', 7620357285, 'card', '2023-03-15 03:35:20'),
(8, '906094881', 'nitin', 2252525212, 'cash', '2023-03-15 03:40:04'),
(9, '975434326', 'hemant', 7620357285, 'cash', '2023-03-15 03:42:42'),
(10, '524351834', 'nikhil', 7620357285, 'cash', '2023-03-15 03:54:10'),
(11, '184014523', 'hemant', 8888888888, 'cash', '2023-03-16 05:04:58'),
(12, '284530445', 'mmm', 2222, 'cash', '2023-03-16 15:12:31'),
(13, '352383831', 'nikhil', 2252525212, 'cash', '2023-03-16 15:13:47'),
(14, '851837555', 'hemant', 1111111111, 'cash', '2023-03-16 15:16:36'),
(15, '293227408', 'hemant', 7620357285, 'cash', '2023-03-16 15:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicine`
--

CREATE TABLE `tblmedicine` (
  `ID` int(10) NOT NULL,
  `MedicineCompany` varchar(120) DEFAULT NULL,
  `MedicineName` varchar(120) DEFAULT NULL,
  `MedicineBatchno` varchar(120) DEFAULT NULL,
  `MgfDate` varchar(120) DEFAULT NULL,
  `ExpiryDate` varchar(120) DEFAULT NULL,
  `Quantity` varchar(120) DEFAULT NULL,
  `Priceperunit` varchar(120) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicine`
--

INSERT INTO `tblmedicine` (`ID`, `MedicineCompany`, `MedicineName`, `MedicineBatchno`, `MgfDate`, `ExpiryDate`, `Quantity`, `Priceperunit`, `EntryDate`) VALUES
(1, 'Roche', 'Glucerna for diabetic Health Supplement', 'AEE1555', '2023-03-09', '2024-03-09', '25', '145', '2023-03-09 07:18:33'),
(2, 'Abbot', 'Thyroxine Sodium Tablets I.P. Thyronorm(100 mcg)', 'AEE1555', '2023-03-09', '2024-03-09', '100', '125', '2023-03-09 07:21:11'),
(3, 'Cipla', 'Maxirich Multivitamins and Minerals Softgel capsules', 'BEE1555', '2023-03-09', '2025-03-09', '100', '145.78', '2023-03-09 07:23:51'),
(4, 'Sanofi', 'Seven Seas Cod Liver Oil Capsules (100 Cap) ', 'BEE4567', '2023-03-09', '2025-03-09', '35', '125', '2023-03-09 07:26:56'),
(5, 'Bayer', 'Bayer Tonic 250ml', 'CEE12345', '2023-03-09', '2025-03-09', '25', '141', '2023-03-09 05:29:51'),
(6, 'test medicine', 'Test Medicine', '323746723', '2023-03-09', '2025-03-09', '2000', '25', '2023-03-09 16:15:50'),
(7, 'Bayer', 'Bayer Tonic 250ml', 'mh1212', '2023-03-16', '2024-03-16', '50', '20', '2023-03-16 05:11:20'),
(8, 'Roche', 'Tonic 250ml', 'mh1212', '2023-03-12', '2024-03-12', '10', '50', '2023-03-16 05:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblpharmacist`
--

CREATE TABLE `tblpharmacist` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(20) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `Gender` enum('Male','Female') DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `JoingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpharmacist`
--

INSERT INTO `tblpharmacist` (`ID`, `FullName`, `MobileNumber`, `UserName`, `Gender`, `Password`, `Email`, `JoingDate`) VALUES
(1, 'ayush', 7262970448, 'ayush123', 'Male', 'ayush123', 'ayush@gmail.com', '2023-03-11 04:28:51'),
(3, 'nikhil', 3232323232, 'nikhil123', 'Male', '7684697f05a27ff68b5ce5717328c654', 'nikhil@gmail.com', '2023-03-11 04:47:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcart`
--
ALTER TABLE `tblcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BillingNumber` (`BillingNumber`);

--
-- Indexes for table `tblmedicine`
--
ALTER TABLE `tblmedicine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpharmacist`
--
ALTER TABLE `tblpharmacist`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcart`
--
ALTER TABLE `tblcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblmedicine`
--
ALTER TABLE `tblmedicine`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpharmacist`
--
ALTER TABLE `tblpharmacist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
