-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 11, 2026 at 02:00 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `26clouddbpy`
--

-- --------------------------------------------------------

--
-- Table structure for table `filetb`
--

CREATE TABLE `filetb` (
  `id` bigint(20) NOT NULL auto_increment,
  `OwnerName` varchar(250) NOT NULL,
  `FileInfo` varchar(500) NOT NULL,
  `FileName` varchar(250) NOT NULL,
  `Pukey` varchar(250) NOT NULL,
  `Pvkey` varchar(250) NOT NULL,
  `Hash1` varchar(500) NOT NULL,
  `Hash2` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `filetb`
--

INSERT INTO `filetb` (`id`, `OwnerName`, `FileInfo`, `FileName`, `Pukey`, `Pvkey`, `Hash1`, `Hash2`) VALUES
(1, 'san', 'mm', '6774541tamilmv77.txt', '02601f3e7dddbd85ab45046b68861eb8d6935bbcb978e9b922ab585b9808785033', '8af66c7b7528d8c8627106cc26f134165909d25ea86a96ebf19792155ddfdfa8', '0', '451B76DD049790AB7ADCFDD52FF4F73958AF26119B08828255B13951108EFAAD'),
(2, 'san', 'nbmbn', '2541981tamil8.txt', '02ef6ebe55a0eeeb0a5faa82662f9c117f6aa09e7aacd5efb734fdb465b6b5b9e8', '50d3508ac579cc8afd4cd27df00a0de8373feeabb2e644f070b6347e47eb0962', '451B76DD049790AB7ADCFDD52FF4F73958AF26119B08828255B13951108EFAAD', 'CA8ABFAB96A5E5E8E57569A267AE78A6E108AF3A75668DCD4482439059487584');

-- --------------------------------------------------------

--
-- Table structure for table `ownertb`
--

CREATE TABLE `ownertb` (
  `id` bigint(20) NOT NULL auto_increment,
  `Name` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Status` varchar(250) NOT NULL,
  `LoginKey` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `ownertb`
--

INSERT INTO `ownertb` (`id`, `Name`, `Mobile`, `Email`, `Address`, `UserName`, `Password`, `Status`, `LoginKey`) VALUES
(6, 'sanowner', '9486365535', 'sangeeth5535@gmail.com', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'sanowner', 'sanowner', 'Active', '9922'),
(7, 'sangeeth Kumar', '9486365535', 'sangeeth5535@gmail.com', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'san', 'san', 'Active', '2577');

-- --------------------------------------------------------

--
-- Table structure for table `regtb`
--

CREATE TABLE `regtb` (
  `id` bigint(20) NOT NULL auto_increment,
  `Name` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Status` varchar(250) NOT NULL,
  `LoginKey` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `regtb`
--

INSERT INTO `regtb` (`id`, `Name`, `Mobile`, `Email`, `Address`, `UserName`, `Password`, `Status`, `LoginKey`) VALUES
(4, 'sanuser', '9486365535', 'sangeeth5535@gmail.com', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'sanuser', 'sanuser', 'Active', '4735'),
(5, 'sangeeth Kumar', '9486365535', 'sangeeth5535@gmail.com', 'No 16, Samnath Plaza, Madurai Main Road, Melapudhur', 'san', 'san', 'Active', '9553');

-- --------------------------------------------------------

--
-- Table structure for table `userfiletb`
--

CREATE TABLE `userfiletb` (
  `id` bigint(20) NOT NULL auto_increment,
  `FileId` varchar(250) NOT NULL,
  `OwnerName` varchar(250) NOT NULL,
  `Filename` varchar(250) NOT NULL,
  `PrKey` varchar(250) NOT NULL,
  `UserName` varchar(250) NOT NULL,
  `Status` varchar(250) NOT NULL,
  `ImageName` varchar(250) NOT NULL,
  `Imagedkey` varchar(250) NOT NULL,
  `Unhidekey` varchar(250) NOT NULL,
  `Decryptkey` varchar(250) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `userfiletb`
--

INSERT INTO `userfiletb` (`id`, `FileId`, `OwnerName`, `Filename`, `PrKey`, `UserName`, `Status`, `ImageName`, `Imagedkey`, `Unhidekey`, `Decryptkey`) VALUES
(2, '4', 'sanowner', '3051tamilmv78.txt', 'ecd3f44cf31afa79744d42ee8a47c5931022e003e10cf2ae7c45c0474afbcbf3', 'sanuser', 'Approved', '528download.png', '4fbbc9809e54e750ca756ad38d559103392f446f87b8c4ff6437b20710905a58', '1234', 'EvL-IVNY6URKWoMov5l3P3ZSo-h1lvoyu83MyT-eUVE='),
(3, '5', 'owner', '882aircraft.docx', '5cffb0547d3b38c9d0fa03da2a065d7eb0bddedb346945d5b8bf4a885f38b333', 'user', 'Approved', '465download.png', '36fcd2d58fbc93cb952f8fbbd3f5bb246039f7e35b0967e54a59cd6ed2ffebc9', '1234', 'DAGm2fg-DiJPQDv2kLFmUAwKrN0byV7X_swSGGtoZ3g='),
(4, '6', 'san5535', '6021tamilmv.txt', '39d90ce797d4fdbe79ef124c0cccabf51433661c0e2c4058bbd238c4d6b3c596', 'san5535', 'Approved', '27476.png', 'f4c03f2c971369e22bb049a72542c05c4a2e25af55a21f7cf5c8f46e146c6be1', '12345678', '4OQSDKAJMl7neT39kytwc-LPYSccnvtfGAePbmmDkkQ='),
(5, '8', 'san553535', '7101223.pdf', '55fd01995cd79a76e5c05d6e19af4d8e6be9bfe54a4206ff79b2c3c0b1d38bc7', 'san5535', 'Approved', '18676.png', '0ec98b9a9dd1b985a73db93145dc2db9034ae826f1e739ee77f298a7315548d2', '12345', 'FujnYnxP-DtZdcta5WaEzvgQWv2QeXQx-7kkM2wzXgY='),
(6, '10', 'sanowner', '835_0_630.jpeg', 'dce3adcd81d5670f4d5d815a24dc04a826dd0a6cca5b8dee9fabf78089734442', 'sanuser', 'Approved', '758Chrysanthemum.png', '0170f2a5288a4ff5537e41a50fd9b2396db08c35f7d6456241f44ecca55c76ab', '1234', 'VshxHq6gD7aJCbPYAQuU953LInWKMKVrG-0si46vewc='),
(7, '11', 'san', '1981tamil8.txt', 'edea27200070f13de35dcad2147c4c41b64e016bb48fb6143480f5e4a7b88608', 'san', 'Approved', '981345.png', '75c592f6904c1c0aa367b8263474e30f497bdc3f7ea7b271e4146a83fab62ec1', '1234', 'aSWWDQttW2niHsEVliB7zENGST0rEo_utwcdU48A6CY=');
