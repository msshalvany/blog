-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 23, 2022 at 03:24 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `head` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `discription` varchar(120) COLLATE utf8_persian_ci NOT NULL,
  `text` text COLLATE utf8_persian_ci NOT NULL,
  `userid` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `liks` int NOT NULL,
  `comment` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`head`, `discription`, `text`, `userid`, `id`, `liks`, `comment`) VALUES
('salam', 'salsm  asdasffs sd fsdf sd ', 'salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd salsm  asdasffs sd fsdf sd ', 1, 18, 1, 2),
('hsghhey yrej ty jy jj ', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej t.....', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj v', 3, 11, 0, 0),
('hsghhey yrej ty jy jj ', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej t.....', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj v', 3, 12, 0, 0),
('hsghhey yrej ty jy jj ', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej t.....', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj v', 3, 13, 0, 0),
('hsghhey yrej ty jy jj ', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej t.....', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj v', 3, 14, 0, 0),
('hsghhey yrej ty jy jj ', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej t.....', 'hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj hsghhey yrej ty jy jj v', 3, 15, 0, 0),
('czxzxcxzc', 'czxcxzczczxczxc.....', 'czxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzcczxzxcxzc', 2, 40, 0, 0),
('asdasdas', 'asdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdas.....', 'asdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdasasdasdas', 11, 50, 0, 0),
('dfasdfsdfsd', 'dfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfa.....', 'dfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsddfasdfsdfsd', 11, 51, 0, 1),
('dasdasdas', 'dasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasda.....', 'dasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasv', 11, 52, 0, 0),
('tgergreger', 'tgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergreger.....', 'tgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergreger', 11, 53, 0, 0),
('tgergreger', 'tgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergreger.....', 'tgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergregertgergreger', 11, 54, 0, 0),
('adsadasdasdas', 'adsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasad.....', 'adsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasadsadasdasdasv', 11, 55, 0, 0),
('ddddddddddddd', 'asdddddddddddddddd.....', 'asdddddddddddddddd', 11, 56, 0, 0),
('hhhhhhhhhhhhhhhhh', 'hhhhhhhhhhhhhhhhhhhhh.....', 'hhhhhhhhhhhhhhhhhhhhh', 11, 57, 0, 0),
('ttttttttttttttt', 'tttttttttttttttttttttttttttttttttt.....', 'tttttttttttttttttttttttttttttttttt', 11, 58, 1, 0),
('uuuuuuuuuuuu', 'uuuuuuuuuuu.....', 'uuuuuuuuuuu', 11, 59, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `coment_blog`
--

DROP TABLE IF EXISTS `coment_blog`;
CREATE TABLE IF NOT EXISTS `coment_blog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `blogid` int NOT NULL,
  `coment` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `coment_blog`
--

INSERT INTO `coment_blog` (`id`, `userid`, `blogid`, `coment`) VALUES
(25, 11, 18, 'asdfsadfasd'),
(24, 11, 18, 'dasdasdad'),
(23, 11, 51, 'gdfgdfgdfgdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(123) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(123) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(12) COLLATE utf8_persian_ci NOT NULL,
  `liked` text COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `liked`) VALUES
(3, 'salam', 'salam@gmail.com', '123', '0,123,31423,2342,23423,234'),
(11, 'salam cahtory', 'asd@gmail.com', '123', '\r\n,45,58'),
(10, 'asd', 'whowqeg@gamil.com', '123', '0'),
(12, 'salamsalam', 'aaaaaaaaa@gamil.com', '123', ',18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
