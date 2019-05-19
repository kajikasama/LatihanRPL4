-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2018 at 09:55 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihanrpl4`
--

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `IdKota` int(11) NOT NULL,
  `NamaKota` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`IdKota`, `NamaKota`) VALUES
(1, 'Denpasar'),
(2, 'Tabanan'),
(3, 'Gianyar'),
(4, 'Mengwi'),
(5, 'Jembrana'),
(6, 'Kuta'),
(7, 'Singaraja');

-- --------------------------------------------------------

--
-- Stand-in structure for view `namakota2`
-- (See below for the actual view)
--
CREATE TABLE `namakota2` (
`IdKota` int(11)
,`IdSekolah` int(11)
,`NamaSekolah` varchar(50)
,`NamaKota` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `ortu2`
-- (See below for the actual view)
--
CREATE TABLE `ortu2` (
`IdKota` int(11)
,`IdOrtu` int(11)
,`NamaOrtu` varchar(50)
,`Pekerjaan` varchar(30)
,`AlamatOrtu` varchar(100)
,`TelpOrtu` varchar(30)
,`HpOrtu` varchar(30)
,`NamaKota` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pendaftar`
-- (See below for the actual view)
--
CREATE TABLE `pendaftar` (
`IdProgram` int(11)
,`IdKota` int(11)
,`IdPendaftar` int(11)
,`IdOrtu` int(11)
,`IdSekolah` int(11)
,`NoPeserta` varchar(10)
,`TahunLulus` varchar(5)
,`NamaPendaftar` varchar(100)
,`Usia` varchar(5)
,`TempatLahir` varchar(30)
,`TglLahir` varchar(30)
,`Jenskel` varchar(20)
,`AlamatPendaftar` varchar(50)
,`KotaTinggal` varchar(50)
,`AsalSekolah` varchar(50)
,`TelpPendaftar` varchar(20)
,`NamaKota` varchar(20)
,`NamaProgram` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbortu`
--

CREATE TABLE `tbortu` (
  `IdOrtu` int(11) NOT NULL,
  `IdKota` int(11) DEFAULT NULL,
  `NamaOrtu` varchar(50) DEFAULT NULL,
  `Pekerjaan` varchar(30) DEFAULT NULL,
  `AlamatOrtu` varchar(100) DEFAULT NULL,
  `TelpOrtu` varchar(30) DEFAULT NULL,
  `HpOrtu` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbortu`
--

INSERT INTO `tbortu` (`IdOrtu`, `IdKota`, `NamaOrtu`, `Pekerjaan`, `AlamatOrtu`, `TelpOrtu`, `HpOrtu`) VALUES
(1, 2, 'I Nyoman Kotes', 'Laundry', 'Pengeringan Baju', '0923475', '0891234'),
(2, 4, 'I Made Dublon', 'Bhuta Kala (Oni)', 'Tanah Tak Berpasir', '03745356', '083459'),
(3, 4, 'I Wayan Ngesing', 'Asisten Mad Dog', 'Tengah Lava Gunung Agungs', '0899999999', '0891234567'),
(4, 7, 'Hakurei Reimu', 'Pemusnah Youkai', 'Hakurei Shrine', '089999999', '0812345868'),
(5, 3, 'I Ketut Maong', 'Assisten I Made Jukut', 'Under water without waters', '12345678', '0987665');

-- --------------------------------------------------------

--
-- Table structure for table `tbpendaftarv2`
--

CREATE TABLE `tbpendaftarv2` (
  `IdPendaftar` int(11) NOT NULL,
  `IdProgram` int(11) DEFAULT NULL,
  `IdKota` int(11) DEFAULT NULL,
  `IdOrtu` int(11) DEFAULT NULL,
  `IdSekolah` int(11) DEFAULT NULL,
  `NoPeserta` varchar(10) DEFAULT NULL,
  `TahunLulus` varchar(5) DEFAULT NULL,
  `NamaPendaftar` varchar(100) DEFAULT NULL,
  `Usia` varchar(5) DEFAULT NULL,
  `TempatLahir` varchar(30) DEFAULT NULL,
  `TglLahir` varchar(30) DEFAULT NULL,
  `Jenskel` varchar(20) DEFAULT NULL,
  `AlamatPendaftar` varchar(50) DEFAULT NULL,
  `KotaTinggal` varchar(50) DEFAULT NULL,
  `AsalSekolah` varchar(50) DEFAULT NULL,
  `TelpPendaftar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbpendaftarv2`
--

INSERT INTO `tbpendaftarv2` (`IdPendaftar`, `IdProgram`, `IdKota`, `IdOrtu`, `IdSekolah`, `NoPeserta`, `TahunLulus`, `NamaPendaftar`, `Usia`, `TempatLahir`, `TglLahir`, `Jenskel`, `AlamatPendaftar`, `KotaTinggal`, `AsalSekolah`, `TelpPendaftar`) VALUES
(1, 1, 1, 2, 2, '211', '2009', 'I Putu Chandrasari', '16', 'Tabanan', '28 Februari 2003', 'Perempuan', 'Jln Soka No 32', 'Denpasar', 'Smp Ganesha DPS', '089234'),
(2, 2, 2, 1, 1, '222', '2010', 'I Nyoman Kretayasa', '17', 'Jembrana', '10 Agustus 2002', 'Laki-Laki', 'Jln  Muh Yamin', 'Gianyar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbprogram`
--

CREATE TABLE `tbprogram` (
  `IdProgram` int(11) NOT NULL,
  `NamaProgram` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbprogram`
--

INSERT INTO `tbprogram` (`IdProgram`, `NamaProgram`) VALUES
(1, 'Rekayasa Perangkat Lunak'),
(2, 'Multimedia'),
(3, 'Teknisi Komputer Dan Jaringan'),
(4, 'Animasi'),
(5, 'Desain Komunikasi Dan Visualss'),
(10, 'tataboga');

-- --------------------------------------------------------

--
-- Table structure for table `tbsekolah`
--

CREATE TABLE `tbsekolah` (
  `IdSekolah` int(11) NOT NULL,
  `IdKota` int(11) DEFAULT NULL,
  `NamaSekolah` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbsekolah`
--

INSERT INTO `tbsekolah` (`IdSekolah`, `IdKota`, `NamaSekolah`) VALUES
(1, 1, 'SMK TI Bali Global Jimbaran'),
(2, 3, 'SMK TI Bali Global Gianyar'),
(3, 7, 'SMK TI Bali Singaraja'),
(5, 4, 'Smk Ti Mengwi'),
(6, 2, 'Smk Ti Tabanan');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tbsekolah2`
-- (See below for the actual view)
--
CREATE TABLE `tbsekolah2` (
`IdSekolah` int(11)
,`IdKota` int(11)
,`NamaSekolah` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `namakota2`
--
DROP TABLE IF EXISTS `namakota2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `namakota2`  AS  select `tbsekolah`.`IdKota` AS `IdKota`,`tbsekolah`.`IdSekolah` AS `IdSekolah`,`tbsekolah`.`NamaSekolah` AS `NamaSekolah`,`kota`.`NamaKota` AS `NamaKota` from (`tbsekolah` join `kota` on((`tbsekolah`.`IdKota` = `kota`.`IdKota`))) ;

-- --------------------------------------------------------

--
-- Structure for view `ortu2`
--
DROP TABLE IF EXISTS `ortu2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ortu2`  AS  select `tbortu`.`IdKota` AS `IdKota`,`tbortu`.`IdOrtu` AS `IdOrtu`,`tbortu`.`NamaOrtu` AS `NamaOrtu`,`tbortu`.`Pekerjaan` AS `Pekerjaan`,`tbortu`.`AlamatOrtu` AS `AlamatOrtu`,`tbortu`.`TelpOrtu` AS `TelpOrtu`,`tbortu`.`HpOrtu` AS `HpOrtu`,`kota`.`NamaKota` AS `NamaKota` from (`tbortu` join `kota` on((`tbortu`.`IdKota` = `kota`.`IdKota`))) ;

-- --------------------------------------------------------

--
-- Structure for view `pendaftar`
--
DROP TABLE IF EXISTS `pendaftar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pendaftar`  AS  select `tbpendaftarv2`.`IdProgram` AS `IdProgram`,`tbpendaftarv2`.`IdKota` AS `IdKota`,`tbpendaftarv2`.`IdPendaftar` AS `IdPendaftar`,`tbpendaftarv2`.`IdOrtu` AS `IdOrtu`,`tbpendaftarv2`.`IdSekolah` AS `IdSekolah`,`tbpendaftarv2`.`NoPeserta` AS `NoPeserta`,`tbpendaftarv2`.`TahunLulus` AS `TahunLulus`,`tbpendaftarv2`.`NamaPendaftar` AS `NamaPendaftar`,`tbpendaftarv2`.`Usia` AS `Usia`,`tbpendaftarv2`.`TempatLahir` AS `TempatLahir`,`tbpendaftarv2`.`TglLahir` AS `TglLahir`,`tbpendaftarv2`.`Jenskel` AS `Jenskel`,`tbpendaftarv2`.`AlamatPendaftar` AS `AlamatPendaftar`,`tbpendaftarv2`.`KotaTinggal` AS `KotaTinggal`,`tbpendaftarv2`.`AsalSekolah` AS `AsalSekolah`,`tbpendaftarv2`.`TelpPendaftar` AS `TelpPendaftar`,`kota`.`NamaKota` AS `NamaKota`,`tbprogram`.`NamaProgram` AS `NamaProgram` from ((`tbpendaftarv2` join `kota` on((`tbpendaftarv2`.`IdKota` = `kota`.`IdKota`))) join `tbprogram` on((`tbpendaftarv2`.`IdProgram` = `tbprogram`.`IdProgram`))) ;

-- --------------------------------------------------------

--
-- Structure for view `tbsekolah2`
--
DROP TABLE IF EXISTS `tbsekolah2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tbsekolah2`  AS  select `tbsekolah`.`IdSekolah` AS `IdSekolah`,`tbsekolah`.`IdKota` AS `IdKota`,`tbsekolah`.`NamaSekolah` AS `NamaSekolah` from `tbsekolah` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`IdKota`);

--
-- Indexes for table `tbortu`
--
ALTER TABLE `tbortu`
  ADD PRIMARY KEY (`IdOrtu`);

--
-- Indexes for table `tbpendaftarv2`
--
ALTER TABLE `tbpendaftarv2`
  ADD PRIMARY KEY (`IdPendaftar`),
  ADD KEY `fk_kota` (`IdKota`),
  ADD KEY `fk_ortu` (`IdOrtu`),
  ADD KEY `fk_program` (`IdProgram`),
  ADD KEY `fk_sekolah` (`IdSekolah`);

--
-- Indexes for table `tbprogram`
--
ALTER TABLE `tbprogram`
  ADD PRIMARY KEY (`IdProgram`);

--
-- Indexes for table `tbsekolah`
--
ALTER TABLE `tbsekolah`
  ADD PRIMARY KEY (`IdSekolah`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbpendaftarv2`
--
ALTER TABLE `tbpendaftarv2`
  ADD CONSTRAINT `fk_kota` FOREIGN KEY (`IdKota`) REFERENCES `kota` (`IdKota`),
  ADD CONSTRAINT `fk_ortu` FOREIGN KEY (`IdOrtu`) REFERENCES `tbortu` (`IdOrtu`),
  ADD CONSTRAINT `fk_program` FOREIGN KEY (`IdProgram`) REFERENCES `tbprogram` (`IdProgram`),
  ADD CONSTRAINT `fk_sekolah` FOREIGN KEY (`IdSekolah`) REFERENCES `tbsekolah` (`IdSekolah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
