-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 09:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_ilkom`
--

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id` int(11) NOT NULL,
  `kode_fakultas` varchar(20) NOT NULL,
  `nama_fakultas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id`, `kode_fakultas`, `nama_fakultas`) VALUES
(1, 'FISIPKOM', 'ILMU SOSIAL, POLITIK, DAN KOMPUTER'),
(2, 'FIPHAL', 'ILMU PANGAN HALAL'),
(4, 'FE', 'EKONOMI'),
(5, 'FAIPG', 'AGAMA ISLAM DAN PENDIDIKAN GURU'),
(6, 'FAPERTA', 'PERTANIAN'),
(10, 'FH', 'Hukum');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nim_mahasiswa` varchar(20) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `kode_prodi` varchar(11) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nim_mahasiswa`, `nama_mahasiswa`, `kode_prodi`, `tanggal_lahir`, `no_hp`, `alamat`, `foto`) VALUES
(1, 'I.2111727', 'Rafael Nuansa Ramadhon', 'ILKOMP', '2000-01-06', '08188888888', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(2, 'I.2111723', 'Japar Sodik', 'ILKOMP', '2000-07-05', '08511222222', 'Bogor', 'chat.png'),
(3, 'I.2111726', 'Mochamad Fajar Hikmatulloh', 'ILKOMP', '0000-00-00', '08211111111', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(4, 'I.2111728', 'Risa', 'ILKOMP', '2003-06-10', '08555555555', 'Bogor', 'chat.png'),
(5, 'I.2111729', 'Sri Meiylani Rejeki', 'ILKOMP', '2002-05-29', '08100222244', 'Bogor', 'chat.png'),
(6, 'I.2111730', 'Tia Agustiani', 'ILKOMP', '2000-08-20', '08221555555', 'Bogor', 'chat.png'),
(7, 'I.2111731', 'Risfan Novrian', 'ILKOMP', '2000-11-18', '08503333333', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(8, 'I.2111732', 'Aldino Ogi', 'ILKOMP', '1997-08-10', '08222222221', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(9, 'I.2111733', 'Muhamad Fikri', 'ILKOMP', '2000-08-09', '08122244444', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(10, 'I.2111737', 'Ari Permana Agung', 'ILKOMP', '2002-02-02', '08577777777', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(11, 'I.2111734', 'Mip Saripudin', 'ILKOMP', '1997-09-09', '08122999999', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(12, 'I.2111738', 'Faturachman Ahmad', 'ILKOMP', '2002-12-31', '08511111111', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(13, 'I.2111735', 'Jihan Fachrani', 'ILKOMP', '2004-08-25', '08122222222', 'Bogor', 'chat.png'),
(14, 'I.2111736', 'Rusdi Abdul Gani', 'ILKOMP', '2003-01-20', '08101111111', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(15, 'A.2110379', '	Siti Farida Agustin	', 'HUKUM', '2003-12-30', '08101114444', 'Bogor', 'chat.png'),
(16, 'A.2110554', '	Bunga Nur Mulya	', 'HUKUM', '2004-04-30', '08533333333', 'Bogor', 'chat.png'),
(17, 'C.2111550', '	Novanza Ramadan	', 'PGSD', '2002-05-25', '08533333300', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch.jpg'),
(18, 'B.2111023	', '	Helvanesa Virgitania	', 'MPI', '2003-11-20', '08101114448', 'Bogor', 'chat.png'),
(19, '	E.2111006	', '	Rahma Sakila	', 'AKUNTANSI', '2002-07-07', '08101114440', 'Bogor', 'chat.png'),
(20, '	F.2111020	', '	Dea Julfani	', 'TIP', '2002-09-18', '08577770099', 'Bogor', 'chat.png'),
(21, 'C.2110552', 'Muhamad Robbi	', 'PGSD', '2003-03-28', '0855000333', 'Bogor', 'Boogiepop_wa_Warawanai_Subtitle_Indonesia_Batch1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `kode_prodi` varchar(20) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `kode_fakultas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `kode_prodi`, `nama_prodi`, `kode_fakultas`) VALUES
(1, 'ILKOMP', 'ILMU KOMPUTER', 'FISIPKOM'),
(3, 'TIP', 'TEKNOLOGI INDUSTRI PERTANIAN', 'FIPHAL'),
(4, 'AKUNTANSI', 'AKUNTANSI', 'FE'),
(5, 'MPI', 'MANAJEMEN PENDIDIKAN ISLAM', 'FAIPG'),
(6, 'PGSD', 'PENDIDIKAN GURU SEKOLAH DASAR', 'FAIPG');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `nama_lengkap`, `password`) VALUES
(1, 'rafaelnuansa', 'Rafael Nuansa Ramadhon', '9135d8523ad3da99d8a4eb83afac13d1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_fakultas` (`kode_fakultas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD UNIQUE KEY `nim_mahasiswa` (`nim_mahasiswa`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_prodi` (`kode_prodi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
