-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2016 at 12:14 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdnjtm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `level` varchar(5) NOT NULL DEFAULT 'admin',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `level`, `username`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(1) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'dimatikan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id`, `status`) VALUES
(2, 'dimatikan');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(3) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `nope` varchar(15) NOT NULL,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `nope`, `judul`, `isi`, `status`) VALUES
(9, 'Fadly', '081213070702', 'test1', 'hai', 1),
(10, 'rifai', '081213070702', 'test2', 'hai lagi', 2),
(11, 'tesssss', '081213070702', 'tesssssssssssssss', 'dsfdsfs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int(4) UNSIGNED ZEROFILL NOT NULL,
  `nik` varchar(8) NOT NULL,
  `username` varchar(10) NOT NULL DEFAULT '',
  `password` varchar(10) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `nama_panggilan` varchar(20) NOT NULL,
  `level` varchar(8) NOT NULL DEFAULT 'peserta',
  `status` varchar(20) NOT NULL DEFAULT 'belum diverifikasi',
  `jenis_kelamin` varchar(12) NOT NULL,
  `agama` varchar(12) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` int(2) UNSIGNED ZEROFILL NOT NULL,
  `bulan_lahir` int(2) UNSIGNED ZEROFILL NOT NULL,
  `tahun_lahir` int(4) UNSIGNED ZEROFILL NOT NULL,
  `usia` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status_anak` varchar(15) NOT NULL,
  `anak_ke` int(3) NOT NULL,
  `jumlah_saudara` int(3) NOT NULL,
  `bahasa_seharihari` varchar(20) NOT NULL,
  `berat_badan` int(3) NOT NULL,
  `tinggi_badan` int(3) NOT NULL,
  `golongan_darah` varchar(3) NOT NULL,
  `penyakit` varchar(50) NOT NULL,
  `tinggal_pada` varchar(20) NOT NULL,
  `no_handphone` varchar(16) NOT NULL,
  `hobi` varchar(30) NOT NULL,
  `nama_ayah` varchar(50) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `pendidikan_ayah` varchar(20) NOT NULL,
  `pendidikan_ibu` varchar(20) NOT NULL,
  `pekerjaan_ayah` varchar(20) NOT NULL,
  `pekerjaan_ibu` varchar(20) NOT NULL,
  `penghasilan` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL DEFAULT 'TIDAK LULUS',
  `dokumen` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `nik`, `username`, `password`, `nama_lengkap`, `nama_panggilan`, `level`, `status`, `jenis_kelamin`, `agama`, `kewarganegaraan`, `tempat_lahir`, `tanggal_lahir`, `bulan_lahir`, `tahun_lahir`, `usia`, `alamat`, `status_anak`, `anak_ke`, `jumlah_saudara`, `bahasa_seharihari`, `berat_badan`, `tinggi_badan`, `golongan_darah`, `penyakit`, `tinggal_pada`, `no_handphone`, `hobi`, `nama_ayah`, `nama_ibu`, `pendidikan_ayah`, `pendidikan_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `penghasilan`, `keterangan`, `dokumen`) VALUES
(0020, '123', 'fadly', '123', 'fadly rifai', 'fadly', 'peserta', 'diverifikasi', 'Laki-Laki', '', '', '', 13, 06, 1995, '21 tahun 3 bulan 29 hari', 'Bekasi', '', 0, 0, '', 0, 0, '', '', 'orang tua', '', '', '', '', '', '', '', '', '', 'LULUS', 'aW1hZ2VzL3Nma19waG90b3Mvc2ZrX3Bob3Rvc18xMzQ3NTIxMTY3X0FJVWd6WEk0LmpwZw.jpg'),
(0024, '321', '', '', 'rifai fadly', 'rifai', 'peserta', 'belum diverifikasi', 'Laki-Laki', '', '', '', 13, 07, 2015, '1 tahun 2 bulan 17 hari', 'Jakarta', '', 0, 0, '', 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', 'TIDAK LULUS', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id_peserta` (`id_peserta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int(4) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
