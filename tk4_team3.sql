-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 02:10 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tk4_team3`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `IdBarang` int(11) NOT NULL,
  `NamaBarang` varchar(50) DEFAULT NULL,
  `Keterangan` varchar(50) DEFAULT NULL,
  `Satuan` int(11) DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`IdBarang`, `NamaBarang`, `Keterangan`, `Satuan`, `IdPengguna`) VALUES
(0, 'TES', 'KODI', 12, 31547668),
(12498429, 'BUKU', 'KODI', 20, 76436279),
(17356115, 'STABILO', 'UNIT', 20, 31547668),
(24727137, 'PENSIL', 'KOTAK', 15, 43147869),
(35872037, 'PULPEN', 'KOTAK', 12, 64563689),
(48678172, 'PENGHAPUS', 'KOTAK', 15, 86563435),
(52648179, 'PENGGARIS', 'KOTAK', 1, 19676346),
(64723631, 'LEM', 'KOTAK', 8, 98624675),
(68768136, 'TIPE-X', 'KOTAK', 10, 95536485),
(73516337, 'SPIDOL', 'KOTAK', 6, 87456359),
(81735616, 'PENSIL WARNA', 'SET', 20, 59866357);

-- --------------------------------------------------------

--
-- Table structure for table `hakakses`
--

CREATE TABLE `hakakses` (
  `IdAkses` int(11) NOT NULL,
  `NamaAkses` varchar(50) DEFAULT NULL,
  `Keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hakakses`
--

INSERT INTO `hakakses` (`IdAkses`, `NamaAkses`, `Keterangan`) VALUES
(12345, 'JONI', 'PENGGUNA'),
(19357, 'OREN', 'PENGGUNA'),
(23461, 'LUIS', 'PENGGUNA'),
(51935, 'AMIN', 'PENGGUNA'),
(74783, 'ICHA', 'PENGGUNA'),
(79747, 'MARTIN', 'PENGGUNA'),
(85031, 'MIKAIL', 'PENGGUNA'),
(91573, 'TUTU', 'PENGGUNA'),
(97403, 'ANGGA', 'PENGGUNA'),
(98358, 'XIXI', 'PENGGUNA');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `IdPelanggan` int(11) NOT NULL,
  `NamaPelanggan` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `NamaDepan` varchar(50) DEFAULT NULL,
  `NamaBelakang` varchar(50) DEFAULT NULL,
  `NoHp` bigint(20) DEFAULT NULL,
  `Alamat` varchar(80) DEFAULT NULL,
  `IdAkses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`IdPelanggan`, `NamaPelanggan`, `Password`, `NamaDepan`, `NamaBelakang`, `NoHp`, `Alamat`, `IdAkses`) VALUES
(1, 'Andi', 'Password1', 'Andi', 'Sumantro', 81111111111, 'Jakarta', 12345),
(2, 'Budi', 'Password2', 'Budi', 'Baba', 82222222222, 'Bandung', 12345),
(3, 'Citra', 'Password3', 'Citra', 'Sari', 83333333333, 'Surabaya', 19357),
(4, 'Dinda', 'Password4', 'Dinda', 'Putri', 84444444444, 'Semarang', 19357),
(5, 'Eka', 'Password5', 'Eka', 'Jaya', 85555555555, 'Yogyakarta', 23461),
(6, 'Bella', 'Password6', 'Bella', 'Sinaga', 86666666666, 'jl. setiabudi11', 23461),
(7, 'Andi', 'Password7', 'Andi', 'Andika', 87777777777, 'jl. setiabudi12', 51935),
(8, 'Fikri', 'Password8', 'Fikri', 'Andika', 88888888888, 'Solo', 51935),
(9, 'Gina', 'Password9', 'Gina', 'Cahyani', 89999999999, 'Denpasar', 74783),
(10, 'Hadi', 'Password10', 'Hadi', 'Saputra', 81000000000, 'Medan', 74783),
(11, 'Indra', 'Password11', 'Indra', 'Bekri', 82111111111, 'Palembang', 79747),
(12, 'Joko', 'Password12', 'Joko', 'Wijaya', 82222222222, 'Makassar', 79747),
(13, 'Kartika', 'Password13', 'Kartika', 'Dewi', 82333333333, 'Jakarta', 98358),
(14, 'Lina', 'Password14', 'Lina', 'Dewi', 82333333333, 'Bandung', 85031),
(15, 'Mira', 'Password15', 'Mira', 'Soewanto', 84333333333, 'Surabaya', 85031),
(16, 'Nanda', 'Password16', 'Nanda', 'Xonic', 85444444444, 'Semarang', 91573),
(17, 'Oky', 'Password17', 'Oky', 'Bangun', 161616161616, 'Padang', 91573),
(18, 'Ririn', 'Password18', 'Ririn', 'Cahyani', 1818181818, 'Riau', 97403),
(19, 'Santi', 'Password19', 'Santi', 'Carzola', 1919191919, 'Banten', 97403),
(20, 'Wandi', 'Password20', 'Wandi', 'Silitonga', 2020202020, 'Tangerang', 98358);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `IdPembelian` int(11) NOT NULL,
  `JumlahPembelian` int(11) DEFAULT NULL,
  `HargaBeli` int(50) DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`IdPembelian`, `JumlahPembelian`, `HargaBeli`, `IdPengguna`) VALUES
(13413, 53, 490000, 19676346),
(13737, 131, 135160, 95536485),
(14458, 74, 890870, 43147869),
(17113, 185, 235000, 43147869),
(24868, 92, 600800, 76436279),
(26883, 57, 250780, 86563435),
(32146, 73, 859000, 59866357),
(37137, 79, 546150, 19676346),
(44845, 46, 349000, 86563435),
(45975, 38, 389090, 95536485),
(57173, 35, 379040, 87456359),
(64235, 100, 500000, 76436279),
(67793, 63, 562790, 59866357),
(68426, 57, 508900, 98624675),
(70633, 86, 957000, 87456359),
(74542, 135, 600000, 64563689),
(74557, 123, 527000, 98624675),
(74844, 24, 341555, 31547668),
(86292, 34, 500376, 64563689),
(95793, 80, 280588, 31547668);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `IdPengguna` int(11) NOT NULL,
  `NamaPengguna` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `NamaDepan` varchar(50) DEFAULT NULL,
  `NamaBelakang` varchar(50) DEFAULT NULL,
  `NoHp` bigint(12) DEFAULT NULL,
  `Alamat` varchar(80) DEFAULT NULL,
  `IdAkses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`IdPengguna`, `NamaPengguna`, `Password`, `NamaDepan`, `NamaBelakang`, `NoHp`, `Alamat`, `IdAkses`) VALUES
(19676346, 'OREN KUCING', 'VNWY748', 'OREN', 'KUCING', 81238109732, 'JL. KONOHA NO. 90', 19357),
(31547668, 'ICHA KUCING', 'PUAJ938', 'ICHA', 'KUCING', 84674374009, 'JL. KONOHA NO 90', 74783),
(43147869, 'MIKAIL MALAIKAT', 'SFBA561', 'MIKAIL', 'MALAIKAT', 82345617830, 'JL. BUKIT BATU NO 52', 85031),
(59866357, 'AMIN SUEB', 'SPOA091', 'AMIN', 'SUEB', 83648597930, 'JL. TIKUS NO. 13', 51935),
(64563689, 'LUIS DUNF', 'KJSD310', 'LUIS', 'DUNF', 89653819014, 'JL. KENANGAN NO 93', 23461),
(76436279, 'JONI ALEX', 'PLDS761', 'JONI', 'ALEX', 86273526109, 'JL. PERJUANGAN NO 2', 12345),
(86563435, 'XIXI PANDA', 'DHVH197', 'XIXI', 'PANDA', 83629484461, 'JL. ANGGREK N0. 45', 98358),
(87456359, 'TUTU BERUANG', 'HNWI271', 'TUTU', 'BERUANG', 86443629471, 'JL. NINJAKU NO. 46', 91573),
(95536485, 'MARTIN REAPER', 'APDI471', 'MARTIN', 'REAPER', 85176482901, 'JL. SIALUMEN NO 64', 79747),
(98624675, 'ANGGA SELOW', 'YAGS741', 'ANNGA', 'SELOW', 81275849308, 'JL. SAMARINDA NO. 46', 97403);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `IdPenjualan` int(11) NOT NULL,
  `JumlahPenjualan` int(11) DEFAULT NULL,
  `HargaJual` int(50) DEFAULT NULL,
  `IdPengguna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`IdPenjualan`, `JumlahPenjualan`, `HargaJual`, `IdPengguna`) VALUES
(1458, 9, 3000, 86563435),
(1589, 15, 8000, 98624675),
(2469, 62, 7000, 64563689),
(2595, 34, 6500, 76436279),
(2672, 19, 2500, 43147869),
(2694, 61, 11000, 31547668),
(2926, 8, 17000, 87456359),
(3158, 2, 12000, 98624675),
(3177, 9, 19000, 31547668),
(3467, 11, 6500, 59866357),
(3684, 5, 15000, 87456359),
(4646, 10, 20000, 76436279),
(4668, 10, 17000, 19676346),
(4924, 6, 23000, 95536485),
(6843, 4, 4000, 86563435),
(7505, 12, 7000, 59866357),
(8469, 4, 18000, 43147869),
(8624, 3, 21000, 19676346),
(8694, 12, 15000, 64563689),
(9579, 9, 11000, 95536485);

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `IdSuplier` int(11) NOT NULL,
  `NamaSuplier` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `NamaDepan` varchar(50) DEFAULT NULL,
  `NamaBelakang` varchar(50) DEFAULT NULL,
  `NoHp` bigint(20) DEFAULT NULL,
  `Alamat` varchar(80) DEFAULT NULL,
  `IdAkses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`IdSuplier`, `NamaSuplier`, `Password`, `NamaDepan`, `NamaBelakang`, `NoHp`, `Alamat`, `IdAkses`) VALUES
(1, 'Joni', 'Password1', 'Joni', 'Rukun', 1111111111, 'jl. setiabudi1', 12345),
(2, 'Lina', 'Password2', 'Lina', 'Ucok', 2222222222, 'jl. setiabudi2', 12345),
(3, 'Budi', 'Password3', 'Budi', 'Soewanto', 3333333333, 'jl. setiabudi3', 19357),
(4, 'Tina', 'Password4', 'Tina', 'Toon', 4444444444, 'jl. setiabudi4', 19357),
(5, 'Roni', 'Password5', 'Roni', 'Nasution', 5555555555, 'jl. setiabudi5', 23461),
(6, 'Dina', 'Password6', 'Dina', 'Cahyani', 6666666666, 'jl. setiabudi6', 23461),
(7, 'Fandi', 'Password7', 'Fandi', 'Alfredo', 7777777, 'jl. setiabudi7', 51935),
(8, 'Rina', 'Password8', 'Rina', 'Nabila', 88888888, 'jl. setiabudi8', 51935),
(9, 'Sari', 'Password9', 'Sari', 'Putri', 9999999999, 'jl. setiabudi9', 74783),
(10, 'Jaka', 'Password10', 'Jaka', 'Wijaya', 1010101010, 'jl. setiabudi10', 74783),
(11, 'Baring', 'Password11', 'Baring', 'Baba', 1111111111, 'jl. setiabudi11', 79747),
(12, 'Silvi', 'Password12', 'Silvi', 'Bangun', 1212121212, 'jl. setiabudi12', 79747),
(13, 'Cindy', 'Password13', 'Cindy', 'Putri', 1313131313, 'jl. setiabudi13', 85031),
(14, 'Gui', 'Password14', 'Gui', 'Sumantro', 1414141414, 'jl. setiabudi14', 85031),
(15, 'Andi', 'Password15', 'Andi', 'Xonic', 1515151515, 'jl. setiabudi15', 91573),
(16, 'Rizky', 'Password16', 'Rizky', 'Clip', 161616161616, 'jl. setiabudi16', 91573),
(17, 'Robi', 'Password17', 'Robi', 'Saputra', 1717171717, 'jl. setiabudi17', 97403),
(18, 'Kevin', 'Password18', 'Kevin', 'Silitonga', 1818181818, 'jl. setiabudi18', 97403),
(19, 'Tiara', 'Password19', 'Tiara', 'Mag', 1919191919, 'jl. setiabudi19', 98358),
(20, 'Vennita', 'Password20', 'Vennita', 'Sari', 2020202020, 'jl. setiabudi20', 98358);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`IdBarang`),
  ADD KEY `IdPengguna` (`IdPengguna`);

--
-- Indexes for table `hakakses`
--
ALTER TABLE `hakakses`
  ADD PRIMARY KEY (`IdAkses`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`IdPelanggan`),
  ADD KEY `IdAkses` (`IdAkses`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`IdPembelian`),
  ADD KEY `IdPengguna` (`IdPengguna`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`IdPengguna`),
  ADD KEY `IdAkses` (`IdAkses`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`IdPenjualan`),
  ADD KEY `IdPengguna` (`IdPengguna`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`IdSuplier`),
  ADD KEY `IdAkses` (`IdAkses`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

--
-- Constraints for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`IdAkses`) REFERENCES `hakakses` (`IdAkses`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

--
-- Constraints for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`IdAkses`) REFERENCES `hakakses` (`IdAkses`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`IdPengguna`) REFERENCES `pengguna` (`IdPengguna`);

--
-- Constraints for table `suplier`
--
ALTER TABLE `suplier`
  ADD CONSTRAINT `suplier_ibfk_1` FOREIGN KEY (`IdAkses`) REFERENCES `hakakses` (`IdAkses`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
