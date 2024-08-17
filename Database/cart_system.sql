-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2024 at 05:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `total_price` varchar(100) NOT NULL,
  `product_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `pmode` varchar(50) NOT NULL,
  `products` varchar(255) NOT NULL,
  `amount_paid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_qty` int(11) NOT NULL DEFAULT 1,
  `product_image` varchar(255) NOT NULL,
  `product_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `product_qty`, `product_image`, `product_code`) VALUES
(1, 'AWEI T29 True TWS Wireless Earbuds', '1250', 1, 'image/AWEI_T29_True_TWS_Wireless_Earbuds.webp', 'Aw100'),
(2, 'COLMI P28 Plus Calling Smart_Watch', '1750', 1, 'image/COLMI_P28_Plus_Calling_Smart_Watch _Black_Color.jpg', 'col100'),
(3, 'JBL GO 2 Portable Bluetooth Speaker', '3050', 1, 'image/JBL_GO_2 Portable_Bluetooth_Speaker_Red_Color.jpeg', 'jb100'),
(4, 'TP Link_Archer C20 AC750 Router', '2100', 1, 'image/TP_Link_Archer__C20_AC750_Dual_Band_Router.jpeg', 'tp100'),
(5, 'Cudy-M3000-AX3000-2.5G-Wi-Fi', '10000', 1, 'image/Cudy-M3000-AX3000-2.5G-Dual-Band-Wi-Fi-6-Mesh-Router-2-Pack-990x1280.jpeg', 'cu100'),
(6, 'T900_Ultra_Smartwatch 49mm display', '999', 1, 'image/T900_Ultra_Smartwatch_Orange_Color.jpg', 't100'),
(7, 'Hoco-W35-Max-Silver-streoDrive', '1100', 1, 'image/Hoco-W35-Max-Silver-990x990.webp', 'ho100'),
(8, 'Havit m3 Digital Desk Watch ', '1200', 1, 'image/hv-m3-010-500x500-1.jpg', 'h100'),
(9, 'Kemei-KM-5017- Hair Trimmer', '1500', 1, 'image/Kemei-KM-5017-Hair-Trimmer.webp', 'kme100'),
(10, 'Fantech Go W606 Wireless Mouse', '1800', 1, 'image/Fantech-Go-W606-Wireless-Mouse-Blue-990x990.webp', 'fan100'),
(11, 'Boya mm1 plus Sonic microphone', '2300', 1, 'image/boya-mm1-plus-super-cardioid-shotgun-microphone-.png', 'boya100'),
(12, 'Havit-SQ11T BT PortableSpeaker', '5700', 1, 'image/Havit-SQ116BT-Bluetooth-Portable-Trolley-Speaker-with-Mic-990x990.webp', 'hv1500'),
(13, 'GEEPAS GSB44089 Mixer-Grinder', '6500', 1, 'image/GEEPAS-GSB44089-3-In-1-Mixer-Grinder.webp', 'gee100'),
(14, 'ulanzi mt11 vlogpot vlogging stand', '1200', 1, 'image/ulanzi-mt11.bdshop.2.jpg', 'ula100'),
(15, 'Kiam BL002', '1550', 1, 'image/Kiam.jpeg', 'k120');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code_2` (`product_code`),
  ADD KEY `product_code` (`product_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
