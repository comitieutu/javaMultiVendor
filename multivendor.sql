-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2019 at 04:21 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multivendor`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `bankaccount` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `vendorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `parent`) VALUES
(1, 'headphone', 'headphone', 0),
(2, 'watch', 'watch', 1),
(3, 'phone', 'phone', 0),
(4, 'game', 'game', 0),
(5, 'laptop', 'laptop', 0),
(6, 'televison', 'televison', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `context` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contentstatic`
--

CREATE TABLE `contentstatic` (
  `id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contentstatic`
--

INSERT INTO `contentstatic` (`id`, `title`, `code`, `content`) VALUES
(1, 'About Us', 'au', '<div class=\"title-text title-about\" style=\"box-sizing: border-box; display: inline-block; width: 564.5px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><h3 style=\"box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 40px; line-height: 40px; font-family: \'Open Sans\'; color: #212121; margin: 0px; padding: 0px; text-transform: uppercase; position: relative; letter-spacing: 40px;\"><span style=\"box-sizing: border-box; color: #f5c615;\">A</span>BOUT</h3><h4 style=\"box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; font-size: 40px; line-height: 40px; font-family: \'Open Sans\'; color: inherit; margin: 20px 0px; padding: 0px; letter-spacing: 40px; text-transform: uppercase;\">US</h4></div><p>&nbsp;</p><div class=\"col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px 10px 0px 0px; float: left; width: 282.25px; margin-top: 30px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><h4 style=\"box-sizing: border-box; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 20px; font-family: \'Open Sans\'; color: #000000; margin: 0px 0px 30px; padding: 0px; text-transform: uppercase;\">THE STORE</h4><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 25px; font-family: \'Open Sans\'; color: #a1a1a1;\">Di Cantina Valpolicella Negrar la storia di uomini e donne dediti alla creazio Nullam dui lum ante ipsum primis in faucibus orci luctus et ultrices Nulla mattis enim ut sagittis Curalum ante ipsum primis in faucibus orci luctus</p><p style=\"box-sizing: border-box; margin: 0px 0px 20px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 25px; font-family: \'Open Sans\'; color: #a1a1a1;\">rutrum. Sed molestie justo et turpis placerat, blandit molestie ex condimentum. Phasellus et laoreet lacus, sed</p></div>'),
(2, 'Contact', 'ct', '<p>content of contact</p>');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `code3` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `code3`) VALUES
('', 'VN', '1');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `name`, `description`, `price`) VALUES
(1, 'Fast', 'fast delivery', 500),
(2, 'Normal', 'normal delivery', 100);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `StateOrProvinceId` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `StateOrProvinceId`, `name`, `type`, `location`) VALUES
(1, 1, '1', 'district', 'Ho CHi Minh');

-- --------------------------------------------------------

--
-- Table structure for table `flashsale`
--

CREATE TABLE `flashsale` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `sale` int(11) NOT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `description`) VALUES
(1, 'COD', 'cash on delivery'),
(2, 'PAYPAL', 'paypal');

-- --------------------------------------------------------

--
-- Table structure for table `personinfo`
--

CREATE TABLE `personinfo` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `firstname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `districtid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `personinfo`
--

INSERT INTO `personinfo` (`id`, `userid`, `firstname`, `lastname`, `gender`, `birthday`, `address`, `street`, `districtid`) VALUES
(1, 1, 'cong', 'nguyen', 1, '2019-08-01', 'Ho Chi Minh city', 'Nguyen Dinh Chieu', 1),
(2, 11, '1', '1', 0, '2019-08-16', '1', '1', NULL),
(3, 12, '1', '1', 0, '2019-08-09', '1', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `specification` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` double NOT NULL,
  `brand` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `content`, `specification`, `quantity`, `unitprice`, `brand`, `categoryid`) VALUES
(24, 'Apple Screen number 5', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY</strong></td></tr></tbody></table>', 10, 79, 'headphone', 1),
(25, 'Apple Watch', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 4, 89, 'headphone', 1),
(26, 'Mota SmartWatch G2 Pro', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 3, 56, 'headphone', 1),
(27, 'Sony Smartwatch 2 Sw2', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 9, 57, 'headphone', 1);
INSERT INTO `product` (`id`, `name`, `description`, `content`, `specification`, `quantity`, `unitprice`, `brand`, `categoryid`) VALUES
(28, 'Mota SmartWatch G2 Pro', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 10, 47, 'headphone', 1),
(29, 'Zeaplus Watch DM360', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 30, 567, 'headphone', 1),
(30, 'U8S Smart Bluetooth 3.0', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 7, 678, 'headphone', 1),
(31, 'I5 Plus Smart Bluetooth 4.0', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 7, 378, 'headphone', 1);
INSERT INTO `product` (`id`, `name`, `description`, `content`, `specification`, `quantity`, `unitprice`, `brand`, `categoryid`) VALUES
(32, 'Apple Watch Sport Green', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 8, 468, 'headphone', 1),
(33, 'I5 Plus Smart Funny Bluetooth 3.0', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 6, 976, 'headphone', 1),
(34, 'Sony Smartwatch 2 Sw3', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>', '<h2 style=\"box-sizing: border-box; font-family: \'Open Sans\', sans-serif; line-height: 30px; color: #262626; margin: 0px 0px 30px; font-size: 35px; padding: 0px; text-transform: uppercase; background-color: #ffffff;\">ABOUT THIS PRODUCT</h2><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 1170px; font-size: 16px; line-height: 30px; color: #797979; font-family: \'Open Sans\', sans-serif; background-color: #ffffff;\"><strong style=\"box-sizing: border-box;\">The Next Big Thing Is Here</strong>&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</p><p>&nbsp;</p><div class=\"panel-body\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px; background-color: #ffffff;\"><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 0px; padding-right: 15px; float: left; width: 585px; margin-top: 0px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-1.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 329px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-6\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding-left: 15px; padding-right: 0px; float: left; width: 585px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-2.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">3G OR 4G2 NETWORK CONNECTIVITY</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 392px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div><div class=\"media images col-md-12\" style=\"box-sizing: border-box; position: relative; min-height: 1px; padding: 0px; float: left; width: 1170px; margin-top: 15px; zoom: 1; overflow: hidden;\"><div class=\"pull-right\" style=\"box-sizing: border-box; float: right; padding-left: 10px;\"><img class=\"media-object img-circle\" style=\"box-sizing: border-box; border: 0px; vertical-align: middle; border-radius: 50%; display: block;\" src=\"http://landing.engocreative.com/html/dama/demo/assets/images/product-details-tab-3.jpg\" alt=\"images\" /></div><div class=\"media-body\" style=\"box-sizing: border-box; zoom: 1; overflow: hidden; width: 10000px; display: table-cell; vertical-align: top;\"><h4 class=\"media-heading\" style=\"box-sizing: border-box; font-family: inherit; line-height: 1.1; color: #262626; margin: 10px 0px 40px; font-size: 22px; padding: 0px; text-transform: uppercase;\">CIRCULAR INTERFACE</h4><p style=\"box-sizing: border-box; margin: 3px 0px; padding: 0px; display: inline-block; width: 810px; font-size: 16px; line-height: 30px; color: #797979;\">A revolutionary design keeps everything you need at your fingertips. The circular interface and unique rotating bezel let you navigate through notifications, apps and widgets quickly without covering the display.</p></div></div></div>', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY<br /><br /></strong></td></tr></tbody></table>', 3, 985, 'headphone', 1);

-- --------------------------------------------------------

--
-- Table structure for table `productdetail`
--

CREATE TABLE `productdetail` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productdetail`
--

INSERT INTO `productdetail` (`id`, `productid`, `photo`, `description`) VALUES
(29, 24, 'home1-slideshow.png', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(30, 24, 'Dana-home1-product2.jpg', NULL),
(31, 24, 'Dana-home1-product4.jpg', NULL),
(32, 25, 'home1-slideshow.png', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(33, 26, '14.jpg', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(34, 27, '16.jpg', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(35, 28, 'Dana-home1-product-featured3.png', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(36, 29, 'product-details-tab-2.jpg', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(37, 30, '19.jpg', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(38, 31, 'slide-show-home3.png', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(39, 32, 'banner-home3-3.png', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(40, 33, 'Dana-home1-product3.jpg', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(41, 34, '21.jpg', '<p>of the printing and typesetting industry. Lorem Ipsum has been the industry\'s Sale up to 40% text ever since the 1500s</p>'),
(42, 25, '10.jpg', NULL),
(43, 25, '11.jpg', NULL),
(44, 25, '12.jpg', NULL),
(45, 26, '15.jpg', NULL),
(46, 26, '17.jpg', NULL),
(47, 26, '18.jpg', NULL),
(48, 27, '1.png', NULL),
(49, 27, '8.jpg', NULL),
(50, 27, '15.jpg', NULL),
(51, 28, '17.jpg', NULL),
(52, 28, '18.jpg', NULL),
(53, 28, '19.jpg', NULL),
(54, 29, '1.jpg', NULL),
(55, 29, '7.jpg', NULL),
(56, 29, '14.jpg', NULL),
(57, 30, '3.jpg', NULL),
(58, 30, '4.jpg', NULL),
(59, 30, '5.jpg', NULL),
(60, 31, '19.jpg', NULL),
(61, 31, '20.jpg', NULL),
(62, 31, '22.jpg', NULL),
(63, 32, '1.png', NULL),
(64, 32, '9.jpg', NULL),
(65, 32, '17.jpg', NULL),
(66, 33, '14.jpg', NULL),
(67, 33, '15.jpg', NULL),
(68, 33, '22.jpg', NULL),
(69, 34, '11.jpg', NULL),
(70, 34, '12.jpg', NULL),
(71, 34, '20.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'CUSTOMER'),
(3, 'ROLE_SUPER_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `saleorder`
--

CREATE TABLE `saleorder` (
  `id` int(11) NOT NULL,
  `ordernumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deliveryprice` double NOT NULL,
  `totalprice` double NOT NULL,
  `shipdate` date NOT NULL,
  `shipperid` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `deliveryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `saleorder`
--

INSERT INTO `saleorder` (`id`, `ordernumber`, `userid`, `status`, `deliveryprice`, `totalprice`, `shipdate`, `shipperid`, `paymentid`, `deliveryid`) VALUES
(6, 'c1209510-d0bc-4d50-8bfc-cd0a2f8bc71b', 1, 'Confirmed & Pay on Delivery', 500, 1224, '2019-08-09', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `saleorderdetail`
--

CREATE TABLE `saleorderdetail` (
  `id` int(11) NOT NULL,
  `saleorderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` double NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `saleorderdetail`
--

INSERT INTO `saleorderdetail` (`id`, `saleorderid`, `productid`, `quantity`, `unitprice`, `discount`) VALUES
(5, 6, 31, 2, 378, 0),
(6, 6, 32, 1, 468, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipmentdetail`
--

CREATE TABLE `shipmentdetail` (
  `id` int(11) NOT NULL,
  `saleid` int(11) NOT NULL,
  `firstname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `shiptoaddress` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `shiptostreet` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `districtid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `id` int(11) NOT NULL,
  `company` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contactname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contactphone` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipper`
--

INSERT INTO `shipper` (`id`, `company`, `contactname`, `contactphone`) VALUES
(1, 'Shipper', 'Shipper', '12345567');

-- --------------------------------------------------------

--
-- Table structure for table `stateorprovince`
--

CREATE TABLE `stateorprovince` (
  `id` int(11) NOT NULL,
  `countryid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stateorprovince`
--

INSERT INTO `stateorprovince` (`id`, `countryid`, `code`, `name`, `type`) VALUES
(1, '', '1', 'Ho CHi minh', 'city');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `taxnumber` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `enable`) VALUES
(1, 'lecomi', 'lecomi@gmail.com', '$2a$04$YnS.4Ak1DPOV2YDjzPSl.ugIVk4/gXGPAHtSd/8g3fj2vJOuV49AG', 1),
(2, 'lecomi1', 'lecomi1@gmail.com', '$2a$04$YnS.4Ak1DPOV2YDjzPSl.ugIVk4/gXGPAHtSd/8g3fj2vJOuV49AG', 1),
(3, 'cong', 'cong@gmail.com', '$2a$04$p.gUiXz65s6f1P/IBjjSi.QJTjzBZMBo1HsUYNx0h.9mqOIK9t70u', 1),
(8, 'congcong', NULL, '$2a$10$pCT7wzfMQ.JrkveK1CFCU.2q5CXinnBICIveW0VXpluNmpAHPFVfy', 0),
(9, 'congcong1', NULL, '$2a$10$g85i2OMCXoHDxAqVA3GB5ud9iOaV3GTz3ydfAFjyzemaxMoBUbU.u', 0),
(11, 'thanh', '1@gmail.com', '$2a$10$D9fU128eAMYb3binr/6LhuqQuiokfGDyvncUx29y1lcbN/6HkjTSS', 1),
(12, 'test', '1@gmail.com', '$2a$10$jbYXmndkGNUutkoxLT0XrOocTND9OMoq7t/gq/4jNahVdvtWNuo6O', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`userid`, `roleid`, `enable`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 1),
(8, 2, 0),
(9, 2, 0),
(11, 2, 0),
(12, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `street` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `districtid` int(11) NOT NULL,
  `vendorid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorid` (`vendorid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `contentstatic`
--
ALTER TABLE `contentstatic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `StateOrProvinceId` (`StateOrProvinceId`);

--
-- Indexes for table `flashsale`
--
ALTER TABLE `flashsale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personinfo`
--
ALTER TABLE `personinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `districtid` (`districtid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saleorder`
--
ALTER TABLE `saleorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `shipperid` (`shipperid`),
  ADD KEY `deliveryid` (`deliveryid`),
  ADD KEY `saleorder_ibfk_4` (`paymentid`);

--
-- Indexes for table `saleorderdetail`
--
ALTER TABLE `saleorderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saleorderid` (`saleorderid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `shipmentdetail`
--
ALTER TABLE `shipmentdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saleid` (`saleid`),
  ADD KEY `districtid` (`districtid`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stateorprovince`
--
ALTER TABLE `stateorprovince`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryid` (`countryid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`userid`,`roleid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `roleid` (`roleid`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districtid` (`districtid`),
  ADD KEY `vendorid` (`vendorid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contentstatic`
--
ALTER TABLE `contentstatic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flashsale`
--
ALTER TABLE `flashsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personinfo`
--
ALTER TABLE `personinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `productdetail`
--
ALTER TABLE `productdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `saleorder`
--
ALTER TABLE `saleorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `saleorderdetail`
--
ALTER TABLE `saleorderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `shipmentdetail`
--
ALTER TABLE `shipmentdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipper`
--
ALTER TABLE `shipper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stateorprovince`
--
ALTER TABLE `stateorprovince`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank`
--
ALTER TABLE `bank`
  ADD CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`vendorid`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `district_ibfk_1` FOREIGN KEY (`StateOrProvinceId`) REFERENCES `stateorprovince` (`id`);

--
-- Constraints for table `personinfo`
--
ALTER TABLE `personinfo`
  ADD CONSTRAINT `personinfo_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `personinfo_ibfk_2` FOREIGN KEY (`districtid`) REFERENCES `district` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`);

--
-- Constraints for table `productdetail`
--
ALTER TABLE `productdetail`
  ADD CONSTRAINT `productdetail_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`);

--
-- Constraints for table `saleorder`
--
ALTER TABLE `saleorder`
  ADD CONSTRAINT `saleorder_ibfk_1` FOREIGN KEY (`deliveryid`) REFERENCES `delivery` (`id`),
  ADD CONSTRAINT `saleorder_ibfk_2` FOREIGN KEY (`shipperid`) REFERENCES `shipper` (`id`),
  ADD CONSTRAINT `saleorder_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `saleorder_ibfk_4` FOREIGN KEY (`paymentid`) REFERENCES `payment` (`id`);

--
-- Constraints for table `saleorderdetail`
--
ALTER TABLE `saleorderdetail`
  ADD CONSTRAINT `saleorderdetail_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `saleorderdetail_ibfk_2` FOREIGN KEY (`saleorderid`) REFERENCES `saleorder` (`id`);

--
-- Constraints for table `shipmentdetail`
--
ALTER TABLE `shipmentdetail`
  ADD CONSTRAINT `shipmentdetail_ibfk_1` FOREIGN KEY (`districtid`) REFERENCES `district` (`id`),
  ADD CONSTRAINT `shipmentdetail_ibfk_2` FOREIGN KEY (`saleid`) REFERENCES `saleorder` (`id`);

--
-- Constraints for table `stateorprovince`
--
ALTER TABLE `stateorprovince`
  ADD CONSTRAINT `stateorprovince_ibfk_1` FOREIGN KEY (`countryid`) REFERENCES `country` (`id`);

--
-- Constraints for table `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `userrole`
--
ALTER TABLE `userrole`
  ADD CONSTRAINT `userrole_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `userrole_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Constraints for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`vendorid`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `warehouse_ibfk_2` FOREIGN KEY (`districtid`) REFERENCES `district` (`id`);


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table bank
--

--
-- Metadata for table category
--

--
-- Metadata for table comment
--

--
-- Metadata for table contentstatic
--

--
-- Metadata for table country
--

--
-- Metadata for table delivery
--

--
-- Metadata for table district
--

--
-- Metadata for table flashsale
--

--
-- Metadata for table payment
--

--
-- Metadata for table personinfo
--

--
-- Metadata for table product
--

--
-- Metadata for table productdetail
--

--
-- Metadata for table role
--

--
-- Metadata for table saleorder
--

--
-- Metadata for table saleorderdetail
--

--
-- Metadata for table shipmentdetail
--

--
-- Metadata for table shipper
--

--
-- Metadata for table stateorprovince
--

--
-- Metadata for table supplier
--

--
-- Metadata for table user
--

--
-- Metadata for table userrole
--

--
-- Metadata for table warehouse
--

--
-- Metadata for database multivendor
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
