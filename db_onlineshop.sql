-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 03:06 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_onlineshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `idadmin` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  PRIMARY KEY (`idadmin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(1, 'admin', 'admin', 'Agil Saputra');

-- --------------------------------------------------------

--
-- Table structure for table `jasakirim`
--

CREATE TABLE IF NOT EXISTS `jasakirim` (
  `idjasa` int(11) NOT NULL AUTO_INCREMENT,
  `idadmin` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `logo` text NOT NULL,
  `detail` text NOT NULL,
  `tarif` double NOT NULL,
  PRIMARY KEY (`idjasa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jasakirim`
--

INSERT INTO `jasakirim` (`idjasa`, `idadmin`, `nama`, `logo`, `detail`, `tarif`) VALUES
(1, 1, 'JNT', 'LOGO-JNT.png', 'Jasa kirim cepat dan terpecaya', 15000),
(2, 1, 'JNE', 'Logo JNE.png', 'Pengiriman barang apapun', 14000),
(3, 1, 'Shoppe Express', 'spx.png', 'Jasa pengiriman dari shoppe', 13500);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `idkat` int(11) NOT NULL AUTO_INCREMENT,
  `idadmin` int(11) NOT NULL,
  `namakat` varchar(40) NOT NULL,
  `ketkat` text NOT NULL,
  `tglkat` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`idkat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idkat`, `idadmin`, `namakat`, `ketkat`, `tglkat`) VALUES
(1, 1, 'barang bagus bgt', 'barang bagus', '2023-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `idproduk` int(11) NOT NULL AUTO_INCREMENT,
  `idkat` int(11) NOT NULL,
  `idadmin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL,
  `spesifikasi` text NOT NULL,
  `detail` text NOT NULL,
  `diskon` int(11) NOT NULL,
  `berat` float NOT NULL,
  `isikotak` text NOT NULL,
  `foto1` text NOT NULL,
  `foto2` text NOT NULL,
  `tglproduk` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`idproduk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idproduk`, `idkat`, `idadmin`, `nama`, `harga`, `stok`, `spesifikasi`, `detail`, `diskon`, `berat`, `isikotak`, `foto1`, `foto2`, `tglproduk`) VALUES
(2, 1, 1, 'Iphone 13', 13000000, 5, '64 Gb', 'smartphone apple', 15, 1, 'casan', 'ip13 pink.jpeg', 'ip13.jpeg', '2023-12-05 15:32:54'),
(3, 1, 1, 'Laptop Pavilion', 21000000, 10, 'Core i9 gen 13 SSD 1 TB', 'Laptop Keluaran 2022', 5, 1, 'Casan, buku garansi,buku petunjuk', 'laptophp.jpg', 'laptophppv.jpg', '2023-12-06 11:44:09');
