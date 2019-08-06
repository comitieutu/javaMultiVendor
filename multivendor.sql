-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 06, 2019 lúc 03:04 PM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `multivendor`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
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
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `parent`) VALUES
(1, 'headphone', 'Headphone', 0),
(2, 'watch', 'Watch', 1),
(3, 'phone', 'Phone', 0),
(4, 'game', 'Game', 0),
(5, 'laptop', 'Laptop', 0),
(6, 'television', 'Television', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `context` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contentstatic`
--

CREATE TABLE `contentstatic` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contentstatic`
--

INSERT INTO `contentstatic` (`id`, `title`, `code`, `content`) VALUES
(1, 'About Us', 'au', 'content of about us'),
(2, 'Contact', 'ct', 'content of contact');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `country`
--

CREATE TABLE `country` (
  `id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `code3` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `StateOrProvinceId` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `flashsale`
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
-- Cấu trúc bảng cho bảng `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personinfo`
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
  `districtid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` double NOT NULL,
  `brand` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `specification` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `quantity`, `unitprice`, `brand`, `specification`, `content`, `categoryid`) VALUES
(3, 'Apple Watch Sport Green', '<p><span style=\"color: #3a3a3a; font-family: \'Open Sans\'; font-size: 16px; font-weight: bold; text-transform: capitalize; background-color: #ffffff;\">Apple Watch Sport Green</span></p>', 11, 11, 'Beat', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY</strong></td></tr></tbody></table>', '<p><strong style=\"box-sizing: border-box; color: #797979; font-family: \'Open Sans\', sans-serif; font-size: 16px; background-color: #ffffff;\">The Next Big Thing Is Here</strong><span style=\"color: #797979; font-family: \'Open Sans\', sans-serif; font-size: 16px; background-color: #ffffff;\">&nbsp;Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.</span></p>', 1),
(4, 'Inspire 1 Pro White Edition', '<p><strong><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap; background-color: #ffffff;\">Inspire 1 Pro White Edition</span></strong></p>', 9, 15, 'Inspire', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY</strong></td></tr></tbody></table>', '<p><strong><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap; background-color: #ffffff;\">Inspire 1 Pro White Edition</span></strong></p>', 2),
(5, 'Philips spa 60 2.0 speaker with usb plug', '<p><strong><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap; background-color: #ffffff;\">Philips spa 60 2.0 speaker with usb plug</span></strong></p>', 15, 8, 'Philips', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY</strong></td></tr></tbody></table>', '<p><strong><span style=\"background-color: #ffffff; color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap;\">Philips spa 60 2.0 speaker with usb plug</span></strong></p>', 2),
(6, 'U8S Smart Bluetooth 3.0', '<p><span style=\"color: #3a3a3a; font-family: \'Open Sans\'; font-size: 16px; font-weight: bold; text-transform: capitalize; background-color: #ffffff;\">U8S Smart Bluetooth 3.0</span></p>', 22, 17, 'U8S', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY</strong></td></tr></tbody></table>', '<p><span style=\"color: #3a3a3a; font-family: \'Open Sans\'; font-size: 16px; font-weight: bold; text-transform: capitalize; background-color: #ffffff;\">U8S Smart Bluetooth 3.0</span></p>', 1),
(7, 'I5 Plus Smart Bluetooth 4.0', '<p><span style=\"color: #3a3a3a; font-family: \'Open Sans\'; font-size: 16px; font-weight: bold; text-transform: capitalize; background-color: #ffffff;\">I5 Plus Smart Bluetooth 4.0</span></p>', 13, 20, 'Sam Sung', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY</strong></td></tr></tbody></table>', '<p><span style=\"color: #3a3a3a; font-family: \'Open Sans\'; font-size: 16px; font-weight: bold; text-transform: capitalize; background-color: #ffffff;\">I5 Plus Smart Bluetooth 4.0</span></p>', 3),
(8, 'HP ENVY 13-d008na ', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap; background-color: #ffffff;\"><strong>HP ENVY 13-d008na</strong> </span></p>', 15, 30, 'HP', '<table class=\"table\" style=\"box-sizing: border-box; border-spacing: 0px; background-color: #ffffff; width: 1170px; max-width: 100%; margin-bottom: 20px; color: #161616; font-family: \'Open Sans\', sans-serif; font-size: 14px;\"><tbody style=\"box-sizing: border-box;\"><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CATEGORY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">GEAR S2 3G/4G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">CARRIER</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">AT&amp;T</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">FORM FACTOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">WEARABLE TECH</td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">COLOR</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">DARK GRAY</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">OS</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">TIZEN BASED WEARABLE PLATFORM</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">SIZE</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">51G</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">BATTERY TYPE AND SIZE</strong></td></tr><tr style=\"box-sizing: border-box;\"><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\">BATTERY</td><td style=\"box-sizing: border-box; padding: 8px; line-height: 1.42857; vertical-align: top; border-top-color: #dddddd; font-family: \'Open Sans\'; font-weight: 600; color: #262626; text-transform: uppercase;\"><strong style=\"box-sizing: border-box;\">INTERNAL MEMORY</strong></td></tr></tbody></table>', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap; background-color: #ffffff;\"><strong>HP ENVY 13-d008na</strong> </span></p>', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productdetail`
--

CREATE TABLE `productdetail` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `photo` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productdetail`
--

INSERT INTO `productdetail` (`id`, `productid`, `photo`, `description`) VALUES
(4, 3, '1.jpg', '<p><span style=\"color: #3a3a3a; font-family: \'Open Sans\'; font-size: 16px; font-weight: bold; text-transform: capitalize; background-color: #ffffff;\">Apple Watch Sport Green</span></p>'),
(5, 3, '1.png', NULL),
(6, 4, '3.jpg', '<p><strong><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap; background-color: #ffffff;\">Inspire 1 Pro White Edition</span></strong></p>'),
(7, 4, '4.jpg', '<p><strong><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap; background-color: #ffffff;\">Inspire 1 Pro White Edition</span></strong></p>'),
(8, 5, '21.jpg', '<p><strong><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap; background-color: #ffffff;\">Philips spa 60 2.0 speaker with usb plug</span></strong></p>'),
(9, 6, '12.jpg', '<p><span style=\"color: #3a3a3a; font-family: \'Open Sans\'; font-size: 16px; font-weight: bold; text-transform: capitalize; background-color: #ffffff;\">U8S Smart Bluetooth 3.0</span></p>'),
(10, 7, '9.jpg', '<p><span style=\"color: #3a3a3a; font-family: \'Open Sans\'; font-size: 16px; font-weight: bold; text-transform: capitalize; background-color: #ffffff;\">I5 Plus Smart Bluetooth 4.0</span></p>'),
(11, 8, 'banner-home3-2.png', '<p><span style=\"color: #222222; font-family: Consolas, \'Lucida Console\', \'Courier New\', monospace; font-size: 12px; white-space: pre-wrap; background-color: #ffffff;\"><strong>HP ENVY 13-d008na</strong> </span></p>'),
(12, 3, '2.jpg', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'CUSTOMER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saleorder`
--

CREATE TABLE `saleorder` (
  `id` int(11) NOT NULL,
  `ordernumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `deliveryprice` double NOT NULL,
  `totalprice` double NOT NULL,
  `shipdate` date NOT NULL,
  `shipperid` int(11) NOT NULL,
  `paymentid` int(11) NOT NULL,
  `deliveryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saleorderdetail`
--

CREATE TABLE `saleorderdetail` (
  `id` int(11) NOT NULL,
  `saleorderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` double NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipmentdetail`
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
-- Cấu trúc bảng cho bảng `shipper`
--

CREATE TABLE `shipper` (
  `id` int(11) NOT NULL,
  `company` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contactname` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `contactphone` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stateorprovince`
--

CREATE TABLE `stateorprovince` (
  `id` int(11) NOT NULL,
  `countryid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
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
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `enable`) VALUES
(1, 'lecomi', 'lecomi@gmail.com', '$2a$04$YnS.4Ak1DPOV2YDjzPSl.ugIVk4/gXGPAHtSd/8g3fj2vJOuV49AG', 1),
(2, 'lecomi1', 'lecomi1@gmail.com', '$2a$04$YnS.4Ak1DPOV2YDjzPSl.ugIVk4/gXGPAHtSd/8g3fj2vJOuV49AG', 1),
(3, 'cong', 'cong@gmail.com', '$2a$04$p.gUiXz65s6f1P/IBjjSi.QJTjzBZMBo1HsUYNx0h.9mqOIK9t70u', 1),
(8, 'congcong', NULL, '$2a$10$pCT7wzfMQ.JrkveK1CFCU.2q5CXinnBICIveW0VXpluNmpAHPFVfy', 0),
(9, 'congcong1', NULL, '$2a$10$g85i2OMCXoHDxAqVA3GB5ud9iOaV3GTz3ydfAFjyzemaxMoBUbU.u', 0),
(10, 'congcong2', NULL, '$2a$10$tp.OgAfUPiskSq1Uf1tFFeB0joqdNBZ2QvQDyZAzhHt5NlHUeIWHy', 1),
(11, 'lecomi3', NULL, '$2a$10$N5s9yV3wdjF8vxYwFXHa1.UwLXsTfMWi35MU9wctn3KqCbAmNLt3q', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `userrole`
--

CREATE TABLE `userrole` (
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `userrole`
--

INSERT INTO `userrole` (`userid`, `roleid`, `enable`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 1, 1),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouse`
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
-- Cấu trúc bảng cho bảng `contentstatic`
--

CREATE TABLE `contentstatic` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendorid` (`vendorid`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `productid` (`productid`);

--
-- Chỉ mục cho bảng `contentstatic`
--
ALTER TABLE `contentstatic`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `StateOrProvinceId` (`StateOrProvinceId`);

--
-- Chỉ mục cho bảng `flashsale`
--
ALTER TABLE `flashsale`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personinfo`
--
ALTER TABLE `personinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `districtid` (`districtid`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Chỉ mục cho bảng `productdetail`
--
ALTER TABLE `productdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `saleorder`
--
ALTER TABLE `saleorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `shipperid` (`shipperid`),
  ADD KEY `deliveryid` (`deliveryid`),
  ADD KEY `saleorder_ibfk_4` (`paymentid`);

--
-- Chỉ mục cho bảng `saleorderdetail`
--
ALTER TABLE `saleorderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saleorderid` (`saleorderid`),
  ADD KEY `productid` (`productid`);

--
-- Chỉ mục cho bảng `shipmentdetail`
--
ALTER TABLE `shipmentdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saleid` (`saleid`),
  ADD KEY `districtid` (`districtid`);

--
-- Chỉ mục cho bảng `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stateorprovince`
--
ALTER TABLE `stateorprovince`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryid` (`countryid`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`userid`,`roleid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `roleid` (`roleid`);

--
-- Chỉ mục cho bảng `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `districtid` (`districtid`),
  ADD KEY `vendorid` (`vendorid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contentstatic`
--
ALTER TABLE `contentstatic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `flashsale`
--
ALTER TABLE `flashsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personinfo`
--
ALTER TABLE `personinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `productdetail`
--
ALTER TABLE `productdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `saleorder`
--
ALTER TABLE `saleorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `saleorderdetail`
--
ALTER TABLE `saleorderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shipmentdetail`
--
ALTER TABLE `shipmentdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `shipper`
--
ALTER TABLE `shipper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `stateorprovince`
--
ALTER TABLE `stateorprovince`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bank`
--
ALTER TABLE `bank`
  ADD CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`vendorid`) REFERENCES `supplier` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `district`
--
ALTER TABLE `district`
  ADD CONSTRAINT `district_ibfk_1` FOREIGN KEY (`StateOrProvinceId`) REFERENCES `stateorprovince` (`id`);

--
-- Các ràng buộc cho bảng `personinfo`
--
ALTER TABLE `personinfo`
  ADD CONSTRAINT `personinfo_ibfk_2` FOREIGN KEY (`districtid`) REFERENCES `district` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `productdetail`
--
ALTER TABLE `productdetail`
  ADD CONSTRAINT `productdetail_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `saleorder`
--
ALTER TABLE `saleorder`
  ADD CONSTRAINT `saleorder_ibfk_1` FOREIGN KEY (`deliveryid`) REFERENCES `delivery` (`id`),
  ADD CONSTRAINT `saleorder_ibfk_2` FOREIGN KEY (`shipperid`) REFERENCES `shipper` (`id`),
  ADD CONSTRAINT `saleorder_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `saleorder_ibfk_4` FOREIGN KEY (`paymentid`) REFERENCES `payment` (`id`);

--
-- Các ràng buộc cho bảng `saleorderdetail`
--
ALTER TABLE `saleorderdetail`
  ADD CONSTRAINT `saleorderdetail_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `saleorderdetail_ibfk_2` FOREIGN KEY (`saleorderid`) REFERENCES `saleorder` (`id`);

--
-- Các ràng buộc cho bảng `shipmentdetail`
--
ALTER TABLE `shipmentdetail`
  ADD CONSTRAINT `shipmentdetail_ibfk_1` FOREIGN KEY (`districtid`) REFERENCES `district` (`id`),
  ADD CONSTRAINT `shipmentdetail_ibfk_2` FOREIGN KEY (`saleid`) REFERENCES `saleorder` (`id`);

--
-- Các ràng buộc cho bảng `stateorprovince`
--
ALTER TABLE `stateorprovince`
  ADD CONSTRAINT `stateorprovince_ibfk_1` FOREIGN KEY (`countryid`) REFERENCES `country` (`id`);

--
-- Các ràng buộc cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `supplier` (`id`);

--
-- Các ràng buộc cho bảng `userrole`
--
ALTER TABLE `userrole`
  ADD CONSTRAINT `userrole_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `userrole_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`vendorid`) REFERENCES `supplier` (`id`),
  ADD CONSTRAINT `warehouse_ibfk_2` FOREIGN KEY (`districtid`) REFERENCES `district` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
