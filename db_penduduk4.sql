-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 08:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penduduk4`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agama`
--

CREATE TABLE `tbl_agama` (
  `kode` int(11) NOT NULL,
  `uraian` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agama`
--

INSERT INTO `tbl_agama` (`kode`, `uraian`) VALUES
(3, 'Kristen'),
(4, 'Islam'),
(5, 'Hindu'),
(7, 'Bundha'),
(8, 'eeee'),
(9, '22222222222222222'),
(10, '222');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kematian`
--

CREATE TABLE `tbl_kematian` (
  `kode` int(11) NOT NULL,
  `kd_warga` int(11) DEFAULT NULL,
  `tgl_kematian` date DEFAULT NULL,
  `tempat` varchar(200) DEFAULT NULL,
  `penyebab_kematian` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kematian`
--

INSERT INTO `tbl_kematian` (`kode`, `kd_warga`, `tgl_kematian`, `tempat`, `penyebab_kematian`) VALUES
(1, 8, '2018-10-12', '222222', '222');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lahir`
--

CREATE TABLE `tbl_lahir` (
  `kode` int(11) NOT NULL,
  `kd_warga` int(11) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `berat_lahir` varchar(50) DEFAULT NULL,
  `panjang_lahir` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_ayah` varchar(40) DEFAULT NULL,
  `saksi` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lurah`
--

CREATE TABLE `tbl_lurah` (
  `kode` int(11) NOT NULL,
  `uraian` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lurah`
--

INSERT INTO `tbl_lurah` (`kode`, `uraian`) VALUES
(2, 'Damai Sejati'),
(3, 'Desa Damai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pekerjaan`
--

CREATE TABLE `tbl_pekerjaan` (
  `kode` int(11) NOT NULL,
  `uraian` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pekerjaan`
--

INSERT INTO `tbl_pekerjaan` (`kode`, `uraian`) VALUES
(3, 'Tidak Bekerja'),
(4, 'Petani2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendatang`
--

CREATE TABLE `tbl_pendatang` (
  `kode` int(11) NOT NULL,
  `kd_warga` int(11) DEFAULT NULL,
  `desa_asal` varchar(100) DEFAULT NULL,
  `kecamatan_asal` varchar(100) DEFAULT NULL,
  `alamat_asal` varchar(100) DEFAULT NULL,
  `tgl_datang` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pendidikan`
--

CREATE TABLE `tbl_pendidikan` (
  `kode` int(11) NOT NULL,
  `uraian` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pendidikan`
--

INSERT INTO `tbl_pendidikan` (`kode`, `uraian`) VALUES
(3, 'SD'),
(4, 'SMP'),
(5, 'SMA'),
(6, 'D1'),
(7, 'D2'),
(8, 'D3'),
(9, 'S1'),
(10, 'S2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penduduk_tetap`
--

CREATE TABLE `tbl_penduduk_tetap` (
  `kode` int(11) NOT NULL,
  `kd_warga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penduduk_tetap`
--

INSERT INTO `tbl_penduduk_tetap` (`kode`, `kd_warga`) VALUES
(1, 0),
(2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pindah`
--

CREATE TABLE `tbl_pindah` (
  `kode` int(11) NOT NULL,
  `kd_warga` int(11) DEFAULT NULL,
  `alasan_pindah` varchar(100) DEFAULT NULL,
  `alamat_pindah` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `lurah` varchar(100) DEFAULT NULL,
  `tgl_pindah` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pindah`
--

INSERT INTO `tbl_pindah` (`kode`, `kd_warga`, `alasan_pindah`, `alamat_pindah`, `kecamatan`, `lurah`, `tgl_pindah`) VALUES
(1, 9, 'wwwww  ', 'eeee', 'rrrrr', 'rrrr  ', '2018-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `kode` int(11) NOT NULL,
  `user_name` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`kode`, `user_name`, `password`) VALUES
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warga`
--

CREATE TABLE `tbl_warga` (
  `kode` int(11) NOT NULL,
  `kd_lurah` int(11) NOT NULL,
  `kd_pekerjaan` int(11) NOT NULL,
  `kd_pendidikan` int(11) NOT NULL,
  `kd_agama` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kabupaten` varchar(30) NOT NULL,
  `provinsi` varchar(30) NOT NULL,
  `negara` varchar(30) NOT NULL,
  `status_kawin` varchar(20) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `jenis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_warga`
--

INSERT INTO `tbl_warga` (`kode`, `kd_lurah`, `kd_pekerjaan`, `kd_pendidikan`, `kd_agama`, `nik`, `nama`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `kecamatan`, `kabupaten`, `provinsi`, `negara`, `status_kawin`, `tempat_lahir`, `jenis`) VALUES
(7, 2, 3, 7, 7, '222222222222', 'Afriadi', '2018-10-18', 'Laki-Laki', 'Bilal', '2', '22', 'Sumatera Utara', 'WNI222', 'Sudah Menikah', 'MEDAN', 'Tetap'),
(8, 2, 3, 3, 3, '3333333333', 'H.Ishaq Naharuddin MA', '2018-10-15', 'Perempuan', '2', '2', '2', 'Sumatera Utara2', 'WNI', 'Sudah Menikah', 'mEDNASFADSFADSFADS', 'Meninggal'),
(11, 2, 3, 4, 4, '17281862868', 'Yogi', '2023-05-17', 'Laki-Laki', '', 'kebondalem', 'kendal', 'Jawa Tengah', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(12, 2, 3, 3, 3, '8239819397', 'Saka', '2023-05-09', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Jawa Tengah', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(13, 2, 3, 4, 4, '17281862869', 'Dapa', '2023-05-27', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Jawa Tengah', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(14, 2, 3, 3, 3, '8239819397899', 'Nopal', '2023-05-18', 'Laki-Laki', '', 'Cepiring', 'Kendal', 'Jawa Tengah', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(15, 2, 3, 3, 3, '1782487681', 'Ian', '0000-00-00', 'Laki-Laki', 'yugyggtyggtgtyg', 'u8hhhhhuihh', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'ke', 'Tetap'),
(16, 2, 3, 3, 3, '73737373', '3737373', '2000-02-22', 'Laki-Laki', 'ijsijejrejq', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(17, 2, 3, 3, 3, 'r938483489384384', '48394839843', '2000-02-22', 'Laki-Laki', 'jrjrjr', 'Cepiring', 'Kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', '8438434838', 'Tetap'),
(18, 2, 3, 3, 3, 'jsjjrr338u', 'djjjehehe', '2009-02-20', 'Laki-Laki', 'ifjeeurneufn', 'Cepiring', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'sufudfdf', 'Tetap'),
(19, 2, 3, 3, 3, 'e39939393', 'sukiman', '2069-02-22', 'Laki-Laki', 'jfidjfdjf', 'cgidjgjdg', 'batang', 'Sumatera Utara', 'WNI', 'Belum Menikah', '292929', 'Tetap'),
(20, 2, 3, 3, 3, '4ui4u4u4u', 'djsjij', '2000-02-02', 'Laki-Laki', 'ijehruehre', 'kebondalem', 'Kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'ijsrjjri', 'Tetap'),
(21, 2, 3, 3, 3, '1999999', 'gasyayg', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(22, 2, 3, 3, 3, '1316366818y', 'Saka', '2023-05-19', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(23, 2, 3, 3, 3, '12818731631667', 'viyo', '2023-05-16', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(24, 2, 3, 3, 3, '12917391739109', 'xanacab', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'batang', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(25, 2, 3, 3, 3, '1213345871', 'sbqs', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'batang', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(26, 2, 3, 3, 3, '1334566742', 'sdhvhs', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(27, 2, 3, 3, 3, '12716317367167', 'hbahvh', '2023-05-17', 'Laki-Laki', '', 'Cepiring', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(28, 2, 3, 3, 3, '13127129127', 'dhwdgwuy', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(29, 2, 3, 3, 3, '121391u9319', 'sasbajbdj', '2023-05-17', 'Laki-Laki', '', 'kebondalem', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(30, 2, 3, 3, 3, '121335677', 'ajdnajh', '2023-05-17', 'Laki-Laki', '', 'kebondalem', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(31, 2, 3, 3, 3, '12173913299', 'njdniw', '2023-05-23', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(32, 2, 3, 3, 3, '13131213131', 'sdshbdusbguh', '2023-05-19', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(33, 2, 3, 3, 3, '13131319321u9', 'jsdnaHSh', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(34, 2, 3, 3, 3, '1291291729317', 'andjabsuahu', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(35, 2, 3, 3, 3, '123399931820', 'wenjebjw', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(36, 2, 3, 3, 3, '9797978685123', 'hvtdftfty', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(37, 2, 3, 3, 3, '121324245819', 'hjsbdjsbu', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(38, 2, 3, 3, 3, '1319389831', 'nhbhbvhv', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(39, 2, 3, 3, 3, '56568658586', 'hbjabdjb', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(40, 2, 3, 3, 3, '8786806654', 'gccg', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(41, 2, 3, 3, 3, '5335467457', ' bhbhv', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal  ', 'Tetap'),
(42, 2, 3, 3, 3, '172818628687', 'hsbday', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'aahbdha', 'Tetap'),
(43, 2, 3, 3, 3, '1361631688', 'gtftftgyyh', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(44, 2, 3, 3, 3, '12121831737', 'jandjabdj', '2023-05-17', 'Laki-Laki', '', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal', 'Tetap'),
(45, 2, 3, 3, 3, '12131313131', 'zdyagdy', '0000-00-00', 'Laki-Laki', '22222', 'Brangsong', 'kendal', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'Kendal  ', 'Tetap'),
(46, 2, 3, 3, 3, '1313139813', 'djjjeheheadada', '0000-00-00', 'Laki-Laki', '23whewhdw', 'hsfsfhfsfsf', 'sfsfs', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'adadad', 'Tetap'),
(47, 2, 3, 3, 3, 'adadadadad', 'adad', '0000-00-00', 'Laki-Laki', 'dadadsfsfs', 'sfsf', 'sfsf', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'aada', 'Tetap'),
(48, 2, 3, 3, 3, 'sfsfsf', 'sfsfsf', '3424-03-31', 'Laki-Laki', 'dsdsdf', 'ssfsfs', 'fsfsfsf', 'Sumatera Utara', 'WNI', 'Belum Menikah', '23232333', 'Tetap'),
(49, 2, 3, 3, 3, '2323', 'dsdsd', '3333-03-03', 'Laki-Laki', 'sfsfsfs', 'sfsfsf', 'fsfsfs', 'Sumatera Utara', 'WNI', 'Belum Menikah', '3q3q3', 'Tetap'),
(50, 2, 3, 3, 3, '32323', 'dsdsd', '2222-02-22', 'Laki-Laki', 'sdshsjdhsd', '347343', 'xvxv', 'Sumatera Utara', 'WNI', 'Belum Menikah', '34535', 'Tetap'),
(51, 2, 3, 3, 3, '224w', 'sdsds', '2323-03-31', 'Laki-Laki', '', 'fdfdf', 'dfdfdf', 'Sumatera Utara', 'WNI', 'Belum Menikah', '445r534', 'Tetap'),
(52, 2, 3, 3, 3, '83w4343', '3iu439u4', '0000-00-00', 'Laki-Laki', '', '2srwwr', 'ffsf', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'sfhfbf', 'Tetap'),
(53, 2, 3, 3, 3, '3494', 'alok jumsot', '2222-02-02', 'Laki-Laki', '', '23232', 'dgdd', 'Sumatera Utara', 'WNI', 'Belum Menikah', '11212', 'Tetap'),
(54, 2, 3, 3, 3, '4734734', 'DAPA ELITE CS', '3333-03-31', 'Laki-Laki', '', 'fsfsffsfsfsf', 'ffsf', 'Sumatera Utara', 'WNI', 'Belum Menikah', '439434', 'Tetap'),
(55, 2, 3, 3, 3, 'daudauda', 'RACING', '2222-02-22', 'Laki-Laki', '', '222e', 'ffzzfz', 'Sumatera Utara', 'WNI', 'Belum Menikah', '222', 'Tetap'),
(56, 2, 3, 3, 3, 'e84242', 'fani', '0000-00-00', 'Laki-Laki', '', '3242rsf', 'sffzf', 'Sumatera Utara', 'WNI', 'Belum Menikah', '2222', 'Tetap'),
(57, 2, 3, 3, 3, '53535wy', 'ihrhees', '2034-02-02', 'Laki-Laki', '', '33434', '437434', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'dhhs', 'Tetap'),
(58, 2, 3, 3, 3, '337274', 'DAPA RACING', '0000-00-00', 'Laki-Laki', '', '4343434343433', '343', 'Sumatera Utara', 'WNI', 'Belum Menikah', '32323', 'Tetap'),
(59, 2, 3, 3, 3, '227424', 'Piyo elite cs', '3000-03-02', 'Laki-Laki', '', 'trrggrgrg', 'grgrg', 'Sumatera Utara', 'WNI', 'Belum Menikah', 'qi39434', 'Tetap');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_datang`
-- (See below for the actual view)
--
CREATE TABLE `v_datang` (
`kode` int(11)
,`kd_warga` int(11)
,`desa_asal` varchar(100)
,`kecamatan_asal` varchar(100)
,`alamat_asal` varchar(100)
,`tgl_datang` date
,`kd_lurah` int(11)
,`kd_pekerjaan` int(11)
,`kd_pendidikan` int(11)
,`kd_agama` int(11)
,`nik` varchar(16)
,`nama` varchar(45)
,`tgl_lahir` date
,`jenis_kelamin` varchar(20)
,`alamat` text
,`kecamatan` varchar(30)
,`kabupaten` varchar(30)
,`provinsi` varchar(30)
,`negara` varchar(30)
,`status_kawin` varchar(20)
,`tempat_lahir` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kematian`
-- (See below for the actual view)
--
CREATE TABLE `v_kematian` (
`kode` int(11)
,`kd_warga` int(11)
,`tgl_kematian` date
,`tempat` varchar(200)
,`penyebab_kematian` varchar(100)
,`kd_lurah` int(11)
,`kd_pekerjaan` int(11)
,`kd_pendidikan` int(11)
,`kd_agama` int(11)
,`nik` varchar(16)
,`nama` varchar(45)
,`tgl_lahir` date
,`jenis_kelamin` varchar(20)
,`alamat` text
,`kecamatan` varchar(30)
,`kabupaten` varchar(30)
,`provinsi` varchar(30)
,`negara` varchar(30)
,`status_kawin` varchar(20)
,`tempat_lahir` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lahir`
-- (See below for the actual view)
--
CREATE TABLE `v_lahir` (
`kode` int(11)
,`kd_warga` int(11)
,`tgl_lahir` date
,`berat_lahir` varchar(50)
,`panjang_lahir` varchar(50)
,`nama_ibu` varchar(40)
,`nama_ayah` varchar(40)
,`saksi` varchar(40)
,`kd_lurah` int(11)
,`kd_pekerjaan` int(11)
,`kd_pendidikan` int(11)
,`kd_agama` int(11)
,`nik` varchar(16)
,`nama` varchar(45)
,`jenis_kelamin` varchar(20)
,`alamat` text
,`kecamatan` varchar(30)
,`kabupaten` varchar(30)
,`provinsi` varchar(30)
,`negara` varchar(30)
,`status_kawin` varchar(20)
,`tempat_lahir` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_penduduk`
-- (See below for the actual view)
--
CREATE TABLE `v_penduduk` (
`kode` int(11)
,`kd_lurah` int(11)
,`kd_pekerjaan` int(11)
,`kd_pendidikan` int(11)
,`kd_agama` int(11)
,`nik` varchar(16)
,`nama` varchar(45)
,`tgl_lahir` date
,`jenis_kelamin` varchar(20)
,`alamat` text
,`kecamatan` varchar(30)
,`kabupaten` varchar(30)
,`provinsi` varchar(30)
,`negara` varchar(30)
,`status_kawin` varchar(20)
,`tempat_lahir` varchar(100)
,`jenis` varchar(20)
,`agama` varchar(40)
,`pekerjaan` varchar(40)
,`lurah` varchar(40)
,`pendidikan` varchar(40)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pindah`
-- (See below for the actual view)
--
CREATE TABLE `v_pindah` (
`kd_lurah` int(11)
,`kd_pekerjaan` int(11)
,`kd_pendidikan` int(11)
,`kd_agama` int(11)
,`nik` varchar(16)
,`nama` varchar(45)
,`tgl_lahir` date
,`jenis_kelamin` varchar(20)
,`alamat` text
,`kabupaten` varchar(30)
,`provinsi` varchar(30)
,`negara` varchar(30)
,`status_kawin` varchar(20)
,`tempat_lahir` varchar(100)
,`kode` int(11)
,`kd_warga` int(11)
,`alasan_pindah` varchar(100)
,`alamat_pindah` varchar(100)
,`kecamatan` varchar(100)
,`lurah` varchar(100)
,`tgl_pindah` date
,`kec_awal` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_tetap`
-- (See below for the actual view)
--
CREATE TABLE `v_tetap` (
`kd_lurah` int(11)
,`kd_pekerjaan` int(11)
,`kd_pendidikan` int(11)
,`kd_agama` int(11)
,`nik` varchar(16)
,`nama` varchar(45)
,`tgl_lahir` date
,`jenis_kelamin` varchar(20)
,`alamat` text
,`kecamatan` varchar(30)
,`kabupaten` varchar(30)
,`provinsi` varchar(30)
,`negara` varchar(30)
,`status_kawin` varchar(20)
,`tempat_lahir` varchar(100)
,`kd_warga` int(11)
,`kode` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `v_datang`
--
DROP TABLE IF EXISTS `v_datang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_datang`  AS SELECT `tbl_pendatang`.`kode` AS `kode`, `tbl_pendatang`.`kd_warga` AS `kd_warga`, `tbl_pendatang`.`desa_asal` AS `desa_asal`, `tbl_pendatang`.`kecamatan_asal` AS `kecamatan_asal`, `tbl_pendatang`.`alamat_asal` AS `alamat_asal`, `tbl_pendatang`.`tgl_datang` AS `tgl_datang`, `tbl_warga`.`kd_lurah` AS `kd_lurah`, `tbl_warga`.`kd_pekerjaan` AS `kd_pekerjaan`, `tbl_warga`.`kd_pendidikan` AS `kd_pendidikan`, `tbl_warga`.`kd_agama` AS `kd_agama`, `tbl_warga`.`nik` AS `nik`, `tbl_warga`.`nama` AS `nama`, `tbl_warga`.`tgl_lahir` AS `tgl_lahir`, `tbl_warga`.`jenis_kelamin` AS `jenis_kelamin`, `tbl_warga`.`alamat` AS `alamat`, `tbl_warga`.`kecamatan` AS `kecamatan`, `tbl_warga`.`kabupaten` AS `kabupaten`, `tbl_warga`.`provinsi` AS `provinsi`, `tbl_warga`.`negara` AS `negara`, `tbl_warga`.`status_kawin` AS `status_kawin`, `tbl_warga`.`tempat_lahir` AS `tempat_lahir` FROM (`tbl_pendatang` join `tbl_warga` on(`tbl_warga`.`kode` = `tbl_pendatang`.`kd_warga`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_kematian`
--
DROP TABLE IF EXISTS `v_kematian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kematian`  AS SELECT `tbl_kematian`.`kode` AS `kode`, `tbl_kematian`.`kd_warga` AS `kd_warga`, `tbl_kematian`.`tgl_kematian` AS `tgl_kematian`, `tbl_kematian`.`tempat` AS `tempat`, `tbl_kematian`.`penyebab_kematian` AS `penyebab_kematian`, `tbl_warga`.`kd_lurah` AS `kd_lurah`, `tbl_warga`.`kd_pekerjaan` AS `kd_pekerjaan`, `tbl_warga`.`kd_pendidikan` AS `kd_pendidikan`, `tbl_warga`.`kd_agama` AS `kd_agama`, `tbl_warga`.`nik` AS `nik`, `tbl_warga`.`nama` AS `nama`, `tbl_warga`.`tgl_lahir` AS `tgl_lahir`, `tbl_warga`.`jenis_kelamin` AS `jenis_kelamin`, `tbl_warga`.`alamat` AS `alamat`, `tbl_warga`.`kecamatan` AS `kecamatan`, `tbl_warga`.`kabupaten` AS `kabupaten`, `tbl_warga`.`provinsi` AS `provinsi`, `tbl_warga`.`negara` AS `negara`, `tbl_warga`.`status_kawin` AS `status_kawin`, `tbl_warga`.`tempat_lahir` AS `tempat_lahir` FROM (`tbl_kematian` join `tbl_warga` on(`tbl_warga`.`kode` = `tbl_kematian`.`kd_warga`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_lahir`
--
DROP TABLE IF EXISTS `v_lahir`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lahir`  AS SELECT `tbl_lahir`.`kode` AS `kode`, `tbl_lahir`.`kd_warga` AS `kd_warga`, `tbl_lahir`.`tgl_lahir` AS `tgl_lahir`, `tbl_lahir`.`berat_lahir` AS `berat_lahir`, `tbl_lahir`.`panjang_lahir` AS `panjang_lahir`, `tbl_lahir`.`nama_ibu` AS `nama_ibu`, `tbl_lahir`.`nama_ayah` AS `nama_ayah`, `tbl_lahir`.`saksi` AS `saksi`, `tbl_warga`.`kd_lurah` AS `kd_lurah`, `tbl_warga`.`kd_pekerjaan` AS `kd_pekerjaan`, `tbl_warga`.`kd_pendidikan` AS `kd_pendidikan`, `tbl_warga`.`kd_agama` AS `kd_agama`, `tbl_warga`.`nik` AS `nik`, `tbl_warga`.`nama` AS `nama`, `tbl_warga`.`jenis_kelamin` AS `jenis_kelamin`, `tbl_warga`.`alamat` AS `alamat`, `tbl_warga`.`kecamatan` AS `kecamatan`, `tbl_warga`.`kabupaten` AS `kabupaten`, `tbl_warga`.`provinsi` AS `provinsi`, `tbl_warga`.`negara` AS `negara`, `tbl_warga`.`status_kawin` AS `status_kawin`, `tbl_warga`.`tempat_lahir` AS `tempat_lahir` FROM (`tbl_lahir` join `tbl_warga` on(`tbl_warga`.`kode` = `tbl_lahir`.`kd_warga`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_penduduk`
--
DROP TABLE IF EXISTS `v_penduduk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_penduduk`  AS SELECT `tbl_warga`.`kode` AS `kode`, `tbl_warga`.`kd_lurah` AS `kd_lurah`, `tbl_warga`.`kd_pekerjaan` AS `kd_pekerjaan`, `tbl_warga`.`kd_pendidikan` AS `kd_pendidikan`, `tbl_warga`.`kd_agama` AS `kd_agama`, `tbl_warga`.`nik` AS `nik`, `tbl_warga`.`nama` AS `nama`, `tbl_warga`.`tgl_lahir` AS `tgl_lahir`, `tbl_warga`.`jenis_kelamin` AS `jenis_kelamin`, `tbl_warga`.`alamat` AS `alamat`, `tbl_warga`.`kecamatan` AS `kecamatan`, `tbl_warga`.`kabupaten` AS `kabupaten`, `tbl_warga`.`provinsi` AS `provinsi`, `tbl_warga`.`negara` AS `negara`, `tbl_warga`.`status_kawin` AS `status_kawin`, `tbl_warga`.`tempat_lahir` AS `tempat_lahir`, `tbl_warga`.`jenis` AS `jenis`, `tbl_agama`.`uraian` AS `agama`, `tbl_pekerjaan`.`uraian` AS `pekerjaan`, `tbl_lurah`.`uraian` AS `lurah`, `tbl_pendidikan`.`uraian` AS `pendidikan` FROM ((((`tbl_warga` join `tbl_pekerjaan` on(`tbl_pekerjaan`.`kode` = `tbl_warga`.`kd_pekerjaan`)) join `tbl_agama` on(`tbl_agama`.`kode` = `tbl_warga`.`kd_agama`)) join `tbl_lurah` on(`tbl_lurah`.`kode` = `tbl_warga`.`kd_lurah`)) join `tbl_pendidikan` on(`tbl_pendidikan`.`kode` = `tbl_warga`.`kd_pendidikan`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_pindah`
--
DROP TABLE IF EXISTS `v_pindah`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pindah`  AS SELECT `tbl_warga`.`kd_lurah` AS `kd_lurah`, `tbl_warga`.`kd_pekerjaan` AS `kd_pekerjaan`, `tbl_warga`.`kd_pendidikan` AS `kd_pendidikan`, `tbl_warga`.`kd_agama` AS `kd_agama`, `tbl_warga`.`nik` AS `nik`, `tbl_warga`.`nama` AS `nama`, `tbl_warga`.`tgl_lahir` AS `tgl_lahir`, `tbl_warga`.`jenis_kelamin` AS `jenis_kelamin`, `tbl_warga`.`alamat` AS `alamat`, `tbl_warga`.`kabupaten` AS `kabupaten`, `tbl_warga`.`provinsi` AS `provinsi`, `tbl_warga`.`negara` AS `negara`, `tbl_warga`.`status_kawin` AS `status_kawin`, `tbl_warga`.`tempat_lahir` AS `tempat_lahir`, `tbl_pindah`.`kode` AS `kode`, `tbl_pindah`.`kd_warga` AS `kd_warga`, `tbl_pindah`.`alasan_pindah` AS `alasan_pindah`, `tbl_pindah`.`alamat_pindah` AS `alamat_pindah`, `tbl_pindah`.`kecamatan` AS `kecamatan`, `tbl_pindah`.`lurah` AS `lurah`, `tbl_pindah`.`tgl_pindah` AS `tgl_pindah`, `tbl_warga`.`kecamatan` AS `kec_awal` FROM (`tbl_warga` join `tbl_pindah` on(`tbl_warga`.`kode` = `tbl_pindah`.`kd_warga`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_tetap`
--
DROP TABLE IF EXISTS `v_tetap`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_tetap`  AS SELECT `tbl_warga`.`kd_lurah` AS `kd_lurah`, `tbl_warga`.`kd_pekerjaan` AS `kd_pekerjaan`, `tbl_warga`.`kd_pendidikan` AS `kd_pendidikan`, `tbl_warga`.`kd_agama` AS `kd_agama`, `tbl_warga`.`nik` AS `nik`, `tbl_warga`.`nama` AS `nama`, `tbl_warga`.`tgl_lahir` AS `tgl_lahir`, `tbl_warga`.`jenis_kelamin` AS `jenis_kelamin`, `tbl_warga`.`alamat` AS `alamat`, `tbl_warga`.`kecamatan` AS `kecamatan`, `tbl_warga`.`kabupaten` AS `kabupaten`, `tbl_warga`.`provinsi` AS `provinsi`, `tbl_warga`.`negara` AS `negara`, `tbl_warga`.`status_kawin` AS `status_kawin`, `tbl_warga`.`tempat_lahir` AS `tempat_lahir`, `tbl_penduduk_tetap`.`kd_warga` AS `kd_warga`, `tbl_penduduk_tetap`.`kode` AS `kode` FROM (`tbl_warga` join `tbl_penduduk_tetap` on(`tbl_warga`.`kode` = `tbl_penduduk_tetap`.`kd_warga`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_kematian`
--
ALTER TABLE `tbl_kematian`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_lahir`
--
ALTER TABLE `tbl_lahir`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_lurah`
--
ALTER TABLE `tbl_lurah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_pekerjaan`
--
ALTER TABLE `tbl_pekerjaan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_pendatang`
--
ALTER TABLE `tbl_pendatang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_penduduk_tetap`
--
ALTER TABLE `tbl_penduduk_tetap`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_pindah`
--
ALTER TABLE `tbl_pindah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_warga`
--
ALTER TABLE `tbl_warga`
  ADD PRIMARY KEY (`kode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agama`
--
ALTER TABLE `tbl_agama`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_kematian`
--
ALTER TABLE `tbl_kematian`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_lahir`
--
ALTER TABLE `tbl_lahir`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lurah`
--
ALTER TABLE `tbl_lurah`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pekerjaan`
--
ALTER TABLE `tbl_pekerjaan`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pendatang`
--
ALTER TABLE `tbl_pendatang`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pendidikan`
--
ALTER TABLE `tbl_pendidikan`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_penduduk_tetap`
--
ALTER TABLE `tbl_penduduk_tetap`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_pindah`
--
ALTER TABLE `tbl_pindah`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_warga`
--
ALTER TABLE `tbl_warga`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
