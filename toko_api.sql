-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2021 at 09:00 AM
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
-- Database: `toko_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabel untuk data member';

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `nama`, `email`, `password`) VALUES
(12, 'Ade Suryadi', 'ade@gmail.com', '$2y$10$dciZpolIyJgK6THk0s7HF.ZQDsEpoAFKaE9LQxl4cKL/xK6hEdb0S'),
(13, 'Ade Suryadi', 'ade@gmail.com', '$2y$10$j2JpgPO7hr.JBZ./tXWidewGn9R/bFT6b6quB5QsQVqlpr184aW7S'),
(14, 'Jamal', 'jamal@gmail.com', '$2y$10$m0qebxBhnoIUyrbPhmIZv.WJcpqm30D3F7Gxsphme9yfRB/UH0PdG');

-- --------------------------------------------------------

--
-- Table structure for table `member_token`
--

CREATE TABLE `member_token` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `auth_key` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member_token`
--

INSERT INTO `member_token` (`id`, `member_id`, `auth_key`) VALUES
(1, 12, '0iDDfbTFkgafaihT5Ijfh5TLe2cgcDh0LK2kfcAf7i8F3299eYLTAgL9a2936130AjL31bhL83FK7KLaA3g0ac9gc1Tgf3YI5dT6'),
(2, 12, 'KaAe4dDgaibFbLD468e0LhT567151j1IK50j0dcfd6gh4680jTccKI4Tie02338Y8i5I2jAhK8g39514694hkdkbF6g73Ff1b709'),
(3, 12, 'UdR51y64F6p7UdYBksFAwcrR997Bl4OpsYBA4Id0B5cCcU86UsRa3o6FYsYw7YCUDIIrFpOkBblTCT98bCI5bd4IFD0TFrrc74d'),
(4, 12, '7BYs0A36lF7yDbD9Oo67096OrUdA57l1CpkbD8OpA8Ys2yBs9YTTo0Fo7o2Da3kRC15TspsYR5IF2Y1FAU6o3a9AB8bccDdDsa7'),
(5, 12, 'FOYw8wUT3T7orBUTF2325pa8cr3596A1Ods5dylboCClrDFscIayDcYR9TklOpFpI9w9A8UrAklD7Okd4yalpy4wTFsR70D7Y2w'),
(6, 14, 'py7p7b29Oa4dUkF4s2T8IT4kUyRoBYAakca8wl9lT6aTdY27pF74Ab9so4IlTw3F4UAo7232Bl7A5pk6Ta17k99TU5CB7TpO7Dr');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `kode_produk` varchar(30) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `harga`) VALUES
(3, '123', 'Leptop Aye', 5000000),
(5, 'A111', 'Kulkas', 20000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_token`
--
ALTER TABLE `member_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `member_token`
--
ALTER TABLE `member_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
