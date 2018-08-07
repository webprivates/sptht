-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2018 at 01:36 PM
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
-- Database: `sp_tht1`
--

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
(1, 10, 2, 0.3, 0.7),
(2, 8, 2, 0.9, 0.1),
(3, 1, 1, 0.1, 0.9),
(4, 1, 3, 0.2, 0.8),
(5, 7, 4, 0.2, 0.8),
(6, 3, 4, 0.3, 0.7),
(7, 9, 5, 0.3, 0.7),
(8, 5, 5, 0.4, 0.6),
(9, 12, 7, 0.3, 0.7),
(10, 5, 7, 0.2, 0.8),
(11, 8, 5, 0.9, 0.1),
(12, 1, 6, 0.3, 0.7),
(13, 2, 1, 0.4, 0.6),
(14, 11, 1, 0.3, 0.7),
(15, 6, 3, 0.1, 0.9),
(16, 2, 3, 0.3, 0.7),
(17, 4, 3, 0.4, 0.6),
(18, 6, 6, 0.2, 0.8);

-- --------------------------------------------------------

--
-- Table structure for table `history_pasien`
--

CREATE TABLE `history_pasien` (
  `id_history` int(3) NOT NULL,
  `id_pasien` int(3) NOT NULL,
  `hasil_diagnosa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(3, 'Gejala Tenggorokan', '-');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` varchar(15) NOT NULL,
  `jenkel` enum('Perempuan','Laki-laki') NOT NULL,
  `alamat` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `umur`, `jenkel`, `alamat`) VALUES
(1, 'dian', '21', 'Perempuan', 'abdesir'),
(2, 'ani', '21', 'Perempuan', 'pettarani'),
(10, 'amira', '7 tahun', 'Perempuan', 'samata'),
(12, 'mifta', '11 tahun', 'Perempuan', 'samata'),
(13, 'Refi', '22', 'Laki-laki', 'palembang'),
(14, 'wawan', '19', 'Laki-laki', 'pesantren'),
(15, 'aku', '2 tahun', 'Perempuan', 'sdsf'),
(16, 'dsfds', '3', 'Laki-laki', 'dfgd'),
(17, 'saya', '23', 'Laki-laki', 'fhjk'),
(18, 'uni', '26', 'Perempuan', 'samata'),
(19, 'ssa', '7 tahun', 'Laki-laki', 'dgfh'),
(20, 'dian', '22 tahun', 'Perempuan', 'asd'),
(21, 'lagi', '12', 'Perempuan', 'jkhsf'),
(22, 'lagi', '12', 'Perempuan', 'jkhsf'),
(23, 'lagi', '12', 'Perempuan', 'jkhsf'),
(24, 'lagi22', '12', 'Perempuan', 'jkhsf'),
(25, 'lagi3', '11 tahun', 'Perempuan', 'asd'),
(26, 'nani', '7 tahun', 'Perempuan', ' fg'),
(27, 'aku', '15 tahun', 'Laki-laki', 'dimana'),
(28, 'aku', '15 tahun', 'Laki-laki', 'dimana'),
(29, 'aku', '22 tahun', 'Laki-laki', 'samata'),
(30, 'fsdgsd', '23', 'Laki-laki', 'samata'),
(31, 'sds', '3', 'Perempuan', 'sdf'),
(32, 'wahid', '23 tahun', 'Laki-laki', 'asdasd'),
(33, 'nisa', '17', 'Perempuan', 'samata'),
(34, 'sfs', '2', 'Perempuan', 'ds'),
(35, 'hjkh', '5', 'Perempuan', 'CGFCG'),
(36, 'test', '2', 'Laki-laki', 'fd'),
(37, 'tes', '3', 'Laki-laki', 'da'),
(38, 'dicoba', '3 tahun', 'Perempuan', 'dimana sja'),
(39, 'hasil', '4', 'Laki-laki', 'dimana'),
(40, 'dian', '7 tahun', 'Perempuan', 'dimana'),
(41, 'hasil1', '7', 'Perempuan', 'sad'),
(42, 'dia', '11 tahun', 'Laki-laki', 'dimana'),
(43, 'ila', '22 tahun', 'Perempuan', 'dimana'),
(44, 'pak bewa', '25 tahun', 'Laki-laki', 'kampus');

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
(9, 2, 'KG9', 'Mudah Beringus'),
(10, 3, 'KG10', 'Banyak Lendir Ditenggorokan'),
(11, 1, 'KG11', 'Pendengaran Bergemah'),
(12, 2, 'KG12', 'Keluar Ingus');

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
-- Indexes for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gejala_id` (`gejala_id`),
  ADD KEY `penyakit_id` (`penyakit_id`);

--
-- Indexes for table `history_pasien`
--
ALTER TABLE `history_pasien`
  ADD PRIMARY KEY (`id_history`);

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
-- AUTO_INCREMENT for table `gejala_penyakit`
--
ALTER TABLE `gejala_penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `history_pasien`
--
ALTER TABLE `history_pasien`
  MODIFY `id_history` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelompok_gejala`
--
ALTER TABLE `kelompok_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_gejala`
--
ALTER TABLE `tbl_gejala`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
