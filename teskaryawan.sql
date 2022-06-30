-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 09:04 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `teskaryawan`
--

CREATE TABLE `teskaryawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `check_in` time NOT NULL,
  `check_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teskaryawan`
--

INSERT INTO `teskaryawan` (`id`, `nama`, `jabatan`, `check_in`, `check_out`) VALUES
(1, 'Asep', 'Bos', '09:00:00', '17:00:00'),
(2, 'Agung', 'Pegawai', '09:00:00', '18:00:00'),
(3, 'Fikri', 'Pegawai', '09:00:00', '19:00:00'),
(4, 'Udin', 'Pegawai', '09:00:00', '20:00:00'),
(5, 'Irsyad', 'Pegawai', '09:00:00', '17:00:00'),
(6, 'Andre', 'Sekertaris', '09:00:00', '17:00:00'),
(7, 'Gunawan', 'Pegawai', '09:00:00', '21:00:00'),
(8, 'Deni', 'Pegawai', '09:00:00', '20:00:00'),
(9, 'Dina', 'Pegawai', '09:00:00', '17:00:00'),
(10, 'Jul', 'Bendahara', '09:00:00', '18:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teskaryawan`
--
ALTER TABLE `teskaryawan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teskaryawan`
--
ALTER TABLE `teskaryawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
