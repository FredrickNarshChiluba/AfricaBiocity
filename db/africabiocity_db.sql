-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 02:30 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `africabiocity_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_about`
--

CREATE TABLE `add_about` (
  `id` int(11) NOT NULL,
  `about_content` text NOT NULL,
  `updatedat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_about`
--

INSERT INTO `add_about` (`id`, `about_content`, `updatedat`) VALUES
(4, 'Submit About', '2022-01-18 02:44:32'),
(5, 'about content', '2022-01-18 02:46:15'),
(6, 'About details of africabocity goes here. \r\nModules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and virtual project management and collaboration tools with respect to Covid 19 Safe Operating Procedures(SOPs).', '2022-01-18 03:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `add_catalogue`
--

CREATE TABLE `add_catalogue` (
  `id` int(11) NOT NULL,
  `catalogueType` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `catdescription` text NOT NULL,
  `updatedat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_catalogue`
--

INSERT INTO `add_catalogue` (`id`, `catalogueType`, `image`, `catdescription`, `updatedat`) VALUES
(2, 'Bacterial Isolate Storage Material', 'header-bg3.jpg', 'Catalogue image description', '2022-01-18 03:19:23'),
(3, 'Sample Processing-Culture media', 'header-bg2.jpg', 'Surgical solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:13:40'),
(4, 'Bacterial Identification-Convectional Method', 'header-bg1.jpg', 'Surgical solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:13:58'),
(5, 'Sample/Isolate Transportation Materials', 'header-bg.jpg', 'Surgical solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `add_contact`
--

CREATE TABLE `add_contact` (
  `id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `boxNumber` varchar(200) NOT NULL,
  `updatedat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_contact`
--

INSERT INTO `add_contact` (`id`, `location`, `boxNumber`, `updatedat`) VALUES
(4, 'Wandegeya', 'P.O. Box 7608', '2022-01-18 01:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `add_media`
--

CREATE TABLE `add_media` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `mediadescription` text NOT NULL,
  `updatedat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_media`
--

INSERT INTO `add_media` (`id`, `image`, `mediadescription`, `updatedat`) VALUES
(1, 'header-bg.jpg', 'header-bg.jpg is the description', '2022-01-18 01:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `add_product`
--

CREATE TABLE `add_product` (
  `id` int(11) NOT NULL,
  `productType` varchar(100) NOT NULL,
  `pdescription` text NOT NULL,
  `updatedat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_product`
--

INSERT INTO `add_product` (`id`, `productType`, `pdescription`, `updatedat`) VALUES
(5, 'Labolatory', 'This is the feature of the product. This is the feature of the product. This is the feature of the product. This is the feature of the product', '2022-01-18 02:09:37'),
(6, 'Basic Medical Equipment', 'Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and virtual project management and collaboration tools', '2022-01-18 02:15:39'),
(8, 'Surgical Solutions', 'Surgical solution description\r\nModules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and ', '2022-01-18 04:06:19'),
(9, 'Dental Solutions', 'Dental solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:08:24'),
(10, 'Gas Solutions', 'Gas solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:08:56'),
(11, 'ICU/HDU Solutions', 'ICU/IDU solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:09:30'),
(12, 'Infant and Maternal Solutions', 'Infant and marternal solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:09:58'),
(13, 'Refrigeration', 'Refrigeration solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:10:17'),
(14, 'Renal Solution', 'Renal solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `add_service`
--

CREATE TABLE `add_service` (
  `id` int(11) NOT NULL,
  `serviceType` varchar(100) NOT NULL,
  `sdescription` text NOT NULL,
  `updatedat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_service`
--

INSERT INTO `add_service` (`id`, `serviceType`, `sdescription`, `updatedat`) VALUES
(3, 'Public health program management', 'Surgical solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:12:01'),
(4, 'Health sector consultancies', 'Surgical solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:12:09'),
(5, 'Setting up laboratory system/service', 'Surgical solution description Modules shall be grouped aligning with skills needed for a particular job.Their delivery shall be on virtual conferencing platforms like Zoom, Google meet and', '2022-01-18 04:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `passwrd` varchar(100) NOT NULL,
  `updatedat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `username`, `passwrd`, `updatedat`) VALUES
(1, 'admin@africabiocity.org', '25d55ad283aa400af464c76d713c07ad', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_about`
--
ALTER TABLE `add_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_catalogue`
--
ALTER TABLE `add_catalogue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_contact`
--
ALTER TABLE `add_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_media`
--
ALTER TABLE `add_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_product`
--
ALTER TABLE `add_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_service`
--
ALTER TABLE `add_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_about`
--
ALTER TABLE `add_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `add_catalogue`
--
ALTER TABLE `add_catalogue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `add_contact`
--
ALTER TABLE `add_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_media`
--
ALTER TABLE `add_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `add_product`
--
ALTER TABLE `add_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `add_service`
--
ALTER TABLE `add_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
