-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 06:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perusahaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `datadivisi`
--

CREATE TABLE `datadivisi` (
  `id_divisi` int(8) NOT NULL,
  `namadivisi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datadivisi`
--

INSERT INTO `datadivisi` (`id_divisi`, `namadivisi`) VALUES
(101, 'Kepala Perusahaan'),
(102, 'Staff Perusahaan'),
(103, 'Karyawan Perusahaan');

-- --------------------------------------------------------

--
-- Table structure for table `datakaryawan`
--

CREATE TABLE `datakaryawan` (
  `nip` int(8) NOT NULL,
  `nama` text NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `id_divisi` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `datakaryawan`
--

INSERT INTO `datakaryawan` (`nip`, `nama`, `alamat`, `id_divisi`) VALUES
(11111111, 'ken', 'Bekasi Selatan', 103);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datadivisi`
--
ALTER TABLE `datadivisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `datakaryawan`
--
ALTER TABLE `datakaryawan`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `id_divisi` (`id_divisi`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datakaryawan`
--
ALTER TABLE `datakaryawan`
  ADD CONSTRAINT `divison` FOREIGN KEY (`id_divisi`) REFERENCES `datadivisi` (`id_divisi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
