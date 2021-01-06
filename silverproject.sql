-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2021 at 09:36 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `silverproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `articlecategory`
--

CREATE TABLE `articlecategory` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\ArticleCategory') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\ArticleCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ArticleHolderID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articlecategory`
--

INSERT INTO `articlecategory` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `ArticleHolderID`) VALUES
(1, 'SilverStripe\\Home\\ArticleCategory', '2020-12-23 08:35:10', '2020-12-23 08:35:10', 'Cat1', 12),
(2, 'SilverStripe\\Home\\ArticleCategory', '2020-12-23 08:35:21', '2020-12-23 08:35:21', 'Cat 2', 12);

-- --------------------------------------------------------

--
-- Table structure for table `articlecomments`
--

CREATE TABLE `articlecomments` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\ArticleComment') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\ArticleComment',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `ArticlePageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articlecomments`
--

INSERT INTO `articlecomments` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Email`, `Comment`, `ArticlePageID`) VALUES
(1, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 04:42:46', '2020-12-22 04:42:46', 'Supun Silva', 'sinergylanka@gmail.com', 'cxvvcv', 14),
(2, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 04:43:58', '2020-12-22 04:43:58', 'Supun Lanka Chathuranga Silva', 'sinergylanka@gmail.com', NULL, 14),
(3, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 04:52:11', '2020-12-22 04:52:11', 'Supun Lanka Chathuranga Silva', 'sinergylanka@gmail.com', 'sdfdfdsfdf', 14),
(4, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 06:26:57', '2020-12-22 06:26:57', 'Supun Silva', 'sinergylanka@gmail.com', 'aaaa', 14),
(5, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 06:27:06', '2020-12-22 06:27:06', 'Supun Silva', 'sinergylanka@gmail.com', 'aaaa', 14),
(6, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 06:28:08', '2020-12-22 06:28:08', 'Supun Silva', 'sinergylanka@gmail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 14),
(7, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 06:46:27', '2020-12-22 06:46:27', 'Supun Silva', 'sinergylanka@gmail.com', 'fgdfdfdsfsd', 14),
(8, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 06:46:32', '2020-12-22 06:46:32', 'Supun Silva', 'sinergylanka@gmail.com', 'fgdfdfdsfsd', 14),
(9, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 06:51:25', '2020-12-22 06:51:25', 'Supun Silva', 'sinergylanka@gmail.com', 'fgdfdfdsfsd', 14),
(10, 'SilverStripe\\Home\\ArticleComment', '2021-01-03 09:03:54', '2021-01-03 09:03:54', '3432434', 'ss@ss.com', 'efrere', 15),
(11, 'SilverStripe\\Home\\ArticleComment', '2021-01-03 09:04:56', '2021-01-03 09:04:56', 'Supun Silva', 'supun151515@gmail.com', 'Nothing to say', 15);

-- --------------------------------------------------------

--
-- Table structure for table `articlepage`
--

CREATE TABLE `articlepage` (
  `ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Teaser` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `AuthorName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `BrochureID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articlepage`
--

INSERT INTO `articlepage` (`ID`, `Date`, `Teaser`, `AuthorName`, `PhotoID`, `BrochureID`) VALUES
(14, '2020-12-22', 'Teaser 1', 'Supun1', 3, 4),
(15, '2020-12-17', 'Teaser 2', 'Supun 2', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `articlepage_categories`
--

CREATE TABLE `articlepage_categories` (
  `ID` int(11) NOT NULL,
  `ArticlePageID` int(11) NOT NULL DEFAULT 0,
  `SilverStripe_Home_ArticleCategoryID` int(11) NOT NULL DEFAULT 0,
  `ArticleCategoryID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articlepage_categories`
--

INSERT INTO `articlepage_categories` (`ID`, `ArticlePageID`, `SilverStripe_Home_ArticleCategoryID`, `ArticleCategoryID`) VALUES
(1, 14, 1, 0),
(2, 14, 2, 0),
(3, 15, 2, 0),
(4, 15, 4, 0),
(5, 14, 0, 1),
(6, 14, 0, 2),
(7, 15, 0, 1),
(8, 15, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `articlepage_live`
--

CREATE TABLE `articlepage_live` (
  `ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Teaser` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `AuthorName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `BrochureID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articlepage_live`
--

INSERT INTO `articlepage_live` (`ID`, `Date`, `Teaser`, `AuthorName`, `PhotoID`, `BrochureID`) VALUES
(14, '2020-12-22', 'Teaser 1', 'Supun1', 3, 4),
(15, '2020-12-17', 'Teaser 2', 'Supun 2', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `articlepage_versions`
--

CREATE TABLE `articlepage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Date` date DEFAULT NULL,
  `Teaser` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `AuthorName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `BrochureID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articlepage_versions`
--

INSERT INTO `articlepage_versions` (`ID`, `RecordID`, `Version`, `Date`, `Teaser`, `AuthorName`, `PhotoID`, `BrochureID`) VALUES
(1, 13, 1, NULL, NULL, NULL, 0, 0),
(2, 14, 1, NULL, NULL, NULL, 0, 0),
(3, 14, 2, '2020-12-22', 'Teaser 1', 'Supun1', 3, 4),
(4, 14, 3, '2020-12-22', 'Teaser 1', 'Supun1', 3, 4),
(5, 15, 1, NULL, NULL, NULL, 0, 0),
(6, 15, 2, '2020-12-17', 'Teaser 2', 'Supun 2', 5, 6),
(7, 15, 3, '2020-12-17', 'Teaser 2', 'Supun 2', 5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `changeset`
--

CREATE TABLE `changeset` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSet') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Versioned\\ChangeSet',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `State` enum('open','published','reverted') CHARACTER SET utf8 DEFAULT 'open',
  `IsInferred` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `LastSynced` datetime DEFAULT NULL,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `changeset`
--

INSERT INTO `changeset` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `State`, `IsInferred`, `Description`, `PublishDate`, `LastSynced`, `OwnerID`, `PublisherID`) VALUES
(1, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:31:55', '2020-12-19 09:31:54', 'Generated by publish of \'Find a Rental\' at Dec 19, 2020, 9:31 AM', 'published', 1, NULL, '2020-12-19 09:31:55', '2020-12-19 09:31:55', 0, 1),
(2, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:32:14', '2020-12-19 09:32:13', 'Generated by publish of \'List your Rental\' at Dec 19, 2020, 9:32 AM', 'published', 1, NULL, '2020-12-19 09:32:14', '2020-12-19 09:32:14', 0, 1),
(3, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:34:03', '2020-12-19 09:34:03', 'Generated by publish of \'Regions\' at Dec 19, 2020, 9:34 AM', 'published', 1, NULL, '2020-12-19 09:34:03', '2020-12-19 09:34:03', 0, 1),
(4, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:34:33', '2020-12-19 09:34:32', 'Generated by publish of \'List your Rental\' at Dec 19, 2020, 9:34 AM', 'published', 1, NULL, '2020-12-19 09:34:33', '2020-12-19 09:34:33', 0, 1),
(5, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:34:56', '2020-12-19 09:34:56', 'Generated by publish of \'List your Rental\' at Dec 19, 2020, 9:34 AM', 'published', 1, NULL, '2020-12-19 09:34:56', '2020-12-19 09:34:56', 0, 1),
(6, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:35:33', '2020-12-19 09:35:31', 'Generated by publish of \'Regions\' at Dec 19, 2020, 9:35 AM', 'published', 1, NULL, '2020-12-19 09:35:33', '2020-12-19 09:35:32', 0, 1),
(7, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:36:00', '2020-12-19 09:36:00', 'Generated by publish of \'List your Rental\' at Dec 19, 2020, 9:36 AM', 'published', 1, NULL, '2020-12-19 09:36:00', '2020-12-19 09:36:00', 0, 1),
(8, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:36:30', '2020-12-19 09:36:30', 'Generated by publish of \'List your Rental\' at Dec 19, 2020, 9:36 AM', 'published', 1, NULL, '2020-12-19 09:36:30', '2020-12-19 09:36:30', 0, 1),
(9, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:37:17', '2020-12-19 09:37:16', 'Generated by publish of \'Travel Guides\' at Dec 19, 2020, 9:37 AM', 'published', 1, NULL, '2020-12-19 09:37:17', '2020-12-19 09:37:16', 0, 1),
(10, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:40:06', '2020-12-19 09:40:06', 'Generated by publish of \'il 570xN.1538766655 2dgx\' at Dec 19, 2020, 9:40 AM', 'published', 1, NULL, '2020-12-19 09:40:06', '2020-12-19 09:40:06', 0, 1),
(11, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:40:07', '2020-12-19 09:40:07', 'Generated by publish of \'Account History Report01 25 2019 23 04 51\' at Dec 19, 2020, 9:40 AM', 'published', 1, NULL, '2020-12-19 09:40:07', '2020-12-19 09:40:07', 0, 1),
(12, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:40:13', '2020-12-19 09:40:12', 'Generated by publish of \'Article1\' at Dec 19, 2020, 9:40 AM', 'published', 1, NULL, '2020-12-19 09:40:13', '2020-12-19 09:40:13', 0, 1),
(13, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:54:19', '2020-12-19 09:54:17', 'Generated by publish of \'Article2\' at Dec 19, 2020, 9:54 AM', 'published', 1, NULL, '2020-12-19 09:54:19', '2020-12-19 09:54:18', 0, 1),
(14, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 09:59:43', '2020-12-19 09:59:42', 'Generated by publish of \'Regions\' at Dec 19, 2020, 9:59 AM', 'published', 1, NULL, '2020-12-19 09:59:43', '2020-12-19 09:59:42', 0, 1),
(15, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 10:46:08', '2020-12-19 10:46:07', 'Generated by publish of \'My Title 1\' at Dec 19, 2020, 10:46 AM', 'published', 1, NULL, '2020-12-19 10:46:08', '2020-12-19 10:46:07', 0, 1),
(16, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-19 10:49:26', '2020-12-19 10:49:25', 'Generated by publish of \'Find a Rental\' at Dec 19, 2020, 10:49 AM', 'published', 1, NULL, '2020-12-19 10:49:26', '2020-12-19 10:49:26', 0, 1),
(17, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-21 03:18:39', '2020-12-21 03:18:38', 'Generated by publish of \'Movies\' at Dec 21, 2020, 3:18 AM', 'published', 1, NULL, '2020-12-21 03:18:39', '2020-12-21 03:18:39', 0, 1),
(18, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-21 03:18:53', '2020-12-21 03:18:52', 'Generated by publish of \'News\' at Dec 21, 2020, 3:18 AM', 'published', 1, NULL, '2020-12-21 03:18:53', '2020-12-21 03:18:53', 0, 1),
(19, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-21 03:19:11', '2020-12-21 03:19:10', 'Generated by publish of \'Teledramas \' at Dec 21, 2020, 3:19 AM', 'published', 1, NULL, '2020-12-21 03:19:11', '2020-12-21 03:19:11', 0, 1),
(20, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-21 03:19:31', '2020-12-21 03:19:30', 'Generated by publish of \'Children Games\' at Dec 21, 2020, 3:19 AM', 'published', 1, NULL, '2020-12-21 03:19:31', '2020-12-21 03:19:30', 0, 1),
(21, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-21 03:20:21', '2020-12-21 03:20:20', 'Generated by publish of \'My Title 1\' at Dec 21, 2020, 3:20 AM', 'published', 1, NULL, '2020-12-21 03:20:21', '2020-12-21 03:20:21', 0, 1),
(22, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-21 03:30:55', '2020-12-21 03:30:54', 'Generated by publish of \'Article1\' at Dec 21, 2020, 3:30 AM', 'published', 1, NULL, '2020-12-21 03:30:55', '2020-12-21 03:30:54', 0, 1),
(23, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-21 03:42:36', '2020-12-21 03:42:35', 'Generated by publish of \'Article2\' at Dec 21, 2020, 3:42 AM', 'published', 1, NULL, '2020-12-21 03:42:36', '2020-12-21 03:42:36', 0, 1),
(24, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-21 03:44:31', '2020-12-21 03:44:31', 'Generated by publish of \'Home\' at Dec 21, 2020, 3:44 AM', 'published', 1, NULL, '2020-12-21 03:44:31', '2020-12-21 03:44:31', 0, 1),
(25, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-23 08:35:11', '2020-12-23 08:35:10', 'Generated by publish of \'Cat1\' at Dec 23, 2020, 8:35 AM', 'published', 1, NULL, '2020-12-23 08:35:11', '2020-12-23 08:35:11', 0, 1),
(26, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-23 08:35:21', '2020-12-23 08:35:21', 'Generated by publish of \'Cat 2\' at Dec 23, 2020, 8:35 AM', 'published', 1, NULL, '2020-12-23 08:35:21', '2020-12-23 08:35:21', 0, 1),
(27, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-23 08:35:45', '2020-12-23 08:35:41', 'Generated by publish of \'Article1\' at Dec 23, 2020, 8:35 AM', 'published', 1, NULL, '2020-12-23 08:35:45', '2020-12-23 08:35:44', 0, 1),
(28, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-23 08:47:03', '2020-12-23 08:47:03', 'Generated by publish of \'Your Site Name\' at Dec 23, 2020, 8:47 AM', 'published', 1, NULL, '2020-12-23 08:47:03', '2020-12-23 08:47:03', 0, 1),
(29, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-23 08:49:26', '2020-12-23 08:49:26', 'Generated by publish of \'Your Site Name\' at Dec 23, 2020, 8:49 AM', 'published', 1, NULL, '2020-12-23 08:49:26', '2020-12-23 08:49:26', 0, 1),
(30, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-23 08:54:02', '2020-12-23 08:54:01', 'Generated by publish of \'Your Site Name\' at Dec 23, 2020, 8:54 AM', 'published', 1, NULL, '2020-12-23 08:54:02', '2020-12-23 08:54:02', 0, 1),
(31, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-23 08:56:35', '2020-12-23 08:56:35', 'Generated by publish of \'Your Site Name\' at Dec 23, 2020, 8:56 AM', 'published', 1, NULL, '2020-12-23 08:56:35', '2020-12-23 08:56:35', 0, 1),
(32, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-25 01:44:40', '2020-12-25 01:44:38', 'Generated by publish of \'Home\' at Dec 25, 2020, 1:44 AM', 'published', 1, NULL, '2020-12-25 01:44:40', '2020-12-25 01:44:39', 0, 1),
(33, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-25 10:47:51', '2020-12-25 10:47:49', 'Generated by publish of \'Region2\' at Dec 25, 2020, 10:47 AM', 'published', 1, NULL, '2020-12-25 10:47:51', '2020-12-25 10:47:49', 0, 1),
(34, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-25 11:02:45', '2020-12-25 11:02:44', 'Generated by publish of \'My Title 1\' at Dec 25, 2020, 11:02 AM', 'published', 1, NULL, '2020-12-25 11:02:45', '2020-12-25 11:02:45', 0, 1),
(35, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-25 11:05:44', '2020-12-25 11:05:43', 'Generated by publish of \'Article2\' at Dec 25, 2020, 11:05 AM', 'published', 1, NULL, '2020-12-25 11:05:44', '2020-12-25 11:05:44', 0, 1),
(36, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-25 22:01:01', '2020-12-25 22:00:59', 'Generated by publish of \'\' at Dec 25, 2020, 10:00 PM', 'published', 1, NULL, '2020-12-25 22:01:01', '2020-12-25 22:01:00', 0, 1),
(37, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-25 22:01:35', '2020-12-25 22:01:35', 'Generated by publish of \'Dixon Street Room for Rent\' at Dec 25, 2020, 10:01 PM', 'published', 1, NULL, '2020-12-25 22:01:35', '2020-12-25 22:01:35', 0, 1),
(38, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-25 23:04:44', '2020-12-25 23:04:43', 'Generated by publish of \'\' at Dec 25, 2020, 11:04 PM', 'published', 1, NULL, '2020-12-25 23:04:44', '2020-12-25 23:04:44', 0, 1),
(39, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-25 23:05:17', '2020-12-25 23:05:17', 'Generated by publish of \'Room 1\' at Dec 25, 2020, 11:05 PM', 'published', 1, NULL, '2020-12-25 23:05:17', '2020-12-25 23:05:17', 0, 1),
(40, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-25 23:34:42', '2020-12-25 23:34:41', 'Generated by publish of \'\' at Dec 25, 2020, 11:34 PM', 'published', 1, NULL, '2020-12-25 23:34:42', '2020-12-25 23:34:42', 0, 1),
(41, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:13:16', '2020-12-26 00:13:15', 'Generated by publish of \'#1\' at Dec 26, 2020, 12:13 AM', 'published', 1, NULL, '2020-12-26 00:13:16', '2020-12-26 00:13:15', 0, 1),
(42, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:14:14', '2020-12-26 00:14:13', 'Generated by publish of \'#2\' at Dec 26, 2020, 12:14 AM', 'published', 1, NULL, '2020-12-26 00:14:14', '2020-12-26 00:14:14', 0, 1),
(43, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:27:21', '2020-12-26 00:27:20', 'Generated by publish of \'Room 1\' at Dec 26, 2020, 12:27 AM', 'published', 1, NULL, '2020-12-26 00:27:21', '2020-12-26 00:27:21', 0, 1),
(44, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:27:37', '2020-12-26 00:27:37', 'Generated by publish of \'\' at Dec 26, 2020, 12:27 AM', 'published', 1, NULL, '2020-12-26 00:27:37', '2020-12-26 00:27:37', 0, 1),
(45, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:27:48', '2020-12-26 00:27:47', 'Generated by publish of \'Room 2\' at Dec 26, 2020, 12:27 AM', 'published', 1, NULL, '2020-12-26 00:27:48', '2020-12-26 00:27:48', 0, 1),
(46, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:28:07', '2020-12-26 00:28:07', 'Generated by publish of \'Room 2\' at Dec 26, 2020, 12:28 AM', 'published', 1, NULL, '2020-12-26 00:28:07', '2020-12-26 00:28:07', 0, 1),
(47, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:28:59', '2020-12-26 00:28:58', 'Generated by publish of \'This is inside room\' at Dec 26, 2020, 12:28 AM', 'published', 1, NULL, '2020-12-26 00:28:59', '2020-12-26 00:28:59', 0, 1),
(48, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:29:45', '2020-12-26 00:29:44', 'Generated by publish of \'this is barhroom\' at Dec 26, 2020, 12:29 AM', 'published', 1, NULL, '2020-12-26 00:29:45', '2020-12-26 00:29:44', 0, 1),
(49, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:38:44', '2020-12-26 00:38:44', 'Generated by publish of \'Room 2\' at Dec 26, 2020, 12:38 AM', 'published', 1, NULL, '2020-12-26 00:38:44', '2020-12-26 00:38:44', 0, 1),
(50, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 00:39:14', '2020-12-26 00:39:14', 'Generated by publish of \'Helllo\' at Dec 26, 2020, 12:39 AM', 'published', 1, NULL, '2020-12-26 00:39:14', '2020-12-26 00:39:14', 0, 1),
(51, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 05:53:53', '2020-12-26 05:53:52', 'Generated by publish of \'Room 1\' at Dec 26, 2020, 5:53 AM', 'published', 1, NULL, '2020-12-26 05:53:53', '2020-12-26 05:53:53', 0, 1),
(52, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 05:54:00', '2020-12-26 05:54:00', 'Generated by publish of \'Room 2\' at Dec 26, 2020, 5:54 AM', 'published', 1, NULL, '2020-12-26 05:54:00', '2020-12-26 05:54:00', 0, 1),
(53, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 05:55:38', '2020-12-26 05:55:37', 'Generated by publish of \'Room 2\' at Dec 26, 2020, 5:55 AM', 'published', 1, NULL, '2020-12-26 05:55:38', '2020-12-26 05:55:38', 0, 1),
(54, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 06:05:41', '2020-12-26 06:05:40', 'Generated by publish of \'Room 1\' at Dec 26, 2020, 6:05 AM', 'published', 1, NULL, '2020-12-26 06:05:41', '2020-12-26 06:05:40', 0, 1),
(55, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 06:08:53', '2020-12-26 06:08:52', 'Generated by publish of \'Room 1\' at Dec 26, 2020, 6:08 AM', 'published', 1, NULL, '2020-12-26 06:08:53', '2020-12-26 06:08:52', 0, 1),
(56, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 06:09:09', '2020-12-26 06:09:08', 'Generated by publish of \'Room 2\' at Dec 26, 2020, 6:09 AM', 'published', 1, NULL, '2020-12-26 06:09:09', '2020-12-26 06:09:09', 0, 1),
(57, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 06:09:48', '2020-12-26 06:09:47', 'Generated by publish of \'Room 2\' at Dec 26, 2020, 6:09 AM', 'published', 1, NULL, '2020-12-26 06:09:48', '2020-12-26 06:09:47', 0, 1),
(58, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 08:42:20', '2020-12-26 08:42:19', 'Generated by publish of \'My Title 1\' at Dec 26, 2020, 8:42 AM', 'published', 1, NULL, '2020-12-26 08:42:20', '2020-12-26 08:42:20', 0, 1),
(59, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 09:27:58', '2020-12-26 09:27:57', 'Generated by publish of \'\' at Dec 26, 2020, 9:27 AM', 'published', 1, NULL, '2020-12-26 09:27:58', '2020-12-26 09:27:57', 0, 1),
(60, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 09:50:41', '2020-12-26 09:50:41', 'Generated by publish of \'New Property Search Page\' at Dec 26, 2020, 9:50 AM', 'published', 1, NULL, '2020-12-26 09:50:41', '2020-12-26 09:50:41', 0, 1),
(61, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 11:22:11', '2020-12-26 11:22:11', 'Generated by publish of \'Room 1\' at Dec 26, 2020, 11:22 AM', 'published', 1, NULL, '2020-12-26 11:22:11', '2020-12-26 11:22:11', 0, 1),
(62, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 11:22:18', '2020-12-26 11:22:16', 'Generated by publish of \'Room 1\' at Dec 26, 2020, 11:22 AM', 'published', 1, NULL, '2020-12-26 11:22:18', '2020-12-26 11:22:17', 0, 1),
(63, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 11:22:45', '2020-12-26 11:22:44', 'Generated by publish of \'Room 1\' at Dec 26, 2020, 11:22 AM', 'published', 1, NULL, '2020-12-26 11:22:45', '2020-12-26 11:22:44', 0, 1),
(64, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 11:25:07', '2020-12-26 11:25:07', 'Generated by publish of \'Room 1\' at Dec 26, 2020, 11:25 AM', 'published', 1, NULL, '2020-12-26 11:25:07', '2020-12-26 11:25:07', 0, 1),
(65, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 23:41:10', '2020-12-26 23:41:09', 'Generated by publish of \'\' at Dec 26, 2020, 11:41 PM', 'published', 1, NULL, '2020-12-26 23:41:10', '2020-12-26 23:41:09', 0, 1),
(66, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 23:41:17', '2020-12-26 23:41:17', 'Generated by publish of \'Title 4\' at Dec 26, 2020, 11:41 PM', 'published', 1, NULL, '2020-12-26 23:41:17', '2020-12-26 23:41:17', 0, 1),
(67, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 23:44:44', '2020-12-26 23:44:44', 'Generated by publish of \'Titlr 3\' at Dec 26, 2020, 11:44 PM', 'published', 1, NULL, '2020-12-26 23:44:44', '2020-12-26 23:44:44', 0, 1),
(68, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 23:49:12', '2020-12-26 23:49:11', 'Generated by publish of \'Room 1\' at Dec 26, 2020, 11:49 PM', 'published', 1, NULL, '2020-12-26 23:49:12', '2020-12-26 23:49:12', 0, 1),
(69, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 23:49:29', '2020-12-26 23:49:28', 'Generated by publish of \'Room 2\' at Dec 26, 2020, 11:49 PM', 'published', 1, NULL, '2020-12-26 23:49:29', '2020-12-26 23:49:29', 0, 1),
(70, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 23:49:41', '2020-12-26 23:49:40', 'Generated by publish of \'Titlr 3\' at Dec 26, 2020, 11:49 PM', 'published', 1, NULL, '2020-12-26 23:49:41', '2020-12-26 23:49:41', 0, 1),
(71, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 23:49:53', '2020-12-26 23:49:53', 'Generated by publish of \'Title 4\' at Dec 26, 2020, 11:49 PM', 'published', 1, NULL, '2020-12-26 23:49:53', '2020-12-26 23:49:53', 0, 1),
(72, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 23:50:08', '2020-12-26 23:50:07', 'Generated by publish of \'Titlr 4\' at Dec 26, 2020, 11:50 PM', 'published', 1, NULL, '2020-12-26 23:50:08', '2020-12-26 23:50:08', 0, 1),
(73, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-26 23:50:25', '2020-12-26 23:50:25', 'Generated by publish of \'Title 5\' at Dec 26, 2020, 11:50 PM', 'published', 1, NULL, '2020-12-26 23:50:25', '2020-12-26 23:50:25', 0, 1),
(74, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 00:13:19', '2020-12-27 00:13:18', 'Generated by publish of \'Titlr 5\' at Dec 27, 2020, 12:13 AM', 'published', 1, NULL, '2020-12-27 00:13:19', '2020-12-27 00:13:19', 0, 1),
(75, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:21:16', '2020-12-27 04:21:15', 'Generated by publish of \'12\' at Dec 27, 2020, 4:21 AM', 'published', 1, NULL, '2020-12-27 04:21:16', '2020-12-27 04:21:15', 0, 1),
(76, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:21:25', '2020-12-27 04:21:24', 'Generated by publish of \'13\' at Dec 27, 2020, 4:21 AM', 'published', 1, NULL, '2020-12-27 04:21:25', '2020-12-27 04:21:24', 0, 1),
(77, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:21:33', '2020-12-27 04:21:32', 'Generated by publish of \'14\' at Dec 27, 2020, 4:21 AM', 'published', 1, NULL, '2020-12-27 04:21:33', '2020-12-27 04:21:33', 0, 1),
(78, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:21:41', '2020-12-27 04:21:40', 'Generated by publish of \'15\' at Dec 27, 2020, 4:21 AM', 'published', 1, NULL, '2020-12-27 04:21:41', '2020-12-27 04:21:40', 0, 1),
(79, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:09', '2020-12-27 04:22:08', 'Generated by publish of \'16\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:09', '2020-12-27 04:22:09', 0, 1),
(80, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:16', '2020-12-27 04:22:15', 'Generated by publish of \'18\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:16', '2020-12-27 04:22:15', 0, 1),
(81, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:20', '2020-12-27 04:22:19', 'Generated by publish of \'17\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:20', '2020-12-27 04:22:19', 0, 1),
(82, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:28', '2020-12-27 04:22:27', 'Generated by publish of \'19\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:28', '2020-12-27 04:22:28', 0, 1),
(83, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:32', '2020-12-27 04:22:31', 'Generated by publish of \'20\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:32', '2020-12-27 04:22:32', 0, 1),
(84, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:35', '2020-12-27 04:22:34', 'Generated by publish of \'21\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:35', '2020-12-27 04:22:35', 0, 1),
(85, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:38', '2020-12-27 04:22:38', 'Generated by publish of \'22\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:38', '2020-12-27 04:22:38', 0, 1),
(86, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:42', '2020-12-27 04:22:41', 'Generated by publish of \'23\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:42', '2020-12-27 04:22:42', 0, 1),
(87, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:45', '2020-12-27 04:22:44', 'Generated by publish of \'24\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:45', '2020-12-27 04:22:45', 0, 1),
(88, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:48', '2020-12-27 04:22:47', 'Generated by publish of \'25\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:48', '2020-12-27 04:22:47', 0, 1),
(89, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:51', '2020-12-27 04:22:51', 'Generated by publish of \'Title 13\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:51', '2020-12-27 04:22:51', 0, 1),
(90, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:54', '2020-12-27 04:22:53', 'Generated by publish of \'Titlr 13\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:54', '2020-12-27 04:22:54', 0, 1),
(91, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:22:59', '2020-12-27 04:22:58', 'Generated by publish of \'Title 14\' at Dec 27, 2020, 4:22 AM', 'published', 1, NULL, '2020-12-27 04:22:59', '2020-12-27 04:22:59', 0, 1),
(92, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-27 04:24:29', '2020-12-27 04:24:29', 'Generated by publish of \'Room 1\' at Dec 27, 2020, 4:24 AM', 'published', 1, NULL, '2020-12-27 04:24:29', '2020-12-27 04:24:29', 0, 1),
(93, 'SilverStripe\\Versioned\\ChangeSet', '2020-12-28 07:31:30', '2020-12-28 07:31:29', 'Generated by publish of \'xzcxcxzcx\' at Dec 28, 2020, 7:31 AM', 'published', 1, NULL, '2020-12-28 07:31:30', '2020-12-28 07:31:29', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `changesetitem`
--

CREATE TABLE `changesetitem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Versioned\\ChangeSetItem') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Versioned\\ChangeSetItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `VersionBefore` int(11) NOT NULL DEFAULT 0,
  `VersionAfter` int(11) NOT NULL DEFAULT 0,
  `Added` enum('explicitly','implicitly') CHARACTER SET utf8 DEFAULT 'implicitly',
  `ChangeSetID` int(11) NOT NULL DEFAULT 0,
  `ObjectID` int(11) NOT NULL DEFAULT 0,
  `ObjectClass` enum('SilverStripe\\Home\\ArticleCategory','SilverStripe\\Home\\ArticleComment','SilverStripe\\Home\\Property','SilverStripe\\Home\\SubPhotos','SilverStripe\\Home\\Region','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','SilverStripe\\Home\\ArticleHolder','SilverStripe\\Home\\ArticlePage','SilverStripe\\Home\\HomePage','SilverStripe\\Home\\PropertySearchPage','SilverStripe\\Home\\RegionsPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\ArticleCategory'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `changesetitem`
--

INSERT INTO `changesetitem` (`ID`, `ClassName`, `LastEdited`, `Created`, `VersionBefore`, `VersionAfter`, `Added`, `ChangeSetID`, `ObjectID`, `ObjectClass`) VALUES
(1, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:31:55', '2020-12-19 09:31:55', 0, 3, 'explicitly', 1, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(2, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:32:14', '2020-12-19 09:32:13', 0, 3, 'explicitly', 2, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(3, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:34:03', '2020-12-19 09:34:03', 0, 3, 'explicitly', 3, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(4, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:34:33', '2020-12-19 09:34:33', 3, 3, 'explicitly', 4, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(5, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:34:56', '2020-12-19 09:34:56', 3, 3, 'explicitly', 5, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(6, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:35:32', '2020-12-19 09:35:31', 3, 5, 'explicitly', 6, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(7, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:36:00', '2020-12-19 09:36:00', 3, 3, 'explicitly', 7, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(8, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:36:30', '2020-12-19 09:36:30', 3, 5, 'explicitly', 8, 8, 'SilverStripe\\CMS\\Model\\SiteTree'),
(9, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:37:17', '2020-12-19 09:37:16', 0, 3, 'explicitly', 9, 12, 'SilverStripe\\CMS\\Model\\SiteTree'),
(10, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:40:06', '2020-12-19 09:40:06', 0, 2, 'explicitly', 10, 3, 'SilverStripe\\Assets\\File'),
(11, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:40:07', '2020-12-19 09:40:07', 0, 2, 'explicitly', 11, 4, 'SilverStripe\\Assets\\File'),
(12, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:40:13', '2020-12-19 09:40:12', 0, 3, 'explicitly', 12, 14, 'SilverStripe\\CMS\\Model\\SiteTree'),
(13, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:40:13', '2020-12-19 09:40:13', 2, 2, 'implicitly', 12, 3, 'SilverStripe\\Assets\\File'),
(14, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:40:13', '2020-12-19 09:40:13', 2, 2, 'implicitly', 12, 4, 'SilverStripe\\Assets\\File'),
(15, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:54:18', '2020-12-19 09:54:17', 0, 3, 'explicitly', 13, 15, 'SilverStripe\\CMS\\Model\\SiteTree'),
(16, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:54:18', '2020-12-19 09:54:17', 0, 2, 'implicitly', 13, 5, 'SilverStripe\\Assets\\File'),
(17, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:54:18', '2020-12-19 09:54:18', 0, 2, 'implicitly', 13, 6, 'SilverStripe\\Assets\\File'),
(18, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 09:59:42', '2020-12-19 09:59:42', 5, 8, 'explicitly', 14, 11, 'SilverStripe\\CMS\\Model\\SiteTree'),
(19, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 10:46:08', '2020-12-19 10:46:07', 0, 2, 'explicitly', 15, 1, 'SilverStripe\\Home\\Region'),
(20, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 10:46:08', '2020-12-19 10:46:07', 0, 2, 'implicitly', 15, 8, 'SilverStripe\\Assets\\File'),
(21, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-19 10:49:26', '2020-12-19 10:49:25', 3, 5, 'explicitly', 16, 7, 'SilverStripe\\CMS\\Model\\SiteTree'),
(22, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:18:39', '2020-12-21 03:18:38', 0, 0, 'explicitly', 17, 1, 'SilverStripe\\Home\\ArticleCategory'),
(23, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:18:53', '2020-12-21 03:18:53', 0, 0, 'explicitly', 18, 2, 'SilverStripe\\Home\\ArticleCategory'),
(24, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:19:11', '2020-12-21 03:19:10', 0, 0, 'explicitly', 19, 3, 'SilverStripe\\Home\\ArticleCategory'),
(25, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:19:30', '2020-12-21 03:19:30', 0, 0, 'explicitly', 20, 4, 'SilverStripe\\Home\\ArticleCategory'),
(26, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:20:21', '2020-12-21 03:20:21', 2, 4, 'explicitly', 21, 1, 'SilverStripe\\Home\\Region'),
(27, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:20:21', '2020-12-21 03:20:21', 2, 2, 'implicitly', 21, 8, 'SilverStripe\\Assets\\File'),
(28, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:30:54', '2020-12-21 03:30:54', 3, 3, 'explicitly', 22, 14, 'SilverStripe\\CMS\\Model\\SiteTree'),
(29, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:30:54', '2020-12-21 03:30:54', 2, 2, 'implicitly', 22, 3, 'SilverStripe\\Assets\\File'),
(30, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:30:54', '2020-12-21 03:30:54', 2, 2, 'implicitly', 22, 4, 'SilverStripe\\Assets\\File'),
(31, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:42:36', '2020-12-21 03:42:35', 3, 3, 'explicitly', 23, 15, 'SilverStripe\\CMS\\Model\\SiteTree'),
(32, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:42:36', '2020-12-21 03:42:36', 2, 2, 'implicitly', 23, 5, 'SilverStripe\\Assets\\File'),
(33, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:42:36', '2020-12-21 03:42:36', 2, 2, 'implicitly', 23, 6, 'SilverStripe\\Assets\\File'),
(34, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-21 03:44:31', '2020-12-21 03:44:31', 2, 4, 'explicitly', 24, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(35, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-23 08:35:11', '2020-12-23 08:35:10', 0, 0, 'explicitly', 25, 1, 'SilverStripe\\Home\\ArticleCategory'),
(36, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-23 08:35:21', '2020-12-23 08:35:21', 0, 0, 'explicitly', 26, 2, 'SilverStripe\\Home\\ArticleCategory'),
(37, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-23 08:35:45', '2020-12-23 08:35:41', 3, 3, 'explicitly', 27, 14, 'SilverStripe\\CMS\\Model\\SiteTree'),
(38, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-23 08:35:45', '2020-12-23 08:35:44', 2, 2, 'implicitly', 27, 3, 'SilverStripe\\Assets\\File'),
(39, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-23 08:35:45', '2020-12-23 08:35:44', 2, 2, 'implicitly', 27, 4, 'SilverStripe\\Assets\\File'),
(40, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-23 08:47:03', '2020-12-23 08:47:03', 0, 0, 'explicitly', 28, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(41, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-23 08:49:26', '2020-12-23 08:49:26', 0, 0, 'explicitly', 29, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(42, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-23 08:54:02', '2020-12-23 08:54:02', 0, 0, 'explicitly', 30, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(43, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-23 08:56:35', '2020-12-23 08:56:35', 0, 0, 'explicitly', 31, 1, 'SilverStripe\\SiteConfig\\SiteConfig'),
(44, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-25 01:44:40', '2020-12-25 01:44:38', 4, 6, 'explicitly', 32, 1, 'SilverStripe\\CMS\\Model\\SiteTree'),
(45, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-25 10:47:50', '2020-12-25 10:47:49', 0, 2, 'explicitly', 33, 2, 'SilverStripe\\Home\\Region'),
(46, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-25 10:47:50', '2020-12-25 10:47:49', 0, 2, 'implicitly', 33, 10, 'SilverStripe\\Assets\\File'),
(47, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-25 11:02:45', '2020-12-25 11:02:44', 4, 6, 'explicitly', 34, 1, 'SilverStripe\\Home\\Region'),
(48, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-25 11:02:45', '2020-12-25 11:02:45', 2, 2, 'implicitly', 34, 8, 'SilverStripe\\Assets\\File'),
(49, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-25 11:05:44', '2020-12-25 11:05:43', 3, 3, 'explicitly', 35, 15, 'SilverStripe\\CMS\\Model\\SiteTree'),
(50, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-25 11:05:44', '2020-12-25 11:05:44', 2, 2, 'implicitly', 35, 5, 'SilverStripe\\Assets\\File'),
(51, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-25 11:05:44', '2020-12-25 11:05:44', 2, 2, 'implicitly', 35, 6, 'SilverStripe\\Assets\\File'),
(56, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-25 23:34:42', '2020-12-25 23:34:41', 0, 0, 'explicitly', 40, 3, 'SilverStripe\\Home\\ArticleCategory'),
(57, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:13:15', '2020-12-26 00:13:15', 0, 0, 'explicitly', 41, 1, 'SilverStripe\\Home\\SubPhotos'),
(58, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:14:14', '2020-12-26 00:14:13', 0, 0, 'explicitly', 42, 2, 'SilverStripe\\Home\\SubPhotos'),
(60, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:27:37', '2020-12-26 00:27:37', 0, 0, 'explicitly', 44, 2, 'SilverStripe\\Home\\Property'),
(61, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:27:47', '2020-12-26 00:27:47', 0, 0, 'explicitly', 45, 2, 'SilverStripe\\Home\\Property'),
(62, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:28:07', '2020-12-26 00:28:07', 0, 0, 'explicitly', 46, 2, 'SilverStripe\\Home\\Property'),
(63, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:28:59', '2020-12-26 00:28:58', 0, 0, 'explicitly', 47, 1, 'SilverStripe\\Home\\SubPhotos'),
(64, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:28:59', '2020-12-26 00:28:59', 0, 2, 'implicitly', 47, 18, 'SilverStripe\\Assets\\File'),
(65, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:29:44', '2020-12-26 00:29:44', 0, 0, 'explicitly', 48, 2, 'SilverStripe\\Home\\SubPhotos'),
(66, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:29:44', '2020-12-26 00:29:44', 0, 2, 'implicitly', 48, 19, 'SilverStripe\\Assets\\File'),
(67, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:38:44', '2020-12-26 00:38:44', 0, 0, 'explicitly', 49, 2, 'SilverStripe\\Home\\Property'),
(68, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 00:39:14', '2020-12-26 00:39:14', 0, 0, 'explicitly', 50, 3, 'SilverStripe\\Home\\SubPhotos'),
(70, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 05:54:00', '2020-12-26 05:54:00', 0, 3, 'explicitly', 52, 2, 'SilverStripe\\Home\\Property'),
(71, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 05:55:38', '2020-12-26 05:55:38', 3, 5, 'explicitly', 53, 2, 'SilverStripe\\Home\\Property'),
(74, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:08:52', '2020-12-26 06:08:52', 0, 0, 'implicitly', 55, 3, 'SilverStripe\\Home\\SubPhotos'),
(75, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:08:53', '2020-12-26 06:08:52', 0, 2, 'implicitly', 55, 20, 'SilverStripe\\Assets\\File'),
(76, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:09', '2020-12-26 06:09:08', 5, 7, 'explicitly', 56, 2, 'SilverStripe\\Home\\Property'),
(77, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:09', '2020-12-26 06:09:09', 0, 0, 'implicitly', 56, 1, 'SilverStripe\\Home\\SubPhotos'),
(78, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:09', '2020-12-26 06:09:09', 0, 0, 'implicitly', 56, 2, 'SilverStripe\\Home\\SubPhotos'),
(79, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:09', '2020-12-26 06:09:09', 2, 2, 'implicitly', 56, 18, 'SilverStripe\\Assets\\File'),
(80, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:09', '2020-12-26 06:09:09', 2, 2, 'implicitly', 56, 19, 'SilverStripe\\Assets\\File'),
(81, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:09', '2020-12-26 06:09:09', 0, 2, 'implicitly', 56, 16, 'SilverStripe\\Assets\\File'),
(82, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:47', '2020-12-26 06:09:47', 7, 9, 'explicitly', 57, 2, 'SilverStripe\\Home\\Property'),
(83, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:47', '2020-12-26 06:09:47', 0, 0, 'implicitly', 57, 1, 'SilverStripe\\Home\\SubPhotos'),
(84, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:47', '2020-12-26 06:09:47', 0, 0, 'implicitly', 57, 2, 'SilverStripe\\Home\\SubPhotos'),
(85, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:48', '2020-12-26 06:09:47', 2, 2, 'implicitly', 57, 18, 'SilverStripe\\Assets\\File'),
(86, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:48', '2020-12-26 06:09:47', 2, 2, 'implicitly', 57, 19, 'SilverStripe\\Assets\\File'),
(87, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 06:09:48', '2020-12-26 06:09:47', 0, 2, 'implicitly', 57, 21, 'SilverStripe\\Assets\\File'),
(88, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 08:42:20', '2020-12-26 08:42:20', 6, 8, 'explicitly', 58, 1, 'SilverStripe\\Home\\Region'),
(89, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 08:42:20', '2020-12-26 08:42:20', 2, 2, 'implicitly', 58, 8, 'SilverStripe\\Assets\\File'),
(90, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 09:27:58', '2020-12-26 09:27:57', 0, 3, 'explicitly', 59, 3, 'SilverStripe\\Home\\Property'),
(91, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 09:50:41', '2020-12-26 09:50:41', 0, 2, 'explicitly', 60, 16, 'SilverStripe\\CMS\\Model\\SiteTree'),
(93, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 11:22:11', '2020-12-26 11:22:11', 0, 0, 'implicitly', 61, 3, 'SilverStripe\\Home\\SubPhotos'),
(94, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 11:22:11', '2020-12-26 11:22:11', 2, 2, 'implicitly', 61, 20, 'SilverStripe\\Assets\\File'),
(96, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 11:22:17', '2020-12-26 11:22:17', 0, 0, 'implicitly', 62, 3, 'SilverStripe\\Home\\SubPhotos'),
(97, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 11:22:18', '2020-12-26 11:22:17', 2, 2, 'implicitly', 62, 20, 'SilverStripe\\Assets\\File'),
(99, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 11:22:44', '2020-12-26 11:22:44', 0, 0, 'implicitly', 63, 3, 'SilverStripe\\Home\\SubPhotos'),
(100, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 11:22:45', '2020-12-26 11:22:44', 2, 2, 'implicitly', 63, 20, 'SilverStripe\\Assets\\File'),
(102, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 11:25:07', '2020-12-26 11:25:07', 0, 0, 'implicitly', 64, 3, 'SilverStripe\\Home\\SubPhotos'),
(103, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 11:25:07', '2020-12-26 11:25:07', 2, 2, 'implicitly', 64, 20, 'SilverStripe\\Assets\\File'),
(104, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 23:41:09', '2020-12-26 23:41:09', 0, 3, 'explicitly', 65, 4, 'SilverStripe\\Home\\Property'),
(105, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 23:41:17', '2020-12-26 23:41:17', 3, 5, 'explicitly', 66, 4, 'SilverStripe\\Home\\Property'),
(106, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 23:44:44', '2020-12-26 23:44:44', 3, 5, 'explicitly', 67, 3, 'SilverStripe\\Home\\Property'),
(107, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 23:49:12', '2020-12-26 23:49:12', 0, 3, 'explicitly', 68, 5, 'SilverStripe\\Home\\Property'),
(108, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 23:49:29', '2020-12-26 23:49:28', 0, 3, 'explicitly', 69, 6, 'SilverStripe\\Home\\Property'),
(109, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 23:49:41', '2020-12-26 23:49:40', 0, 3, 'explicitly', 70, 7, 'SilverStripe\\Home\\Property'),
(110, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 23:49:53', '2020-12-26 23:49:53', 0, 3, 'explicitly', 71, 8, 'SilverStripe\\Home\\Property'),
(111, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 23:50:08', '2020-12-26 23:50:07', 0, 3, 'explicitly', 72, 9, 'SilverStripe\\Home\\Property'),
(112, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-26 23:50:25', '2020-12-26 23:50:25', 0, 3, 'explicitly', 73, 10, 'SilverStripe\\Home\\Property'),
(113, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 00:13:19', '2020-12-27 00:13:18', 0, 3, 'explicitly', 74, 11, 'SilverStripe\\Home\\Property'),
(114, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:21:16', '2020-12-27 04:21:15', 0, 3, 'explicitly', 75, 12, 'SilverStripe\\Home\\Property'),
(115, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:21:25', '2020-12-27 04:21:24', 0, 3, 'explicitly', 76, 13, 'SilverStripe\\Home\\Property'),
(116, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:21:33', '2020-12-27 04:21:32', 0, 3, 'explicitly', 77, 14, 'SilverStripe\\Home\\Property'),
(117, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:21:41', '2020-12-27 04:21:40', 0, 3, 'explicitly', 78, 15, 'SilverStripe\\Home\\Property'),
(118, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:09', '2020-12-27 04:22:08', 0, 3, 'explicitly', 79, 16, 'SilverStripe\\Home\\Property'),
(119, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:16', '2020-12-27 04:22:15', 0, 3, 'explicitly', 80, 18, 'SilverStripe\\Home\\Property'),
(120, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:20', '2020-12-27 04:22:19', 0, 3, 'explicitly', 81, 17, 'SilverStripe\\Home\\Property'),
(121, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:28', '2020-12-27 04:22:27', 0, 3, 'explicitly', 82, 19, 'SilverStripe\\Home\\Property'),
(122, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:32', '2020-12-27 04:22:31', 0, 3, 'explicitly', 83, 20, 'SilverStripe\\Home\\Property'),
(123, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:35', '2020-12-27 04:22:35', 0, 3, 'explicitly', 84, 21, 'SilverStripe\\Home\\Property'),
(124, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:38', '2020-12-27 04:22:38', 0, 3, 'explicitly', 85, 22, 'SilverStripe\\Home\\Property'),
(125, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:42', '2020-12-27 04:22:42', 0, 3, 'explicitly', 86, 23, 'SilverStripe\\Home\\Property'),
(126, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:45', '2020-12-27 04:22:45', 0, 3, 'explicitly', 87, 24, 'SilverStripe\\Home\\Property'),
(127, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:47', '2020-12-27 04:22:47', 0, 3, 'explicitly', 88, 25, 'SilverStripe\\Home\\Property'),
(128, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:51', '2020-12-27 04:22:51', 0, 3, 'explicitly', 89, 26, 'SilverStripe\\Home\\Property'),
(129, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:54', '2020-12-27 04:22:54', 0, 3, 'explicitly', 90, 27, 'SilverStripe\\Home\\Property'),
(130, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:22:59', '2020-12-27 04:22:58', 0, 3, 'explicitly', 91, 28, 'SilverStripe\\Home\\Property'),
(132, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:24:29', '2020-12-27 04:24:29', 0, 0, 'implicitly', 92, 3, 'SilverStripe\\Home\\SubPhotos'),
(133, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-27 04:24:29', '2020-12-27 04:24:29', 2, 2, 'implicitly', 92, 20, 'SilverStripe\\Assets\\File'),
(134, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-28 07:31:29', '2020-12-28 07:31:29', 0, 2, 'explicitly', 93, 3, 'SilverStripe\\Home\\Region'),
(135, 'SilverStripe\\Versioned\\ChangeSetItem', '2020-12-28 07:31:30', '2020-12-28 07:31:29', 0, 2, 'implicitly', 93, 22, 'SilverStripe\\Assets\\File');

-- --------------------------------------------------------

--
-- Table structure for table `changesetitem_referencedby`
--

CREATE TABLE `changesetitem_referencedby` (
  `ID` int(11) NOT NULL,
  `ChangeSetItemID` int(11) NOT NULL DEFAULT 0,
  `ChildID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `changesetitem_referencedby`
--

INSERT INTO `changesetitem_referencedby` (`ID`, `ChangeSetItemID`, `ChildID`) VALUES
(1, 13, 12),
(2, 14, 12),
(3, 16, 15),
(4, 17, 15),
(5, 20, 19),
(6, 27, 26),
(7, 29, 28),
(8, 30, 28),
(9, 32, 31),
(10, 33, 31),
(11, 38, 37),
(12, 39, 37),
(13, 46, 45),
(14, 48, 47),
(15, 50, 49),
(16, 51, 49),
(17, 64, 63),
(18, 66, 65),
(19, 74, 73),
(20, 75, 73),
(21, 77, 76),
(22, 78, 76),
(23, 79, 76),
(24, 80, 76),
(25, 81, 76),
(26, 83, 82),
(27, 84, 82),
(28, 85, 82),
(29, 86, 82),
(30, 87, 82),
(31, 89, 88),
(32, 93, 92),
(33, 94, 92),
(34, 96, 95),
(35, 97, 95),
(36, 99, 98),
(37, 100, 98),
(38, 102, 101),
(39, 103, 101),
(40, 132, 131),
(41, 133, 131),
(42, 135, 134);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage`
--

CREATE TABLE `errorpage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errorpage`
--

INSERT INTO `errorpage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_live`
--

CREATE TABLE `errorpage_live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errorpage_live`
--

INSERT INTO `errorpage_live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `errorpage_versions`
--

CREATE TABLE `errorpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `ErrorCode` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errorpage_versions`
--

INSERT INTO `errorpage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`) VALUES
(1, 4, 1, 404),
(2, 4, 2, 404),
(3, 5, 1, 500),
(4, 5, 2, 500);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `FileHash` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 'SilverStripe\\Assets\\Folder', '2020-12-19 09:38:46', '2020-12-19 09:38:46', 2, 'Inherit', 'Inherit', 'travel-photos', 'travel-photos', 1, 0, 1, NULL, NULL, NULL),
(2, 'SilverStripe\\Assets\\Folder', '2020-12-19 09:38:48', '2020-12-19 09:38:47', 2, 'Inherit', 'Inherit', 'travel-docs', 'travel-docs', 1, 0, 1, NULL, NULL, NULL),
(3, 'SilverStripe\\Assets\\Image', '2020-12-19 09:40:06', '2020-12-19 09:39:55', 2, 'Inherit', 'Inherit', 'il_570xN.1538766655_2dgx.jpg', 'il 570xN.1538766655 2dgx', 1, 1, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'travel-photos/il_570xN.1538766655_2dgx.jpg', NULL),
(4, 'SilverStripe\\Assets\\File', '2020-12-19 09:40:07', '2020-12-19 09:40:02', 2, 'Inherit', 'Inherit', 'Account-History-Report01-25-2019_23-04-51.pdf', 'Account History Report01 25 2019 23 04 51', 1, 2, 1, '9743e380f82274597f262f54ee9fd3a6d3aa968a', 'travel-docs/Account-History-Report01-25-2019_23-04-51.pdf', NULL),
(5, 'SilverStripe\\Assets\\Image', '2020-12-19 09:54:18', '2020-12-19 09:54:02', 2, 'Inherit', 'Inherit', 'My-Pic-v2.jpg', 'My Pic v2', 1, 1, 1, 'cd8fbdb2bbdec0d77c9eb611f023ead46143a54f', 'travel-photos/My-Pic-v2.jpg', NULL),
(6, 'SilverStripe\\Assets\\File', '2020-12-19 09:54:18', '2020-12-19 09:54:09', 2, 'Inherit', 'Inherit', 'birth.pdf', 'birth', 1, 2, 1, '42c996c766b25b64e096a53cd0f31b69e8cb98fa', 'travel-docs/birth.pdf', NULL),
(7, 'SilverStripe\\Assets\\Folder', '2020-12-19 10:42:50', '2020-12-19 10:42:50', 2, 'Inherit', 'Inherit', 'region-photos', 'region-photos', 1, 0, 1, NULL, NULL, NULL),
(8, 'SilverStripe\\Assets\\Image', '2020-12-19 10:46:08', '2020-12-19 10:45:44', 2, 'Inherit', 'Inherit', 'IMG_0025.JPG', 'IMG 0025', 1, 7, 1, 'dc9cb7d1d9217dab1361f27e99f798e2d72ef610', 'region-photos/IMG_0025.JPG', NULL),
(9, 'SilverStripe\\Assets\\Folder', '2020-12-19 11:11:15', '2020-12-19 11:11:14', 2, 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(10, 'SilverStripe\\Assets\\Image', '2020-12-25 10:47:50', '2020-12-25 10:47:34', 2, 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 7, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'region-photos/prayer.png', NULL),
(11, 'SilverStripe\\Assets\\Folder', '2020-12-25 22:00:04', '2020-12-25 22:00:04', 2, 'Inherit', 'Inherit', 'property-photos', 'property-photos', 1, 0, 1, NULL, NULL, NULL),
(12, 'SilverStripe\\Assets\\Image', '2020-12-25 22:00:55', '2020-12-25 22:00:55', 1, 'Inherit', 'Inherit', 'My-Pic.jpg', 'My Pic', 1, 11, 1, 'cd8fbdb2bbdec0d77c9eb611f023ead46143a54f', 'property-photos/My-Pic.jpg', NULL),
(13, 'SilverStripe\\Assets\\Image', '2020-12-25 23:04:40', '2020-12-25 23:04:40', 1, 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 11, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'property-photos/prayer.png', NULL),
(14, 'SilverStripe\\Assets\\Image', '2020-12-26 00:13:10', '2020-12-26 00:13:10', 1, 'Inherit', 'Inherit', 'logo.png', 'logo', 1, 9, 1, 'bca6276e6b0db7b061a2cbc52b40c349a8a23563', 'Uploads/logo.png', NULL),
(15, 'SilverStripe\\Assets\\Image', '2020-12-26 00:27:16', '2020-12-26 00:27:16', 1, 'Inherit', 'Inherit', 'logo.png', 'logo', 1, 11, 1, 'bca6276e6b0db7b061a2cbc52b40c349a8a23563', 'property-photos/logo.png', NULL),
(16, 'SilverStripe\\Assets\\Image', '2020-12-26 06:09:09', '2020-12-26 00:28:04', 2, 'Inherit', 'Inherit', 'il_570xN.1538766655_2dgx.jpg', 'il 570xN.1538766655 2dgx', 1, 11, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'property-photos/il_570xN.1538766655_2dgx.jpg', NULL),
(17, 'SilverStripe\\Assets\\Folder', '2020-12-26 00:28:25', '2020-12-26 00:28:25', 2, 'Inherit', 'Inherit', 'Property-sub-photos', 'Property-sub-photos', 1, 0, 1, NULL, NULL, NULL),
(18, 'SilverStripe\\Assets\\Image', '2020-12-26 00:28:59', '2020-12-26 00:28:49', 2, 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 17, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'Property-sub-photos/prayer.png', NULL),
(19, 'SilverStripe\\Assets\\Image', '2020-12-26 00:29:44', '2020-12-26 00:29:26', 2, 'Inherit', 'Inherit', 'logo.png', 'logo', 1, 17, 1, 'bca6276e6b0db7b061a2cbc52b40c349a8a23563', 'Property-sub-photos/logo.png', NULL),
(20, 'SilverStripe\\Assets\\Image', '2020-12-26 06:08:52', '2020-12-26 06:05:36', 2, 'Inherit', 'Inherit', 'il_570xN-v2.1538766655_2dgx.jpg', 'il 570xN v2.1538766655 2dgx', 1, 11, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'property-photos/il_570xN-v2.1538766655_2dgx.jpg', NULL),
(21, 'SilverStripe\\Assets\\Image', '2020-12-26 06:09:48', '2020-12-26 06:09:44', 2, 'Inherit', 'Inherit', 'cec-logo-accr.png', 'cec logo accr', 1, 11, 1, 'de2549e381e12bb643c8980442f9774323503bcb', 'property-photos/cec-logo-accr.png', NULL),
(22, 'SilverStripe\\Assets\\Image', '2020-12-28 07:31:29', '2020-12-28 07:31:18', 2, 'Inherit', 'Inherit', 'aaa.jpg', 'aaa', 1, 7, 1, '5d8338e23fc382e9a22ab402474875ba7c03ac72', 'region-photos/aaa.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filelink`
--

CREATE TABLE `filelink` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Assets\\Shortcodes\\FileLink') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Assets\\Shortcodes\\FileLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('SilverStripe\\Home\\ArticleCategory','SilverStripe\\Home\\ArticleComment','SilverStripe\\Home\\Property','SilverStripe\\Home\\SubPhotos','SilverStripe\\Home\\Region','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','SilverStripe\\Home\\ArticleHolder','SilverStripe\\Home\\ArticlePage','SilverStripe\\Home\\HomePage','SilverStripe\\Home\\PropertySearchPage','SilverStripe\\Home\\RegionsPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\ArticleCategory'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `file_editorgroups`
--

CREATE TABLE `file_editorgroups` (
  `ID` int(11) NOT NULL,
  `FileID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `file_live`
--

CREATE TABLE `file_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `FileHash` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_live`
--

INSERT INTO `file_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 'SilverStripe\\Assets\\Folder', '2020-12-19 09:38:46', '2020-12-19 09:38:46', 2, 'Inherit', 'Inherit', 'travel-photos', 'travel-photos', 1, 0, 1, NULL, NULL, NULL),
(2, 'SilverStripe\\Assets\\Folder', '2020-12-19 09:38:48', '2020-12-19 09:38:47', 2, 'Inherit', 'Inherit', 'travel-docs', 'travel-docs', 1, 0, 1, NULL, NULL, NULL),
(3, 'SilverStripe\\Assets\\Image', '2020-12-19 09:40:06', '2020-12-19 09:39:55', 2, 'Inherit', 'Inherit', 'il_570xN.1538766655_2dgx.jpg', 'il 570xN.1538766655 2dgx', 1, 1, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'travel-photos/il_570xN.1538766655_2dgx.jpg', NULL),
(4, 'SilverStripe\\Assets\\File', '2020-12-19 09:40:07', '2020-12-19 09:40:02', 2, 'Inherit', 'Inherit', 'Account-History-Report01-25-2019_23-04-51.pdf', 'Account History Report01 25 2019 23 04 51', 1, 2, 1, '9743e380f82274597f262f54ee9fd3a6d3aa968a', 'travel-docs/Account-History-Report01-25-2019_23-04-51.pdf', NULL),
(5, 'SilverStripe\\Assets\\Image', '2020-12-19 09:54:18', '2020-12-19 09:54:02', 2, 'Inherit', 'Inherit', 'My-Pic-v2.jpg', 'My Pic v2', 1, 1, 1, 'cd8fbdb2bbdec0d77c9eb611f023ead46143a54f', 'travel-photos/My-Pic-v2.jpg', NULL),
(6, 'SilverStripe\\Assets\\File', '2020-12-19 09:54:18', '2020-12-19 09:54:09', 2, 'Inherit', 'Inherit', 'birth.pdf', 'birth', 1, 2, 1, '42c996c766b25b64e096a53cd0f31b69e8cb98fa', 'travel-docs/birth.pdf', NULL),
(7, 'SilverStripe\\Assets\\Folder', '2020-12-19 10:42:50', '2020-12-19 10:42:50', 2, 'Inherit', 'Inherit', 'region-photos', 'region-photos', 1, 0, 1, NULL, NULL, NULL),
(8, 'SilverStripe\\Assets\\Image', '2020-12-19 10:46:08', '2020-12-19 10:45:44', 2, 'Inherit', 'Inherit', 'IMG_0025.JPG', 'IMG 0025', 1, 7, 1, 'dc9cb7d1d9217dab1361f27e99f798e2d72ef610', 'region-photos/IMG_0025.JPG', NULL),
(9, 'SilverStripe\\Assets\\Folder', '2020-12-19 11:11:15', '2020-12-19 11:11:14', 2, 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(10, 'SilverStripe\\Assets\\Image', '2020-12-25 10:47:50', '2020-12-25 10:47:34', 2, 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 7, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'region-photos/prayer.png', NULL),
(11, 'SilverStripe\\Assets\\Folder', '2020-12-25 22:00:04', '2020-12-25 22:00:04', 2, 'Inherit', 'Inherit', 'property-photos', 'property-photos', 1, 0, 1, NULL, NULL, NULL),
(16, 'SilverStripe\\Assets\\Image', '2020-12-26 06:09:09', '2020-12-26 00:28:04', 2, 'Inherit', 'Inherit', 'il_570xN.1538766655_2dgx.jpg', 'il 570xN.1538766655 2dgx', 1, 11, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'property-photos/il_570xN.1538766655_2dgx.jpg', NULL),
(17, 'SilverStripe\\Assets\\Folder', '2020-12-26 00:28:25', '2020-12-26 00:28:25', 2, 'Inherit', 'Inherit', 'Property-sub-photos', 'Property-sub-photos', 1, 0, 1, NULL, NULL, NULL),
(18, 'SilverStripe\\Assets\\Image', '2020-12-26 00:28:59', '2020-12-26 00:28:49', 2, 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 17, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'Property-sub-photos/prayer.png', NULL),
(19, 'SilverStripe\\Assets\\Image', '2020-12-26 00:29:44', '2020-12-26 00:29:26', 2, 'Inherit', 'Inherit', 'logo.png', 'logo', 1, 17, 1, 'bca6276e6b0db7b061a2cbc52b40c349a8a23563', 'Property-sub-photos/logo.png', NULL),
(20, 'SilverStripe\\Assets\\Image', '2020-12-26 06:08:52', '2020-12-26 06:05:36', 2, 'Inherit', 'Inherit', 'il_570xN-v2.1538766655_2dgx.jpg', 'il 570xN v2.1538766655 2dgx', 1, 11, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'property-photos/il_570xN-v2.1538766655_2dgx.jpg', NULL),
(21, 'SilverStripe\\Assets\\Image', '2020-12-26 06:09:48', '2020-12-26 06:09:44', 2, 'Inherit', 'Inherit', 'cec-logo-accr.png', 'cec logo accr', 1, 11, 1, 'de2549e381e12bb643c8980442f9774323503bcb', 'property-photos/cec-logo-accr.png', NULL),
(22, 'SilverStripe\\Assets\\Image', '2020-12-28 07:31:29', '2020-12-28 07:31:18', 2, 'Inherit', 'Inherit', 'aaa.jpg', 'aaa', 1, 7, 1, '5d8338e23fc382e9a22ab402474875ba7c03ac72', 'region-photos/aaa.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_versions`
--

CREATE TABLE `file_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\Assets\\File','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Assets\\File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `OwnerID` int(11) NOT NULL DEFAULT 0,
  `FileHash` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileFilename` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileVariant` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `file_versions`
--

INSERT INTO `file_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Name`, `Title`, `ShowInSearch`, `ParentID`, `OwnerID`, `FileHash`, `FileFilename`, `FileVariant`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2020-12-19 09:38:46', '2020-12-19 09:38:46', 'Inherit', 'Inherit', 'travel-photos', 'travel-photos', 1, 0, 1, NULL, NULL, NULL),
(2, 1, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2020-12-19 09:38:46', '2020-12-19 09:38:46', 'Inherit', 'Inherit', 'travel-photos', 'travel-photos', 1, 0, 1, NULL, NULL, NULL),
(3, 2, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2020-12-19 09:38:47', '2020-12-19 09:38:47', 'Inherit', 'Inherit', 'travel-docs', 'travel-docs', 1, 0, 1, NULL, NULL, NULL),
(4, 2, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2020-12-19 09:38:48', '2020-12-19 09:38:47', 'Inherit', 'Inherit', 'travel-docs', 'travel-docs', 1, 0, 1, NULL, NULL, NULL),
(5, 3, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-19 09:39:55', '2020-12-19 09:39:55', 'Inherit', 'Inherit', 'il_570xN.1538766655_2dgx.jpg', 'il 570xN.1538766655 2dgx', 1, 1, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'travel-photos/il_570xN.1538766655_2dgx.jpg', NULL),
(6, 4, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\File', '2020-12-19 09:40:02', '2020-12-19 09:40:02', 'Inherit', 'Inherit', 'Account-History-Report01-25-2019_23-04-51.pdf', 'Account History Report01 25 2019 23 04 51', 1, 2, 1, '9743e380f82274597f262f54ee9fd3a6d3aa968a', 'travel-docs/Account-History-Report01-25-2019_23-04-51.pdf', NULL),
(7, 3, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-19 09:40:06', '2020-12-19 09:39:55', 'Inherit', 'Inherit', 'il_570xN.1538766655_2dgx.jpg', 'il 570xN.1538766655 2dgx', 1, 1, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'travel-photos/il_570xN.1538766655_2dgx.jpg', NULL),
(8, 4, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\File', '2020-12-19 09:40:07', '2020-12-19 09:40:02', 'Inherit', 'Inherit', 'Account-History-Report01-25-2019_23-04-51.pdf', 'Account History Report01 25 2019 23 04 51', 1, 2, 1, '9743e380f82274597f262f54ee9fd3a6d3aa968a', 'travel-docs/Account-History-Report01-25-2019_23-04-51.pdf', NULL),
(9, 5, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-19 09:54:02', '2020-12-19 09:54:02', 'Inherit', 'Inherit', 'My-Pic-v2.jpg', 'My Pic v2', 1, 1, 1, 'cd8fbdb2bbdec0d77c9eb611f023ead46143a54f', 'travel-photos/My-Pic-v2.jpg', NULL),
(10, 6, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\File', '2020-12-19 09:54:09', '2020-12-19 09:54:09', 'Inherit', 'Inherit', 'birth.pdf', 'birth', 1, 2, 1, '42c996c766b25b64e096a53cd0f31b69e8cb98fa', 'travel-docs/birth.pdf', NULL),
(11, 5, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-19 09:54:18', '2020-12-19 09:54:02', 'Inherit', 'Inherit', 'My-Pic-v2.jpg', 'My Pic v2', 1, 1, 1, 'cd8fbdb2bbdec0d77c9eb611f023ead46143a54f', 'travel-photos/My-Pic-v2.jpg', NULL),
(12, 6, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\File', '2020-12-19 09:54:18', '2020-12-19 09:54:09', 'Inherit', 'Inherit', 'birth.pdf', 'birth', 1, 2, 1, '42c996c766b25b64e096a53cd0f31b69e8cb98fa', 'travel-docs/birth.pdf', NULL),
(13, 7, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2020-12-19 10:42:50', '2020-12-19 10:42:50', 'Inherit', 'Inherit', 'region-photos', 'region-photos', 1, 0, 1, NULL, NULL, NULL),
(14, 7, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2020-12-19 10:42:50', '2020-12-19 10:42:50', 'Inherit', 'Inherit', 'region-photos', 'region-photos', 1, 0, 1, NULL, NULL, NULL),
(15, 8, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-19 10:45:44', '2020-12-19 10:45:44', 'Inherit', 'Inherit', 'IMG_0025.JPG', 'IMG 0025', 1, 7, 1, 'dc9cb7d1d9217dab1361f27e99f798e2d72ef610', 'region-photos/IMG_0025.JPG', NULL),
(16, 8, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-19 10:46:08', '2020-12-19 10:45:44', 'Inherit', 'Inherit', 'IMG_0025.JPG', 'IMG 0025', 1, 7, 1, 'dc9cb7d1d9217dab1361f27e99f798e2d72ef610', 'region-photos/IMG_0025.JPG', NULL),
(17, 9, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2020-12-19 11:11:14', '2020-12-19 11:11:14', 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(18, 9, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2020-12-19 11:11:15', '2020-12-19 11:11:14', 'Inherit', 'Inherit', 'Uploads', 'Uploads', 1, 0, 1, NULL, NULL, NULL),
(19, 10, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-25 10:47:34', '2020-12-25 10:47:34', 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 7, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'region-photos/prayer.png', NULL),
(20, 10, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-25 10:47:50', '2020-12-25 10:47:34', 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 7, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'region-photos/prayer.png', NULL),
(21, 11, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2020-12-25 22:00:04', '2020-12-25 22:00:04', 'Inherit', 'Inherit', 'property-photos', 'property-photos', 1, 0, 1, NULL, NULL, NULL),
(22, 11, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2020-12-25 22:00:04', '2020-12-25 22:00:04', 'Inherit', 'Inherit', 'property-photos', 'property-photos', 1, 0, 1, NULL, NULL, NULL),
(23, 12, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-25 22:00:55', '2020-12-25 22:00:55', 'Inherit', 'Inherit', 'My-Pic.jpg', 'My Pic', 1, 11, 1, 'cd8fbdb2bbdec0d77c9eb611f023ead46143a54f', 'property-photos/My-Pic.jpg', NULL),
(24, 13, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-25 23:04:40', '2020-12-25 23:04:40', 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 11, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'property-photos/prayer.png', NULL),
(25, 14, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-26 00:13:10', '2020-12-26 00:13:10', 'Inherit', 'Inherit', 'logo.png', 'logo', 1, 9, 1, 'bca6276e6b0db7b061a2cbc52b40c349a8a23563', 'Uploads/logo.png', NULL),
(26, 15, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-26 00:27:16', '2020-12-26 00:27:16', 'Inherit', 'Inherit', 'logo.png', 'logo', 1, 11, 1, 'bca6276e6b0db7b061a2cbc52b40c349a8a23563', 'property-photos/logo.png', NULL),
(27, 16, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-26 00:28:04', '2020-12-26 00:28:04', 'Inherit', 'Inherit', 'il_570xN.1538766655_2dgx.jpg', 'il 570xN.1538766655 2dgx', 1, 11, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'property-photos/il_570xN.1538766655_2dgx.jpg', NULL),
(28, 17, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Folder', '2020-12-26 00:28:25', '2020-12-26 00:28:25', 'Inherit', 'Inherit', 'Property-sub-photos', 'Property-sub-photos', 1, 0, 1, NULL, NULL, NULL),
(29, 17, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Folder', '2020-12-26 00:28:25', '2020-12-26 00:28:25', 'Inherit', 'Inherit', 'Property-sub-photos', 'Property-sub-photos', 1, 0, 1, NULL, NULL, NULL),
(30, 18, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-26 00:28:49', '2020-12-26 00:28:49', 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 17, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'Property-sub-photos/prayer.png', NULL),
(31, 18, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-26 00:28:59', '2020-12-26 00:28:49', 'Inherit', 'Inherit', 'prayer.png', 'prayer', 1, 17, 1, 'ad3751697a40d6a91a5e72fc85af686ffff47e25', 'Property-sub-photos/prayer.png', NULL),
(32, 19, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-26 00:29:26', '2020-12-26 00:29:26', 'Inherit', 'Inherit', 'logo.png', 'logo', 1, 17, 1, 'bca6276e6b0db7b061a2cbc52b40c349a8a23563', 'Property-sub-photos/logo.png', NULL),
(33, 19, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-26 00:29:44', '2020-12-26 00:29:26', 'Inherit', 'Inherit', 'logo.png', 'logo', 1, 17, 1, 'bca6276e6b0db7b061a2cbc52b40c349a8a23563', 'Property-sub-photos/logo.png', NULL),
(34, 20, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-26 06:05:36', '2020-12-26 06:05:36', 'Inherit', 'Inherit', 'il_570xN-v2.1538766655_2dgx.jpg', 'il 570xN v2.1538766655 2dgx', 1, 11, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'property-photos/il_570xN-v2.1538766655_2dgx.jpg', NULL),
(35, 20, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-26 06:08:52', '2020-12-26 06:05:36', 'Inherit', 'Inherit', 'il_570xN-v2.1538766655_2dgx.jpg', 'il 570xN v2.1538766655 2dgx', 1, 11, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'property-photos/il_570xN-v2.1538766655_2dgx.jpg', NULL),
(36, 16, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-26 06:09:09', '2020-12-26 00:28:04', 'Inherit', 'Inherit', 'il_570xN.1538766655_2dgx.jpg', 'il 570xN.1538766655 2dgx', 1, 11, 1, '1053c5da5af69e1c6ba5f1168bad97d8e791232a', 'property-photos/il_570xN.1538766655_2dgx.jpg', NULL),
(37, 21, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-26 06:09:44', '2020-12-26 06:09:44', 'Inherit', 'Inherit', 'cec-logo-accr.png', 'cec logo accr', 1, 11, 1, 'de2549e381e12bb643c8980442f9774323503bcb', 'property-photos/cec-logo-accr.png', NULL),
(38, 21, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-26 06:09:48', '2020-12-26 06:09:44', 'Inherit', 'Inherit', 'cec-logo-accr.png', 'cec logo accr', 1, 11, 1, 'de2549e381e12bb643c8980442f9774323503bcb', 'property-photos/cec-logo-accr.png', NULL),
(39, 22, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Assets\\Image', '2020-12-28 07:31:18', '2020-12-28 07:31:18', 'Inherit', 'Inherit', 'aaa.jpg', 'aaa', 1, 7, 1, '5d8338e23fc382e9a22ab402474875ba7c03ac72', 'region-photos/aaa.jpg', NULL),
(40, 22, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Assets\\Image', '2020-12-28 07:31:29', '2020-12-28 07:31:18', 'Inherit', 'Inherit', 'aaa.jpg', 'aaa', 1, 7, 1, '5d8338e23fc382e9a22ab402474875ba7c03ac72', 'region-photos/aaa.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file_viewergroups`
--

CREATE TABLE `file_viewergroups` (
  `ID` int(11) NOT NULL,
  `FileID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\Group') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`) VALUES
(1, 'SilverStripe\\Security\\Group', '2020-12-18 13:09:44', '2020-12-18 13:09:44', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0),
(2, 'SilverStripe\\Security\\Group', '2020-12-18 13:09:45', '2020-12-18 13:09:45', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_roles`
--

CREATE TABLE `group_roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT 0,
  `PermissionRoleID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `loginattempt`
--

CREATE TABLE `loginattempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\LoginAttempt') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EmailHashed` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginattempt`
--

INSERT INTO `loginattempt` (`ID`, `ClassName`, `LastEdited`, `Created`, `Email`, `EmailHashed`, `Status`, `IP`, `MemberID`) VALUES
(1, 'SilverStripe\\Security\\LoginAttempt', '2020-12-20 09:58:34', '2020-12-20 09:58:34', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '::1', 1),
(2, 'SilverStripe\\Security\\LoginAttempt', '2020-12-25 01:42:04', '2020-12-25 01:42:04', NULL, 'dc76e9f0c0006e8f919e0c515c66dbba3982f785', 'Success', '::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\Member') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`) VALUES
(1, 'SilverStripe\\Security\\Member', '2020-12-25 01:42:06', '2020-12-18 13:09:45', 'Default Admin', NULL, 'root', '68fd4952b737fe56ce6d0e88a56927ae15d1ce57', '2020-12-28 01:42:06', NULL, NULL, NULL, 'none', NULL, NULL, NULL, 'en_US', 0);

-- --------------------------------------------------------

--
-- Table structure for table `memberpassword`
--

CREATE TABLE `memberpassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\MemberPassword') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `memberpassword`
--

INSERT INTO `memberpassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'SilverStripe\\Security\\MemberPassword', '2020-12-18 13:09:46', '2020-12-18 13:09:46', NULL, NULL, 'none', 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\Permission') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL DEFAULT 1,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'SilverStripe\\Security\\Permission', '2020-12-18 13:09:44', '2020-12-18 13:09:44', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'SilverStripe\\Security\\Permission', '2020-12-18 13:09:44', '2020-12-18 13:09:44', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'SilverStripe\\Security\\Permission', '2020-12-18 13:09:44', '2020-12-18 13:09:44', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'SilverStripe\\Security\\Permission', '2020-12-18 13:09:44', '2020-12-18 13:09:44', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'SilverStripe\\Security\\Permission', '2020-12-18 13:09:45', '2020-12-18 13:09:45', 'ADMIN', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionrole`
--

CREATE TABLE `permissionrole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\PermissionRole') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `permissionrolecode`
--

CREATE TABLE `permissionrolecode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\Property') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\Property',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `Bedrooms` int(11) NOT NULL DEFAULT 0,
  `Bathrooms` int(11) NOT NULL DEFAULT 0,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `AvailableStart` date DEFAULT NULL,
  `AvailableEnd` date DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `PricePerNight`, `Bedrooms`, `Bathrooms`, `FeaturedOnHomepage`, `RegionID`, `PrimaryPhotoID`, `Version`, `AvailableStart`, `AvailableEnd`, `Description`) VALUES
(2, 'SilverStripe\\Home\\Property', '2020-12-26 06:09:47', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 1, 1, 21, 9, '2020-12-27', '2020-12-30', NULL),
(3, 'SilverStripe\\Home\\Property', '2020-12-26 23:44:44', '2020-12-26 09:27:53', '3', '0.00', 1, 1, 0, 1, 0, 5, '2020-12-27', '2021-01-02', NULL),
(4, 'SilverStripe\\Home\\Property', '2020-12-26 23:41:17', '2020-12-26 09:28:19', '4', '0.00', 1, 1, 0, 1, 0, 5, '2020-12-28', '2020-12-31', NULL),
(5, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:12', '2020-12-26 23:48:50', '5', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2020-12-31', NULL),
(6, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:29', '2020-12-26 23:48:50', '6', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-01', NULL),
(7, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:41', '2020-12-26 23:48:50', '7', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(8, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:53', '2020-12-26 23:48:50', '8', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-01', NULL),
(9, 'SilverStripe\\Home\\Property', '2020-12-26 23:50:08', '2020-12-26 23:48:50', '9', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2020-12-31', NULL),
(10, 'SilverStripe\\Home\\Property', '2020-12-26 23:50:25', '2020-12-26 23:48:51', '10', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2020-12-29', NULL),
(11, 'SilverStripe\\Home\\Property', '2020-12-27 00:13:19', '2020-12-26 23:48:51', '11', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2020-12-31', NULL),
(12, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:16', '2020-12-26 23:48:51', '12', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(13, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:25', '2020-12-26 23:48:51', '13', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(14, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:33', '2020-12-26 23:48:51', '14', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(15, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:40', '2020-12-26 23:48:52', '15', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(16, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:09', '2020-12-26 23:48:52', '16', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(17, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:20', '2020-12-26 23:48:52', '17', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(18, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:15', '2020-12-26 23:48:53', '18', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(19, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:28', '2020-12-26 23:48:53', '19', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(20, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:32', '2020-12-26 23:48:53', '20', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(21, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:35', '2020-12-26 23:48:53', '21', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(22, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:38', '2020-12-26 23:48:53', '22', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(23, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:42', '2020-12-26 23:48:53', '23', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(24, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:45', '2020-12-26 23:48:54', '24', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(25, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:47', '2020-12-26 23:48:54', '25', '0.00', 1, 1, 0, 1, 0, 3, '2020-12-27', '2021-01-02', NULL),
(26, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:51', '2020-12-26 23:48:54', 'Title 13', '0.00', 1, 1, 0, 1, 0, 3, NULL, NULL, NULL),
(27, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:54', '2020-12-26 23:48:54', 'Titlr 13', '0.00', 1, 1, 0, 1, 0, 3, NULL, NULL, NULL),
(28, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:59', '2020-12-26 23:48:54', 'Title 14', '0.00', 1, 1, 0, 1, 0, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `propertysubphotos`
--

CREATE TABLE `propertysubphotos` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\SubPhotos') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\SubPhotos',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `SubPhotoID` int(11) NOT NULL DEFAULT 0,
  `PropertyID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `propertysubphotos`
--

INSERT INTO `propertysubphotos` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `SubPhotoID`, `PropertyID`) VALUES
(1, 'SilverStripe\\Home\\SubPhotos', '2020-12-26 00:28:58', '2020-12-26 00:28:58', 'This is inside room', 'descritipn of this room', 18, 2),
(2, 'SilverStripe\\Home\\SubPhotos', '2020-12-26 00:29:44', '2020-12-26 00:29:44', 'this is barhroom', 'this is the description barh room', 19, 2),
(3, 'SilverStripe\\Home\\SubPhotos', '2020-12-26 00:39:14', '2020-12-26 00:39:14', 'Helllo', 'lkjrkljwe', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `property_live`
--

CREATE TABLE `property_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\Property') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\Property',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `Bedrooms` int(11) NOT NULL DEFAULT 0,
  `Bathrooms` int(11) NOT NULL DEFAULT 0,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0,
  `AvailableStart` date DEFAULT NULL,
  `AvailableEnd` date DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_live`
--

INSERT INTO `property_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `PricePerNight`, `Bedrooms`, `Bathrooms`, `FeaturedOnHomepage`, `RegionID`, `PrimaryPhotoID`, `AvailableStart`, `AvailableEnd`, `Description`) VALUES
(2, 'SilverStripe\\Home\\Property', '2020-12-26 06:09:47', '2020-12-26 00:27:36', 9, 'Room 2', '10.00', 1, 1, 1, 1, 21, NULL, NULL, NULL),
(3, 'SilverStripe\\Home\\Property', '2020-12-26 23:44:44', '2020-12-26 09:27:53', 5, 'Titlr 3', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(4, 'SilverStripe\\Home\\Property', '2020-12-26 23:41:17', '2020-12-26 09:28:19', 5, 'Title 4', '0.00', 1, 1, 0, 1, 0, '2020-12-28', '2020-12-31', NULL),
(5, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:12', '2020-12-26 23:48:50', 3, 'Room 1', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-31', NULL),
(6, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:29', '2020-12-26 23:48:50', 3, 'Room 2', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-01', NULL),
(7, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:41', '2020-12-26 23:48:50', 3, 'Titlr 3', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(8, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:53', '2020-12-26 23:48:50', 3, 'Title 4', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-01', NULL),
(9, 'SilverStripe\\Home\\Property', '2020-12-26 23:50:08', '2020-12-26 23:48:50', 3, 'Titlr 4', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-31', NULL),
(10, 'SilverStripe\\Home\\Property', '2020-12-26 23:50:25', '2020-12-26 23:48:51', 3, 'Title 5', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-29', NULL),
(11, 'SilverStripe\\Home\\Property', '2020-12-27 00:13:19', '2020-12-26 23:48:51', 3, 'Titlr 5', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-31', NULL),
(12, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:16', '2020-12-26 23:48:51', 3, '12', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(13, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:25', '2020-12-26 23:48:51', 3, '13', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(14, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:33', '2020-12-26 23:48:51', 3, '14', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(15, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:40', '2020-12-26 23:48:52', 3, '15', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(16, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:09', '2020-12-26 23:48:52', 3, '16', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(17, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:20', '2020-12-26 23:48:52', 3, '17', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(18, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:15', '2020-12-26 23:48:53', 3, '18', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(19, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:28', '2020-12-26 23:48:53', 3, '19', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(20, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:32', '2020-12-26 23:48:53', 3, '20', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(21, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:35', '2020-12-26 23:48:53', 3, '21', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(22, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:38', '2020-12-26 23:48:53', 3, '22', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(23, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:42', '2020-12-26 23:48:53', 3, '23', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(24, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:45', '2020-12-26 23:48:54', 3, '24', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(25, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:47', '2020-12-26 23:48:54', 3, '25', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(26, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:51', '2020-12-26 23:48:54', 3, 'Title 13', '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(27, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:54', '2020-12-26 23:48:54', 3, 'Titlr 13', '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(28, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:59', '2020-12-26 23:48:54', 3, 'Title 14', '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_versions`
--

CREATE TABLE `property_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\Home\\Property') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\Property',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `Bedrooms` int(11) NOT NULL DEFAULT 0,
  `Bathrooms` int(11) NOT NULL DEFAULT 0,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0,
  `AvailableStart` date DEFAULT NULL,
  `AvailableEnd` date DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property_versions`
--

INSERT INTO `property_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Title`, `PricePerNight`, `Bedrooms`, `Bathrooms`, `FeaturedOnHomepage`, `RegionID`, `PrimaryPhotoID`, `AvailableStart`, `AvailableEnd`, `Description`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 05:52:45', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 15, NULL, NULL, NULL),
(2, 2, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 05:53:01', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 0, 1, 16, NULL, NULL, NULL),
(3, 1, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 05:53:52', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 15, NULL, NULL, NULL),
(4, 1, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 05:53:53', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 15, NULL, NULL, NULL),
(5, 2, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 05:54:00', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 0, 1, 16, NULL, NULL, NULL),
(6, 2, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 05:54:00', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 0, 1, 16, NULL, NULL, NULL),
(7, 2, 4, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 05:55:37', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 1, 1, 16, NULL, NULL, NULL),
(8, 2, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 05:55:38', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 1, 1, 16, NULL, NULL, NULL),
(9, 1, 4, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 06:05:39', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, NULL, NULL, NULL),
(10, 1, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 06:05:40', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, NULL, NULL, NULL),
(11, 1, 6, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 06:08:51', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, NULL, NULL, NULL),
(12, 1, 7, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 06:08:52', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, NULL, NULL, NULL),
(13, 2, 6, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 06:09:08', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 1, 1, 16, NULL, NULL, NULL),
(14, 2, 7, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 06:09:09', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 1, 1, 16, NULL, NULL, NULL),
(15, 2, 8, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 06:09:46', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 1, 1, 21, NULL, NULL, NULL),
(16, 2, 9, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 06:09:47', '2020-12-26 00:27:36', 'Room 2', '10.00', 1, 1, 1, 1, 21, NULL, NULL, NULL),
(17, 3, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 09:27:53', '2020-12-26 09:27:53', NULL, '0.00', 1, 1, 0, 1, 0, '2020-12-17', '2020-12-23', NULL),
(18, 3, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 09:27:57', '2020-12-26 09:27:53', NULL, '0.00', 1, 1, 0, 1, 0, '2020-12-17', '2020-12-23', NULL),
(19, 3, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 09:27:57', '2020-12-26 09:27:53', NULL, '0.00', 1, 1, 0, 1, 0, '2020-12-17', '2020-12-23', NULL),
(20, 4, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 09:28:19', '2020-12-26 09:28:19', NULL, '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(21, 1, 8, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 11:22:10', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, '2020-12-26', NULL, NULL),
(22, 1, 9, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 11:22:11', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, '2020-12-26', NULL, NULL),
(23, 1, 10, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 11:22:16', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, '2020-12-26', '2021-01-09', NULL),
(24, 1, 11, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 11:22:18', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, '2020-12-26', '2021-01-09', NULL),
(25, 1, 12, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 11:22:44', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, '2020-12-26', '2021-01-09', NULL),
(26, 1, 13, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 11:22:45', '2020-12-25 23:04:43', 'Room 1', '29.00', 1, 3, 1, 2, 20, '2020-12-26', '2021-01-09', NULL),
(27, 1, 14, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 11:25:06', '2020-12-25 23:04:43', 'Room 1', '200.00', 1, 3, 1, 2, 20, '2020-12-26', '2021-01-09', NULL),
(28, 1, 15, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 11:25:07', '2020-12-25 23:04:43', 'Room 1', '200.00', 1, 3, 1, 2, 20, '2020-12-26', '2021-01-09', NULL),
(29, 4, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:41:09', '2020-12-26 09:28:19', NULL, '0.00', 1, 1, 0, 1, 0, '2020-12-28', '2020-12-31', NULL),
(30, 4, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 23:41:09', '2020-12-26 09:28:19', NULL, '0.00', 1, 1, 0, 1, 0, '2020-12-28', '2020-12-31', NULL),
(31, 4, 4, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:41:16', '2020-12-26 09:28:19', 'Title 4', '0.00', 1, 1, 0, 1, 0, '2020-12-28', '2020-12-31', NULL),
(32, 4, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 23:41:17', '2020-12-26 09:28:19', 'Title 4', '0.00', 1, 1, 0, 1, 0, '2020-12-28', '2020-12-31', NULL),
(33, 3, 4, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:44:43', '2020-12-26 09:27:53', 'Titlr 3', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(34, 3, 5, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 23:44:44', '2020-12-26 09:27:53', 'Titlr 3', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(35, 5, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:50', '2020-12-26 23:48:50', 'Room 1', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(36, 6, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:50', '2020-12-26 23:48:50', 'Room 2', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(37, 7, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:50', '2020-12-26 23:48:50', 'Titlr 3', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(38, 8, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:50', '2020-12-26 23:48:50', 'Title 4', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(39, 9, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:50', '2020-12-26 23:48:50', 'Titlr 4', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(40, 10, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:51', '2020-12-26 23:48:51', 'Title 5', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(41, 11, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:51', '2020-12-26 23:48:51', 'Titlr 5', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(42, 12, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:51', '2020-12-26 23:48:51', 'Title 6', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(43, 13, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:51', '2020-12-26 23:48:51', 'Titlr 6', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(44, 14, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:51', '2020-12-26 23:48:51', 'Title 7', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(45, 15, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:52', '2020-12-26 23:48:52', 'Titlr 7', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(46, 16, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:52', '2020-12-26 23:48:52', 'Title 8', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(47, 17, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:52', '2020-12-26 23:48:52', 'Titlr 8', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(48, 18, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:53', '2020-12-26 23:48:53', 'Title 9', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(49, 19, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:53', '2020-12-26 23:48:53', 'Titlr 9', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(50, 20, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:53', '2020-12-26 23:48:53', 'Title 10', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(51, 21, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:53', '2020-12-26 23:48:53', 'Titlr 10', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(52, 22, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:53', '2020-12-26 23:48:53', 'Title 11', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(53, 23, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:53', '2020-12-26 23:48:53', 'Titlr 11', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(54, 24, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:54', '2020-12-26 23:48:54', 'Title 12', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(55, 25, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:54', '2020-12-26 23:48:54', 'Titlr 12', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(56, 26, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:54', '2020-12-26 23:48:54', 'Title 13', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(57, 27, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:54', '2020-12-26 23:48:54', 'Titlr 13', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(58, 28, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:48:54', '2020-12-26 23:48:54', 'Title 14', '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL),
(59, 5, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:11', '2020-12-26 23:48:50', 'Room 1', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-31', NULL),
(60, 5, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:12', '2020-12-26 23:48:50', 'Room 1', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-31', NULL),
(61, 6, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:28', '2020-12-26 23:48:50', 'Room 2', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-01', NULL),
(62, 6, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:29', '2020-12-26 23:48:50', 'Room 2', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-01', NULL),
(63, 7, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:40', '2020-12-26 23:48:50', 'Titlr 3', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(64, 7, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:41', '2020-12-26 23:48:50', 'Titlr 3', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(65, 8, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:52', '2020-12-26 23:48:50', 'Title 4', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-01', NULL),
(66, 8, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 23:49:53', '2020-12-26 23:48:50', 'Title 4', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-01', NULL),
(67, 9, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:50:07', '2020-12-26 23:48:50', 'Titlr 4', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-31', NULL),
(68, 9, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 23:50:08', '2020-12-26 23:48:50', 'Titlr 4', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-31', NULL),
(69, 10, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-26 23:50:24', '2020-12-26 23:48:51', 'Title 5', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-29', NULL),
(70, 10, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-26 23:50:25', '2020-12-26 23:48:51', 'Title 5', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-29', NULL),
(71, 11, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 00:13:18', '2020-12-26 23:48:51', 'Titlr 5', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-31', NULL),
(72, 11, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 00:13:19', '2020-12-26 23:48:51', 'Titlr 5', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2020-12-31', NULL),
(73, 12, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:15', '2020-12-26 23:48:51', '12', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(74, 12, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:16', '2020-12-26 23:48:51', '12', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(75, 13, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:24', '2020-12-26 23:48:51', '13', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(76, 13, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:25', '2020-12-26 23:48:51', '13', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(77, 14, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:30', '2020-12-26 23:48:51', '14', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(78, 14, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:33', '2020-12-26 23:48:51', '14', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(79, 15, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:39', '2020-12-26 23:48:52', '15', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(80, 15, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:21:40', '2020-12-26 23:48:52', '15', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(81, 16, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:07', '2020-12-26 23:48:52', '16', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(82, 16, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:09', '2020-12-26 23:48:52', '16', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(83, 18, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:15', '2020-12-26 23:48:53', '18', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(84, 18, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:15', '2020-12-26 23:48:53', '18', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(85, 17, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:18', '2020-12-26 23:48:52', '17', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(86, 17, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:20', '2020-12-26 23:48:52', '17', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(87, 19, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:27', '2020-12-26 23:48:53', '19', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(88, 19, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:28', '2020-12-26 23:48:53', '19', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(89, 20, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:31', '2020-12-26 23:48:53', '20', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(90, 20, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:32', '2020-12-26 23:48:53', '20', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(91, 21, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:34', '2020-12-26 23:48:53', '21', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(92, 21, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:35', '2020-12-26 23:48:53', '21', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(93, 22, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:37', '2020-12-26 23:48:53', '22', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(94, 22, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:38', '2020-12-26 23:48:53', '22', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(95, 23, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:41', '2020-12-26 23:48:53', '23', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(96, 23, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:42', '2020-12-26 23:48:53', '23', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(97, 24, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:44', '2020-12-26 23:48:54', '24', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(98, 24, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:45', '2020-12-26 23:48:54', '24', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(99, 25, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:47', '2020-12-26 23:48:54', '25', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(100, 25, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:47', '2020-12-26 23:48:54', '25', '0.00', 1, 1, 0, 1, 0, '2020-12-27', '2021-01-02', NULL),
(101, 26, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:50', '2020-12-26 23:48:54', 'Title 13', '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(102, 26, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:51', '2020-12-26 23:48:54', 'Title 13', '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(103, 27, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:53', '2020-12-26 23:48:54', 'Titlr 13', '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(104, 27, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:54', '2020-12-26 23:48:54', 'Titlr 13', '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(105, 28, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:58', '2020-12-26 23:48:54', 'Title 14', '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(106, 28, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:22:59', '2020-12-26 23:48:54', 'Title 14', '0.00', 1, 1, 0, 1, 0, NULL, NULL, NULL),
(107, 1, 16, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Property', '2020-12-27 04:24:28', '2020-12-25 23:04:43', 'Room 1', '200.00', 1, 3, 1, 2, 20, '2020-12-26', '2021-01-09', 'no dis'),
(108, 1, 17, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:24:29', '2020-12-25 23:04:43', 'Room 1', '200.00', 1, 3, 1, 2, 20, '2020-12-26', '2021-01-09', 'no dis'),
(109, 1, 18, 1, 1, 1, 1, 1, 'SilverStripe\\Home\\Property', '2020-12-27 04:25:50', '2020-12-25 23:04:43', NULL, '0.00', 0, 0, 0, 0, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage`
--

CREATE TABLE `redirectorpage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_live`
--

CREATE TABLE `redirectorpage_live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `redirectorpage_versions`
--

CREATE TABLE `redirectorpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\Region') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\Region',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `RegionsPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `Description`, `PhotoID`, `RegionsPageID`) VALUES
(1, 'SilverStripe\\Home\\Region', '2020-12-26 08:42:20', '2020-12-19 10:46:00', 8, 'My Title 1', '<p><strong>My new Description 12</strong></p>', 8, 11),
(2, 'SilverStripe\\Home\\Region', '2020-12-25 10:47:50', '2020-12-25 10:47:43', 2, 'Region2', 'This is Reagion 2 data', 10, 11),
(3, 'SilverStripe\\Home\\Region', '2020-12-28 07:31:29', '2020-12-28 07:31:24', 2, 'xzcxcxzcx', '<p>xzcxzcxcxcxcxc</p>', 22, 11);

-- --------------------------------------------------------

--
-- Table structure for table `region_live`
--

CREATE TABLE `region_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\Region') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\Region',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT 0,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `RegionsPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region_live`
--

INSERT INTO `region_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Version`, `Title`, `Description`, `PhotoID`, `RegionsPageID`) VALUES
(1, 'SilverStripe\\Home\\Region', '2020-12-26 08:42:20', '2020-12-19 10:46:00', 8, 'My Title 1', '<p><strong>My new Description 12</strong></p>', 8, 11),
(2, 'SilverStripe\\Home\\Region', '2020-12-25 10:47:50', '2020-12-25 10:47:43', 2, 'Region2', 'This is Reagion 2 data', 10, 11),
(3, 'SilverStripe\\Home\\Region', '2020-12-28 07:31:29', '2020-12-28 07:31:24', 2, 'xzcxcxzcx', '<p>xzcxzcxcxcxcxc</p>', 22, 11);

-- --------------------------------------------------------

--
-- Table structure for table `region_versions`
--

CREATE TABLE `region_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\Home\\Region') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\Region',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `PhotoID` int(11) NOT NULL DEFAULT 0,
  `RegionsPageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `region_versions`
--

INSERT INTO `region_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `PhotoID`, `RegionsPageID`) VALUES
(1, 1, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Region', '2020-12-19 10:46:00', '2020-12-19 10:46:00', 'My Title 1', 'My Description 1', 8, 11),
(2, 1, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Region', '2020-12-19 10:46:07', '2020-12-19 10:46:00', 'My Title 1', 'My Description 1', 8, 11),
(3, 1, 3, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Region', '2020-12-21 03:20:20', '2020-12-19 10:46:00', 'My Title 1', 'My new Description 1', 8, 11),
(4, 1, 4, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Region', '2020-12-21 03:20:21', '2020-12-19 10:46:00', 'My Title 1', 'My new Description 1', 8, 11),
(5, 2, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Region', '2020-12-25 10:47:43', '2020-12-25 10:47:43', 'Region2', 'This is Reagion 2 data', 10, 11),
(6, 2, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Region', '2020-12-25 10:47:50', '2020-12-25 10:47:43', 'Region2', 'This is Reagion 2 data', 10, 11),
(7, 1, 5, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Region', '2020-12-25 11:02:44', '2020-12-19 10:46:00', 'My Title 1', 'My new Description 12', 8, 11),
(8, 1, 6, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Region', '2020-12-25 11:02:45', '2020-12-19 10:46:00', 'My Title 1', 'My new Description 12', 8, 11),
(9, 1, 7, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Region', '2020-12-26 08:42:19', '2020-12-19 10:46:00', 'My Title 1', '<p><strong>My new Description 12</strong></p>', 8, 11),
(10, 1, 8, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Region', '2020-12-26 08:42:20', '2020-12-19 10:46:00', 'My Title 1', '<p><strong>My new Description 12</strong></p>', 8, 11),
(11, 3, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\Region', '2020-12-28 07:31:24', '2020-12-28 07:31:24', 'xzcxcxzcx', '<p>xzcxzcxcxcxcxc</p>', 22, 11),
(12, 3, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\Region', '2020-12-28 07:31:29', '2020-12-28 07:31:24', 'xzcxcxzcx', '<p>xzcxzcxcxcxcxc</p>', 22, 11);

-- --------------------------------------------------------

--
-- Table structure for table `rememberloginhash`
--

CREATE TABLE `rememberloginhash` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Security\\RememberLoginHash') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Security\\RememberLoginHash',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `DeviceID` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `Hash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `silverstripe_home_articlecategory`
--

CREATE TABLE `silverstripe_home_articlecategory` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\ArticleCategory') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\ArticleCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ArticleHolderID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `silverstripe_home_articlecategory`
--

INSERT INTO `silverstripe_home_articlecategory` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `ArticleHolderID`) VALUES
(1, 'SilverStripe\\Home\\ArticleCategory', '2020-12-21 03:18:38', '2020-12-21 03:18:38', 'Movies', 12),
(2, 'SilverStripe\\Home\\ArticleCategory', '2020-12-21 03:18:52', '2020-12-21 03:18:52', 'News', 12),
(3, 'SilverStripe\\Home\\ArticleCategory', '2020-12-21 03:19:10', '2020-12-21 03:19:10', 'Teledramas ', 12),
(4, 'SilverStripe\\Home\\ArticleCategory', '2020-12-21 03:19:30', '2020-12-21 03:19:30', 'Children Games', 12);

-- --------------------------------------------------------

--
-- Table structure for table `silverstripe_home_articlecomment`
--

CREATE TABLE `silverstripe_home_articlecomment` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\ArticleComment') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\ArticleComment',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Comment` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `ArticlePageID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `silverstripe_home_articlecomment`
--

INSERT INTO `silverstripe_home_articlecomment` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Email`, `Comment`, `ArticlePageID`) VALUES
(1, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 04:29:50', '2020-12-22 04:29:50', 'Supun Silva', 'sinergylanka@gmail.com', NULL, 14),
(2, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 04:30:20', '2020-12-22 04:30:20', 'Supun Silva', 'sinergylanka@gmail.com', NULL, 14),
(3, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 04:30:46', '2020-12-22 04:30:46', 'Supun Lanka Chathuranga Silva', 'hgggh@df.nn', NULL, 14),
(4, 'SilverStripe\\Home\\ArticleComment', '2020-12-22 04:39:49', '2020-12-22 04:39:49', 'Supun Silva', 'sinergylanka@gmail.com', NULL, 14);

-- --------------------------------------------------------

--
-- Table structure for table `silverstripe_home_property`
--

CREATE TABLE `silverstripe_home_property` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\Property') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\Property',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PricePerNight` decimal(9,2) NOT NULL DEFAULT 0.00,
  `Bedrooms` int(11) NOT NULL DEFAULT 0,
  `Bathrooms` int(11) NOT NULL DEFAULT 0,
  `FeaturedOnHomepage` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `RegionID` int(11) NOT NULL DEFAULT 0,
  `PrimaryPhotoID` int(11) NOT NULL DEFAULT 0,
  `SubPhotosID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `silverstripe_home_property`
--

INSERT INTO `silverstripe_home_property` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `PricePerNight`, `Bedrooms`, `Bathrooms`, `FeaturedOnHomepage`, `RegionID`, `PrimaryPhotoID`, `SubPhotosID`) VALUES
(1, 'SilverStripe\\Home\\Property', '2020-12-25 22:01:35', '2020-12-25 22:00:59', 'Dixon Street Room for Rent', '70.00', 2, 1, 1, 1, 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `silverstripe_home_subphotos`
--

CREATE TABLE `silverstripe_home_subphotos` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\Home\\SubPhotos') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\SubPhotos',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SubPhotoID` int(11) NOT NULL DEFAULT 0,
  `PropertyID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `silverstripe_home_subphotos`
--

INSERT INTO `silverstripe_home_subphotos` (`ID`, `ClassName`, `LastEdited`, `Created`, `SubPhotoID`, `PropertyID`) VALUES
(1, 'SilverStripe\\Home\\SubPhotos', '2020-12-26 00:13:15', '2020-12-26 00:13:15', 14, 0),
(2, 'SilverStripe\\Home\\SubPhotos', '2020-12-26 00:14:13', '2020-12-26 00:14:13', 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig`
--

CREATE TABLE `siteconfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\SiteConfig\\SiteConfig') CHARACTER SET utf8 DEFAULT 'SilverStripe\\SiteConfig\\SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `FacebookLink` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TwitterLink` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `GoogleLink` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `YouTubeLink` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FooterContent` mediumtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siteconfig`
--

INSERT INTO `siteconfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `FacebookLink`, `TwitterLink`, `GoogleLink`, `YouTubeLink`, `FooterContent`) VALUES
(1, 'SilverStripe\\SiteConfig\\SiteConfig', '2020-12-23 08:56:35', '2020-12-18 13:09:39', 'Your Site Name', 'your tagline here', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 'facebok.com', 'tweeter.com', 'google.com', 'youtube.com', 'HelloHelloHello\r\nHelloHelloHello\r\nHelloHelloHello\r\nHelloHello');

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_createtoplevelgroups`
--

CREATE TABLE `siteconfig_createtoplevelgroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_editorgroups`
--

CREATE TABLE `siteconfig_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `siteconfig_viewergroups`
--

CREATE TABLE `siteconfig_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree`
--

CREATE TABLE `sitetree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','SilverStripe\\Home\\ArticleHolder','SilverStripe\\Home\\ArticlePage','SilverStripe\\Home\\HomePage','SilverStripe\\Home\\PropertySearchPage','SilverStripe\\Home\\RegionsPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT 0,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ReportClass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitetree`
--

INSERT INTO `sitetree` (`ID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Version`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 'SilverStripe\\Home\\HomePage', '2020-12-25 01:44:40', '2020-12-18 13:09:39', 'Inherit', 'Inherit', 6, 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p><p>hjkhjhjjhgjhg</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 'Page', '2020-12-18 13:09:42', '2020-12-18 13:09:41', 'Inherit', 'Inherit', 2, 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(4, 'SilverStripe\\ErrorPage\\ErrorPage', '2020-12-18 13:09:47', '2020-12-18 13:09:46', 'Inherit', 'Inherit', 2, 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 0),
(5, 'SilverStripe\\ErrorPage\\ErrorPage', '2020-12-18 13:09:49', '2020-12-18 13:09:49', 'Inherit', 'Inherit', 2, 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 0),
(7, 'Page', '2020-12-19 10:49:26', '2020-12-19 09:31:40', 'Inherit', 'Inherit', 5, 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(8, 'Page', '2020-12-19 09:36:30', '2020-12-19 09:32:03', 'Inherit', 'Inherit', 5, 'list-your-rental', 'List your Rental', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(11, 'SilverStripe\\Home\\RegionsPage', '2020-12-19 09:59:42', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 8, 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(12, 'SilverStripe\\Home\\ArticleHolder', '2020-12-19 09:37:16', '2020-12-19 09:37:02', 'Inherit', 'Inherit', 3, 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(14, 'SilverStripe\\Home\\ArticlePage', '2020-12-23 08:35:40', '2020-12-19 09:39:20', 'Inherit', 'Inherit', 3, 'article1', 'Article1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 12),
(15, 'SilverStripe\\Home\\ArticlePage', '2020-12-25 11:05:43', '2020-12-19 09:53:30', 'Inherit', 'Inherit', 3, 'article2', 'Article2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 12),
(16, 'SilverStripe\\Home\\PropertySearchPage', '2020-12-26 09:50:41', '2020-12-26 09:50:35', 'Inherit', 'Inherit', 2, 'new-property-search-page', 'New Property Search Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetreelink`
--

CREATE TABLE `sitetreelink` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTreeLink') CHARACTER SET utf8 DEFAULT 'SilverStripe\\CMS\\Model\\SiteTreeLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `LinkedID` int(11) NOT NULL DEFAULT 0,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `ParentClass` enum('SilverStripe\\Home\\ArticleCategory','SilverStripe\\Home\\ArticleComment','SilverStripe\\Home\\Property','SilverStripe\\Home\\SubPhotos','SilverStripe\\Home\\Region','SilverStripe\\Assets\\File','SilverStripe\\SiteConfig\\SiteConfig','SilverStripe\\Versioned\\ChangeSet','SilverStripe\\Versioned\\ChangeSetItem','SilverStripe\\Assets\\Shortcodes\\FileLink','SilverStripe\\CMS\\Model\\SiteTree','SilverStripe\\CMS\\Model\\SiteTreeLink','SilverStripe\\Security\\Group','SilverStripe\\Security\\LoginAttempt','SilverStripe\\Security\\Member','SilverStripe\\Security\\MemberPassword','SilverStripe\\Security\\Permission','SilverStripe\\Security\\PermissionRole','SilverStripe\\Security\\PermissionRoleCode','SilverStripe\\Security\\RememberLoginHash','SilverStripe\\Assets\\Folder','SilverStripe\\Assets\\Image','Page','SilverStripe\\Home\\ArticleHolder','SilverStripe\\Home\\ArticlePage','SilverStripe\\Home\\HomePage','SilverStripe\\Home\\PropertySearchPage','SilverStripe\\Home\\RegionsPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8 DEFAULT 'SilverStripe\\Home\\ArticleCategory'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_editorgroups`
--

CREATE TABLE `sitetree_editorgroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_live`
--

CREATE TABLE `sitetree_live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','SilverStripe\\Home\\ArticleHolder','SilverStripe\\Home\\ArticlePage','SilverStripe\\Home\\HomePage','SilverStripe\\Home\\PropertySearchPage','SilverStripe\\Home\\RegionsPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT 0,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ReportClass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitetree_live`
--

INSERT INTO `sitetree_live` (`ID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `Version`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 'SilverStripe\\Home\\HomePage', '2020-12-25 01:44:40', '2020-12-18 13:09:39', 'Inherit', 'Inherit', 6, 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p><p>hjkhjhjjhgjhg</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 'Page', '2020-12-18 13:09:42', '2020-12-18 13:09:41', 'Inherit', 'Inherit', 2, 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 5, 0, 0, NULL, 0),
(4, 'SilverStripe\\ErrorPage\\ErrorPage', '2020-12-18 13:09:47', '2020-12-18 13:09:46', 'Inherit', 'Inherit', 2, 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 0),
(5, 'SilverStripe\\ErrorPage\\ErrorPage', '2020-12-18 13:09:49', '2020-12-18 13:09:49', 'Inherit', 'Inherit', 2, 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 0),
(7, 'Page', '2020-12-19 10:49:26', '2020-12-19 09:31:40', 'Inherit', 'Inherit', 5, 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(8, 'Page', '2020-12-19 09:36:30', '2020-12-19 09:32:03', 'Inherit', 'Inherit', 5, 'list-your-rental', 'List your Rental', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(11, 'SilverStripe\\Home\\RegionsPage', '2020-12-19 09:59:42', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 8, 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(12, 'SilverStripe\\Home\\ArticleHolder', '2020-12-19 09:37:16', '2020-12-19 09:37:02', 'Inherit', 'Inherit', 3, 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(14, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:40:13', '2020-12-19 09:39:20', 'Inherit', 'Inherit', 3, 'article1', 'Article1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 12),
(15, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:54:18', '2020-12-19 09:53:30', 'Inherit', 'Inherit', 3, 'article2', 'Article2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 12),
(16, 'SilverStripe\\Home\\PropertySearchPage', '2020-12-26 09:50:41', '2020-12-26 09:50:35', 'Inherit', 'Inherit', 2, 'new-property-search-page', 'New Property Search Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_versions`
--

CREATE TABLE `sitetree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDeleted` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `WasDraft` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `AuthorID` int(11) NOT NULL DEFAULT 0,
  `PublisherID` int(11) NOT NULL DEFAULT 0,
  `ClassName` enum('SilverStripe\\CMS\\Model\\SiteTree','Page','SilverStripe\\Home\\ArticleHolder','SilverStripe\\Home\\ArticlePage','SilverStripe\\Home\\HomePage','SilverStripe\\Home\\PropertySearchPage','SilverStripe\\Home\\RegionsPage','SilverStripe\\ErrorPage\\ErrorPage','SilverStripe\\CMS\\Model\\RedirectorPage','SilverStripe\\CMS\\Model\\VirtualPage') CHARACTER SET utf8 DEFAULT 'Page',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `MetaDescription` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `ExtraMeta` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `Sort` int(11) NOT NULL DEFAULT 0,
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ReportClass` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitetree_versions`
--

INSERT INTO `sitetree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `WasDeleted`, `WasDraft`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `CanViewType`, `CanEditType`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `ParentID`) VALUES
(1, 1, 1, 0, 0, 1, 0, 0, 'Page', '2020-12-18 13:09:39', '2020-12-18 13:09:39', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(2, 1, 2, 1, 0, 1, 0, 0, 'Page', '2020-12-18 13:09:39', '2020-12-18 13:09:39', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(3, 2, 1, 0, 0, 1, 0, 0, 'Page', '2020-12-18 13:09:41', '2020-12-18 13:09:41', 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(4, 2, 2, 1, 0, 1, 0, 0, 'Page', '2020-12-18 13:09:42', '2020-12-18 13:09:41', 'Inherit', 'Inherit', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(5, 3, 1, 0, 0, 1, 0, 0, 'Page', '2020-12-18 13:09:43', '2020-12-18 13:09:43', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(6, 3, 2, 1, 0, 1, 0, 0, 'Page', '2020-12-18 13:09:44', '2020-12-18 13:09:43', 'Inherit', 'Inherit', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.</p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(7, 4, 1, 0, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2020-12-18 13:09:46', '2020-12-18 13:09:46', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 0),
(8, 4, 2, 1, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2020-12-18 13:09:47', '2020-12-18 13:09:46', 'Inherit', 'Inherit', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 0),
(9, 5, 1, 0, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2020-12-18 13:09:49', '2020-12-18 13:09:49', 'Inherit', 'Inherit', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(10, 5, 2, 1, 0, 1, 0, 0, 'SilverStripe\\ErrorPage\\ErrorPage', '2020-12-18 13:09:49', '2020-12-18 13:09:49', 'Inherit', 'Inherit', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 0),
(11, 6, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\RegionsPage', '2020-12-18 13:10:12', '2020-12-18 13:10:12', 'Inherit', 'Inherit', 'new-regions-page', 'New Regions Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 0),
(12, 3, 3, 1, 1, 1, 1, 1, 'Page', '2020-12-19 09:31:21', '2020-12-18 13:09:43', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(13, 7, 1, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:31:40', '2020-12-19 09:31:40', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(14, 7, 2, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:31:54', '2020-12-19 09:31:40', 'Inherit', 'Inherit', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(15, 7, 3, 1, 0, 1, 1, 1, 'Page', '2020-12-19 09:31:55', '2020-12-19 09:31:40', 'Inherit', 'Inherit', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 0),
(16, 8, 1, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:32:03', '2020-12-19 09:32:03', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(17, 8, 2, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:32:13', '2020-12-19 09:32:03', 'Inherit', 'Inherit', 'list-your-rental', 'List your Rental', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(18, 8, 3, 1, 0, 1, 1, 1, 'Page', '2020-12-19 09:32:14', '2020-12-19 09:32:03', 'Inherit', 'Inherit', 'list-your-rental', 'List your Rental', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(19, 9, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\RegionsPage', '2020-12-19 09:32:25', '2020-12-19 09:32:25', 'Inherit', 'Inherit', 'new-regions-page', 'New Regions Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 8),
(20, 10, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\RegionsPage', '2020-12-19 09:32:50', '2020-12-19 09:32:50', 'Inherit', 'Inherit', 'new-regions-page-2', 'New Regions Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 8),
(21, 11, 1, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:32:58', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 8),
(22, 11, 2, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:34:03', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 8),
(23, 11, 3, 1, 0, 1, 1, 1, 'Page', '2020-12-19 09:34:03', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 8),
(24, 9, 2, 1, 1, 1, 1, 1, 'SilverStripe\\Home\\RegionsPage', '2020-12-19 09:35:12', '2020-12-19 09:32:25', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(25, 10, 2, 1, 1, 1, 1, 1, 'SilverStripe\\Home\\RegionsPage', '2020-12-19 09:35:18', '2020-12-19 09:32:50', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(26, 11, 4, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:35:31', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(27, 11, 5, 1, 0, 1, 1, 1, 'Page', '2020-12-19 09:35:32', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 0),
(28, 6, 2, 1, 1, 1, 1, 1, 'SilverStripe\\Home\\RegionsPage', '2020-12-19 09:35:41', '2020-12-18 13:10:12', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(29, 8, 4, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:36:26', '2020-12-19 09:32:03', 'Inherit', 'Inherit', 'list-your-rental', 'List your Rental', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(30, 8, 5, 1, 0, 1, 1, 1, 'Page', '2020-12-19 09:36:30', '2020-12-19 09:32:03', 'Inherit', 'Inherit', 'list-your-rental', 'List your Rental', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(31, 7, 4, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:36:45', '2020-12-19 09:31:40', 'Inherit', 'Inherit', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(32, 11, 6, 0, 0, 1, 1, 0, 'Page', '2020-12-19 09:36:50', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(33, 12, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\ArticleHolder', '2020-12-19 09:37:02', '2020-12-19 09:37:02', 'Inherit', 'Inherit', 'new-article-holder', 'New Article Holder', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(34, 12, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\ArticleHolder', '2020-12-19 09:37:16', '2020-12-19 09:37:02', 'Inherit', 'Inherit', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(35, 12, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\ArticleHolder', '2020-12-19 09:37:16', '2020-12-19 09:37:02', 'Inherit', 'Inherit', 'travel-guides', 'Travel Guides', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 0),
(36, 13, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:38:43', '2020-12-19 09:38:43', 'Inherit', 'Inherit', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 7),
(37, 13, 2, 1, 1, 1, 1, 1, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:38:56', '2020-12-19 09:38:43', 'Inherit', 'Inherit', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0),
(38, 14, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:39:20', '2020-12-19 09:39:20', 'Inherit', 'Inherit', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 12),
(39, 14, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:40:05', '2020-12-19 09:39:20', 'Inherit', 'Inherit', 'article1', 'Article1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 12),
(40, 14, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:40:13', '2020-12-19 09:39:20', 'Inherit', 'Inherit', 'article1', 'Article1', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 12),
(41, 15, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:53:30', '2020-12-19 09:53:30', 'Inherit', 'Inherit', 'new-article-page', 'New Article Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 12),
(42, 15, 2, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:54:12', '2020-12-19 09:53:30', 'Inherit', 'Inherit', 'article2', 'Article2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 12),
(43, 15, 3, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\ArticlePage', '2020-12-19 09:54:18', '2020-12-19 09:53:30', 'Inherit', 'Inherit', 'article2', 'Article2', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 12),
(44, 11, 7, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\RegionsPage', '2020-12-19 09:59:39', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(45, 11, 8, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\RegionsPage', '2020-12-19 09:59:42', '2020-12-19 09:32:58', 'Inherit', 'Inherit', 'regions', 'Regions', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 0),
(46, 7, 5, 1, 0, 1, 1, 1, 'Page', '2020-12-19 10:49:26', '2020-12-19 09:31:40', 'Inherit', 'Inherit', 'find-a-rental', 'Find a Rental', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 0),
(47, 1, 3, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\HomePage', '2020-12-21 03:44:30', '2020-12-18 13:09:39', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(48, 1, 4, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\HomePage', '2020-12-21 03:44:31', '2020-12-18 13:09:39', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(49, 1, 5, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\HomePage', '2020-12-25 01:44:38', '2020-12-18 13:09:39', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p><p>hjkhjhjjhgjhg</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(50, 1, 6, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\HomePage', '2020-12-25 01:44:40', '2020-12-18 13:09:39', 'Inherit', 'Inherit', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p><p>hjkhjhjjhgjhg</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 0),
(51, 16, 1, 0, 0, 1, 1, 0, 'SilverStripe\\Home\\PropertySearchPage', '2020-12-26 09:50:35', '2020-12-26 09:50:35', 'Inherit', 'Inherit', 'new-property-search-page', 'New Property Search Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0),
(52, 16, 2, 1, 0, 1, 1, 1, 'SilverStripe\\Home\\PropertySearchPage', '2020-12-26 09:50:41', '2020-12-26 09:50:35', 'Inherit', 'Inherit', 'new-property-search-page', 'New Property Search Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sitetree_viewergroups`
--

CREATE TABLE `sitetree_viewergroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT 0,
  `GroupID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage`
--

CREATE TABLE `virtualpage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_live`
--

CREATE TABLE `virtualpage_live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `virtualpage_versions`
--

CREATE TABLE `virtualpage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT 0,
  `Version` int(11) NOT NULL DEFAULT 0,
  `VersionID` int(11) NOT NULL DEFAULT 0,
  `CopyContentFromID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articlecategory`
--
ALTER TABLE `articlecategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ArticleHolderID` (`ArticleHolderID`);

--
-- Indexes for table `articlecomments`
--
ALTER TABLE `articlecomments`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ArticlePageID` (`ArticlePageID`);

--
-- Indexes for table `articlepage`
--
ALTER TABLE `articlepage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `BrochureID` (`BrochureID`);

--
-- Indexes for table `articlepage_categories`
--
ALTER TABLE `articlepage_categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ArticlePageID` (`ArticlePageID`),
  ADD KEY `SilverStripe_Home_ArticleCategoryID` (`SilverStripe_Home_ArticleCategoryID`),
  ADD KEY `ArticleCategoryID` (`ArticleCategoryID`);

--
-- Indexes for table `articlepage_live`
--
ALTER TABLE `articlepage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `BrochureID` (`BrochureID`);

--
-- Indexes for table `articlepage_versions`
--
ALTER TABLE `articlepage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `BrochureID` (`BrochureID`);

--
-- Indexes for table `changeset`
--
ALTER TABLE `changeset`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `State` (`State`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `PublisherID` (`PublisherID`);

--
-- Indexes for table `changesetitem`
--
ALTER TABLE `changesetitem`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ObjectUniquePerChangeSet` (`ObjectID`,`ObjectClass`,`ChangeSetID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ChangeSetID` (`ChangeSetID`),
  ADD KEY `Object` (`ObjectID`,`ObjectClass`);

--
-- Indexes for table `changesetitem_referencedby`
--
ALTER TABLE `changesetitem_referencedby`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ChangeSetItemID` (`ChangeSetItemID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `errorpage`
--
ALTER TABLE `errorpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `FileHash` (`FileHash`);

--
-- Indexes for table `filelink`
--
ALTER TABLE `filelink`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `LinkedID` (`LinkedID`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `file_editorgroups`
--
ALTER TABLE `file_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FileID` (`FileID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `file_live`
--
ALTER TABLE `file_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `FileHash` (`FileHash`);

--
-- Indexes for table `file_versions`
--
ALTER TABLE `file_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `Name` (`Name`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `FileHash` (`FileHash`);

--
-- Indexes for table `file_viewergroups`
--
ALTER TABLE `file_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FileID` (`FileID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `group_roles`
--
ALTER TABLE `group_roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `loginattempt`
--
ALTER TABLE `loginattempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `EmailHashed` (`EmailHashed`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Surname` (`Surname`),
  ADD KEY `FirstName` (`FirstName`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `Email` (`Email`);

--
-- Indexes for table `memberpassword`
--
ALTER TABLE `memberpassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`);

--
-- Indexes for table `permissionrole`
--
ALTER TABLE `permissionrole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Title` (`Title`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RoleID` (`RoleID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`);

--
-- Indexes for table `propertysubphotos`
--
ALTER TABLE `propertysubphotos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubPhotoID` (`SubPhotoID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `property_live`
--
ALTER TABLE `property_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`);

--
-- Indexes for table `property_versions`
--
ALTER TABLE `property_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`);

--
-- Indexes for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `RegionsPageID` (`RegionsPageID`);

--
-- Indexes for table `region_live`
--
ALTER TABLE `region_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `RegionsPageID` (`RegionsPageID`);

--
-- Indexes for table `region_versions`
--
ALTER TABLE `region_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PhotoID` (`PhotoID`),
  ADD KEY `RegionsPageID` (`RegionsPageID`);

--
-- Indexes for table `rememberloginhash`
--
ALTER TABLE `rememberloginhash`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `DeviceID` (`DeviceID`),
  ADD KEY `Hash` (`Hash`);

--
-- Indexes for table `silverstripe_home_articlecategory`
--
ALTER TABLE `silverstripe_home_articlecategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ArticleHolderID` (`ArticleHolderID`);

--
-- Indexes for table `silverstripe_home_articlecomment`
--
ALTER TABLE `silverstripe_home_articlecomment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ArticlePageID` (`ArticlePageID`);

--
-- Indexes for table `silverstripe_home_property`
--
ALTER TABLE `silverstripe_home_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `RegionID` (`RegionID`),
  ADD KEY `PrimaryPhotoID` (`PrimaryPhotoID`),
  ADD KEY `SubPhotosID` (`SubPhotosID`);

--
-- Indexes for table `silverstripe_home_subphotos`
--
ALTER TABLE `silverstripe_home_subphotos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubPhotoID` (`SubPhotoID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `siteconfig`
--
ALTER TABLE `siteconfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree`
--
ALTER TABLE `sitetree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`);

--
-- Indexes for table `sitetreelink`
--
ALTER TABLE `sitetreelink`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `LinkedID` (`LinkedID`),
  ADD KEY `Parent` (`ParentID`,`ParentClass`);

--
-- Indexes for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`);

--
-- Indexes for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `Sort` (`Sort`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`);

--
-- Indexes for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `virtualpage`
--
ALTER TABLE `virtualpage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articlecategory`
--
ALTER TABLE `articlecategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `articlecomments`
--
ALTER TABLE `articlecomments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `articlepage`
--
ALTER TABLE `articlepage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `articlepage_categories`
--
ALTER TABLE `articlepage_categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `articlepage_live`
--
ALTER TABLE `articlepage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `articlepage_versions`
--
ALTER TABLE `articlepage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `changeset`
--
ALTER TABLE `changeset`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `changesetitem`
--
ALTER TABLE `changesetitem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `changesetitem_referencedby`
--
ALTER TABLE `changesetitem_referencedby`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `errorpage`
--
ALTER TABLE `errorpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `errorpage_live`
--
ALTER TABLE `errorpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `errorpage_versions`
--
ALTER TABLE `errorpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `filelink`
--
ALTER TABLE `filelink`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_editorgroups`
--
ALTER TABLE `file_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_live`
--
ALTER TABLE `file_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `file_versions`
--
ALTER TABLE `file_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `file_viewergroups`
--
ALTER TABLE `file_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_roles`
--
ALTER TABLE `group_roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loginattempt`
--
ALTER TABLE `loginattempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `memberpassword`
--
ALTER TABLE `memberpassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissionrole`
--
ALTER TABLE `permissionrole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissionrolecode`
--
ALTER TABLE `permissionrolecode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `propertysubphotos`
--
ALTER TABLE `propertysubphotos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_live`
--
ALTER TABLE `property_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `property_versions`
--
ALTER TABLE `property_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `redirectorpage`
--
ALTER TABLE `redirectorpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirectorpage_live`
--
ALTER TABLE `redirectorpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redirectorpage_versions`
--
ALTER TABLE `redirectorpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `region_live`
--
ALTER TABLE `region_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `region_versions`
--
ALTER TABLE `region_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rememberloginhash`
--
ALTER TABLE `rememberloginhash`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `silverstripe_home_articlecategory`
--
ALTER TABLE `silverstripe_home_articlecategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `silverstripe_home_articlecomment`
--
ALTER TABLE `silverstripe_home_articlecomment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `silverstripe_home_property`
--
ALTER TABLE `silverstripe_home_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `silverstripe_home_subphotos`
--
ALTER TABLE `silverstripe_home_subphotos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siteconfig`
--
ALTER TABLE `siteconfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siteconfig_createtoplevelgroups`
--
ALTER TABLE `siteconfig_createtoplevelgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteconfig_editorgroups`
--
ALTER TABLE `siteconfig_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siteconfig_viewergroups`
--
ALTER TABLE `siteconfig_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree`
--
ALTER TABLE `sitetree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sitetreelink`
--
ALTER TABLE `sitetreelink`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree_editorgroups`
--
ALTER TABLE `sitetree_editorgroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sitetree_live`
--
ALTER TABLE `sitetree_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sitetree_versions`
--
ALTER TABLE `sitetree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sitetree_viewergroups`
--
ALTER TABLE `sitetree_viewergroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtualpage`
--
ALTER TABLE `virtualpage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtualpage_live`
--
ALTER TABLE `virtualpage_live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtualpage_versions`
--
ALTER TABLE `virtualpage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
