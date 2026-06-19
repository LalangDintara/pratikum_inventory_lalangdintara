-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2026 at 07:02 AM
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
-- Database: `pratikum`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `status_id` varchar(50) DEFAULT NULL,
  `penyimpanan_id` varchar(100) DEFAULT NULL,
  `harga_barang` int(11) DEFAULT NULL,
  `stok` int(11) NOT NULL,
  `limit_stok` int(11) NOT NULL DEFAULT 5,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama_barang`, `status_id`, `penyimpanan_id`, `harga_barang`, `stok`, `limit_stok`, `vendor_id`) VALUES
(1, 'Mama lemon', '1', '1', 9500, 10, 5, 0),
(2, 'AQUA 600 ML', '1', '1', 3800, 12, 5, 0),
(3, 'Kapal api spesial mix', '1', '2', 19900, 16, 5, 0),
(4, 'Gula Gmp', '1', '2', 17500, 8, 5, 0),
(5, 'Kapal api spesial mix', '1', '2', 19500, 16, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `distribusi`
--

CREATE TABLE `distribusi` (
  `id_distribusi` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jenis_barang` enum('masuk','keluar') NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_distribusi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyimpanan`
--

CREATE TABLE `penyimpanan` (
  `id` int(11) NOT NULL,
  `nama_penyimpanan` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penyimpanan`
--

INSERT INTO `penyimpanan` (`id`, `nama_penyimpanan`, `lokasi`) VALUES
(1, 'Gudang Sembako Yanss 1', 'jalan pekayon lantai 1'),
(2, 'Gudang Sembako Yanss 2', 'Galaxy lantai 2');

-- --------------------------------------------------------

--
-- Table structure for table `status_barang`
--

CREATE TABLE `status_barang` (
  `id` int(11) NOT NULL,
  `nama_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_barang`
--

INSERT INTO `status_barang` (`id`, `nama_status`) VALUES
(1, 'Tersedia'),
(2, 'Kosong'),
(3, 'Restok');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `role` enum('admin','pengguna') NOT NULL DEFAULT 'pengguna'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama_lengkap`, `role`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Bagas Admin', 'admin'),
(2, 'user', '6ad14ba9986e3615423dfca256d04e3f', 'Pengguna Umum', 'pengguna'),
(3, 'bagas123', '5ffd9bb73b00bce4feeb77e2d12722da', 'bagas123', 'pengguna');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id_vendor` int(11) NOT NULL,
  `nama_vendor` varchar(100) NOT NULL,
  `kontak_vendor` varchar(50) NOT NULL,
  `alamat_vendor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id_vendor`, `nama_vendor`, `kontak_vendor`, `alamat_vendor`) VALUES
(1, 'PT Sembako Yono', '085817465086', 'Ciketing Udik Selatan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyimpanan`
--
ALTER TABLE `penyimpanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_barang`
--
ALTER TABLE `status_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penyimpanan`
--
ALTER TABLE `penyimpanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `status_barang`
--
ALTER TABLE `status_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
