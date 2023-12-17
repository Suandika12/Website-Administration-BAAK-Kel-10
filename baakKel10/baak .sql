-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 10:32 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baak`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_ruangan`
--

CREATE TABLE `booking_ruangan` (
  `id` int(11) NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `waktu_booking` datetime NOT NULL,
  `end_booking` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_ruangan`
--

INSERT INTO `booking_ruangan` (`id`, `id_ruangan`, `id_mahasiswa`, `status`, `waktu_booking`, `end_booking`) VALUES
(1, 3, 13, 'Denied', '2023-12-14 19:25:09', '2023-12-14 19:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `ijin_bermalam`
--

CREATE TABLE `ijin_bermalam` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `waktu_berangkat` varchar(255) NOT NULL,
  `waktu_kembali` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ijin_bermalam`
--

INSERT INTO `ijin_bermalam` (`id`, `id_mahasiswa`, `keperluan`, `waktu_berangkat`, `waktu_kembali`, `status`) VALUES
(2, 13, 'Pengajuan BErq23123', '2023-12-13 08:27:05', '2023-12-13 08:27:05', 'Denied');

-- --------------------------------------------------------

--
-- Table structure for table `ijin_keluar`
--

CREATE TABLE `ijin_keluar` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `waktu_berangkat` datetime NOT NULL,
  `waktu_kembali` datetime NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ijin_keluar`
--

INSERT INTO `ijin_keluar` (`id`, `id_mahasiswa`, `keperluan`, `waktu_berangkat`, `waktu_kembali`, `status`) VALUES
(2, 13, 'Pengajuan BErq23123', '2023-12-13 08:26:42', '2023-12-13 08:26:42', 'Pending'),
(3, 17, 'Pengajuan BErq23123', '2023-12-13 04:23:12', '2023-12-13 04:23:12', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `akun_pengirim` varchar(255) NOT NULL,
  `jenis_pembayaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_mahasiswa`, `id_produk`, `total`, `akun_pengirim`, `jenis_pembayaran`) VALUES
(1, 13, 18, '70.0000', '08123123', 'DANA'),
(2, 15, 20, '700000', 'SUandika', 'DANA'),
(3, 13, 18, '70.0000', '08123123', 'DANA');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `ukuran` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga`, `ukuran`) VALUES
(18, 'Kaos Del', '70000', 'S'),
(20, 'Kaos Del', '70000', 'M'),
(21, 'Kaos Del', '170000', 'S'),
(22, 'Kaos Del', '170000', 'S'),
(23, 'Kaos Del', '70000', 'XXL'),
(24, 'Topi Del', '170000', 'S');

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(225) NOT NULL,
  `status` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ruangan`
--

INSERT INTO `ruangan` (`id`, `nama_ruangan`, `status`) VALUES
(3, 'GD 512', 'Tersedia'),
(4, 'GD 518', 'Tersedia'),
(5, 'GD 723', 'Tersedia'),
(6, 'GD 712', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `keperluan` varchar(255) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id`, `id_mahasiswa`, `keperluan`, `deskripsi`, `status`) VALUES
(8, 13, 'TA', 'Surat identitas kampus untuk meminta data objek wisata', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `noktp` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `nohp` varchar(255) NOT NULL,
  `nim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `roles`, `noktp`, `namalengkap`, `nohp`, `nim`) VALUES
(1, 'admin', '123', 'admin', '121414', 'ra', '1515', '12130123423123'),
(13, 'marko', '123', 'mahasiswa', '112104312131', 'Suandika Napitupulu', '089506304965', '11321043'),
(15, 'marko12', '1234', 'mahasiswa', '112104312133', 'Suandika Napitupu', '089506304965', '113210421'),
(16, 'suandikanapitupulu08@gmail.com', '123', 'mahasiswa', '112104312133', 'Suandika Napitupu', '089506304965', '11321049'),
(17, 'tester@gmail.com', '123', 'mahasiswa', '112104312131', 'Suandika', '089506304965', '11321043'),
(18, 'marko1', '1234', 'mahasiswa', '112104312131', 'Suandika Napitupulu', '089506304965', ''),
(19, 'marko1', 'admin', 'mahasiswa', '112104312131', 'Suandika Napitupulu', '089506304965', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_ruangan`
--
ALTER TABLE `booking_ruangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ruanganbooking` (`id_mahasiswa`),
  ADD KEY `ruangan_booking` (`id_ruangan`);

--
-- Indexes for table `ijin_bermalam`
--
ALTER TABLE `ijin_bermalam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ijin_bermalam` (`id_mahasiswa`);

--
-- Indexes for table `ijin_keluar`
--
ALTER TABLE `ijin_keluar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ijin_keluar` (`id_mahasiswa`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_orders` (`id_mahasiswa`),
  ADD KEY `kaos_orders` (`id_produk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_surat` (`id_mahasiswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_ruangan`
--
ALTER TABLE `booking_ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ijin_bermalam`
--
ALTER TABLE `ijin_bermalam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ijin_keluar`
--
ALTER TABLE `ijin_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ruangan`
--
ALTER TABLE `ruangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_ruangan`
--
ALTER TABLE `booking_ruangan`
  ADD CONSTRAINT `ruangan_booking` FOREIGN KEY (`id_ruangan`) REFERENCES `ruangan` (`id`),
  ADD CONSTRAINT `user_booking` FOREIGN KEY (`id_mahasiswa`) REFERENCES `user` (`id`);

--
-- Constraints for table `ijin_bermalam`
--
ALTER TABLE `ijin_bermalam`
  ADD CONSTRAINT `ijin_bermalam` FOREIGN KEY (`id_mahasiswa`) REFERENCES `user` (`id`);

--
-- Constraints for table `ijin_keluar`
--
ALTER TABLE `ijin_keluar`
  ADD CONSTRAINT `ijin_keluar` FOREIGN KEY (`id_mahasiswa`) REFERENCES `user` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `kaos_orders` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id`),
  ADD CONSTRAINT `user_orders` FOREIGN KEY (`id_mahasiswa`) REFERENCES `user` (`id`);

--
-- Constraints for table `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `user_surat` FOREIGN KEY (`id_mahasiswa`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
