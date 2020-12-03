-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Sep 2020 pada 05.49
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrestoran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblkategori`
--

CREATE TABLE `tblkategori` (
  `idkategori` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblkategori`
--

INSERT INTO `tblkategori` (`idkategori`, `kategori`, `keterangan`) VALUES
(1, 'Makanan Ringan', ''),
(12, 'Minuman', ''),
(15, 'Makanan Berat', ''),
(21, 'Sayuran', 'Hijau'),
(23, 'Camilan', 'Enak'),
(25, 'Desert', 'Enak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblmenu`
--

CREATE TABLE `tblmenu` (
  `idmenu` int(11) NOT NULL,
  `idkategori` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `harga` float NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblmenu`
--

INSERT INTO `tblmenu` (`idmenu`, `idkategori`, `menu`, `gambar`, `harga`, `keterangan`) VALUES
(1, 15, 'Nasi Goreng', 'Makanan_2.jpg', 50000, 'Nasi Goreng Setan Lvl 2'),
(4, 15, 'Bakso', 'Makanan.jpg', 15000, 'Bakso Kepala Tuyul'),
(7, 15, 'Sate Kambing', 'Makanan_4.jpg', 15000, 'Sate Kambing Setan'),
(8, 12, 'Cincau', 'Minuman.jpg', 5000, 'Yeos Cincau'),
(9, 15, 'Soto Ayam', 'Makanan_7.jpg', 10000, 'Soto Ayam Aceh'),
(12, 12, 'Frape', 'Minuman_32.jpg', 10000, 'Coklat Frape'),
(13, 12, 'Air Mineral', 'Minuman_21.jpg', 3000, 'Cleo'),
(14, 1, 'Brownies', 'Makanan_81.jpg', 12000, 'Brownies Lumer Beraneka Rasa'),
(15, 12, 'Es Teh', 'Minuman_51.jpg', 3500, 'Teh Lemon'),
(16, 12, 'Es Teh', 'Minuman_43.jpg', 3000, 'Es Teh Manis'),
(17, 1, 'Gorengan', 'Makanan_9.jpg', 10000, 'Rujak Cireng'),
(19, 1, 'Boba Coklat', 'boba.jpg', 10000, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblorder`
--

CREATE TABLE `tblorder` (
  `idorder` int(11) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `tglorder` date NOT NULL,
  `total` float NOT NULL DEFAULT '0',
  `bayar` float NOT NULL DEFAULT '0',
  `kembali` float NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblorder`
--

INSERT INTO `tblorder` (`idorder`, `idpelanggan`, `tglorder`, `total`, `bayar`, `kembali`, `status`) VALUES
(1, 4, '2020-02-15', 85000, 85000, 0, 1),
(2, 4, '2020-02-15', 65000, 65000, 0, 1),
(3, 4, '2020-02-16', 120000, 120000, 0, 1),
(4, 10, '2020-02-16', 69500, 100000, 30500, 1),
(5, 4, '2020-02-17', 50000, 50000, 0, 1),
(6, 4, '2020-02-17', 30000, 30000, 0, 1),
(7, 4, '2020-02-17', 50000, 50000, 0, 1),
(8, 5, '2020-02-18', 15000, 15000, 0, 1),
(9, 4, '2020-02-19', 27000, 30000, 3000, 1),
(10, 2, '2020-02-21', 40000, 50000, 10000, 1),
(11, 2, '2020-02-21', 300000, 300000, 0, 1),
(12, 4, '2020-02-21', 70000, 75000, 5000, 1),
(13, 4, '2020-02-26', 150000, 150000, 0, 1),
(14, 2, '2020-02-26', 120000, 120000, 0, 1),
(15, 4, '2020-02-27', 100000, 190000, 90000, 1),
(16, 6, '2020-02-27', 130000, 130000, 0, 1),
(17, 6, '2020-02-27', 50000, 50000, 0, 1),
(18, 4, '2020-02-27', 100000, 100000, 0, 1),
(19, 4, '2020-02-27', 30000, 30000, 0, 1),
(20, 4, '2020-02-27', 10000, 10000, 0, 1),
(21, 2, '2020-02-27', 100000, 100000, 0, 1),
(22, 12, '2020-02-27', 25000, 25000, 0, 1),
(23, 9, '2020-02-27', 107000, 110000, 3000, 1),
(24, 9, '2020-02-27', 53500, 55000, 1500, 1),
(25, 4, '2020-02-28', 100000, 100000, 0, 1),
(26, 4, '2020-03-04', 139000, 140000, 1000, 1),
(27, 4, '2020-03-05', 40000, 40000, 0, 1),
(28, 4, '2020-03-08', 200000, 200000, 0, 1),
(29, 4, '2020-03-17', 100000, 100000, 0, 1),
(30, 4, '2020-04-01', 127000, 300000, 173000, 1),
(31, 4, '2020-06-10', 120000, 120000, 0, 1),
(32, 4, '2020-06-10', 5000, 5000, 0, 1),
(33, 15, '2020-06-25', 120000, 120000, 0, 1),
(34, 4, '2020-07-05', 50000, 55000, 5000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblorderdetail`
--

CREATE TABLE `tblorderdetail` (
  `idorderdetail` int(11) NOT NULL,
  `idorder` int(11) NOT NULL,
  `idmenu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `hargajual` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblorderdetail`
--

INSERT INTO `tblorderdetail` (`idorderdetail`, `idorder`, `idmenu`, `jumlah`, `hargajual`) VALUES
(1, 1, 7, 10, 2000),
(2, 1, 4, 1, 2500),
(3, 15, 7, 10, 2000),
(4, 15, 4, 1, 2500),
(5, 15, 7, 10, 2000),
(6, 15, 4, 1, 2500),
(7, 15, 7, 10, 2000),
(8, 15, 4, 1, 2500),
(9, 15, 7, 10, 2000),
(10, 15, 4, 1, 2500),
(11, 16, 7, 10, 2000),
(12, 16, 4, 1, 2500),
(13, 17, 7, 10, 2000),
(14, 17, 4, 1, 2500),
(15, 18, 7, 10, 2000),
(16, 18, 4, 1, 2500),
(17, 19, 7, 11, 2000),
(18, 19, 4, 1, 2500),
(19, 20, 7, 11, 2000),
(20, 20, 4, 1, 2500),
(21, 21, 4, 4, 2500),
(22, 21, 7, 1, 2000),
(23, 23, 4, 2, 2500),
(24, 24, 4, 3, 2500),
(25, 24, 7, 1, 2000),
(26, 24, 1, 1, 1000),
(27, 25, 4, 2, 2500),
(28, 25, 7, 1, 2000),
(29, 25, 1, 1, 1000),
(30, 26, 7, 2, 2000),
(31, 27, 7, 2, 2000),
(32, 28, 7, 1, 2000),
(33, 29, 7, 1, 2000),
(34, 30, 7, 1, 2000),
(35, 31, 7, 1, 2000),
(36, 32, 4, 6, 2500),
(37, 33, 4, 4, 2500),
(38, 33, 1, 10, 1000),
(39, 34, 7, 1, 2000),
(40, 35, 7, 1, 2000),
(41, 36, 7, 3, 2000),
(42, 36, 4, 4, 2500),
(43, 37, 1, 1, 1000),
(44, 38, 1, 4, 1000),
(45, 38, 4, 6, 2500),
(46, 38, 7, 7, 2000),
(47, 39, 7, 5, 2000),
(48, 40, 7, 2, 2000),
(49, 41, 9, 1, 10000),
(50, 41, 1, 1, 1000),
(51, 42, 7, 5, 2000),
(52, 43, 7, 5, 2000),
(53, 44, 9, 5, 10000),
(54, 45, 4, 10, 2500),
(55, 46, 9, 1, 10000),
(56, 47, 7, 5, 2000),
(57, 49, 8, 2, 2000),
(58, 49, 9, 2, 10000),
(59, 49, 1, 2, 1000),
(60, 0, 1, 1, 50000),
(61, 1, 1, 1, 50000),
(62, 1, 12, 1, 10000),
(63, 1, 7, 1, 15000),
(64, 1, 9, 1, 10000),
(65, 2, 7, 1, 15000),
(66, 2, 1, 1, 50000),
(67, 3, 1, 2, 50000),
(68, 3, 12, 1, 10000),
(69, 3, 9, 1, 10000),
(70, 4, 12, 1, 10000),
(71, 4, 14, 3, 12000),
(72, 4, 15, 1, 3500),
(73, 4, 8, 1, 5000),
(74, 4, 4, 1, 15000),
(75, 5, 1, 1, 50000),
(76, 6, 7, 2, 15000),
(77, 7, 1, 1, 50000),
(78, 8, 8, 3, 5000),
(79, 9, 14, 1, 12000),
(80, 9, 8, 1, 5000),
(81, 9, 12, 1, 10000),
(82, 10, 12, 2, 10000),
(83, 10, 9, 2, 10000),
(84, 11, 1, 5, 50000),
(85, 11, 12, 5, 10000),
(86, 12, 9, 2, 10000),
(87, 12, 7, 2, 15000),
(88, 12, 12, 2, 10000),
(89, 13, 7, 10, 15000),
(90, 14, 1, 2, 50000),
(91, 14, 12, 2, 10000),
(92, 15, 1, 2, 50000),
(93, 16, 1, 2, 50000),
(94, 16, 7, 2, 15000),
(95, 17, 1, 1, 50000),
(96, 18, 1, 2, 50000),
(97, 19, 7, 2, 15000),
(98, 20, 12, 1, 10000),
(99, 21, 1, 2, 50000),
(100, 22, 7, 1, 15000),
(101, 22, 12, 1, 10000),
(102, 23, 1, 2, 50000),
(103, 23, 15, 2, 3500),
(104, 24, 1, 1, 50000),
(105, 24, 15, 1, 3500),
(106, 25, 1, 2, 50000),
(107, 26, 12, 1, 10000),
(108, 26, 13, 3, 3000),
(109, 26, 9, 2, 10000),
(110, 26, 1, 2, 50000),
(111, 27, 12, 2, 10000),
(112, 27, 9, 2, 10000),
(113, 28, 1, 4, 50000),
(114, 29, 1, 2, 50000),
(115, 30, 1, 2, 50000),
(116, 30, 15, 2, 3500),
(117, 30, 12, 2, 10000),
(118, 31, 1, 2, 50000),
(119, 31, 12, 2, 10000),
(120, 32, 8, 1, 5000),
(121, 33, 1, 2, 50000),
(122, 33, 12, 1, 10000),
(123, 33, 19, 1, 10000),
(124, 34, 1, 1, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpelanggan`
--

CREATE TABLE `tblpelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `pelanggan` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tblpelanggan`
--

INSERT INTO `tblpelanggan` (`idpelanggan`, `pelanggan`, `alamat`, `telp`, `email`, `password`, `aktif`) VALUES
(2, 'Yousyta Fany', 'Buduran', '082232931511', 'yousyta@gmail.com', '123', 1),
(4, 'Jaihan Abidin', 'Karang Puri', '085604015383', 'jeabede20@gmail.com', '110902', 1),
(5, 'Enrique Lazuardi', 'Tanggulangin', '087754434901', 'enrique@gmail.com', '251102', 1),
(6, 'Qolbi Adi', 'Juanda', '089773454113', 'qolbiadi@gmail.com', '1234', 1),
(8, 'Abdul Kharis', 'Tulangan', '085665443556', 'kharis@gmail.com', '890', 1),
(9, 'Rosalia', 'Wonoayu', '085676200041', 'rosalia@gmail.com', '1122', 1),
(10, 'Syahrul Afandi', 'Mars', '011111111111', 'syahrul@gmail.com', '111', 1),
(11, 'Firas', 'Sidoarjo', '123', 'Firas@gmail.com', '123', 1),
(12, 'Lina Sari', 'Plaosan', '089776633456', 'lina@gmail.com', '1122', 1),
(13, 'Haidar Azam', 'Banjarkemantren', '085112133432', 'azam@gmail.com', '222', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbluser`
--

CREATE TABLE `tbluser` (
  `iduser` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbluser`
--

INSERT INTO `tbluser` (`iduser`, `user`, `email`, `password`, `level`, `aktif`) VALUES
(20, 'Anji', 'anji@gmail.com', '$2y$10$Me3zDZNEhJgJVErDHP.f3O/SN6QtZX6IVJ3Lc9IYhVoRzuF.U9UDy', 'Admin', 1),
(21, 'Koki', 'koki@gmail.com', '$2y$10$4tAi/pT9xEa6zoveirqX9.ZWaa/Vj705e.b7wO5PG3qXCSsN.k2qm', 'Koki', 1),
(22, 'Kasir', 'kasir@gmail.com', '$2y$10$8PKJO5s5Pu4hhWlYyv/25.8s0k6krV0fLWkV2E/pFFE6iMkVnwyjG', 'Kasir', 1),
(23, 'Jeabede', 'jeabede@gmail.com', '$2y$10$Hzgpk0WfIS6Ql9dnAAQx4.b.VMICRLTgmrXfFvslTztVp1DSDIjGe', 'Admin', 1),
(24, 'Youstaf', 'youstaf@gmail.com', '$2y$10$ufL7pE6AgirDApEj1qgjY.0DF3myH51Ugo0oVpL3k78nPzW54/t32', 'Admin', 1),
(25, 'Admin', 'admin@gmail.com', '$2y$10$10imO.Tlni.TsPmECG0iBuYo9gLffnwlRAbSNFL/gM53S0lyet/wK', 'Admin', 1);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vorder`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vorder` (
`idorder` int(11)
,`idpelanggan` int(11)
,`tglorder` date
,`total` float
,`bayar` float
,`kembali` float
,`status` int(11)
,`pelanggan` varchar(100)
,`alamat` varchar(200)
,`telp` varchar(100)
,`email` varchar(150)
,`password` varchar(255)
,`aktif` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vorderdetail`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vorderdetail` (
`idorderdetail` int(11)
,`idorder` int(11)
,`idmenu` int(11)
,`jumlah` int(11)
,`hargajual` float
,`idkategori` int(11)
,`menu` varchar(100)
,`gambar` varchar(200)
,`harga` float
,`kategori` varchar(100)
,`idpelanggan` int(11)
,`tglorder` date
,`total` float
,`bayar` float
,`kembali` float
,`status` int(11)
,`pelanggan` varchar(100)
,`alamat` varchar(200)
,`telp` varchar(100)
,`email` varchar(150)
,`password` varchar(255)
,`aktif` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `vorder`
--
DROP TABLE IF EXISTS `vorder`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vorder`  AS  select `tblorder`.`idorder` AS `idorder`,`tblorder`.`idpelanggan` AS `idpelanggan`,`tblorder`.`tglorder` AS `tglorder`,`tblorder`.`total` AS `total`,`tblorder`.`bayar` AS `bayar`,`tblorder`.`kembali` AS `kembali`,`tblorder`.`status` AS `status`,`tblpelanggan`.`pelanggan` AS `pelanggan`,`tblpelanggan`.`alamat` AS `alamat`,`tblpelanggan`.`telp` AS `telp`,`tblpelanggan`.`email` AS `email`,`tblpelanggan`.`password` AS `password`,`tblpelanggan`.`aktif` AS `aktif` from (`tblpelanggan` join `tblorder` on((`tblpelanggan`.`idpelanggan` = `tblorder`.`idpelanggan`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vorderdetail`
--
DROP TABLE IF EXISTS `vorderdetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vorderdetail`  AS  select `tblorderdetail`.`idorderdetail` AS `idorderdetail`,`tblorderdetail`.`idorder` AS `idorder`,`tblorderdetail`.`idmenu` AS `idmenu`,`tblorderdetail`.`jumlah` AS `jumlah`,`tblorderdetail`.`hargajual` AS `hargajual`,`tblmenu`.`idkategori` AS `idkategori`,`tblmenu`.`menu` AS `menu`,`tblmenu`.`gambar` AS `gambar`,`tblmenu`.`harga` AS `harga`,`tblkategori`.`kategori` AS `kategori`,`tblorder`.`idpelanggan` AS `idpelanggan`,`tblorder`.`tglorder` AS `tglorder`,`tblorder`.`total` AS `total`,`tblorder`.`bayar` AS `bayar`,`tblorder`.`kembali` AS `kembali`,`tblorder`.`status` AS `status`,`tblpelanggan`.`pelanggan` AS `pelanggan`,`tblpelanggan`.`alamat` AS `alamat`,`tblpelanggan`.`telp` AS `telp`,`tblpelanggan`.`email` AS `email`,`tblpelanggan`.`password` AS `password`,`tblpelanggan`.`aktif` AS `aktif` from ((((`tblorderdetail` join `tblorder` on((`tblorderdetail`.`idorder` = `tblorder`.`idorder`))) join `tblpelanggan` on((`tblorder`.`idpelanggan` = `tblpelanggan`.`idpelanggan`))) join `tblmenu` on((`tblorderdetail`.`idmenu` = `tblmenu`.`idmenu`))) join `tblkategori` on((`tblmenu`.`idkategori` = `tblkategori`.`idkategori`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblkategori`
--
ALTER TABLE `tblkategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indeks untuk tabel `tblmenu`
--
ALTER TABLE `tblmenu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indeks untuk tabel `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`idorder`);

--
-- Indeks untuk tabel `tblorderdetail`
--
ALTER TABLE `tblorderdetail`
  ADD PRIMARY KEY (`idorderdetail`);

--
-- Indeks untuk tabel `tblpelanggan`
--
ALTER TABLE `tblpelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indeks untuk tabel `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tblkategori`
--
ALTER TABLE `tblkategori`
  MODIFY `idkategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `tblmenu`
--
ALTER TABLE `tblmenu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `idorder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `tblorderdetail`
--
ALTER TABLE `tblorderdetail`
  MODIFY `idorderdetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `tblpelanggan`
--
ALTER TABLE `tblpelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
