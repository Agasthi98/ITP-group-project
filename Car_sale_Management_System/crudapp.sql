-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 11:18 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crudapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `addveh`
--

CREATE TABLE `addveh` (
  `ID` int(11) NOT NULL,
  `Brand` varchar(150) NOT NULL,
  `Model` varchar(200) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `ModelYear` varchar(11) NOT NULL,
  `ContactNo` varchar(11) NOT NULL,
  `EngineCapacity` varchar(200) NOT NULL,
  `Availability` varchar(11) NOT NULL,
  `Price` varchar(100) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addveh`
--

INSERT INTO `addveh` (`ID`, `Brand`, `Model`, `Image`, `ModelYear`, `ContactNo`, `EngineCapacity`, `Availability`, `Price`, `Description`) VALUES
(47, 'Land Rover', 'Defender', 'ad-20190603171433-0.jpg', '1996', '0714565485', '3800', 'Available', '15200000', 'Puma version '),
(48, 'Toyota', 'Land cruiser tx', '1 46_g2rOUz1484zSQ3GAPcg.jpeg', '2018', '075462154', '4000', 'Available', '20000000', 'Brand new condition'),
(49, 'Toyota', 'Rocco', 'rocco.jpg', '2017', '0725468754', '3500', 'Available', '125000000', 'Used '),
(50, 'Land Rover', 'Defender 2020', '106119511-1568041202570landrover2.jpg', '2020', '0714565485', '3500', 'Available', '800000000', 'Brand new');

-- --------------------------------------------------------

--
-- Table structure for table `adpay`
--

CREATE TABLE `adpay` (
  `id` int(4) NOT NULL,
  `date` date NOT NULL,
  `category` varchar(45) NOT NULL,
  `fee` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adpay`
--

INSERT INTO `adpay` (`id`, `date`, `category`, `fee`) VALUES
(500, '2020-09-09', 'spare part', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`Email`, `Password`) VALUES
('aa@gmail.com', '[object Promise]'),
('aaa@gmail.com', '[object Promise]'),
('Dananjaya@gmail.com', '1100'),
('Sandaruwan@gmail.com', '1100'),
('sS@gmail.com', '[object Promise]'),
('WW@gmail.com', '[object Promise]');

-- --------------------------------------------------------

--
-- Table structure for table `comvehicles`
--

CREATE TABLE `comvehicles` (
  `id` int(11) NOT NULL,
  `model` varchar(100) NOT NULL,
  `model_year` varchar(100) NOT NULL,
  `mileage` varchar(100) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `fuel_type` varchar(100) NOT NULL,
  `vehi_condition` varchar(100) NOT NULL,
  `engine_capacity` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `availability` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `vehi_image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comvehicles`
--

INSERT INTO `comvehicles` (`id`, `model`, `model_year`, `mileage`, `brand`, `fuel_type`, `vehi_condition`, `engine_capacity`, `color`, `availability`, `price`, `description`, `vehi_image`) VALUES
(35, 'Swift', '2018', '1000km', 'Suzuki', 'Petrol', 'Used', '800cc', 'Red', 'Available', 'Rs.3000000', 'Mint Condition Carefully used', '2018-suzuki-swift.jpg'),
(36, 'Allion', '2012', '30000km', 'Toyota', 'Petrol', 'Used', '1000cc', 'White', 'Available', 'Rs.400000', 'Mint Condition', 'allion.jpg'),
(37, 'M3', '2015', '200000km', 'BMW', 'Petrol', 'Used', '2500cc', 'Blue', 'Available', 'Rs.7000000', 'Sports Model', 'bmw m3.jpg'),
(38, 'Discovery', '2020', '0km', 'Land Rover', 'Diesel', 'Brand New', '2500cc', 'Blue', 'Available', 'Rs.20000000', 'Fully Equiped', 'land rover discrovery.jpg'),
(39, 'i8', '2019', '2000km', 'BMW', 'Electric', 'Used', '2500cc', 'Blue', 'Available', 'Rs.30000000', 'Carefully Used', 'mbwi8.jpg'),
(40, '3', '2020', '0km', 'Mazda', 'Petrol', 'Brand New', '1500cc', 'Red', 'Available', 'Rs.9000000', 'Fully Iquiped', 'mazda3.jpg'),
(41, 'Mustang', '2020', 'okm', 'Ford', 'Petrol', 'Brand New', '3000cc', 'Yellow', 'Available', 'Rs.40000000', 'Sports model with full option', '9e3a1cfb7a471a1ad5904e93ebe8e260.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Message` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Id` int(255) NOT NULL,
  `empid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `NIC` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Id`, `empid`, `username`, `email`, `NIC`, `contactno`, `gender`, `position`, `password`) VALUES
(39, 'sandaruwan123', 'sandaruwan', 'sandaruwan@gmail.com', '9845612374V', '0772958365', 'Male', 'Admin', '$2b$10$T8dBXF9sqhZMx5B4pH9vZ.xdqznximPfYU.emhYJtUuD1DAIQBug2');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `year` varchar(40) NOT NULL,
  `month` varchar(45) NOT NULL,
  `electricty` int(45) NOT NULL,
  `water` int(40) NOT NULL,
  `salary` int(40) NOT NULL,
  `other` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `year`, `month`, `electricty`, `water`, `salary`, `other`) VALUES
(10, '', 'January', 1000, 2000, 200000, 100000),
(11, '', 'February', 1000, 2000, 200000, 300),
(12, '', 'March', 1000, 2000, 3000000, 300),
(13, '2019', 'January', 1000, 2000, 200000, 200),
(16, '2019', 'January', 1000, 2000, 300000, 100000),
(17, '2019', 'February', 2000, 3000, 280000, 100000),
(18, '2019', 'March', 3000, 2000, 325000, 100000),
(19, '2019', 'April', 2500, 2000, 350000, 5000),
(20, '2019', 'May', 4500, 3000, 250000, 6500),
(21, '2019', 'June', 2000, 3000, 325000, 100000),
(22, '2019', 'July', 3000, 1500, 200000, 7500),
(23, '2019', 'August', 3000, 2000, 325000, 5000),
(24, '2019', 'September', 2500, 3000, 300000, 5000),
(25, '2019', 'October', 4000, 3000, 3000000, 100000),
(26, '2019', 'November', 2500, 2000, 200000, 8000),
(27, '2019', 'December', 25000, 2000, 400000, 5000),
(28, '2020', 'January', 1000, 2000, 200000, 5000),
(29, '2020', 'February', 2500, 3000, 300000, 5000),
(30, '2020', 'March', 3000, 1500, 280000, 300),
(31, '2020', 'April', 2000, 3000, 280000, 5000),
(32, '2020', 'May', 2500, 3000, 200000, 300),
(33, '2020', 'June', 2000, 3000, 325000, 5000),
(34, '2020', 'July', 3000, 3000, 280000, 5000),
(35, '2020', 'August', 2000, 2000, 400000, 5000),
(36, '2020', 'September', 2000, 3000, 300000, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `extsellers`
--

CREATE TABLE `extsellers` (
  `item_code` int(11) NOT NULL,
  `item_name` varchar(40) NOT NULL,
  `brand` varchar(40) NOT NULL,
  `model` varchar(20) NOT NULL,
  `s_condition` varchar(40) NOT NULL,
  `availability` varchar(40) NOT NULL,
  `quantity` int(40) NOT NULL,
  `price` int(10) NOT NULL,
  `description` varchar(255) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `location` varchar(40) NOT NULL,
  `ext_s_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extsellers`
--

INSERT INTO `extsellers` (`item_code`, `item_name`, `brand`, `model`, `s_condition`, `availability`, `quantity`, `price`, `description`, `contact_no`, `location`, `ext_s_image`) VALUES
(35, 'tyre', 'CEAT', '19inch', 'New', 'AV', 4, 48500, 'Brand new', 2147483647, 'colombo 03', '61dNRcx0qkL._AC_SX522_.jpg'),
(36, 'seat cover', 'Unbrand', 'Defender 2013', 'Brand new', 'Available', 1, 60000, 'Brand new', 741236548, 'Colombo', '4f1255cf0d1ea0a38d8729e162cc2b8c.jpg_340x340q80.jpg_.webp'),
(37, 'Steering wheel covers', 'Toyota', 'Toyota 124', 'Brand new', 'Available', 2, 16000, 'Price negotioable', 745213654, 'Galle', 'best-car-steering-wheel-covers-6.jpg'),
(38, 'Rear view backup camera', 'Grace', 'Honda', 'Brand new', 'Unavailable', 5, 5600, 'new', 715489654, 'Gampaha', 'ANSHILONG-7-LCD-Mirror-Monitor-Wireless-Car-Reverse-Rear-View-Backup-Camera-Night-Vision.webp'),
(39, 'Headlights', 'Premio', 'Toyota 150', 'Used', 'Available', 1, 25000, 'Price negotiable', 712546897, 'Colombo', 'used-headlights.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(40) NOT NULL,
  `year` year(4) NOT NULL,
  `month` varchar(45) NOT NULL,
  `sales` int(45) NOT NULL,
  `spareparts` int(40) NOT NULL,
  `ads` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `year`, `month`, `sales`, `spareparts`, `ads`) VALUES
(5, 2019, 'March', 4500000, 2250000, 15001),
(6, 2019, 'April', 3780000, 1850000, 125000),
(7, 2019, 'May', 3900000, 3450000, 135000),
(8, 2019, 'June', 3560000, 1850000, 135000),
(9, 2019, 'July', 5500000, 1000000, 56000),
(10, 2019, 'August', 4500000, 2850000, 130000),
(11, 2019, 'May', 2000000, 3450000, 3000000),
(14, 2019, 'January', 2000000, 1850000, 125000),
(15, 2019, 'February', 3000000, 2250000, 50000),
(16, 2019, 'March', 2000000, 2250000, 56000),
(17, 2019, 'April', 3000000, 2850000, 125000),
(18, 2019, 'May', 3000000, 2000000, 15000),
(19, 2019, 'June', 3000000, 3450000, 15000),
(20, 2019, 'July', 4500000, 3450000, 50000),
(21, 2019, 'August', 3000000, 2850000, 125000),
(22, 2019, 'September', 3900000, 2000000, 135000),
(23, 2019, 'October', 3000000, 2000000, 135000),
(24, 2019, 'November', 3780000, 3450000, 50000),
(25, 2019, 'December', 3000000, 2850000, 50000),
(26, 2020, 'January', 4500000, 2250000, 15000),
(27, 2020, 'February', 3900000, 1850000, 56000),
(28, 2020, 'March', 3000000, 2000000, 56000),
(29, 2020, 'April', 3900000, 2250000, 15000),
(30, 2020, 'May', 4500000, 1000000, 56000),
(31, 2020, 'June', 3000000, 2850000, 15000),
(32, 2020, 'July', 3900000, 1850000, 56000),
(33, 2020, 'August', 4000000, 3450000, 120000),
(34, 2020, 'September', 3000000, 2250000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `incomestat`
--

CREATE TABLE `incomestat` (
  `id` int(4) NOT NULL,
  `year` year(4) NOT NULL,
  `income` int(40) NOT NULL,
  `expenses` int(40) NOT NULL,
  `netprofit` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incomestat`
--

INSERT INTO `incomestat` (`id`, `year`, `income`, `expenses`, `netprofit`) VALUES
(2019, 2019, 10000, 4000, 7000),
(2020, 2019, 10000, 2000, 8000),
(2021, 2019, 40000, 10000, 30000),
(2022, 2019, 12345, 12345, 7000),
(2023, 0000, 506200, 51131001, 7000),
(2024, 0000, 3712800, 51131001, 0),
(2025, 0000, 3712800, 51131001, -47418201),
(2026, 0000, 53086001, 3712800, 49373201),
(0, 0000, 54086001, 3712800, 50373200),
(0, 2020, 55420857, 4043229, 51377628),
(2034, 2019, 69361000, 6880500, 62480500);

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `promotion_img` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`promotion_img`, `id`) VALUES
('edit2.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `promotion1`
--

CREATE TABLE `promotion1` (
  `promotion` varchar(255) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion1`
--

INSERT INTO `promotion1` (`promotion`, `Id`) VALUES
('Facebook_B_h264.gif', 17);

-- --------------------------------------------------------

--
-- Table structure for table `promotion2`
--

CREATE TABLE `promotion2` (
  `promotion` varchar(255) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion2`
--

INSERT INTO `promotion2` (`promotion`, `Id`) VALUES
('adwork-gif-set1-00006.gif', 14);

-- --------------------------------------------------------

--
-- Table structure for table `promotion3`
--

CREATE TABLE `promotion3` (
  `promtion` varchar(255) NOT NULL,
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promotion3`
--

INSERT INTO `promotion3` (`promtion`, `Id`) VALUES
('WhatsApp Image 2020-10-20 at 4.44.49 PM.jpeg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `registeredemployee`
--

CREATE TABLE `registeredemployee` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nic` varchar(13) NOT NULL,
  `contactno` int(10) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `position` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(20) NOT NULL,
  `Employee_Name` varchar(20) NOT NULL,
  `Month` varchar(10) NOT NULL,
  `Basic_Salary` varchar(20) NOT NULL,
  `Account_No` varchar(30) NOT NULL,
  `Bank_Name` varchar(40) NOT NULL,
  `Working_Days` int(100) NOT NULL,
  `Post` varchar(20) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `Employee_Name`, `Month`, `Basic_Salary`, `Account_No`, `Bank_Name`, `Working_Days`, `Post`, `Date`) VALUES
(4, 'Helitha', 'January', '290000', '65478921', 'HNB', 20, 'vehicle manager', '2020-10-22'),
(5, 'Vihaga', 'January', '50000', '547821', 'Commercial Bank', 30, 'Spare parts manager', '2020-10-16'),
(6, 'Sankalana G.L.A', 'February', '20000', '17145689', 'Sampath Bank', 20, 'Manager', '2020-10-21'),
(7, 'helitha', 'March', '21413424', '345465675687', 'HNB', 34, 'Manager', '2020-11-04'),
(9, 'madush', 'Octomber', '25000', '154621387', 'HNB', 26, 'Accountant', '2020-10-28');

-- --------------------------------------------------------

--
-- Table structure for table `spareparts`
--

CREATE TABLE `spareparts` (
  `Id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `model` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spareparts`
--

INSERT INTO `spareparts` (`Id`, `photo`, `amount`, `model`, `description`) VALUES
(13, '798-7983831_new-car-spare-parts-isolated-on-white-background.png', '100000', 'Toyota Land cruiser', '   Japan Brake & clutch plat\r\n   \r\n    \r\n   \r\n    \r\n   \r\n    \r\n   \r\n    \r\n   \r\n    '),
(14, '9-Piece-Set-Car-Seat-Covers-5-Seats-Multicolor-Sponge-Bird-Eye-Cloth-Car-Seat-Protection.jpg', '245000', 'Defender', '   High quality seat sets\r\n   \r\n    '),
(15, '61dNRcx0qkL._AC_SX522_.jpg', '560000', '  4 Tyre ', '19 inch\r\n   \r\n    \r\n   \r\n    '),
(16, 'engine-car-honda-spare-part-aftermarket-png-favpng-qDEQFvgF82Ky73iAnD4bFLGZZ.jpg', '605000', 'Honda', 'Valtnetor engine-car Motor\r\n   \r\n    \r\n   \r\n    \r\n   \r\n    '),
(19, '2746.png', '800000', 'Piston', '   Brand new piston 3000cc\r\n   \r\n    \r\n   \r\n    \r\n   \r\n    '),
(20, 'edit 3.jpg', '', '', ''),
(21, 'Untitled-1.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `spare_part_db`
--

CREATE TABLE `spare_part_db` (
  `item_code` int(50) NOT NULL,
  `item_name` varchar(80) NOT NULL,
  `price` double NOT NULL,
  `brand_model` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `availability` varchar(50) NOT NULL,
  `description` varchar(300) NOT NULL,
  `photo` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `spare_part_db`
--

INSERT INTO `spare_part_db` (`item_code`, `item_name`, `price`, `brand_model`, `quantity`, `availability`, `description`, `photo`) VALUES
(1250, 'Grace', 58000, '25LNM6', 60, 'Available', '   Brand new\r\n   \r\n    ', 'engine-car-honda-spare-part-aftermarket-png-favpng-qDEQFvgF82Ky73iAnD4bFLGZZ.jpg'),
(1255, 'Land Rover Front and Rear Wheel ', 150000, 'land rover', 4, 'Available', 'Brand new', 'Land Rover Defender 110 (2020-Present) Front and Rear Wheel Arches.jpg'),
(1256, 'Genuine GM Control 22807237', 50000, 'Gm 22807237', 1, 'Available', 'barnd new', 'Genuine GM Control 22807237.jpg'),
(1257, 'BMW  Passenger Side LH rear tail light lamp', 65000, '116d 1 Series F20', 4, 'Available', 'used', 'BMW 116d 1 Series F20 Passenger Side LH rear tail light lamp lens assembly.jpg'),
(1258, 'Audi Q5 VENTED FOOT PEDALS', 13500, 'Audi', 5, 'Available', 'Brand new', 'Audi Q5 (2008-2016) VENTED FOOT PEDALS IN MACHINED ALUMINIUM.jpg'),
(1259, 'Range rover  alloy wheel', 400000, 'Land rover', 4, 'Available', 'Brand new', 'Range rover lwb auto bio 2019 alloy wheel.jpg'),
(1260, 'GM Electronic Brake Control Module', 230000, 'GM 0653421', 2, 'Available', 'Brand new ', 'GM Electronic Brake Control Module Assembly OEM ABS Pump ECU Opel Omega B Bosch.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `NIC` varchar(255) NOT NULL,
  `contactno` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `username`, `email`, `NIC`, `contactno`, `gender`, `position`, `password`) VALUES
(4, 'ushini', 'ushini@gmail.com', '9875632891V', '0711644977', 'female', 'Vehicle', '$2b$10$7BtqP9SesF.EgYICp.DtaOxt8IOnfufuHNedD/Vt19/V/B44cAEaO'),
(5, 'Nipuni', 'nipuni@gmail.com', '9846532174V', '07725896325', 'Female', 'Spare_parts', '$2b$10$28GA.r5kD.AERIlOU0KGwOEfbODrj429/qjvArGZBsKOx0QjLheXW');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `Id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`Id`, `photo`, `amount`, `model`, `description`) VALUES
(8, 'toyota_premio_customer_2.jpg', '2000000', 'Axio', '         2012 Mint condition\r\n   \r\n    \r\n   \r\n    \r\n   \r\n    '),
(9, 'unnamed (1).jpg', '10000000000000004', 'Premio', '      2013 Premio \r\n   \r\n    \r\n   \r\n    '),
(10, 'toyota-aqua-2017-for-sale-in-ebuldeniya-sri-lanka-efindlk-15601791116829.jpg', '3490000', 'Aqua 2016', 'Special Edition Full body kit'),
(12, 'unnamed.jpg', '23500000', 'Crown 2016', 'Luxary Royal '),
(14, 'unnamed.jpg', '1890000', 'Crown', '   Royal Crown 2015\r\n   \r\n    '),
(15, 'toyota_premio_customer_2.jpg', '3985400', 'Axio 2011', 'Axio 2011 Mint condition'),
(16, 'unnamed (1).jpg', '6000000', 'Permio 2015', 'unregister 2015 [permit]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addveh`
--
ALTER TABLE `addveh`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `comvehicles`
--
ALTER TABLE `comvehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `extsellers`
--
ALTER TABLE `extsellers`
  ADD PRIMARY KEY (`item_code`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotion1`
--
ALTER TABLE `promotion1`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `promotion2`
--
ALTER TABLE `promotion2`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `promotion3`
--
ALTER TABLE `promotion3`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `registeredemployee`
--
ALTER TABLE `registeredemployee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spareparts`
--
ALTER TABLE `spareparts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `spare_part_db`
--
ALTER TABLE `spare_part_db`
  ADD PRIMARY KEY (`item_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addveh`
--
ALTER TABLE `addveh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `comvehicles`
--
ALTER TABLE `comvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `extsellers`
--
ALTER TABLE `extsellers`
  MODIFY `item_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `promotion1`
--
ALTER TABLE `promotion1`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `promotion2`
--
ALTER TABLE `promotion2`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `promotion3`
--
ALTER TABLE `promotion3`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registeredemployee`
--
ALTER TABLE `registeredemployee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `spareparts`
--
ALTER TABLE `spareparts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `spare_part_db`
--
ALTER TABLE `spare_part_db`
  MODIFY `item_code` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1261;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
