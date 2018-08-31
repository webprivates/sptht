-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2018 at 05:35 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_baru`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kepercayaan` double NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id`, `user_id`, `kode`, `nama`, `kepercayaan`, `nama_obat`, `created_at`) VALUES
(1, 45, 'KP2', 'Laryngopharyngeal Reflux', 70, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-20 14:12:41'),
(2, 45, 'KP5', 'Rhinitis Kronis', 70, 'Dekongestan, Steroit, Pseudo Evedrim Semprot Hidung, dan Pseudo Evedrim Tablet', '2018-08-20 14:14:00'),
(3, 45, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-20 14:25:46'),
(4, 45, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-20 14:29:20'),
(5, 45, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-20 14:30:29'),
(6, 45, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-20 14:30:53'),
(7, 45, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-20 14:31:16'),
(8, 45, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-20 14:31:56'),
(9, 45, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-20 14:33:53'),
(10, 45, 'KP1', 'Otitis Media Supuratif Akut', 90, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-20 14:35:42'),
(11, 49, 'KP1', 'Otitis Media Supuratif Akut', 90, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-20 14:39:03'),
(12, 49, 'KP4', 'Rhinitis Alergi', 80, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-20 16:23:23'),
(13, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:08:26'),
(14, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:10:01'),
(15, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:13:36'),
(16, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:14:14'),
(17, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:14:30'),
(18, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:15:58'),
(19, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:19:24'),
(20, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:21:11'),
(21, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:21:35'),
(22, 49, 'KP3', 'Otitis Externa', 70, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-20 18:22:57'),
(23, 51, 'KP7', 'Rhinitis Akut', 70, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-20 18:27:02'),
(24, 49, 'KP2', 'Laryngopharyngeal Reflux', 70, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-20 23:29:44'),
(25, 45, 'KP3', 'Otitis Externa', 98.8, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-27 07:42:25'),
(26, 45, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-27 07:47:08'),
(27, 52, 'KP3', 'Otitis Externa', 98, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-27 12:59:33'),
(28, 52, 'KP2', 'Laryngopharyngeal Reflux', 73, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-27 22:05:58'),
(29, 52, 'KP3', 'Otitis Externa', 95, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-27 22:12:04'),
(30, 52, 'KP6', 'Otitis Media Kronik', 94, 'Antibiotik, dan Obat demam', '2018-08-27 22:13:38'),
(31, 52, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-27 22:14:25'),
(32, 52, 'KP3', 'Otitis Externa', 97.6, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-27 22:16:25'),
(33, 45, 'KP3', 'Otitis Externa', 98.8, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-28 06:08:45'),
(34, 52, 'KP3', 'Otitis Externa', 92, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-28 11:31:24'),
(35, 52, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-28 11:32:32'),
(36, 52, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-28 11:33:30'),
(37, 52, 'KP2', 'Laryngopharyngeal Reflux', 73, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-28 11:34:23'),
(38, 52, 'KP7', 'Rhinitis Akut', 94, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-28 11:35:14'),
(39, 52, 'KP7', 'Rhinitis Akut', 94, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-28 11:36:03'),
(40, 52, 'KP7', 'Rhinitis Akut', 94, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-28 11:37:34'),
(41, 52, 'KP1', 'Otitis Media Supuratif Akut', 90, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-28 11:39:18'),
(42, 52, 'KP7', 'Rhinitis Akut', 80, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-28 11:39:53'),
(43, 52, 'KP2', 'Laryngopharyngeal Reflux', 70, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-28 11:42:33'),
(44, 45, 'KP1', 'Otitis Media Supuratif Akut', 98.8, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-28 23:14:27'),
(45, 45, 'KP2', 'Laryngopharyngeal Reflux', 73, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-28 23:15:10'),
(46, 45, 'KP4', 'Rhinitis Alergi', 94, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-28 23:15:33'),
(47, 45, 'KP3', 'Otitis Externa', 98.8, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-28 23:16:17'),
(48, 45, 'KP7', 'Rhinitis Akut', 80, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-28 23:17:54'),
(49, 45, 'KP3', 'Otitis Externa', 97.6, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-28 23:19:02'),
(50, 45, 'KP7', 'Rhinitis Akut', 94, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-28 23:19:59'),
(51, 45, 'KP7', 'Rhinitis Akut', 94, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-28 23:20:48'),
(52, 45, 'KP5', 'Rhinitis Kronis', 89.2, 'Dekongestan, Steroit, Pseudo Evedrim Semprot Hidung, dan Pseudo Evedrim Tablet', '2018-08-28 23:21:11'),
(53, 45, 'KP6', 'Otitis Media Kronik', 94, 'Antibiotik, dan Obat demam', '2018-08-28 23:21:34'),
(54, 45, 'KP6', 'Otitis Media Kronik', 99.4, 'Antibiotik, dan Obat demam', '2018-08-29 02:33:34'),
(55, 45, 'KP6', 'Otitis Media Kronik', 98, 'Antibiotik, dan Obat demam', '2018-08-29 02:34:48'),
(56, 45, 'KP1', 'Otitis Media Supuratif Akut', 98, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-29 02:37:23'),
(57, 45, 'KP2', 'Laryngopharyngeal Reflux', 91, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-29 02:44:16'),
(58, 45, 'KP4', 'Rhinitis Alergi', 97, 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)', '2018-08-29 02:53:26'),
(59, 45, 'KP3', 'Otitis Externa', 98, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-29 02:55:43'),
(60, 45, 'KP2', 'Laryngopharyngeal Reflux', 91, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-29 02:57:19'),
(61, 45, 'KP2', 'Laryngopharyngeal Reflux', 91, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-29 03:00:06'),
(62, 45, 'KP2', 'Laryngopharyngeal Reflux', 91, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-29 03:00:54'),
(63, 45, 'KP3', 'Otitis Externa', 98, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-29 03:01:43'),
(64, 45, 'KP7', 'Rhinitis Akut', 98, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-29 03:03:07'),
(65, 45, 'KP7', 'Rhinitis Akut', 98, 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)', '2018-08-29 03:03:50'),
(66, 45, 'KP5', 'Rhinitis Kronis', 99, 'Dekongestan, Steroit, Pseudo Evedrim Semprot Hidung, dan Pseudo Evedrim Tablet', '2018-08-29 03:04:49'),
(67, 45, 'KP6', 'Otitis Media Kronik', 98, 'Antibiotik, dan Obat demam', '2018-08-29 03:05:28'),
(68, 45, 'KP3', 'Otitis Externa', 99.4, 'Antibiotik, Metilprednisolon, dan Analgetik', '2018-08-29 16:08:45'),
(69, 45, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-30 07:14:53'),
(70, 45, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-30 07:19:12'),
(71, 45, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-30 07:19:41'),
(72, 45, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-30 07:20:28'),
(73, 45, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-30 07:20:57'),
(74, 45, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-30 07:21:52'),
(75, 45, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-30 07:22:31'),
(76, 45, 'KP1', 'Otitis Media Supuratif Akut', 96, 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)', '2018-08-30 07:23:08'),
(77, 45, 'KP2', 'Laryngopharyngeal Reflux', 80, 'Anti-reflux (Proton-pump inhibitor)', '2018-08-31 07:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `gejala_penyakit`
--

CREATE TABLE `gejala_penyakit` (
  `id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `penyakit_id` int(11) NOT NULL,
  `md` float NOT NULL,
  `mb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala_penyakit`
--

INSERT INTO `gejala_penyakit` (`id`, `gejala_id`, `penyakit_id`, `md`, `mb`) VALUES
(19, 1, 1, 0.4, 0.6),
(20, 2, 1, 0.1, 0.9),
(21, 11, 1, 0.5, 0.5),
(22, 8, 2, 0.9, 0.1),
(23, 10, 2, 0.1, 0.9),
(24, 18, 2, 0.2, 0.8),
(25, 4, 3, 0.1, 0.9),
(26, 6, 3, 0.2, 0.8),
(27, 19, 3, 0.3, 0.7),
(28, 3, 4, 0.3, 0.7),
(29, 7, 4, 0.1, 0.9),
(30, 20, 4, 0.4, 0.6),
(31, 5, 5, 0.2, 0.8),
(32, 8, 5, 0.5, 0.5),
(33, 9, 5, 0.1, 0.9),
(34, 1, 6, 0.2, 0.8),
(35, 6, 6, 0.1, 0.9),
(36, 21, 6, 0.3, 0.7),
(37, 5, 7, 0.2, 0.8),
(38, 12, 7, 0.1, 0.9),
(39, 22, 7, 0.4, 0.6);

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_gejala`
--

CREATE TABLE `kelompok_gejala` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok_gejala`
--

INSERT INTO `kelompok_gejala` (`id`, `nama`, `keterangan`) VALUES
(1, 'Gejala Telinga', '-'),
(2, 'Gejala Hidung', '-'),
(3, 'Gejala Tenggorokan', '-'),
(4, 'Gejala Kepala', '-');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `umur` varchar(15) NOT NULL,
  `jenkel` enum('Perempuan','Laki-laki') NOT NULL,
  `alamat` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `username`, `password`, `umur`, `jenkel`, `alamat`) VALUES
(45, 'wiwik', 'wiwik', 'cbb2ed636002294637b461b01c735c88', '21 tahun', 'Perempuan', 'perintis'),
(46, 'ani', 'hasriani', '21232f297a57a5a743894a0e4a801fc3', '22 tahun', 'Perempuan', 'dimana'),
(48, 'asda', 'asdf', 'qwer', '3', 'Laki-laki', 'asda'),
(49, 'Refi', 'aprendi', '4d96c294635019ba56b729675881202a', '22 tahun', 'Laki-laki', 'Lewoleba'),
(50, 'Akbar Abustang', 'abba', '54a8723466e5d487247f3d93d51c66bc', '22 tahun', 'Laki-laki', 'Lewoleba'),
(51, 'sri', 'sri', '296c2075a196aef15e372a68ae77477b', '22 tahun', 'Perempuan', 'samata'),
(52, 'dr masyita', 'dokter', 'd22af4180eee4bd95072eb90f94930e5', '30 tahun', 'Perempuan', 'klinik');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `user_id` int(11) NOT NULL,
  `gejala_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`user_id`, `gejala_id`, `created_at`) VALUES
(45, 10, '2018-08-20 14:12:41'),
(45, 9, '2018-08-20 14:14:00'),
(45, 10, '2018-08-20 14:14:00'),
(45, 3, '2018-08-20 14:25:46'),
(45, 7, '2018-08-20 14:25:46'),
(45, 3, '2018-08-20 14:29:20'),
(45, 7, '2018-08-20 14:29:20'),
(45, 3, '2018-08-20 14:30:29'),
(45, 7, '2018-08-20 14:30:29'),
(45, 3, '2018-08-20 14:30:53'),
(45, 7, '2018-08-20 14:30:53'),
(45, 3, '2018-08-20 14:31:16'),
(45, 7, '2018-08-20 14:31:16'),
(45, 3, '2018-08-20 14:31:56'),
(45, 7, '2018-08-20 14:31:56'),
(45, 3, '2018-08-20 14:33:53'),
(45, 7, '2018-08-20 14:33:53'),
(45, 1, '2018-08-20 14:35:42'),
(49, 1, '2018-08-20 14:39:03'),
(49, 7, '2018-08-20 16:23:23'),
(49, 9, '2018-08-20 16:23:23'),
(49, 2, '2018-08-20 18:08:26'),
(49, 3, '2018-08-20 18:08:26'),
(49, 2, '2018-08-20 18:10:01'),
(49, 3, '2018-08-20 18:10:01'),
(49, 2, '2018-08-20 18:13:36'),
(49, 3, '2018-08-20 18:13:36'),
(49, 2, '2018-08-20 18:14:14'),
(49, 3, '2018-08-20 18:14:14'),
(49, 2, '2018-08-20 18:14:30'),
(49, 3, '2018-08-20 18:14:30'),
(49, 2, '2018-08-20 18:15:58'),
(49, 3, '2018-08-20 18:15:58'),
(49, 2, '2018-08-20 18:19:24'),
(49, 3, '2018-08-20 18:19:24'),
(49, 2, '2018-08-20 18:21:11'),
(49, 3, '2018-08-20 18:21:11'),
(49, 2, '2018-08-20 18:21:35'),
(49, 3, '2018-08-20 18:21:35'),
(49, 2, '2018-08-20 18:22:57'),
(49, 3, '2018-08-20 18:22:57'),
(51, 11, '2018-08-20 18:27:02'),
(51, 12, '2018-08-20 18:27:02'),
(49, 10, '2018-08-20 23:29:44'),
(45, 2, '2018-08-27 07:42:25'),
(45, 4, '2018-08-27 07:42:25'),
(45, 6, '2018-08-27 07:42:25'),
(45, 8, '2018-08-27 07:42:25'),
(45, 1, '2018-08-27 07:47:08'),
(45, 2, '2018-08-27 07:47:08'),
(45, 5, '2018-08-27 07:47:08'),
(45, 8, '2018-08-27 07:47:08'),
(52, 1, '2018-08-27 12:59:33'),
(52, 6, '2018-08-27 12:59:33'),
(0, 8, '2018-08-27 22:05:17'),
(0, 10, '2018-08-27 22:05:17'),
(52, 8, '2018-08-27 22:05:58'),
(52, 10, '2018-08-27 22:05:58'),
(52, 1, '2018-08-27 22:12:04'),
(52, 6, '2018-08-27 22:12:04'),
(52, 1, '2018-08-27 22:13:38'),
(52, 6, '2018-08-27 22:13:38'),
(52, 1, '2018-08-27 22:14:25'),
(52, 2, '2018-08-27 22:14:25'),
(52, 2, '2018-08-27 22:16:25'),
(52, 4, '2018-08-27 22:16:25'),
(52, 6, '2018-08-27 22:16:25'),
(45, 1, '2018-08-28 06:08:45'),
(45, 2, '2018-08-28 06:08:45'),
(45, 4, '2018-08-28 06:08:45'),
(45, 6, '2018-08-28 06:08:45'),
(52, 4, '2018-08-28 11:31:23'),
(52, 6, '2018-08-28 11:31:23'),
(52, 4, '2018-08-28 11:32:32'),
(52, 6, '2018-08-28 11:32:32'),
(52, 3, '2018-08-28 11:32:32'),
(52, 5, '2018-08-28 11:32:32'),
(52, 7, '2018-08-28 11:32:32'),
(52, 3, '2018-08-28 11:33:30'),
(52, 5, '2018-08-28 11:33:30'),
(52, 7, '2018-08-28 11:33:30'),
(52, 8, '2018-08-28 11:34:22'),
(52, 10, '2018-08-28 11:34:22'),
(52, 11, '2018-08-28 11:35:14'),
(52, 5, '2018-08-28 11:35:14'),
(52, 12, '2018-08-28 11:35:14'),
(52, 2, '2018-08-28 11:36:02'),
(52, 5, '2018-08-28 11:36:02'),
(52, 12, '2018-08-28 11:36:02'),
(52, 1, '2018-08-28 11:37:34'),
(52, 6, '2018-08-28 11:37:34'),
(52, 5, '2018-08-28 11:37:34'),
(52, 12, '2018-08-28 11:37:34'),
(52, 1, '2018-08-28 11:39:18'),
(52, 5, '2018-08-28 11:39:18'),
(52, 7, '2018-08-28 11:39:18'),
(52, 2, '2018-08-28 11:39:53'),
(52, 5, '2018-08-28 11:39:53'),
(52, 7, '2018-08-28 11:39:53'),
(52, 2, '2018-08-28 11:42:33'),
(52, 10, '2018-08-28 11:42:33'),
(0, 1, '2018-08-28 23:13:54'),
(0, 2, '2018-08-28 23:13:54'),
(0, 11, '2018-08-28 23:13:54'),
(0, 8, '2018-08-28 23:13:54'),
(45, 1, '2018-08-28 23:14:26'),
(45, 2, '2018-08-28 23:14:26'),
(45, 11, '2018-08-28 23:14:26'),
(45, 8, '2018-08-28 23:14:26'),
(45, 8, '2018-08-28 23:15:10'),
(45, 10, '2018-08-28 23:15:10'),
(45, 3, '2018-08-28 23:15:33'),
(45, 5, '2018-08-28 23:15:33'),
(45, 7, '2018-08-28 23:15:33'),
(45, 1, '2018-08-28 23:16:17'),
(45, 2, '2018-08-28 23:16:17'),
(45, 4, '2018-08-28 23:16:17'),
(45, 6, '2018-08-28 23:16:17'),
(45, 5, '2018-08-28 23:17:53'),
(45, 7, '2018-08-28 23:17:53'),
(45, 8, '2018-08-28 23:17:53'),
(45, 10, '2018-08-28 23:17:53'),
(45, 2, '2018-08-28 23:19:02'),
(45, 4, '2018-08-28 23:19:02'),
(45, 6, '2018-08-28 23:19:02'),
(45, 8, '2018-08-28 23:19:02'),
(45, 5, '2018-08-28 23:19:59'),
(45, 7, '2018-08-28 23:19:59'),
(45, 12, '2018-08-28 23:19:59'),
(45, 5, '2018-08-28 23:20:48'),
(45, 12, '2018-08-28 23:20:48'),
(45, 5, '2018-08-28 23:21:11'),
(45, 9, '2018-08-28 23:21:11'),
(45, 8, '2018-08-28 23:21:11'),
(45, 1, '2018-08-28 23:21:34'),
(45, 6, '2018-08-28 23:21:34'),
(0, 1, '2018-08-29 02:33:03'),
(0, 6, '2018-08-29 02:33:03'),
(0, 21, '2018-08-29 02:33:03'),
(45, 1, '2018-08-29 02:33:33'),
(45, 6, '2018-08-29 02:33:33'),
(45, 21, '2018-08-29 02:33:33'),
(45, 1, '2018-08-29 02:34:48'),
(45, 6, '2018-08-29 02:34:48'),
(45, 5, '2018-08-29 02:34:48'),
(45, 1, '2018-08-29 02:37:23'),
(45, 2, '2018-08-29 02:37:23'),
(45, 11, '2018-08-29 02:37:23'),
(45, 8, '2018-08-29 02:37:23'),
(45, 8, '2018-08-29 02:44:15'),
(45, 10, '2018-08-29 02:44:15'),
(45, 3, '2018-08-29 02:53:26'),
(45, 5, '2018-08-29 02:53:26'),
(45, 7, '2018-08-29 02:53:26'),
(45, 1, '2018-08-29 02:55:43'),
(45, 2, '2018-08-29 02:55:43'),
(45, 4, '2018-08-29 02:55:43'),
(45, 6, '2018-08-29 02:55:43'),
(45, 5, '2018-08-29 02:57:18'),
(45, 7, '2018-08-29 02:57:18'),
(45, 8, '2018-08-29 02:57:18'),
(45, 10, '2018-08-29 02:57:18'),
(45, 4, '2018-08-29 03:00:06'),
(45, 5, '2018-08-29 03:00:06'),
(45, 8, '2018-08-29 03:00:06'),
(45, 10, '2018-08-29 03:00:06'),
(45, 5, '2018-08-29 03:00:54'),
(45, 7, '2018-08-29 03:00:54'),
(45, 8, '2018-08-29 03:00:54'),
(45, 10, '2018-08-29 03:00:54'),
(45, 2, '2018-08-29 03:01:43'),
(45, 4, '2018-08-29 03:01:43'),
(45, 6, '2018-08-29 03:01:43'),
(45, 8, '2018-08-29 03:01:43'),
(45, 5, '2018-08-29 03:03:07'),
(45, 7, '2018-08-29 03:03:07'),
(45, 12, '2018-08-29 03:03:07'),
(45, 5, '2018-08-29 03:03:50'),
(45, 12, '2018-08-29 03:03:50'),
(45, 5, '2018-08-29 03:04:49'),
(45, 9, '2018-08-29 03:04:49'),
(45, 8, '2018-08-29 03:04:49'),
(45, 1, '2018-08-29 03:05:28'),
(45, 6, '2018-08-29 03:05:28'),
(0, 1, '2018-08-29 16:08:03'),
(0, 2, '2018-08-29 16:08:03'),
(0, 4, '2018-08-29 16:08:03'),
(0, 6, '2018-08-29 16:08:03'),
(0, 19, '2018-08-29 16:08:03'),
(0, 5, '2018-08-29 16:08:03'),
(0, 10, '2018-08-29 16:08:03'),
(0, 18, '2018-08-29 16:08:03'),
(45, 1, '2018-08-29 16:08:45'),
(45, 2, '2018-08-29 16:08:45'),
(45, 4, '2018-08-29 16:08:45'),
(45, 6, '2018-08-29 16:08:45'),
(45, 19, '2018-08-29 16:08:45'),
(45, 5, '2018-08-29 16:08:45'),
(45, 10, '2018-08-29 16:08:45'),
(45, 18, '2018-08-29 16:08:45'),
(45, 1, '2018-08-30 07:14:53'),
(45, 2, '2018-08-30 07:14:53'),
(45, 4, '2018-08-30 07:14:53'),
(45, 1, '2018-08-30 07:19:12'),
(45, 2, '2018-08-30 07:19:12'),
(45, 4, '2018-08-30 07:19:12'),
(45, 1, '2018-08-30 07:19:41'),
(45, 2, '2018-08-30 07:19:41'),
(45, 4, '2018-08-30 07:19:41'),
(45, 1, '2018-08-30 07:20:28'),
(45, 2, '2018-08-30 07:20:28'),
(45, 4, '2018-08-30 07:20:28'),
(45, 1, '2018-08-30 07:20:57'),
(45, 2, '2018-08-30 07:20:57'),
(45, 4, '2018-08-30 07:20:57'),
(45, 1, '2018-08-30 07:21:52'),
(45, 2, '2018-08-30 07:21:52'),
(45, 4, '2018-08-30 07:21:52'),
(45, 1, '2018-08-30 07:22:31'),
(45, 2, '2018-08-30 07:22:31'),
(45, 4, '2018-08-30 07:22:31'),
(45, 1, '2018-08-30 07:23:08'),
(45, 2, '2018-08-30 07:23:08'),
(45, 4, '2018-08-30 07:23:08'),
(45, 18, '2018-08-31 07:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gejala`
--

CREATE TABLE `tbl_gejala` (
  `id` int(11) NOT NULL,
  `kelompok_gejala_id` int(11) NOT NULL,
  `kd_gejala` varchar(5) NOT NULL,
  `gejala` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gejala`
--

INSERT INTO `tbl_gejala` (`id`, `kelompok_gejala_id`, `kd_gejala`, `gejala`) VALUES
(1, 1, 'KG1', 'Gangguan Pendengaran'),
(2, 1, 'KG2', 'Sakit Telinga'),
(3, 2, 'KG3', 'Ingus Encer'),
(4, 1, 'KG4', 'Gatal Pada Telinga'),
(5, 2, 'KG5', 'Hidung Tersumbat'),
(6, 1, 'KG6', 'Keluar Cairan Dari Telinga'),
(7, 2, 'KG7', 'Bersin-bersin Serial'),
(8, 3, 'KG8', 'Batuk-batuk'),
(9, 2, 'KG9', 'Sering Beringus'),
(10, 3, 'KG10', 'Banyak Lendir Ditenggorokan'),
(11, 1, 'KG11', 'Pendengaran Bergemah'),
(12, 2, 'KG12', 'Keluar Ingus'),
(18, 3, 'KG13', 'Rasa Mengganjal Ditenggorokan'),
(19, 1, 'KG14', 'Rasa Tersumbat'),
(20, 2, 'KG15', 'Gatal Pada Hidung'),
(21, 1, 'KG16', 'Mendengung'),
(22, 4, 'KG17', 'Sakit Kepala');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penyakit`
--

CREATE TABLE `tbl_penyakit` (
  `id` int(11) NOT NULL,
  `kd_penyakit` varchar(5) NOT NULL,
  `nm_penyakit` varchar(50) NOT NULL,
  `nama_obat` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penyakit`
--

INSERT INTO `tbl_penyakit` (`id`, `kd_penyakit`, `nm_penyakit`, `nama_obat`) VALUES
(1, 'KP1', 'Otitis Media Supuratif Akut', 'Antibiotik (Analgetik), dan Anti-radang (Inflamasi)'),
(2, 'KP2', 'Laryngopharyngeal Reflux', 'Anti-reflux (Proton-pump inhibitor)'),
(3, 'KP3', 'Otitis Externa', 'Antibiotik, Metilprednisolon, dan Analgetik'),
(4, 'KP4', 'Rhinitis Alergi', 'Obat Semprot Hidung (Nasalsprei Semprot Steroid)'),
(5, 'KP5', 'Rhinitis Kronis', 'Dekongestan, Steroit, Pseudo Evedrim Semprot Hidung, dan Pseudo Evedrim Tablet'),
(6, 'KP6', 'Otitis Media Kronik', 'Antibiotik, dan Obat demam'),
(7, 'KP7', 'Rhinitis Akut', 'Antibiotik, Dekongestan (Pseudo Evetrim Tablet Minum)');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Expert'),
(2, 'sri', '1b8f538aae6c18789ff00674d9a554b4', 'Sri Kurniyan Sari');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id` (`gejala_id`),
  ADD KEY `penyakit_id` (`penyakit_id`);

--
-- Indexes for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelompok_gejala_id` (`kelompok_gejala_id`);

--
-- Indexes for table `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_penyakit`
--
ALTER TABLE `tbl_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD CONSTRAINT `gejala_penyakit_ibfk_1` FOREIGN KEY (`gejala_id`) REFERENCES `tbl_gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gejala_penyakit_ibfk_2` FOREIGN KEY (`penyakit_id`) REFERENCES `tbl_penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  ADD CONSTRAINT `tbl_gejala_ibfk_1` FOREIGN KEY (`kelompok_gejala_id`) REFERENCES `kelompok_gejala` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
