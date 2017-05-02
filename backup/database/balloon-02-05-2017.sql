-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2017 at 02:07 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `balloon`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'mohammad', 'gholeh', '', 'amman', '', 'amman', '', 114, 1791, ''),
(2, 2, '', '', '', '', '', '', '', 0, 0, '{"4":"amman13333","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}'),
(3, 2, '', '', '', '', '', '', '', 0, 0, '{"4":"amman","3":"ammman 10","5":"","6":"","7":"","8":"","9":"","10":"","11":""}'),
(4, 2, '', '', '', '', '', '', '', 0, 0, '{"4":"kwa","3":"kwa","5":"","6":"","7":"","8":"","9":"","10":"","11":""}'),
(5, 2, '', '', '', '', '', '', '', 0, 0, '{"4":"kw","3":"kw","5":"kw","6":"kw","7":"kw","8":"kw","9":"kw","10":"kw","11":"kw"}'),
(6, 3, 'moh', 'moh', '', '', '', '', '', 0, 0, ''),
(7, 4, 'omar', 'abu rasss', '', '', '', '', '', 0, 0, ''),
(8, 2, '', '', '', '', '', '', '', 0, 0, '{"4":"wer","3":"wer","5":"","6":"","7":"","8":"","9":"","10":"","11":""}'),
(9, 5, 'taylor', 'successor', '', '', '', '', '', 0, 0, ''),
(10, 5, '', '', '', '', '', '', '', 0, 0, '{"4":"asdf","3":"jksjdf","5":"sdflkj","6":"jlkdfg","7":"sdfg","8":"sdf","9":"idfjg","10":"kojodfg","11":"ijoid"}'),
(11, 6, 'assem', 'asdasd', '', '', '', '', '', 0, 0, ''),
(12, 7, 'fsadfk', 'kjl', '', '', '', '', '', 0, 0, ''),
(13, 2, '', '', '', '', '', '', '', 0, 0, '{"4":"a2017","3":"eeee","5":"eee","6":"eee","7":"eeee","8":"eeee","9":"eee","10":"eee","11":"ee"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'yKS77aXOzadUmWihOOMW6UIG0DlfQ8I014pDiDoomXFtNy1oVrmYnpC38GnX0JmQX1mTpx1gMnvPmvIYPP71Nhqja5Cw7E2DFDwbQWMLABltcEV4PVh3bwF5sygJLfD4wfko2u8twg0scjLSh8XXtwZ5vyJsPExppo5zQ8qWGPgS6Isf7HgL39issos2cxHcZ8G7m21g7hXdY3htVWKqspC7qO5gdcz7ALalPtVOINY6lGn7xphzubQ3ERahW5r9', 1, '2017-03-08 12:48:42', '2017-03-08 12:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 2, 'الوصف'),
(2, 2, 'عدد النوى'),
(4, 2, 'تجربة 1'),
(5, 2, 'تجربة 2'),
(6, 2, 'تجربة 3'),
(7, 2, 'تجربة 4'),
(8, 2, 'تجربة 5'),
(9, 2, 'تجربة 6'),
(10, 2, 'تجربة 7'),
(11, 2, 'تجربة 8'),
(3, 2, 'السرعة'),
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 2, 'الذاكرة'),
(4, 2, 'التقنية'),
(5, 2, 'اللوحة الأم'),
(6, 2, 'المعالج'),
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'بنر اتش بي', 1),
(7, 'الصور المتحركة في الصفحة الرئيسية - سلايدر', 1),
(8, 'الشركات', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(2, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(3, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(4, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(5, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(6, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(7, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(8, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(9, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(10, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(11, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(13, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(14, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(16, 6, 2, 'بنر اتش بي', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(17, 8, 2, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(18, 8, 2, 'ريدبل', '', 'catalog/demo/manufacturer/redbull.png', 0),
(19, 8, 2, 'سوني', '', 'catalog/demo/manufacturer/sony.png', 0),
(20, 8, 2, 'كوكا كولا', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(21, 8, 2, 'برجر كنج', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(22, 8, 2, 'كانون', '', 'catalog/demo/manufacturer/canon.png', 0),
(23, 8, 2, 'هارلي ديفيدسون', '', 'catalog/demo/manufacturer/harley.png', 0),
(24, 8, 2, 'ديل', '', 'catalog/demo/manufacturer/dell.png', 0),
(25, 8, 2, 'ديزني', '', 'catalog/demo/manufacturer/disney.png', 0),
(27, 8, 2, 'ستاربكس', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(28, 8, 2, 'ناينتيندو', '', 'catalog/demo/manufacturer/nintendo.png', 0),
(81, 7, 2, 'balloons2', '', 'catalog/slide31.jpg', 1),
(80, 7, 2, 'ballons', '', 'catalog/banner1.jpg', 0),
(79, 7, 1, 'balloony', '', 'catalog/banner1.jpg', 1),
(78, 7, 1, 'balloony2', '', 'catalog/slide31.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `api_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(44, 0, 4, 'qsta93c0474uldmejdlnaam0j3', 42, 0, '[]', 3, '2017-04-16 15:41:33'),
(69, 0, 5, 'gfji4scn0ctq421fne1card8v1', 49, 0, '[]', 2, '2017-04-22 01:43:27'),
(70, 0, 5, 'gfji4scn0ctq421fne1card8v1', 29, 0, '[]', 1, '2017-04-22 01:53:05'),
(137, 0, 2, '6d153qh307utkt8nmqpakchoq3', 49, 0, '[]', 1, '2017-05-01 12:55:52'),
(138, 0, 2, '6d153qh307utkt8nmqpakchoq3', 51, 0, '{"289":"130","290":"2017-05-01"}', 1, '2017-05-01 14:54:50'),
(139, 0, 2, '6d153qh307utkt8nmqpakchoq3', 51, 0, '{"289":"129","290":"2017-05-01"}', 1, '2017-05-01 14:55:50'),
(140, 0, 2, '6d153qh307utkt8nmqpakchoq3', 51, 0, '{"289":"131","290":"2017-05-01"}', 1, '2017-05-01 15:01:44'),
(141, 0, 2, '6d153qh307utkt8nmqpakchoq3', 42, 0, '{"242":"01\\/05\\/2017","241":"45","228":"17","229":"20","230":"24","209":"hello"}', 2, '2017-05-01 17:09:07'),
(149, 0, 0, 'drbl93jdk22fdb0uebd8bic8p6', 49, 0, '[]', 2, '2017-05-02 16:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(59, '', 0, 1, 0, 1, 1, '2017-03-13 08:38:56', '2017-03-13 15:17:18'),
(60, '', 59, 1, 0, 1, 1, '2017-03-13 08:40:29', '2017-03-15 08:54:02'),
(61, '', 60, 0, 1, 0, 1, '2017-03-13 08:45:24', '2017-03-13 08:45:24'),
(62, '', 61, 0, 1, 0, 1, '2017-03-13 08:58:38', '2017-03-13 11:14:40'),
(63, '', 61, 0, 1, 0, 1, '2017-03-13 09:00:48', '2017-03-13 09:00:48'),
(64, '', 61, 0, 1, 0, 1, '2017-03-13 09:04:24', '2017-03-13 09:04:24'),
(65, '', 60, 0, 1, 0, 1, '2017-03-13 09:09:05', '2017-03-13 09:09:05'),
(66, '', 60, 0, 1, 0, 1, '2017-03-13 09:10:54', '2017-03-13 09:10:54'),
(67, '', 60, 1, 1, 0, 1, '2017-03-13 09:13:09', '2017-03-13 15:06:16'),
(69, '', 59, 1, 1, 0, 1, '2017-03-13 09:19:15', '2017-03-15 08:53:44'),
(70, '', 69, 1, 0, 0, 1, '2017-03-13 09:41:32', '2017-03-13 14:49:53'),
(72, '', 70, 0, 1, 0, 1, '2017-03-13 10:03:09', '2017-03-13 10:03:09'),
(71, '', 70, 0, 1, 0, 1, '2017-03-13 09:52:30', '2017-03-13 10:02:11'),
(73, '', 69, 0, 1, 0, 1, '2017-03-13 10:04:45', '2017-03-13 10:04:45'),
(74, '', 73, 0, 1, 0, 1, '2017-03-13 10:06:07', '2017-03-13 10:06:07'),
(75, '', 73, 0, 1, 0, 1, '2017-03-13 10:18:55', '2017-03-13 10:18:55'),
(76, '', 73, 0, 1, 0, 1, '2017-03-13 10:21:21', '2017-03-13 10:21:21'),
(77, '', 73, 0, 1, 0, 1, '2017-03-13 10:23:01', '2017-03-13 10:23:01'),
(78, '', 73, 0, 1, 0, 1, '2017-03-13 10:24:15', '2017-03-13 10:24:15'),
(79, '', 73, 0, 1, 0, 1, '2017-03-13 10:25:50', '2017-03-13 10:25:50'),
(80, '', 69, 0, 1, 0, 1, '2017-03-13 10:28:20', '2017-03-13 10:28:20'),
(81, '', 69, 0, 1, 0, 1, '2017-03-13 10:57:01', '2017-03-13 10:57:01'),
(82, '', 81, 1, 1, 0, 1, '2017-03-13 10:57:59', '2017-03-13 15:17:51'),
(83, '', 81, 0, 1, 0, 1, '2017-03-13 10:58:51', '2017-03-13 10:58:51'),
(84, '', 81, 0, 1, 0, 1, '2017-03-13 10:59:40', '2017-03-13 10:59:40'),
(85, '', 81, 0, 1, 0, 1, '2017-03-13 11:00:21', '2017-03-13 11:00:21'),
(86, '', 81, 0, 1, 0, 1, '2017-03-13 11:00:57', '2017-03-13 11:00:57'),
(87, '', 81, 0, 1, 0, 1, '2017-03-13 11:01:41', '2017-03-13 11:01:41'),
(88, '', 81, 0, 1, 0, 1, '2017-03-13 11:02:25', '2017-03-13 11:02:25'),
(89, '', 69, 0, 1, 0, 1, '2017-03-13 11:03:22', '2017-03-13 11:03:22'),
(90, '', 89, 0, 1, 0, 1, '2017-03-13 11:04:12', '2017-03-13 11:04:12'),
(91, '', 89, 0, 1, 0, 1, '2017-03-13 11:04:50', '2017-03-13 11:04:50'),
(92, '', 89, 0, 1, 0, 1, '2017-03-13 11:05:29', '2017-03-13 11:05:29'),
(93, '', 92, 0, 1, 0, 1, '2017-03-13 11:06:37', '2017-03-13 11:06:37'),
(94, '', 92, 0, 1, 0, 1, '2017-03-13 11:07:32', '2017-03-13 11:07:32'),
(95, '', 92, 0, 1, 0, 1, '2017-03-13 11:08:18', '2017-03-13 11:08:18'),
(96, '', 95, 0, 1, 0, 1, '2017-03-13 11:09:16', '2017-03-13 11:09:16'),
(97, '', 95, 0, 1, 0, 1, '2017-03-13 11:10:06', '2017-03-13 11:10:06'),
(98, '', 95, 0, 1, 0, 1, '2017-03-13 11:11:05', '2017-03-13 11:11:05'),
(99, '', 95, 0, 1, 0, 1, '2017-03-13 11:12:07', '2017-03-13 11:12:07'),
(100, '', 95, 0, 1, 0, 1, '2017-03-13 11:12:42', '2017-03-13 11:12:42'),
(101, '', 95, 0, 1, 0, 1, '2017-03-13 11:13:27', '2017-03-13 11:13:27'),
(102, '', 60, 0, 1, 0, 1, '2017-03-13 11:16:45', '2017-03-13 11:16:45'),
(103, '', 60, 0, 1, 0, 1, '2017-03-13 11:18:13', '2017-03-13 11:18:13'),
(104, '', 103, 0, 1, 0, 1, '2017-03-13 11:18:50', '2017-03-13 11:18:50'),
(105, '', 103, 0, 1, 0, 1, '2017-03-13 11:19:28', '2017-03-13 11:19:28'),
(106, '', 103, 0, 1, 0, 1, '2017-03-13 11:20:15', '2017-03-13 11:20:15'),
(107, '', 60, 0, 1, 0, 1, '2017-03-13 11:21:02', '2017-03-13 11:21:02'),
(108, '', 67, 0, 1, 0, 1, '2017-03-13 11:22:38', '2017-03-13 11:22:38'),
(109, '', 67, 0, 1, 0, 1, '2017-03-13 11:23:30', '2017-03-13 11:23:30'),
(110, '', 67, 0, 1, 0, 1, '2017-03-13 11:24:32', '2017-03-13 11:24:32'),
(111, '', 67, 0, 1, 0, 1, '2017-03-13 11:25:49', '2017-03-13 11:25:49'),
(112, '', 67, 1, 1, 0, 1, '2017-03-13 11:26:42', '2017-03-13 15:06:25'),
(113, '', 67, 0, 1, 0, 1, '2017-03-13 11:27:25', '2017-03-13 11:27:25'),
(114, '', 59, 1, 1, 2, 1, '2017-03-13 11:28:57', '2017-03-14 15:31:18'),
(115, '', 114, 0, 1, 0, 1, '2017-03-13 11:30:10', '2017-03-13 11:30:10'),
(116, '', 114, 0, 1, 0, 1, '2017-03-13 11:31:18', '2017-03-13 11:31:18'),
(117, '', 116, 0, 1, 0, 1, '2017-03-13 11:45:00', '2017-03-13 11:45:00'),
(118, '', 116, 0, 1, 0, 1, '2017-03-13 11:46:47', '2017-03-13 11:46:47'),
(119, '', 116, 0, 1, 0, 1, '2017-03-13 11:50:14', '2017-03-13 11:50:14'),
(120, '', 116, 0, 1, 0, 1, '2017-03-13 11:51:09', '2017-03-13 11:51:09'),
(121, '', 114, 0, 1, 0, 1, '2017-03-13 11:52:32', '2017-03-13 11:52:32'),
(122, '', 114, 0, 1, 0, 1, '2017-03-13 11:53:40', '2017-03-13 11:53:40'),
(123, '', 122, 0, 1, 0, 1, '2017-03-13 12:00:45', '2017-03-13 12:00:45'),
(127, '', 122, 0, 1, 0, 1, '2017-03-13 12:22:45', '2017-03-13 12:25:24'),
(125, '', 122, 0, 1, 0, 1, '2017-03-13 12:09:59', '2017-03-13 12:09:59'),
(126, '', 122, 0, 1, 0, 1, '2017-03-13 12:10:53', '2017-03-13 12:24:35'),
(128, '', 122, 0, 1, 0, 1, '2017-03-13 12:23:43', '2017-03-13 12:23:43'),
(130, '', 0, 0, 1, 0, 1, '2017-04-21 16:29:19', '2017-04-22 00:06:15'),
(131, '', 130, 0, 1, 1, 1, '2017-04-21 17:21:56', '2017-04-23 12:38:40'),
(132, '', 131, 0, 1, 0, 1, '2017-04-21 17:23:00', '2017-04-21 17:23:00'),
(133, '', 132, 0, 1, 0, 1, '2017-04-21 17:23:49', '2017-04-21 17:23:49'),
(134, '', 130, 0, 1, 0, 0, '2017-04-21 20:26:49', '2017-04-23 12:39:56'),
(135, '', 0, 1, 1, 0, 1, '2017-04-22 00:06:54', '2017-04-22 00:06:54'),
(136, '', 0, 0, 1, 0, 1, '2017-04-22 00:07:24', '2017-04-22 00:07:24'),
(137, '', 0, 0, 1, 0, 1, '2017-04-22 00:07:59', '2017-04-22 00:07:59'),
(138, '', 135, 1, 1, 0, 1, '2017-04-22 00:09:36', '2017-04-23 09:04:07'),
(139, '', 136, 0, 1, 1, 1, '2017-04-22 00:10:07', '2017-04-23 09:48:21'),
(140, '', 137, 0, 1, 1, 1, '2017-04-22 00:10:54', '2017-04-23 12:40:56'),
(141, '', 138, 1, 1, 0, 1, '2017-04-23 09:07:22', '2017-04-23 09:07:22'),
(142, '', 136, 1, 0, 2, 1, '2017-04-23 09:36:22', '2017-04-23 13:02:25'),
(143, '', 141, 1, 1, 0, 1, '2017-04-23 11:19:43', '2017-04-23 11:19:43'),
(144, '', 141, 1, 1, 0, 1, '2017-04-23 11:21:04', '2017-04-23 11:21:49'),
(145, '', 138, 1, 1, 0, 1, '2017-04-23 11:22:53', '2017-04-23 11:22:53'),
(146, '', 145, 1, 1, 0, 1, '2017-04-23 11:23:45', '2017-04-23 11:23:45'),
(147, '', 145, 1, 1, 0, 1, '2017-04-23 11:24:17', '2017-04-23 11:24:17'),
(148, '', 145, 1, 1, 0, 1, '2017-04-23 11:24:44', '2017-04-23 11:25:57'),
(149, '', 145, 0, 1, 0, 1, '2017-04-23 11:25:12', '2017-04-23 11:25:12'),
(150, '', 145, 1, 1, 0, 1, '2017-04-23 11:26:58', '2017-04-23 11:26:58'),
(151, '', 145, 0, 1, 0, 1, '2017-04-23 11:27:39', '2017-04-23 11:27:39'),
(152, '', 145, 0, 1, 0, 1, '2017-04-23 11:28:52', '2017-04-23 11:28:52'),
(153, '', 138, 0, 1, 0, 1, '2017-04-23 11:32:56', '2017-04-23 11:32:56'),
(154, '', 138, 0, 1, 0, 1, '2017-04-23 11:33:30', '2017-04-23 11:33:30'),
(155, '', 154, 1, 1, 0, 1, '2017-04-23 11:34:58', '2017-04-23 11:36:14'),
(156, '', 154, 0, 1, 0, 1, '2017-04-23 11:36:49', '2017-04-23 11:36:49'),
(157, '', 154, 0, 1, 0, 1, '2017-04-23 11:37:20', '2017-04-23 11:37:20'),
(158, '', 154, 0, 1, 0, 1, '2017-04-23 11:37:46', '2017-04-23 11:37:46'),
(159, '', 154, 0, 1, 0, 1, '2017-04-23 11:38:14', '2017-04-23 11:38:14'),
(160, '', 154, 0, 1, 0, 1, '2017-04-23 11:38:51', '2017-04-23 11:38:51'),
(161, '', 154, 0, 1, 0, 1, '2017-04-23 11:39:20', '2017-04-23 11:39:20'),
(162, '', 138, 0, 1, 0, 1, '2017-04-23 11:40:05', '2017-04-23 11:40:05'),
(163, '', 162, 0, 1, 0, 1, '2017-04-23 11:40:33', '2017-04-23 11:40:33'),
(164, '', 162, 0, 1, 0, 1, '2017-04-23 11:41:00', '2017-04-23 11:41:00'),
(165, '', 162, 0, 1, 0, 1, '2017-04-23 11:41:32', '2017-04-23 11:41:32'),
(166, '', 165, 0, 1, 0, 1, '2017-04-23 11:42:26', '2017-04-23 11:42:26'),
(167, '', 165, 0, 1, 0, 1, '2017-04-23 11:43:22', '2017-04-23 11:43:22'),
(168, '', 165, 0, 1, 0, 1, '2017-04-23 11:44:12', '2017-04-23 11:44:12'),
(169, '', 168, 0, 1, 0, 1, '2017-04-23 11:45:06', '2017-04-23 11:45:06'),
(170, '', 168, 0, 1, 0, 1, '2017-04-23 11:45:35', '2017-04-23 11:45:35'),
(171, '', 168, 0, 1, 0, 1, '2017-04-23 11:46:23', '2017-04-23 11:46:23'),
(172, '', 168, 0, 1, 0, 1, '2017-04-23 11:46:52', '2017-04-23 11:46:52'),
(173, '', 168, 0, 1, 0, 1, '2017-04-23 11:47:17', '2017-04-23 11:47:17'),
(174, '', 168, 0, 1, 0, 1, '2017-04-23 11:48:03', '2017-04-23 11:48:03'),
(175, '', 165, 0, 1, 0, 1, '2017-04-23 11:49:39', '2017-04-23 11:49:39'),
(176, '', 165, 0, 1, 0, 1, '2017-04-23 11:50:08', '2017-04-23 11:50:08'),
(177, '', 139, 0, 1, 0, 1, '2017-04-23 11:52:16', '2017-04-23 11:52:16'),
(178, '', 177, 0, 1, 0, 1, '2017-04-23 11:52:51', '2017-04-23 11:52:51'),
(179, '', 177, 0, 1, 0, 1, '2017-04-23 11:53:36', '2017-04-23 11:53:36'),
(180, '', 177, 0, 1, 0, 1, '2017-04-23 11:54:04', '2017-04-23 11:54:04'),
(181, '', 139, 0, 1, 0, 1, '2017-04-23 11:54:48', '2017-04-23 11:54:48'),
(182, '', 139, 0, 1, 0, 1, '2017-04-23 11:56:59', '2017-04-23 11:56:59'),
(183, '', 182, 0, 1, 0, 1, '2017-04-23 11:57:37', '2017-04-23 11:57:37'),
(184, '', 182, 0, 1, 0, 1, '2017-04-23 11:58:10', '2017-04-23 11:58:10'),
(185, '', 182, 0, 1, 0, 1, '2017-04-23 11:58:40', '2017-04-23 11:58:40'),
(186, '', 139, 0, 1, 0, 1, '2017-04-23 11:59:21', '2017-04-23 11:59:21'),
(187, '', 142, 0, 1, 0, 1, '2017-04-23 11:59:55', '2017-04-23 11:59:55'),
(188, '', 142, 0, 1, 0, 1, '2017-04-23 12:01:35', '2017-04-23 12:01:35'),
(189, '', 188, 0, 1, 0, 1, '2017-04-23 12:02:06', '2017-04-23 12:02:06'),
(190, '', 0, 0, 1, 0, 1, '2017-04-23 12:02:50', '2017-04-23 12:02:50'),
(191, '', 188, 0, 1, 0, 1, '2017-04-23 12:03:27', '2017-04-23 12:03:27'),
(192, '', 188, 0, 1, 0, 1, '2017-04-23 12:18:55', '2017-04-23 12:18:55'),
(193, '', 142, 0, 1, 0, 1, '2017-04-23 12:19:32', '2017-04-23 12:19:32'),
(194, '', 142, 0, 1, 0, 1, '2017-04-23 12:20:06', '2017-04-23 12:20:06'),
(195, '', 194, 0, 1, 0, 1, '2017-04-23 12:20:50', '2017-04-23 12:20:50'),
(196, '', 194, 0, 1, 0, 1, '2017-04-23 12:21:21', '2017-04-23 12:21:21'),
(197, '', 194, 0, 1, 0, 1, '2017-04-23 12:21:59', '2017-04-23 12:21:59'),
(198, '', 0, 0, 1, 0, 1, '2017-04-23 12:23:19', '2017-04-23 12:23:19'),
(199, '', 194, 0, 1, 0, 1, '2017-04-23 12:24:58', '2017-04-23 12:24:58'),
(200, '', 194, 0, 1, 0, 1, '2017-04-23 12:25:44', '2017-04-23 12:25:44'),
(201, '', 142, 0, 1, 0, 1, '2017-04-23 12:26:23', '2017-04-23 12:26:23'),
(202, '', 142, 0, 1, 0, 1, '2017-04-23 12:26:59', '2017-04-23 12:26:59'),
(203, '', 130, 0, 1, 2, 1, '2017-04-23 12:36:48', '2017-04-23 12:39:09'),
(204, '', 130, 0, 1, 3, 1, '2017-04-23 12:38:08', '2017-04-23 12:39:28'),
(205, '', 137, 0, 1, 2, 1, '2017-04-23 12:41:31', '2017-04-23 12:41:46'),
(206, '', 137, 0, 1, 3, 1, '2017-04-23 12:42:48', '2017-04-23 12:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(60, 2, 'ارسال هدية', '', 'ارسال هدية', '', ''),
(60, 1, 'Send a Gift', '', 'Send a Gift', '', ''),
(59, 1, 'Supplies', '', 'supplies', '', ''),
(59, 2, 'اللوازم', '', 'اللوازم', '', ''),
(61, 1, 'Surprise Box', '', 'Surprise Box', '', ''),
(61, 2, 'صندوق المفاجاة', '', 'صندوق المفاجاة', '', ''),
(62, 1, 'Small box – Bubble balloon in small box', '', 'small box – bubble balloon in small box', '', ''),
(63, 1, 'Big box', '', 'Big box', '', ''),
(63, 2, 'صندوق كبير', '', 'صندوق كبير', '', ''),
(64, 1, 'Toys in a box', '', 'Toys in a box', '', ''),
(64, 2, 'العاب بالصندوق', '', 'العاب بالصندوق', '', ''),
(65, 1, 'Regular Latex Balloons', '', 'Regular Latex Balloons', '', ''),
(65, 2, 'بالونات اللاتكس العادية', '', 'بالونات اللاتكس العادية', '', ''),
(66, 1, 'Shapes', '', 'shapes', '', ''),
(66, 2, 'الأشكال', '', 'الأشكال', '', ''),
(67, 2, 'منحوتات بالون', '', 'منحوتات بالون', '', ''),
(67, 1, 'Balloon Sculptures', '', 'balloon sculptures', '', ''),
(69, 1, 'Balloons ', '', 'balloons ', '', ''),
(69, 2, 'بالونات', '', 'بالونات', '', ''),
(70, 1, 'Birthday', '', 'birthday', '', ''),
(70, 2, 'عيد ميلاد', '', 'عيد ميلاد', '', ''),
(71, 2, 'عيد ميلاد لصبي / فتاة', '', 'عيد ميلاد لصبي / فتاة', '', ''),
(71, 1, 'Birthday for Boy / Girl', '', 'birthday for Boy / Girl', '', ''),
(72, 1, 'Adult (Him / Her)', '', 'adult (Him / Her)', '', ''),
(72, 2, 'الكبار (له / لها)', '', 'الكبار (له / لها)', '', ''),
(73, 1, 'Messages', '', 'messages', '', ''),
(73, 2, 'رسائل', '', 'رسائل', '', ''),
(74, 1, 'Get well', '', 'get well', '', ''),
(74, 2, 'شفى', '', 'شفى', '', ''),
(75, 1, 'Welcome Home / Sorry', '', 'welcome Home / Sorry', '', ''),
(75, 2, 'مرحبا بك في بيتك / عذرا', '', 'مرحبا بك في بيتك / عذرا', '', ''),
(76, 1, 'Thank you', '', 'thank you', '', ''),
(76, 2, 'شكرا لك', '', 'شكرا لك', '', ''),
(77, 1, 'Love', '', 'Love', '', ''),
(77, 2, 'الحب', '', 'الحب', '', ''),
(78, 1, 'New Born (Boy / Girl)', '', 'New Born (Boy / Girl)', '', ''),
(78, 2, 'مولود جديد (فتى / فتاة)', '', 'مولود جديد (فتى / فتاة)', '', ''),
(79, 1, 'Wedding / Anniversary', '', 'Wedding / Anniversary', '', ''),
(79, 2, 'ذكرى الزواج', '', 'ذكرى الزواج', '', ''),
(80, 1, 'Numbers / Letters', '', 'Numbers / Letters', '', ''),
(80, 2, 'أرقام / رسائل', '', 'أرقام / رسائل', '', ''),
(81, 1, 'Seasonal / Themes', '', 'seasonal / Themes', '', ''),
(81, 2, 'الموضوعات الموسمية', '', 'الموضوعات الموسمية', '', ''),
(82, 2, 'عيد الحب', '', 'عيد الحب', '', ''),
(82, 1, 'Valentine', '', 'Valentine', '', ''),
(83, 1, 'Graduation', '', 'graduation', '', ''),
(83, 2, 'تخرج', '', 'تخرج', '', ''),
(84, 1, 'Mother’s Day / Father’s Day', '', 'mother’s Day / Father’s Day', '', ''),
(84, 2, ' عيد الأم عيد الأب', '', ' عيد الأم عيد الأب', '', ''),
(85, 1, 'Halloween', '', 'halloween', '', ''),
(85, 2, 'عيد الرعب', '', 'عيد الرعب', '', ''),
(86, 1, 'New Year', '', 'new Year', '', ''),
(86, 2, 'السنة الجديدة', '', 'السنة الجديدة', '', ''),
(87, 1, 'National Day', '', 'National Day', '', ''),
(87, 2, 'العيد الوطني', '', 'العيد الوطني', '', ''),
(88, 1, 'Ramadan / Gergi3an / Eid', '', 'ramadan / gergi3an / eid', '', ''),
(88, 2, 'رمضان / Gergi3an / عيد', '', 'رمضان / Gergi3an / عيد', '', ''),
(89, 1, 'Specialty', '', 'specialty', '', ''),
(89, 2, 'تخصص', '', 'تخصص', '', ''),
(90, 1, 'Bubbles', '', 'Bubbles', '', ''),
(90, 2, 'فقاعات', '', 'فقاعات', '', ''),
(91, 1, 'Gift in a Balloon', '', 'gift in a Balloon', '', ''),
(91, 2, 'هدية في بالون', '', 'هدية في بالون', '', ''),
(92, 1, 'Giant Latex Balloon', '', 'giant Latex Balloon', '', ''),
(92, 2, 'عملاق بالون مطاط', '', 'عملاق بالون مطاط', '', ''),
(93, 1, 'Latex Balloons', '', 'latex Balloons', '', ''),
(93, 2, 'بالونات اللاتكس', '', 'بالونات اللاتكس', '', ''),
(94, 1, 'Shapes', '', 'shapes', '', ''),
(94, 2, 'الأشكال', '', 'الأشكال', '', ''),
(95, 1, 'Balloon Sculptures', '', 'balloon Sculptures', '', ''),
(95, 2, 'منحوتات بالون', '', 'منحوتات بالون', '', ''),
(96, 1, 'Wedding', '', 'Wedding', '', ''),
(96, 2, 'حفل زواج', '', 'حفل زواج', '', ''),
(97, 1, 'New Born Baby', '', 'new Born Baby', '', ''),
(97, 2, 'طفل حديث الولادة', '', 'طفل حديث الولادة', '', ''),
(98, 1, 'Graduation', '', 'graduation', '', ''),
(98, 2, 'تخرج', '', 'تخرج', '', ''),
(99, 1, 'Career', '', 'career', '', ''),
(99, 2, 'وظائف', '', 'وظائف', '', ''),
(100, 1, 'Animals', '', 'animals', '', ''),
(100, 2, 'الحيوانات', '', 'الحيوانات', '', ''),
(101, 1, 'Cartoon Characters', '', 'cartoon Characters', '', ''),
(101, 2, 'شخصيات كرتونية', '', 'شخصيات كرتونية', '', ''),
(62, 2, 'مربع صغير - بالون فقاعة في مربع صغير', '', 'مربع صغير - بالون فقاعة في مربع صغير', '', ''),
(102, 1, 'Gist in a Balloon', '', 'gist in a Balloon', '', ''),
(102, 2, 'جوهرة  في بالون', '', 'جوهرة  في بالون', '', ''),
(103, 1, 'Confetti Balloon', '', 'confetti Balloon', '', ''),
(103, 2, 'حلويات بالون', '', 'حلويات بالون', '', ''),
(104, 1, 'Bubble Balloon with Confetti and Tassels', '', 'bubble Balloon with Confetti and Tassels', '', ''),
(104, 2, 'بالون فقاعة مع النثار والشرابة', '', 'بالون فقاعة مع النثار والشرابة', '', ''),
(105, 1, 'Diamond Clear Balloons with Confetti and Tassels', '', 'diamond Clear Balloons with Confetti and Tassels', '', ''),
(105, 2, 'الماس واضح البالونات مع النثار والشرابة', '', 'الماس واضح البالونات مع النثار والشرابة', '', ''),
(106, 1, 'Giant Balloons with Tassels', '', 'giant Balloons with Tassels', '', ''),
(106, 2, 'بالونات عملاقة مع الشرابة', '', 'بالونات عملاقة مع الشرابة', '', ''),
(107, 1, 'Designer Balloon Bouquet', '', 'designer Balloon Bouquet', '', ''),
(107, 2, 'مصمم بالون باقة', '', 'مصمم بالون باقة', '', ''),
(108, 1, 'Wedding', '', 'wedding', '', ''),
(108, 2, 'حفل زواج', '', 'حفل زواج', '', ''),
(109, 1, 'New born Baby', '', 'new born Baby', '', ''),
(109, 2, 'طفل حديث الولادة', '', 'طفل حديث الولادة', '', ''),
(110, 1, 'Graduation', '', 'graduation', '', ''),
(110, 2, 'تخرج', '', 'تخرج', '', ''),
(111, 1, 'career', '', 'career', '', ''),
(111, 2, 'وظائف', '', 'وظائف', '', ''),
(112, 2, 'الحيوانات', '', 'الحيوانات', '', ''),
(112, 1, 'Animals', '', 'animals', '', ''),
(113, 1, 'Cartoon Characters', '', 'cartoon Characters', '', ''),
(113, 2, 'شخصيات كرتونية', '', 'شخصيات كرتونية', '', ''),
(114, 1, 'Party Supplies', '', 'party Supplies', '', ''),
(114, 2, 'الحفلة واللوازم', '', 'الحفلة واللوازم', '', ''),
(115, 1, 'Birthday (Boy / Girl)', '', 'birthday (Boy / Girl)', '', ''),
(115, 2, 'عيد الميلاد (فتى / فتاة)', '', 'عيد الميلاد (فتى / فتاة)', '', ''),
(116, 1, 'Cartoon Character', '', 'cartoon Character', '', ''),
(116, 2, 'شخصية كرتونية', '', 'شخصية كرتونية', '', ''),
(117, 1, 'Minnie Mouse / Mickey Mouse', '', 'minnie Mouse / Mickey Mouse', '', ''),
(117, 2, 'ميني ماوس / ميكي ماوس', '', 'ميني ماوس / ميكي ماوس', '', ''),
(118, 1, 'Princess', '', 'princess', '', ''),
(118, 2, ' أميرة', '', ' أميرة', '', ''),
(119, 1, 'Cars', '', 'cars', '', ''),
(119, 2, 'سيارات', '', 'سيارات', '', ''),
(120, 1, 'Hello Kitty', '', 'hello Kitty', '', ''),
(120, 2, 'مرحبا كيتي', '', 'مرحبا كيتي', '', ''),
(121, 1, 'Solid Color Party wares', '', 'solid Color Party wares', '', ''),
(121, 2, 'ترتدي حزب اللون الصلبة', '', 'ترتدي حزب اللون الصلبة', '', ''),
(122, 1, 'Party Accessories &amp; Decorations', '', 'party Accessories &amp; Decorations', '', ''),
(122, 2, 'حزب زينة والديكور', '', 'حزب زينة والديكور', '', ''),
(123, 1, 'Boy / Girl', '', 'boy / Girl', '', ''),
(123, 2, ' ولد فتاة', '', ' ولد فتاة', '', ''),
(126, 1, 'Candles', '', 'candles', '', ''),
(125, 1, 'Adults', '', 'adults', '', ''),
(125, 2, ' الكبار', '', ' الكبار', '', ''),
(126, 2, 'الشموع', '', 'الشموع', '', ''),
(127, 2, 'بوبرس حزب', '', 'بوبرس حزب', '', ''),
(127, 1, 'Party Poppers', '', 'party Poppers', '', ''),
(128, 1, 'Sparkles', '', 'sparkles', '', ''),
(128, 2, 'البريق', '', 'البريق', '', ''),
(130, 1, 'events left', '', 'events', '', ''),
(131, 1, 'Entertainment', '', 'Entertainment', '', ''),
(131, 2, 'Entertainment', '', 'Entertainment', '', ''),
(132, 1, 'events level 2', '', 'events level 2', '', ''),
(132, 2, 'events level 2', '', 'events level 2', '', ''),
(133, 1, 'events level 3', '', 'events level 3', '', ''),
(133, 2, 'events level 3', '', 'events level 3', '', ''),
(134, 2, 'events level 1 nu 2', '', 'events level 1 nu 2', '', ''),
(134, 1, 'events level 1 nu 2', '', 'events level 1 nu 2', '', ''),
(130, 2, 'events left', '', 'events', '', ''),
(135, 1, 'products left', '&lt;p&gt;products left&lt;br&gt;&lt;/p&gt;', 'products left', '', ''),
(135, 2, 'products left', '&lt;p&gt;products left&lt;br&gt;&lt;/p&gt;', 'products left', '', ''),
(136, 1, 'products right', '', 'products right', '', ''),
(136, 2, 'products right', '', 'products right', '', ''),
(137, 1, 'events right', '', 'events right', '', ''),
(137, 2, 'events right', '', 'events right', '', ''),
(138, 2, 'بالونات', '', 'بالونات', '', ''),
(138, 1, 'Balloons', '', 'Balloons', '', ''),
(139, 1, 'Send A Gift', '', 'Send A Gift', '', ''),
(139, 2, 'ارسال هدية', '', 'ارسال هدية', '', ''),
(140, 2, 'Sweet Cart ', '', 'Sweet Cart ', '', ''),
(140, 1, 'Sweet Cart ', '', 'Sweet Cart ', '', ''),
(141, 1, 'Birthday', '', 'Birthday', '', ''),
(141, 2, 'عيد ميلاد', '', 'عيد ميلاد', '', ''),
(142, 2, 'لوازم الحفلة', '', 'لوازم الحفلة', '', ''),
(142, 1, 'Party Supplies', '', 'Party Supplies', '', ''),
(143, 1, 'Birthday for Boy / Girl', '', 'Birthday for Boy / Girl', '', ''),
(143, 2, 'اعياد ميلاد اولاد', '', 'اعياد ميلاد اولاد', '', ''),
(144, 2, 'اعياد للكبار', '', 'اعياد للكبار', '', ''),
(144, 1, 'Adult (Him / Her)', '', 'Adult (Him / Her)', '', ''),
(145, 1, 'Messages', '', 'Messages', '', ''),
(145, 2, 'الرسائل', '', 'الرسائل', '', ''),
(146, 1, 'Get well', '', 'Get well', '', ''),
(146, 2, 'Get well', '', 'Get well', '', ''),
(147, 1, 'Welcome Home / Sorry', '', 'Welcome Home / Sorry', '', ''),
(147, 2, 'Welcome Home / Sorry', '', 'Welcome Home / Sorry', '', ''),
(148, 2, 'Thank you', '', 'Thank you', '', ''),
(148, 1, 'Thank you', '', 'Thank you', '', ''),
(149, 1, 'Love', '', 'Love', '', ''),
(149, 2, 'Love', '', 'Love', '', ''),
(150, 1, 'New Born (Boy / Girl)', '', 'New Born (Boy / Girl)', '', ''),
(150, 2, 'New Born (Boy / Girl)', '', 'New Born (Boy / Girl)', '', ''),
(151, 1, 'Wedding / Anniversary', '', 'Wedding / Anniversary', '', ''),
(151, 2, 'Wedding / Anniversary', '', 'Wedding / Anniversary', '', ''),
(152, 1, 'Congratulations', '', 'Congratulations', '', ''),
(152, 2, 'Congratulations', '', 'Congratulations', '', ''),
(153, 1, 'Numbers / Letters', '', 'Numbers / Letters', '', ''),
(153, 2, 'Numbers / Letters', '', 'Numbers / Letters', '', ''),
(154, 1, 'Seasonal / Themes', '', 'Seasonal / Themes', '', ''),
(154, 2, 'Seasonal / Themes', '', 'Seasonal / Themes', '', ''),
(155, 2, 'Valentine', '', 'Valentine', '', ''),
(155, 1, 'Valentine', '', 'Valentine', '', ''),
(156, 1, 'Graduation', '', 'Graduation', '', ''),
(156, 2, 'Graduation', '', 'Graduation', '', ''),
(157, 1, 'Mother’s Day / Father’s Day', '', 'Mother’s Day / Father’s Day', '', ''),
(157, 2, 'Mother’s Day / Father’s Day', '', 'Mother’s Day / Father’s Day', '', ''),
(158, 1, 'Halloween', '', 'Halloween', '', ''),
(158, 2, 'Halloween', '', 'Halloween', '', ''),
(159, 1, 'New Year', '', 'New Year', '', ''),
(159, 2, 'New Year', '', 'New Year', '', ''),
(160, 1, 'National Day', '', 'National Day', '', ''),
(160, 2, 'National Day', '', 'National Day', '', ''),
(161, 1, 'Ramadan / Gergi3an / Eid', '', 'Ramadan / Gergi3an / Eid', '', ''),
(161, 2, 'Ramadan / Gergi3an / Eid', '', 'Ramadan / Gergi3an / Eid', '', ''),
(162, 1, 'Specialty', '', 'Specialty', '', ''),
(162, 2, 'Specialty', '', 'Specialty', '', ''),
(163, 1, 'Bubbles', '', 'Bubbles', '', ''),
(163, 2, 'Bubbles', '', 'Bubbles', '', ''),
(164, 1, 'Gift in a Balloon', '', 'Gift in a Balloon', '', ''),
(164, 2, 'Gift in a Balloon', '', 'Gift in a Balloon', '', ''),
(165, 1, 'Giant Latex Balloon ', '', 'Giant Latex Balloon ', '', ''),
(165, 2, 'Giant Latex Balloon ', '', 'Giant Latex Balloon ', '', ''),
(166, 1, 'Latex Balloons', '', 'Latex Balloons', '', ''),
(166, 2, 'Latex Balloons', '', 'Latex Balloons', '', ''),
(167, 1, 'Shapes', '', 'Shapes', '', ''),
(167, 2, 'Shapes', '', 'Shapes', '', ''),
(168, 1, 'Balloon Sculptures', '', 'Balloon Sculptures', '', ''),
(168, 2, 'Balloon Sculptures', '', 'Balloon Sculptures', '', ''),
(169, 1, 'Wedding', '', 'Wedding', '', ''),
(169, 2, 'Wedding', '', 'Wedding', '', ''),
(170, 1, 'New Born Baby', '', 'New Born Baby', '', ''),
(170, 2, 'New Born Baby', '', 'New Born Baby', '', ''),
(171, 1, 'Graduation', '', 'Graduation', '', ''),
(171, 2, 'Graduation', '', 'Graduation', '', ''),
(172, 1, 'Career', '', 'Career', '', ''),
(172, 2, 'Career', '', 'Career', '', ''),
(173, 1, 'Animals', '', 'Animals', '', ''),
(173, 2, 'Animals', '', 'Animals', '', ''),
(174, 1, 'Cartoon Characters', '', 'Cartoon Characters', '', ''),
(174, 2, 'Cartoon Characters', '', 'Cartoon Characters', '', ''),
(175, 1, 'Regular Latex Balloons', '', 'Regular Latex Balloons', '', ''),
(175, 2, 'Regular Latex Balloons', '', 'Regular Latex Balloons', '', ''),
(176, 1, 'Shapes', '', 'Shapes', '', ''),
(176, 2, 'Shapes', '', 'Shapes', '', ''),
(177, 1, 'Surprise Box', '', 'Surprise Box', '', ''),
(177, 2, 'Surprise Box', '', 'Surprise Box', '', ''),
(178, 1, 'Small box – Bubble balloon in small box', '', 'Small box – Bubble balloon in small box', '', ''),
(178, 2, 'Small box – Bubble balloon in small box', '', 'Small box – Bubble balloon in small box', '', ''),
(179, 1, 'Big box', '', 'Big box', '', ''),
(179, 2, 'Big box', '', 'Big box', '', ''),
(180, 1, 'Toys in a box', '', 'Toys in a box', '', ''),
(180, 2, 'Toys in a box', '', 'Toys in a box', '', ''),
(181, 1, 'Gift in a Balloon', '', 'Gift in a Balloon', '', ''),
(181, 2, 'Gift in a Balloon', '', 'Gift in a Balloon', '', ''),
(182, 1, 'Confetti Balloon', '', 'Confetti Balloon', '', ''),
(182, 2, 'Confetti Balloon', '', 'Confetti Balloon', '', ''),
(183, 1, 'Bubble Balloon with Confetti and Tassels', '', 'Bubble Balloon with Confetti and Tassels', '', ''),
(183, 2, 'Bubble Balloon with Confetti and Tassels', '', 'Bubble Balloon with Confetti and Tassels', '', ''),
(184, 1, 'Diamond Clear Balloons with Confetti and Tassels', '', 'Diamond Clear Balloons with Confetti and Tassels', '', ''),
(184, 2, 'Diamond Clear Balloons with Confetti and Tassels', '', 'Diamond Clear Balloons with Confetti and Tassels', '', ''),
(185, 1, 'Giant Balloons with Tassels', '', 'Giant Balloons with Tassels', '', ''),
(185, 2, 'Giant Balloons with Tassels', '', 'Giant Balloons with Tassels', '', ''),
(186, 1, 'Designer Balloon Bouquet', '', 'Designer Balloon Bouquet', '', ''),
(186, 2, 'Designer Balloon Bouquet', '', 'Designer Balloon Bouquet', '', ''),
(187, 1, 'Birthday (Boy / Girl)', '', 'Birthday (Boy / Girl)', '', ''),
(187, 2, 'Birthday (Boy / Girl)', '', 'Birthday (Boy / Girl)', '', ''),
(188, 1, 'Cartoon Character', '', 'Cartoon Character', '', ''),
(188, 2, 'Cartoon Character', '', 'Cartoon Character', '', ''),
(189, 1, 'Minnie Mouse / Mickey Mouse', '', 'Minnie Mouse / Mickey Mouse', '', ''),
(189, 2, 'Minnie Mouse / Mickey Mouse', '', 'Minnie Mouse / Mickey Mouse', '', ''),
(190, 1, 'Princess', '', 'Princess', '', ''),
(190, 2, 'Princess', '', 'Princess', '', ''),
(191, 1, 'Cars', '', 'Cars', '', ''),
(191, 2, 'Cars', '', 'Cars', '', ''),
(192, 1, 'Hello Kitty', '', 'Hello Kitty', '', ''),
(192, 2, 'Hello Kitty', '', 'Hello Kitty', '', ''),
(193, 1, 'Solid Color Party wares', '', 'Solid Color Party wares', '', ''),
(193, 2, 'Solid Color Party wares', '', 'Solid Color Party wares', '', ''),
(194, 1, 'Party Accessories &amp; Decorations', '', 'Party Accessories &amp; Decorations', '', ''),
(194, 2, 'Party Accessories &amp; Decorations', '', 'Party Accessories &amp; Decorations', '', ''),
(195, 1, 'Boy / Girl', '', 'Boy / Girl', '', ''),
(195, 2, 'Boy / Girl', '', 'Boy / Girl', '', ''),
(196, 1, 'Adults', '', 'Adults', '', ''),
(196, 2, 'Adults', '', 'Adults', '', ''),
(197, 1, 'Candles', '', 'Candles', '', ''),
(197, 2, 'Candles', '', 'Candles', '', ''),
(198, 1, 'Party Poppers', '', 'Party Poppers', '', ''),
(198, 2, 'Party Poppers', '', 'Party Poppers', '', ''),
(199, 1, 'Party Poppers', '', 'Party Poppers', '', ''),
(199, 2, 'Party Poppers', '', 'Party Poppers', '', ''),
(200, 1, 'Sparkles', '', 'Sparkles', '', ''),
(200, 2, 'Sparkles', '', 'Sparkles', '', ''),
(201, 1, 'Greeting Cards and invitations', '', 'Greeting Cards and invitations', '', ''),
(201, 2, 'Greeting Cards and invitations', '', 'Greeting Cards and invitations', '', ''),
(202, 1, 'Piñata', '', 'Piñata', '', ''),
(202, 2, 'Piñata', '', 'Piñata', '', ''),
(203, 2, 'Art &amp; Creative Services ', '', 'Art &amp; Creative Services ', '', ''),
(203, 1, 'Art &amp; Creative Services ', '', 'Art &amp; Creative Services ', '', ''),
(204, 2, 'Rental', '', 'Rental', '', ''),
(204, 1, 'Rental', '', 'Rental', '', ''),
(205, 2, 'Party Services', '', 'Party Services', '', ''),
(205, 1, 'Party Services', '', 'Party Services', '', ''),
(206, 2, 'Decoration', '', 'Decoration', '', ''),
(206, 1, 'Decoration', '', 'Decoration', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(59, 59, 0),
(60, 60, 1),
(60, 59, 0),
(61, 61, 2),
(61, 60, 1),
(61, 59, 0),
(62, 60, 1),
(62, 61, 2),
(62, 62, 3),
(62, 59, 0),
(63, 63, 3),
(63, 61, 2),
(63, 60, 1),
(63, 59, 0),
(64, 64, 3),
(64, 61, 2),
(64, 60, 1),
(64, 59, 0),
(65, 65, 2),
(65, 60, 1),
(65, 59, 0),
(66, 66, 2),
(66, 60, 1),
(66, 59, 0),
(67, 60, 1),
(67, 67, 2),
(67, 59, 0),
(69, 59, 0),
(69, 69, 1),
(70, 59, 0),
(70, 69, 1),
(71, 59, 0),
(71, 70, 2),
(70, 70, 2),
(71, 71, 3),
(71, 69, 1),
(72, 70, 2),
(72, 72, 3),
(72, 69, 1),
(72, 59, 0),
(73, 73, 2),
(73, 69, 1),
(73, 59, 0),
(74, 74, 3),
(74, 73, 2),
(74, 69, 1),
(74, 59, 0),
(75, 75, 3),
(75, 73, 2),
(75, 69, 1),
(75, 59, 0),
(76, 76, 3),
(76, 73, 2),
(76, 69, 1),
(76, 59, 0),
(77, 77, 3),
(77, 73, 2),
(77, 69, 1),
(77, 59, 0),
(78, 78, 3),
(78, 73, 2),
(78, 69, 1),
(78, 59, 0),
(79, 79, 3),
(79, 73, 2),
(79, 69, 1),
(79, 59, 0),
(80, 80, 2),
(80, 69, 1),
(80, 59, 0),
(81, 81, 2),
(81, 69, 1),
(81, 59, 0),
(82, 69, 1),
(82, 81, 2),
(82, 82, 3),
(82, 59, 0),
(83, 83, 3),
(83, 81, 2),
(83, 69, 1),
(83, 59, 0),
(84, 84, 3),
(84, 81, 2),
(84, 69, 1),
(84, 59, 0),
(85, 85, 3),
(85, 81, 2),
(85, 69, 1),
(85, 59, 0),
(86, 86, 3),
(86, 81, 2),
(86, 69, 1),
(86, 59, 0),
(87, 87, 3),
(87, 81, 2),
(87, 69, 1),
(87, 59, 0),
(88, 88, 3),
(88, 81, 2),
(88, 69, 1),
(88, 59, 0),
(89, 89, 2),
(89, 69, 1),
(89, 59, 0),
(90, 90, 3),
(90, 89, 2),
(90, 69, 1),
(90, 59, 0),
(91, 91, 3),
(91, 89, 2),
(91, 69, 1),
(91, 59, 0),
(92, 92, 3),
(92, 89, 2),
(92, 69, 1),
(92, 59, 0),
(93, 93, 4),
(93, 92, 3),
(93, 89, 2),
(93, 69, 1),
(93, 59, 0),
(94, 94, 4),
(94, 92, 3),
(94, 89, 2),
(94, 69, 1),
(94, 59, 0),
(95, 95, 4),
(95, 92, 3),
(95, 89, 2),
(95, 69, 1),
(95, 59, 0),
(96, 96, 5),
(96, 95, 4),
(96, 92, 3),
(96, 89, 2),
(96, 69, 1),
(96, 59, 0),
(97, 97, 5),
(97, 95, 4),
(97, 92, 3),
(97, 89, 2),
(97, 69, 1),
(97, 59, 0),
(98, 98, 5),
(98, 95, 4),
(98, 92, 3),
(98, 89, 2),
(98, 69, 1),
(98, 59, 0),
(99, 99, 5),
(99, 95, 4),
(99, 92, 3),
(99, 89, 2),
(99, 69, 1),
(99, 59, 0),
(100, 100, 5),
(100, 95, 4),
(100, 92, 3),
(100, 89, 2),
(100, 69, 1),
(100, 59, 0),
(101, 101, 5),
(101, 95, 4),
(101, 92, 3),
(101, 89, 2),
(101, 69, 1),
(101, 59, 0),
(102, 102, 2),
(102, 60, 1),
(102, 59, 0),
(103, 103, 2),
(103, 60, 1),
(103, 59, 0),
(104, 104, 3),
(104, 103, 2),
(104, 60, 1),
(104, 59, 0),
(105, 105, 3),
(105, 103, 2),
(105, 60, 1),
(105, 59, 0),
(106, 106, 3),
(106, 103, 2),
(106, 60, 1),
(106, 59, 0),
(107, 107, 2),
(107, 60, 1),
(107, 59, 0),
(108, 67, 2),
(108, 108, 3),
(108, 60, 1),
(108, 59, 0),
(109, 67, 2),
(109, 109, 3),
(109, 60, 1),
(109, 59, 0),
(110, 67, 2),
(110, 110, 3),
(110, 60, 1),
(110, 59, 0),
(111, 67, 2),
(111, 111, 3),
(111, 60, 1),
(111, 59, 0),
(112, 67, 2),
(112, 60, 1),
(112, 112, 3),
(112, 59, 0),
(113, 67, 2),
(113, 113, 3),
(113, 60, 1),
(113, 59, 0),
(114, 114, 1),
(114, 59, 0),
(115, 115, 2),
(115, 114, 1),
(115, 59, 0),
(116, 116, 2),
(116, 114, 1),
(116, 59, 0),
(117, 117, 3),
(117, 116, 2),
(117, 114, 1),
(117, 59, 0),
(118, 118, 3),
(118, 116, 2),
(118, 114, 1),
(118, 59, 0),
(119, 119, 3),
(119, 116, 2),
(119, 114, 1),
(119, 59, 0),
(120, 120, 3),
(120, 116, 2),
(120, 114, 1),
(120, 59, 0),
(121, 121, 2),
(121, 114, 1),
(121, 59, 0),
(122, 122, 2),
(122, 114, 1),
(122, 59, 0),
(123, 123, 3),
(123, 122, 2),
(123, 114, 1),
(123, 59, 0),
(127, 59, 0),
(125, 125, 3),
(125, 122, 2),
(125, 114, 1),
(125, 59, 0),
(126, 59, 0),
(128, 128, 3),
(128, 122, 2),
(128, 114, 1),
(128, 59, 0),
(126, 126, 3),
(126, 122, 2),
(126, 114, 1),
(127, 127, 3),
(127, 122, 2),
(127, 114, 1),
(130, 130, 0),
(131, 131, 1),
(131, 130, 0),
(132, 132, 2),
(132, 131, 1),
(132, 130, 0),
(133, 133, 3),
(133, 132, 2),
(133, 131, 1),
(133, 130, 0),
(134, 134, 1),
(134, 130, 0),
(135, 135, 0),
(136, 136, 0),
(137, 137, 0),
(138, 138, 1),
(138, 135, 0),
(139, 139, 1),
(139, 136, 0),
(140, 140, 1),
(140, 137, 0),
(141, 141, 2),
(141, 138, 1),
(141, 135, 0),
(142, 142, 1),
(142, 136, 0),
(143, 143, 3),
(143, 141, 2),
(143, 138, 1),
(143, 135, 0),
(144, 138, 1),
(144, 141, 2),
(144, 144, 3),
(144, 135, 0),
(145, 145, 2),
(145, 138, 1),
(145, 135, 0),
(146, 146, 3),
(146, 145, 2),
(146, 138, 1),
(146, 135, 0),
(147, 147, 3),
(147, 145, 2),
(147, 138, 1),
(147, 135, 0),
(148, 138, 1),
(148, 145, 2),
(148, 148, 3),
(148, 135, 0),
(149, 149, 3),
(149, 145, 2),
(149, 138, 1),
(149, 135, 0),
(150, 150, 3),
(150, 145, 2),
(150, 138, 1),
(150, 135, 0),
(151, 151, 3),
(151, 145, 2),
(151, 138, 1),
(151, 135, 0),
(152, 152, 3),
(152, 145, 2),
(152, 138, 1),
(152, 135, 0),
(153, 153, 2),
(153, 138, 1),
(153, 135, 0),
(154, 154, 2),
(154, 138, 1),
(154, 135, 0),
(155, 154, 2),
(155, 155, 3),
(155, 135, 0),
(155, 138, 1),
(156, 156, 3),
(156, 154, 2),
(156, 138, 1),
(156, 135, 0),
(157, 157, 3),
(157, 154, 2),
(157, 138, 1),
(157, 135, 0),
(158, 158, 3),
(158, 154, 2),
(158, 138, 1),
(158, 135, 0),
(159, 159, 3),
(159, 154, 2),
(159, 138, 1),
(159, 135, 0),
(160, 160, 3),
(160, 154, 2),
(160, 138, 1),
(160, 135, 0),
(161, 161, 3),
(161, 154, 2),
(161, 138, 1),
(161, 135, 0),
(162, 162, 2),
(162, 138, 1),
(162, 135, 0),
(163, 163, 3),
(163, 162, 2),
(163, 138, 1),
(163, 135, 0),
(164, 164, 3),
(164, 162, 2),
(164, 138, 1),
(164, 135, 0),
(165, 165, 3),
(165, 162, 2),
(165, 138, 1),
(165, 135, 0),
(166, 166, 4),
(166, 165, 3),
(166, 162, 2),
(166, 138, 1),
(166, 135, 0),
(167, 167, 4),
(167, 165, 3),
(167, 162, 2),
(167, 138, 1),
(167, 135, 0),
(168, 168, 4),
(168, 165, 3),
(168, 162, 2),
(168, 138, 1),
(168, 135, 0),
(169, 169, 5),
(169, 168, 4),
(169, 165, 3),
(169, 162, 2),
(169, 138, 1),
(169, 135, 0),
(170, 170, 5),
(170, 168, 4),
(170, 165, 3),
(170, 162, 2),
(170, 138, 1),
(170, 135, 0),
(171, 171, 5),
(171, 168, 4),
(171, 165, 3),
(171, 162, 2),
(171, 138, 1),
(171, 135, 0),
(172, 172, 5),
(172, 168, 4),
(172, 165, 3),
(172, 162, 2),
(172, 138, 1),
(172, 135, 0),
(173, 173, 5),
(173, 168, 4),
(173, 165, 3),
(173, 162, 2),
(173, 138, 1),
(173, 135, 0),
(174, 174, 5),
(174, 168, 4),
(174, 165, 3),
(174, 162, 2),
(174, 138, 1),
(174, 135, 0),
(175, 175, 4),
(175, 165, 3),
(175, 162, 2),
(175, 138, 1),
(175, 135, 0),
(176, 176, 4),
(176, 165, 3),
(176, 162, 2),
(176, 138, 1),
(176, 135, 0),
(177, 177, 2),
(177, 139, 1),
(177, 136, 0),
(178, 178, 3),
(178, 177, 2),
(178, 139, 1),
(178, 136, 0),
(179, 179, 3),
(179, 177, 2),
(179, 139, 1),
(179, 136, 0),
(180, 180, 3),
(180, 177, 2),
(180, 139, 1),
(180, 136, 0),
(181, 181, 2),
(181, 139, 1),
(181, 136, 0),
(182, 182, 2),
(182, 139, 1),
(182, 136, 0),
(183, 183, 3),
(183, 182, 2),
(183, 139, 1),
(183, 136, 0),
(184, 184, 3),
(184, 182, 2),
(184, 139, 1),
(184, 136, 0),
(185, 185, 3),
(185, 182, 2),
(185, 139, 1),
(185, 136, 0),
(186, 186, 2),
(186, 139, 1),
(186, 136, 0),
(187, 187, 2),
(187, 142, 1),
(187, 136, 0),
(188, 188, 2),
(188, 142, 1),
(188, 136, 0),
(189, 189, 3),
(189, 188, 2),
(189, 142, 1),
(189, 136, 0),
(190, 190, 0),
(191, 191, 3),
(191, 188, 2),
(191, 142, 1),
(191, 136, 0),
(192, 192, 3),
(192, 188, 2),
(192, 142, 1),
(192, 136, 0),
(193, 193, 2),
(193, 142, 1),
(193, 136, 0),
(194, 194, 2),
(194, 142, 1),
(194, 136, 0),
(195, 195, 3),
(195, 194, 2),
(195, 142, 1),
(195, 136, 0),
(196, 196, 3),
(196, 194, 2),
(196, 142, 1),
(196, 136, 0),
(197, 197, 3),
(197, 194, 2),
(197, 142, 1),
(197, 136, 0),
(198, 198, 0),
(199, 199, 3),
(199, 194, 2),
(199, 142, 1),
(199, 136, 0),
(200, 200, 3),
(200, 194, 2),
(200, 142, 1),
(200, 136, 0),
(201, 201, 2),
(201, 142, 1),
(201, 136, 0),
(202, 202, 2),
(202, 142, 1),
(202, 136, 0),
(203, 203, 1),
(203, 130, 0),
(204, 204, 1),
(204, 130, 0),
(205, 205, 1),
(205, 137, 0),
(206, 206, 1),
(206, 137, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(79, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(99, 0, 0),
(100, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(110, 0, 0),
(111, 0, 0),
(112, 0, 0),
(113, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(127, 0, 0),
(125, 0, 0),
(126, 0, 0),
(128, 0, 0),
(130, 0, 0),
(131, 0, 0),
(132, 0, 0),
(133, 0, 0),
(134, 0, 0),
(135, 0, 0),
(136, 0, 0),
(137, 0, 0),
(138, 0, 0),
(139, 0, 0),
(140, 0, 0),
(141, 0, 0),
(142, 0, 0),
(143, 0, 0),
(144, 0, 0),
(145, 0, 0),
(146, 0, 0),
(147, 0, 0),
(148, 0, 0),
(149, 0, 0),
(150, 0, 0),
(151, 0, 0),
(152, 0, 0),
(153, 0, 0),
(154, 0, 0),
(155, 0, 0),
(156, 0, 0),
(157, 0, 0),
(158, 0, 0),
(159, 0, 0),
(160, 0, 0),
(161, 0, 0),
(162, 0, 0),
(163, 0, 0),
(164, 0, 0),
(165, 0, 0),
(166, 0, 0),
(167, 0, 0),
(168, 0, 0),
(169, 0, 0),
(170, 0, 0),
(171, 0, 0),
(172, 0, 0),
(173, 0, 0),
(174, 0, 0),
(175, 0, 0),
(176, 0, 0),
(177, 0, 0),
(178, 0, 0),
(179, 0, 0),
(180, 0, 0),
(181, 0, 0),
(182, 0, 0),
(183, 0, 0),
(184, 0, 0),
(185, 0, 0),
(186, 0, 0),
(187, 0, 0),
(188, 0, 0),
(189, 0, 0),
(190, 0, 0),
(191, 0, 0),
(192, 0, 0),
(193, 0, 0),
(194, 0, 0),
(195, 0, 0),
(196, 0, 0),
(197, 0, 0),
(198, 0, 0),
(199, 0, 0),
(200, 0, 0),
(201, 0, 0),
(202, 0, 0),
(203, 0, 0),
(204, 0, 0),
(205, 0, 0),
(206, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0),
(80, 0),
(81, 0),
(82, 0),
(83, 0),
(84, 0),
(85, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(111, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(118, 0),
(119, 0),
(120, 0),
(121, 0),
(122, 0),
(123, 0),
(125, 0),
(126, 0),
(127, 0),
(128, 0),
(130, 0),
(131, 0),
(132, 0),
(133, 0),
(134, 0),
(135, 0),
(136, 0),
(137, 0),
(138, 0),
(139, 0),
(140, 0),
(141, 0),
(142, 0),
(143, 0),
(144, 0),
(145, 0),
(146, 0),
(147, 0),
(148, 0),
(149, 0),
(150, 0),
(151, 0),
(152, 0),
(153, 0),
(154, 0),
(155, 0),
(156, 0),
(157, 0),
(158, 0),
(159, 0),
(160, 0),
(161, 0),
(162, 0),
(163, 0),
(164, 0),
(165, 0),
(166, 0),
(167, 0),
(168, 0),
(169, 0),
(170, 0),
(171, 0),
(172, 0),
(173, 0),
(174, 0),
(175, 0),
(176, 0),
(177, 0),
(178, 0),
(179, 0),
(180, 0),
(181, 0),
(182, 0),
(183, 0),
(184, 0),
(185, 0),
(186, 0),
(187, 0),
(188, 0),
(189, 0),
(190, 0),
(191, 0),
(192, 0),
(193, 0),
(194, 0),
(195, 0),
(196, 0),
(197, 0),
(198, 0),
(199, 0),
(200, 0),
(201, 0),
(202, 0),
(203, 0),
(204, 0),
(205, 0),
(206, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% خصم', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'شحن مجاني', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 خصم', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 2.52099991, 1, '2017-05-02 13:21:01'),
(2, 'US Dollar', 'USD', '$', '', '2', 3.28080010, 1, '2017-05-02 13:21:01'),
(3, 'Euro', 'EUR', '', '€', '2', 3.00729990, 1, '2017-05-02 13:21:01'),
(4, 'الريال السعودي', 'SAR', 'S.R ', '', '0', 12.32199955, 1, '2017-05-02 13:21:01'),
(5, 'الدينار الكويتي', 'KWD', '', ' KD', '', 1.00000000, 1, '2017-05-02 13:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 1, 'mohammad', 'gholeh', 'mohammad_gholeh@hotmail.com', '077777777746565', '', '54c4d9440ad75f5dc07f42a28609ac6d31bffc3e', '4edsJbdf2', NULL, NULL, 0, 1, '', '::1', 1, 1, 0, '', '', '2017-03-09 12:44:02'),
(2, 1, 0, 1, '', '', 'm.gholeh@mawaqaa.com', '0779999999995sdsdsdsdsdsd', '', 'c3955b9f3168237facc5eb126f361a9520866516', 'cy5WAt1Jf', NULL, NULL, 0, 2, '{"13":"aaaaaa","12":"2"}', '::1', 1, 1, 0, '', '', '2017-03-22 16:15:18'),
(3, 1, 0, 1, '', '', 'w@c.com', '0777777777777777', '', '0ebfde09a3db2c6316191caae73dca34f23cdfe5', 'PTp3BoEKd', NULL, NULL, 0, 6, '{"13":"ahmad","12":"1"}', '::1', 1, 1, 0, '', '', '2017-04-16 14:59:34'),
(4, 1, 0, 1, '', '', 'r@c.com', '07895641231', '', 'be5b758c7a03069e46f225c34467c00e6862a8c7', 'i97v36YNN', NULL, NULL, 0, 7, '{"13":"omar abu rass","12":"1"}', '::1', 1, 1, 0, '', '', '2017-04-16 15:36:17'),
(5, 1, 0, 1, 'taylor', 'successor', 'taylorsuccessor@gmail.com', '98475', '', '8081ddee40b52aa1ef7e37415f1a1001f8d3fa84', 'xmkg1QO9F', NULL, NULL, 0, 9, '', '::1', 1, 1, 0, '', '', '2017-04-20 08:23:42'),
(6, 0, 0, 1, 'assem', 'asdasd', 'assem_mal@mawaqaa.com', '546546546546', '', '5e44df1b66aa63061ec4563ddb3735dc86090fbb', 'dK0N58Hzb', NULL, NULL, 0, 11, '', '::1', 1, 1, 0, '', '', '2017-04-23 13:21:18'),
(7, 0, 0, 1, 'fsadfk', 'kjl', 'taylorsssuccessor@gmail.com', '242423', '', '35db8a108a6fb3f5919021c2efb0772eda017993', 'xaFloJhte', NULL, NULL, 0, 12, '', '::1', 1, 1, 0, '', '', '2017-04-23 14:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(1, 2, 'عملاء التجزئة', 'تجربة');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2017-03-09 12:44:03'),
(2, 2, '::1', '2017-03-22 16:15:19'),
(3, 3, '::1', '2017-04-16 14:59:36'),
(4, 4, '::1', '2017-04-16 15:36:18'),
(5, 5, '::1', '2017-04-20 08:23:43'),
(6, 6, '::1', '2017-04-23 13:21:20'),
(7, 7, '::1', '2017-04-23 14:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'mohammad_gholeh@hotmail.com', '::1', 6, '2017-03-22 14:07:06', '2017-04-16 13:43:04'),
(2, 'mohammadgholeh@gmail.com', '::1', 1, '2017-03-24 22:23:06', '2017-03-24 22:23:06'),
(3, 'm.gholeh@mawaqq.com', '::1', 1, '2017-03-28 07:18:34', '2017-03-28 07:18:34'),
(4, 'm.gholeh@mawaqa.com', '::1', 1, '2017-03-28 07:18:50', '2017-03-28 07:18:50'),
(6, 'm.gholeh@yahoo.com', '::1', 2, '2017-04-18 07:33:44', '2017-04-23 14:35:28'),
(7, 'kdfjs@jfkds.sdf', '::1', 1, '2017-04-20 09:23:09', '2017-04-20 09:23:09'),
(8, 'assem.cs.90@gmail.com', '::1', 1, '2017-04-23 12:19:38', '2017-04-23 12:19:38');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(2, 42, '2017-04-26 17:06:00'),
(4, 47, '2017-04-16 15:44:03'),
(2, 49, '2017-03-27 15:00:06'),
(5, 42, '2017-04-20 11:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field`
--

INSERT INTO `oc_custom_field` (`custom_field_id`, `type`, `value`, `validation`, `location`, `status`, `sort_order`) VALUES
(3, 'text', '', '', 'address', 1, 2),
(4, 'text', '', '', 'address', 1, 1),
(5, 'text', '', '', 'address', 1, 3),
(6, 'text', '', '', 'address', 1, 4),
(7, 'text', '', '', 'address', 1, 5),
(8, 'text', '', '', 'address', 1, 6),
(9, 'text', '', '', 'address', 1, 7),
(10, 'text', '', '', 'address', 1, 8),
(11, 'text', '', '', 'address', 1, 9),
(12, 'select', '', '', 'account', 1, 11),
(13, 'text', '', '', 'account', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

INSERT INTO `oc_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
(3, 1, 1),
(4, 1, 1),
(5, 1, 0),
(6, 1, 0),
(7, 1, 0),
(8, 1, 0),
(9, 1, 0),
(10, 1, 0),
(11, 1, 0),
(12, 1, 1),
(13, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_description`
--

INSERT INTO `oc_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES
(3, 2, 'area'),
(3, 1, 'area'),
(4, 2, 'Address Name'),
(5, 1, 'governorate'),
(6, 1, 'block'),
(7, 2, 'street'),
(7, 1, 'street'),
(8, 2, 'avenue'),
(8, 1, 'avenue'),
(9, 1, 'building number'),
(10, 2, 'floor number'),
(10, 1, 'floor number'),
(11, 2, 'flat number'),
(11, 1, 'flat number'),
(6, 2, 'block'),
(9, 2, 'building number'),
(5, 2, 'governorate'),
(4, 1, 'Address Name'),
(12, 1, 'Country code'),
(12, 2, 'رمز الدولة'),
(13, 1, 'Full Name'),
(13, 2, 'الاسم الكامل');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_value`
--

INSERT INTO `oc_custom_field_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES
(1, 12, 1),
(2, 12, 2),
(3, 12, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_value_description`
--

INSERT INTO `oc_custom_field_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES
(1, 1, 12, '+966'),
(1, 2, 12, '+966'),
(2, 1, 12, '+962'),
(2, 2, 12, '+962'),
(3, 1, 12, '+971'),
(3, 2, 12, '+971');

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES
(1, 'voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 0, '0000-00-00 00:00:00'),
(2, 'cartsms', 'admin/model/sale/return/addReturnHistory/after', 'sms/events/returnGoodsStatus', 1, '2017-05-01 16:12:52'),
(3, 'cartsms', 'catalog/model/checkout/order/addOrderHistory/after', 'sms/events/changeOrderStatusHook', 1, '2017-05-01 16:12:52'),
(4, 'cartsms', 'catalog/sms.post.order.add.success', 'sms/events/orderAddHook', 1, '2017-05-01 16:12:52'),
(5, 'cartsms', 'catalog/model/account/customer/addCustomer/after', 'sms/events/customerAddHook', 1, '2017-05-01 16:12:52'),
(6, 'cartsms', 'catalog/model/account/return/addReturn/after', 'sms/events/returnGoods', 1, '2017-05-01 16:12:52'),
(7, 'cartsms', 'admin/model/catalog/product/deleteProduct/before', 'sms/events/productDeleteHook', 1, '2017-05-01 16:12:52'),
(8, 'cartsms', 'catalog/sms.post.contactformmail.send', 'sms/events/contactFormHook', 1, '2017-05-01 16:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'theme_default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'theme', 'customize'),
(30, 'module', 'latest'),
(31, 'module', 'html'),
(33, 'module', 'tawkto'),
(35, 'module', 'cartsms'),
(36, 'shipping', 'free');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53'),
(5, 'kwd', 'kwd', '0000-00-00 00:00:00', '2017-05-01 14:18:32'),
(6, 'kuwait', 'kuwait', '2017-05-02 16:09:09', '2017-05-02 15:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 1, 1),
(4, 0, 1, 1),
(5, 1, 3, 1),
(6, 1, 2, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 2, 'من نحن', '&lt;p&gt;\r\n	من نحن&lt;/p&gt;\r\n', 'من نحن', '', ''),
(5, 2, 'شروط الاستخدام', '&lt;p&gt;\r\n	شروط الاستخدام&lt;/p&gt;\r\n', 'شروط الاستخدام', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy please agree this Policy&amp;nbsp;&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'معلومات الشحن والتوصيل', '&lt;p&gt;\r\n	معلومات الشحن والتوصيل&lt;/p&gt;\r\n', 'معلومات الشحن والتوصيل', '', ''),
(7, 1, 'About Balloony', '&lt;div class=&quot;_4bl9&quot; style=&quot;word-wrap: break-word; overflow: hidden; flex: 1 0 0px; font-family: Helvetica, Arial, sans-serif; color: rgb(29, 33, 41);&quot;&gt;&lt;div class=&quot;_3-8w&quot; style=&quot;margin-top: 4px; font-family: inherit;&quot;&gt;BalloonyLand is a full service special event planning and decoration company. From birthdays, baby showers, corporate parties to milestone occasions like sweet sixteen and wedding anniversary celebrations, we decorate life\'s events.&lt;/div&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;/div&gt;', 'about balloony', '', ''),
(8, 1, 'Location Map', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Consolas, &amp;quot;Lucida Console&amp;quot;, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap;&quot;&gt;Location Map&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Location Map', '', ''),
(8, 2, 'موقعنا على الخريطة', '&lt;p&gt;موقعنا على الخريطة&lt;br&gt;&lt;/p&gt;', 'موقعنا على الخريطة', '', ''),
(9, 1, 'Our Staff', '&lt;p&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: Consolas, &amp;quot;Lucida Console&amp;quot;, &amp;quot;Courier New&amp;quot;, monospace; white-space: pre-wrap;&quot;&gt;Our Staff&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'our Staff', '', ''),
(9, 2, 'موظفينا', '&lt;p&gt;موظفينا&lt;br&gt;&lt;/p&gt;', 'موظفينا', '', ''),
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms and Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'الخصوصية', '&lt;p&gt;\r\n	الخصوصية&lt;/p&gt;\r\n', 'الخصوصية', '', ''),
(6, 1, 'Delivery Policy', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(7, 2, 'عن بالوني', '&lt;p&gt;عن بالوني&lt;br&gt;&lt;/p&gt;', 'عن بالوني', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(4, 0, 0),
(5, 0, 0),
(3, 0, 0),
(6, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'العربية', 'ar', 'ar', '', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'صفحة البداية'),
(2, 'صفحة المنتج'),
(3, 'صفحة أقسام الموقع'),
(4, 'الصفحة الافتراضية'),
(5, 'صفحة الشركات'),
(6, 'صفحة حساب العميل'),
(7, 'صفحة إنهاء الطلب'),
(8, 'صفحة اتصل بنا'),
(9, 'صفحة خريطة الموقع'),
(10, 'صفحة نظام العمولة'),
(11, 'صفحة المعلومات'),
(12, 'صفحة مقارنة المنتجات'),
(13, 'صفحة البحث'),
(14, 'portal'),
(15, 'event');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(146, 14, 'html.34', 'content_top', 0),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(150, 1, 'html.33', 'content_bottom', 0),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2),
(149, 1, 'featured.28', 'content_top', 2),
(148, 1, 'latest.32', 'content_top', 1),
(147, 1, 'slideshow.27', 'content_top', 0),
(163, 15, 'latest.35', 'content_top', 1),
(162, 15, 'slideshow.27', 'content_top', 0),
(164, 15, 'tawkto', 'content_bottom', 999),
(165, 14, 'tawkto', 'content_bottom', 999),
(166, 4, 'tawkto', 'content_bottom', 999),
(167, 3, 'tawkto', 'content_bottom', 999),
(168, 7, 'tawkto', 'content_bottom', 999),
(169, 8, 'tawkto', 'content_bottom', 999),
(170, 13, 'tawkto', 'content_bottom', 999),
(171, 1, 'tawkto', 'content_bottom', 999),
(172, 5, 'tawkto', 'content_bottom', 999),
(173, 11, 'tawkto', 'content_bottom', 999),
(174, 2, 'tawkto', 'content_bottom', 999),
(175, 6, 'tawkto', 'content_bottom', 999),
(176, 9, 'tawkto', 'content_bottom', 999),
(177, 12, 'tawkto', 'content_bottom', 999),
(178, 10, 'tawkto', 'content_bottom', 999);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(80, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(90, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(91, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(92, 1, 0, 'common/home/index_supply'),
(101, 15, 0, 'product/event/events_main');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'سنتيمتر', 'سم'),
(2, 2, 'ملليمتر', 'مم'),
(3, 2, 'انش', 'انش'),
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu`
--

CREATE TABLE `oc_menu` (
  `menu_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `type` varchar(6) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_description`
--

CREATE TABLE `oc_menu_description` (
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menu_module`
--

CREATE TABLE `oc_menu_module` (
  `menu_module_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(4, 'Cart SMS for OpenCart by TOPefekt s.r.o.', 'cartsms', 'TOPefekt (Lukáš Piják)', '4.00', 'http://www.cart-sms.com', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>Cart SMS for OpenCart by TOPefekt s.r.o.</name>\r\n    <version>3.10</version>\r\n    <author>TOPefekt (Lukáš Piják)</author>\r\n    <link>http://www.cartsms.com/</link>\r\n    <file path="admin/controller/common/column_left.php">\r\n        <operation>\r\n            <search><![CDATA[\r\n                    public function index() {\r\n                        ]]>\r\n            </search>\r\n            <add position="after"><![CDATA[\r\n                    if(!defined("SMS_MODULE")){\r\n                        if(file_exists("model/sms/hooks.php"))\r\n                        {                            \r\n                            require_once("model/sms/hooks.php");\r\n                            require_once("model/sms/sms.php");\r\n                            $hooks = new ModelSmsHooks( $this->registry );\r\n                            require_once($hooks->getLanguageDirectory());\r\n                        }\r\n                    }\r\n                        ]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n                    $customer = array();\r\n                        ]]>\r\n            </search>\r\n            <add position="before"><![CDATA[\r\n							// CartSMS\r\n							$cart_sms = array();\r\n							\r\n							if ($this->user->hasPermission(\'access\', \'sms/send\')) {\r\n								$cart_sms[] = array(\r\n									\'name\'	   => v_smsprestashop_send,\r\n									\'href\'     => $this->url->link(\'sms/send\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							}\r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/marketing\')) {\r\n								$cart_sms[] = array(\r\n									\'name\'	   => v_smsprestashop_marketing,\r\n									\'href\'     => $this->url->link(\'sms/marketing\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							}          \r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/history\')) {\r\n								$cart_sms[] = array(\r\n									\'name\'	   => v_smsprestashop_history,\r\n									\'href\'     => $this->url->link(\'sms/history\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							}   \r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/statistics\')) {\r\n								$cart_sms[] = array(\r\n									\'name\'	   => v_statistics,\r\n									\'href\'     => $this->url->link(\'sms/statistics\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							}   \r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/answers\')) {\r\n								$cart_sms[] = array(\r\n									\'name\'	   => v_smsprestashop_answers,\r\n									\'href\'     => $this->url->link(\'sms/answers\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							} \r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/credit\')) {\r\n								$cart_sms[] = array(\r\n									\'name\'	   => v_smsprestashop_credit,\r\n									\'href\'     => $this->url->link(\'sms/credit\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							} \r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/profile\')) {\r\n								$cart_sms_settings[] = array(\r\n									\'name\'	   => v_adminsmsprofile_editaccount,\r\n									\'href\'     => $this->url->link(\'sms/profile\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							} \r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/admin\')) {\r\n								$cart_sms_settings[] = array(\r\n									\'name\'	   => v_smsprestashop_admin,\r\n									\'href\'     => $this->url->link(\'sms/admin\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							} \r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/customer\')) {\r\n								$cart_sms_settings[] = array(\r\n									\'name\'	   => v_smsprestashop_customer,\r\n									\'href\'     => $this->url->link(\'sms/customer\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							} \r\n																			\r\n																if ($this->user->hasPermission(\'access\', \'sms/smscharging\')) {\r\n								$cart_sms_settings[] = array(\r\n									\'name\'	   => v_smsprestashop_smscharging,\r\n									\'href\'     => $this->url->link(\'sms/smscharging\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							} \r\n																										\r\n																if ($this->user->hasPermission(\'access\', \'sms/settings\')) {\r\n								$cart_sms_settings[] = array(\r\n									\'name\'	   => v_smsprestashop_settings,\r\n									\'href\'     => $this->url->link(\'sms/settings\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							} \r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/profile\')) {\r\n								$cart_sms[] = array(\r\n									\'name\'	   => v_menu_setting,\r\n									\'href\'     => \'\',\r\n									\'children\' => $cart_sms_settings		\r\n								);	\r\n							} \r\n																\r\n																if ($this->user->hasPermission(\'access\', \'sms/about\')) {\r\n								$cart_sms[] = array(\r\n									\'name\'	   => v_smsprestashop_about,\r\n									\'href\'     => $this->url->link(\'sms/about\', \'token=\' . $this->session->data[\'token\'], true),\r\n									\'children\' => array()		\r\n								);	\r\n							} \r\n\r\n							if ($cart_sms) {\r\n								$data[\'menus\'][] = array(\r\n									\'id\'       => \'menu-design\',\r\n									\'icon\'	   => \'fa-envelope-o\', \r\n									\'name\'	   => \'Cart\'.v_smsanswers_sms,\r\n									\'href\'     => \'\',\r\n									\'children\' => $cart_sms\r\n								);	\r\n							}\r\n                        ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path="admin/view/template/sale/order_info.tpl">\r\n        <operation>\r\n            <search><![CDATA[\r\n                <input type="checkbox" name="notify" value="1" id="input-notify" />\r\n		]]>\r\n            </search>\r\n            <add position="after"><![CDATA[  \r\n                              </div>\r\n                </div>    \r\n                <div class="form-group">\r\n                  <label class="col-sm-2 control-label" for="input-notifySms"><?php echo v_sendsms_sendsms; ?></label>\r\n                  <div class="col-sm-10">\r\n                    <input type="checkbox" name="notifySms" value="1" id="input-notify" checked="checked"/>\r\n\r\n            ]]>                    \r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[data: \'order_status_id=\' + encodeURIComponent($(\'select[name=\\\'order_status_id\\\']\').val()) + \'&notify=\' + ($(\'input[name=\\\'notify\\\']\').prop(\'checked\') ? 1 : 0) + \'&override=\' + ($(\'input[name=\\\'override\\\']\').prop(\'checked\') ? 1 : 0) + \'&append=\' + ($(\'input[name=\\\'append\\\']\').prop(\'checked\') ? 1 : 0) + \'&comment=\' + encodeURIComponent($(\'textarea[name=\\\'comment\\\']\').val()),]]></search>\r\n            <add position="replace"><![CDATA[data: \'order_status_id=\' + encodeURIComponent($(\'select[name=\\\'order_status_id\\\']\').val()) + \'&notify=\' + ($(\'input[name=\\\'notify\\\']\').prop(\'checked\') ? 1 : 0) + \'&notifySms=\' + ($(\'input[name=\\\'notifySms\\\']\').prop(\'checked\') ? 1 : 0) + \'&override=\' + ($(\'input[name=\\\'override\\\']\').prop(\'checked\') ? 1 : 0) + \'&append=\' + ($(\'input[name=\\\'append\\\']\').prop(\'checked\') ? 1 : 0) + \'&comment=\' + encodeURIComponent($(\'textarea[name=\\\'comment\\\']\').val()),]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/controller/information/contact.php">\r\n        <operation>\r\n            <search><![CDATA[\r\n                    $mail->send();\r\n                    ]]>\r\n            </search>\r\n            <add  position="after"><![CDATA[                          \r\n                        $data = array("email" => $this->request->post[\'email\'], "name" => $this->request->post[\'name\'], "text" => $this->request->post[\'enquiry\']);            \r\n                        $this->event->trigger(\'sms.post.contactformmail.send\', array($data));\r\n                    ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/controller/checkout/success.php" error="skip">\r\n        <operation>\r\n            <search><![CDATA[\r\n                                $this->cart->clear();\r\n				]]>\r\n            </search>\r\n            <add position="before"><![CDATA[                               \r\n                $this->event->trigger(\'sms.post.order.add.success\', array($this->session->data[\'order_id\']));\r\n            \r\n				]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/controller/module/bestseller.php" error="skip">\r\n        <operation>\r\n            <search><![CDATA[\r\n                    if ($result[\'image\']) {\r\n                    ]]>\r\n            </search>\r\n            <add position="before"><![CDATA[                          \r\n                    if($result["model"] == "InfoSMS") \r\n                        continue;\r\n                    ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n    <file path="catalog/controller/common/content_top.php" error="skip">\r\n        <operation>\r\n            <search><![CDATA[\r\n                    $setting_info = $this->model_extension_module->getModule($part[1]);\r\n                    ]]>\r\n            </search>\r\n            <add position="before"><![CDATA[                          \r\n                    if(!method_exists($this->model_extension_module, "getModule"))\r\n                    {\r\n                        $this->load->model(\'extension/module\');\r\n                    }\r\n                    ]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n    <file path="system/library/cart/cart.php" error="skip">\r\n        <operation>\r\n            <search><![CDATA[\r\n                                $this->weight = $registry->get(\'weight\');\r\n				]]>\r\n            </search>\r\n            <add position="after"><![CDATA[                          \r\n                                $this->getSmsProduct();\r\n				]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n                                public function clear() {\r\n				]]>\r\n            </search>\r\n            <add position="before"><![CDATA[     \r\n                                private $product_id;\r\n                    \r\n                                private function isOptOutEnable()\r\n                                {\r\n                                    if(!$this->isSmsModuleInstalled())\r\n                                        return false;\r\n                            \r\n                                    $auto = $this->isAutoOptOut();\r\n                                                        \r\n                                    $optOut = false;    \r\n                            \r\n                                    $store_id = $this->config->get(\'config_store_id\');\r\n                                    if(!isset($store_id))\r\n                                        $store_id = 0;\r\n                            \r\n                                    $result = $this->db->query("SELECT active FROM ".DB_PREFIX."sp_optout_prices WHERE shop_id = $store_id limit 1");\r\n                                    \r\n                                    if ($result->num_rows)\r\n                                    {\r\n                                        foreach ($result->rows as $row)\r\n                                        {\r\n                                            $optOut = $row["active"];\r\n                                        }\r\n                                    }\r\n                            \r\n                                    if($auto == false && $optOut)\r\n                                    {\r\n                                        $_SESSION["SMS_IN_CART"] = false;\r\n                                    }  \r\n\r\n                                    return $optOut;\r\n                                }\r\n                                \r\n                                private function isInCart($product_id, $recurring_id = 0, $option = array())\r\n                                {       \r\n                                    if(isset($this->session->data) && isset($this->session->data[\'cart\']))\r\n                                    {\r\n                                        foreach($this->session->data[\'cart\'] as $key => $qty)\r\n                                        {\r\n                                            if($product_id == $this->keyToProductId($key))\r\n                                            {\r\n                                                return true;\r\n                                            }\r\n                                        }\r\n                                        return false;\r\n                                    }\r\n                                    else\r\n                                    {\r\n                                        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "cart WHERE customer_id = \'" . (int)$this->customer->getId() . "\' AND session_id = \'" . $this->db->escape($this->session->getId()) . "\' AND product_id = \'" . (int)$product_id . "\' AND recurring_id = \'" . (int)$recurring_id . "\' AND `option` = \'" . $this->db->escape(json_encode($option)) . "\'");\r\n\r\n                                		if ($query->row[\'total\']) \r\n                                        {\r\n                                            return true;\r\n                                        }\r\n                                        return false;\r\n                                    }\r\n                                }\r\n                                \r\n                                private function keyToProductId($key)\r\n                                {\r\n                                    $data = unserialize(base64_decode($key));\r\n                                    \r\n                                    if(isset($data["product_id"]))\r\n                                    {\r\n                                        return $data["product_id"];\r\n                                    }\r\n                                    return false;\r\n                                }\r\n\r\n                                private function getSmsProduct()\r\n                                { \r\n                                    if(!$this->isSmsModuleInstalled())\r\n                                    {\r\n                                        return false;\r\n                                    }\r\n                            \r\n                                    if(isset($this->product_id))\r\n                                    {\r\n                                        return $this->product_id;\r\n                                    } \r\n                                    else \r\n                                    {\r\n                                        $store_id = $this->config->get(\'config_store_id\');\r\n                                        if(!isset($store_id))\r\n                                        {\r\n                                            $store_id = 0;\r\n                                        }\r\n                            \r\n                                        $result = $this->db->query("SELECT * FROM ".DB_PREFIX."product INNER JOIN  ".DB_PREFIX."product_to_store ON  ".DB_PREFIX."product.product_id =  ".DB_PREFIX."product_to_store.product_id WHERE model like \'InfoSMS\' AND store_id = ".$store_id.";");\r\n\r\n                                        if ($result->num_rows)\r\n                                        {\r\n                                            foreach ($result->rows as $row)\r\n                                            {\r\n                                                $this->product_id = $row["product_id"];\r\n                                                return $this->product_id;\r\n                                            }\r\n                                        }\r\n                                    }\r\n                                    return false;\r\n                                }\r\n\r\n                                private function isSmsModuleInstalled()\r\n                                {\r\n                                    $result = $this->db->query("SELECT value FROM ".DB_PREFIX."setting WHERE `key` like \'sms_status\'");\r\n\r\n                                    if ($result->num_rows)\r\n                                    {\r\n                                        foreach ($result->rows as $row)\r\n                                        {\r\n                                            return $row["value"];\r\n                                        }\r\n                                    }\r\n\r\n                                    return false;\r\n                                }\r\n                            \r\n                                private function isAutoOptOut()\r\n                                {\r\n                                    $id_shop = $this->config->get(\'config_store_id\');\r\n                            \r\n                                    $result = $this->db->query("SELECT * FROM `" . DB_PREFIX . "sp_config` WHERE `shop_id` = \'".$id_shop."\' AND `config_name` = \'optout_auto\'");\r\n                                    \r\n                                    if ($result->num_rows)\r\n                                    {\r\n                                        foreach ($result->rows as $row)\r\n                                        {\r\n                                            return $row["config_value"];\r\n                                        }\r\n                                    }\r\n                                    return true;\r\n                                }\r\n\r\n                                private function optOutAdd($product_id)\r\n                                {                 \r\n                                    $auto = $this->isAutoOptOut();\r\n\r\n                                    if(($this->getSmsProduct() == $product_id))\r\n                                    {\r\n                                        if($auto)\r\n                                        {\r\n                                            return false;\r\n                                        }\r\n                                        else\r\n                                        {\r\n                                            $_SESSION["SMS_IN_CART"] = true;\r\n                                            return true;\r\n                                        }\r\n                                    }\r\n\r\n                                                                       \r\n                                    if($this->getSmsProduct())\r\n                                    {\r\n                                        if($this->hasProducts() && !$this->isInCart($this->getSmsProduct()) && (!isset($_SESSION["SMS_IN_CART"]) || $_SESSION["SMS_IN_CART"] !== false))\r\n                                        {\r\n                                            if($auto)\r\n                                            {\r\n                                                $this->add($this->getSmsProduct());\r\n                                                $_SESSION["SMS_IN_CART"] = true;\r\n                                            }\r\n                                        }\r\n                                        \r\n                                        if($this->hasProducts()==1 && $this->isInCart($this->getSmsProduct()))\r\n                                        {\r\n                                            if($auto)\r\n                                            {\r\n                                                if(isset($this->session->data) && isset($this->session->data[\'cart\']))\r\n                                                {\r\n                                                    $_SESSION["cart"]->remove($this->id_product); \r\n                                                }\r\n                                                \r\n                                                unset($_SESSION["SMS_IN_CART"]);\r\n                                            }\r\n                                        }\r\n                                    }\r\n                                }\r\n\r\n                                private function optOutRemove()\r\n                                {\r\n                                    if($this->getSmsProduct()){\r\n                                        if($this->hasProducts()==1 && $this->isInCart($this->getSmsProduct())){\r\n                                           $this->clear(); \r\n                                           unset($_SESSION["SMS_IN_CART"]);\r\n                                        }\r\n\r\n                                        if(isset($_SESSION["SMS_IN_CART"]) && $_SESSION["SMS_IN_CART"] === true && !$this->isInCart($this->getSmsProduct())){\r\n                                            $_SESSION["SMS_IN_CART"] = false;\r\n                                        }\r\n\r\n                                        if($this->hasProducts() < 1){\r\n                                           unset($_SESSION["SMS_IN_CART"]); \r\n                                        }\r\n                                    }\r\n                                }\r\n                                \r\n                                private function cartIdToProductId($cart_id)\r\n                                {\r\n                                    $result = $this->db->query("SELECT `product_id` FROM `" . DB_PREFIX . "cart` WHERE `cart_id` = \'".$cart_id."\' LIMIT 1");\r\n                                    \r\n                                    if ($result->num_rows)\r\n                                    {\r\n                                        foreach ($result->rows as $row)\r\n                                        {\r\n                                            return $row["product_id"];\r\n                                        }\r\n                                    }\r\n                                    return true;\r\n                                }\r\n				]]>\r\n            </add>\r\n        </operation>        \r\n        <operation>\r\n            <search><![CDATA[\r\n$this->db->query("UPDATE " . DB_PREFIX . "cart SET quantity = (quantity + " . (int)$quantity . ") WHERE api_id = \'" . (isset($this->session->data[\'api_id\']) ? (int)$this->session->data[\'api_id\'] : 0) . "\' AND customer_id = \'" . (int)$this->customer->getId() . "\' AND session_id = \'" . $this->db->escape($this->session->getId()) . "\' AND product_id = \'" . (int)$product_id . "\' AND recurring_id = \'" . (int)$recurring_id . "\' AND `option` = \'" . $this->db->escape(json_encode($option)) . "\'");\r\n\r\n				]]>\r\n            </search>\r\n            <add position="after"><![CDATA[\r\n                                            }\r\n                                if($this->isOptOutEnable()){\r\n                                    $this->optOutAdd($product_id);\r\n				]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n$this->db->query("DELETE FROM " . DB_PREFIX . "cart WHERE cart_id = \'" . (int)$cart_id . "\' AND api_id = \'" . (isset($this->session->data[\'api_id\']) ? (int)$this->session->data[\'api_id\'] : 0) . "\' AND customer_id = \'" . (int)$this->customer->getId() . "\' AND session_id = \'" . $this->db->escape($this->session->getId()) . "\'");\r\n				]]>\r\n            </search>\r\n            <add position="after"><![CDATA[ \r\n                                  \r\n                                if($this->isOptOutEnable()){\r\n                                    $this->optOutRemove();\r\n                                }\r\n				]]>\r\n            </add>\r\n        </operation>\r\n        <operation>\r\n            <search ><![CDATA[\r\n                                public function update($cart_id, $quantity) {\r\n				]]>\r\n            </search>\r\n            <add position="after"><![CDATA[ \r\n                                if($this->cartIdToProductId($cart_id) == $this->getSmsProduct()){\r\n                                    return;\r\n                                }\r\n				]]>\r\n            </add>\r\n        </operation>\r\n    </file>\r\n</modification>', 1, '2017-05-01 16:12:52');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'بنر - صفحة الأقسام', 'banner', '{"name":"بنر - صفحة الأقسام","banner_id":"6","width":"182","height":"182","status":"1"}'),
(29, 'كاروسيل - صفحة البداية', 'carousel', '{"name":"كاروسيل - صفحة البداية","banner_id":"8","width":"130","height":"100","status":"1"}'),
(28, 'منتجات مميزة - صفحة البداية', 'featured', '{"name":"\\u0645\\u0646\\u062a\\u062c\\u0627\\u062a \\u0645\\u0645\\u064a\\u0632\\u0629 - \\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629","product_name":"","product":["43","40","28","47","42","50","30","44","29","35","45","31"],"limit":"12","width":"263","height":"263","status":"1"}'),
(27, 'سلايد شو - صفحة البداية', 'slideshow', '{"name":"\\u0633\\u0644\\u0627\\u064a\\u062f \\u0634\\u0648 - \\u0635\\u0641\\u062d\\u0629 \\u0627\\u0644\\u0628\\u062f\\u0627\\u064a\\u0629","banner_id":"7","width":"1170","height":"600","status":"1"}'),
(31, 'بنر 1', 'banner', '{"name":"بنر 1","banner_id":"6","width":"182","height":"182","status":"1"}'),
(32, 'latest', 'latest', '{"name":"latest","limit":"5","width":"451","height":"630","status":"1"}'),
(33, 'welcome', 'html', '{"name":"welcome","module_description":{"1":{"title":"","description":"&lt;section class=&quot;welcometext-section&quot;&gt;&lt;!--Welcome Text Section--&gt;\\r\\n    \\t&lt;div&gt;&lt;!--container--&gt;\\r\\n        \\t&lt;div class=&quot;welcome-text&quot;&gt;\\r\\n            \\t&lt;h4&gt; Here at &lt;span&gt;BalloonyLand&lt;\\/span&gt;, we absolutely love a good party! &lt;\\/h4&gt;\\r\\n            \\t&lt;p&gt;To make party planning even simpler we offer next day UAE delivery on all orders placed before 2pm!&lt;\\/p&gt;\\r\\n            \\t&lt;p&gt;We all know that the magic is in the details. We aim to make the whole party planning process a piece of cake, by offering a one-stop shop for all your party supplies and needs. We have stylish decorations, partyware, cups, plates, napkins, balloons, bunting, cake stands, party printables, themed partyware, plain partyware &amp;amp; party bags. Furthermore we have teamed up with the best companies &lt;\\/p&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;&lt;!--container--&gt;\\r\\n    &lt;\\/section&gt;&lt;!--Welcome Text Section--&gt;"},"2":{"title":"","description":"&lt;section class=&quot;welcometext-section&quot;&gt;&lt;!--Welcome Text Section--&gt;\\r\\n    \\t&lt;div&gt;&lt;!--container--&gt;\\r\\n        \\t&lt;div class=&quot;welcome-text&quot;&gt;\\r\\n            \\t&lt;h1&gt;\\u0647\\u0646\\u0627 \\u0641\\u064a \\u0628\\u0627\\u0644\\u0648\\u0646\\u064a \\u0644\\u0627\\u0646\\u062f \\u0646\\u062d\\u0646 \\u0646\\u062d\\u0628 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0623\\u0637\\u0644\\u0627\\u0642 \\u0627\\u0644\\u062d\\u0641\\u0644\\u0629 \\u0627\\u0644\\u0645\\u0645\\u064a\\u0632\\u0629&lt;\\/h1&gt;&lt;p&gt;&lt;br&gt;&lt;\\/p&gt;&lt;h1&gt;\\u0644\\u062c\\u0639\\u0644 \\u0627\\u0644\\u062a\\u062e\\u0637\\u064a\\u0637 \\u0644\\u0644\\u062d\\u0641\\u0644\\u0629 \\u0623\\u0633\\u0647\\u0644 \\u0646\\u062d\\u0646 \\u0646\\u0648\\u0641\\u0631 \\u0641\\u064a \\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u0642\\u0627\\u062f\\u0645 \\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0641\\u064a \\u0627\\u0644\\u0623\\u0645\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a\\u0629 \\u0627\\u0644\\u0645\\u062a\\u062d\\u062f\\u0629 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0627\\u0645\\u0627\\u0643\\u0646 \\u0627\\u0644\\u0637\\u0644\\u0628\\u0627\\u062a \\u0642\\u0628\\u0644 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 \\u0638\\u0647\\u0631\\u0627&lt;br&gt;&amp;nbsp;\\u0648\\u0646\\u062d\\u0646 \\u0646\\u0639\\u0644\\u0645 \\u062c\\u0645\\u064a\\u0639\\u0627 \\u0623\\u0646 \\u0627\\u0644\\u0633\\u062d\\u0631 \\u0647\\u0648 \\u0641\\u064a \\u0627\\u0644\\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 . \\u0648 \\u0646\\u062d\\u0646 \\u0646\\u0647\\u062f\\u0641 \\u0644\\u062c\\u0639\\u0644 \\u0639\\u0645\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062a\\u062e\\u0637\\u064a\\u0637 \\u0633\\u0647\\u0644\\u0629 \\u0648 \\u0633\\u0644\\u0633\\u0629 \\u062c\\u062f\\u0627 \\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u062a\\u0642\\u062f\\u064a\\u0645 \\u0645\\u062d\\u0637\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \\u0644\\u062c\\u0645\\u064a\\u0639 \\u0644\\u0648\\u0627\\u0632\\u0645 \\u0648 \\u0627\\u062d\\u062a\\u064a\\u0627\\u062c\\u0627\\u062a \\u0627\\u0644\\u062d\\u0641\\u0644\\u0629 . \\u0644\\u062f\\u064a\\u0646\\u0627 \\u062f\\u064a\\u0643\\u0648\\u0631\\u0627\\u062a \\u0623\\u0646\\u064a\\u0642\\u0629 ,\\u0627\\u0647\\u062a\\u0645\\u0627\\u0645\\u0627\\u062a \\u0627\\u0644\\u062d\\u0641\\u0644\\u0629 ,\\u0623\\u0643\\u0648\\u0627\\u0628 ,\\u0644\\u0648\\u062d\\u0627\\u062a , \\u0645\\u0646\\u0627\\u062f\\u064a\\u0644 ,.....&lt;\\/h1&gt;\\r\\n            &lt;\\/div&gt;\\r\\n        &lt;\\/div&gt;&lt;!--container--&gt;\\r\\n    &lt;\\/section&gt;&lt;!--Welcome Text Section--&gt;"}},"status":"1"}'),
(34, 'index', 'html', '{"name":"index","module_description":{"1":{"title":"index","description":" &lt;section class=&quot;landing-wrapper&quot;&gt;&lt;!--landing-wrapper--&gt;\\r\\n    \\t&lt;div class=&quot;container&quot;&gt;&lt;!--container--&gt;\\r\\n        \\t&lt;div class=&quot;landing-logo&quot;&gt;&lt;!--landing-logo--&gt;\\r\\n            \\t&lt;a href=&quot;index.html&quot;&gt;&lt;img src=&quot;..\\/image\\/catalog\\/icons\\/logo.png&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;\\r\\n            &lt;\\/div&gt;&lt;!--landing-logo--&gt;\\r\\n            &lt;div class=&quot;happy-birthday&quot;&gt;&lt;!--happy-birthday--&gt;\\r\\n            \\t&lt;img src=&quot;..\\/image\\/catalog\\/happybirthday.jpg&quot; alt=&quot;&quot;&gt;\\r\\n            &lt;\\/div&gt;&lt;!--happy-birthday--&gt;\\r\\n            &lt;div class=&quot;row&quot;&gt;&lt;!--row--&gt;\\r\\n            \\t&lt;div class=&quot;col-lg-6 col-md-6 col-sm-12 left-container&quot;&gt;&lt;!--col-md-6--&gt;\\r\\n                \\t&lt;div class=&quot;ballon-left&quot;&gt;&lt;!--ballon-left--&gt;\\r\\n                    \\t&lt;div class=&quot;ballon-left-img&quot;&gt;\\r\\n                    \\t\\t&lt;img src=&quot;..\\/image\\/catalog\\/ballon-left.png&quot; alt=&quot;&quot;&gt;\\r\\n                        &lt;\\/div&gt;\\r\\n                        &lt;h2&gt;Balloons&lt;br&gt;\\r\\n&amp;amp; Party Supplies&lt;\\/h2&gt;\\r\\n                        &lt;p&gt;\\r\\n                          &lt;a href=&quot;balloons_main.html&quot;&gt;A short two line description about the section \\r\\n                          &lt;span class=&quot;block&quot;&gt;will be shown here.&lt;img src=&quot;..\\/image\\/catalog\\/icons\\/landing-arrow.png&quot; alt=&quot;&quot;&gt;&lt;\\/span&gt;&lt;\\/a&gt;   \\r\\n                        &lt;\\/p&gt;\\r\\n                        &lt;div class=&quot;play-store-down&quot;&gt;\\r\\n                        \\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;..\\/image\\/catalog\\/icons\\/play-store-icon.png&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;\\r\\n                        &lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;&lt;!--ballon-left--&gt;\\r\\n                &lt;\\/div&gt;&lt;!--col-md-6--&gt;\\r\\n                &lt;div class=&quot;col-lg-6 col-md-6 col-sm-12 right-container &quot;&gt;\\r\\n                    &lt;div class=&quot;customize-right&quot;&gt;&lt;!--customize-right--&gt;\\r\\n                    \\t&lt;div class=&quot;customize-right-img&quot;&gt;\\r\\n                    \\t\\t&lt;img src=&quot;..\\/image\\/catalog\\/customize-right.png&quot; alt=&quot;&quot;&gt;\\r\\n                        &lt;\\/div&gt;\\r\\n                        &lt;h2&gt;Customize&lt;br&gt;\\r\\nYour Party &amp;amp; Event&lt;\\/h2&gt;\\r\\n                        &lt;p&gt;\\r\\n                          &lt;a href=&quot;customize_main.html&quot;&gt;A short two line description about the section \\r\\n                          &lt;span class=&quot;block&quot;&gt;will be shown here.&lt;img src=&quot;..\\/image\\/catalog\\/icons\\/landing-arrow.png&quot; alt=&quot;&quot;&gt;&lt;\\/span&gt;&lt;\\/a&gt;   \\r\\n                        &lt;\\/p&gt;\\r\\n                        &lt;div class=&quot;app-store-down&quot;&gt;\\r\\n                        \\t&lt;a href=&quot;#&quot;&gt;&lt;img src=&quot;..\\/image\\/catalog\\/icons\\/app-store-icon.png&quot; alt=&quot;&quot;&gt;&lt;\\/a&gt;\\r\\n                        &lt;\\/div&gt;\\r\\n                    &lt;\\/div&gt;&lt;!--customize-right--&gt;\\r\\n                &lt;\\/div&gt;\\r\\n            &lt;\\/div&gt;&lt;!--row--&gt;\\r\\n        &lt;\\/div&gt;&lt;!--container--&gt;\\r\\n    &lt;\\/section&gt;&lt;!--landing-wrapper--&gt;"},"2":{"title":"index","description":""}},"status":"1"}'),
(35, 'latest services', 'latest', '{"name":"latest services","limit":"5","width":"200","height":"200","status":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_newsletter`
--

CREATE TABLE `oc_newsletter` (
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `newsletter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_newsletter`
--

INSERT INTO `oc_newsletter` (`email`, `status`, `hash`, `newsletter_id`) VALUES
('m.m@m.com', 1, '586a27e399ac3f37f05325bca29706bc', 3),
('assem@mawaqaa.com', 1, 'cc64d5b9ffda551630afd2162a200778', 4),
('admin@ldf.com', 1, '5e1c6274a01a3bf93b2808bd90114166', 6),
('w@mawaqaa.com', 1, '81f7f885aa6ef9ab43578b4c29f9902d', 7),
('dsdsd@klsd.c', 1, '45a2a63540a1dc50ce0d7aa2b922c2e9', 8),
('u@f.v', 1, 'f21b609595a85627a276acd9394f3636', 9),
('er@f.x', 1, 'a123faafbca6d61b58821feb16188080', 10),
('kj@1.c', 1, '740d71b00f0a21d11ecb0a10116e9cda', 11),
('sd@k.com', 1, '563dcc989779fe866534a2873f1a53ad', 12),
('q@w.c', 1, '0c7d694009b1b53fed03d99b7b1fe950', 13),
('s@q.c', 1, '16619ee739575890fab00511e2551a52', 14),
('s@q.c', 1, '5feb37b50309103881a4031b42497178', 15),
('', 1, 'aaefc8e48ea82bf00fa6ac920860edf4', 16),
('', 1, 'b4e8585ac76057f9653c43e80c58af98', 17),
('', 1, 'c866535c655f237ed8b44f88a74ab0ef', 18),
('q@r.v', 1, 'd428ece3d8fc2ccb0a33e0cd17137322', 19),
('q@w.v', 1, '0f8248eda213f99c41bcb1f49c7a97e1', 20),
('hhgghghghh@r.m', 1, '037726216eb2ad40d4694ef5aa93a048', 21);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 1),
(12, 'date', 11),
(14, 'select', 2),
(15, 'select', 3),
(16, 'textarea', 4),
(17, 'select', 1),
(18, 'date', 0),
(19, 'select', 3),
(20, 'radio', 4),
(21, 'select', 2),
(22, 'date', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 2, 'راديو'),
(2, 2, 'تحديد'),
(4, 2, 'نص'),
(6, 2, 'حقل نصي'),
(8, 2, 'موعد'),
(7, 2, 'ملف'),
(5, 2, 'اختيار اللون'),
(9, 2, 'وقت'),
(10, 2, 'التاريخ والوقت'),
(11, 1, 'Size'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 2, 'موعد الشحن'),
(11, 2, 'المقاس'),
(8, 1, 'Date'),
(12, 1, 'Delivery Date'),
(1, 1, 'Radio'),
(14, 2, 'قصاصات ورق'),
(14, 1, 'confetti'),
(15, 2, 'الذيل'),
(15, 1, 'Tail'),
(16, 2, 'الرسالة'),
(16, 1, 'Message'),
(17, 1, 'balloon color'),
(17, 2, 'balloon color '),
(18, 1, 'balloon delivery  date'),
(18, 2, 'balloon delivery  date'),
(19, 1, 'balloon delivery time'),
(19, 2, 'balloon delivery time'),
(20, 1, 'air'),
(20, 2, 'air'),
(21, 1, 'Event Time'),
(21, 2, 'Event Time'),
(22, 1, 'Event Date'),
(22, 2, 'Event Date');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(48, 11, '', 3),
(47, 11, '', 2),
(46, 11, '', 1),
(52, 14, 'catalog/product-larg-img1.jpg', 2),
(53, 14, 'catalog/baloon-img2.jpg', 1),
(56, 15, '', 3),
(55, 15, '', 2),
(54, 15, '', 1),
(58, 17, 'catalog/baloon11.jpg', 3),
(59, 17, 'catalog/baloon13.jpg', 2),
(57, 17, 'catalog/baloon6.jpg', 1),
(60, 19, '', 1),
(61, 19, '', 2),
(62, 19, '', 3),
(63, 20, '', 1),
(64, 20, '', 2),
(65, 21, '', 1),
(66, 21, '', 2),
(67, 21, '', 3),
(68, 21, '', 4),
(69, 21, '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(32, 2, 1, 'صغير'),
(24, 2, 2, 'تحديد2'),
(24, 1, 2, 'Checkbox 2'),
(32, 1, 1, 'Small'),
(39, 2, 5, 'أحمر'),
(39, 1, 5, 'Red'),
(41, 2, 5, 'أخضر'),
(23, 2, 2, 'تحديد1'),
(23, 1, 2, 'Checkbox 1'),
(48, 1, 11, 'Large'),
(47, 2, 11, 'وسط'),
(47, 1, 11, 'Medium'),
(43, 2, 1, 'كبير'),
(44, 2, 2, 'تحديد3'),
(44, 1, 2, 'Checkbox 3'),
(43, 1, 1, 'Large'),
(41, 1, 5, 'Green'),
(42, 2, 5, 'أصفر'),
(42, 1, 5, 'Yellow'),
(45, 2, 2, 'تحديد4'),
(45, 1, 2, 'Checkbox 4'),
(46, 2, 11, 'صغير'),
(31, 1, 1, 'Medium'),
(31, 2, 1, 'وسط'),
(40, 1, 5, 'Blue'),
(40, 2, 5, 'أزرق'),
(46, 1, 11, 'Small'),
(52, 2, 14, 'قصاصات زرقاء'),
(52, 1, 14, 'confetti blue'),
(53, 2, 14, 'قصاصات خضراء'),
(53, 1, 14, 'confetti green'),
(48, 2, 11, 'كبير'),
(56, 1, 15, 'blue'),
(55, 2, 15, 'اخضر'),
(55, 1, 15, 'green'),
(54, 2, 15, 'احمر'),
(54, 1, 15, 'red'),
(56, 2, 15, 'ازرق'),
(58, 1, 17, 'blue'),
(59, 2, 17, 'green'),
(59, 1, 17, 'green'),
(57, 2, 17, 'red'),
(57, 1, 17, 'red'),
(58, 2, 17, 'blue'),
(60, 1, 19, 'Morning (09:00 to 14:00)'),
(60, 2, 19, 'Morning (09:00 to 14:00)'),
(61, 1, 19, 'Afternoon (13:00 to 16:00)'),
(61, 2, 19, 'Afternoon (13:00 to 16:00)'),
(62, 1, 19, 'Evening (17:00 to 21:30)'),
(62, 2, 19, 'Evening (17:00 to 21:30)'),
(63, 1, 20, 'Helium'),
(63, 2, 20, 'Helium'),
(64, 1, 20, 'Air'),
(64, 2, 20, 'Air'),
(65, 1, 21, 'Morning (09:00 to 11:00)'),
(65, 2, 21, 'Morning (09:00 to 11:00)'),
(66, 1, 21, 'Morning (12:00 to 01:00)'),
(66, 2, 21, 'Morning (12:00 to 01:00)'),
(67, 1, 21, 'Evening (02:00 to 03:00)'),
(67, 2, 21, 'Evening (02:00 to 03:00)'),
(68, 1, 21, 'Evening (05:00 to 07:00)'),
(68, 2, 21, 'Evening (05:00 to 07:00)'),
(69, 1, 21, 'Evening (08:00 to 10:00)'),
(69, 2, 21, 'Evening (08:00 to 10:00)');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc/', 2, 1, 'mohammad', 'gh', 'm.gholeh@mawaqaa.com', '0779999999995', '', '', 'mohammad', 'gh', '', 'amman', '', 'amman', '', 'Jordan', 108, '\'Amman', 1704, '', '[]', 'Cash On Delivery', 'cod', 'mohammad', 'gh', '', 'amman', '', 'amman', '', 'Jordan', 108, '\'Amman', 1704, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '3204.9300', 1, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-04-04 10:52:21', '2017-04-04 10:52:24'),
(2, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 2, 1, '', '', 'm.gholeh@mawaqaa.com', '0779999999995sdsdsdsdsdsd', '', '{"13":"dsdsdsdsdsds","12":"2"}', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Flat Shipping Rate', 'flat.flat', '', '185.0000', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-04-18 10:42:08', '2017-04-18 10:42:08'),
(3, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 2, 1, '', '', 'm.gholeh@mawaqaa.com', '0779999999995sdsdsdsdsdsd', '', '{"13":"dsdsdsdsdsds","12":"2"}', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Flat Shipping Rate', 'flat.flat', '', '185.0000', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-04-18 10:47:28', '2017-04-18 10:47:28'),
(4, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 2, 1, '', '', 'm.gholeh@mawaqaa.com', '0779999999995sdsdsdsdsdsd', '', '{"13":"dsdsdsdsdsds","12":"2"}', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Flat Shipping Rate', 'flat.flat', '', '185.0000', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-04-18 10:51:53', '2017-04-18 10:51:53'),
(5, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 2, 1, '', '', 'm.gholeh@mawaqaa.com', '0779999999995sdsdsdsdsdsd', '', '{"13":"dsdsdsdsdsds","12":"2"}', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'الدفع عند التسليم', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Flat Shipping Rate', 'flat.flat', '', '185.0000', 0, 0, '0.0000', 0, '', 2, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-04-18 10:55:34', '2017-04-18 10:55:34'),
(6, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 2, 1, '', '', 'm.gholeh@mawaqaa.com', '0779999999995sdsdsdsdsdsd', '', '{"13":"dsdsdsdsdsds","12":"2"}', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Flat Shipping Rate', 'flat.flat', '', '185.0000', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-04-18 10:55:59', '2017-04-18 10:55:59'),
(7, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 2, 1, '', '', 'm.gholeh@mawaqaa.com', '0779999999995sdsdsdsdsdsd', '', '{"13":"dsdsdsdsdsds","12":"2"}', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman1","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Flat Shipping Rate', 'flat.flat', '', '185.0000', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-04-18 17:01:43', '2017-04-18 17:01:43'),
(8, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 2, 1, '', '', 'm.gholeh@mawaqaa.com', '0779999999995sdsdsdsdsdsd', '', '{"13":"dsdsdsdsdsdswewewewewe","12":"2"}', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman13333","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Cash On Delivery', 'cod', '', '', '', '', '', '', '', '', 0, '', 0, '', '{"4":"amman13333","3":"amman","5":"aaaa","6":"aaaa111","7":"aaaa","8":"aaaa","9":"aaaa","10":"20","11":"10"}', 'Flat Shipping Rate', 'flat.flat', '', '624.9800', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-04-24 17:09:12', '2017-04-24 17:09:12'),
(9, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 0, 0, 'ewrwerwer', 'werwerwer', 'q@g.v', '65656565656565', '', '{"13":"","12":""}', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Poland', 170, 'Swietokrzyskie', 2643, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Cash On Delivery', 'cod', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Poland', 170, 'Swietokrzyskie', 2643, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Flat Shipping Rate', 'flat.flat', '', '404.9800', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-05-02 11:29:44', '2017-05-02 11:29:44'),
(10, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 0, 0, 'ewrwerwer', 'werwerwer', 'q@g.v', '65656565656565', '', '{"13":"","12":""}', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Poland', 170, 'Swietokrzyskie', 2643, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Cash On Delivery', 'cod', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Kuwait', 114, 'fdfsdf', 4236, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Flat Shipping Rate', 'flat.flat', '', '404.9800', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-05-02 11:35:48', '2017-05-02 11:35:48'),
(11, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 0, 0, 'ewrwerwer', 'werwerwer', 'q@g.v', '65656565656565', '', '{"13":"","12":""}', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Poland', 170, 'Swietokrzyskie', 2643, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Cash On Delivery', 'cod', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Poland', 170, 'Swietokrzyskie', 2643, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Flat Shipping Rate', 'flat.flat', '', '405.0000', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-05-02 15:18:04', '2017-05-02 15:18:04'),
(12, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 0, 0, 'ewrwerwer', 'werwerwer', 'q@g.v', '65656565656565', '', '{"13":"","12":""}', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Kuwait', 114, 'fdfsdf', 4236, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Cash On Delivery', 'cod', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Kuwait', 114, 'fdfsdf', 4236, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Free Shipping', 'free.free', '', '2350.0000', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-05-02 16:02:57', '2017-05-02 16:02:57'),
(13, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 0, 0, 'ewrwerwer', 'werwerwer', 'q@g.v', '65656565656565', '', '{"13":"","12":""}', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Kuwait', 114, 'fdfsdf', 4236, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Cash On Delivery', 'cod', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Kuwait', 114, 'fdfsdf', 4236, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Free Shipping', 'free.free', '', '700.0000', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-05-02 16:35:18', '2017-05-02 16:35:18'),
(14, 0, 'INV-2013-00', 0, 'اسم متجرك', 'http://openc\\/', 0, 0, 'ewrwerwer', 'werwerwer', 'q@g.v', '65656565656565', '', '{"13":"","12":""}', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Kuwait', 114, 'fdfsdf', 4236, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Cash On Delivery', 'cod', 'ewrwerwer', 'werwerwer', '', 'rgrgrgrg', '', 'rgrgrg', 'rgrgrg', 'Kuwait', 114, 'fdfsdf', 4236, '', '{"4":"","3":"","5":"","6":"","7":"","8":"","9":"","10":"","11":""}', 'Flat Shipping Rate', 'flat.flat', '', '499.9800', 0, 0, '0.0000', 0, '', 1, 5, 'KWD', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.133 Safari/537.36', 'en-US,en;q=0.8', '2017-05-02 16:41:51', '2017-05-02 16:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2017-04-04 10:52:24');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 2, 225, 0, 'Delivery Date', '2011-04-22', 'date'),
(2, 2, 4, 229, 20, 'confetti', 'confetti green', 'select'),
(3, 2, 4, 230, 24, 'Tail', 'red', 'select'),
(4, 3, 5, 229, 20, 'confetti', 'confetti green', 'select'),
(5, 3, 5, 230, 24, 'Tail', 'red', 'select'),
(6, 4, 6, 229, 20, 'confetti', 'confetti green', 'select'),
(7, 4, 6, 230, 24, 'Tail', 'red', 'select'),
(8, 5, 7, 229, 20, 'قصاصات ورق', 'قصاصات خضراء', 'select'),
(9, 5, 7, 230, 24, 'الذيل', 'احمر', 'select'),
(10, 6, 8, 229, 20, 'confetti', 'confetti green', 'select'),
(11, 6, 8, 230, 24, 'Tail', 'red', 'select'),
(12, 7, 9, 228, 17, 'Size', 'Small', 'select'),
(13, 7, 9, 229, 20, 'confetti', 'confetti green', 'select'),
(14, 7, 9, 230, 24, 'Tail', 'red', 'select'),
(15, 7, 9, 209, 0, 'Textarea', 'happy day', 'textarea'),
(16, 8, 10, 233, 0, 'balloon delivery  date', '24/04/2017', 'date'),
(17, 8, 10, 235, 32, 'air', 'Air', 'radio'),
(18, 8, 10, 232, 25, 'balloon color', 'red', 'select'),
(19, 11, 14, 266, 0, 'balloon delivery  date', '02/05/2017', 'date'),
(20, 11, 14, 265, 88, 'balloon delivery time', 'Morning (09:00 to 14:00)', 'select'),
(21, 11, 14, 251, 60, 'Size', 'Small', 'select'),
(22, 11, 14, 249, 55, 'confetti', 'confetti blue', 'select'),
(23, 11, 14, 250, 59, 'Tail', 'red', 'select'),
(24, 12, 15, 267, 0, 'balloon delivery  date', '02/05/2017', 'date'),
(25, 12, 15, 268, 91, 'balloon delivery time', 'Morning (09:00 to 14:00)', 'select'),
(26, 12, 15, 245, 49, 'Size', 'Small', 'select'),
(27, 12, 15, 243, 47, 'confetti', 'confetti green', 'select'),
(28, 12, 15, 246, 54, 'Tail', 'red', 'select'),
(29, 12, 16, 233, 0, 'balloon delivery  date', '02/05/2017', 'date'),
(30, 12, 16, 234, 29, 'balloon delivery time', 'Afternoon (13:00 to 16:00)', 'select'),
(31, 12, 16, 235, 32, 'air', 'Air', 'radio'),
(32, 12, 16, 232, 25, 'balloon color', 'red', 'select'),
(33, 13, 17, 267, 0, 'balloon delivery  date', '02/05/2017', 'date'),
(34, 13, 17, 268, 91, 'balloon delivery time', 'Morning (09:00 to 14:00)', 'select'),
(35, 13, 17, 245, 49, 'Size', 'Small', 'select'),
(36, 13, 17, 243, 47, 'confetti', 'confetti green', 'select'),
(37, 13, 17, 246, 54, 'Tail', 'red', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 49, 'Samsung Galaxy Tab 10.1', 'SAM1', 7, '199.9900', '1399.9300', '0.0000', 7000),
(2, 1, 47, 'HP LP3065', 'Product 21', 16, '100.0000', '1600.0000', '0.0000', 4800),
(3, 1, 48, 'iPod Classic', 'product 20', 2, '100.0000', '200.0000', '0.0000', 0),
(4, 2, 42, 'Apple Cinema 30&quot;', 'Product 15', 2, '90.0000', '180.0000', '0.0000', 200),
(5, 3, 42, 'Apple Cinema 30&quot;', 'Product 15', 2, '90.0000', '180.0000', '0.0000', 200),
(6, 4, 42, 'Apple Cinema 30&quot;', 'Product 15', 2, '90.0000', '180.0000', '0.0000', 200),
(7, 5, 42, 'سينما آبل 13إنش', 'Product 15', 2, '90.0000', '180.0000', '0.0000', 200),
(8, 6, 42, 'Apple Cinema 30&quot;', 'Product 15', 2, '90.0000', '180.0000', '0.0000', 200),
(9, 7, 42, 'Apple Cinema 30&quot;', 'Product 15', 2, '90.0000', '180.0000', '0.0000', 200),
(10, 8, 47, 'HP LP3065', 'Product 21', 2, '110.0000', '220.0000', '0.0000', 600),
(11, 8, 49, 'balloon', 'SAM1', 2, '199.9900', '399.9800', '0.0000', 2000),
(12, 9, 49, 'balloon', 'SAM1', 2, '199.9900', '399.9800', '0.0000', 0),
(13, 10, 49, 'balloon', 'SAM1', 2, '199.9900', '399.9800', '0.0000', 0),
(14, 11, 41, 'iMac', 'Product 14', 4, '100.0000', '400.0000', '0.0000', 0),
(15, 12, 28, 'HTC Touch HD', 'Product 1', 7, '100.0000', '700.0000', '0.0000', 0),
(16, 12, 47, 'HP LP3065', 'Product 21', 15, '110.0000', '1650.0000', '0.0000', 0),
(17, 13, 28, 'HTC Touch HD', 'Product 1', 7, '100.0000', '700.0000', '0.0000', 0),
(18, 14, 49, 'balloon', 'SAM1', 2, '199.9900', '399.9800', '0.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 2, 'جاري التجهيز'),
(3, 2, 'تم شحن الطلب'),
(7, 1, 'Canceled'),
(5, 2, 'مكتمل'),
(8, 2, 'مرفوض'),
(9, 2, 'إلغاء عكس الطلب'),
(10, 2, 'فشل'),
(11, 2, 'مردود'),
(12, 2, 'تم عكس الطلب'),
(13, 2, 'إعادة المبلغ'),
(1, 2, 'معلق'),
(16, 2, 'الطلب باطل'),
(15, 2, 'تم التجهيز'),
(14, 2, 'انتهاء الوقت'),
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 2, 'ملغي'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '3199.9300', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'total', 'Total', '3204.9300', 9),
(4, 2, 'sub_total', 'Sub-Total', '180.0000', 1),
(5, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(6, 2, 'total', 'Total', '185.0000', 9),
(7, 3, 'sub_total', 'Sub-Total', '180.0000', 1),
(8, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(9, 3, 'total', 'Total', '185.0000', 9),
(10, 4, 'sub_total', 'Sub-Total', '180.0000', 1),
(11, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(12, 4, 'total', 'Total', '185.0000', 9),
(13, 5, 'sub_total', 'الاجمالي', '180.0000', 1),
(14, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(15, 5, 'total', 'الاجمالي النهائي', '185.0000', 9),
(16, 6, 'sub_total', 'Sub-Total', '180.0000', 1),
(17, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(18, 6, 'total', 'Total', '185.0000', 9),
(19, 7, 'sub_total', 'Sub-Total', '180.0000', 1),
(20, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(21, 7, 'total', 'Total', '185.0000', 9),
(22, 8, 'sub_total', 'Sub-Total', '619.9800', 1),
(23, 8, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(24, 8, 'total', 'Total', '624.9800', 9),
(25, 9, 'sub_total', 'Sub-Total', '399.9800', 1),
(26, 9, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(27, 9, 'total', 'Total', '404.9800', 9),
(28, 10, 'sub_total', 'Sub-Total', '399.9800', 1),
(29, 10, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(30, 10, 'total', 'Total', '404.9800', 9),
(31, 11, 'sub_total', 'Sub-Total', '400.0000', 1),
(32, 11, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(33, 11, 'total', 'Total', '405.0000', 9),
(34, 12, 'sub_total', 'Sub-Total', '2350.0000', 1),
(35, 12, 'shipping', 'Free Shipping', '0.0000', 3),
(36, 12, 'total', 'Total', '2350.0000', 9),
(37, 13, 'sub_total', 'Sub-Total', '700.0000', 1),
(38, 13, 'shipping', 'Free Shipping', '0.0000', 3),
(39, 13, 'total', 'Total', '700.0000', 9),
(40, 14, 'sub_total', 'Sub-Total', '399.9800', 1),
(41, 14, 'shipping', 'Flat Shipping Rate', '100.0000', 3),
(42, 14, 'total', 'Total', '499.9800', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/product-img7.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 32, '2009-02-03 16:06:50', '2017-04-24 14:42:09'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/featured-product1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 13, '2009-02-03 16:42:17', '2017-05-01 16:16:50'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/featured-product3.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 5, '2009-02-03 16:59:00', '2017-04-24 15:00:31'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/featured-product1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2017-04-24 15:03:36'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/product-img1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 2, '2009-02-03 17:07:26', '2017-04-24 14:50:31'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/baloon13.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 22, '2009-02-03 18:07:54', '2017-04-24 14:49:59'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, 'catalog/baloon-img2.jpg', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 7, '2009-02-03 18:08:31', '2017-04-24 15:16:03'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/happybirthday.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 4, '2009-02-03 21:07:12', '2017-04-24 15:01:41'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/product-img4.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 159, '2009-02-03 21:07:26', '2017-04-24 14:42:53'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/featured-product4.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 548, '2009-02-03 21:07:37', '2017-04-24 10:11:13'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/featured-product2.jpg', 8, 0, '500.0000', 0, 9, '2017-05-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 4, '2009-02-03 21:07:49', '2017-05-01 16:19:15'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/featured-product2.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 1, '2009-02-03 21:08:00', '2017-05-01 16:17:08'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/featured-product2.jpg', 8, 1, '2000.0000', 0, 0, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 5, '2009-02-03 21:08:17', '2017-04-24 14:51:39'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 4, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/happybirthday.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 261, '2009-02-03 21:08:40', '2017-04-24 10:15:34'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 993, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 17, '2009-02-08 17:21:51', '2017-04-24 15:02:34'),
(49, 'SAM1', '', '', '', '', '', '', '', 3, 8, 'catalog/featured-product2.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 54, '2011-04-26 08:57:34', '2017-04-24 10:48:29'),
(50, 'rt255', '', '', '', '', '', '', '', 1, 6, 'catalog/featured-product1.jpg', 0, 1, '0.0000', 0, 0, '2017-03-18', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 37, '2017-03-19 00:26:56', '2017-04-24 14:43:46'),
(51, 'product event level 1 model', '', '', '', '', '', '', '', 1000, 7, 'catalog/baloon4.jpg', 0, 1, '0.0000', 0, 0, '2017-04-27', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 109, '2017-04-21 17:26:45', '2017-04-27 12:24:01'),
(52, 'product event level 2 model', '', '', '', '', '', '', '', 1, 6, 'catalog/baloon13.jpg', 0, 1, '0.0000', 0, 0, '2017-04-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 50, '2017-04-21 17:27:49', '2017-04-27 11:12:15'),
(53, 'product event level 3 model', '', '', '', '', '', '', '', 1, 6, 'catalog/baloon3.jpg', 0, 1, '0.0000', 0, 0, '2017-04-21', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 63, '2017-04-21 17:28:36', '2017-04-27 12:26:09'),
(54, 'tec', '', '', '', '', '', '', '', 1, 6, '', 0, 1, '0.0000', 0, 0, '2017-05-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2017-05-01 16:20:13', '2017-05-01 16:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(43, 2, 2, '1'),
(47, 2, 2, '4'),
(42, 3, 2, '100mhz'),
(47, 2, 1, '4'),
(43, 4, 2, '8 جيجا'),
(47, 4, 1, '16GB'),
(47, 4, 2, '16 جيجا'),
(43, 2, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(48, 2, 'أي بود كلاسيك', '&lt;p&gt;&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;', '', 'أي بود كلاسيك', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(28, 2, 'اتش تي سي تاتش HD', '&lt;p&gt;HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;&lt;li&gt;Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;&lt;li&gt;Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;&lt;li&gt;Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;&lt;li&gt;3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;&lt;li&gt;HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;&lt;li&gt;Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;&lt;li&gt;Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;&lt;li&gt;GPS and A-GPS ready&lt;/li&gt;&lt;li&gt;Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;&lt;li&gt;Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;&lt;li&gt;HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;&lt;li&gt;5 megapixel color camera with auto focus&lt;/li&gt;&lt;li&gt;VGA CMOS color camera&lt;/li&gt;&lt;li&gt;Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;&lt;li&gt;Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;&lt;li&gt;40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;&lt;li&gt;Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;&lt;li&gt;Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;&lt;li&gt;AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;&lt;li&gt;Special Features: FM Radio, G-Sensor&lt;/li&gt;&lt;/ul&gt;', '', 'اتش تي سي تاتش HD', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 2, 'بالم تريو برو', '&lt;p&gt;Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Windows Mobile® 6.1 Professional Edition&lt;/li&gt;&lt;li&gt;Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;&lt;li&gt;320x320 transflective colour TFT touchscreen&lt;/li&gt;&lt;li&gt;HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;&lt;li&gt;Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;&lt;li&gt;Quad-band GSM — 850/900/1800/1900&lt;/li&gt;&lt;li&gt;802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;&lt;li&gt;Built-in GPS&lt;/li&gt;&lt;li&gt;Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;&lt;li&gt;256MB storage (100MB user available), 128MB RAM&lt;/li&gt;&lt;li&gt;2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;&lt;li&gt;Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;&lt;li&gt;Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;&lt;li&gt;MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;&lt;li&gt;MicroUSB 2.0 for synchronization and charging&lt;/li&gt;&lt;li&gt;3.5mm stereo headset jack&lt;/li&gt;&lt;li&gt;60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;&lt;/ul&gt;', '', 'بالم تريو برو', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iPod Nano', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel\'s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;', '', 'Sony VAIO', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;/p&gt;', '', 'HP LP3065', '', ''),
(32, 2, 'أي بود تاتش', '&lt;p&gt;&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br&gt;iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br&gt;Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br&gt;Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br&gt;Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br&gt;&amp;nbsp;&lt;/p&gt;', '', 'أي بود تاتش', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;', '', 'iMac', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;', '', 'Samsung SyncMaster 941BW', '', ''),
(43, 2, 'ماك بوك', '&lt;p&gt;&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;&lt;p&gt;&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;&lt;p&gt;The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;&lt;p&gt;MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;', '', 'ماك بوك', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon\'s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon\'s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera\'s new features. The D300 features a new 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera\'s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(31, 2, 'نيكون D300', '&lt;p&gt;Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon\'s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;&lt;br&gt;Similar to the D3, the D300 features Nikon\'s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera\'s new features. The D300 features a new 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera\'s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;&lt;br&gt;The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;&lt;br&gt;The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;br&gt;&lt;/p&gt;', '', 'نيكون D300', '', ''),
(42, 2, 'سينما آبل 13إنش', '&lt;p&gt;&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment.&amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;&lt;h3 style=&quot;font-family: \'Open Sans\', sans-serif; color: rgb(102, 102, 102);&quot;&gt;Features:&lt;/h3&gt;&lt;p&gt;Unrivaled display performance&lt;/p&gt;&lt;ul&gt;&lt;li&gt;30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;&lt;li&gt;Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;&lt;li&gt;Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;&lt;li&gt;Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;&lt;li&gt;Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;&lt;li&gt;Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;&lt;li&gt;Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Simple setup and operation&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;&lt;li&gt;Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;&lt;li&gt;Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Sleek, elegant design&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Huge virtual workspace, very small footprint.&lt;/li&gt;&lt;li&gt;Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;&lt;li&gt;Unique hinge design for effortless adjustment&lt;/li&gt;&lt;li&gt;Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;&lt;/ul&gt;&lt;h3 style=&quot;font-family: \'Open Sans\', sans-serif; color: rgb(102, 102, 102);&quot;&gt;Technical specifications&lt;/h3&gt;&lt;p&gt;&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;2560 x 1600 pixels (optimum resolution)&lt;/li&gt;&lt;li&gt;2048 x 1280&lt;/li&gt;&lt;li&gt;1920 x 1200&lt;/li&gt;&lt;li&gt;1280 x 800&lt;/li&gt;&lt;li&gt;1024 x 640&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;16.7 million&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;170° horizontal; 170° vertical&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;700:1&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;16 ms&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Antiglare hardcoat&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Display Power,&lt;/li&gt;&lt;li&gt;System sleep, wake&lt;/li&gt;&lt;li&gt;Brightness&lt;/li&gt;&lt;li&gt;Monitor tilt&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;Cable&lt;/p&gt;&lt;ul&gt;&lt;li&gt;DVI (Digital Visual Interface)&lt;/li&gt;&lt;li&gt;FireWire 400&lt;/li&gt;&lt;li&gt;USB 2.0&lt;/li&gt;&lt;li&gt;DC power (24 V)&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;Connectors&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Two-port, self-powered USB 2.0 hub&lt;/li&gt;&lt;li&gt;Two FireWire 400 ports&lt;/li&gt;&lt;li&gt;Kensington security port&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;&lt;li&gt;Maximum power when operating: 150W&lt;/li&gt;&lt;li&gt;Energy saver mode: 3W or less&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;&lt;li&gt;Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;&lt;li&gt;Operating humidity: 20% to 80% noncondensing&lt;/li&gt;&lt;li&gt;Maximum operating altitude: 10,000 feet&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;FCC Part 15 Class B&lt;/li&gt;&lt;li&gt;EN55022 Class B&lt;/li&gt;&lt;li&gt;EN55024&lt;/li&gt;&lt;li&gt;VCCI Class B&lt;/li&gt;&lt;li&gt;AS/NZS 3548 Class B&lt;/li&gt;&lt;li&gt;CNS 13438 Class B&lt;/li&gt;&lt;li&gt;ICES-003 Class B&lt;/li&gt;&lt;li&gt;ISO 13406 part 2&lt;/li&gt;&lt;li&gt;MPR II&lt;/li&gt;&lt;li&gt;IEC 60950&lt;/li&gt;&lt;li&gt;UL 60950&lt;/li&gt;&lt;li&gt;CSA 60950&lt;/li&gt;&lt;li&gt;EN60950&lt;/li&gt;&lt;li&gt;ENERGY STAR&lt;/li&gt;&lt;li&gt;TCO \'03&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;30-inch Apple Cinema HD Display&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Height: 21.3 inches (54.3 cm)&lt;/li&gt;&lt;li&gt;Width: 27.2 inches (68.8 cm)&lt;/li&gt;&lt;li&gt;Depth: 8.46 inches (21.5 cm)&lt;/li&gt;&lt;li&gt;Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Mac Pro, all graphic options&lt;/li&gt;&lt;li&gt;MacBook Pro&lt;/li&gt;&lt;li&gt;Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;&lt;li&gt;Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;&lt;li&gt;PowerBook G4 with dual-link DVI support&lt;/li&gt;&lt;li&gt;Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;&lt;/ul&gt;', '', 'سينما آبل 13إنش', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;', '', 'Canon EOS 5D', '', ''),
(40, 2, 'آيفون', '&lt;p&gt;iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;br&gt;&lt;/p&gt;', '', 'آيفون', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(36, 2, 'آي بود نانو', '&lt;p&gt;&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Experience a whole new way to browse and view your music and video.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;', '', 'آي بود نانو', '', ''),
(34, 2, 'آي بود Shuffle', '&lt;p&gt;&lt;strong&gt;Born to be worn.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;&lt;p&gt;&lt;strong&gt;Everything is easy.&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;', '', 'آي بود Shuffle', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br&gt;\r\n	&amp;nbsp;&lt;/p&gt;', '', 'iPod Touch', '', ''),
(44, 2, 'ماك بوك Air', '&lt;p&gt;MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;br&gt;&lt;/p&gt;', '', 'ماك بوك Air', '', ''),
(45, 2, 'ماك بوك برو', '&lt;p&gt;&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;&lt;p&gt;The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;&lt;p&gt;&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;&lt;p&gt;Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;', '', 'ماك بوك برو', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm® MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS — 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM — 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;', '', 'Palm Treo Pro', '', ''),
(49, 2, 'سامسونج جالكسي تاب 10.1', '&lt;p&gt;Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;&lt;p&gt;Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;&lt;p&gt;Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;', '', 'سامسونج جالكسي تاب 10.1', '', ''),
(33, 2, 'سامسونج SyncMaster 941BW', '&lt;p&gt;Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;br&gt;&lt;/p&gt;', '', 'سامسونج SyncMaster 941BW', '', ''),
(46, 2, 'سوني VAIO', '&lt;p&gt;Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel\'s latest, most powerful innovation yet: Intel® Centrino® 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;br&gt;&lt;/p&gt;', '', 'سوني VAIO', '', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(42, 1, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;', '', 'Apple Cinema 30&quot;', '', ''),
(30, 2, 'كانون EOS 5D', '&lt;p&gt;Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;br&gt;&lt;/p&gt;', '', 'كانون EOS 5D', '', ''),
(35, 2, 'منتج 8', '&lt;p&gt;منتج 8&lt;br&gt;&lt;/p&gt;', '', 'منتج 8', '', ''),
(50, 1, 'balloons', '&lt;p&gt;balloons balloons balloons balloons balloons balloons balloons&lt;br&gt;&lt;/p&gt;', '', 'balloons', '', ''),
(35, 1, 'balloon boy', '&lt;p&gt;\r\n	Product 8 Product 8 Product 8 Product 8 Product 8 Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(47, 2, 'اتش بي LP3065', '&lt;p&gt;Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you\'re at the office&lt;br&gt;&lt;/p&gt;', '', 'اتش بي LP3065', '', ''),
(41, 2, 'آي ماك', '&lt;p&gt;Just when you thought iMac had everything, now there´s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife ´08, and it´s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;br&gt;&lt;/p&gt;', '', 'آي ماك', '', ''),
(51, 2, 'product event level 1', '', '', 'product event level 1', '', ''),
(52, 1, 'product event level 2', '', '', 'product event level 2', '', ''),
(52, 2, 'product event level 2', '', '', 'product event level 2', '', ''),
(53, 1, 'product event level 3', '', '', 'product event level 3', '', ''),
(53, 2, 'product event level 3', '', '', 'product event level 3', '', ''),
(50, 2, 'balloons', '', '', 'balloons', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;', '', 'iPod Shuffle', '', ''),
(49, 1, 'balloon', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world’s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 – includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick – a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader’s Hub, Music Hub and Samsung Mini Apps Tray – which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;äö&lt;/p&gt;', '', 'Samsung Galaxy Tab 10.1', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;', '', 'MacBook', '', ''),
(51, 1, 'product event level 1', '', '', 'product event level 1', '', ''),
(54, 1, 'tec', '', '', 'tec', 'tec', ''),
(54, 2, 'tec', '', '', 'tec', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(518, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(517, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(516, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2678, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2601, 47, 'catalog/demo/hp_3.jpg', 0),
(2650, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2652, 41, 'catalog/demo/imac_3.jpg', 0),
(2683, 40, 'catalog/demo/iphone_6.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2669, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2668, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2675, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(2674, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2673, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2723, 43, 'catalog/demo/macbook_3.jpg', 0),
(2722, 43, 'catalog/demo/macbook_2.jpg', 0),
(2719, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(2718, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(2699, 35, 'catalog/product-img1.jpg', 0),
(2694, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(2693, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(2716, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(2686, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(2685, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(2682, 40, 'catalog/demo/iphone_2.jpg', 0),
(2681, 40, 'catalog/demo/iphone_5.jpg', 0),
(2677, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2600, 47, 'catalog/demo/hp_2.jpg', 0),
(2649, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2651, 41, 'catalog/demo/imac_2.jpg', 0),
(2680, 40, 'catalog/demo/iphone_3.jpg', 0),
(2679, 40, 'catalog/demo/iphone_4.jpg', 0),
(2684, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2667, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2666, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2672, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(2671, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2670, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2721, 43, 'catalog/demo/macbook_4.jpg', 0),
(2720, 43, 'catalog/demo/macbook_5.jpg', 0),
(2717, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(2676, 45, 'catalog/ballon-left.png', 3),
(2692, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(2691, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(2715, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2714, 53, 'catalog/baloon2.jpg', 0),
(2704, 52, 'catalog/baloon13.jpg', 0),
(2713, 51, 'catalog/baloon15.jpg', 0),
(2642, 49, 'catalog/featured-product3.jpg', 0),
(2594, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2593, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2592, 42, 'catalog/demo/canon_logo.jpg', 0),
(2590, 42, 'catalog/demo/hp_1.jpg', 0),
(2653, 50, 'catalog/banner1.jpg', 0),
(2591, 42, 'catalog/demo/compaq_presario.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(272, 34, 17, '', 1),
(226, 30, 5, '', 1),
(241, 42, 19, '', 1),
(230, 42, 15, '', 1),
(233, 47, 18, '2017-04-19', 1),
(232, 47, 17, '', 1),
(235, 47, 20, '', 1),
(270, 50, 19, '', 1),
(251, 41, 11, '', 1),
(228, 42, 11, '', 0),
(229, 42, 14, '', 1),
(209, 42, 6, '', 0),
(242, 42, 18, '', 1),
(234, 47, 19, '', 1),
(267, 28, 18, '', 1),
(246, 28, 15, '', 1),
(243, 28, 14, '', 1),
(249, 41, 14, '', 1),
(250, 41, 15, '', 1),
(269, 50, 18, '', 1),
(254, 50, 14, '', 1),
(253, 50, 15, '', 1),
(252, 50, 11, '', 1),
(245, 28, 11, '', 1),
(258, 34, 19, '', 1),
(257, 34, 20, '', 1),
(259, 32, 18, '', 1),
(260, 32, 19, '', 1),
(261, 32, 20, '', 1),
(262, 45, 19, '', 1),
(263, 45, 18, '', 1),
(264, 45, 20, '', 1),
(265, 41, 19, '', 1),
(266, 41, 18, '', 1),
(268, 28, 19, '', 1),
(256, 34, 18, '', 1),
(273, 32, 17, '', 1),
(274, 45, 17, '', 1),
(275, 30, 19, '', 1),
(276, 30, 18, '', 1),
(277, 40, 19, '', 1),
(278, 40, 18, '', 1),
(279, 48, 19, '', 1),
(280, 48, 18, '', 1),
(282, 43, 18, '', 1),
(281, 43, 19, '', 1),
(283, 31, 19, '', 1),
(284, 31, 18, '', 1),
(288, 52, 22, '', 1),
(287, 52, 21, '', 1),
(289, 51, 21, '', 1),
(290, 51, 22, '', 1),
(291, 53, 21, '', 1),
(292, 53, 22, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(87, 265, 41, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(62, 251, 41, 11, 48, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(52, 246, 28, 15, 56, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(26, 232, 47, 17, 59, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(44, 241, 42, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(43, 241, 42, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(22, 230, 42, 15, 56, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(20, 229, 42, 14, 52, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(17, 228, 42, 11, 46, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(18, 228, 42, 11, 47, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(19, 228, 42, 11, 48, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(24, 230, 42, 15, 54, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(25, 232, 47, 17, 57, 0, 0, '0.0000', '+', 0, '+', '0.00000000', '+'),
(30, 234, 47, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(29, 234, 47, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(28, 234, 47, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(32, 235, 47, 20, 64, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(31, 235, 47, 20, 63, 10, 1, '20.0000', '+', 0, '+', '0.00000000', '+'),
(61, 251, 41, 11, 47, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(60, 251, 41, 11, 46, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(55, 249, 41, 14, 52, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(56, 249, 41, 14, 53, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(57, 250, 41, 15, 56, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(45, 241, 42, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(23, 230, 42, 15, 55, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(53, 246, 28, 15, 55, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(54, 246, 28, 15, 54, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(46, 243, 28, 14, 52, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(47, 243, 28, 14, 53, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(51, 245, 28, 11, 48, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(50, 245, 28, 11, 47, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(49, 245, 28, 11, 46, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(21, 229, 42, 14, 53, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(58, 250, 41, 15, 55, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(59, 250, 41, 15, 54, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(69, 254, 50, 14, 52, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(70, 254, 50, 14, 53, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(67, 253, 50, 15, 56, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(68, 253, 50, 15, 55, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(66, 253, 50, 15, 54, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(65, 252, 50, 11, 48, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(64, 252, 50, 11, 47, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(63, 252, 50, 11, 46, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(27, 232, 47, 17, 58, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(97, 272, 34, 17, 58, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(74, 258, 34, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(73, 258, 34, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(71, 257, 34, 20, 64, 10, 1, '50.0000', '+', 0, '+', '0.00000000', '+'),
(75, 258, 34, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(77, 260, 32, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(76, 260, 32, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(78, 260, 32, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(79, 261, 32, 20, 64, 10, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(80, 261, 32, 20, 63, 0, 1, '20.0000', '+', 0, '+', '0.00000000', '+'),
(81, 262, 45, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(82, 262, 45, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(83, 262, 45, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(84, 264, 45, 20, 64, 10, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(85, 264, 45, 20, 63, 10, 1, '35.0000', '+', 0, '+', '0.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(86, 265, 41, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(88, 265, 41, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(89, 268, 28, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(90, 268, 28, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(91, 268, 28, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(92, 270, 50, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(93, 270, 50, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(94, 270, 50, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(72, 257, 34, 20, 63, 10, 1, '70.0000', '+', 0, '+', '0.00000000', '+'),
(98, 272, 34, 17, 59, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(99, 272, 34, 17, 57, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(100, 273, 32, 17, 58, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(101, 273, 32, 17, 59, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(102, 273, 32, 17, 57, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(103, 274, 45, 17, 58, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(104, 274, 45, 17, 59, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(105, 274, 45, 17, 57, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(106, 275, 30, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(107, 275, 30, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(108, 275, 30, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(109, 277, 40, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(110, 277, 40, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(111, 277, 40, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(112, 279, 48, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(113, 279, 48, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(114, 279, 48, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(116, 281, 43, 19, 62, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(115, 281, 43, 19, 61, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(117, 281, 43, 19, 60, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(118, 283, 31, 19, 61, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(119, 283, 31, 19, 62, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(120, 283, 31, 19, 60, 10, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(125, 287, 52, 21, 68, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(126, 287, 52, 21, 69, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(124, 287, 52, 21, 67, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(127, 287, 52, 21, 65, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(128, 287, 52, 21, 66, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(131, 289, 51, 21, 69, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(130, 289, 51, 21, 68, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(129, 289, 51, 21, 67, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(133, 289, 51, 21, 66, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(132, 289, 51, 21, 65, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(134, 291, 53, 21, 67, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(135, 291, 53, 21, 68, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(136, 291, 53, 21, 69, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(137, 291, 53, 21, 65, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(138, 291, 53, 21, 66, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(603, 42, 1, 100),
(605, 47, 1, 300),
(612, 28, 1, 400),
(617, 43, 1, 600),
(614, 30, 1, 200),
(616, 44, 1, 700),
(613, 45, 1, 800),
(345, 33, 1, 0),
(347, 46, 1, 0),
(351, 36, 1, 0),
(611, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(469, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(471, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(470, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 165),
(28, 183),
(28, 184),
(28, 185),
(29, 203),
(30, 70),
(32, 175),
(34, 175),
(35, 143),
(35, 144),
(41, 165),
(41, 183),
(41, 184),
(41, 185),
(42, 69),
(42, 183),
(42, 184),
(42, 185),
(43, 131),
(44, 131),
(45, 175),
(47, 175),
(49, 143),
(49, 144),
(50, 165),
(50, 183),
(50, 184),
(50, 185),
(51, 131),
(52, 132),
(53, 133),
(54, 131),
(54, 132);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(30, 0, 0),
(47, 0, 0),
(50, 0, 0),
(28, 0, 0),
(41, 0, 0),
(44, 0, 0),
(40, 0, 0),
(45, 0, 0),
(29, 0, 0),
(31, 0, 0),
(43, 0, 0),
(35, 0, 0),
(49, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(34, 0, 0),
(32, 0, 0),
(48, 0, 0),
(54, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return`
--

INSERT INTO `oc_return` (`return_id`, `order_id`, `product_id`, `customer_id`, `firstname`, `lastname`, `email`, `telephone`, `product`, `model`, `quantity`, `opened`, `return_reason_id`, `return_action_id`, `return_status_id`, `comment`, `date_ordered`, `date_added`, `date_modified`) VALUES
(1, 1, 0, 2, 'mohammad', 'gh', 'm.gholeh@mawaqaa.com', '0779999999995', 'iPod Classic', 'product 20', 1, 0, 3, 0, 2, '', '2017-04-04', '2017-04-04 15:04:18', '2017-04-04 15:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 2, 'تم الاسترداد'),
(2, 1, 'Credit Issued'),
(3, 2, 'تم ارسال البديل'),
(1, 1, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 2, 'استلمت منتج بالخطأ'),
(3, 2, 'منتج خاطئ'),
(4, 2, 'يوجد خلل، الرجاء التوضيح'),
(5, 2, 'أخرى، الرجاء التوضيح'),
(1, 2, 'المنتج وصلني تالف'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 2, 'معلق'),
(3, 2, 'مكتمل'),
(2, 2, 'في انتظار وصول المنتج'),
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(2476, 0, 'config', 'config_error_filename', 'error.log', 0),
(2474, 0, 'config', 'config_error_display', '1', 0),
(2475, 0, 'config', 'config_error_log', '1', 0),
(2477, 0, 'sms', 'sms_lang', 'en', 0),
(2464, 0, 'config', 'config_seo_url', '0', 0),
(2465, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2466, 0, 'config', 'config_compression', '0', 0),
(2467, 0, 'config', 'config_secure', '0', 0),
(2468, 0, 'config', 'config_password', '1', 0),
(2469, 0, 'config', 'config_shared', '0', 0),
(2470, 0, 'config', 'config_encryption', 'OcGBrkNQ6fhO9aqw9VKOD5Bv9nWySIGJYQxVRempHAqJ2b8i2HhwRPAgtat5GthsXne8Z5rqZmMpYwPIw33oLFLProUevXnnzjEi5pWmOtW5yG8zIaNlw5bbdJX7zLxVFOwE69Of1OX70TghDUIhtthuwUnQfnO4FpwocQNWaMCfjbBrvcgTXbXiJHjW8mYVXYduhfkrdmokTn4tTXZSlhAFOkNaIf7d0JxYQ5fxVxrKw1wiMHtHnfFQWvFA6puL0oT78nWn6tUddjibcs7axeVMrecBb2HRPOGQQ6Qm7PzqyeyquyTdLSAwpKMZ0R2Rio748bT84eHGoE7bW2ZND1ygLPBfzYvyey2dSsugytgoHdPMzuXvzotGy5Xx2ovAEpGStgtIR0r3aeqEjlRHnVL0HbvNrWg61KiCUfF6PpGEmdXhijuhxoSHBXODmthXTU79GTeiqc4BSrbuSgacjBDiBviQ7HBEsy9ITJ2OBMZHluq9p8CEuBxgpVXI1UFaJyCwLmF6EQIsEN4Xd2Puj27do6B2wJn5dviXG8wL4Ubu7CmYTBMkguzbGr4PsPTd73UDPouotGXk776Bk7iQfeidzp54krb0dDZT8qKp4bA0xZ9sW0qh2m9adJKthy3yDTziaGCTsK3TpHzLYDdwvfuZm10BpO3xiBr77BTJuILhEFqDIvGpOhjZ2bGJV3SYaqSGqFtzjcDN2znNqpDLzrMvkJIr8DLfQPhMKmb74KZ2BMhqAUna1fWIPYcYQlf9WnG7GegEsZYSTXcWwOG189WChQ5OPFe1URu16H8RHZ0Tbw00Ncdag1CnCYmjzFuCbQ24I8yn2fNkbcOK5X2wxwVxwfDvev8rn8q0qa8zJmBwKvbfdBcq9ocemk5l1VU6iVN2HKCHA3no2NObOnhN4xq4lQQa9ht9Zng3zuDEqqVkyBZNZitamhgYHGmFlNPOcLeOfmIAPh9xM3bffZ7rjEKgASyGhXsMIzUZnnd4bTsr9fpHCCcQCQnIwKfv9iYK', 0),
(2471, 0, 'config', 'config_file_max_size', '300000', 0),
(2472, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(2473, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(4, 0, 'voucher', 'voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'voucher_status', '1', 0),
(2463, 0, 'config', 'config_maintenance', '0', 0),
(2460, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(2462, 0, 'config', 'config_mail_alert_email', '', 0),
(2461, 0, 'config', 'config_mail_alert', '["order"]', 1),
(2459, 0, 'config', 'config_mail_smtp_port', '25', 0),
(2458, 0, 'config', 'config_mail_smtp_password', '', 0),
(2457, 0, 'config', 'config_mail_smtp_username', '', 0),
(2456, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(2455, 0, 'config', 'config_mail_parameter', '', 0),
(2454, 0, 'config', 'config_mail_protocol', 'mail', 0),
(2453, 0, 'config', 'config_ftp_status', '0', 0),
(2452, 0, 'config', 'config_ftp_root', '', 0),
(2451, 0, 'config', 'config_ftp_password', '', 0),
(2450, 0, 'config', 'config_ftp_username', '', 0),
(2449, 0, 'config', 'config_ftp_port', '21', 0),
(95, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(96, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'shipping', 'shipping_sort_order', '3', 0),
(98, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(99, 0, 'sub_total', 'sub_total_status', '1', 0),
(100, 0, 'tax', 'tax_status', '1', 0),
(101, 0, 'total', 'total_sort_order', '9', 0),
(102, 0, 'total', 'total_status', '1', 0),
(103, 0, 'tax', 'tax_sort_order', '5', 0),
(104, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(105, 0, 'cod', 'cod_sort_order', '5', 0),
(106, 0, 'cod', 'cod_total', '0.01', 0),
(107, 0, 'cod', 'cod_order_status_id', '1', 0),
(108, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(109, 0, 'cod', 'cod_status', '1', 0),
(110, 0, 'shipping', 'shipping_status', '1', 0),
(111, 0, 'shipping', 'shipping_estimator', '1', 0),
(112, 0, 'coupon', 'coupon_sort_order', '4', 0),
(113, 0, 'coupon', 'coupon_status', '1', 0),
(2538, 0, 'flat', 'flat_sort_order', '1', 0),
(2537, 0, 'flat', 'flat_status', '1', 0),
(2536, 0, 'flat', 'flat_geo_zone_id', '6', 0),
(2535, 0, 'flat', 'flat_tax_class_id', '9', 0),
(2534, 0, 'flat', 'flat_cost', '5', 0),
(119, 0, 'credit', 'credit_sort_order', '7', 0),
(120, 0, 'credit', 'credit_status', '1', 0),
(121, 0, 'reward', 'reward_sort_order', '2', 0),
(122, 0, 'reward', 'reward_status', '1', 0),
(123, 0, 'category', 'category_status', '1', 0),
(124, 0, 'account', 'account_status', '1', 0),
(125, 0, 'affiliate', 'affiliate_status', '1', 0),
(525, 0, 'customize', 'customize_image_category_height', '80', 0),
(524, 0, 'customize', 'customize_image_category_width', '80', 0),
(523, 0, 'customize', 'customize_product_description_length', '100', 0),
(522, 0, 'customize', 'customize_product_limit', '15', 0),
(521, 0, 'customize', 'customize_status', '1', 0),
(520, 0, 'customize', 'customize_directory', 'customize', 0),
(519, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(518, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(517, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(516, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(515, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(514, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(513, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(512, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(511, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(510, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(509, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(508, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(507, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(151, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(158, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(159, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(160, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(161, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(162, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(164, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(167, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(168, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(172, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(2448, 0, 'config', 'config_ftp_hostname', 'openc', 0),
(2447, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(2446, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(2445, 0, 'config', 'config_captcha_page', '["review","return","contact"]', 1),
(2444, 0, 'config', 'config_captcha', '', 0),
(2443, 0, 'config', 'config_return_status_id', '2', 0),
(2442, 0, 'config', 'config_return_id', '0', 0),
(2441, 0, 'config', 'config_affiliate_id', '4', 0),
(2440, 0, 'config', 'config_affiliate_commission', '5', 0),
(2439, 0, 'config', 'config_affiliate_auto', '1', 0),
(2438, 0, 'config', 'config_affiliate_approval', '0', 0),
(2437, 0, 'config', 'config_stock_checkout', '1', 0),
(2436, 0, 'config', 'config_stock_warning', '1', 0),
(2435, 0, 'config', 'config_stock_display', '1', 0),
(2433, 0, 'config', 'config_fraud_status_id', '13', 0),
(2434, 0, 'config', 'config_api_id', '1', 0),
(2431, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(2432, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(2430, 0, 'config', 'config_order_status_id', '1', 0),
(2429, 0, 'config', 'config_checkout_id', '5', 0),
(2428, 0, 'config', 'config_checkout_guest', '1', 0),
(2427, 0, 'config', 'config_cart_weight', '1', 0),
(2426, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(2425, 0, 'config', 'config_min_price', '300', 0),
(2424, 0, 'config', 'config_account_id', '3', 0),
(2423, 0, 'config', 'config_login_attempts', '5', 0),
(2422, 0, 'config', 'config_customer_price', '0', 0),
(2421, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(506, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(505, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(504, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(503, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(501, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(502, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(500, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(499, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(498, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(496, 0, 'theme_default', 'theme_default_directory', 'customize_party', 0),
(497, 0, 'theme_default', 'theme_default_status', '1', 0),
(539, 0, 'customize', 'customize_image_wishlist_height', '47', 0),
(538, 0, 'customize', 'customize_image_wishlist_width', '47', 0),
(537, 0, 'customize', 'customize_image_compare_height', '90', 0),
(536, 0, 'customize', 'customize_image_compare_width', '90', 0),
(535, 0, 'customize', 'customize_image_related_height', '80', 0),
(534, 0, 'customize', 'customize_image_related_width', '80', 0),
(533, 0, 'customize', 'customize_image_additional_height', '74', 0),
(532, 0, 'customize', 'customize_image_additional_width', '74', 0),
(531, 0, 'customize', 'customize_image_product_height', '228', 0),
(530, 0, 'customize', 'customize_image_product_width', '228', 0),
(529, 0, 'customize', 'customize_image_popup_height', '500', 0),
(528, 0, 'customize', 'customize_image_popup_width', '500', 0),
(527, 0, 'customize', 'customize_image_thumb_height', '228', 0),
(526, 0, 'customize', 'customize_image_thumb_width', '228', 0),
(540, 0, 'customize', 'customize_image_cart_width', '47', 0),
(541, 0, 'customize', 'customize_image_cart_height', '47', 0),
(542, 0, 'customize', 'customize_image_location_width', '268', 0),
(543, 0, 'customize', 'customize_image_location_height', '50', 0),
(2420, 0, 'config', 'config_customer_group_id', '1', 0),
(2419, 0, 'config', 'config_customer_search', '0', 0),
(2418, 0, 'config', 'config_customer_activity', '0', 0),
(2412, 0, 'config', 'config_voucher_min', '1', 0),
(2413, 0, 'config', 'config_voucher_max', '1000', 0),
(2414, 0, 'config', 'config_tax', '1', 0),
(2415, 0, 'config', 'config_tax_default', 'shipping', 0),
(2416, 0, 'config', 'config_tax_customer', 'shipping', 0),
(2417, 0, 'config', 'config_customer_online', '0', 0),
(2411, 0, 'config', 'config_review_guest', '1', 0),
(2410, 0, 'config', 'config_review_status', '1', 0),
(2409, 0, 'config', 'config_limit_admin', '20', 0),
(2408, 0, 'config', 'config_product_count', '1', 0),
(2407, 0, 'config', 'config_weight_class_id', '1', 0),
(2406, 0, 'config', 'config_length_class_id', '1', 0),
(2405, 0, 'config', 'config_currency_auto', '1', 0),
(2404, 0, 'config', 'config_currency', 'KWD', 0),
(2403, 0, 'config', 'config_admin_language', 'en-gb', 0),
(2402, 0, 'config', 'config_language', 'en-gb', 0),
(2401, 0, 'config', 'config_zone_id', '', 0),
(2400, 0, 'config', 'config_country_id', '114', 0),
(2399, 0, 'config', 'config_comment', '', 0),
(2398, 0, 'config', 'config_open', '', 0),
(2397, 0, 'config', 'config_image', '', 0),
(2396, 0, 'config', 'config_fax', '', 0),
(2395, 0, 'config', 'config_telephone', '123456789', 0),
(2394, 0, 'config', 'config_email', 'mohammad_gholeh@hotmail.com', 0),
(2392, 0, 'config', 'config_address', 'عنوان المتجر', 0),
(2393, 0, 'config', 'config_geocode', '', 0),
(2391, 0, 'config', 'config_owner', 'اسمك', 0),
(2390, 0, 'config', 'config_name', 'اسم متجرك', 0),
(2389, 0, 'config', 'config_layout_id', '4', 0),
(2388, 0, 'config', 'config_theme', 'customize', 0),
(2386, 0, 'config', 'config_meta_description', 'متجري', 0),
(2387, 0, 'config', 'config_meta_keyword', '', 0),
(2385, 0, 'config', 'config_meta_title', 'اسم متجرك', 0),
(2480, 0, 'tawkto', 'tawkto_status', '1', 0),
(2481, 0, 'tawkto', 'tawkto_widget', '{"widget_settings_for_0":{"page_id":"590593ee4ac4446b24a6c976","widget_id":"default"},"widget_settings_for_0_1_15":{"page_id":"590593ee4ac4446b24a6c976","widget_id":"default"},"widget_settings_for_0_1_13":{"page_id":"590593ee4ac4446b24a6c976","widget_id":"default"}}', 1),
(2478, 0, 'sms', 'sms_status', '1', 0),
(2479, 0, 'sms', 'sms_timezone', 'Asia/Kuwait', 0),
(2523, 0, 'free', 'free_sort_order', '2', 0),
(2522, 0, 'free', 'free_status', '1', 0),
(2521, 0, 'free', 'free_geo_zone_id', '6', 0),
(2520, 0, 'free', 'free_total', '100', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_admins`
--

CREATE TABLE `oc_sp_admins` (
  `ID` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_answers`
--

CREATE TABLE `oc_sp_answers` (
  `ID` int(5) NOT NULL,
  `text` text NOT NULL,
  `from` varchar(50) NOT NULL DEFAULT '',
  `prohlednuto` tinyint(3) NOT NULL DEFAULT '0',
  `smsc` varchar(100) NOT NULL DEFAULT '',
  `cas` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_config`
--

CREATE TABLE `oc_sp_config` (
  `shop_id` int(11) NOT NULL,
  `config_name` varchar(200) NOT NULL,
  `config_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_exceptions`
--

CREATE TABLE `oc_sp_exceptions` (
  `id` int(11) NOT NULL,
  `prefix` int(11) NOT NULL,
  `firstPrefix` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `trim` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_hooks_admins_multi`
--

CREATE TABLE `oc_sp_hooks_admins_multi` (
  `name` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `smstext` text NOT NULL,
  `adminIDs` varchar(250) NOT NULL,
  `storeID` bigint(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_hooks_customers`
--

CREATE TABLE `oc_sp_hooks_customers` (
  `name` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL,
  `smstext` text NOT NULL,
  `active` tinyint(3) NOT NULL,
  `mutation` varchar(100) NOT NULL,
  `storeID` bigint(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_hooks_templates`
--

CREATE TABLE `oc_sp_hooks_templates` (
  `area` varchar(10) NOT NULL,
  `area_text` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_hooks_unicode`
--

CREATE TABLE `oc_sp_hooks_unicode` (
  `area` varchar(10) NOT NULL,
  `unicode` tinyint(3) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_marketing_filter`
--

CREATE TABLE `oc_sp_marketing_filter` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `filter` text,
  `disabled` text,
  `disabled_counter` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_optout_deleted`
--

CREATE TABLE `oc_sp_optout_deleted` (
  `ID` int(10) NOT NULL,
  `order_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_optout_prices`
--

CREATE TABLE `oc_sp_optout_prices` (
  `ID` int(7) NOT NULL,
  `shop_id` int(5) NOT NULL,
  `price` double(10,4) NOT NULL,
  `currency` varchar(20) NOT NULL,
  `active` tinyint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_optout_texts`
--

CREATE TABLE `oc_sp_optout_texts` (
  `ID` int(7) NOT NULL,
  `shop_id` int(5) NOT NULL,
  `text` text NOT NULL,
  `lang` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_outofstock`
--

CREATE TABLE `oc_sp_outofstock` (
  `ID` int(8) NOT NULL,
  `datum` date NOT NULL,
  `product_ID` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_ownnumbersenderids`
--

CREATE TABLE `oc_sp_ownnumbersenderids` (
  `ownnumbersenderID` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_routes`
--

CREATE TABLE `oc_sp_routes` (
  `area` int(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `isms` int(5) NOT NULL,
  `sendertype` tinyint(3) NOT NULL,
  `senderID` varchar(30) NOT NULL,
  `info` text NOT NULL,
  `area_text` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_settings`
--

CREATE TABLE `oc_sp_settings` (
  `ID` int(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_sp_settings`
--

INSERT INTO `oc_sp_settings` (`ID`, `name`, `value`) VALUES
(1, 'AppID', '83082184');

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_smsuser`
--

CREATE TABLE `oc_sp_smsuser` (
  `ID` tinyint(1) NOT NULL,
  `user` varchar(55) NOT NULL,
  `passwd` varchar(55) NOT NULL,
  `email` varchar(100) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `addressstreet` varchar(100) NOT NULL,
  `addresscity` varchar(100) NOT NULL,
  `addresszip` varchar(100) NOT NULL,
  `country0` varchar(100) NOT NULL,
  `companyid` varchar(100) NOT NULL,
  `companyvat` varchar(100) NOT NULL,
  `simulatesms` tinyint(3) NOT NULL,
  `deletedb` tinyint(3) NOT NULL,
  `pocetkredit` int(6) NOT NULL,
  `deliveryemail` varchar(100) NOT NULL,
  `URLreports` tinyint(3) NOT NULL,
  `kosoba` varchar(100) NOT NULL,
  `kprijmeni` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_sms_history`
--

CREATE TABLE `oc_sp_sms_history` (
  `ID` int(8) NOT NULL,
  `number` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `text` text NOT NULL,
  `status` tinyint(3) NOT NULL,
  `price` double(5,3) NOT NULL,
  `credit` double(15,3) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `unicode` tinyint(3) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `smsID` varchar(220) NOT NULL,
  `note` varchar(100) NOT NULL,
  `total` tinyint(3) NOT NULL,
  `admin_ID` int(8) NOT NULL,
  `customer_ID` int(8) NOT NULL,
  `recipient` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `change` tinyint(1) NOT NULL DEFAULT '1',
  `campaign` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_template`
--

CREATE TABLE `oc_sp_template` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `template` text,
  `unicode` tinyint(1) NOT NULL DEFAULT '0',
  `unique` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_textsenderids`
--

CREATE TABLE `oc_sp_textsenderids` (
  `textsenderID` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sp_variables`
--

CREATE TABLE `oc_sp_variables` (
  `name` varchar(200) NOT NULL,
  `template` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 2, 'متوفر'),
(8, 2, 'حجز مسبق'),
(5, 2, 'غير متوفر'),
(6, 2, '2 - 3 أيام'),
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, 'New Text Document.txt', 'New Text Document.txt.rVOFJj9V3GWmd4K5oNvQBTfSV7x7Zrcd', '93312b93ad03b23631563daa2f643179e760f646', '2017-04-13 09:35:17'),
(2, 'New Text Document.txt', 'New Text Document.txt.YWwY0wRtYWHOYKrlb4Ioxp2YL7NyFdFG', 'f45dc0de3f21dc34322492841bd1f5c801a3aa5e', '2017-04-13 09:40:14'),
(3, 'New Text Document.txt', 'New Text Document.txt.4lKGyIsJpSyEoLiCCHokaacII6Sf4x1c', '9bffa359a44d6833d0f344344ed1245cee8a85f1', '2017-04-13 09:50:07'),
(4, 'New Text Document.txt', 'New Text Document.txt.reQpHN0vHRVKtM8LlLNt4c7DVD0TbNub', 'fbb9b77f866ff529807b173d582386513db017d2', '2017-04-13 10:02:21'),
(5, 'New Text Document.txt', 'New Text Document.txt.Ubv0SVf6XytIi9W6PlvwkltoRQcfJ58g', '4c0366368f2331f649d02a36a807d6fa623c0fd1', '2017-04-13 10:03:38'),
(6, 'New Text Document.txt', 'New Text Document.txt.wsuN2wLfl7i9WliKtVXHmebuwxHiv1aP', '28973db681220c87d9ebd9677d4eed83d036582b', '2017-04-13 10:06:39'),
(7, 'New Text Document.txt', 'New Text Document.txt.KuzjRoQauoodurwhfMBJUOyUld5lrJOJ', '1eb28195ad2a8e995dadf8b9492285aad39edb72', '2017-04-13 10:09:37'),
(8, 'New Text Document.txt', 'New Text Document.txt.zVkTkIjjfJ1MKmmZrLTSoa2jC3Kur7Gj', '899907bf20a018d2636f77e7173ff6779e8634f9', '2017-04-13 10:10:36'),
(9, 'New Text Document.txt', 'New Text Document.txt.C4v8LGSLg8nqEVEEdaufWPHkp2fZNfbX', '1377a25bcb98b3a8958354aa74430c56800ac776', '2017-04-13 10:13:41'),
(10, 'New Text Document.txt', 'New Text Document.txt.mAA2MmogT2RkOnVR4LNGmzeAVMKaKYbo', 'bf39f964d2548367be1e15a5e56a1687bccbb48f', '2017-04-13 10:23:44'),
(11, 'New Text Document.txt', 'New Text Document.txt.0309e4GT1krbQC77zs1eUieniTTtGrai', '6bb5af34680ce885bff335f7d557a256271fa289', '2017-04-13 10:25:47'),
(12, 'New Text Document.txt', 'New Text Document.txt.BLTZDsrcK7pi8YgQzrOhbKzCFL24bWYl', 'ebdc6df6102b03008482e08476424aa5bfd82b10', '2017-04-13 10:31:27'),
(13, 'New Text Document.txt', 'New Text Document.txt.PWx0XSXirw7aKJahi2KhRmgb1rP9MSq8', 'a9b8d68085d90d13d3d650795cabb5c3230d19fe', '2017-04-13 10:37:28'),
(14, 'New Text Document.txt', 'New Text Document.txt.x4yzfvptRFLWS7m2p9hBmoEJxw6KeIkA', '615b6163163dd9b4ab9e5ca4ce224343a03ee243', '2017-04-13 10:53:57'),
(15, 'pluginidmaling.txt', 'pluginidmaling.txt.zEYNHYGInmmYjW8DGSFJKhVXAtiJOmsQ', '3e7b91d39f3f0df06291c61b1f27bd78c521831e', '2017-04-13 11:04:21'),
(16, 'pluginidmaling.txt', 'pluginidmaling.txt.2noUEylL11O192UnGyJbzMnPIWDvx6YW', '89039a73d238ee7ce017cd85afec8052bf596f2e', '2017-04-13 11:07:52'),
(17, 'New Text Document.txt', 'New Text Document.txt.WAL6EmQPWhv1uF5e7EVN0RJrpJUWQrRh', '00ac65e504e241d5634ca7674003d92a7bf9da59', '2017-04-13 11:11:54'),
(18, 'New Text Document.txt', 'New Text Document.txt.we6SMwVAPDbqBOH5JG3Yo8mkXOgTQaC4', '1546019f1dff2dc60594b254890e90d85bc0d6ef', '2017-04-13 11:16:38'),
(19, 'New Text Document.txt', 'New Text Document.txt.rdi92RvZULreek9zm74eM07i4G7bmldZ', 'ef1d618af40f4a21c6b8059efedb835780b4f2ed', '2017-04-13 11:17:23'),
(20, 'New Text Document.txt', 'New Text Document.txt.QhKTyEE09EH0nsKlZOCcvfPxCoCG9ggk', 'f279f8e23f91554c2a744da7bef080f82afc00e7', '2017-04-13 11:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(1132, 'product_id=48', 'ipod-classic'),
(730, 'manufacturer_id=8', 'apple'),
(978, 'information_id=4', 'about_us'),
(1100, 'product_id=42', 'test'),
(939, 'category_id=59', 'Supplies'),
(944, 'category_id=69', 'Balloons '),
(1130, 'product_id=30', 'canon-eos-5d'),
(1103, 'product_id=47', 'hp-lp3065'),
(1122, 'product_id=28', 'htc-touch-hd'),
(1138, 'product_id=43', 'macbook'),
(1137, 'product_id=44', 'macbook-air'),
(1129, 'product_id=45', 'macbook-pro'),
(1134, 'product_id=31', 'nikon-d300'),
(1136, 'product_id=29', 'palm-treo-pro'),
(1135, 'product_id=35', 'product-8'),
(1117, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 'product_id=46', 'sony-vaio'),
(1123, 'product_id=41', 'imac'),
(1131, 'product_id=40', 'iphone'),
(825, 'product_id=36', 'ipod-nano'),
(1127, 'product_id=34', 'ipod-shuffle'),
(1128, 'product_id=32', 'ipod-touch'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(965, 'information_id=6', 'delivery'),
(979, 'information_id=3', 'privacy'),
(964, 'information_id=5', 'terms'),
(858, 'category_id=73', ''),
(846, 'category_id=61', ''),
(887, 'category_id=102', ''),
(848, 'category_id=63', ''),
(849, 'category_id=64', ''),
(850, 'category_id=65', ''),
(851, 'category_id=66', ''),
(857, 'category_id=72', ''),
(859, 'category_id=74', ''),
(860, 'category_id=75', ''),
(861, 'category_id=76', ''),
(862, 'category_id=77', ''),
(863, 'category_id=78', ''),
(864, 'category_id=79', ''),
(865, 'category_id=80', ''),
(866, 'category_id=81', ''),
(868, 'category_id=83', ''),
(869, 'category_id=84', ''),
(870, 'category_id=85', ''),
(871, 'category_id=86', ''),
(872, 'category_id=87', ''),
(873, 'category_id=88', ''),
(874, 'category_id=89', ''),
(875, 'category_id=90', ''),
(876, 'category_id=91', ''),
(877, 'category_id=92', ''),
(878, 'category_id=93', ''),
(879, 'category_id=94', ''),
(880, 'category_id=95', ''),
(881, 'category_id=96', ''),
(882, 'category_id=97', ''),
(883, 'category_id=98', ''),
(884, 'category_id=99', ''),
(885, 'category_id=100', ''),
(886, 'category_id=101', ''),
(888, 'category_id=103', ''),
(889, 'category_id=104', ''),
(890, 'category_id=105', ''),
(891, 'category_id=106', ''),
(892, 'category_id=107', ''),
(893, 'category_id=108', ''),
(894, 'category_id=109', ''),
(895, 'category_id=110', ''),
(896, 'category_id=111', ''),
(898, 'category_id=113', ''),
(900, 'category_id=115', ''),
(901, 'category_id=116', ''),
(902, 'category_id=117', ''),
(903, 'category_id=118', ''),
(904, 'category_id=119', ''),
(905, 'category_id=120', ''),
(906, 'category_id=121', ''),
(907, 'category_id=122', ''),
(908, 'category_id=123', ''),
(913, 'category_id=128', ''),
(910, 'category_id=125', ''),
(916, 'information_id=8', ''),
(917, 'information_id=9', ''),
(1001, 'category_id=135', ''),
(998, 'category_id=132', ''),
(999, 'category_id=133', ''),
(1002, 'category_id=136', ''),
(1003, 'category_id=137', ''),
(1007, 'category_id=141', ''),
(1009, 'category_id=143', ''),
(1011, 'category_id=145', ''),
(1012, 'category_id=146', ''),
(1013, 'category_id=147', ''),
(1016, 'category_id=150', ''),
(1015, 'category_id=149', ''),
(1017, 'category_id=151', ''),
(1018, 'category_id=152', ''),
(1019, 'category_id=153', ''),
(1020, 'category_id=154', ''),
(1022, 'category_id=156', ''),
(1023, 'category_id=157', ''),
(1024, 'category_id=158', ''),
(1025, 'category_id=159', ''),
(1026, 'category_id=160', ''),
(1027, 'category_id=161', ''),
(1028, 'category_id=162', ''),
(1029, 'category_id=163', ''),
(1030, 'category_id=164', ''),
(1031, 'category_id=165', ''),
(1032, 'category_id=166', ''),
(1033, 'category_id=167', ''),
(1034, 'category_id=168', ''),
(1035, 'category_id=169', ''),
(1036, 'category_id=170', ''),
(1037, 'category_id=171', ''),
(1038, 'category_id=172', ''),
(1039, 'category_id=173', ''),
(1040, 'category_id=174', ''),
(1041, 'category_id=175', ''),
(1042, 'category_id=176', ''),
(1043, 'category_id=177', ''),
(1044, 'category_id=178', ''),
(1045, 'category_id=179', ''),
(1046, 'category_id=180', ''),
(1047, 'category_id=181', ''),
(1048, 'category_id=182', ''),
(1049, 'category_id=183', ''),
(1050, 'category_id=184', ''),
(1051, 'category_id=185', ''),
(1052, 'category_id=186', ''),
(1053, 'category_id=187', ''),
(1054, 'category_id=188', ''),
(1055, 'category_id=189', ''),
(1056, 'category_id=190', ''),
(1057, 'category_id=191', ''),
(1058, 'category_id=192', ''),
(1059, 'category_id=193', ''),
(1060, 'category_id=194', ''),
(1061, 'category_id=195', ''),
(1062, 'category_id=196', ''),
(1063, 'category_id=197', ''),
(1064, 'category_id=198', ''),
(1065, 'category_id=199', ''),
(1066, 'category_id=200', ''),
(1067, 'category_id=201', ''),
(1068, 'category_id=202', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '54c4d9440ad75f5dc07f42a28609ac6d31bffc3e', 'OYwQlb4Ls', 'admin', 'admin', 'mohammad_gholeh@hotmail.com', '', '', '::1', 1, '2017-03-08 12:48:42');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'الادارة العليا', '{"access":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/formillaedge","extension\\/extension\\/fraud","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/affiliate","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/customize","extension\\/theme\\/theme_default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","marketing\\/newsletter","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/tawkto","extension\\/shipping\\/free","extension\\/module\\/cartsms","sms\\/profile","sms\\/about","sms\\/admin","sms\\/answers","sms\\/credit","sms\\/customer","sms\\/history","sms\\/marketing","sms\\/send","sms\\/settings","sms\\/smscharging","sms\\/statistics","extension\\/module\\/cartsms","extension\\/shipping\\/free"],"modify":["catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/language","design\\/layout","design\\/menu","design\\/theme","design\\/translation","event\\/compatibility","event\\/theme","extension\\/analytics\\/google_analytics","extension\\/captcha\\/basic_captcha","extension\\/captcha\\/google_captcha","extension\\/dashboard\\/activity","extension\\/dashboard\\/chart","extension\\/dashboard\\/customer","extension\\/dashboard\\/map","extension\\/dashboard\\/online","extension\\/dashboard\\/order","extension\\/dashboard\\/recent","extension\\/dashboard\\/sale","extension\\/event","extension\\/extension","extension\\/extension\\/analytics","extension\\/extension\\/captcha","extension\\/extension\\/dashboard","extension\\/extension\\/feed","extension\\/extension\\/fraud","extension\\/extension\\/module","extension\\/extension\\/payment","extension\\/extension\\/shipping","extension\\/extension\\/theme","extension\\/extension\\/total","extension\\/feed\\/google_base","extension\\/feed\\/google_sitemap","extension\\/feed\\/openbaypro","extension\\/fraud\\/fraudlabspro","extension\\/fraud\\/ip","extension\\/fraud\\/maxmind","extension\\/installer","extension\\/modification","extension\\/module\\/account","extension\\/module\\/affiliate","extension\\/module\\/amazon_login","extension\\/module\\/amazon_pay","extension\\/module\\/banner","extension\\/module\\/bestseller","extension\\/module\\/carousel","extension\\/module\\/category","extension\\/module\\/divido_calculator","extension\\/module\\/ebay_listing","extension\\/module\\/featured","extension\\/module\\/filter","extension\\/module\\/google_hangouts","extension\\/module\\/html","extension\\/module\\/information","extension\\/module\\/klarna_checkout_module","extension\\/module\\/latest","extension\\/module\\/laybuy_layout","extension\\/module\\/pilibaba_button","extension\\/module\\/pp_button","extension\\/module\\/pp_login","extension\\/module\\/sagepay_direct_cards","extension\\/module\\/sagepay_server_cards","extension\\/module\\/slideshow","extension\\/module\\/special","extension\\/module\\/store","extension\\/openbay","extension\\/openbay\\/amazon","extension\\/openbay\\/amazon_listing","extension\\/openbay\\/amazon_product","extension\\/openbay\\/amazonus","extension\\/openbay\\/amazonus_listing","extension\\/openbay\\/amazonus_product","extension\\/openbay\\/ebay","extension\\/openbay\\/ebay_profile","extension\\/openbay\\/ebay_template","extension\\/openbay\\/etsy","extension\\/openbay\\/etsy_product","extension\\/openbay\\/etsy_shipping","extension\\/openbay\\/etsy_shop","extension\\/openbay\\/fba","extension\\/payment\\/amazon_login_pay","extension\\/payment\\/authorizenet_aim","extension\\/payment\\/authorizenet_sim","extension\\/payment\\/bank_transfer","extension\\/payment\\/bluepay_hosted","extension\\/payment\\/bluepay_redirect","extension\\/payment\\/cardconnect","extension\\/payment\\/cardinity","extension\\/payment\\/cheque","extension\\/payment\\/cod","extension\\/payment\\/divido","extension\\/payment\\/eway","extension\\/payment\\/firstdata","extension\\/payment\\/firstdata_remote","extension\\/payment\\/free_checkout","extension\\/payment\\/g2apay","extension\\/payment\\/globalpay","extension\\/payment\\/globalpay_remote","extension\\/payment\\/klarna_account","extension\\/payment\\/klarna_checkout","extension\\/payment\\/klarna_invoice","extension\\/payment\\/laybuy","extension\\/payment\\/liqpay","extension\\/payment\\/nochex","extension\\/payment\\/paymate","extension\\/payment\\/paypoint","extension\\/payment\\/payza","extension\\/payment\\/perpetual_payments","extension\\/payment\\/pilibaba","extension\\/payment\\/pp_express","extension\\/payment\\/pp_payflow","extension\\/payment\\/pp_payflow_iframe","extension\\/payment\\/pp_pro","extension\\/payment\\/pp_pro_iframe","extension\\/payment\\/pp_standard","extension\\/payment\\/realex","extension\\/payment\\/realex_remote","extension\\/payment\\/sagepay_direct","extension\\/payment\\/sagepay_server","extension\\/payment\\/sagepay_us","extension\\/payment\\/securetrading_pp","extension\\/payment\\/securetrading_ws","extension\\/payment\\/skrill","extension\\/payment\\/twocheckout","extension\\/payment\\/web_payment_software","extension\\/payment\\/worldpay","extension\\/shipping\\/auspost","extension\\/shipping\\/citylink","extension\\/shipping\\/fedex","extension\\/shipping\\/flat","extension\\/shipping\\/free","extension\\/shipping\\/item","extension\\/shipping\\/parcelforce_48","extension\\/shipping\\/pickup","extension\\/shipping\\/royal_mail","extension\\/shipping\\/ups","extension\\/shipping\\/usps","extension\\/shipping\\/weight","extension\\/store","extension\\/theme\\/customize","extension\\/theme\\/theme_default","extension\\/total\\/coupon","extension\\/total\\/credit","extension\\/total\\/handling","extension\\/total\\/klarna_fee","extension\\/total\\/low_order_fee","extension\\/total\\/reward","extension\\/total\\/shipping","extension\\/total\\/sub_total","extension\\/total\\/tax","extension\\/total\\/total","extension\\/total\\/voucher","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","marketing\\/newsletter","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/customer_search","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","startup\\/compatibility","startup\\/error","startup\\/event","startup\\/login","startup\\/permission","startup\\/router","startup\\/sass","startup\\/startup","tool\\/backup","tool\\/log","tool\\/upload","user\\/api","user\\/user","user\\/user_permission","extension\\/module\\/tawkto","extension\\/shipping\\/free","extension\\/module\\/cartsms","module\\/sms","extension\\/module\\/cartsms","extension\\/shipping\\/free"]}'),
(10, 'الادارة', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 2, 'عيد نهاية السنة'),
(7, 2, 'عيد ميلاد'),
(8, 2, 'عام'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 1, 'Christmas');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 2, 'كيلو جرام', 'kg'),
(2, 2, 'جرام', 'g'),
(5, 2, 'باوند', 'lb'),
(6, 2, 'اونصة', 'oz'),
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `delivery_price` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `delivery_price`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 0, 1),
(2, 1, 'Badghis', 'BDG', 0, 1),
(3, 1, 'Baghlan', 'BGL', 0, 1),
(4, 1, 'Balkh', 'BAL', 0, 1),
(5, 1, 'Bamian', 'BAM', 0, 1),
(6, 1, 'Farah', 'FRA', 0, 1),
(7, 1, 'Faryab', 'FYB', 0, 1),
(8, 1, 'Ghazni', 'GHA', 0, 1),
(9, 1, 'Ghowr', 'GHO', 0, 1),
(10, 1, 'Helmand', 'HEL', 0, 1),
(11, 1, 'Herat', 'HER', 0, 1),
(12, 1, 'Jowzjan', 'JOW', 0, 1),
(13, 1, 'Kabul', 'KAB', 0, 1),
(14, 1, 'Kandahar', 'KAN', 0, 1),
(15, 1, 'Kapisa', 'KAP', 0, 1),
(16, 1, 'Khost', 'KHO', 0, 1),
(17, 1, 'Konar', 'KNR', 0, 1),
(18, 1, 'Kondoz', 'KDZ', 0, 1),
(19, 1, 'Laghman', 'LAG', 0, 1),
(20, 1, 'Lowgar', 'LOW', 0, 1),
(21, 1, 'Nangrahar', 'NAN', 0, 1),
(22, 1, 'Nimruz', 'NIM', 0, 1),
(23, 1, 'Nurestan', 'NUR', 0, 1),
(24, 1, 'Oruzgan', 'ORU', 0, 1),
(25, 1, 'Paktia', 'PIA', 0, 1),
(26, 1, 'Paktika', 'PKA', 0, 1),
(27, 1, 'Parwan', 'PAR', 0, 1),
(28, 1, 'Samangan', 'SAM', 0, 1),
(29, 1, 'Sar-e Pol', 'SAR', 0, 1),
(30, 1, 'Takhar', 'TAK', 0, 1),
(31, 1, 'Wardak', 'WAR', 0, 1),
(32, 1, 'Zabol', 'ZAB', 0, 1),
(33, 2, 'Berat', 'BR', 0, 1),
(34, 2, 'Bulqize', 'BU', 0, 1),
(35, 2, 'Delvine', 'DL', 0, 1),
(36, 2, 'Devoll', 'DV', 0, 1),
(37, 2, 'Diber', 'DI', 0, 1),
(38, 2, 'Durres', 'DR', 0, 1),
(39, 2, 'Elbasan', 'EL', 0, 1),
(40, 2, 'Kolonje', 'ER', 0, 1),
(41, 2, 'Fier', 'FR', 0, 1),
(42, 2, 'Gjirokaster', 'GJ', 0, 1),
(43, 2, 'Gramsh', 'GR', 0, 1),
(44, 2, 'Has', 'HA', 0, 1),
(45, 2, 'Kavaje', 'KA', 0, 1),
(46, 2, 'Kurbin', 'KB', 0, 1),
(47, 2, 'Kucove', 'KC', 0, 1),
(48, 2, 'Korce', 'KO', 0, 1),
(49, 2, 'Kruje', 'KR', 0, 1),
(50, 2, 'Kukes', 'KU', 0, 1),
(51, 2, 'Librazhd', 'LB', 0, 1),
(52, 2, 'Lezhe', 'LE', 0, 1),
(53, 2, 'Lushnje', 'LU', 0, 1),
(54, 2, 'Malesi e Madhe', 'MM', 0, 1),
(55, 2, 'Mallakaster', 'MK', 0, 1),
(56, 2, 'Mat', 'MT', 0, 1),
(57, 2, 'Mirdite', 'MR', 0, 1),
(58, 2, 'Peqin', 'PQ', 0, 1),
(59, 2, 'Permet', 'PR', 0, 1),
(60, 2, 'Pogradec', 'PG', 0, 1),
(61, 2, 'Puke', 'PU', 0, 1),
(62, 2, 'Shkoder', 'SH', 0, 1),
(63, 2, 'Skrapar', 'SK', 0, 1),
(64, 2, 'Sarande', 'SR', 0, 1),
(65, 2, 'Tepelene', 'TE', 0, 1),
(66, 2, 'Tropoje', 'TP', 0, 1),
(67, 2, 'Tirane', 'TR', 0, 1),
(68, 2, 'Vlore', 'VL', 0, 1),
(69, 3, 'Adrar', 'ADR', 0, 1),
(70, 3, 'Ain Defla', 'ADE', 0, 1),
(71, 3, 'Ain Temouchent', 'ATE', 0, 1),
(72, 3, 'Alger', 'ALG', 0, 1),
(73, 3, 'Annaba', 'ANN', 0, 1),
(74, 3, 'Batna', 'BAT', 0, 1),
(75, 3, 'Bechar', 'BEC', 0, 1),
(76, 3, 'Bejaia', 'BEJ', 0, 1),
(77, 3, 'Biskra', 'BIS', 0, 1),
(78, 3, 'Blida', 'BLI', 0, 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 0, 1),
(80, 3, 'Bouira', 'BOA', 0, 1),
(81, 3, 'Boumerdes', 'BMD', 0, 1),
(82, 3, 'Chlef', 'CHL', 0, 1),
(83, 3, 'Constantine', 'CON', 0, 1),
(84, 3, 'Djelfa', 'DJE', 0, 1),
(85, 3, 'El Bayadh', 'EBA', 0, 1),
(86, 3, 'El Oued', 'EOU', 0, 1),
(87, 3, 'El Tarf', 'ETA', 0, 1),
(88, 3, 'Ghardaia', 'GHA', 0, 1),
(89, 3, 'Guelma', 'GUE', 0, 1),
(90, 3, 'Illizi', 'ILL', 0, 1),
(91, 3, 'Jijel', 'JIJ', 0, 1),
(92, 3, 'Khenchela', 'KHE', 0, 1),
(93, 3, 'Laghouat', 'LAG', 0, 1),
(94, 3, 'Muaskar', 'MUA', 0, 1),
(95, 3, 'Medea', 'MED', 0, 1),
(96, 3, 'Mila', 'MIL', 0, 1),
(97, 3, 'Mostaganem', 'MOS', 0, 1),
(98, 3, 'M\'Sila', 'MSI', 0, 1),
(99, 3, 'Naama', 'NAA', 0, 1),
(100, 3, 'Oran', 'ORA', 0, 1),
(101, 3, 'Ouargla', 'OUA', 0, 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 0, 1),
(103, 3, 'Relizane', 'REL', 0, 1),
(104, 3, 'Saida', 'SAI', 0, 1),
(105, 3, 'Setif', 'SET', 0, 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 0, 1),
(107, 3, 'Skikda', 'SKI', 0, 1),
(108, 3, 'Souk Ahras', 'SAH', 0, 1),
(109, 3, 'Tamanghasset', 'TAM', 0, 1),
(110, 3, 'Tebessa', 'TEB', 0, 1),
(111, 3, 'Tiaret', 'TIA', 0, 1),
(112, 3, 'Tindouf', 'TIN', 0, 1),
(113, 3, 'Tipaza', 'TIP', 0, 1),
(114, 3, 'Tissemsilt', 'TIS', 0, 1),
(115, 3, 'Tizi Ouzou', 'TOU', 0, 1),
(116, 3, 'Tlemcen', 'TLE', 0, 1),
(117, 4, 'Eastern', 'E', 0, 1),
(118, 4, 'Manu\'a', 'M', 0, 1),
(119, 4, 'Rose Island', 'R', 0, 1),
(120, 4, 'Swains Island', 'S', 0, 1),
(121, 4, 'Western', 'W', 0, 1),
(122, 5, 'Andorra la Vella', 'ALV', 0, 1),
(123, 5, 'Canillo', 'CAN', 0, 1),
(124, 5, 'Encamp', 'ENC', 0, 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 0, 1),
(126, 5, 'La Massana', 'LMA', 0, 1),
(127, 5, 'Ordino', 'ORD', 0, 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 0, 1),
(129, 6, 'Bengo', 'BGO', 0, 1),
(130, 6, 'Benguela', 'BGU', 0, 1),
(131, 6, 'Bie', 'BIE', 0, 1),
(132, 6, 'Cabinda', 'CAB', 0, 1),
(133, 6, 'Cuando-Cubango', 'CCU', 0, 1),
(134, 6, 'Cuanza Norte', 'CNO', 0, 1),
(135, 6, 'Cuanza Sul', 'CUS', 0, 1),
(136, 6, 'Cunene', 'CNN', 0, 1),
(137, 6, 'Huambo', 'HUA', 0, 1),
(138, 6, 'Huila', 'HUI', 0, 1),
(139, 6, 'Luanda', 'LUA', 0, 1),
(140, 6, 'Lunda Norte', 'LNO', 0, 1),
(141, 6, 'Lunda Sul', 'LSU', 0, 1),
(142, 6, 'Malange', 'MAL', 0, 1),
(143, 6, 'Moxico', 'MOX', 0, 1),
(144, 6, 'Namibe', 'NAM', 0, 1),
(145, 6, 'Uige', 'UIG', 0, 1),
(146, 6, 'Zaire', 'ZAI', 0, 1),
(147, 9, 'Saint George', 'ASG', 0, 1),
(148, 9, 'Saint John', 'ASJ', 0, 1),
(149, 9, 'Saint Mary', 'ASM', 0, 1),
(150, 9, 'Saint Paul', 'ASL', 0, 1),
(151, 9, 'Saint Peter', 'ASR', 0, 1),
(152, 9, 'Saint Philip', 'ASH', 0, 1),
(153, 9, 'Barbuda', 'BAR', 0, 1),
(154, 9, 'Redonda', 'RED', 0, 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 0, 1),
(156, 10, 'Buenos Aires', 'BA', 0, 1),
(157, 10, 'Catamarca', 'CA', 0, 1),
(158, 10, 'Chaco', 'CH', 0, 1),
(159, 10, 'Chubut', 'CU', 0, 1),
(160, 10, 'Cordoba', 'CO', 0, 1),
(161, 10, 'Corrientes', 'CR', 0, 1),
(162, 10, 'Distrito Federal', 'DF', 0, 1),
(163, 10, 'Entre Rios', 'ER', 0, 1),
(164, 10, 'Formosa', 'FO', 0, 1),
(165, 10, 'Jujuy', 'JU', 0, 1),
(166, 10, 'La Pampa', 'LP', 0, 1),
(167, 10, 'La Rioja', 'LR', 0, 1),
(168, 10, 'Mendoza', 'ME', 0, 1),
(169, 10, 'Misiones', 'MI', 0, 1),
(170, 10, 'Neuquen', 'NE', 0, 1),
(171, 10, 'Rio Negro', 'RN', 0, 1),
(172, 10, 'Salta', 'SA', 0, 1),
(173, 10, 'San Juan', 'SJ', 0, 1),
(174, 10, 'San Luis', 'SL', 0, 1),
(175, 10, 'Santa Cruz', 'SC', 0, 1),
(176, 10, 'Santa Fe', 'SF', 0, 1),
(177, 10, 'Santiago del Estero', 'SD', 0, 1),
(178, 10, 'Tierra del Fuego', 'TF', 0, 1),
(179, 10, 'Tucuman', 'TU', 0, 1),
(180, 11, 'Aragatsotn', 'AGT', 0, 1),
(181, 11, 'Ararat', 'ARR', 0, 1),
(182, 11, 'Armavir', 'ARM', 0, 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 0, 1),
(184, 11, 'Kotayk\'', 'KOT', 0, 1),
(185, 11, 'Lorri', 'LOR', 0, 1),
(186, 11, 'Shirak', 'SHI', 0, 1),
(187, 11, 'Syunik\'', 'SYU', 0, 1),
(188, 11, 'Tavush', 'TAV', 0, 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 0, 1),
(190, 11, 'Yerevan', 'YER', 0, 1),
(191, 13, 'Australian Capital Territory', 'ACT', 0, 1),
(192, 13, 'New South Wales', 'NSW', 0, 1),
(193, 13, 'Northern Territory', 'NT', 0, 1),
(194, 13, 'Queensland', 'QLD', 0, 1),
(195, 13, 'South Australia', 'SA', 0, 1),
(196, 13, 'Tasmania', 'TAS', 0, 1),
(197, 13, 'Victoria', 'VIC', 0, 1),
(198, 13, 'Western Australia', 'WA', 0, 1),
(199, 14, 'Burgenland', 'BUR', 0, 1),
(200, 14, 'Kärnten', 'KAR', 0, 1),
(201, 14, 'Niederösterreich', 'NOS', 0, 1),
(202, 14, 'Oberösterreich', 'OOS', 0, 1),
(203, 14, 'Salzburg', 'SAL', 0, 1),
(204, 14, 'Steiermark', 'STE', 0, 1),
(205, 14, 'Tirol', 'TIR', 0, 1),
(206, 14, 'Vorarlberg', 'VOR', 0, 1),
(207, 14, 'Wien', 'WIE', 0, 1),
(208, 15, 'Ali Bayramli', 'AB', 0, 1),
(209, 15, 'Abseron', 'ABS', 0, 1),
(210, 15, 'AgcabAdi', 'AGC', 0, 1),
(211, 15, 'Agdam', 'AGM', 0, 1),
(212, 15, 'Agdas', 'AGS', 0, 1),
(213, 15, 'Agstafa', 'AGA', 0, 1),
(214, 15, 'Agsu', 'AGU', 0, 1),
(215, 15, 'Astara', 'AST', 0, 1),
(216, 15, 'Baki', 'BA', 0, 1),
(217, 15, 'BabAk', 'BAB', 0, 1),
(218, 15, 'BalakAn', 'BAL', 0, 1),
(219, 15, 'BArdA', 'BAR', 0, 1),
(220, 15, 'Beylaqan', 'BEY', 0, 1),
(221, 15, 'Bilasuvar', 'BIL', 0, 1),
(222, 15, 'Cabrayil', 'CAB', 0, 1),
(223, 15, 'Calilabab', 'CAL', 0, 1),
(224, 15, 'Culfa', 'CUL', 0, 1),
(225, 15, 'Daskasan', 'DAS', 0, 1),
(226, 15, 'Davaci', 'DAV', 0, 1),
(227, 15, 'Fuzuli', 'FUZ', 0, 1),
(228, 15, 'Ganca', 'GA', 0, 1),
(229, 15, 'Gadabay', 'GAD', 0, 1),
(230, 15, 'Goranboy', 'GOR', 0, 1),
(231, 15, 'Goycay', 'GOY', 0, 1),
(232, 15, 'Haciqabul', 'HAC', 0, 1),
(233, 15, 'Imisli', 'IMI', 0, 1),
(234, 15, 'Ismayilli', 'ISM', 0, 1),
(235, 15, 'Kalbacar', 'KAL', 0, 1),
(236, 15, 'Kurdamir', 'KUR', 0, 1),
(237, 15, 'Lankaran', 'LA', 0, 1),
(238, 15, 'Lacin', 'LAC', 0, 1),
(239, 15, 'Lankaran', 'LAN', 0, 1),
(240, 15, 'Lerik', 'LER', 0, 1),
(241, 15, 'Masalli', 'MAS', 0, 1),
(242, 15, 'Mingacevir', 'MI', 0, 1),
(243, 15, 'Naftalan', 'NA', 0, 1),
(244, 15, 'Neftcala', 'NEF', 0, 1),
(245, 15, 'Oguz', 'OGU', 0, 1),
(246, 15, 'Ordubad', 'ORD', 0, 1),
(247, 15, 'Qabala', 'QAB', 0, 1),
(248, 15, 'Qax', 'QAX', 0, 1),
(249, 15, 'Qazax', 'QAZ', 0, 1),
(250, 15, 'Qobustan', 'QOB', 0, 1),
(251, 15, 'Quba', 'QBA', 0, 1),
(252, 15, 'Qubadli', 'QBI', 0, 1),
(253, 15, 'Qusar', 'QUS', 0, 1),
(254, 15, 'Saki', 'SA', 0, 1),
(255, 15, 'Saatli', 'SAT', 0, 1),
(256, 15, 'Sabirabad', 'SAB', 0, 1),
(257, 15, 'Sadarak', 'SAD', 0, 1),
(258, 15, 'Sahbuz', 'SAH', 0, 1),
(259, 15, 'Saki', 'SAK', 0, 1),
(260, 15, 'Salyan', 'SAL', 0, 1),
(261, 15, 'Sumqayit', 'SM', 0, 1),
(262, 15, 'Samaxi', 'SMI', 0, 1),
(263, 15, 'Samkir', 'SKR', 0, 1),
(264, 15, 'Samux', 'SMX', 0, 1),
(265, 15, 'Sarur', 'SAR', 0, 1),
(266, 15, 'Siyazan', 'SIY', 0, 1),
(267, 15, 'Susa', 'SS', 0, 1),
(268, 15, 'Susa', 'SUS', 0, 1),
(269, 15, 'Tartar', 'TAR', 0, 1),
(270, 15, 'Tovuz', 'TOV', 0, 1),
(271, 15, 'Ucar', 'UCA', 0, 1),
(272, 15, 'Xankandi', 'XA', 0, 1),
(273, 15, 'Xacmaz', 'XAC', 0, 1),
(274, 15, 'Xanlar', 'XAN', 0, 1),
(275, 15, 'Xizi', 'XIZ', 0, 1),
(276, 15, 'Xocali', 'XCI', 0, 1),
(277, 15, 'Xocavand', 'XVD', 0, 1),
(278, 15, 'Yardimli', 'YAR', 0, 1),
(279, 15, 'Yevlax', 'YEV', 0, 1),
(280, 15, 'Zangilan', 'ZAN', 0, 1),
(281, 15, 'Zaqatala', 'ZAQ', 0, 1),
(282, 15, 'Zardab', 'ZAR', 0, 1),
(283, 15, 'Naxcivan', 'NX', 0, 1),
(284, 16, 'Acklins', 'ACK', 0, 1),
(285, 16, 'Berry Islands', 'BER', 0, 1),
(286, 16, 'Bimini', 'BIM', 0, 1),
(287, 16, 'Black Point', 'BLK', 0, 1),
(288, 16, 'Cat Island', 'CAT', 0, 1),
(289, 16, 'Central Abaco', 'CAB', 0, 1),
(290, 16, 'Central Andros', 'CAN', 0, 1),
(291, 16, 'Central Eleuthera', 'CEL', 0, 1),
(292, 16, 'City of Freeport', 'FRE', 0, 1),
(293, 16, 'Crooked Island', 'CRO', 0, 1),
(294, 16, 'East Grand Bahama', 'EGB', 0, 1),
(295, 16, 'Exuma', 'EXU', 0, 1),
(296, 16, 'Grand Cay', 'GRD', 0, 1),
(297, 16, 'Harbour Island', 'HAR', 0, 1),
(298, 16, 'Hope Town', 'HOP', 0, 1),
(299, 16, 'Inagua', 'INA', 0, 1),
(300, 16, 'Long Island', 'LNG', 0, 1),
(301, 16, 'Mangrove Cay', 'MAN', 0, 1),
(302, 16, 'Mayaguana', 'MAY', 0, 1),
(303, 16, 'Moore\'s Island', 'MOO', 0, 1),
(304, 16, 'North Abaco', 'NAB', 0, 1),
(305, 16, 'North Andros', 'NAN', 0, 1),
(306, 16, 'North Eleuthera', 'NEL', 0, 1),
(307, 16, 'Ragged Island', 'RAG', 0, 1),
(308, 16, 'Rum Cay', 'RUM', 0, 1),
(309, 16, 'San Salvador', 'SAL', 0, 1),
(310, 16, 'South Abaco', 'SAB', 0, 1),
(311, 16, 'South Andros', 'SAN', 0, 1),
(312, 16, 'South Eleuthera', 'SEL', 0, 1),
(313, 16, 'Spanish Wells', 'SWE', 0, 1),
(314, 16, 'West Grand Bahama', 'WGB', 0, 1),
(315, 17, 'Capital', 'CAP', 0, 1),
(316, 17, 'Central', 'CEN', 0, 1),
(317, 17, 'Muharraq', 'MUH', 0, 1),
(318, 17, 'Northern', 'NOR', 0, 1),
(319, 17, 'Southern', 'SOU', 0, 1),
(320, 18, 'Barisal', 'BAR', 0, 1),
(321, 18, 'Chittagong', 'CHI', 0, 1),
(322, 18, 'Dhaka', 'DHA', 0, 1),
(323, 18, 'Khulna', 'KHU', 0, 1),
(324, 18, 'Rajshahi', 'RAJ', 0, 1),
(325, 18, 'Sylhet', 'SYL', 0, 1),
(326, 19, 'Christ Church', 'CC', 0, 1),
(327, 19, 'Saint Andrew', 'AND', 0, 1),
(328, 19, 'Saint George', 'GEO', 0, 1),
(329, 19, 'Saint James', 'JAM', 0, 1),
(330, 19, 'Saint John', 'JOH', 0, 1),
(331, 19, 'Saint Joseph', 'JOS', 0, 1),
(332, 19, 'Saint Lucy', 'LUC', 0, 1),
(333, 19, 'Saint Michael', 'MIC', 0, 1),
(334, 19, 'Saint Peter', 'PET', 0, 1),
(335, 19, 'Saint Philip', 'PHI', 0, 1),
(336, 19, 'Saint Thomas', 'THO', 0, 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 0, 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 0, 1),
(339, 20, 'Horad Minsk', 'HM', 0, 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 0, 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 0, 1),
(342, 20, 'Minskaya', 'MI', 0, 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 0, 1),
(344, 21, 'Antwerpen', 'VAN', 0, 1),
(345, 21, 'Brabant Wallon', 'WBR', 0, 1),
(346, 21, 'Hainaut', 'WHT', 0, 1),
(347, 21, 'Liège', 'WLG', 0, 1),
(348, 21, 'Limburg', 'VLI', 0, 1),
(349, 21, 'Luxembourg', 'WLX', 0, 1),
(350, 21, 'Namur', 'WNA', 0, 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 0, 1),
(352, 21, 'Vlaams Brabant', 'VBR', 0, 1),
(353, 21, 'West-Vlaanderen', 'VWV', 0, 1),
(354, 22, 'Belize', 'BZ', 0, 1),
(355, 22, 'Cayo', 'CY', 0, 1),
(356, 22, 'Corozal', 'CR', 0, 1),
(357, 22, 'Orange Walk', 'OW', 0, 1),
(358, 22, 'Stann Creek', 'SC', 0, 1),
(359, 22, 'Toledo', 'TO', 0, 1),
(360, 23, 'Alibori', 'AL', 0, 1),
(361, 23, 'Atakora', 'AK', 0, 1),
(362, 23, 'Atlantique', 'AQ', 0, 1),
(363, 23, 'Borgou', 'BO', 0, 1),
(364, 23, 'Collines', 'CO', 0, 1),
(365, 23, 'Donga', 'DO', 0, 1),
(366, 23, 'Kouffo', 'KO', 0, 1),
(367, 23, 'Littoral', 'LI', 0, 1),
(368, 23, 'Mono', 'MO', 0, 1),
(369, 23, 'Oueme', 'OU', 0, 1),
(370, 23, 'Plateau', 'PL', 0, 1),
(371, 23, 'Zou', 'ZO', 0, 1),
(372, 24, 'Devonshire', 'DS', 0, 1),
(373, 24, 'Hamilton City', 'HC', 0, 1),
(374, 24, 'Hamilton', 'HA', 0, 1),
(375, 24, 'Paget', 'PG', 0, 1),
(376, 24, 'Pembroke', 'PB', 0, 1),
(377, 24, 'Saint George City', 'GC', 0, 1),
(378, 24, 'Saint George\'s', 'SG', 0, 1),
(379, 24, 'Sandys', 'SA', 0, 1),
(380, 24, 'Smith\'s', 'SM', 0, 1),
(381, 24, 'Southampton', 'SH', 0, 1),
(382, 24, 'Warwick', 'WA', 0, 1),
(383, 25, 'Bumthang', 'BUM', 0, 1),
(384, 25, 'Chukha', 'CHU', 0, 1),
(385, 25, 'Dagana', 'DAG', 0, 1),
(386, 25, 'Gasa', 'GAS', 0, 1),
(387, 25, 'Haa', 'HAA', 0, 1),
(388, 25, 'Lhuntse', 'LHU', 0, 1),
(389, 25, 'Mongar', 'MON', 0, 1),
(390, 25, 'Paro', 'PAR', 0, 1),
(391, 25, 'Pemagatshel', 'PEM', 0, 1),
(392, 25, 'Punakha', 'PUN', 0, 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 0, 1),
(394, 25, 'Samtse', 'SAT', 0, 1),
(395, 25, 'Sarpang', 'SAR', 0, 1),
(396, 25, 'Thimphu', 'THI', 0, 1),
(397, 25, 'Trashigang', 'TRG', 0, 1),
(398, 25, 'Trashiyangste', 'TRY', 0, 1),
(399, 25, 'Trongsa', 'TRO', 0, 1),
(400, 25, 'Tsirang', 'TSI', 0, 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 0, 1),
(402, 25, 'Zhemgang', 'ZHE', 0, 1),
(403, 26, 'Beni', 'BEN', 0, 1),
(404, 26, 'Chuquisaca', 'CHU', 0, 1),
(405, 26, 'Cochabamba', 'COC', 0, 1),
(406, 26, 'La Paz', 'LPZ', 0, 1),
(407, 26, 'Oruro', 'ORU', 0, 1),
(408, 26, 'Pando', 'PAN', 0, 1),
(409, 26, 'Potosi', 'POT', 0, 1),
(410, 26, 'Santa Cruz', 'SCZ', 0, 1),
(411, 26, 'Tarija', 'TAR', 0, 1),
(412, 27, 'Brcko district', 'BRO', 0, 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 0, 1),
(414, 27, 'Posavski Kanton', 'FPO', 0, 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 0, 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 0, 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 0, 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 0, 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 0, 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 0, 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 0, 1),
(422, 27, 'Zapadnobosanska', 'FZA', 0, 1),
(423, 27, 'Banja Luka', 'SBL', 0, 1),
(424, 27, 'Doboj', 'SDO', 0, 1),
(425, 27, 'Bijeljina', 'SBI', 0, 1),
(426, 27, 'Vlasenica', 'SVL', 0, 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 0, 1),
(428, 27, 'Foca', 'SFO', 0, 1),
(429, 27, 'Trebinje', 'STR', 0, 1),
(430, 28, 'Central', 'CE', 0, 1),
(431, 28, 'Ghanzi', 'GH', 0, 1),
(432, 28, 'Kgalagadi', 'KD', 0, 1),
(433, 28, 'Kgatleng', 'KT', 0, 1),
(434, 28, 'Kweneng', 'KW', 0, 1),
(435, 28, 'Ngamiland', 'NG', 0, 1),
(436, 28, 'North East', 'NE', 0, 1),
(437, 28, 'North West', 'NW', 0, 1),
(438, 28, 'South East', 'SE', 0, 1),
(439, 28, 'Southern', 'SO', 0, 1),
(440, 30, 'Acre', 'AC', 0, 1),
(441, 30, 'Alagoas', 'AL', 0, 1),
(442, 30, 'Amapá', 'AP', 0, 1),
(443, 30, 'Amazonas', 'AM', 0, 1),
(444, 30, 'Bahia', 'BA', 0, 1),
(445, 30, 'Ceará', 'CE', 0, 1),
(446, 30, 'Distrito Federal', 'DF', 0, 1),
(447, 30, 'Espírito Santo', 'ES', 0, 1),
(448, 30, 'Goiás', 'GO', 0, 1),
(449, 30, 'Maranhão', 'MA', 0, 1),
(450, 30, 'Mato Grosso', 'MT', 0, 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 0, 1),
(452, 30, 'Minas Gerais', 'MG', 0, 1),
(453, 30, 'Pará', 'PA', 0, 1),
(454, 30, 'Paraíba', 'PB', 0, 1),
(455, 30, 'Paraná', 'PR', 0, 1),
(456, 30, 'Pernambuco', 'PE', 0, 1),
(457, 30, 'Piauí', 'PI', 0, 1),
(458, 30, 'Rio de Janeiro', 'RJ', 0, 1),
(459, 30, 'Rio Grande do Norte', 'RN', 0, 1),
(460, 30, 'Rio Grande do Sul', 'RS', 0, 1),
(461, 30, 'Rondônia', 'RO', 0, 1),
(462, 30, 'Roraima', 'RR', 0, 1),
(463, 30, 'Santa Catarina', 'SC', 0, 1),
(464, 30, 'São Paulo', 'SP', 0, 1),
(465, 30, 'Sergipe', 'SE', 0, 1),
(466, 30, 'Tocantins', 'TO', 0, 1),
(467, 31, 'Peros Banhos', 'PB', 0, 1),
(468, 31, 'Salomon Islands', 'SI', 0, 1),
(469, 31, 'Nelsons Island', 'NI', 0, 1),
(470, 31, 'Three Brothers', 'TB', 0, 1),
(471, 31, 'Eagle Islands', 'EA', 0, 1),
(472, 31, 'Danger Island', 'DI', 0, 1),
(473, 31, 'Egmont Islands', 'EG', 0, 1),
(474, 31, 'Diego Garcia', 'DG', 0, 1),
(475, 32, 'Belait', 'BEL', 0, 1),
(476, 32, 'Brunei and Muara', 'BRM', 0, 1),
(477, 32, 'Temburong', 'TEM', 0, 1),
(478, 32, 'Tutong', 'TUT', 0, 1),
(479, 33, 'Blagoevgrad', '', 0, 1),
(480, 33, 'Burgas', '', 0, 1),
(481, 33, 'Dobrich', '', 0, 1),
(482, 33, 'Gabrovo', '', 0, 1),
(483, 33, 'Haskovo', '', 0, 1),
(484, 33, 'Kardjali', '', 0, 1),
(485, 33, 'Kyustendil', '', 0, 1),
(486, 33, 'Lovech', '', 0, 1),
(487, 33, 'Montana', '', 0, 1),
(488, 33, 'Pazardjik', '', 0, 1),
(489, 33, 'Pernik', '', 0, 1),
(490, 33, 'Pleven', '', 0, 1),
(491, 33, 'Plovdiv', '', 0, 1),
(492, 33, 'Razgrad', '', 0, 1),
(493, 33, 'Shumen', '', 0, 1),
(494, 33, 'Silistra', '', 0, 1),
(495, 33, 'Sliven', '', 0, 1),
(496, 33, 'Smolyan', '', 0, 1),
(497, 33, 'Sofia', '', 0, 1),
(498, 33, 'Sofia - town', '', 0, 1),
(499, 33, 'Stara Zagora', '', 0, 1),
(500, 33, 'Targovishte', '', 0, 1),
(501, 33, 'Varna', '', 0, 1),
(502, 33, 'Veliko Tarnovo', '', 0, 1),
(503, 33, 'Vidin', '', 0, 1),
(504, 33, 'Vratza', '', 0, 1),
(505, 33, 'Yambol', '', 0, 1),
(506, 34, 'Bale', 'BAL', 0, 1),
(507, 34, 'Bam', 'BAM', 0, 1),
(508, 34, 'Banwa', 'BAN', 0, 1),
(509, 34, 'Bazega', 'BAZ', 0, 1),
(510, 34, 'Bougouriba', 'BOR', 0, 1),
(511, 34, 'Boulgou', 'BLG', 0, 1),
(512, 34, 'Boulkiemde', 'BOK', 0, 1),
(513, 34, 'Comoe', 'COM', 0, 1),
(514, 34, 'Ganzourgou', 'GAN', 0, 1),
(515, 34, 'Gnagna', 'GNA', 0, 1),
(516, 34, 'Gourma', 'GOU', 0, 1),
(517, 34, 'Houet', 'HOU', 0, 1),
(518, 34, 'Ioba', 'IOA', 0, 1),
(519, 34, 'Kadiogo', 'KAD', 0, 1),
(520, 34, 'Kenedougou', 'KEN', 0, 1),
(521, 34, 'Komondjari', 'KOD', 0, 1),
(522, 34, 'Kompienga', 'KOP', 0, 1),
(523, 34, 'Kossi', 'KOS', 0, 1),
(524, 34, 'Koulpelogo', 'KOL', 0, 1),
(525, 34, 'Kouritenga', 'KOT', 0, 1),
(526, 34, 'Kourweogo', 'KOW', 0, 1),
(527, 34, 'Leraba', 'LER', 0, 1),
(528, 34, 'Loroum', 'LOR', 0, 1),
(529, 34, 'Mouhoun', 'MOU', 0, 1),
(530, 34, 'Nahouri', 'NAH', 0, 1),
(531, 34, 'Namentenga', 'NAM', 0, 1),
(532, 34, 'Nayala', 'NAY', 0, 1),
(533, 34, 'Noumbiel', 'NOU', 0, 1),
(534, 34, 'Oubritenga', 'OUB', 0, 1),
(535, 34, 'Oudalan', 'OUD', 0, 1),
(536, 34, 'Passore', 'PAS', 0, 1),
(537, 34, 'Poni', 'PON', 0, 1),
(538, 34, 'Sanguie', 'SAG', 0, 1),
(539, 34, 'Sanmatenga', 'SAM', 0, 1),
(540, 34, 'Seno', 'SEN', 0, 1),
(541, 34, 'Sissili', 'SIS', 0, 1),
(542, 34, 'Soum', 'SOM', 0, 1),
(543, 34, 'Sourou', 'SOR', 0, 1),
(544, 34, 'Tapoa', 'TAP', 0, 1),
(545, 34, 'Tuy', 'TUY', 0, 1),
(546, 34, 'Yagha', 'YAG', 0, 1),
(547, 34, 'Yatenga', 'YAT', 0, 1),
(548, 34, 'Ziro', 'ZIR', 0, 1),
(549, 34, 'Zondoma', 'ZOD', 0, 1),
(550, 34, 'Zoundweogo', 'ZOW', 0, 1),
(551, 35, 'Bubanza', 'BB', 0, 1),
(552, 35, 'Bujumbura', 'BJ', 0, 1),
(553, 35, 'Bururi', 'BR', 0, 1),
(554, 35, 'Cankuzo', 'CA', 0, 1),
(555, 35, 'Cibitoke', 'CI', 0, 1),
(556, 35, 'Gitega', 'GI', 0, 1),
(557, 35, 'Karuzi', 'KR', 0, 1),
(558, 35, 'Kayanza', 'KY', 0, 1),
(559, 35, 'Kirundo', 'KI', 0, 1),
(560, 35, 'Makamba', 'MA', 0, 1),
(561, 35, 'Muramvya', 'MU', 0, 1),
(562, 35, 'Muyinga', 'MY', 0, 1),
(563, 35, 'Mwaro', 'MW', 0, 1),
(564, 35, 'Ngozi', 'NG', 0, 1),
(565, 35, 'Rutana', 'RT', 0, 1),
(566, 35, 'Ruyigi', 'RY', 0, 1),
(567, 36, 'Phnom Penh', 'PP', 0, 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 0, 1),
(569, 36, 'Pailin', 'PA', 0, 1),
(570, 36, 'Keb', 'KB', 0, 1),
(571, 36, 'Banteay Meanchey', 'BM', 0, 1),
(572, 36, 'Battambang', 'BA', 0, 1),
(573, 36, 'Kampong Cham', 'KM', 0, 1),
(574, 36, 'Kampong Chhnang', 'KN', 0, 1),
(575, 36, 'Kampong Speu', 'KU', 0, 1),
(576, 36, 'Kampong Som', 'KO', 0, 1),
(577, 36, 'Kampong Thom', 'KT', 0, 1),
(578, 36, 'Kampot', 'KP', 0, 1),
(579, 36, 'Kandal', 'KL', 0, 1),
(580, 36, 'Kaoh Kong', 'KK', 0, 1),
(581, 36, 'Kratie', 'KR', 0, 1),
(582, 36, 'Mondul Kiri', 'MK', 0, 1),
(583, 36, 'Oddar Meancheay', 'OM', 0, 1),
(584, 36, 'Pursat', 'PU', 0, 1),
(585, 36, 'Preah Vihear', 'PR', 0, 1),
(586, 36, 'Prey Veng', 'PG', 0, 1),
(587, 36, 'Ratanak Kiri', 'RK', 0, 1),
(588, 36, 'Siemreap', 'SI', 0, 1),
(589, 36, 'Stung Treng', 'ST', 0, 1),
(590, 36, 'Svay Rieng', 'SR', 0, 1),
(591, 36, 'Takeo', 'TK', 0, 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 0, 1),
(593, 37, 'Centre', 'CEN', 0, 1),
(594, 37, 'East (Est)', 'EST', 0, 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 0, 1),
(596, 37, 'Littoral', 'LIT', 0, 1),
(597, 37, 'North (Nord)', 'NOR', 0, 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 0, 1),
(599, 37, 'West (Ouest)', 'OUE', 0, 1),
(600, 37, 'South (Sud)', 'SUD', 0, 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 0, 1),
(602, 38, 'Alberta', 'AB', 0, 1),
(603, 38, 'British Columbia', 'BC', 0, 1),
(604, 38, 'Manitoba', 'MB', 0, 1),
(605, 38, 'New Brunswick', 'NB', 0, 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 0, 1),
(607, 38, 'Northwest Territories', 'NT', 0, 1),
(608, 38, 'Nova Scotia', 'NS', 0, 1),
(609, 38, 'Nunavut', 'NU', 0, 1),
(610, 38, 'Ontario', 'ON', 0, 1),
(611, 38, 'Prince Edward Island', 'PE', 0, 1),
(612, 38, 'Qu&eacute;bec', 'QC', 0, 1),
(613, 38, 'Saskatchewan', 'SK', 0, 1),
(614, 38, 'Yukon Territory', 'YT', 0, 1),
(615, 39, 'Boa Vista', 'BV', 0, 1),
(616, 39, 'Brava', 'BR', 0, 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 0, 1),
(618, 39, 'Maio', 'MA', 0, 1),
(619, 39, 'Mosteiros', 'MO', 0, 1),
(620, 39, 'Paul', 'PA', 0, 1),
(621, 39, 'Porto Novo', 'PN', 0, 1),
(622, 39, 'Praia', 'PR', 0, 1),
(623, 39, 'Ribeira Grande', 'RG', 0, 1),
(624, 39, 'Sal', 'SL', 0, 1),
(625, 39, 'Santa Catarina', 'CA', 0, 1),
(626, 39, 'Santa Cruz', 'CR', 0, 1),
(627, 39, 'Sao Domingos', 'SD', 0, 1),
(628, 39, 'Sao Filipe', 'SF', 0, 1),
(629, 39, 'Sao Nicolau', 'SN', 0, 1),
(630, 39, 'Sao Vicente', 'SV', 0, 1),
(631, 39, 'Tarrafal', 'TA', 0, 1),
(632, 40, 'Creek', 'CR', 0, 1),
(633, 40, 'Eastern', 'EA', 0, 1),
(634, 40, 'Midland', 'ML', 0, 1),
(635, 40, 'South Town', 'ST', 0, 1),
(636, 40, 'Spot Bay', 'SP', 0, 1),
(637, 40, 'Stake Bay', 'SK', 0, 1),
(638, 40, 'West End', 'WD', 0, 1),
(639, 40, 'Western', 'WN', 0, 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 0, 1),
(641, 41, 'Basse-Kotto', 'BKO', 0, 1),
(642, 41, 'Haute-Kotto', 'HKO', 0, 1),
(643, 41, 'Haut-Mbomou', 'HMB', 0, 1),
(644, 41, 'Kemo', 'KEM', 0, 1),
(645, 41, 'Lobaye', 'LOB', 0, 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 0, 1),
(647, 41, 'Mbomou', 'MBO', 0, 1),
(648, 41, 'Nana-Mambere', 'NMM', 0, 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 0, 1),
(650, 41, 'Ouaka', 'OUK', 0, 1),
(651, 41, 'Ouham', 'OUH', 0, 1),
(652, 41, 'Ouham-Pende', 'OPE', 0, 1),
(653, 41, 'Vakaga', 'VAK', 0, 1),
(654, 41, 'Nana-Grebizi', 'NGR', 0, 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 0, 1),
(656, 41, 'Bangui', 'BAN', 0, 1),
(657, 42, 'Batha', 'BA', 0, 1),
(658, 42, 'Biltine', 'BI', 0, 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 0, 1),
(660, 42, 'Chari-Baguirmi', 'CB', 0, 1),
(661, 42, 'Guera', 'GU', 0, 1),
(662, 42, 'Kanem', 'KA', 0, 1),
(663, 42, 'Lac', 'LA', 0, 1),
(664, 42, 'Logone Occidental', 'LC', 0, 1),
(665, 42, 'Logone Oriental', 'LR', 0, 1),
(666, 42, 'Mayo-Kebbi', 'MK', 0, 1),
(667, 42, 'Moyen-Chari', 'MC', 0, 1),
(668, 42, 'Ouaddai', 'OU', 0, 1),
(669, 42, 'Salamat', 'SA', 0, 1),
(670, 42, 'Tandjile', 'TA', 0, 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 0, 1),
(672, 43, 'Antofagasta', 'AN', 0, 1),
(673, 43, 'Araucania', 'AR', 0, 1),
(674, 43, 'Atacama', 'AT', 0, 1),
(675, 43, 'Bio-Bio', 'BI', 0, 1),
(676, 43, 'Coquimbo', 'CO', 0, 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 0, 1),
(678, 43, 'Los Lagos', 'LL', 0, 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 0, 1),
(680, 43, 'Maule', 'ML', 0, 1),
(681, 43, 'Region Metropolitana', 'RM', 0, 1),
(682, 43, 'Tarapaca', 'TA', 0, 1),
(683, 43, 'Valparaiso', 'VS', 0, 1),
(684, 44, 'Anhui', 'AN', 0, 1),
(685, 44, 'Beijing', 'BE', 0, 1),
(686, 44, 'Chongqing', 'CH', 0, 1),
(687, 44, 'Fujian', 'FU', 0, 1),
(688, 44, 'Gansu', 'GA', 0, 1),
(689, 44, 'Guangdong', 'GU', 0, 1),
(690, 44, 'Guangxi', 'GX', 0, 1),
(691, 44, 'Guizhou', 'GZ', 0, 1),
(692, 44, 'Hainan', 'HA', 0, 1),
(693, 44, 'Hebei', 'HB', 0, 1),
(694, 44, 'Heilongjiang', 'HL', 0, 1),
(695, 44, 'Henan', 'HE', 0, 1),
(696, 44, 'Hong Kong', 'HK', 0, 1),
(697, 44, 'Hubei', 'HU', 0, 1),
(698, 44, 'Hunan', 'HN', 0, 1),
(699, 44, 'Inner Mongolia', 'IM', 0, 1),
(700, 44, 'Jiangsu', 'JI', 0, 1),
(701, 44, 'Jiangxi', 'JX', 0, 1),
(702, 44, 'Jilin', 'JL', 0, 1),
(703, 44, 'Liaoning', 'LI', 0, 1),
(704, 44, 'Macau', 'MA', 0, 1),
(705, 44, 'Ningxia', 'NI', 0, 1),
(706, 44, 'Shaanxi', 'SH', 0, 1),
(707, 44, 'Shandong', 'SA', 0, 1),
(708, 44, 'Shanghai', 'SG', 0, 1),
(709, 44, 'Shanxi', 'SX', 0, 1),
(710, 44, 'Sichuan', 'SI', 0, 1),
(711, 44, 'Tianjin', 'TI', 0, 1),
(712, 44, 'Xinjiang', 'XI', 0, 1),
(713, 44, 'Yunnan', 'YU', 0, 1),
(714, 44, 'Zhejiang', 'ZH', 0, 1),
(715, 46, 'Direction Island', 'D', 0, 1),
(716, 46, 'Home Island', 'H', 0, 1),
(717, 46, 'Horsburgh Island', 'O', 0, 1),
(718, 46, 'South Island', 'S', 0, 1),
(719, 46, 'West Island', 'W', 0, 1),
(720, 47, 'Amazonas', 'AMZ', 0, 1),
(721, 47, 'Antioquia', 'ANT', 0, 1),
(722, 47, 'Arauca', 'ARA', 0, 1),
(723, 47, 'Atlantico', 'ATL', 0, 1),
(724, 47, 'Bogota D.C.', 'BDC', 0, 1),
(725, 47, 'Bolivar', 'BOL', 0, 1),
(726, 47, 'Boyaca', 'BOY', 0, 1),
(727, 47, 'Caldas', 'CAL', 0, 1),
(728, 47, 'Caqueta', 'CAQ', 0, 1),
(729, 47, 'Casanare', 'CAS', 0, 1),
(730, 47, 'Cauca', 'CAU', 0, 1),
(731, 47, 'Cesar', 'CES', 0, 1),
(732, 47, 'Choco', 'CHO', 0, 1),
(733, 47, 'Cordoba', 'COR', 0, 1),
(734, 47, 'Cundinamarca', 'CAM', 0, 1),
(735, 47, 'Guainia', 'GNA', 0, 1),
(736, 47, 'Guajira', 'GJR', 0, 1),
(737, 47, 'Guaviare', 'GVR', 0, 1),
(738, 47, 'Huila', 'HUI', 0, 1),
(739, 47, 'Magdalena', 'MAG', 0, 1),
(740, 47, 'Meta', 'MET', 0, 1),
(741, 47, 'Narino', 'NAR', 0, 1),
(742, 47, 'Norte de Santander', 'NDS', 0, 1),
(743, 47, 'Putumayo', 'PUT', 0, 1),
(744, 47, 'Quindio', 'QUI', 0, 1),
(745, 47, 'Risaralda', 'RIS', 0, 1),
(746, 47, 'San Andres y Providencia', 'SAP', 0, 1),
(747, 47, 'Santander', 'SAN', 0, 1),
(748, 47, 'Sucre', 'SUC', 0, 1),
(749, 47, 'Tolima', 'TOL', 0, 1),
(750, 47, 'Valle del Cauca', 'VDC', 0, 1),
(751, 47, 'Vaupes', 'VAU', 0, 1),
(752, 47, 'Vichada', 'VIC', 0, 1),
(753, 48, 'Grande Comore', 'G', 0, 1),
(754, 48, 'Anjouan', 'A', 0, 1),
(755, 48, 'Moheli', 'M', 0, 1),
(756, 49, 'Bouenza', 'BO', 0, 1),
(757, 49, 'Brazzaville', 'BR', 0, 1),
(758, 49, 'Cuvette', 'CU', 0, 1),
(759, 49, 'Cuvette-Ouest', 'CO', 0, 1),
(760, 49, 'Kouilou', 'KO', 0, 1),
(761, 49, 'Lekoumou', 'LE', 0, 1),
(762, 49, 'Likouala', 'LI', 0, 1),
(763, 49, 'Niari', 'NI', 0, 1),
(764, 49, 'Plateaux', 'PL', 0, 1),
(765, 49, 'Pool', 'PO', 0, 1),
(766, 49, 'Sangha', 'SA', 0, 1),
(767, 50, 'Pukapuka', 'PU', 0, 1),
(768, 50, 'Rakahanga', 'RK', 0, 1),
(769, 50, 'Manihiki', 'MK', 0, 1),
(770, 50, 'Penrhyn', 'PE', 0, 1),
(771, 50, 'Nassau Island', 'NI', 0, 1),
(772, 50, 'Surwarrow', 'SU', 0, 1),
(773, 50, 'Palmerston', 'PA', 0, 1),
(774, 50, 'Aitutaki', 'AI', 0, 1),
(775, 50, 'Manuae', 'MA', 0, 1),
(776, 50, 'Takutea', 'TA', 0, 1),
(777, 50, 'Mitiaro', 'MT', 0, 1),
(778, 50, 'Atiu', 'AT', 0, 1),
(779, 50, 'Mauke', 'MU', 0, 1),
(780, 50, 'Rarotonga', 'RR', 0, 1),
(781, 50, 'Mangaia', 'MG', 0, 1),
(782, 51, 'Alajuela', 'AL', 0, 1),
(783, 51, 'Cartago', 'CA', 0, 1),
(784, 51, 'Guanacaste', 'GU', 0, 1),
(785, 51, 'Heredia', 'HE', 0, 1),
(786, 51, 'Limon', 'LI', 0, 1),
(787, 51, 'Puntarenas', 'PU', 0, 1),
(788, 51, 'San Jose', 'SJ', 0, 1),
(789, 52, 'Abengourou', 'ABE', 0, 1),
(790, 52, 'Abidjan', 'ABI', 0, 1),
(791, 52, 'Aboisso', 'ABO', 0, 1),
(792, 52, 'Adiake', 'ADI', 0, 1),
(793, 52, 'Adzope', 'ADZ', 0, 1),
(794, 52, 'Agboville', 'AGB', 0, 1),
(795, 52, 'Agnibilekrou', 'AGN', 0, 1),
(796, 52, 'Alepe', 'ALE', 0, 1),
(797, 52, 'Bocanda', 'BOC', 0, 1),
(798, 52, 'Bangolo', 'BAN', 0, 1),
(799, 52, 'Beoumi', 'BEO', 0, 1),
(800, 52, 'Biankouma', 'BIA', 0, 1),
(801, 52, 'Bondoukou', 'BDK', 0, 1),
(802, 52, 'Bongouanou', 'BGN', 0, 1),
(803, 52, 'Bouafle', 'BFL', 0, 1),
(804, 52, 'Bouake', 'BKE', 0, 1),
(805, 52, 'Bouna', 'BNA', 0, 1),
(806, 52, 'Boundiali', 'BDL', 0, 1),
(807, 52, 'Dabakala', 'DKL', 0, 1),
(808, 52, 'Dabou', 'DBU', 0, 1),
(809, 52, 'Daloa', 'DAL', 0, 1),
(810, 52, 'Danane', 'DAN', 0, 1),
(811, 52, 'Daoukro', 'DAO', 0, 1),
(812, 52, 'Dimbokro', 'DIM', 0, 1),
(813, 52, 'Divo', 'DIV', 0, 1),
(814, 52, 'Duekoue', 'DUE', 0, 1),
(815, 52, 'Ferkessedougou', 'FER', 0, 1),
(816, 52, 'Gagnoa', 'GAG', 0, 1),
(817, 52, 'Grand-Bassam', 'GBA', 0, 1),
(818, 52, 'Grand-Lahou', 'GLA', 0, 1),
(819, 52, 'Guiglo', 'GUI', 0, 1),
(820, 52, 'Issia', 'ISS', 0, 1),
(821, 52, 'Jacqueville', 'JAC', 0, 1),
(822, 52, 'Katiola', 'KAT', 0, 1),
(823, 52, 'Korhogo', 'KOR', 0, 1),
(824, 52, 'Lakota', 'LAK', 0, 1),
(825, 52, 'Man', 'MAN', 0, 1),
(826, 52, 'Mankono', 'MKN', 0, 1),
(827, 52, 'Mbahiakro', 'MBA', 0, 1),
(828, 52, 'Odienne', 'ODI', 0, 1),
(829, 52, 'Oume', 'OUM', 0, 1),
(830, 52, 'Sakassou', 'SAK', 0, 1),
(831, 52, 'San-Pedro', 'SPE', 0, 1),
(832, 52, 'Sassandra', 'SAS', 0, 1),
(833, 52, 'Seguela', 'SEG', 0, 1),
(834, 52, 'Sinfra', 'SIN', 0, 1),
(835, 52, 'Soubre', 'SOU', 0, 1),
(836, 52, 'Tabou', 'TAB', 0, 1),
(837, 52, 'Tanda', 'TAN', 0, 1),
(838, 52, 'Tiebissou', 'TIE', 0, 1),
(839, 52, 'Tingrela', 'TIN', 0, 1),
(840, 52, 'Tiassale', 'TIA', 0, 1),
(841, 52, 'Touba', 'TBA', 0, 1),
(842, 52, 'Toulepleu', 'TLP', 0, 1),
(843, 52, 'Toumodi', 'TMD', 0, 1),
(844, 52, 'Vavoua', 'VAV', 0, 1),
(845, 52, 'Yamoussoukro', 'YAM', 0, 1),
(846, 52, 'Zuenoula', 'ZUE', 0, 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 0, 1),
(848, 53, 'Grad Zagreb', 'GZ', 0, 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 0, 1),
(850, 53, 'Istarska', 'IS', 0, 1),
(851, 53, 'Karlovačka', 'KA', 0, 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 0, 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 0, 1),
(854, 53, 'Ličko-senjska', 'LS', 0, 1),
(855, 53, 'Međimurska', 'ME', 0, 1),
(856, 53, 'Osječko-baranjska', 'OB', 0, 1),
(857, 53, 'Požeško-slavonska', 'PS', 0, 1),
(858, 53, 'Primorsko-goranska', 'PG', 0, 1),
(859, 53, 'Šibensko-kninska', 'SK', 0, 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 0, 1),
(861, 53, 'Brodsko-posavska', 'BP', 0, 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 0, 1),
(863, 53, 'Varaždinska', 'VA', 0, 1),
(864, 53, 'Virovitičko-podravska', 'VP', 0, 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 0, 1),
(866, 53, 'Zadarska', 'ZA', 0, 1),
(867, 53, 'Zagrebačka', 'ZG', 0, 1),
(868, 54, 'Camaguey', 'CA', 0, 1),
(869, 54, 'Ciego de Avila', 'CD', 0, 1),
(870, 54, 'Cienfuegos', 'CI', 0, 1),
(871, 54, 'Ciudad de La Habana', 'CH', 0, 1),
(872, 54, 'Granma', 'GR', 0, 1),
(873, 54, 'Guantanamo', 'GU', 0, 1),
(874, 54, 'Holguin', 'HO', 0, 1),
(875, 54, 'Isla de la Juventud', 'IJ', 0, 1),
(876, 54, 'La Habana', 'LH', 0, 1),
(877, 54, 'Las Tunas', 'LT', 0, 1),
(878, 54, 'Matanzas', 'MA', 0, 1),
(879, 54, 'Pinar del Rio', 'PR', 0, 1),
(880, 54, 'Sancti Spiritus', 'SS', 0, 1),
(881, 54, 'Santiago de Cuba', 'SC', 0, 1),
(882, 54, 'Villa Clara', 'VC', 0, 1),
(883, 55, 'Famagusta', 'F', 0, 1),
(884, 55, 'Kyrenia', 'K', 0, 1),
(885, 55, 'Larnaca', 'A', 0, 1),
(886, 55, 'Limassol', 'I', 0, 1),
(887, 55, 'Nicosia', 'N', 0, 1),
(888, 55, 'Paphos', 'P', 0, 1),
(889, 56, 'Ústecký', 'U', 0, 1),
(890, 56, 'Jihočeský', 'C', 0, 1),
(891, 56, 'Jihomoravský', 'B', 0, 1),
(892, 56, 'Karlovarský', 'K', 0, 1),
(893, 56, 'Královehradecký', 'H', 0, 1),
(894, 56, 'Liberecký', 'L', 0, 1),
(895, 56, 'Moravskoslezský', 'T', 0, 1),
(896, 56, 'Olomoucký', 'M', 0, 1),
(897, 56, 'Pardubický', 'E', 0, 1),
(898, 56, 'Plzeňský', 'P', 0, 1),
(899, 56, 'Praha', 'A', 0, 1),
(900, 56, 'Středočeský', 'S', 0, 1),
(901, 56, 'Vysočina', 'J', 0, 1),
(902, 56, 'Zlínský', 'Z', 0, 1),
(903, 57, 'Arhus', 'AR', 0, 1),
(904, 57, 'Bornholm', 'BH', 0, 1),
(905, 57, 'Copenhagen', 'CO', 0, 1),
(906, 57, 'Faroe Islands', 'FO', 0, 1),
(907, 57, 'Frederiksborg', 'FR', 0, 1),
(908, 57, 'Fyn', 'FY', 0, 1),
(909, 57, 'Kobenhavn', 'KO', 0, 1),
(910, 57, 'Nordjylland', 'NO', 0, 1),
(911, 57, 'Ribe', 'RI', 0, 1),
(912, 57, 'Ringkobing', 'RK', 0, 1),
(913, 57, 'Roskilde', 'RO', 0, 1),
(914, 57, 'Sonderjylland', 'SO', 0, 1),
(915, 57, 'Storstrom', 'ST', 0, 1),
(916, 57, 'Vejle', 'VK', 0, 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 0, 1),
(918, 57, 'Viborg', 'VB', 0, 1),
(919, 58, '\'Ali Sabih', 'S', 0, 1),
(920, 58, 'Dikhil', 'K', 0, 1),
(921, 58, 'Djibouti', 'J', 0, 1),
(922, 58, 'Obock', 'O', 0, 1),
(923, 58, 'Tadjoura', 'T', 0, 1),
(924, 59, 'Saint Andrew Parish', 'AND', 0, 1),
(925, 59, 'Saint David Parish', 'DAV', 0, 1),
(926, 59, 'Saint George Parish', 'GEO', 0, 1),
(927, 59, 'Saint John Parish', 'JOH', 0, 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 0, 1),
(929, 59, 'Saint Luke Parish', 'LUK', 0, 1),
(930, 59, 'Saint Mark Parish', 'MAR', 0, 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 0, 1),
(932, 59, 'Saint Paul Parish', 'PAU', 0, 1),
(933, 59, 'Saint Peter Parish', 'PET', 0, 1),
(934, 60, 'Distrito Nacional', 'DN', 0, 1),
(935, 60, 'Azua', 'AZ', 0, 1),
(936, 60, 'Baoruco', 'BC', 0, 1),
(937, 60, 'Barahona', 'BH', 0, 1),
(938, 60, 'Dajabon', 'DJ', 0, 1),
(939, 60, 'Duarte', 'DU', 0, 1),
(940, 60, 'Elias Pina', 'EL', 0, 1),
(941, 60, 'El Seybo', 'SY', 0, 1),
(942, 60, 'Espaillat', 'ET', 0, 1),
(943, 60, 'Hato Mayor', 'HM', 0, 1),
(944, 60, 'Independencia', 'IN', 0, 1),
(945, 60, 'La Altagracia', 'AL', 0, 1),
(946, 60, 'La Romana', 'RO', 0, 1),
(947, 60, 'La Vega', 'VE', 0, 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 0, 1),
(949, 60, 'Monsenor Nouel', 'MN', 0, 1),
(950, 60, 'Monte Cristi', 'MC', 0, 1),
(951, 60, 'Monte Plata', 'MP', 0, 1),
(952, 60, 'Pedernales', 'PD', 0, 1),
(953, 60, 'Peravia (Bani)', 'PR', 0, 1),
(954, 60, 'Puerto Plata', 'PP', 0, 1),
(955, 60, 'Salcedo', 'SL', 0, 1),
(956, 60, 'Samana', 'SM', 0, 1),
(957, 60, 'Sanchez Ramirez', 'SH', 0, 1),
(958, 60, 'San Cristobal', 'SC', 0, 1),
(959, 60, 'San Jose de Ocoa', 'JO', 0, 1),
(960, 60, 'San Juan', 'SJ', 0, 1),
(961, 60, 'San Pedro de Macoris', 'PM', 0, 1),
(962, 60, 'Santiago', 'SA', 0, 1),
(963, 60, 'Santiago Rodriguez', 'ST', 0, 1),
(964, 60, 'Santo Domingo', 'SD', 0, 1),
(965, 60, 'Valverde', 'VA', 0, 1),
(966, 61, 'Aileu', 'AL', 0, 1),
(967, 61, 'Ainaro', 'AN', 0, 1),
(968, 61, 'Baucau', 'BA', 0, 1),
(969, 61, 'Bobonaro', 'BO', 0, 1),
(970, 61, 'Cova Lima', 'CO', 0, 1),
(971, 61, 'Dili', 'DI', 0, 1),
(972, 61, 'Ermera', 'ER', 0, 1),
(973, 61, 'Lautem', 'LA', 0, 1),
(974, 61, 'Liquica', 'LI', 0, 1),
(975, 61, 'Manatuto', 'MT', 0, 1),
(976, 61, 'Manufahi', 'MF', 0, 1),
(977, 61, 'Oecussi', 'OE', 0, 1),
(978, 61, 'Viqueque', 'VI', 0, 1),
(979, 62, 'Azuay', 'AZU', 0, 1),
(980, 62, 'Bolivar', 'BOL', 0, 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 0, 1),
(982, 62, 'Carchi', 'CAR', 0, 1),
(983, 62, 'Chimborazo', 'CHI', 0, 1),
(984, 62, 'Cotopaxi', 'COT', 0, 1),
(985, 62, 'El Oro', 'EOR', 0, 1),
(986, 62, 'Esmeraldas', 'ESM', 0, 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 0, 1),
(988, 62, 'Guayas', 'GUA', 0, 1),
(989, 62, 'Imbabura', 'IMB', 0, 1),
(990, 62, 'Loja', 'LOJ', 0, 1),
(991, 62, 'Los Rios', 'LRO', 0, 1),
(992, 62, 'Manab&iacute;', 'MAN', 0, 1),
(993, 62, 'Morona Santiago', 'MSA', 0, 1),
(994, 62, 'Napo', 'NAP', 0, 1),
(995, 62, 'Orellana', 'ORE', 0, 1),
(996, 62, 'Pastaza', 'PAS', 0, 1),
(997, 62, 'Pichincha', 'PIC', 0, 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 0, 1),
(999, 62, 'Tungurahua', 'TUN', 0, 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 0, 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 0, 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 0, 1),
(1003, 63, 'Al Buhayrah', 'BHY', 0, 1),
(1004, 63, 'Al Fayyum', 'FYM', 0, 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 0, 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 0, 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 0, 1),
(1008, 63, 'Al Jizah', 'JZH', 0, 1),
(1009, 63, 'Al Minufiyah', 'MFY', 0, 1),
(1010, 63, 'Al Minya', 'MNY', 0, 1),
(1011, 63, 'Al Qahirah', 'QHR', 0, 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 0, 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 0, 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 0, 1),
(1015, 63, 'As Suways', 'SWY', 0, 1),
(1016, 63, 'Aswan', 'ASW', 0, 1),
(1017, 63, 'Asyut', 'ASY', 0, 1),
(1018, 63, 'Bani Suwayf', 'BSW', 0, 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 0, 1),
(1020, 63, 'Dumyat', 'DMY', 0, 1),
(1021, 63, 'Janub Sina\'', 'JNS', 0, 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 0, 1),
(1023, 63, 'Matruh', 'MAT', 0, 1),
(1024, 63, 'Qina', 'QIN', 0, 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 0, 1),
(1026, 63, 'Suhaj', 'SUH', 0, 1),
(1027, 64, 'Ahuachapan', 'AH', 0, 1),
(1028, 64, 'Cabanas', 'CA', 0, 1),
(1029, 64, 'Chalatenango', 'CH', 0, 1),
(1030, 64, 'Cuscatlan', 'CU', 0, 1),
(1031, 64, 'La Libertad', 'LB', 0, 1),
(1032, 64, 'La Paz', 'PZ', 0, 1),
(1033, 64, 'La Union', 'UN', 0, 1),
(1034, 64, 'Morazan', 'MO', 0, 1),
(1035, 64, 'San Miguel', 'SM', 0, 1),
(1036, 64, 'San Salvador', 'SS', 0, 1),
(1037, 64, 'San Vicente', 'SV', 0, 1),
(1038, 64, 'Santa Ana', 'SA', 0, 1),
(1039, 64, 'Sonsonate', 'SO', 0, 1),
(1040, 64, 'Usulutan', 'US', 0, 1),
(1041, 65, 'Provincia Annobon', 'AN', 0, 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 0, 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 0, 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 0, 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 0, 1),
(1046, 65, 'Provincia Litoral', 'LI', 0, 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 0, 1),
(1048, 66, 'Central (Maekel)', 'MA', 0, 1),
(1049, 66, 'Anseba (Keren)', 'KE', 0, 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 0, 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 0, 1),
(1052, 66, 'Southern (Debub)', 'DE', 0, 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 0, 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 0, 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 0, 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 0, 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 0, 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 0, 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 0, 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 0, 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 0, 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 0, 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 0, 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 0, 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 0, 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 0, 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 0, 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 0, 1),
(1069, 68, 'Afar', 'AF', 0, 1),
(1070, 68, 'Amhara', 'AH', 0, 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 0, 1),
(1072, 68, 'Gambela', 'GB', 0, 1),
(1073, 68, 'Hariai', 'HR', 0, 1),
(1074, 68, 'Oromia', 'OR', 0, 1),
(1075, 68, 'Somali', 'SM', 0, 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 0, 1),
(1077, 68, 'Tigray', 'TG', 0, 1),
(1078, 68, 'Addis Ababa', 'AA', 0, 1),
(1079, 68, 'Dire Dawa', 'DD', 0, 1),
(1080, 71, 'Central Division', 'C', 0, 1),
(1081, 71, 'Northern Division', 'N', 0, 1),
(1082, 71, 'Eastern Division', 'E', 0, 1),
(1083, 71, 'Western Division', 'W', 0, 1),
(1084, 71, 'Rotuma', 'R', 0, 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 0, 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 0, 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 0, 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 0, 1),
(1089, 72, 'Lapin lääni', 'LA', 0, 1),
(1090, 72, 'Oulun lääni', 'OU', 0, 1),
(1114, 74, 'Ain', '01', 0, 1),
(1115, 74, 'Aisne', '02', 0, 1),
(1116, 74, 'Allier', '03', 0, 1),
(1117, 74, 'Alpes de Haute Provence', '04', 0, 1),
(1118, 74, 'Hautes-Alpes', '05', 0, 1),
(1119, 74, 'Alpes Maritimes', '06', 0, 1),
(1120, 74, 'Ard&egrave;che', '07', 0, 1),
(1121, 74, 'Ardennes', '08', 0, 1),
(1122, 74, 'Ari&egrave;ge', '09', 0, 1),
(1123, 74, 'Aube', '10', 0, 1),
(1124, 74, 'Aude', '11', 0, 1),
(1125, 74, 'Aveyron', '12', 0, 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 0, 1),
(1127, 74, 'Calvados', '14', 0, 1),
(1128, 74, 'Cantal', '15', 0, 1),
(1129, 74, 'Charente', '16', 0, 1),
(1130, 74, 'Charente Maritime', '17', 0, 1),
(1131, 74, 'Cher', '18', 0, 1),
(1132, 74, 'Corr&egrave;ze', '19', 0, 1),
(1133, 74, 'Corse du Sud', '2A', 0, 1),
(1134, 74, 'Haute Corse', '2B', 0, 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 0, 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 0, 1),
(1137, 74, 'Creuse', '23', 0, 1),
(1138, 74, 'Dordogne', '24', 0, 1),
(1139, 74, 'Doubs', '25', 0, 1),
(1140, 74, 'Dr&ocirc;me', '26', 0, 1),
(1141, 74, 'Eure', '27', 0, 1),
(1142, 74, 'Eure et Loir', '28', 0, 1),
(1143, 74, 'Finist&egrave;re', '29', 0, 1),
(1144, 74, 'Gard', '30', 0, 1),
(1145, 74, 'Haute Garonne', '31', 0, 1),
(1146, 74, 'Gers', '32', 0, 1),
(1147, 74, 'Gironde', '33', 0, 1),
(1148, 74, 'H&eacute;rault', '34', 0, 1),
(1149, 74, 'Ille et Vilaine', '35', 0, 1),
(1150, 74, 'Indre', '36', 0, 1),
(1151, 74, 'Indre et Loire', '37', 0, 1),
(1152, 74, 'Is&eacute;re', '38', 0, 1),
(1153, 74, 'Jura', '39', 0, 1),
(1154, 74, 'Landes', '40', 0, 1),
(1155, 74, 'Loir et Cher', '41', 0, 1),
(1156, 74, 'Loire', '42', 0, 1),
(1157, 74, 'Haute Loire', '43', 0, 1),
(1158, 74, 'Loire Atlantique', '44', 0, 1),
(1159, 74, 'Loiret', '45', 0, 1),
(1160, 74, 'Lot', '46', 0, 1),
(1161, 74, 'Lot et Garonne', '47', 0, 1),
(1162, 74, 'Loz&egrave;re', '48', 0, 1),
(1163, 74, 'Maine et Loire', '49', 0, 1),
(1164, 74, 'Manche', '50', 0, 1),
(1165, 74, 'Marne', '51', 0, 1),
(1166, 74, 'Haute Marne', '52', 0, 1),
(1167, 74, 'Mayenne', '53', 0, 1),
(1168, 74, 'Meurthe et Moselle', '54', 0, 1),
(1169, 74, 'Meuse', '55', 0, 1),
(1170, 74, 'Morbihan', '56', 0, 1),
(1171, 74, 'Moselle', '57', 0, 1),
(1172, 74, 'Ni&egrave;vre', '58', 0, 1),
(1173, 74, 'Nord', '59', 0, 1),
(1174, 74, 'Oise', '60', 0, 1),
(1175, 74, 'Orne', '61', 0, 1),
(1176, 74, 'Pas de Calais', '62', 0, 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 0, 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 0, 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 0, 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 0, 1),
(1181, 74, 'Bas Rhin', '67', 0, 1),
(1182, 74, 'Haut Rhin', '68', 0, 1),
(1183, 74, 'Rh&ocirc;ne', '69', 0, 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 0, 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 0, 1),
(1186, 74, 'Sarthe', '72', 0, 1),
(1187, 74, 'Savoie', '73', 0, 1),
(1188, 74, 'Haute Savoie', '74', 0, 1),
(1189, 74, 'Paris', '75', 0, 1),
(1190, 74, 'Seine Maritime', '76', 0, 1),
(1191, 74, 'Seine et Marne', '77', 0, 1),
(1192, 74, 'Yvelines', '78', 0, 1),
(1193, 74, 'Deux S&egrave;vres', '79', 0, 1),
(1194, 74, 'Somme', '80', 0, 1),
(1195, 74, 'Tarn', '81', 0, 1),
(1196, 74, 'Tarn et Garonne', '82', 0, 1),
(1197, 74, 'Var', '83', 0, 1),
(1198, 74, 'Vaucluse', '84', 0, 1),
(1199, 74, 'Vend&eacute;e', '85', 0, 1),
(1200, 74, 'Vienne', '86', 0, 1),
(1201, 74, 'Haute Vienne', '87', 0, 1),
(1202, 74, 'Vosges', '88', 0, 1),
(1203, 74, 'Yonne', '89', 0, 1),
(1204, 74, 'Territoire de Belfort', '90', 0, 1),
(1205, 74, 'Essonne', '91', 0, 1),
(1206, 74, 'Hauts de Seine', '92', 0, 1),
(1207, 74, 'Seine St-Denis', '93', 0, 1),
(1208, 74, 'Val de Marne', '94', 0, 1),
(1209, 74, 'Val d\'Oise', '95', 0, 1),
(1210, 76, 'Archipel des Marquises', 'M', 0, 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 0, 1),
(1212, 76, 'Archipel des Tubuai', 'I', 0, 1),
(1213, 76, 'Iles du Vent', 'V', 0, 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 0, 1),
(1215, 77, 'Iles Crozet', 'C', 0, 1),
(1216, 77, 'Iles Kerguelen', 'K', 0, 1),
(1217, 77, 'Ile Amsterdam', 'A', 0, 1),
(1218, 77, 'Ile Saint-Paul', 'P', 0, 1),
(1219, 77, 'Adelie Land', 'D', 0, 1),
(1220, 78, 'Estuaire', 'ES', 0, 1),
(1221, 78, 'Haut-Ogooue', 'HO', 0, 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 0, 1),
(1223, 78, 'Ngounie', 'NG', 0, 1),
(1224, 78, 'Nyanga', 'NY', 0, 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 0, 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 0, 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 0, 1),
(1228, 78, 'Woleu-Ntem', 'WN', 0, 1),
(1229, 79, 'Banjul', 'BJ', 0, 1),
(1230, 79, 'Basse', 'BS', 0, 1),
(1231, 79, 'Brikama', 'BR', 0, 1),
(1232, 79, 'Janjangbure', 'JA', 0, 1),
(1233, 79, 'Kanifeng', 'KA', 0, 1),
(1234, 79, 'Kerewan', 'KE', 0, 1),
(1235, 79, 'Kuntaur', 'KU', 0, 1),
(1236, 79, 'Mansakonko', 'MA', 0, 1),
(1237, 79, 'Lower River', 'LR', 0, 1),
(1238, 79, 'Central River', 'CR', 0, 1),
(1239, 79, 'North Bank', 'NB', 0, 1),
(1240, 79, 'Upper River', 'UR', 0, 1),
(1241, 79, 'Western', 'WE', 0, 1),
(1242, 80, 'Abkhazia', 'AB', 0, 1),
(1243, 80, 'Ajaria', 'AJ', 0, 1),
(1244, 80, 'Tbilisi', 'TB', 0, 1),
(1245, 80, 'Guria', 'GU', 0, 1),
(1246, 80, 'Imereti', 'IM', 0, 1),
(1247, 80, 'Kakheti', 'KA', 0, 1),
(1248, 80, 'Kvemo Kartli', 'KK', 0, 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 0, 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 0, 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 0, 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 0, 1),
(1253, 80, 'Shida Kartli', 'SK', 0, 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 0, 1),
(1255, 81, 'Bayern', 'BAY', 0, 1),
(1256, 81, 'Berlin', 'BER', 0, 1),
(1257, 81, 'Brandenburg', 'BRG', 0, 1),
(1258, 81, 'Bremen', 'BRE', 0, 1),
(1259, 81, 'Hamburg', 'HAM', 0, 1),
(1260, 81, 'Hessen', 'HES', 0, 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 0, 1),
(1262, 81, 'Niedersachsen', 'NDS', 0, 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 0, 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 0, 1),
(1265, 81, 'Saarland', 'SAR', 0, 1),
(1266, 81, 'Sachsen', 'SAS', 0, 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 0, 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 0, 1),
(1269, 81, 'Thüringen', 'THE', 0, 1),
(1270, 82, 'Ashanti Region', 'AS', 0, 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 0, 1),
(1272, 82, 'Central Region', 'CE', 0, 1),
(1273, 82, 'Eastern Region', 'EA', 0, 1),
(1274, 82, 'Greater Accra Region', 'GA', 0, 1),
(1275, 82, 'Northern Region', 'NO', 0, 1),
(1276, 82, 'Upper East Region', 'UE', 0, 1),
(1277, 82, 'Upper West Region', 'UW', 0, 1),
(1278, 82, 'Volta Region', 'VO', 0, 1),
(1279, 82, 'Western Region', 'WE', 0, 1),
(1280, 84, 'Attica', 'AT', 0, 1),
(1281, 84, 'Central Greece', 'CN', 0, 1),
(1282, 84, 'Central Macedonia', 'CM', 0, 1),
(1283, 84, 'Crete', 'CR', 0, 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 0, 1),
(1285, 84, 'Epirus', 'EP', 0, 1),
(1286, 84, 'Ionian Islands', 'II', 0, 1),
(1287, 84, 'North Aegean', 'NA', 0, 1),
(1288, 84, 'Peloponnesos', 'PP', 0, 1),
(1289, 84, 'South Aegean', 'SA', 0, 1),
(1290, 84, 'Thessaly', 'TH', 0, 1),
(1291, 84, 'West Greece', 'WG', 0, 1),
(1292, 84, 'West Macedonia', 'WM', 0, 1),
(1293, 85, 'Avannaa', 'A', 0, 1),
(1294, 85, 'Tunu', 'T', 0, 1),
(1295, 85, 'Kitaa', 'K', 0, 1),
(1296, 86, 'Saint Andrew', 'A', 0, 1),
(1297, 86, 'Saint David', 'D', 0, 1),
(1298, 86, 'Saint George', 'G', 0, 1),
(1299, 86, 'Saint John', 'J', 0, 1),
(1300, 86, 'Saint Mark', 'M', 0, 1),
(1301, 86, 'Saint Patrick', 'P', 0, 1),
(1302, 86, 'Carriacou', 'C', 0, 1),
(1303, 86, 'Petit Martinique', 'Q', 0, 1),
(1304, 89, 'Alta Verapaz', 'AV', 0, 1),
(1305, 89, 'Baja Verapaz', 'BV', 0, 1),
(1306, 89, 'Chimaltenango', 'CM', 0, 1),
(1307, 89, 'Chiquimula', 'CQ', 0, 1),
(1308, 89, 'El Peten', 'PE', 0, 1),
(1309, 89, 'El Progreso', 'PR', 0, 1),
(1310, 89, 'El Quiche', 'QC', 0, 1),
(1311, 89, 'Escuintla', 'ES', 0, 1),
(1312, 89, 'Guatemala', 'GU', 0, 1),
(1313, 89, 'Huehuetenango', 'HU', 0, 1),
(1314, 89, 'Izabal', 'IZ', 0, 1),
(1315, 89, 'Jalapa', 'JA', 0, 1),
(1316, 89, 'Jutiapa', 'JU', 0, 1),
(1317, 89, 'Quetzaltenango', 'QZ', 0, 1),
(1318, 89, 'Retalhuleu', 'RE', 0, 1),
(1319, 89, 'Sacatepequez', 'ST', 0, 1),
(1320, 89, 'San Marcos', 'SM', 0, 1),
(1321, 89, 'Santa Rosa', 'SR', 0, 1),
(1322, 89, 'Solola', 'SO', 0, 1),
(1323, 89, 'Suchitepequez', 'SU', 0, 1),
(1324, 89, 'Totonicapan', 'TO', 0, 1),
(1325, 89, 'Zacapa', 'ZA', 0, 1),
(1326, 90, 'Conakry', 'CNK', 0, 1),
(1327, 90, 'Beyla', 'BYL', 0, 1),
(1328, 90, 'Boffa', 'BFA', 0, 1),
(1329, 90, 'Boke', 'BOK', 0, 1),
(1330, 90, 'Coyah', 'COY', 0, 1),
(1331, 90, 'Dabola', 'DBL', 0, 1),
(1332, 90, 'Dalaba', 'DLB', 0, 1),
(1333, 90, 'Dinguiraye', 'DGR', 0, 1),
(1334, 90, 'Dubreka', 'DBR', 0, 1),
(1335, 90, 'Faranah', 'FRN', 0, 1),
(1336, 90, 'Forecariah', 'FRC', 0, 1),
(1337, 90, 'Fria', 'FRI', 0, 1),
(1338, 90, 'Gaoual', 'GAO', 0, 1),
(1339, 90, 'Gueckedou', 'GCD', 0, 1),
(1340, 90, 'Kankan', 'KNK', 0, 1),
(1341, 90, 'Kerouane', 'KRN', 0, 1),
(1342, 90, 'Kindia', 'KND', 0, 1),
(1343, 90, 'Kissidougou', 'KSD', 0, 1),
(1344, 90, 'Koubia', 'KBA', 0, 1),
(1345, 90, 'Koundara', 'KDA', 0, 1),
(1346, 90, 'Kouroussa', 'KRA', 0, 1),
(1347, 90, 'Labe', 'LAB', 0, 1),
(1348, 90, 'Lelouma', 'LLM', 0, 1),
(1349, 90, 'Lola', 'LOL', 0, 1),
(1350, 90, 'Macenta', 'MCT', 0, 1),
(1351, 90, 'Mali', 'MAL', 0, 1),
(1352, 90, 'Mamou', 'MAM', 0, 1),
(1353, 90, 'Mandiana', 'MAN', 0, 1),
(1354, 90, 'Nzerekore', 'NZR', 0, 1),
(1355, 90, 'Pita', 'PIT', 0, 1),
(1356, 90, 'Siguiri', 'SIG', 0, 1),
(1357, 90, 'Telimele', 'TLM', 0, 1),
(1358, 90, 'Tougue', 'TOG', 0, 1),
(1359, 90, 'Yomou', 'YOM', 0, 1),
(1360, 91, 'Bafata Region', 'BF', 0, 1),
(1361, 91, 'Biombo Region', 'BB', 0, 1),
(1362, 91, 'Bissau Region', 'BS', 0, 1),
(1363, 91, 'Bolama Region', 'BL', 0, 1),
(1364, 91, 'Cacheu Region', 'CA', 0, 1),
(1365, 91, 'Gabu Region', 'GA', 0, 1),
(1366, 91, 'Oio Region', 'OI', 0, 1),
(1367, 91, 'Quinara Region', 'QU', 0, 1),
(1368, 91, 'Tombali Region', 'TO', 0, 1),
(1369, 92, 'Barima-Waini', 'BW', 0, 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 0, 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 0, 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 0, 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 0, 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 0, 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 0, 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 0, 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 0, 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 0, 1),
(1379, 93, 'Artibonite', 'AR', 0, 1),
(1380, 93, 'Centre', 'CE', 0, 1),
(1381, 93, 'Grand\'Anse', 'GA', 0, 1),
(1382, 93, 'Nord', 'ND', 0, 1),
(1383, 93, 'Nord-Est', 'NE', 0, 1),
(1384, 93, 'Nord-Ouest', 'NO', 0, 1),
(1385, 93, 'Ouest', 'OU', 0, 1),
(1386, 93, 'Sud', 'SD', 0, 1),
(1387, 93, 'Sud-Est', 'SE', 0, 1),
(1388, 94, 'Flat Island', 'F', 0, 1),
(1389, 94, 'McDonald Island', 'M', 0, 1),
(1390, 94, 'Shag Island', 'S', 0, 1),
(1391, 94, 'Heard Island', 'H', 0, 1),
(1392, 95, 'Atlantida', 'AT', 0, 1),
(1393, 95, 'Choluteca', 'CH', 0, 1),
(1394, 95, 'Colon', 'CL', 0, 1),
(1395, 95, 'Comayagua', 'CM', 0, 1),
(1396, 95, 'Copan', 'CP', 0, 1),
(1397, 95, 'Cortes', 'CR', 0, 1),
(1398, 95, 'El Paraiso', 'PA', 0, 1),
(1399, 95, 'Francisco Morazan', 'FM', 0, 1),
(1400, 95, 'Gracias a Dios', 'GD', 0, 1),
(1401, 95, 'Intibuca', 'IN', 0, 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 0, 1),
(1403, 95, 'La Paz', 'PZ', 0, 1),
(1404, 95, 'Lempira', 'LE', 0, 1),
(1405, 95, 'Ocotepeque', 'OC', 0, 1),
(1406, 95, 'Olancho', 'OL', 0, 1),
(1407, 95, 'Santa Barbara', 'SB', 0, 1),
(1408, 95, 'Valle', 'VA', 0, 1),
(1409, 95, 'Yoro', 'YO', 0, 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 0, 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 0, 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 0, 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 0, 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 0, 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 0, 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 0, 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 0, 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 0, 1),
(1419, 96, 'Islands New Territories', 'NIS', 0, 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 0, 1),
(1421, 96, 'North New Territories', 'NNO', 0, 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 0, 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 0, 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 0, 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 0, 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 0, 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 0, 1),
(1467, 98, 'Austurland', 'AL', 0, 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 0, 1),
(1469, 98, 'Norourland eystra', 'NE', 0, 1),
(1470, 98, 'Norourland vestra', 'NV', 0, 1),
(1471, 98, 'Suourland', 'SL', 0, 1),
(1472, 98, 'Suournes', 'SN', 0, 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `delivery_price`, `status`) VALUES
(1473, 98, 'Vestfiroir', 'VF', 0, 1),
(1474, 98, 'Vesturland', 'VL', 0, 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 0, 1),
(1476, 99, 'Andhra Pradesh', 'AP', 0, 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 0, 1),
(1478, 99, 'Assam', 'AS', 0, 1),
(1479, 99, 'Bihar', 'BI', 0, 1),
(1480, 99, 'Chandigarh', 'CH', 0, 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 0, 1),
(1482, 99, 'Daman and Diu', 'DM', 0, 1),
(1483, 99, 'Delhi', 'DE', 0, 1),
(1484, 99, 'Goa', 'GO', 0, 1),
(1485, 99, 'Gujarat', 'GU', 0, 1),
(1486, 99, 'Haryana', 'HA', 0, 1),
(1487, 99, 'Himachal Pradesh', 'HP', 0, 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 0, 1),
(1489, 99, 'Karnataka', 'KA', 0, 1),
(1490, 99, 'Kerala', 'KE', 0, 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 0, 1),
(1492, 99, 'Madhya Pradesh', 'MP', 0, 1),
(1493, 99, 'Maharashtra', 'MA', 0, 1),
(1494, 99, 'Manipur', 'MN', 0, 1),
(1495, 99, 'Meghalaya', 'ME', 0, 1),
(1496, 99, 'Mizoram', 'MI', 0, 1),
(1497, 99, 'Nagaland', 'NA', 0, 1),
(1498, 99, 'Orissa', 'OR', 0, 1),
(1499, 99, 'Puducherry', 'PO', 0, 1),
(1500, 99, 'Punjab', 'PU', 0, 1),
(1501, 99, 'Rajasthan', 'RA', 0, 1),
(1502, 99, 'Sikkim', 'SI', 0, 1),
(1503, 99, 'Tamil Nadu', 'TN', 0, 1),
(1504, 99, 'Tripura', 'TR', 0, 1),
(1505, 99, 'Uttar Pradesh', 'UP', 0, 1),
(1506, 99, 'West Bengal', 'WB', 0, 1),
(1507, 100, 'Aceh', 'AC', 0, 1),
(1508, 100, 'Bali', 'BA', 0, 1),
(1509, 100, 'Banten', 'BT', 0, 1),
(1510, 100, 'Bengkulu', 'BE', 0, 1),
(1511, 100, 'Kalimantan Utara', 'BD', 0, 1),
(1512, 100, 'Gorontalo', 'GO', 0, 1),
(1513, 100, 'Jakarta', 'JK', 0, 1),
(1514, 100, 'Jambi', 'JA', 0, 1),
(1515, 100, 'Jawa Barat', 'JB', 0, 1),
(1516, 100, 'Jawa Tengah', 'JT', 0, 1),
(1517, 100, 'Jawa Timur', 'JI', 0, 1),
(1518, 100, 'Kalimantan Barat', 'KB', 0, 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 0, 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 0, 1),
(1521, 100, 'Kalimantan Timur', 'KI', 0, 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 0, 1),
(1523, 100, 'Lampung', 'LA', 0, 1),
(1524, 100, 'Maluku', 'MA', 0, 1),
(1525, 100, 'Maluku Utara', 'MU', 0, 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 0, 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 0, 1),
(1528, 100, 'Papua', 'PA', 0, 1),
(1529, 100, 'Riau', 'RI', 0, 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 0, 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 0, 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 0, 1),
(1533, 100, 'Sulawesi Utara', 'SA', 0, 1),
(1534, 100, 'Sumatera Barat', 'SB', 0, 1),
(1535, 100, 'Sumatera Selatan', 'SS', 0, 1),
(1536, 100, 'Sumatera Utara', 'SU', 0, 1),
(1537, 100, 'Yogyakarta', 'YO', 0, 1),
(1538, 101, 'Tehran', 'TEH', 0, 1),
(1539, 101, 'Qom', 'QOM', 0, 1),
(1540, 101, 'Markazi', 'MKZ', 0, 1),
(1541, 101, 'Qazvin', 'QAZ', 0, 1),
(1542, 101, 'Gilan', 'GIL', 0, 1),
(1543, 101, 'Ardabil', 'ARD', 0, 1),
(1544, 101, 'Zanjan', 'ZAN', 0, 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 0, 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 0, 1),
(1547, 101, 'Kurdistan', 'KRD', 0, 1),
(1548, 101, 'Hamadan', 'HMD', 0, 1),
(1549, 101, 'Kermanshah', 'KRM', 0, 1),
(1550, 101, 'Ilam', 'ILM', 0, 1),
(1551, 101, 'Lorestan', 'LRS', 0, 1),
(1552, 101, 'Khuzestan', 'KZT', 0, 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 0, 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 0, 1),
(1555, 101, 'Bushehr', 'BSH', 0, 1),
(1556, 101, 'Fars', 'FAR', 0, 1),
(1557, 101, 'Hormozgan', 'HRM', 0, 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 0, 1),
(1559, 101, 'Kerman', 'KRB', 0, 1),
(1560, 101, 'Yazd', 'YZD', 0, 1),
(1561, 101, 'Esfahan', 'EFH', 0, 1),
(1562, 101, 'Semnan', 'SMN', 0, 1),
(1563, 101, 'Mazandaran', 'MZD', 0, 1),
(1564, 101, 'Golestan', 'GLS', 0, 1),
(1565, 101, 'North Khorasan', 'NKH', 0, 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 0, 1),
(1567, 101, 'South Khorasan', 'SKH', 0, 1),
(1568, 102, 'Baghdad', 'BD', 0, 1),
(1569, 102, 'Salah ad Din', 'SD', 0, 1),
(1570, 102, 'Diyala', 'DY', 0, 1),
(1571, 102, 'Wasit', 'WS', 0, 1),
(1572, 102, 'Maysan', 'MY', 0, 1),
(1573, 102, 'Al Basrah', 'BA', 0, 1),
(1574, 102, 'Dhi Qar', 'DQ', 0, 1),
(1575, 102, 'Al Muthanna', 'MU', 0, 1),
(1576, 102, 'Al Qadisyah', 'QA', 0, 1),
(1577, 102, 'Babil', 'BB', 0, 1),
(1578, 102, 'Al Karbala', 'KB', 0, 1),
(1579, 102, 'An Najaf', 'NJ', 0, 1),
(1580, 102, 'Al Anbar', 'AB', 0, 1),
(1581, 102, 'Ninawa', 'NN', 0, 1),
(1582, 102, 'Dahuk', 'DH', 0, 1),
(1583, 102, 'Arbil', 'AL', 0, 1),
(1584, 102, 'At Ta\'mim', 'TM', 0, 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 0, 1),
(1586, 103, 'Carlow', 'CA', 0, 1),
(1587, 103, 'Cavan', 'CV', 0, 1),
(1588, 103, 'Clare', 'CL', 0, 1),
(1589, 103, 'Cork', 'CO', 0, 1),
(1590, 103, 'Donegal', 'DO', 0, 1),
(1591, 103, 'Dublin', 'DU', 0, 1),
(1592, 103, 'Galway', 'GA', 0, 1),
(1593, 103, 'Kerry', 'KE', 0, 1),
(1594, 103, 'Kildare', 'KI', 0, 1),
(1595, 103, 'Kilkenny', 'KL', 0, 1),
(1596, 103, 'Laois', 'LA', 0, 1),
(1597, 103, 'Leitrim', 'LE', 0, 1),
(1598, 103, 'Limerick', 'LI', 0, 1),
(1599, 103, 'Longford', 'LO', 0, 1),
(1600, 103, 'Louth', 'LU', 0, 1),
(1601, 103, 'Mayo', 'MA', 0, 1),
(1602, 103, 'Meath', 'ME', 0, 1),
(1603, 103, 'Monaghan', 'MO', 0, 1),
(1604, 103, 'Offaly', 'OF', 0, 1),
(1605, 103, 'Roscommon', 'RO', 0, 1),
(1606, 103, 'Sligo', 'SL', 0, 1),
(1607, 103, 'Tipperary', 'TI', 0, 1),
(1608, 103, 'Waterford', 'WA', 0, 1),
(1609, 103, 'Westmeath', 'WE', 0, 1),
(1610, 103, 'Wexford', 'WX', 0, 1),
(1611, 103, 'Wicklow', 'WI', 0, 1),
(1612, 104, 'Be\'er Sheva', 'BS', 0, 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 0, 1),
(1614, 104, 'Eilat and Arava', 'EA', 0, 1),
(1615, 104, 'Galil', 'GA', 0, 1),
(1616, 104, 'Haifa', 'HA', 0, 1),
(1617, 104, 'Jehuda Mountains', 'JM', 0, 1),
(1618, 104, 'Jerusalem', 'JE', 0, 1),
(1619, 104, 'Negev', 'NE', 0, 1),
(1620, 104, 'Semaria', 'SE', 0, 1),
(1621, 104, 'Sharon', 'SH', 0, 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 0, 1),
(3860, 105, 'Caltanissetta', 'CL', 0, 1),
(3842, 105, 'Agrigento', 'AG', 0, 1),
(3843, 105, 'Alessandria', 'AL', 0, 1),
(3844, 105, 'Ancona', 'AN', 0, 1),
(3845, 105, 'Aosta', 'AO', 0, 1),
(3846, 105, 'Arezzo', 'AR', 0, 1),
(3847, 105, 'Ascoli Piceno', 'AP', 0, 1),
(3848, 105, 'Asti', 'AT', 0, 1),
(3849, 105, 'Avellino', 'AV', 0, 1),
(3850, 105, 'Bari', 'BA', 0, 1),
(3851, 105, 'Belluno', 'BL', 0, 1),
(3852, 105, 'Benevento', 'BN', 0, 1),
(3853, 105, 'Bergamo', 'BG', 0, 1),
(3854, 105, 'Biella', 'BI', 0, 1),
(3855, 105, 'Bologna', 'BO', 0, 1),
(3856, 105, 'Bolzano', 'BZ', 0, 1),
(3857, 105, 'Brescia', 'BS', 0, 1),
(3858, 105, 'Brindisi', 'BR', 0, 1),
(3859, 105, 'Cagliari', 'CA', 0, 1),
(1643, 106, 'Clarendon Parish', 'CLA', 0, 1),
(1644, 106, 'Hanover Parish', 'HAN', 0, 1),
(1645, 106, 'Kingston Parish', 'KIN', 0, 1),
(1646, 106, 'Manchester Parish', 'MAN', 0, 1),
(1647, 106, 'Portland Parish', 'POR', 0, 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 0, 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 0, 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 0, 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 0, 1),
(1652, 106, 'Saint James Parish', 'JAM', 0, 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 0, 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 0, 1),
(1655, 106, 'Trelawny Parish', 'TRL', 0, 1),
(1656, 106, 'Westmoreland Parish', 'WML', 0, 1),
(1657, 107, 'Aichi', 'AI', 0, 1),
(1658, 107, 'Akita', 'AK', 0, 1),
(1659, 107, 'Aomori', 'AO', 0, 1),
(1660, 107, 'Chiba', 'CH', 0, 1),
(1661, 107, 'Ehime', 'EH', 0, 1),
(1662, 107, 'Fukui', 'FK', 0, 1),
(1663, 107, 'Fukuoka', 'FU', 0, 1),
(1664, 107, 'Fukushima', 'FS', 0, 1),
(1665, 107, 'Gifu', 'GI', 0, 1),
(1666, 107, 'Gumma', 'GU', 0, 1),
(1667, 107, 'Hiroshima', 'HI', 0, 1),
(1668, 107, 'Hokkaido', 'HO', 0, 1),
(1669, 107, 'Hyogo', 'HY', 0, 1),
(1670, 107, 'Ibaraki', 'IB', 0, 1),
(1671, 107, 'Ishikawa', 'IS', 0, 1),
(1672, 107, 'Iwate', 'IW', 0, 1),
(1673, 107, 'Kagawa', 'KA', 0, 1),
(1674, 107, 'Kagoshima', 'KG', 0, 1),
(1675, 107, 'Kanagawa', 'KN', 0, 1),
(1676, 107, 'Kochi', 'KO', 0, 1),
(1677, 107, 'Kumamoto', 'KU', 0, 1),
(1678, 107, 'Kyoto', 'KY', 0, 1),
(1679, 107, 'Mie', 'MI', 0, 1),
(1680, 107, 'Miyagi', 'MY', 0, 1),
(1681, 107, 'Miyazaki', 'MZ', 0, 1),
(1682, 107, 'Nagano', 'NA', 0, 1),
(1683, 107, 'Nagasaki', 'NG', 0, 1),
(1684, 107, 'Nara', 'NR', 0, 1),
(1685, 107, 'Niigata', 'NI', 0, 1),
(1686, 107, 'Oita', 'OI', 0, 1),
(1687, 107, 'Okayama', 'OK', 0, 1),
(1688, 107, 'Okinawa', 'ON', 0, 1),
(1689, 107, 'Osaka', 'OS', 0, 1),
(1690, 107, 'Saga', 'SA', 0, 1),
(1691, 107, 'Saitama', 'SI', 0, 1),
(1692, 107, 'Shiga', 'SH', 0, 1),
(1693, 107, 'Shimane', 'SM', 0, 1),
(1694, 107, 'Shizuoka', 'SZ', 0, 1),
(1695, 107, 'Tochigi', 'TO', 0, 1),
(1696, 107, 'Tokushima', 'TS', 0, 1),
(1697, 107, 'Tokyo', 'TK', 0, 1),
(1698, 107, 'Tottori', 'TT', 0, 1),
(1699, 107, 'Toyama', 'TY', 0, 1),
(1700, 107, 'Wakayama', 'WA', 0, 1),
(1701, 107, 'Yamagata', 'YA', 0, 1),
(1702, 107, 'Yamaguchi', 'YM', 0, 1),
(1703, 107, 'Yamanashi', 'YN', 0, 1),
(1704, 108, '\'Amman', 'AM', 0, 1),
(1705, 108, 'Ajlun', 'AJ', 0, 1),
(1706, 108, 'Al \'Aqabah', 'AA', 0, 1),
(1707, 108, 'Al Balqa\'', 'AB', 0, 1),
(1708, 108, 'Al Karak', 'AK', 0, 1),
(1709, 108, 'Al Mafraq', 'AL', 0, 1),
(1710, 108, 'At Tafilah', 'AT', 0, 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 0, 1),
(1712, 108, 'Irbid', 'IR', 0, 1),
(1713, 108, 'Jarash', 'JA', 0, 1),
(1714, 108, 'Ma\'an', 'MA', 0, 1),
(1715, 108, 'Madaba', 'MD', 0, 1),
(1716, 109, 'Almaty', 'AL', 0, 1),
(1717, 109, 'Almaty City', 'AC', 0, 1),
(1718, 109, 'Aqmola', 'AM', 0, 1),
(1719, 109, 'Aqtobe', 'AQ', 0, 1),
(1720, 109, 'Astana City', 'AS', 0, 1),
(1721, 109, 'Atyrau', 'AT', 0, 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 0, 1),
(1723, 109, 'Bayqongyr City', 'BY', 0, 1),
(1724, 109, 'Mangghystau', 'MA', 0, 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 0, 1),
(1726, 109, 'Pavlodar', 'PA', 0, 1),
(1727, 109, 'Qaraghandy', 'QA', 0, 1),
(1728, 109, 'Qostanay', 'QO', 0, 1),
(1729, 109, 'Qyzylorda', 'QY', 0, 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 0, 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 0, 1),
(1732, 109, 'Zhambyl', 'ZH', 0, 1),
(1733, 110, 'Central', 'CE', 0, 1),
(1734, 110, 'Coast', 'CO', 0, 1),
(1735, 110, 'Eastern', 'EA', 0, 1),
(1736, 110, 'Nairobi Area', 'NA', 0, 1),
(1737, 110, 'North Eastern', 'NE', 0, 1),
(1738, 110, 'Nyanza', 'NY', 0, 1),
(1739, 110, 'Rift Valley', 'RV', 0, 1),
(1740, 110, 'Western', 'WE', 0, 1),
(1741, 111, 'Abaiang', 'AG', 0, 1),
(1742, 111, 'Abemama', 'AM', 0, 1),
(1743, 111, 'Aranuka', 'AK', 0, 1),
(1744, 111, 'Arorae', 'AO', 0, 1),
(1745, 111, 'Banaba', 'BA', 0, 1),
(1746, 111, 'Beru', 'BE', 0, 1),
(1747, 111, 'Butaritari', 'bT', 0, 1),
(1748, 111, 'Kanton', 'KA', 0, 1),
(1749, 111, 'Kiritimati', 'KR', 0, 1),
(1750, 111, 'Kuria', 'KU', 0, 1),
(1751, 111, 'Maiana', 'MI', 0, 1),
(1752, 111, 'Makin', 'MN', 0, 1),
(1753, 111, 'Marakei', 'ME', 0, 1),
(1754, 111, 'Nikunau', 'NI', 0, 1),
(1755, 111, 'Nonouti', 'NO', 0, 1),
(1756, 111, 'Onotoa', 'ON', 0, 1),
(1757, 111, 'Tabiteuea', 'TT', 0, 1),
(1758, 111, 'Tabuaeran', 'TR', 0, 1),
(1759, 111, 'Tamana', 'TM', 0, 1),
(1760, 111, 'Tarawa', 'TW', 0, 1),
(1761, 111, 'Teraina', 'TE', 0, 1),
(1762, 112, 'Chagang-do', 'CHA', 0, 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 0, 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 0, 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 0, 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 0, 1),
(1767, 112, 'Kangwon-do', 'KAN', 0, 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 0, 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 0, 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 0, 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 0, 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 0, 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 0, 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 0, 1),
(1775, 113, 'Cheju-do', 'CD', 0, 1),
(1776, 113, 'Cholla-bukto', 'CB', 0, 1),
(1777, 113, 'Cholla-namdo', 'CN', 0, 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 0, 1),
(1779, 113, 'Kangwon-do', 'KA', 0, 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 0, 1),
(1781, 113, 'Kyonggi-do', 'KD', 0, 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 0, 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 0, 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 0, 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 0, 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 0, 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 0, 1),
(1788, 114, 'Al \'Asimah', 'AL', 0, 1),
(1789, 114, 'Al Ahmadi', 'AA', 0, 1),
(1790, 114, 'Al Farwaniyah', 'AF', 0, 1),
(1791, 114, 'Al Jahra\'', 'AJ', 0, 1),
(1792, 114, 'Hawalli', 'HA', 0, 1),
(1793, 115, 'Bishkek', 'GB', 0, 1),
(1794, 115, 'Batken', 'B', 0, 1),
(1795, 115, 'Chu', 'C', 0, 1),
(1796, 115, 'Jalal-Abad', 'J', 0, 1),
(1797, 115, 'Naryn', 'N', 0, 1),
(1798, 115, 'Osh', 'O', 0, 1),
(1799, 115, 'Talas', 'T', 0, 1),
(1800, 115, 'Ysyk-Kol', 'Y', 0, 1),
(1801, 116, 'Vientiane', 'VT', 0, 1),
(1802, 116, 'Attapu', 'AT', 0, 1),
(1803, 116, 'Bokeo', 'BK', 0, 1),
(1804, 116, 'Bolikhamxai', 'BL', 0, 1),
(1805, 116, 'Champasak', 'CH', 0, 1),
(1806, 116, 'Houaphan', 'HO', 0, 1),
(1807, 116, 'Khammouan', 'KH', 0, 1),
(1808, 116, 'Louang Namtha', 'LM', 0, 1),
(1809, 116, 'Louangphabang', 'LP', 0, 1),
(1810, 116, 'Oudomxai', 'OU', 0, 1),
(1811, 116, 'Phongsali', 'PH', 0, 1),
(1812, 116, 'Salavan', 'SL', 0, 1),
(1813, 116, 'Savannakhet', 'SV', 0, 1),
(1814, 116, 'Vientiane', 'VI', 0, 1),
(1815, 116, 'Xaignabouli', 'XA', 0, 1),
(1816, 116, 'Xekong', 'XE', 0, 1),
(1817, 116, 'Xiangkhoang', 'XI', 0, 1),
(1818, 116, 'Xaisomboun', 'XN', 0, 1),
(1852, 119, 'Berea', 'BE', 0, 1),
(1853, 119, 'Butha-Buthe', 'BB', 0, 1),
(1854, 119, 'Leribe', 'LE', 0, 1),
(1855, 119, 'Mafeteng', 'MF', 0, 1),
(1856, 119, 'Maseru', 'MS', 0, 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 0, 1),
(1858, 119, 'Mokhotlong', 'MK', 0, 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 0, 1),
(1860, 119, 'Quthing', 'QT', 0, 1),
(1861, 119, 'Thaba-Tseka', 'TT', 0, 1),
(1862, 120, 'Bomi', 'BI', 0, 1),
(1863, 120, 'Bong', 'BG', 0, 1),
(1864, 120, 'Grand Bassa', 'GB', 0, 1),
(1865, 120, 'Grand Cape Mount', 'CM', 0, 1),
(1866, 120, 'Grand Gedeh', 'GG', 0, 1),
(1867, 120, 'Grand Kru', 'GK', 0, 1),
(1868, 120, 'Lofa', 'LO', 0, 1),
(1869, 120, 'Margibi', 'MG', 0, 1),
(1870, 120, 'Maryland', 'ML', 0, 1),
(1871, 120, 'Montserrado', 'MS', 0, 1),
(1872, 120, 'Nimba', 'NB', 0, 1),
(1873, 120, 'River Cess', 'RC', 0, 1),
(1874, 120, 'Sinoe', 'SN', 0, 1),
(1875, 121, 'Ajdabiya', 'AJ', 0, 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 0, 1),
(1877, 121, 'Al Fatih', 'FA', 0, 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 0, 1),
(1879, 121, 'Al Jufrah', 'JU', 0, 1),
(1880, 121, 'Al Khums', 'KH', 0, 1),
(1881, 121, 'Al Kufrah', 'KU', 0, 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 0, 1),
(1883, 121, 'Ash Shati\'', 'AS', 0, 1),
(1884, 121, 'Awbari', 'AW', 0, 1),
(1885, 121, 'Az Zawiyah', 'ZA', 0, 1),
(1886, 121, 'Banghazi', 'BA', 0, 1),
(1887, 121, 'Darnah', 'DA', 0, 1),
(1888, 121, 'Ghadamis', 'GD', 0, 1),
(1889, 121, 'Gharyan', 'GY', 0, 1),
(1890, 121, 'Misratah', 'MI', 0, 1),
(1891, 121, 'Murzuq', 'MZ', 0, 1),
(1892, 121, 'Sabha', 'SB', 0, 1),
(1893, 121, 'Sawfajjin', 'SW', 0, 1),
(1894, 121, 'Surt', 'SU', 0, 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 0, 1),
(1896, 121, 'Tarhunah', 'TH', 0, 1),
(1897, 121, 'Tubruq', 'TU', 0, 1),
(1898, 121, 'Yafran', 'YA', 0, 1),
(1899, 121, 'Zlitan', 'ZL', 0, 1),
(1900, 122, 'Vaduz', 'V', 0, 1),
(1901, 122, 'Schaan', 'A', 0, 1),
(1902, 122, 'Balzers', 'B', 0, 1),
(1903, 122, 'Triesen', 'N', 0, 1),
(1904, 122, 'Eschen', 'E', 0, 1),
(1905, 122, 'Mauren', 'M', 0, 1),
(1906, 122, 'Triesenberg', 'T', 0, 1),
(1907, 122, 'Ruggell', 'R', 0, 1),
(1908, 122, 'Gamprin', 'G', 0, 1),
(1909, 122, 'Schellenberg', 'L', 0, 1),
(1910, 122, 'Planken', 'P', 0, 1),
(1911, 123, 'Alytus', 'AL', 0, 1),
(1912, 123, 'Kaunas', 'KA', 0, 1),
(1913, 123, 'Klaipeda', 'KL', 0, 1),
(1914, 123, 'Marijampole', 'MA', 0, 1),
(1915, 123, 'Panevezys', 'PA', 0, 1),
(1916, 123, 'Siauliai', 'SI', 0, 1),
(1917, 123, 'Taurage', 'TA', 0, 1),
(1918, 123, 'Telsiai', 'TE', 0, 1),
(1919, 123, 'Utena', 'UT', 0, 1),
(1920, 123, 'Vilnius', 'VI', 0, 1),
(1921, 124, 'Diekirch', 'DD', 0, 1),
(1922, 124, 'Clervaux', 'DC', 0, 1),
(1923, 124, 'Redange', 'DR', 0, 1),
(1924, 124, 'Vianden', 'DV', 0, 1),
(1925, 124, 'Wiltz', 'DW', 0, 1),
(1926, 124, 'Grevenmacher', 'GG', 0, 1),
(1927, 124, 'Echternach', 'GE', 0, 1),
(1928, 124, 'Remich', 'GR', 0, 1),
(1929, 124, 'Luxembourg', 'LL', 0, 1),
(1930, 124, 'Capellen', 'LC', 0, 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 0, 1),
(1932, 124, 'Mersch', 'LM', 0, 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 0, 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 0, 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 0, 1),
(1936, 125, 'Cathedral Parish', 'CAT', 0, 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 0, 1),
(1938, 127, 'Antananarivo', 'AN', 0, 1),
(1939, 127, 'Antsiranana', 'AS', 0, 1),
(1940, 127, 'Fianarantsoa', 'FN', 0, 1),
(1941, 127, 'Mahajanga', 'MJ', 0, 1),
(1942, 127, 'Toamasina', 'TM', 0, 1),
(1943, 127, 'Toliara', 'TL', 0, 1),
(1944, 128, 'Balaka', 'BLK', 0, 1),
(1945, 128, 'Blantyre', 'BLT', 0, 1),
(1946, 128, 'Chikwawa', 'CKW', 0, 1),
(1947, 128, 'Chiradzulu', 'CRD', 0, 1),
(1948, 128, 'Chitipa', 'CTP', 0, 1),
(1949, 128, 'Dedza', 'DDZ', 0, 1),
(1950, 128, 'Dowa', 'DWA', 0, 1),
(1951, 128, 'Karonga', 'KRG', 0, 1),
(1952, 128, 'Kasungu', 'KSG', 0, 1),
(1953, 128, 'Likoma', 'LKM', 0, 1),
(1954, 128, 'Lilongwe', 'LLG', 0, 1),
(1955, 128, 'Machinga', 'MCG', 0, 1),
(1956, 128, 'Mangochi', 'MGC', 0, 1),
(1957, 128, 'Mchinji', 'MCH', 0, 1),
(1958, 128, 'Mulanje', 'MLJ', 0, 1),
(1959, 128, 'Mwanza', 'MWZ', 0, 1),
(1960, 128, 'Mzimba', 'MZM', 0, 1),
(1961, 128, 'Ntcheu', 'NTU', 0, 1),
(1962, 128, 'Nkhata Bay', 'NKB', 0, 1),
(1963, 128, 'Nkhotakota', 'NKH', 0, 1),
(1964, 128, 'Nsanje', 'NSJ', 0, 1),
(1965, 128, 'Ntchisi', 'NTI', 0, 1),
(1966, 128, 'Phalombe', 'PHL', 0, 1),
(1967, 128, 'Rumphi', 'RMP', 0, 1),
(1968, 128, 'Salima', 'SLM', 0, 1),
(1969, 128, 'Thyolo', 'THY', 0, 1),
(1970, 128, 'Zomba', 'ZBA', 0, 1),
(1971, 129, 'Johor', 'MY-01', 0, 1),
(1972, 129, 'Kedah', 'MY-02', 0, 1),
(1973, 129, 'Kelantan', 'MY-03', 0, 1),
(1974, 129, 'Labuan', 'MY-15', 0, 1),
(1975, 129, 'Melaka', 'MY-04', 0, 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 0, 1),
(1977, 129, 'Pahang', 'MY-06', 0, 1),
(1978, 129, 'Perak', 'MY-08', 0, 1),
(1979, 129, 'Perlis', 'MY-09', 0, 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 0, 1),
(1981, 129, 'Sabah', 'MY-12', 0, 1),
(1982, 129, 'Sarawak', 'MY-13', 0, 1),
(1983, 129, 'Selangor', 'MY-10', 0, 1),
(1984, 129, 'Terengganu', 'MY-11', 0, 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 0, 1),
(4035, 129, 'Putrajaya', 'MY-16', 0, 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 0, 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 0, 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 0, 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 0, 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 0, 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 0, 1),
(1992, 130, 'Faadhippolhu', 'FAA', 0, 1),
(1993, 130, 'Male Atoll', 'MAA', 0, 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 0, 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 0, 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 0, 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 0, 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 0, 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 0, 1),
(2000, 130, 'Kolhumadulu', 'KLH', 0, 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 0, 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 0, 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 0, 1),
(2004, 130, 'Fua Mulaku', 'FMU', 0, 1),
(2005, 130, 'Addu', 'ADD', 0, 1),
(2006, 131, 'Gao', 'GA', 0, 1),
(2007, 131, 'Kayes', 'KY', 0, 1),
(2008, 131, 'Kidal', 'KD', 0, 1),
(2009, 131, 'Koulikoro', 'KL', 0, 1),
(2010, 131, 'Mopti', 'MP', 0, 1),
(2011, 131, 'Segou', 'SG', 0, 1),
(2012, 131, 'Sikasso', 'SK', 0, 1),
(2013, 131, 'Tombouctou', 'TB', 0, 1),
(2014, 131, 'Bamako Capital District', 'CD', 0, 1),
(2015, 132, 'Attard', 'ATT', 0, 1),
(2016, 132, 'Balzan', 'BAL', 0, 1),
(2017, 132, 'Birgu', 'BGU', 0, 1),
(2018, 132, 'Birkirkara', 'BKK', 0, 1),
(2019, 132, 'Birzebbuga', 'BRZ', 0, 1),
(2020, 132, 'Bormla', 'BOR', 0, 1),
(2021, 132, 'Dingli', 'DIN', 0, 1),
(2022, 132, 'Fgura', 'FGU', 0, 1),
(2023, 132, 'Floriana', 'FLO', 0, 1),
(2024, 132, 'Gudja', 'GDJ', 0, 1),
(2025, 132, 'Gzira', 'GZR', 0, 1),
(2026, 132, 'Gargur', 'GRG', 0, 1),
(2027, 132, 'Gaxaq', 'GXQ', 0, 1),
(2028, 132, 'Hamrun', 'HMR', 0, 1),
(2029, 132, 'Iklin', 'IKL', 0, 1),
(2030, 132, 'Isla', 'ISL', 0, 1),
(2031, 132, 'Kalkara', 'KLK', 0, 1),
(2032, 132, 'Kirkop', 'KRK', 0, 1),
(2033, 132, 'Lija', 'LIJ', 0, 1),
(2034, 132, 'Luqa', 'LUQ', 0, 1),
(2035, 132, 'Marsa', 'MRS', 0, 1),
(2036, 132, 'Marsaskala', 'MKL', 0, 1),
(2037, 132, 'Marsaxlokk', 'MXL', 0, 1),
(2038, 132, 'Mdina', 'MDN', 0, 1),
(2039, 132, 'Melliea', 'MEL', 0, 1),
(2040, 132, 'Mgarr', 'MGR', 0, 1),
(2041, 132, 'Mosta', 'MST', 0, 1),
(2042, 132, 'Mqabba', 'MQA', 0, 1),
(2043, 132, 'Msida', 'MSI', 0, 1),
(2044, 132, 'Mtarfa', 'MTF', 0, 1),
(2045, 132, 'Naxxar', 'NAX', 0, 1),
(2046, 132, 'Paola', 'PAO', 0, 1),
(2047, 132, 'Pembroke', 'PEM', 0, 1),
(2048, 132, 'Pieta', 'PIE', 0, 1),
(2049, 132, 'Qormi', 'QOR', 0, 1),
(2050, 132, 'Qrendi', 'QRE', 0, 1),
(2051, 132, 'Rabat', 'RAB', 0, 1),
(2052, 132, 'Safi', 'SAF', 0, 1),
(2053, 132, 'San Giljan', 'SGI', 0, 1),
(2054, 132, 'Santa Lucija', 'SLU', 0, 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 0, 1),
(2056, 132, 'San Gwann', 'SGW', 0, 1),
(2057, 132, 'Santa Venera', 'SVE', 0, 1),
(2058, 132, 'Siggiewi', 'SIG', 0, 1),
(2059, 132, 'Sliema', 'SLM', 0, 1),
(2060, 132, 'Swieqi', 'SWQ', 0, 1),
(2061, 132, 'Ta Xbiex', 'TXB', 0, 1),
(2062, 132, 'Tarxien', 'TRX', 0, 1),
(2063, 132, 'Valletta', 'VLT', 0, 1),
(2064, 132, 'Xgajra', 'XGJ', 0, 1),
(2065, 132, 'Zabbar', 'ZBR', 0, 1),
(2066, 132, 'Zebbug', 'ZBG', 0, 1),
(2067, 132, 'Zejtun', 'ZJT', 0, 1),
(2068, 132, 'Zurrieq', 'ZRQ', 0, 1),
(2069, 132, 'Fontana', 'FNT', 0, 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 0, 1),
(2071, 132, 'Gharb', 'GHR', 0, 1),
(2072, 132, 'Ghasri', 'GHS', 0, 1),
(2073, 132, 'Kercem', 'KRC', 0, 1),
(2074, 132, 'Munxar', 'MUN', 0, 1),
(2075, 132, 'Nadur', 'NAD', 0, 1),
(2076, 132, 'Qala', 'QAL', 0, 1),
(2077, 132, 'Victoria', 'VIC', 0, 1),
(2078, 132, 'San Lawrenz', 'SLA', 0, 1),
(2079, 132, 'Sannat', 'SNT', 0, 1),
(2080, 132, 'Xagra', 'ZAG', 0, 1),
(2081, 132, 'Xewkija', 'XEW', 0, 1),
(2082, 132, 'Zebbug', 'ZEB', 0, 1),
(2083, 133, 'Ailinginae', 'ALG', 0, 1),
(2084, 133, 'Ailinglaplap', 'ALL', 0, 1),
(2085, 133, 'Ailuk', 'ALK', 0, 1),
(2086, 133, 'Arno', 'ARN', 0, 1),
(2087, 133, 'Aur', 'AUR', 0, 1),
(2088, 133, 'Bikar', 'BKR', 0, 1),
(2089, 133, 'Bikini', 'BKN', 0, 1),
(2090, 133, 'Bokak', 'BKK', 0, 1),
(2091, 133, 'Ebon', 'EBN', 0, 1),
(2092, 133, 'Enewetak', 'ENT', 0, 1),
(2093, 133, 'Erikub', 'EKB', 0, 1),
(2094, 133, 'Jabat', 'JBT', 0, 1),
(2095, 133, 'Jaluit', 'JLT', 0, 1),
(2096, 133, 'Jemo', 'JEM', 0, 1),
(2097, 133, 'Kili', 'KIL', 0, 1),
(2098, 133, 'Kwajalein', 'KWJ', 0, 1),
(2099, 133, 'Lae', 'LAE', 0, 1),
(2100, 133, 'Lib', 'LIB', 0, 1),
(2101, 133, 'Likiep', 'LKP', 0, 1),
(2102, 133, 'Majuro', 'MJR', 0, 1),
(2103, 133, 'Maloelap', 'MLP', 0, 1),
(2104, 133, 'Mejit', 'MJT', 0, 1),
(2105, 133, 'Mili', 'MIL', 0, 1),
(2106, 133, 'Namorik', 'NMK', 0, 1),
(2107, 133, 'Namu', 'NAM', 0, 1),
(2108, 133, 'Rongelap', 'RGL', 0, 1),
(2109, 133, 'Rongrik', 'RGK', 0, 1),
(2110, 133, 'Toke', 'TOK', 0, 1),
(2111, 133, 'Ujae', 'UJA', 0, 1),
(2112, 133, 'Ujelang', 'UJL', 0, 1),
(2113, 133, 'Utirik', 'UTK', 0, 1),
(2114, 133, 'Wotho', 'WTH', 0, 1),
(2115, 133, 'Wotje', 'WTJ', 0, 1),
(2116, 135, 'Adrar', 'AD', 0, 1),
(2117, 135, 'Assaba', 'AS', 0, 1),
(2118, 135, 'Brakna', 'BR', 0, 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 0, 1),
(2120, 135, 'Gorgol', 'GO', 0, 1),
(2121, 135, 'Guidimaka', 'GM', 0, 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 0, 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 0, 1),
(2124, 135, 'Inchiri', 'IN', 0, 1),
(2125, 135, 'Tagant', 'TA', 0, 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 0, 1),
(2127, 135, 'Trarza', 'TR', 0, 1),
(2128, 135, 'Nouakchott', 'NO', 0, 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 0, 1),
(2130, 136, 'Curepipe', 'CU', 0, 1),
(2131, 136, 'Port Louis', 'PU', 0, 1),
(2132, 136, 'Quatre Bornes', 'QB', 0, 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 0, 1),
(2134, 136, 'Agalega Islands', 'AG', 0, 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 0, 1),
(2136, 136, 'Rodrigues', 'RO', 0, 1),
(2137, 136, 'Black River', 'BL', 0, 1),
(2138, 136, 'Flacq', 'FL', 0, 1),
(2139, 136, 'Grand Port', 'GP', 0, 1),
(2140, 136, 'Moka', 'MO', 0, 1),
(2141, 136, 'Pamplemousses', 'PA', 0, 1),
(2142, 136, 'Plaines Wilhems', 'PW', 0, 1),
(2143, 136, 'Port Louis', 'PL', 0, 1),
(2144, 136, 'Riviere du Rempart', 'RR', 0, 1),
(2145, 136, 'Savanne', 'SA', 0, 1),
(2146, 138, 'Baja California Norte', 'BN', 0, 1),
(2147, 138, 'Baja California Sur', 'BS', 0, 1),
(2148, 138, 'Campeche', 'CA', 0, 1),
(2149, 138, 'Chiapas', 'CI', 0, 1),
(2150, 138, 'Chihuahua', 'CH', 0, 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 0, 1),
(2152, 138, 'Colima', 'CL', 0, 1),
(2153, 138, 'Distrito Federal', 'DF', 0, 1),
(2154, 138, 'Durango', 'DU', 0, 1),
(2155, 138, 'Guanajuato', 'GA', 0, 1),
(2156, 138, 'Guerrero', 'GE', 0, 1),
(2157, 138, 'Hidalgo', 'HI', 0, 1),
(2158, 138, 'Jalisco', 'JA', 0, 1),
(2159, 138, 'Mexico', 'ME', 0, 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 0, 1),
(2161, 138, 'Morelos', 'MO', 0, 1),
(2162, 138, 'Nayarit', 'NA', 0, 1),
(2163, 138, 'Nuevo Leon', 'NL', 0, 1),
(2164, 138, 'Oaxaca', 'OA', 0, 1),
(2165, 138, 'Puebla', 'PU', 0, 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 0, 1),
(2167, 138, 'Quintana Roo', 'QR', 0, 1),
(2168, 138, 'San Luis Potosi', 'SA', 0, 1),
(2169, 138, 'Sinaloa', 'SI', 0, 1),
(2170, 138, 'Sonora', 'SO', 0, 1),
(2171, 138, 'Tabasco', 'TB', 0, 1),
(2172, 138, 'Tamaulipas', 'TM', 0, 1),
(2173, 138, 'Tlaxcala', 'TL', 0, 1),
(2174, 138, 'Veracruz-Llave', 'VE', 0, 1),
(2175, 138, 'Yucatan', 'YU', 0, 1),
(2176, 138, 'Zacatecas', 'ZA', 0, 1),
(2177, 139, 'Chuuk', 'C', 0, 1),
(2178, 139, 'Kosrae', 'K', 0, 1),
(2179, 139, 'Pohnpei', 'P', 0, 1),
(2180, 139, 'Yap', 'Y', 0, 1),
(2181, 140, 'Gagauzia', 'GA', 0, 1),
(2182, 140, 'Chisinau', 'CU', 0, 1),
(2183, 140, 'Balti', 'BA', 0, 1),
(2184, 140, 'Cahul', 'CA', 0, 1),
(2185, 140, 'Edinet', 'ED', 0, 1),
(2186, 140, 'Lapusna', 'LA', 0, 1),
(2187, 140, 'Orhei', 'OR', 0, 1),
(2188, 140, 'Soroca', 'SO', 0, 1),
(2189, 140, 'Tighina', 'TI', 0, 1),
(2190, 140, 'Ungheni', 'UN', 0, 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 0, 1),
(2192, 141, 'Fontvieille', 'FV', 0, 1),
(2193, 141, 'La Condamine', 'LC', 0, 1),
(2194, 141, 'Monaco-Ville', 'MV', 0, 1),
(2195, 141, 'Monte-Carlo', 'MC', 0, 1),
(2196, 142, 'Ulanbaatar', '1', 0, 1),
(2197, 142, 'Orhon', '035', 0, 1),
(2198, 142, 'Darhan uul', '037', 0, 1),
(2199, 142, 'Hentiy', '039', 0, 1),
(2200, 142, 'Hovsgol', '041', 0, 1),
(2201, 142, 'Hovd', '043', 0, 1),
(2202, 142, 'Uvs', '046', 0, 1),
(2203, 142, 'Tov', '047', 0, 1),
(2204, 142, 'Selenge', '049', 0, 1),
(2205, 142, 'Suhbaatar', '051', 0, 1),
(2206, 142, 'Omnogovi', '053', 0, 1),
(2207, 142, 'Ovorhangay', '055', 0, 1),
(2208, 142, 'Dzavhan', '057', 0, 1),
(2209, 142, 'DundgovL', '059', 0, 1),
(2210, 142, 'Dornod', '061', 0, 1),
(2211, 142, 'Dornogov', '063', 0, 1),
(2212, 142, 'Govi-Sumber', '064', 0, 1),
(2213, 142, 'Govi-Altay', '065', 0, 1),
(2214, 142, 'Bulgan', '067', 0, 1),
(2215, 142, 'Bayanhongor', '069', 0, 1),
(2216, 142, 'Bayan-Olgiy', '071', 0, 1),
(2217, 142, 'Arhangay', '073', 0, 1),
(2218, 143, 'Saint Anthony', 'A', 0, 1),
(2219, 143, 'Saint Georges', 'G', 0, 1),
(2220, 143, 'Saint Peter', 'P', 0, 1),
(2221, 144, 'Agadir', 'AGD', 0, 1),
(2222, 144, 'Al Hoceima', 'HOC', 0, 1),
(2223, 144, 'Azilal', 'AZI', 0, 1),
(2224, 144, 'Beni Mellal', 'BME', 0, 1),
(2225, 144, 'Ben Slimane', 'BSL', 0, 1),
(2226, 144, 'Boulemane', 'BLM', 0, 1),
(2227, 144, 'Casablanca', 'CBL', 0, 1),
(2228, 144, 'Chaouen', 'CHA', 0, 1),
(2229, 144, 'El Jadida', 'EJA', 0, 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 0, 1),
(2231, 144, 'Er Rachidia', 'ERA', 0, 1),
(2232, 144, 'Essaouira', 'ESS', 0, 1),
(2233, 144, 'Fes', 'FES', 0, 1),
(2234, 144, 'Figuig', 'FIG', 0, 1),
(2235, 144, 'Guelmim', 'GLM', 0, 1),
(2236, 144, 'Ifrane', 'IFR', 0, 1),
(2237, 144, 'Kenitra', 'KEN', 0, 1),
(2238, 144, 'Khemisset', 'KHM', 0, 1),
(2239, 144, 'Khenifra', 'KHN', 0, 1),
(2240, 144, 'Khouribga', 'KHO', 0, 1),
(2241, 144, 'Laayoune', 'LYN', 0, 1),
(2242, 144, 'Larache', 'LAR', 0, 1),
(2243, 144, 'Marrakech', 'MRK', 0, 1),
(2244, 144, 'Meknes', 'MKN', 0, 1),
(2245, 144, 'Nador', 'NAD', 0, 1),
(2246, 144, 'Ouarzazate', 'ORZ', 0, 1),
(2247, 144, 'Oujda', 'OUJ', 0, 1),
(2248, 144, 'Rabat-Sale', 'RSA', 0, 1),
(2249, 144, 'Safi', 'SAF', 0, 1),
(2250, 144, 'Settat', 'SET', 0, 1),
(2251, 144, 'Sidi Kacem', 'SKA', 0, 1),
(2252, 144, 'Tangier', 'TGR', 0, 1),
(2253, 144, 'Tan-Tan', 'TAN', 0, 1),
(2254, 144, 'Taounate', 'TAO', 0, 1),
(2255, 144, 'Taroudannt', 'TRD', 0, 1),
(2256, 144, 'Tata', 'TAT', 0, 1),
(2257, 144, 'Taza', 'TAZ', 0, 1),
(2258, 144, 'Tetouan', 'TET', 0, 1),
(2259, 144, 'Tiznit', 'TIZ', 0, 1),
(2260, 144, 'Ad Dakhla', 'ADK', 0, 1),
(2261, 144, 'Boujdour', 'BJD', 0, 1),
(2262, 144, 'Es Smara', 'ESM', 0, 1),
(2263, 145, 'Cabo Delgado', 'CD', 0, 1),
(2264, 145, 'Gaza', 'GZ', 0, 1),
(2265, 145, 'Inhambane', 'IN', 0, 1),
(2266, 145, 'Manica', 'MN', 0, 1),
(2267, 145, 'Maputo (city)', 'MC', 0, 1),
(2268, 145, 'Maputo', 'MP', 0, 1),
(2269, 145, 'Nampula', 'NA', 0, 1),
(2270, 145, 'Niassa', 'NI', 0, 1),
(2271, 145, 'Sofala', 'SO', 0, 1),
(2272, 145, 'Tete', 'TE', 0, 1),
(2273, 145, 'Zambezia', 'ZA', 0, 1),
(2274, 146, 'Ayeyarwady', 'AY', 0, 1),
(2275, 146, 'Bago', 'BG', 0, 1),
(2276, 146, 'Magway', 'MG', 0, 1),
(2277, 146, 'Mandalay', 'MD', 0, 1),
(2278, 146, 'Sagaing', 'SG', 0, 1),
(2279, 146, 'Tanintharyi', 'TN', 0, 1),
(2280, 146, 'Yangon', 'YG', 0, 1),
(2281, 146, 'Chin State', 'CH', 0, 1),
(2282, 146, 'Kachin State', 'KC', 0, 1),
(2283, 146, 'Kayah State', 'KH', 0, 1),
(2284, 146, 'Kayin State', 'KN', 0, 1),
(2285, 146, 'Mon State', 'MN', 0, 1),
(2286, 146, 'Rakhine State', 'RK', 0, 1),
(2287, 146, 'Shan State', 'SH', 0, 1),
(2288, 147, 'Caprivi', 'CA', 0, 1),
(2289, 147, 'Erongo', 'ER', 0, 1),
(2290, 147, 'Hardap', 'HA', 0, 1),
(2291, 147, 'Karas', 'KR', 0, 1),
(2292, 147, 'Kavango', 'KV', 0, 1),
(2293, 147, 'Khomas', 'KH', 0, 1),
(2294, 147, 'Kunene', 'KU', 0, 1),
(2295, 147, 'Ohangwena', 'OW', 0, 1),
(2296, 147, 'Omaheke', 'OK', 0, 1),
(2297, 147, 'Omusati', 'OT', 0, 1),
(2298, 147, 'Oshana', 'ON', 0, 1),
(2299, 147, 'Oshikoto', 'OO', 0, 1),
(2300, 147, 'Otjozondjupa', 'OJ', 0, 1),
(2301, 148, 'Aiwo', 'AO', 0, 1),
(2302, 148, 'Anabar', 'AA', 0, 1),
(2303, 148, 'Anetan', 'AT', 0, 1),
(2304, 148, 'Anibare', 'AI', 0, 1),
(2305, 148, 'Baiti', 'BA', 0, 1),
(2306, 148, 'Boe', 'BO', 0, 1),
(2307, 148, 'Buada', 'BU', 0, 1),
(2308, 148, 'Denigomodu', 'DE', 0, 1),
(2309, 148, 'Ewa', 'EW', 0, 1),
(2310, 148, 'Ijuw', 'IJ', 0, 1),
(2311, 148, 'Meneng', 'ME', 0, 1),
(2312, 148, 'Nibok', 'NI', 0, 1),
(2313, 148, 'Uaboe', 'UA', 0, 1),
(2314, 148, 'Yaren', 'YA', 0, 1),
(2315, 149, 'Bagmati', 'BA', 0, 1),
(2316, 149, 'Bheri', 'BH', 0, 1),
(2317, 149, 'Dhawalagiri', 'DH', 0, 1),
(2318, 149, 'Gandaki', 'GA', 0, 1),
(2319, 149, 'Janakpur', 'JA', 0, 1),
(2320, 149, 'Karnali', 'KA', 0, 1),
(2321, 149, 'Kosi', 'KO', 0, 1),
(2322, 149, 'Lumbini', 'LU', 0, 1),
(2323, 149, 'Mahakali', 'MA', 0, 1),
(2324, 149, 'Mechi', 'ME', 0, 1),
(2325, 149, 'Narayani', 'NA', 0, 1),
(2326, 149, 'Rapti', 'RA', 0, 1),
(2327, 149, 'Sagarmatha', 'SA', 0, 1),
(2328, 149, 'Seti', 'SE', 0, 1),
(2329, 150, 'Drenthe', 'DR', 0, 1),
(2330, 150, 'Flevoland', 'FL', 0, 1),
(2331, 150, 'Friesland', 'FR', 0, 1),
(2332, 150, 'Gelderland', 'GE', 0, 1),
(2333, 150, 'Groningen', 'GR', 0, 1),
(2334, 150, 'Limburg', 'LI', 0, 1),
(2335, 150, 'Noord-Brabant', 'NB', 0, 1),
(2336, 150, 'Noord-Holland', 'NH', 0, 1),
(2337, 150, 'Overijssel', 'OV', 0, 1),
(2338, 150, 'Utrecht', 'UT', 0, 1),
(2339, 150, 'Zeeland', 'ZE', 0, 1),
(2340, 150, 'Zuid-Holland', 'ZH', 0, 1),
(2341, 152, 'Iles Loyaute', 'L', 0, 1),
(2342, 152, 'Nord', 'N', 0, 1),
(2343, 152, 'Sud', 'S', 0, 1),
(2344, 153, 'Auckland', 'AUK', 0, 1),
(2345, 153, 'Bay of Plenty', 'BOP', 0, 1),
(2346, 153, 'Canterbury', 'CAN', 0, 1),
(2347, 153, 'Coromandel', 'COR', 0, 1),
(2348, 153, 'Gisborne', 'GIS', 0, 1),
(2349, 153, 'Fiordland', 'FIO', 0, 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 0, 1),
(2351, 153, 'Marlborough', 'MBH', 0, 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 0, 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 0, 1),
(2354, 153, 'Nelson', 'NSN', 0, 1),
(2355, 153, 'Northland', 'NTL', 0, 1),
(2356, 153, 'Otago', 'OTA', 0, 1),
(2357, 153, 'Southland', 'STL', 0, 1),
(2358, 153, 'Taranaki', 'TKI', 0, 1),
(2359, 153, 'Wellington', 'WGN', 0, 1),
(2360, 153, 'Waikato', 'WKO', 0, 1),
(2361, 153, 'Wairarapa', 'WAI', 0, 1),
(2362, 153, 'West Coast', 'WTC', 0, 1),
(2363, 154, 'Atlantico Norte', 'AN', 0, 1),
(2364, 154, 'Atlantico Sur', 'AS', 0, 1),
(2365, 154, 'Boaco', 'BO', 0, 1),
(2366, 154, 'Carazo', 'CA', 0, 1),
(2367, 154, 'Chinandega', 'CI', 0, 1),
(2368, 154, 'Chontales', 'CO', 0, 1),
(2369, 154, 'Esteli', 'ES', 0, 1),
(2370, 154, 'Granada', 'GR', 0, 1),
(2371, 154, 'Jinotega', 'JI', 0, 1),
(2372, 154, 'Leon', 'LE', 0, 1),
(2373, 154, 'Madriz', 'MD', 0, 1),
(2374, 154, 'Managua', 'MN', 0, 1),
(2375, 154, 'Masaya', 'MS', 0, 1),
(2376, 154, 'Matagalpa', 'MT', 0, 1),
(2377, 154, 'Nuevo Segovia', 'NS', 0, 1),
(2378, 154, 'Rio San Juan', 'RS', 0, 1),
(2379, 154, 'Rivas', 'RI', 0, 1),
(2380, 155, 'Agadez', 'AG', 0, 1),
(2381, 155, 'Diffa', 'DF', 0, 1),
(2382, 155, 'Dosso', 'DS', 0, 1),
(2383, 155, 'Maradi', 'MA', 0, 1),
(2384, 155, 'Niamey', 'NM', 0, 1),
(2385, 155, 'Tahoua', 'TH', 0, 1),
(2386, 155, 'Tillaberi', 'TL', 0, 1),
(2387, 155, 'Zinder', 'ZD', 0, 1),
(2388, 156, 'Abia', 'AB', 0, 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 0, 1),
(2390, 156, 'Adamawa', 'AD', 0, 1),
(2391, 156, 'Akwa Ibom', 'AK', 0, 1),
(2392, 156, 'Anambra', 'AN', 0, 1),
(2393, 156, 'Bauchi', 'BC', 0, 1),
(2394, 156, 'Bayelsa', 'BY', 0, 1),
(2395, 156, 'Benue', 'BN', 0, 1),
(2396, 156, 'Borno', 'BO', 0, 1),
(2397, 156, 'Cross River', 'CR', 0, 1),
(2398, 156, 'Delta', 'DE', 0, 1),
(2399, 156, 'Ebonyi', 'EB', 0, 1),
(2400, 156, 'Edo', 'ED', 0, 1),
(2401, 156, 'Ekiti', 'EK', 0, 1),
(2402, 156, 'Enugu', 'EN', 0, 1),
(2403, 156, 'Gombe', 'GO', 0, 1),
(2404, 156, 'Imo', 'IM', 0, 1),
(2405, 156, 'Jigawa', 'JI', 0, 1),
(2406, 156, 'Kaduna', 'KD', 0, 1),
(2407, 156, 'Kano', 'KN', 0, 1),
(2408, 156, 'Katsina', 'KT', 0, 1),
(2409, 156, 'Kebbi', 'KE', 0, 1),
(2410, 156, 'Kogi', 'KO', 0, 1),
(2411, 156, 'Kwara', 'KW', 0, 1),
(2412, 156, 'Lagos', 'LA', 0, 1),
(2413, 156, 'Nassarawa', 'NA', 0, 1),
(2414, 156, 'Niger', 'NI', 0, 1),
(2415, 156, 'Ogun', 'OG', 0, 1),
(2416, 156, 'Ondo', 'ONG', 0, 1),
(2417, 156, 'Osun', 'OS', 0, 1),
(2418, 156, 'Oyo', 'OY', 0, 1),
(2419, 156, 'Plateau', 'PL', 0, 1),
(2420, 156, 'Rivers', 'RI', 0, 1),
(2421, 156, 'Sokoto', 'SO', 0, 1),
(2422, 156, 'Taraba', 'TA', 0, 1),
(2423, 156, 'Yobe', 'YO', 0, 1),
(2424, 156, 'Zamfara', 'ZA', 0, 1),
(2425, 159, 'Northern Islands', 'N', 0, 1),
(2426, 159, 'Rota', 'R', 0, 1),
(2427, 159, 'Saipan', 'S', 0, 1),
(2428, 159, 'Tinian', 'T', 0, 1),
(2429, 160, 'Akershus', 'AK', 0, 1),
(2430, 160, 'Aust-Agder', 'AA', 0, 1),
(2431, 160, 'Buskerud', 'BU', 0, 1),
(2432, 160, 'Finnmark', 'FM', 0, 1),
(2433, 160, 'Hedmark', 'HM', 0, 1),
(2434, 160, 'Hordaland', 'HL', 0, 1),
(2435, 160, 'More og Romdal', 'MR', 0, 1),
(2436, 160, 'Nord-Trondelag', 'NT', 0, 1),
(2437, 160, 'Nordland', 'NL', 0, 1),
(2438, 160, 'Ostfold', 'OF', 0, 1),
(2439, 160, 'Oppland', 'OP', 0, 1),
(2440, 160, 'Oslo', 'OL', 0, 1),
(2441, 160, 'Rogaland', 'RL', 0, 1),
(2442, 160, 'Sor-Trondelag', 'ST', 0, 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 0, 1),
(2444, 160, 'Svalbard', 'SV', 0, 1),
(2445, 160, 'Telemark', 'TM', 0, 1),
(2446, 160, 'Troms', 'TR', 0, 1),
(2447, 160, 'Vest-Agder', 'VA', 0, 1),
(2448, 160, 'Vestfold', 'VF', 0, 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 0, 1),
(2450, 161, 'Al Batinah', 'BA', 0, 1),
(2451, 161, 'Al Wusta', 'WU', 0, 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 0, 1),
(2453, 161, 'Az Zahirah', 'ZA', 0, 1),
(2454, 161, 'Masqat', 'MA', 0, 1),
(2455, 161, 'Musandam', 'MU', 0, 1),
(2456, 161, 'Zufar', 'ZU', 0, 1),
(2457, 162, 'Balochistan', 'B', 0, 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 0, 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 0, 1),
(2460, 162, 'North-West Frontier', 'N', 0, 1),
(2461, 162, 'Punjab', 'P', 0, 1),
(2462, 162, 'Sindh', 'S', 0, 1),
(2463, 163, 'Aimeliik', 'AM', 0, 1),
(2464, 163, 'Airai', 'AR', 0, 1),
(2465, 163, 'Angaur', 'AN', 0, 1),
(2466, 163, 'Hatohobei', 'HA', 0, 1),
(2467, 163, 'Kayangel', 'KA', 0, 1),
(2468, 163, 'Koror', 'KO', 0, 1),
(2469, 163, 'Melekeok', 'ME', 0, 1),
(2470, 163, 'Ngaraard', 'NA', 0, 1),
(2471, 163, 'Ngarchelong', 'NG', 0, 1),
(2472, 163, 'Ngardmau', 'ND', 0, 1),
(2473, 163, 'Ngatpang', 'NT', 0, 1),
(2474, 163, 'Ngchesar', 'NC', 0, 1),
(2475, 163, 'Ngeremlengui', 'NR', 0, 1),
(2476, 163, 'Ngiwal', 'NW', 0, 1),
(2477, 163, 'Peleliu', 'PE', 0, 1),
(2478, 163, 'Sonsorol', 'SO', 0, 1),
(2479, 164, 'Bocas del Toro', 'BT', 0, 1),
(2480, 164, 'Chiriqui', 'CH', 0, 1),
(2481, 164, 'Cocle', 'CC', 0, 1),
(2482, 164, 'Colon', 'CL', 0, 1),
(2483, 164, 'Darien', 'DA', 0, 1),
(2484, 164, 'Herrera', 'HE', 0, 1),
(2485, 164, 'Los Santos', 'LS', 0, 1),
(2486, 164, 'Panama', 'PA', 0, 1),
(2487, 164, 'San Blas', 'SB', 0, 1),
(2488, 164, 'Veraguas', 'VG', 0, 1),
(2489, 165, 'Bougainville', 'BV', 0, 1),
(2490, 165, 'Central', 'CE', 0, 1),
(2491, 165, 'Chimbu', 'CH', 0, 1),
(2492, 165, 'Eastern Highlands', 'EH', 0, 1),
(2493, 165, 'East New Britain', 'EB', 0, 1),
(2494, 165, 'East Sepik', 'ES', 0, 1),
(2495, 165, 'Enga', 'EN', 0, 1),
(2496, 165, 'Gulf', 'GU', 0, 1),
(2497, 165, 'Madang', 'MD', 0, 1),
(2498, 165, 'Manus', 'MN', 0, 1),
(2499, 165, 'Milne Bay', 'MB', 0, 1),
(2500, 165, 'Morobe', 'MR', 0, 1),
(2501, 165, 'National Capital', 'NC', 0, 1),
(2502, 165, 'New Ireland', 'NI', 0, 1),
(2503, 165, 'Northern', 'NO', 0, 1),
(2504, 165, 'Sandaun', 'SA', 0, 1),
(2505, 165, 'Southern Highlands', 'SH', 0, 1),
(2506, 165, 'Western', 'WE', 0, 1),
(2507, 165, 'Western Highlands', 'WH', 0, 1),
(2508, 165, 'West New Britain', 'WB', 0, 1),
(2509, 166, 'Alto Paraguay', 'AG', 0, 1),
(2510, 166, 'Alto Parana', 'AN', 0, 1),
(2511, 166, 'Amambay', 'AM', 0, 1),
(2512, 166, 'Asuncion', 'AS', 0, 1),
(2513, 166, 'Boqueron', 'BO', 0, 1),
(2514, 166, 'Caaguazu', 'CG', 0, 1),
(2515, 166, 'Caazapa', 'CZ', 0, 1),
(2516, 166, 'Canindeyu', 'CN', 0, 1),
(2517, 166, 'Central', 'CE', 0, 1),
(2518, 166, 'Concepcion', 'CC', 0, 1),
(2519, 166, 'Cordillera', 'CD', 0, 1),
(2520, 166, 'Guaira', 'GU', 0, 1),
(2521, 166, 'Itapua', 'IT', 0, 1),
(2522, 166, 'Misiones', 'MI', 0, 1),
(2523, 166, 'Neembucu', 'NE', 0, 1),
(2524, 166, 'Paraguari', 'PA', 0, 1),
(2525, 166, 'Presidente Hayes', 'PH', 0, 1),
(2526, 166, 'San Pedro', 'SP', 0, 1),
(2527, 167, 'Amazonas', 'AM', 0, 1),
(2528, 167, 'Ancash', 'AN', 0, 1),
(2529, 167, 'Apurimac', 'AP', 0, 1),
(2530, 167, 'Arequipa', 'AR', 0, 1),
(2531, 167, 'Ayacucho', 'AY', 0, 1),
(2532, 167, 'Cajamarca', 'CJ', 0, 1),
(2533, 167, 'Callao', 'CL', 0, 1),
(2534, 167, 'Cusco', 'CU', 0, 1),
(2535, 167, 'Huancavelica', 'HV', 0, 1),
(2536, 167, 'Huanuco', 'HO', 0, 1),
(2537, 167, 'Ica', 'IC', 0, 1),
(2538, 167, 'Junin', 'JU', 0, 1),
(2539, 167, 'La Libertad', 'LD', 0, 1),
(2540, 167, 'Lambayeque', 'LY', 0, 1),
(2541, 167, 'Lima', 'LI', 0, 1),
(2542, 167, 'Loreto', 'LO', 0, 1),
(2543, 167, 'Madre de Dios', 'MD', 0, 1),
(2544, 167, 'Moquegua', 'MO', 0, 1),
(2545, 167, 'Pasco', 'PA', 0, 1),
(2546, 167, 'Piura', 'PI', 0, 1),
(2547, 167, 'Puno', 'PU', 0, 1),
(2548, 167, 'San Martin', 'SM', 0, 1),
(2549, 167, 'Tacna', 'TA', 0, 1),
(2550, 167, 'Tumbes', 'TU', 0, 1),
(2551, 167, 'Ucayali', 'UC', 0, 1),
(2552, 168, 'Abra', 'ABR', 0, 1),
(2553, 168, 'Agusan del Norte', 'ANO', 0, 1),
(2554, 168, 'Agusan del Sur', 'ASU', 0, 1),
(2555, 168, 'Aklan', 'AKL', 0, 1),
(2556, 168, 'Albay', 'ALB', 0, 1),
(2557, 168, 'Antique', 'ANT', 0, 1),
(2558, 168, 'Apayao', 'APY', 0, 1),
(2559, 168, 'Aurora', 'AUR', 0, 1),
(2560, 168, 'Basilan', 'BAS', 0, 1),
(2561, 168, 'Bataan', 'BTA', 0, 1),
(2562, 168, 'Batanes', 'BTE', 0, 1),
(2563, 168, 'Batangas', 'BTG', 0, 1),
(2564, 168, 'Biliran', 'BLR', 0, 1),
(2565, 168, 'Benguet', 'BEN', 0, 1),
(2566, 168, 'Bohol', 'BOL', 0, 1),
(2567, 168, 'Bukidnon', 'BUK', 0, 1),
(2568, 168, 'Bulacan', 'BUL', 0, 1),
(2569, 168, 'Cagayan', 'CAG', 0, 1),
(2570, 168, 'Camarines Norte', 'CNO', 0, 1),
(2571, 168, 'Camarines Sur', 'CSU', 0, 1),
(2572, 168, 'Camiguin', 'CAM', 0, 1),
(2573, 168, 'Capiz', 'CAP', 0, 1),
(2574, 168, 'Catanduanes', 'CAT', 0, 1),
(2575, 168, 'Cavite', 'CAV', 0, 1),
(2576, 168, 'Cebu', 'CEB', 0, 1),
(2577, 168, 'Compostela', 'CMP', 0, 1),
(2578, 168, 'Davao del Norte', 'DNO', 0, 1),
(2579, 168, 'Davao del Sur', 'DSU', 0, 1),
(2580, 168, 'Davao Oriental', 'DOR', 0, 1),
(2581, 168, 'Eastern Samar', 'ESA', 0, 1),
(2582, 168, 'Guimaras', 'GUI', 0, 1),
(2583, 168, 'Ifugao', 'IFU', 0, 1),
(2584, 168, 'Ilocos Norte', 'INO', 0, 1),
(2585, 168, 'Ilocos Sur', 'ISU', 0, 1),
(2586, 168, 'Iloilo', 'ILO', 0, 1),
(2587, 168, 'Isabela', 'ISA', 0, 1),
(2588, 168, 'Kalinga', 'KAL', 0, 1),
(2589, 168, 'Laguna', 'LAG', 0, 1),
(2590, 168, 'Lanao del Norte', 'LNO', 0, 1),
(2591, 168, 'Lanao del Sur', 'LSU', 0, 1),
(2592, 168, 'La Union', 'UNI', 0, 1),
(2593, 168, 'Leyte', 'LEY', 0, 1),
(2594, 168, 'Maguindanao', 'MAG', 0, 1),
(2595, 168, 'Marinduque', 'MRN', 0, 1),
(2596, 168, 'Masbate', 'MSB', 0, 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 0, 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 0, 1),
(2599, 168, 'Misamis Occidental', 'MSC', 0, 1),
(2600, 168, 'Misamis Oriental', 'MOR', 0, 1),
(2601, 168, 'Mountain', 'MOP', 0, 1),
(2602, 168, 'Negros Occidental', 'NOC', 0, 1),
(2603, 168, 'Negros Oriental', 'NOR', 0, 1),
(2604, 168, 'North Cotabato', 'NCT', 0, 1),
(2605, 168, 'Northern Samar', 'NSM', 0, 1),
(2606, 168, 'Nueva Ecija', 'NEC', 0, 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 0, 1),
(2608, 168, 'Palawan', 'PLW', 0, 1),
(2609, 168, 'Pampanga', 'PMP', 0, 1),
(2610, 168, 'Pangasinan', 'PNG', 0, 1),
(2611, 168, 'Quezon', 'QZN', 0, 1),
(2612, 168, 'Quirino', 'QRN', 0, 1),
(2613, 168, 'Rizal', 'RIZ', 0, 1),
(2614, 168, 'Romblon', 'ROM', 0, 1),
(2615, 168, 'Samar', 'SMR', 0, 1),
(2616, 168, 'Sarangani', 'SRG', 0, 1),
(2617, 168, 'Siquijor', 'SQJ', 0, 1),
(2618, 168, 'Sorsogon', 'SRS', 0, 1),
(2619, 168, 'South Cotabato', 'SCO', 0, 1),
(2620, 168, 'Southern Leyte', 'SLE', 0, 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 0, 1),
(2622, 168, 'Sulu', 'SLU', 0, 1),
(2623, 168, 'Surigao del Norte', 'SNO', 0, 1),
(2624, 168, 'Surigao del Sur', 'SSU', 0, 1),
(2625, 168, 'Tarlac', 'TAR', 0, 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 0, 1),
(2627, 168, 'Zambales', 'ZBL', 0, 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 0, 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 0, 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 0, 1),
(2631, 170, 'Dolnoslaskie', 'DO', 0, 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 0, 1),
(2633, 170, 'Lodzkie', 'LO', 0, 1),
(2634, 170, 'Lubelskie', 'LL', 0, 1),
(2635, 170, 'Lubuskie', 'LU', 0, 1),
(2636, 170, 'Malopolskie', 'ML', 0, 1),
(2637, 170, 'Mazowieckie', 'MZ', 0, 1),
(2638, 170, 'Opolskie', 'OP', 0, 1),
(2639, 170, 'Podkarpackie', 'PP', 0, 1),
(2640, 170, 'Podlaskie', 'PL', 0, 1),
(2641, 170, 'Pomorskie', 'PM', 0, 1),
(2642, 170, 'Slaskie', 'SL', 0, 1),
(2643, 170, 'Swietokrzyskie', 'SW', 0, 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 0, 1),
(2645, 170, 'Wielkopolskie', 'WP', 0, 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 0, 1),
(2647, 198, 'Saint Pierre', 'P', 0, 1),
(2648, 198, 'Miquelon', 'M', 0, 1),
(2649, 171, 'A&ccedil;ores', 'AC', 0, 1),
(2650, 171, 'Aveiro', 'AV', 0, 1),
(2651, 171, 'Beja', 'BE', 0, 1),
(2652, 171, 'Braga', 'BR', 0, 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 0, 1),
(2654, 171, 'Castelo Branco', 'CB', 0, 1),
(2655, 171, 'Coimbra', 'CO', 0, 1),
(2656, 171, '&Eacute;vora', 'EV', 0, 1),
(2657, 171, 'Faro', 'FA', 0, 1),
(2658, 171, 'Guarda', 'GU', 0, 1),
(2659, 171, 'Leiria', 'LE', 0, 1),
(2660, 171, 'Lisboa', 'LI', 0, 1),
(2661, 171, 'Madeira', 'ME', 0, 1),
(2662, 171, 'Portalegre', 'PO', 0, 1),
(2663, 171, 'Porto', 'PR', 0, 1),
(2664, 171, 'Santar&eacute;m', 'SA', 0, 1),
(2665, 171, 'Set&uacute;bal', 'SE', 0, 1),
(2666, 171, 'Viana do Castelo', 'VC', 0, 1),
(2667, 171, 'Vila Real', 'VR', 0, 1),
(2668, 171, 'Viseu', 'VI', 0, 1),
(2669, 173, 'Ad Dawhah', 'DW', 0, 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 0, 1),
(2671, 173, 'Al Jumayliyah', 'JM', 0, 1),
(2672, 173, 'Al Khawr', 'KR', 0, 1),
(2673, 173, 'Al Wakrah', 'WK', 0, 1),
(2674, 173, 'Ar Rayyan', 'RN', 0, 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 0, 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 0, 1),
(2677, 173, 'Umm Sa\'id', 'UD', 0, 1),
(2678, 173, 'Umm Salal', 'UL', 0, 1),
(2679, 175, 'Alba', 'AB', 0, 1),
(2680, 175, 'Arad', 'AR', 0, 1),
(2681, 175, 'Arges', 'AG', 0, 1),
(2682, 175, 'Bacau', 'BC', 0, 1),
(2683, 175, 'Bihor', 'BH', 0, 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 0, 1),
(2685, 175, 'Botosani', 'BT', 0, 1),
(2686, 175, 'Brasov', 'BV', 0, 1),
(2687, 175, 'Braila', 'BR', 0, 1),
(2688, 175, 'Bucuresti', 'B', 0, 1),
(2689, 175, 'Buzau', 'BZ', 0, 1),
(2690, 175, 'Caras-Severin', 'CS', 0, 1),
(2691, 175, 'Calarasi', 'CL', 0, 1),
(2692, 175, 'Cluj', 'CJ', 0, 1),
(2693, 175, 'Constanta', 'CT', 0, 1),
(2694, 175, 'Covasna', 'CV', 0, 1),
(2695, 175, 'Dimbovita', 'DB', 0, 1),
(2696, 175, 'Dolj', 'DJ', 0, 1),
(2697, 175, 'Galati', 'GL', 0, 1),
(2698, 175, 'Giurgiu', 'GR', 0, 1),
(2699, 175, 'Gorj', 'GJ', 0, 1),
(2700, 175, 'Harghita', 'HR', 0, 1),
(2701, 175, 'Hunedoara', 'HD', 0, 1),
(2702, 175, 'Ialomita', 'IL', 0, 1),
(2703, 175, 'Iasi', 'IS', 0, 1),
(2704, 175, 'Ilfov', 'IF', 0, 1),
(2705, 175, 'Maramures', 'MM', 0, 1),
(2706, 175, 'Mehedinti', 'MH', 0, 1),
(2707, 175, 'Mures', 'MS', 0, 1),
(2708, 175, 'Neamt', 'NT', 0, 1),
(2709, 175, 'Olt', 'OT', 0, 1),
(2710, 175, 'Prahova', 'PH', 0, 1),
(2711, 175, 'Satu-Mare', 'SM', 0, 1),
(2712, 175, 'Salaj', 'SJ', 0, 1),
(2713, 175, 'Sibiu', 'SB', 0, 1),
(2714, 175, 'Suceava', 'SV', 0, 1),
(2715, 175, 'Teleorman', 'TR', 0, 1),
(2716, 175, 'Timis', 'TM', 0, 1),
(2717, 175, 'Tulcea', 'TL', 0, 1),
(2718, 175, 'Vaslui', 'VS', 0, 1),
(2719, 175, 'Valcea', 'VL', 0, 1),
(2720, 175, 'Vrancea', 'VN', 0, 1),
(2721, 176, 'Abakan', 'AB', 0, 1),
(2722, 176, 'Aginskoye', 'AG', 0, 1),
(2723, 176, 'Anadyr', 'AN', 0, 1),
(2724, 176, 'Arkahangelsk', 'AR', 0, 1),
(2725, 176, 'Astrakhan', 'AS', 0, 1),
(2726, 176, 'Barnaul', 'BA', 0, 1),
(2727, 176, 'Belgorod', 'BE', 0, 1),
(2728, 176, 'Birobidzhan', 'BI', 0, 1),
(2729, 176, 'Blagoveshchensk', 'BL', 0, 1),
(2730, 176, 'Bryansk', 'BR', 0, 1),
(2731, 176, 'Cheboksary', 'CH', 0, 1),
(2732, 176, 'Chelyabinsk', 'CL', 0, 1),
(2733, 176, 'Cherkessk', 'CR', 0, 1),
(2734, 176, 'Chita', 'CI', 0, 1),
(2735, 176, 'Dudinka', 'DU', 0, 1),
(2736, 176, 'Elista', 'EL', 0, 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 0, 1),
(2739, 176, 'Groznyy', 'GR', 0, 1),
(2740, 176, 'Irkutsk', 'IR', 0, 1),
(2741, 176, 'Ivanovo', 'IV', 0, 1),
(2742, 176, 'Izhevsk', 'IZ', 0, 1),
(2743, 176, 'Kalinigrad', 'KA', 0, 1),
(2744, 176, 'Kaluga', 'KL', 0, 1),
(2745, 176, 'Kasnodar', 'KS', 0, 1),
(2746, 176, 'Kazan', 'KZ', 0, 1),
(2747, 176, 'Kemerovo', 'KE', 0, 1),
(2748, 176, 'Khabarovsk', 'KH', 0, 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 0, 1),
(2750, 176, 'Kostroma', 'KO', 0, 1),
(2751, 176, 'Krasnodar', 'KR', 0, 1),
(2752, 176, 'Krasnoyarsk', 'KN', 0, 1),
(2753, 176, 'Kudymkar', 'KU', 0, 1),
(2754, 176, 'Kurgan', 'KG', 0, 1),
(2755, 176, 'Kursk', 'KK', 0, 1),
(2756, 176, 'Kyzyl', 'KY', 0, 1),
(2757, 176, 'Lipetsk', 'LI', 0, 1),
(2758, 176, 'Magadan', 'MA', 0, 1),
(2759, 176, 'Makhachkala', 'MK', 0, 1),
(2760, 176, 'Maykop', 'MY', 0, 1),
(2761, 176, 'Moscow', 'MO', 0, 1),
(2762, 176, 'Murmansk', 'MU', 0, 1),
(2763, 176, 'Nalchik', 'NA', 0, 1),
(2764, 176, 'Naryan Mar', 'NR', 0, 1),
(2765, 176, 'Nazran', 'NZ', 0, 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 0, 1),
(2767, 176, 'Novgorod', 'NO', 0, 1),
(2768, 176, 'Novosibirsk', 'NV', 0, 1),
(2769, 176, 'Omsk', 'OM', 0, 1),
(2770, 176, 'Orel', 'OR', 0, 1),
(2771, 176, 'Orenburg', 'OE', 0, 1),
(2772, 176, 'Palana', 'PA', 0, 1),
(2773, 176, 'Penza', 'PE', 0, 1),
(2774, 176, 'Perm', 'PR', 0, 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 0, 1),
(2776, 176, 'Petrozavodsk', 'PT', 0, 1),
(2777, 176, 'Pskov', 'PS', 0, 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 0, 1),
(2779, 176, 'Ryazan', 'RY', 0, 1),
(2780, 176, 'Salekhard', 'SL', 0, 1),
(2781, 176, 'Samara', 'SA', 0, 1),
(2782, 176, 'Saransk', 'SR', 0, 1),
(2783, 176, 'Saratov', 'SV', 0, 1),
(2784, 176, 'Smolensk', 'SM', 0, 1),
(2785, 176, 'St. Petersburg', 'SP', 0, 1),
(2786, 176, 'Stavropol', 'ST', 0, 1),
(2787, 176, 'Syktyvkar', 'SY', 0, 1),
(2788, 176, 'Tambov', 'TA', 0, 1),
(2789, 176, 'Tomsk', 'TO', 0, 1),
(2790, 176, 'Tula', 'TU', 0, 1),
(2791, 176, 'Tura', 'TR', 0, 1),
(2792, 176, 'Tver', 'TV', 0, 1),
(2793, 176, 'Tyumen', 'TY', 0, 1),
(2794, 176, 'Ufa', 'UF', 0, 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 0, 1),
(2796, 176, 'Ulan-Ude', 'UU', 0, 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 0, 1),
(2798, 176, 'Vladikavkaz', 'VL', 0, 1),
(2799, 176, 'Vladimir', 'VA', 0, 1),
(2800, 176, 'Vladivostok', 'VV', 0, 1),
(2801, 176, 'Volgograd', 'VG', 0, 1),
(2802, 176, 'Vologda', 'VD', 0, 1),
(2803, 176, 'Voronezh', 'VO', 0, 1),
(2804, 176, 'Vyatka', 'VY', 0, 1),
(2805, 176, 'Yakutsk', 'YA', 0, 1),
(2806, 176, 'Yaroslavl', 'YR', 0, 1),
(2807, 176, 'Yekaterinburg', 'YE', 0, 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 0, 1),
(2809, 177, 'Butare', 'BU', 0, 1),
(2810, 177, 'Byumba', 'BY', 0, 1),
(2811, 177, 'Cyangugu', 'CY', 0, 1),
(2812, 177, 'Gikongoro', 'GK', 0, 1),
(2813, 177, 'Gisenyi', 'GS', 0, 1),
(2814, 177, 'Gitarama', 'GT', 0, 1),
(2815, 177, 'Kibungo', 'KG', 0, 1),
(2816, 177, 'Kibuye', 'KY', 0, 1),
(2817, 177, 'Kigali Rurale', 'KR', 0, 1),
(2818, 177, 'Kigali-ville', 'KV', 0, 1),
(2819, 177, 'Ruhengeri', 'RU', 0, 1),
(2820, 177, 'Umutara', 'UM', 0, 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 0, 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 0, 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 0, 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 0, 1),
(2825, 178, 'Saint James Windward', 'SJW', 0, 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 0, 1),
(2827, 178, 'Saint John Figtree', 'SJF', 0, 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 0, 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 0, 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 0, 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 0, 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 0, 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 0, 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 0, 1),
(2835, 179, 'Anse-la-Raye', 'AR', 0, 1),
(2836, 179, 'Castries', 'CA', 0, 1),
(2837, 179, 'Choiseul', 'CH', 0, 1),
(2838, 179, 'Dauphin', 'DA', 0, 1),
(2839, 179, 'Dennery', 'DE', 0, 1),
(2840, 179, 'Gros-Islet', 'GI', 0, 1),
(2841, 179, 'Laborie', 'LA', 0, 1),
(2842, 179, 'Micoud', 'MI', 0, 1),
(2843, 179, 'Praslin', 'PR', 0, 1),
(2844, 179, 'Soufriere', 'SO', 0, 1),
(2845, 179, 'Vieux-Fort', 'VF', 0, 1),
(2846, 180, 'Charlotte', 'C', 0, 1),
(2847, 180, 'Grenadines', 'R', 0, 1),
(2848, 180, 'Saint Andrew', 'A', 0, 1),
(2849, 180, 'Saint David', 'D', 0, 1),
(2850, 180, 'Saint George', 'G', 0, 1),
(2851, 180, 'Saint Patrick', 'P', 0, 1),
(2852, 181, 'A\'ana', 'AN', 0, 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 0, 1),
(2854, 181, 'Atua', 'AT', 0, 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 0, 1),
(2856, 181, 'Gaga\'emauga', 'GE', 0, 1),
(2857, 181, 'Gagaifomauga', 'GF', 0, 1),
(2858, 181, 'Palauli', 'PA', 0, 1),
(2859, 181, 'Satupa\'itea', 'SA', 0, 1),
(2860, 181, 'Tuamasaga', 'TU', 0, 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 0, 1),
(2862, 181, 'Vaisigano', 'VS', 0, 1),
(2863, 182, 'Acquaviva', 'AC', 0, 1),
(2864, 182, 'Borgo Maggiore', 'BM', 0, 1),
(2865, 182, 'Chiesanuova', 'CH', 0, 1),
(2866, 182, 'Domagnano', 'DO', 0, 1),
(2867, 182, 'Faetano', 'FA', 0, 1),
(2868, 182, 'Fiorentino', 'FI', 0, 1),
(2869, 182, 'Montegiardino', 'MO', 0, 1),
(2870, 182, 'Citta di San Marino', 'SM', 0, 1),
(2871, 182, 'Serravalle', 'SE', 0, 1),
(2872, 183, 'Sao Tome', 'S', 0, 1),
(2873, 183, 'Principe', 'P', 0, 1),
(2874, 184, 'Al Bahah', 'BH', 0, 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 0, 1),
(2876, 184, 'Al Jawf', 'JF', 0, 1),
(2877, 184, 'Al Madinah', 'MD', 0, 1),
(2878, 184, 'Al Qasim', 'QS', 0, 1),
(2879, 184, 'Ar Riyad', 'RD', 0, 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 0, 1),
(2881, 184, '\'Asir', 'AS', 0, 1),
(2882, 184, 'Ha\'il', 'HL', 0, 1),
(2883, 184, 'Jizan', 'JZ', 0, 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `delivery_price`, `status`) VALUES
(2884, 184, 'Makkah', 'ML', 0, 1),
(2885, 184, 'Najran', 'NR', 0, 1),
(2886, 184, 'Tabuk', 'TB', 0, 1),
(2887, 185, 'Dakar', 'DA', 0, 1),
(2888, 185, 'Diourbel', 'DI', 0, 1),
(2889, 185, 'Fatick', 'FA', 0, 1),
(2890, 185, 'Kaolack', 'KA', 0, 1),
(2891, 185, 'Kolda', 'KO', 0, 1),
(2892, 185, 'Louga', 'LO', 0, 1),
(2893, 185, 'Matam', 'MA', 0, 1),
(2894, 185, 'Saint-Louis', 'SL', 0, 1),
(2895, 185, 'Tambacounda', 'TA', 0, 1),
(2896, 185, 'Thies', 'TH', 0, 1),
(2897, 185, 'Ziguinchor', 'ZI', 0, 1),
(2898, 186, 'Anse aux Pins', 'AP', 0, 1),
(2899, 186, 'Anse Boileau', 'AB', 0, 1),
(2900, 186, 'Anse Etoile', 'AE', 0, 1),
(2901, 186, 'Anse Louis', 'AL', 0, 1),
(2902, 186, 'Anse Royale', 'AR', 0, 1),
(2903, 186, 'Baie Lazare', 'BL', 0, 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 0, 1),
(2905, 186, 'Beau Vallon', 'BV', 0, 1),
(2906, 186, 'Bel Air', 'BA', 0, 1),
(2907, 186, 'Bel Ombre', 'BO', 0, 1),
(2908, 186, 'Cascade', 'CA', 0, 1),
(2909, 186, 'Glacis', 'GL', 0, 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 0, 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 0, 1),
(2912, 186, 'La Digue', 'DG', 0, 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 0, 1),
(2914, 186, 'Mont Buxton', 'MB', 0, 1),
(2915, 186, 'Mont Fleuri', 'MF', 0, 1),
(2916, 186, 'Plaisance', 'PL', 0, 1),
(2917, 186, 'Pointe La Rue', 'PR', 0, 1),
(2918, 186, 'Port Glaud', 'PG', 0, 1),
(2919, 186, 'Saint Louis', 'SL', 0, 1),
(2920, 186, 'Takamaka', 'TA', 0, 1),
(2921, 187, 'Eastern', 'E', 0, 1),
(2922, 187, 'Northern', 'N', 0, 1),
(2923, 187, 'Southern', 'S', 0, 1),
(2924, 187, 'Western', 'W', 0, 1),
(2925, 189, 'Banskobystrický', 'BA', 0, 1),
(2926, 189, 'Bratislavský', 'BR', 0, 1),
(2927, 189, 'Košický', 'KO', 0, 1),
(2928, 189, 'Nitriansky', 'NI', 0, 1),
(2929, 189, 'Prešovský', 'PR', 0, 1),
(2930, 189, 'Trenčiansky', 'TC', 0, 1),
(2931, 189, 'Trnavský', 'TV', 0, 1),
(2932, 189, 'Žilinský', 'ZI', 0, 1),
(2933, 191, 'Central', 'CE', 0, 1),
(2934, 191, 'Choiseul', 'CH', 0, 1),
(2935, 191, 'Guadalcanal', 'GC', 0, 1),
(2936, 191, 'Honiara', 'HO', 0, 1),
(2937, 191, 'Isabel', 'IS', 0, 1),
(2938, 191, 'Makira', 'MK', 0, 1),
(2939, 191, 'Malaita', 'ML', 0, 1),
(2940, 191, 'Rennell and Bellona', 'RB', 0, 1),
(2941, 191, 'Temotu', 'TM', 0, 1),
(2942, 191, 'Western', 'WE', 0, 1),
(2943, 192, 'Awdal', 'AW', 0, 1),
(2944, 192, 'Bakool', 'BK', 0, 1),
(2945, 192, 'Banaadir', 'BN', 0, 1),
(2946, 192, 'Bari', 'BR', 0, 1),
(2947, 192, 'Bay', 'BY', 0, 1),
(2948, 192, 'Galguduud', 'GA', 0, 1),
(2949, 192, 'Gedo', 'GE', 0, 1),
(2950, 192, 'Hiiraan', 'HI', 0, 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 0, 1),
(2952, 192, 'Jubbada Hoose', 'JH', 0, 1),
(2953, 192, 'Mudug', 'MU', 0, 1),
(2954, 192, 'Nugaal', 'NU', 0, 1),
(2955, 192, 'Sanaag', 'SA', 0, 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 0, 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 0, 1),
(2958, 192, 'Sool', 'SL', 0, 1),
(2959, 192, 'Togdheer', 'TO', 0, 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 0, 1),
(2961, 193, 'Eastern Cape', 'EC', 0, 1),
(2962, 193, 'Free State', 'FS', 0, 1),
(2963, 193, 'Gauteng', 'GT', 0, 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 0, 1),
(2965, 193, 'Limpopo', 'LP', 0, 1),
(2966, 193, 'Mpumalanga', 'MP', 0, 1),
(2967, 193, 'North West', 'NW', 0, 1),
(2968, 193, 'Northern Cape', 'NC', 0, 1),
(2969, 193, 'Western Cape', 'WC', 0, 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 0, 1),
(2971, 195, '&Aacute;lava', 'AL', 0, 1),
(2972, 195, 'Albacete', 'AB', 0, 1),
(2973, 195, 'Alicante', 'AC', 0, 1),
(2974, 195, 'Almeria', 'AM', 0, 1),
(2975, 195, 'Asturias', 'AS', 0, 1),
(2976, 195, '&Aacute;vila', 'AV', 0, 1),
(2977, 195, 'Badajoz', 'BJ', 0, 1),
(2978, 195, 'Baleares', 'IB', 0, 1),
(2979, 195, 'Barcelona', 'BA', 0, 1),
(2980, 195, 'Burgos', 'BU', 0, 1),
(2981, 195, 'C&aacute;ceres', 'CC', 0, 1),
(2982, 195, 'C&aacute;diz', 'CZ', 0, 1),
(2983, 195, 'Cantabria', 'CT', 0, 1),
(2984, 195, 'Castell&oacute;n', 'CL', 0, 1),
(2985, 195, 'Ceuta', 'CE', 0, 1),
(2986, 195, 'Ciudad Real', 'CR', 0, 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 0, 1),
(2988, 195, 'Cuenca', 'CU', 0, 1),
(2989, 195, 'Girona', 'GI', 0, 1),
(2990, 195, 'Granada', 'GD', 0, 1),
(2991, 195, 'Guadalajara', 'GJ', 0, 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 0, 1),
(2993, 195, 'Huelva', 'HL', 0, 1),
(2994, 195, 'Huesca', 'HS', 0, 1),
(2995, 195, 'Ja&eacute;n', 'JN', 0, 1),
(2996, 195, 'La Rioja', 'RJ', 0, 1),
(2997, 195, 'Las Palmas', 'PM', 0, 1),
(2998, 195, 'Leon', 'LE', 0, 1),
(2999, 195, 'Lleida', 'LL', 0, 1),
(3000, 195, 'Lugo', 'LG', 0, 1),
(3001, 195, 'Madrid', 'MD', 0, 1),
(3002, 195, 'Malaga', 'MA', 0, 1),
(3003, 195, 'Melilla', 'ML', 0, 1),
(3004, 195, 'Murcia', 'MU', 0, 1),
(3005, 195, 'Navarra', 'NV', 0, 1),
(3006, 195, 'Ourense', 'OU', 0, 1),
(3007, 195, 'Palencia', 'PL', 0, 1),
(3008, 195, 'Pontevedra', 'PO', 0, 1),
(3009, 195, 'Salamanca', 'SL', 0, 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 0, 1),
(3011, 195, 'Segovia', 'SG', 0, 1),
(3012, 195, 'Sevilla', 'SV', 0, 1),
(3013, 195, 'Soria', 'SO', 0, 1),
(3014, 195, 'Tarragona', 'TA', 0, 1),
(3015, 195, 'Teruel', 'TE', 0, 1),
(3016, 195, 'Toledo', 'TO', 0, 1),
(3017, 195, 'Valencia', 'VC', 0, 1),
(3018, 195, 'Valladolid', 'VD', 0, 1),
(3019, 195, 'Vizcaya', 'VZ', 0, 1),
(3020, 195, 'Zamora', 'ZM', 0, 1),
(3021, 195, 'Zaragoza', 'ZR', 0, 1),
(3022, 196, 'Central', 'CE', 0, 1),
(3023, 196, 'Eastern', 'EA', 0, 1),
(3024, 196, 'North Central', 'NC', 0, 1),
(3025, 196, 'Northern', 'NO', 0, 1),
(3026, 196, 'North Western', 'NW', 0, 1),
(3027, 196, 'Sabaragamuwa', 'SA', 0, 1),
(3028, 196, 'Southern', 'SO', 0, 1),
(3029, 196, 'Uva', 'UV', 0, 1),
(3030, 196, 'Western', 'WE', 0, 1),
(3032, 197, 'Saint Helena', 'S', 0, 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 0, 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 0, 1),
(3036, 199, 'Al Buhayrat', 'BRT', 0, 1),
(3037, 199, 'Al Jazirah', 'JZR', 0, 1),
(3038, 199, 'Al Khartum', 'KRT', 0, 1),
(3039, 199, 'Al Qadarif', 'QDR', 0, 1),
(3040, 199, 'Al Wahdah', 'WDH', 0, 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 0, 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 0, 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 0, 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 0, 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 0, 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 0, 1),
(3047, 199, 'Gharb Darfur', 'GDA', 0, 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 0, 1),
(3049, 199, 'Janub Darfur', 'JDA', 0, 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 0, 1),
(3051, 199, 'Junqali', 'JQL', 0, 1),
(3052, 199, 'Kassala', 'KSL', 0, 1),
(3053, 199, 'Nahr an Nil', 'NNL', 0, 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 0, 1),
(3055, 199, 'Shamal Darfur', 'SDA', 0, 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 0, 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 0, 1),
(3058, 199, 'Sinnar', 'SNR', 0, 1),
(3059, 199, 'Warab', 'WRB', 0, 1),
(3060, 200, 'Brokopondo', 'BR', 0, 1),
(3061, 200, 'Commewijne', 'CM', 0, 1),
(3062, 200, 'Coronie', 'CR', 0, 1),
(3063, 200, 'Marowijne', 'MA', 0, 1),
(3064, 200, 'Nickerie', 'NI', 0, 1),
(3065, 200, 'Para', 'PA', 0, 1),
(3066, 200, 'Paramaribo', 'PM', 0, 1),
(3067, 200, 'Saramacca', 'SA', 0, 1),
(3068, 200, 'Sipaliwini', 'SI', 0, 1),
(3069, 200, 'Wanica', 'WA', 0, 1),
(3070, 202, 'Hhohho', 'H', 0, 1),
(3071, 202, 'Lubombo', 'L', 0, 1),
(3072, 202, 'Manzini', 'M', 0, 1),
(3073, 202, 'Shishelweni', 'S', 0, 1),
(3074, 203, 'Blekinge', 'K', 0, 1),
(3075, 203, 'Dalarna', 'W', 0, 1),
(3076, 203, 'Gävleborg', 'X', 0, 1),
(3077, 203, 'Gotland', 'I', 0, 1),
(3078, 203, 'Halland', 'N', 0, 1),
(3079, 203, 'Jämtland', 'Z', 0, 1),
(3080, 203, 'Jönköping', 'F', 0, 1),
(3081, 203, 'Kalmar', 'H', 0, 1),
(3082, 203, 'Kronoberg', 'G', 0, 1),
(3083, 203, 'Norrbotten', 'BD', 0, 1),
(3084, 203, 'Örebro', 'T', 0, 1),
(3085, 203, 'Östergötland', 'E', 0, 1),
(3086, 203, 'Sk&aring;ne', 'M', 0, 1),
(3087, 203, 'Södermanland', 'D', 0, 1),
(3088, 203, 'Stockholm', 'AB', 0, 1),
(3089, 203, 'Uppsala', 'C', 0, 1),
(3090, 203, 'Värmland', 'S', 0, 1),
(3091, 203, 'Västerbotten', 'AC', 0, 1),
(3092, 203, 'Västernorrland', 'Y', 0, 1),
(3093, 203, 'Västmanland', 'U', 0, 1),
(3094, 203, 'Västra Götaland', 'O', 0, 1),
(3095, 204, 'Aargau', 'AG', 0, 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 0, 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 0, 1),
(3098, 204, 'Basel-Stadt', 'BS', 0, 1),
(3099, 204, 'Basel-Landschaft', 'BL', 0, 1),
(3100, 204, 'Bern', 'BE', 0, 1),
(3101, 204, 'Fribourg', 'FR', 0, 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 0, 1),
(3103, 204, 'Glarus', 'GL', 0, 1),
(3104, 204, 'Graubünden', 'GR', 0, 1),
(3105, 204, 'Jura', 'JU', 0, 1),
(3106, 204, 'Luzern', 'LU', 0, 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 0, 1),
(3108, 204, 'Nidwald', 'NW', 0, 1),
(3109, 204, 'Obwald', 'OW', 0, 1),
(3110, 204, 'St. Gallen', 'SG', 0, 1),
(3111, 204, 'Schaffhausen', 'SH', 0, 1),
(3112, 204, 'Schwyz', 'SZ', 0, 1),
(3113, 204, 'Solothurn', 'SO', 0, 1),
(3114, 204, 'Thurgau', 'TG', 0, 1),
(3115, 204, 'Ticino', 'TI', 0, 1),
(3116, 204, 'Uri', 'UR', 0, 1),
(3117, 204, 'Valais', 'VS', 0, 1),
(3118, 204, 'Vaud', 'VD', 0, 1),
(3119, 204, 'Zug', 'ZG', 0, 1),
(3120, 204, 'Zürich', 'ZH', 0, 1),
(3121, 205, 'Al Hasakah', 'HA', 0, 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 0, 1),
(3123, 205, 'Al Qunaytirah', 'QU', 0, 1),
(3124, 205, 'Ar Raqqah', 'RQ', 0, 1),
(3125, 205, 'As Suwayda', 'SU', 0, 1),
(3126, 205, 'Dara', 'DA', 0, 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 0, 1),
(3128, 205, 'Dimashq', 'DI', 0, 1),
(3129, 205, 'Halab', 'HL', 0, 1),
(3130, 205, 'Hamah', 'HM', 0, 1),
(3131, 205, 'Hims', 'HI', 0, 1),
(3132, 205, 'Idlib', 'ID', 0, 1),
(3133, 205, 'Rif Dimashq', 'RD', 0, 1),
(3134, 205, 'Tartus', 'TA', 0, 1),
(3135, 206, 'Chang-hua', 'CH', 0, 1),
(3136, 206, 'Chia-i', 'CI', 0, 1),
(3137, 206, 'Hsin-chu', 'HS', 0, 1),
(3138, 206, 'Hua-lien', 'HL', 0, 1),
(3139, 206, 'I-lan', 'IL', 0, 1),
(3140, 206, 'Kao-hsiung county', 'KH', 0, 1),
(3141, 206, 'Kin-men', 'KM', 0, 1),
(3142, 206, 'Lien-chiang', 'LC', 0, 1),
(3143, 206, 'Miao-li', 'ML', 0, 1),
(3144, 206, 'Nan-t\'ou', 'NT', 0, 1),
(3145, 206, 'P\'eng-hu', 'PH', 0, 1),
(3146, 206, 'P\'ing-tung', 'PT', 0, 1),
(3147, 206, 'T\'ai-chung', 'TG', 0, 1),
(3148, 206, 'T\'ai-nan', 'TA', 0, 1),
(3149, 206, 'T\'ai-pei county', 'TP', 0, 1),
(3150, 206, 'T\'ai-tung', 'TT', 0, 1),
(3151, 206, 'T\'ao-yuan', 'TY', 0, 1),
(3152, 206, 'Yun-lin', 'YL', 0, 1),
(3153, 206, 'Chia-i city', 'CC', 0, 1),
(3154, 206, 'Chi-lung', 'CL', 0, 1),
(3155, 206, 'Hsin-chu', 'HC', 0, 1),
(3156, 206, 'T\'ai-chung', 'TH', 0, 1),
(3157, 206, 'T\'ai-nan', 'TN', 0, 1),
(3158, 206, 'Kao-hsiung city', 'KC', 0, 1),
(3159, 206, 'T\'ai-pei city', 'TC', 0, 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 0, 1),
(3161, 207, 'Khatlon', 'KT', 0, 1),
(3162, 207, 'Sughd', 'SU', 0, 1),
(3163, 208, 'Arusha', 'AR', 0, 1),
(3164, 208, 'Dar es Salaam', 'DS', 0, 1),
(3165, 208, 'Dodoma', 'DO', 0, 1),
(3166, 208, 'Iringa', 'IR', 0, 1),
(3167, 208, 'Kagera', 'KA', 0, 1),
(3168, 208, 'Kigoma', 'KI', 0, 1),
(3169, 208, 'Kilimanjaro', 'KJ', 0, 1),
(3170, 208, 'Lindi', 'LN', 0, 1),
(3171, 208, 'Manyara', 'MY', 0, 1),
(3172, 208, 'Mara', 'MR', 0, 1),
(3173, 208, 'Mbeya', 'MB', 0, 1),
(3174, 208, 'Morogoro', 'MO', 0, 1),
(3175, 208, 'Mtwara', 'MT', 0, 1),
(3176, 208, 'Mwanza', 'MW', 0, 1),
(3177, 208, 'Pemba North', 'PN', 0, 1),
(3178, 208, 'Pemba South', 'PS', 0, 1),
(3179, 208, 'Pwani', 'PW', 0, 1),
(3180, 208, 'Rukwa', 'RK', 0, 1),
(3181, 208, 'Ruvuma', 'RV', 0, 1),
(3182, 208, 'Shinyanga', 'SH', 0, 1),
(3183, 208, 'Singida', 'SI', 0, 1),
(3184, 208, 'Tabora', 'TB', 0, 1),
(3185, 208, 'Tanga', 'TN', 0, 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 0, 1),
(3187, 208, 'Zanzibar North', 'ZN', 0, 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 0, 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 0, 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 0, 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 0, 1),
(3192, 209, 'Bangkok', 'Bangkok', 0, 1),
(3193, 209, 'Buriram', 'Buriram', 0, 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 0, 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 0, 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 0, 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 0, 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 0, 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 0, 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 0, 1),
(3201, 209, 'Chumphon', 'Chumphon', 0, 1),
(3202, 209, 'Kalasin', 'Kalasin', 0, 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 0, 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 0, 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 0, 1),
(3206, 209, 'Krabi', 'Krabi', 0, 1),
(3207, 209, 'Lampang', 'Lampang', 0, 1),
(3208, 209, 'Lamphun', 'Lamphun', 0, 1),
(3209, 209, 'Loei', 'Loei', 0, 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 0, 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 0, 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 0, 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 0, 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 0, 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 0, 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 0, 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 0, 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 0, 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 0, 1),
(3220, 209, 'Nan', 'Nan', 0, 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 0, 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 0, 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 0, 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 0, 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 0, 1),
(3226, 209, 'Pattani', 'Pattani', 0, 1),
(3227, 209, 'Phangnga', 'Phangnga', 0, 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 0, 1),
(3229, 209, 'Phayao', 'Phayao', 0, 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 0, 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 0, 1),
(3232, 209, 'Phichit', 'Phichit', 0, 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 0, 1),
(3234, 209, 'Phrae', 'Phrae', 0, 1),
(3235, 209, 'Phuket', 'Phuket', 0, 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 0, 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 0, 1),
(3238, 209, 'Ranong', 'Ranong', 0, 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 0, 1),
(3240, 209, 'Rayong', 'Rayong', 0, 1),
(3241, 209, 'Roi Et', 'Roi Et', 0, 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 0, 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 0, 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 0, 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 0, 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 0, 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 0, 1),
(3248, 209, 'Satun', 'Satun', 0, 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 0, 1),
(3250, 209, 'Sisaket', 'Sisaket', 0, 1),
(3251, 209, 'Songkhla', 'Songkhla', 0, 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 0, 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 0, 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 0, 1),
(3255, 209, 'Surin', 'Surin', 0, 1),
(3256, 209, 'Tak', 'Tak', 0, 1),
(3257, 209, 'Trang', 'Trang', 0, 1),
(3258, 209, 'Trat', 'Trat', 0, 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 0, 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 0, 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 0, 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 0, 1),
(3263, 209, 'Yala', 'Yala', 0, 1),
(3264, 209, 'Yasothon', 'Yasothon', 0, 1),
(3265, 210, 'Kara', 'K', 0, 1),
(3266, 210, 'Plateaux', 'P', 0, 1),
(3267, 210, 'Savanes', 'S', 0, 1),
(3268, 210, 'Centrale', 'C', 0, 1),
(3269, 210, 'Maritime', 'M', 0, 1),
(3270, 211, 'Atafu', 'A', 0, 1),
(3271, 211, 'Fakaofo', 'F', 0, 1),
(3272, 211, 'Nukunonu', 'N', 0, 1),
(3273, 212, 'Ha\'apai', 'H', 0, 1),
(3274, 212, 'Tongatapu', 'T', 0, 1),
(3275, 212, 'Vava\'u', 'V', 0, 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 0, 1),
(3277, 213, 'Diego Martin', 'DM', 0, 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 0, 1),
(3279, 213, 'Penal/Debe', 'PD', 0, 1),
(3280, 213, 'Princes Town', 'PT', 0, 1),
(3281, 213, 'Sangre Grande', 'SG', 0, 1),
(3282, 213, 'San Juan/Laventille', 'SL', 0, 1),
(3283, 213, 'Siparia', 'SI', 0, 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 0, 1),
(3285, 213, 'Port of Spain', 'PS', 0, 1),
(3286, 213, 'San Fernando', 'SF', 0, 1),
(3287, 213, 'Arima', 'AR', 0, 1),
(3288, 213, 'Point Fortin', 'PF', 0, 1),
(3289, 213, 'Chaguanas', 'CH', 0, 1),
(3290, 213, 'Tobago', 'TO', 0, 1),
(3291, 214, 'Ariana', 'AR', 0, 1),
(3292, 214, 'Beja', 'BJ', 0, 1),
(3293, 214, 'Ben Arous', 'BA', 0, 1),
(3294, 214, 'Bizerte', 'BI', 0, 1),
(3295, 214, 'Gabes', 'GB', 0, 1),
(3296, 214, 'Gafsa', 'GF', 0, 1),
(3297, 214, 'Jendouba', 'JE', 0, 1),
(3298, 214, 'Kairouan', 'KR', 0, 1),
(3299, 214, 'Kasserine', 'KS', 0, 1),
(3300, 214, 'Kebili', 'KB', 0, 1),
(3301, 214, 'Kef', 'KF', 0, 1),
(3302, 214, 'Mahdia', 'MH', 0, 1),
(3303, 214, 'Manouba', 'MN', 0, 1),
(3304, 214, 'Medenine', 'ME', 0, 1),
(3305, 214, 'Monastir', 'MO', 0, 1),
(3306, 214, 'Nabeul', 'NA', 0, 1),
(3307, 214, 'Sfax', 'SF', 0, 1),
(3308, 214, 'Sidi', 'SD', 0, 1),
(3309, 214, 'Siliana', 'SL', 0, 1),
(3310, 214, 'Sousse', 'SO', 0, 1),
(3311, 214, 'Tataouine', 'TA', 0, 1),
(3312, 214, 'Tozeur', 'TO', 0, 1),
(3313, 214, 'Tunis', 'TU', 0, 1),
(3314, 214, 'Zaghouan', 'ZA', 0, 1),
(3315, 215, 'Adana', 'ADA', 0, 1),
(3316, 215, 'Adıyaman', 'ADI', 0, 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 0, 1),
(3318, 215, 'Ağrı', 'AGR', 0, 1),
(3319, 215, 'Aksaray', 'AKS', 0, 1),
(3320, 215, 'Amasya', 'AMA', 0, 1),
(3321, 215, 'Ankara', 'ANK', 0, 1),
(3322, 215, 'Antalya', 'ANT', 0, 1),
(3323, 215, 'Ardahan', 'ARD', 0, 1),
(3324, 215, 'Artvin', 'ART', 0, 1),
(3325, 215, 'Aydın', 'AYI', 0, 1),
(3326, 215, 'Balıkesir', 'BAL', 0, 1),
(3327, 215, 'Bartın', 'BAR', 0, 1),
(3328, 215, 'Batman', 'BAT', 0, 1),
(3329, 215, 'Bayburt', 'BAY', 0, 1),
(3330, 215, 'Bilecik', 'BIL', 0, 1),
(3331, 215, 'Bingöl', 'BIN', 0, 1),
(3332, 215, 'Bitlis', 'BIT', 0, 1),
(3333, 215, 'Bolu', 'BOL', 0, 1),
(3334, 215, 'Burdur', 'BRD', 0, 1),
(3335, 215, 'Bursa', 'BRS', 0, 1),
(3336, 215, 'Çanakkale', 'CKL', 0, 1),
(3337, 215, 'Çankırı', 'CKR', 0, 1),
(3338, 215, 'Çorum', 'COR', 0, 1),
(3339, 215, 'Denizli', 'DEN', 0, 1),
(3340, 215, 'Diyarbakır', 'DIY', 0, 1),
(3341, 215, 'Düzce', 'DUZ', 0, 1),
(3342, 215, 'Edirne', 'EDI', 0, 1),
(3343, 215, 'Elazığ', 'ELA', 0, 1),
(3344, 215, 'Erzincan', 'EZC', 0, 1),
(3345, 215, 'Erzurum', 'EZR', 0, 1),
(3346, 215, 'Eskişehir', 'ESK', 0, 1),
(3347, 215, 'Gaziantep', 'GAZ', 0, 1),
(3348, 215, 'Giresun', 'GIR', 0, 1),
(3349, 215, 'Gümüşhane', 'GMS', 0, 1),
(3350, 215, 'Hakkari', 'HKR', 0, 1),
(3351, 215, 'Hatay', 'HTY', 0, 1),
(3352, 215, 'Iğdır', 'IGD', 0, 1),
(3353, 215, 'Isparta', 'ISP', 0, 1),
(3354, 215, 'İstanbul', 'IST', 0, 1),
(3355, 215, 'İzmir', 'IZM', 0, 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 0, 1),
(3357, 215, 'Karabük', 'KRB', 0, 1),
(3358, 215, 'Karaman', 'KRM', 0, 1),
(3359, 215, 'Kars', 'KRS', 0, 1),
(3360, 215, 'Kastamonu', 'KAS', 0, 1),
(3361, 215, 'Kayseri', 'KAY', 0, 1),
(3362, 215, 'Kilis', 'KLS', 0, 1),
(3363, 215, 'Kırıkkale', 'KRK', 0, 1),
(3364, 215, 'Kırklareli', 'KLR', 0, 1),
(3365, 215, 'Kırşehir', 'KRH', 0, 1),
(3366, 215, 'Kocaeli', 'KOC', 0, 1),
(3367, 215, 'Konya', 'KON', 0, 1),
(3368, 215, 'Kütahya', 'KUT', 0, 1),
(3369, 215, 'Malatya', 'MAL', 0, 1),
(3370, 215, 'Manisa', 'MAN', 0, 1),
(3371, 215, 'Mardin', 'MAR', 0, 1),
(3372, 215, 'Mersin', 'MER', 0, 1),
(3373, 215, 'Muğla', 'MUG', 0, 1),
(3374, 215, 'Muş', 'MUS', 0, 1),
(3375, 215, 'Nevşehir', 'NEV', 0, 1),
(3376, 215, 'Niğde', 'NIG', 0, 1),
(3377, 215, 'Ordu', 'ORD', 0, 1),
(3378, 215, 'Osmaniye', 'OSM', 0, 1),
(3379, 215, 'Rize', 'RIZ', 0, 1),
(3380, 215, 'Sakarya', 'SAK', 0, 1),
(3381, 215, 'Samsun', 'SAM', 0, 1),
(3382, 215, 'Şanlıurfa', 'SAN', 0, 1),
(3383, 215, 'Siirt', 'SII', 0, 1),
(3384, 215, 'Sinop', 'SIN', 0, 1),
(3385, 215, 'Şırnak', 'SIR', 0, 1),
(3386, 215, 'Sivas', 'SIV', 0, 1),
(3387, 215, 'Tekirdağ', 'TEL', 0, 1),
(3388, 215, 'Tokat', 'TOK', 0, 1),
(3389, 215, 'Trabzon', 'TRA', 0, 1),
(3390, 215, 'Tunceli', 'TUN', 0, 1),
(3391, 215, 'Uşak', 'USK', 0, 1),
(3392, 215, 'Van', 'VAN', 0, 1),
(3393, 215, 'Yalova', 'YAL', 0, 1),
(3394, 215, 'Yozgat', 'YOZ', 0, 1),
(3395, 215, 'Zonguldak', 'ZON', 0, 1),
(3396, 216, 'Ahal Welayaty', 'A', 0, 1),
(3397, 216, 'Balkan Welayaty', 'B', 0, 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 0, 1),
(3399, 216, 'Lebap Welayaty', 'L', 0, 1),
(3400, 216, 'Mary Welayaty', 'M', 0, 1),
(3401, 217, 'Ambergris Cays', 'AC', 0, 1),
(3402, 217, 'Dellis Cay', 'DC', 0, 1),
(3403, 217, 'French Cay', 'FC', 0, 1),
(3404, 217, 'Little Water Cay', 'LW', 0, 1),
(3405, 217, 'Parrot Cay', 'RC', 0, 1),
(3406, 217, 'Pine Cay', 'PN', 0, 1),
(3407, 217, 'Salt Cay', 'SL', 0, 1),
(3408, 217, 'Grand Turk', 'GT', 0, 1),
(3409, 217, 'South Caicos', 'SC', 0, 1),
(3410, 217, 'East Caicos', 'EC', 0, 1),
(3411, 217, 'Middle Caicos', 'MC', 0, 1),
(3412, 217, 'North Caicos', 'NC', 0, 1),
(3413, 217, 'Providenciales', 'PR', 0, 1),
(3414, 217, 'West Caicos', 'WC', 0, 1),
(3415, 218, 'Nanumanga', 'NMG', 0, 1),
(3416, 218, 'Niulakita', 'NLK', 0, 1),
(3417, 218, 'Niutao', 'NTO', 0, 1),
(3418, 218, 'Funafuti', 'FUN', 0, 1),
(3419, 218, 'Nanumea', 'NME', 0, 1),
(3420, 218, 'Nui', 'NUI', 0, 1),
(3421, 218, 'Nukufetau', 'NFT', 0, 1),
(3422, 218, 'Nukulaelae', 'NLL', 0, 1),
(3423, 218, 'Vaitupu', 'VAI', 0, 1),
(3424, 219, 'Kalangala', 'KAL', 0, 1),
(3425, 219, 'Kampala', 'KMP', 0, 1),
(3426, 219, 'Kayunga', 'KAY', 0, 1),
(3427, 219, 'Kiboga', 'KIB', 0, 1),
(3428, 219, 'Luwero', 'LUW', 0, 1),
(3429, 219, 'Masaka', 'MAS', 0, 1),
(3430, 219, 'Mpigi', 'MPI', 0, 1),
(3431, 219, 'Mubende', 'MUB', 0, 1),
(3432, 219, 'Mukono', 'MUK', 0, 1),
(3433, 219, 'Nakasongola', 'NKS', 0, 1),
(3434, 219, 'Rakai', 'RAK', 0, 1),
(3435, 219, 'Sembabule', 'SEM', 0, 1),
(3436, 219, 'Wakiso', 'WAK', 0, 1),
(3437, 219, 'Bugiri', 'BUG', 0, 1),
(3438, 219, 'Busia', 'BUS', 0, 1),
(3439, 219, 'Iganga', 'IGA', 0, 1),
(3440, 219, 'Jinja', 'JIN', 0, 1),
(3441, 219, 'Kaberamaido', 'KAB', 0, 1),
(3442, 219, 'Kamuli', 'KML', 0, 1),
(3443, 219, 'Kapchorwa', 'KPC', 0, 1),
(3444, 219, 'Katakwi', 'KTK', 0, 1),
(3445, 219, 'Kumi', 'KUM', 0, 1),
(3446, 219, 'Mayuge', 'MAY', 0, 1),
(3447, 219, 'Mbale', 'MBA', 0, 1),
(3448, 219, 'Pallisa', 'PAL', 0, 1),
(3449, 219, 'Sironko', 'SIR', 0, 1),
(3450, 219, 'Soroti', 'SOR', 0, 1),
(3451, 219, 'Tororo', 'TOR', 0, 1),
(3452, 219, 'Adjumani', 'ADJ', 0, 1),
(3453, 219, 'Apac', 'APC', 0, 1),
(3454, 219, 'Arua', 'ARU', 0, 1),
(3455, 219, 'Gulu', 'GUL', 0, 1),
(3456, 219, 'Kitgum', 'KIT', 0, 1),
(3457, 219, 'Kotido', 'KOT', 0, 1),
(3458, 219, 'Lira', 'LIR', 0, 1),
(3459, 219, 'Moroto', 'MRT', 0, 1),
(3460, 219, 'Moyo', 'MOY', 0, 1),
(3461, 219, 'Nakapiripirit', 'NAK', 0, 1),
(3462, 219, 'Nebbi', 'NEB', 0, 1),
(3463, 219, 'Pader', 'PAD', 0, 1),
(3464, 219, 'Yumbe', 'YUM', 0, 1),
(3465, 219, 'Bundibugyo', 'BUN', 0, 1),
(3466, 219, 'Bushenyi', 'BSH', 0, 1),
(3467, 219, 'Hoima', 'HOI', 0, 1),
(3468, 219, 'Kabale', 'KBL', 0, 1),
(3469, 219, 'Kabarole', 'KAR', 0, 1),
(3470, 219, 'Kamwenge', 'KAM', 0, 1),
(3471, 219, 'Kanungu', 'KAN', 0, 1),
(3472, 219, 'Kasese', 'KAS', 0, 1),
(3473, 219, 'Kibaale', 'KBA', 0, 1),
(3474, 219, 'Kisoro', 'KIS', 0, 1),
(3475, 219, 'Kyenjojo', 'KYE', 0, 1),
(3476, 219, 'Masindi', 'MSN', 0, 1),
(3477, 219, 'Mbarara', 'MBR', 0, 1),
(3478, 219, 'Ntungamo', 'NTU', 0, 1),
(3479, 219, 'Rukungiri', 'RUK', 0, 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 0, 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 0, 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 0, 1),
(3483, 220, 'Crimea', '43', 0, 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 0, 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 0, 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 0, 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 0, 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 0, 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 0, 1),
(3490, 220, 'Kyiv', '30', 0, 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 0, 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 0, 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 0, 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 0, 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 0, 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 0, 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 0, 1),
(3498, 220, 'Sevastopol\'', '40', 0, 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 0, 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 0, 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 0, 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 0, 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 0, 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 0, 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 0, 1),
(3506, 221, 'Abu Dhabi', 'ADH', 0, 1),
(3507, 221, '\'Ajman', 'AJ', 0, 1),
(3508, 221, 'Al Fujayrah', 'FU', 0, 1),
(3509, 221, 'Ash Shariqah', 'SH', 0, 1),
(3510, 221, 'Dubai', 'DU', 0, 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 0, 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 0, 1),
(3513, 222, 'Aberdeen', 'ABN', 0, 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 0, 1),
(3515, 222, 'Anglesey', 'ANG', 0, 1),
(3516, 222, 'Angus', 'AGS', 0, 1),
(3517, 222, 'Argyll and Bute', 'ARY', 0, 1),
(3518, 222, 'Bedfordshire', 'BEDS', 0, 1),
(3519, 222, 'Berkshire', 'BERKS', 0, 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 0, 1),
(3521, 222, 'Bridgend', 'BRI', 0, 1),
(3522, 222, 'Bristol', 'BSTL', 0, 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 0, 1),
(3524, 222, 'Caerphilly', 'CAE', 0, 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 0, 1),
(3526, 222, 'Cardiff', 'CDF', 0, 1),
(3527, 222, 'Carmarthenshire', 'CARM', 0, 1),
(3528, 222, 'Ceredigion', 'CDGN', 0, 1),
(3529, 222, 'Cheshire', 'CHES', 0, 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 0, 1),
(3531, 222, 'Conwy', 'CON', 0, 1),
(3532, 222, 'Cornwall', 'CORN', 0, 1),
(3533, 222, 'Denbighshire', 'DNBG', 0, 1),
(3534, 222, 'Derbyshire', 'DERBY', 0, 1),
(3535, 222, 'Devon', 'DVN', 0, 1),
(3536, 222, 'Dorset', 'DOR', 0, 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 0, 1),
(3538, 222, 'Dundee', 'DUND', 0, 1),
(3539, 222, 'Durham', 'DHM', 0, 1),
(3540, 222, 'East Ayrshire', 'ARYE', 0, 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 0, 1),
(3542, 222, 'East Lothian', 'LOTE', 0, 1),
(3543, 222, 'East Renfrewshire', 'RENE', 0, 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 0, 1),
(3545, 222, 'East Sussex', 'SXE', 0, 1),
(3546, 222, 'Edinburgh', 'EDIN', 0, 1),
(3547, 222, 'Essex', 'ESX', 0, 1),
(3548, 222, 'Falkirk', 'FALK', 0, 1),
(3549, 222, 'Fife', 'FFE', 0, 1),
(3550, 222, 'Flintshire', 'FLINT', 0, 1),
(3551, 222, 'Glasgow', 'GLAS', 0, 1),
(3552, 222, 'Gloucestershire', 'GLOS', 0, 1),
(3553, 222, 'Greater London', 'LDN', 0, 1),
(3554, 222, 'Greater Manchester', 'MCH', 0, 1),
(3555, 222, 'Gwynedd', 'GDD', 0, 1),
(3556, 222, 'Hampshire', 'HANTS', 0, 1),
(3557, 222, 'Herefordshire', 'HWR', 0, 1),
(3558, 222, 'Hertfordshire', 'HERTS', 0, 1),
(3559, 222, 'Highlands', 'HLD', 0, 1),
(3560, 222, 'Inverclyde', 'IVER', 0, 1),
(3561, 222, 'Isle of Wight', 'IOW', 0, 1),
(3562, 222, 'Kent', 'KNT', 0, 1),
(3563, 222, 'Lancashire', 'LANCS', 0, 1),
(3564, 222, 'Leicestershire', 'LEICS', 0, 1),
(3565, 222, 'Lincolnshire', 'LINCS', 0, 1),
(3566, 222, 'Merseyside', 'MSY', 0, 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 0, 1),
(3568, 222, 'Midlothian', 'MLOT', 0, 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 0, 1),
(3570, 222, 'Moray', 'MORAY', 0, 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 0, 1),
(3572, 222, 'Newport', 'NEWPT', 0, 1),
(3573, 222, 'Norfolk', 'NOR', 0, 1),
(3574, 222, 'North Ayrshire', 'ARYN', 0, 1),
(3575, 222, 'North Lanarkshire', 'LANN', 0, 1),
(3576, 222, 'North Yorkshire', 'YSN', 0, 1),
(3577, 222, 'Northamptonshire', 'NHM', 0, 1),
(3578, 222, 'Northumberland', 'NLD', 0, 1),
(3579, 222, 'Nottinghamshire', 'NOT', 0, 1),
(3580, 222, 'Orkney Islands', 'ORK', 0, 1),
(3581, 222, 'Oxfordshire', 'OFE', 0, 1),
(3582, 222, 'Pembrokeshire', 'PEM', 0, 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 0, 1),
(3584, 222, 'Powys', 'PWS', 0, 1),
(3585, 222, 'Renfrewshire', 'REN', 0, 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 0, 1),
(3587, 222, 'Rutland', 'RUT', 0, 1),
(3588, 222, 'Scottish Borders', 'BOR', 0, 1),
(3589, 222, 'Shetland Islands', 'SHET', 0, 1),
(3590, 222, 'Shropshire', 'SPE', 0, 1),
(3591, 222, 'Somerset', 'SOM', 0, 1),
(3592, 222, 'South Ayrshire', 'ARYS', 0, 1),
(3593, 222, 'South Lanarkshire', 'LANS', 0, 1),
(3594, 222, 'South Yorkshire', 'YSS', 0, 1),
(3595, 222, 'Staffordshire', 'SFD', 0, 1),
(3596, 222, 'Stirling', 'STIR', 0, 1),
(3597, 222, 'Suffolk', 'SFK', 0, 1),
(3598, 222, 'Surrey', 'SRY', 0, 1),
(3599, 222, 'Swansea', 'SWAN', 0, 1),
(3600, 222, 'Torfaen', 'TORF', 0, 1),
(3601, 222, 'Tyne and Wear', 'TWR', 0, 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 0, 1),
(3603, 222, 'Warwickshire', 'WARKS', 0, 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 0, 1),
(3605, 222, 'West Lothian', 'WLOT', 0, 1),
(3606, 222, 'West Midlands', 'WMD', 0, 1),
(3607, 222, 'West Sussex', 'SXW', 0, 1),
(3608, 222, 'West Yorkshire', 'YSW', 0, 1),
(3609, 222, 'Western Isles', 'WIL', 0, 1),
(3610, 222, 'Wiltshire', 'WLT', 0, 1),
(3611, 222, 'Worcestershire', 'WORCS', 0, 1),
(3612, 222, 'Wrexham', 'WRX', 0, 1),
(3613, 223, 'Alabama', 'AL', 0, 1),
(3614, 223, 'Alaska', 'AK', 0, 1),
(3615, 223, 'American Samoa', 'AS', 0, 1),
(3616, 223, 'Arizona', 'AZ', 0, 1),
(3617, 223, 'Arkansas', 'AR', 0, 1),
(3618, 223, 'Armed Forces Africa', 'AF', 0, 1),
(3619, 223, 'Armed Forces Americas', 'AA', 0, 1),
(3620, 223, 'Armed Forces Canada', 'AC', 0, 1),
(3621, 223, 'Armed Forces Europe', 'AE', 0, 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 0, 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 0, 1),
(3624, 223, 'California', 'CA', 0, 1),
(3625, 223, 'Colorado', 'CO', 0, 1),
(3626, 223, 'Connecticut', 'CT', 0, 1),
(3627, 223, 'Delaware', 'DE', 0, 1),
(3628, 223, 'District of Columbia', 'DC', 0, 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 0, 1),
(3630, 223, 'Florida', 'FL', 0, 1),
(3631, 223, 'Georgia', 'GA', 0, 1),
(3632, 223, 'Guam', 'GU', 0, 1),
(3633, 223, 'Hawaii', 'HI', 0, 1),
(3634, 223, 'Idaho', 'ID', 0, 1),
(3635, 223, 'Illinois', 'IL', 0, 1),
(3636, 223, 'Indiana', 'IN', 0, 1),
(3637, 223, 'Iowa', 'IA', 0, 1),
(3638, 223, 'Kansas', 'KS', 0, 1),
(3639, 223, 'Kentucky', 'KY', 0, 1),
(3640, 223, 'Louisiana', 'LA', 0, 1),
(3641, 223, 'Maine', 'ME', 0, 1),
(3642, 223, 'Marshall Islands', 'MH', 0, 1),
(3643, 223, 'Maryland', 'MD', 0, 1),
(3644, 223, 'Massachusetts', 'MA', 0, 1),
(3645, 223, 'Michigan', 'MI', 0, 1),
(3646, 223, 'Minnesota', 'MN', 0, 1),
(3647, 223, 'Mississippi', 'MS', 0, 1),
(3648, 223, 'Missouri', 'MO', 0, 1),
(3649, 223, 'Montana', 'MT', 0, 1),
(3650, 223, 'Nebraska', 'NE', 0, 1),
(3651, 223, 'Nevada', 'NV', 0, 1),
(3652, 223, 'New Hampshire', 'NH', 0, 1),
(3653, 223, 'New Jersey', 'NJ', 0, 1),
(3654, 223, 'New Mexico', 'NM', 0, 1),
(3655, 223, 'New York', 'NY', 0, 1),
(3656, 223, 'North Carolina', 'NC', 0, 1),
(3657, 223, 'North Dakota', 'ND', 0, 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 0, 1),
(3659, 223, 'Ohio', 'OH', 0, 1),
(3660, 223, 'Oklahoma', 'OK', 0, 1),
(3661, 223, 'Oregon', 'OR', 0, 1),
(3662, 223, 'Palau', 'PW', 0, 1),
(3663, 223, 'Pennsylvania', 'PA', 0, 1),
(3664, 223, 'Puerto Rico', 'PR', 0, 1),
(3665, 223, 'Rhode Island', 'RI', 0, 1),
(3666, 223, 'South Carolina', 'SC', 0, 1),
(3667, 223, 'South Dakota', 'SD', 0, 1),
(3668, 223, 'Tennessee', 'TN', 0, 1),
(3669, 223, 'Texas', 'TX', 0, 1),
(3670, 223, 'Utah', 'UT', 0, 1),
(3671, 223, 'Vermont', 'VT', 0, 1),
(3672, 223, 'Virgin Islands', 'VI', 0, 1),
(3673, 223, 'Virginia', 'VA', 0, 1),
(3674, 223, 'Washington', 'WA', 0, 1),
(3675, 223, 'West Virginia', 'WV', 0, 1),
(3676, 223, 'Wisconsin', 'WI', 0, 1),
(3677, 223, 'Wyoming', 'WY', 0, 1),
(3678, 224, 'Baker Island', 'BI', 0, 1),
(3679, 224, 'Howland Island', 'HI', 0, 1),
(3680, 224, 'Jarvis Island', 'JI', 0, 1),
(3681, 224, 'Johnston Atoll', 'JA', 0, 1),
(3682, 224, 'Kingman Reef', 'KR', 0, 1),
(3683, 224, 'Midway Atoll', 'MA', 0, 1),
(3684, 224, 'Navassa Island', 'NI', 0, 1),
(3685, 224, 'Palmyra Atoll', 'PA', 0, 1),
(3686, 224, 'Wake Island', 'WI', 0, 1),
(3687, 225, 'Artigas', 'AR', 0, 1),
(3688, 225, 'Canelones', 'CA', 0, 1),
(3689, 225, 'Cerro Largo', 'CL', 0, 1),
(3690, 225, 'Colonia', 'CO', 0, 1),
(3691, 225, 'Durazno', 'DU', 0, 1),
(3692, 225, 'Flores', 'FS', 0, 1),
(3693, 225, 'Florida', 'FA', 0, 1),
(3694, 225, 'Lavalleja', 'LA', 0, 1),
(3695, 225, 'Maldonado', 'MA', 0, 1),
(3696, 225, 'Montevideo', 'MO', 0, 1),
(3697, 225, 'Paysandu', 'PA', 0, 1),
(3698, 225, 'Rio Negro', 'RN', 0, 1),
(3699, 225, 'Rivera', 'RV', 0, 1),
(3700, 225, 'Rocha', 'RO', 0, 1),
(3701, 225, 'Salto', 'SL', 0, 1),
(3702, 225, 'San Jose', 'SJ', 0, 1),
(3703, 225, 'Soriano', 'SO', 0, 1),
(3704, 225, 'Tacuarembo', 'TA', 0, 1),
(3705, 225, 'Treinta y Tres', 'TT', 0, 1),
(3706, 226, 'Andijon', 'AN', 0, 1),
(3707, 226, 'Buxoro', 'BU', 0, 1),
(3708, 226, 'Farg\'ona', 'FA', 0, 1),
(3709, 226, 'Jizzax', 'JI', 0, 1),
(3710, 226, 'Namangan', 'NG', 0, 1),
(3711, 226, 'Navoiy', 'NW', 0, 1),
(3712, 226, 'Qashqadaryo', 'QA', 0, 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 0, 1),
(3714, 226, 'Samarqand', 'SA', 0, 1),
(3715, 226, 'Sirdaryo', 'SI', 0, 1),
(3716, 226, 'Surxondaryo', 'SU', 0, 1),
(3717, 226, 'Toshkent City', 'TK', 0, 1),
(3718, 226, 'Toshkent Region', 'TO', 0, 1),
(3719, 226, 'Xorazm', 'XO', 0, 1),
(3720, 227, 'Malampa', 'MA', 0, 1),
(3721, 227, 'Penama', 'PE', 0, 1),
(3722, 227, 'Sanma', 'SA', 0, 1),
(3723, 227, 'Shefa', 'SH', 0, 1),
(3724, 227, 'Tafea', 'TA', 0, 1),
(3725, 227, 'Torba', 'TO', 0, 1),
(3726, 229, 'Amazonas', 'AM', 0, 1),
(3727, 229, 'Anzoategui', 'AN', 0, 1),
(3728, 229, 'Apure', 'AP', 0, 1),
(3729, 229, 'Aragua', 'AR', 0, 1),
(3730, 229, 'Barinas', 'BA', 0, 1),
(3731, 229, 'Bolivar', 'BO', 0, 1),
(3732, 229, 'Carabobo', 'CA', 0, 1),
(3733, 229, 'Cojedes', 'CO', 0, 1),
(3734, 229, 'Delta Amacuro', 'DA', 0, 1),
(3735, 229, 'Dependencias Federales', 'DF', 0, 1),
(3736, 229, 'Distrito Federal', 'DI', 0, 1),
(3737, 229, 'Falcon', 'FA', 0, 1),
(3738, 229, 'Guarico', 'GU', 0, 1),
(3739, 229, 'Lara', 'LA', 0, 1),
(3740, 229, 'Merida', 'ME', 0, 1),
(3741, 229, 'Miranda', 'MI', 0, 1),
(3742, 229, 'Monagas', 'MO', 0, 1),
(3743, 229, 'Nueva Esparta', 'NE', 0, 1),
(3744, 229, 'Portuguesa', 'PO', 0, 1),
(3745, 229, 'Sucre', 'SU', 0, 1),
(3746, 229, 'Tachira', 'TA', 0, 1),
(3747, 229, 'Trujillo', 'TR', 0, 1),
(3748, 229, 'Vargas', 'VA', 0, 1),
(3749, 229, 'Yaracuy', 'YA', 0, 1),
(3750, 229, 'Zulia', 'ZU', 0, 1),
(3751, 230, 'An Giang', 'AG', 0, 1),
(3752, 230, 'Bac Giang', 'BG', 0, 1),
(3753, 230, 'Bac Kan', 'BK', 0, 1),
(3754, 230, 'Bac Lieu', 'BL', 0, 1),
(3755, 230, 'Bac Ninh', 'BC', 0, 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 0, 1),
(3757, 230, 'Ben Tre', 'BN', 0, 1),
(3758, 230, 'Binh Dinh', 'BH', 0, 1),
(3759, 230, 'Binh Duong', 'BU', 0, 1),
(3760, 230, 'Binh Phuoc', 'BP', 0, 1),
(3761, 230, 'Binh Thuan', 'BT', 0, 1),
(3762, 230, 'Ca Mau', 'CM', 0, 1),
(3763, 230, 'Can Tho', 'CT', 0, 1),
(3764, 230, 'Cao Bang', 'CB', 0, 1),
(3765, 230, 'Dak Lak', 'DL', 0, 1),
(3766, 230, 'Dak Nong', 'DG', 0, 1),
(3767, 230, 'Da Nang', 'DN', 0, 1),
(3768, 230, 'Dien Bien', 'DB', 0, 1),
(3769, 230, 'Dong Nai', 'DI', 0, 1),
(3770, 230, 'Dong Thap', 'DT', 0, 1),
(3771, 230, 'Gia Lai', 'GL', 0, 1),
(3772, 230, 'Ha Giang', 'HG', 0, 1),
(3773, 230, 'Hai Duong', 'HD', 0, 1),
(3774, 230, 'Hai Phong', 'HP', 0, 1),
(3775, 230, 'Ha Nam', 'HM', 0, 1),
(3776, 230, 'Ha Noi', 'HI', 0, 1),
(3777, 230, 'Ha Tay', 'HT', 0, 1),
(3778, 230, 'Ha Tinh', 'HH', 0, 1),
(3779, 230, 'Hoa Binh', 'HB', 0, 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 0, 1),
(3781, 230, 'Hau Giang', 'HU', 0, 1),
(3782, 230, 'Hung Yen', 'HY', 0, 1),
(3783, 232, 'Saint Croix', 'C', 0, 1),
(3784, 232, 'Saint John', 'J', 0, 1),
(3785, 232, 'Saint Thomas', 'T', 0, 1),
(3786, 233, 'Alo', 'A', 0, 1),
(3787, 233, 'Sigave', 'S', 0, 1),
(3788, 233, 'Wallis', 'W', 0, 1),
(3789, 235, 'Abyan', 'AB', 0, 1),
(3790, 235, 'Adan', 'AD', 0, 1),
(3791, 235, 'Amran', 'AM', 0, 1),
(3792, 235, 'Al Bayda', 'BA', 0, 1),
(3793, 235, 'Ad Dali', 'DA', 0, 1),
(3794, 235, 'Dhamar', 'DH', 0, 1),
(3795, 235, 'Hadramawt', 'HD', 0, 1),
(3796, 235, 'Hajjah', 'HJ', 0, 1),
(3797, 235, 'Al Hudaydah', 'HU', 0, 1),
(3798, 235, 'Ibb', 'IB', 0, 1),
(3799, 235, 'Al Jawf', 'JA', 0, 1),
(3800, 235, 'Lahij', 'LA', 0, 1),
(3801, 235, 'Ma\'rib', 'MA', 0, 1),
(3802, 235, 'Al Mahrah', 'MR', 0, 1),
(3803, 235, 'Al Mahwit', 'MW', 0, 1),
(3804, 235, 'Sa\'dah', 'SD', 0, 1),
(3805, 235, 'San\'a', 'SN', 0, 1),
(3806, 235, 'Shabwah', 'SH', 0, 1),
(3807, 235, 'Ta\'izz', 'TA', 0, 1),
(3812, 237, 'Bas-Congo', 'BC', 0, 1),
(3813, 237, 'Bandundu', 'BN', 0, 1),
(3814, 237, 'Equateur', 'EQ', 0, 1),
(3815, 237, 'Katanga', 'KA', 0, 1),
(3816, 237, 'Kasai-Oriental', 'KE', 0, 1),
(3817, 237, 'Kinshasa', 'KN', 0, 1),
(3818, 237, 'Kasai-Occidental', 'KW', 0, 1),
(3819, 237, 'Maniema', 'MA', 0, 1),
(3820, 237, 'Nord-Kivu', 'NK', 0, 1),
(3821, 237, 'Orientale', 'OR', 0, 1),
(3822, 237, 'Sud-Kivu', 'SK', 0, 1),
(3823, 238, 'Central', 'CE', 0, 1),
(3824, 238, 'Copperbelt', 'CB', 0, 1),
(3825, 238, 'Eastern', 'EA', 0, 1),
(3826, 238, 'Luapula', 'LP', 0, 1),
(3827, 238, 'Lusaka', 'LK', 0, 1),
(3828, 238, 'Northern', 'NO', 0, 1),
(3829, 238, 'North-Western', 'NW', 0, 1),
(3830, 238, 'Southern', 'SO', 0, 1),
(3831, 238, 'Western', 'WE', 0, 1),
(3832, 239, 'Bulawayo', 'BU', 0, 1),
(3833, 239, 'Harare', 'HA', 0, 1),
(3834, 239, 'Manicaland', 'ML', 0, 1),
(3835, 239, 'Mashonaland Central', 'MC', 0, 1),
(3836, 239, 'Mashonaland East', 'ME', 0, 1),
(3837, 239, 'Mashonaland West', 'MW', 0, 1),
(3838, 239, 'Masvingo', 'MV', 0, 1),
(3839, 239, 'Matabeleland North', 'MN', 0, 1),
(3840, 239, 'Matabeleland South', 'MS', 0, 1),
(3841, 239, 'Midlands', 'MD', 0, 1),
(3861, 105, 'Campobasso', 'CB', 0, 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 0, 1),
(3863, 105, 'Caserta', 'CE', 0, 1),
(3864, 105, 'Catania', 'CT', 0, 1),
(3865, 105, 'Catanzaro', 'CZ', 0, 1),
(3866, 105, 'Chieti', 'CH', 0, 1),
(3867, 105, 'Como', 'CO', 0, 1),
(3868, 105, 'Cosenza', 'CS', 0, 1),
(3869, 105, 'Cremona', 'CR', 0, 1),
(3870, 105, 'Crotone', 'KR', 0, 1),
(3871, 105, 'Cuneo', 'CN', 0, 1),
(3872, 105, 'Enna', 'EN', 0, 1),
(3873, 105, 'Ferrara', 'FE', 0, 1),
(3874, 105, 'Firenze', 'FI', 0, 1),
(3875, 105, 'Foggia', 'FG', 0, 1),
(3876, 105, 'Forli-Cesena', 'FC', 0, 1),
(3877, 105, 'Frosinone', 'FR', 0, 1),
(3878, 105, 'Genova', 'GE', 0, 1),
(3879, 105, 'Gorizia', 'GO', 0, 1),
(3880, 105, 'Grosseto', 'GR', 0, 1),
(3881, 105, 'Imperia', 'IM', 0, 1),
(3882, 105, 'Isernia', 'IS', 0, 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 0, 1),
(3884, 105, 'La Spezia', 'SP', 0, 1),
(3885, 105, 'Latina', 'LT', 0, 1),
(3886, 105, 'Lecce', 'LE', 0, 1),
(3887, 105, 'Lecco', 'LC', 0, 1),
(3888, 105, 'Livorno', 'LI', 0, 1),
(3889, 105, 'Lodi', 'LO', 0, 1),
(3890, 105, 'Lucca', 'LU', 0, 1),
(3891, 105, 'Macerata', 'MC', 0, 1),
(3892, 105, 'Mantova', 'MN', 0, 1),
(3893, 105, 'Massa-Carrara', 'MS', 0, 1),
(3894, 105, 'Matera', 'MT', 0, 1),
(3895, 105, 'Medio Campidano', 'VS', 0, 1),
(3896, 105, 'Messina', 'ME', 0, 1),
(3897, 105, 'Milano', 'MI', 0, 1),
(3898, 105, 'Modena', 'MO', 0, 1),
(3899, 105, 'Napoli', 'NA', 0, 1),
(3900, 105, 'Novara', 'NO', 0, 1),
(3901, 105, 'Nuoro', 'NU', 0, 1),
(3902, 105, 'Ogliastra', 'OG', 0, 1),
(3903, 105, 'Olbia-Tempio', 'OT', 0, 1),
(3904, 105, 'Oristano', 'OR', 0, 1),
(3905, 105, 'Padova', 'PD', 0, 1),
(3906, 105, 'Palermo', 'PA', 0, 1),
(3907, 105, 'Parma', 'PR', 0, 1),
(3908, 105, 'Pavia', 'PV', 0, 1),
(3909, 105, 'Perugia', 'PG', 0, 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 0, 1),
(3911, 105, 'Pescara', 'PE', 0, 1),
(3912, 105, 'Piacenza', 'PC', 0, 1),
(3913, 105, 'Pisa', 'PI', 0, 1),
(3914, 105, 'Pistoia', 'PT', 0, 1),
(3915, 105, 'Pordenone', 'PN', 0, 1),
(3916, 105, 'Potenza', 'PZ', 0, 1),
(3917, 105, 'Prato', 'PO', 0, 1),
(3918, 105, 'Ragusa', 'RG', 0, 1),
(3919, 105, 'Ravenna', 'RA', 0, 1),
(3920, 105, 'Reggio Calabria', 'RC', 0, 1),
(3921, 105, 'Reggio Emilia', 'RE', 0, 1),
(3922, 105, 'Rieti', 'RI', 0, 1),
(3923, 105, 'Rimini', 'RN', 0, 1),
(3924, 105, 'Roma', 'RM', 0, 1),
(3925, 105, 'Rovigo', 'RO', 0, 1),
(3926, 105, 'Salerno', 'SA', 0, 1),
(3927, 105, 'Sassari', 'SS', 0, 1),
(3928, 105, 'Savona', 'SV', 0, 1),
(3929, 105, 'Siena', 'SI', 0, 1),
(3930, 105, 'Siracusa', 'SR', 0, 1),
(3931, 105, 'Sondrio', 'SO', 0, 1),
(3932, 105, 'Taranto', 'TA', 0, 1),
(3933, 105, 'Teramo', 'TE', 0, 1),
(3934, 105, 'Terni', 'TR', 0, 1),
(3935, 105, 'Torino', 'TO', 0, 1),
(3936, 105, 'Trapani', 'TP', 0, 1),
(3937, 105, 'Trento', 'TN', 0, 1),
(3938, 105, 'Treviso', 'TV', 0, 1),
(3939, 105, 'Trieste', 'TS', 0, 1),
(3940, 105, 'Udine', 'UD', 0, 1),
(3941, 105, 'Varese', 'VA', 0, 1),
(3942, 105, 'Venezia', 'VE', 0, 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 0, 1),
(3944, 105, 'Vercelli', 'VC', 0, 1),
(3945, 105, 'Verona', 'VR', 0, 1),
(3946, 105, 'Vibo Valentia', 'VV', 0, 1),
(3947, 105, 'Vicenza', 'VI', 0, 1),
(3948, 105, 'Viterbo', 'VT', 0, 1),
(3949, 222, 'County Antrim', 'ANT', 0, 1),
(3950, 222, 'County Armagh', 'ARM', 0, 1),
(3951, 222, 'County Down', 'DOW', 0, 1),
(3952, 222, 'County Fermanagh', 'FER', 0, 1),
(3953, 222, 'County Londonderry', 'LDY', 0, 1),
(3954, 222, 'County Tyrone', 'TYR', 0, 1),
(3955, 222, 'Cumbria', 'CMA', 0, 1),
(3956, 190, 'Pomurska', '1', 0, 1),
(3957, 190, 'Podravska', '2', 0, 1),
(3958, 190, 'Koroška', '3', 0, 1),
(3959, 190, 'Savinjska', '4', 0, 1),
(3960, 190, 'Zasavska', '5', 0, 1),
(3961, 190, 'Spodnjeposavska', '6', 0, 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 0, 1),
(3963, 190, 'Osrednjeslovenska', '8', 0, 1),
(3964, 190, 'Gorenjska', '9', 0, 1),
(3965, 190, 'Notranjsko-kraška', '10', 0, 1),
(3966, 190, 'Goriška', '11', 0, 1),
(3967, 190, 'Obalno-kraška', '12', 0, 1),
(3968, 33, 'Ruse', '', 0, 1),
(3969, 101, 'Alborz', 'ALB', 0, 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 0, 1),
(3971, 138, 'Aguascalientes', 'AG', 0, 1),
(3973, 242, 'Andrijevica', '01', 0, 1),
(3974, 242, 'Bar', '02', 0, 1),
(3975, 242, 'Berane', '03', 0, 1),
(3976, 242, 'Bijelo Polje', '04', 0, 1),
(3977, 242, 'Budva', '05', 0, 1),
(3978, 242, 'Cetinje', '06', 0, 1),
(3979, 242, 'Danilovgrad', '07', 0, 1),
(3980, 242, 'Herceg-Novi', '08', 0, 1),
(3981, 242, 'Kolašin', '09', 0, 1),
(3982, 242, 'Kotor', '10', 0, 1),
(3983, 242, 'Mojkovac', '11', 0, 1),
(3984, 242, 'Nikšić', '12', 0, 1),
(3985, 242, 'Plav', '13', 0, 1),
(3986, 242, 'Pljevlja', '14', 0, 1),
(3987, 242, 'Plužine', '15', 0, 1),
(3988, 242, 'Podgorica', '16', 0, 1),
(3989, 242, 'Rožaje', '17', 0, 1),
(3990, 242, 'Šavnik', '18', 0, 1),
(3991, 242, 'Tivat', '19', 0, 1),
(3992, 242, 'Ulcinj', '20', 0, 1),
(3993, 242, 'Žabljak', '21', 0, 1),
(3994, 243, 'Belgrade', '00', 0, 1),
(3995, 243, 'North Bačka', '01', 0, 1),
(3996, 243, 'Central Banat', '02', 0, 1),
(3997, 243, 'North Banat', '03', 0, 1),
(3998, 243, 'South Banat', '04', 0, 1),
(3999, 243, 'West Bačka', '05', 0, 1),
(4000, 243, 'South Bačka', '06', 0, 1),
(4001, 243, 'Srem', '07', 0, 1),
(4002, 243, 'Mačva', '08', 0, 1),
(4003, 243, 'Kolubara', '09', 0, 1),
(4004, 243, 'Podunavlje', '10', 0, 1),
(4005, 243, 'Braničevo', '11', 0, 1),
(4006, 243, 'Šumadija', '12', 0, 1),
(4007, 243, 'Pomoravlje', '13', 0, 1),
(4008, 243, 'Bor', '14', 0, 1),
(4009, 243, 'Zaječar', '15', 0, 1),
(4010, 243, 'Zlatibor', '16', 0, 1),
(4011, 243, 'Moravica', '17', 0, 1),
(4012, 243, 'Raška', '18', 0, 1),
(4013, 243, 'Rasina', '19', 0, 1),
(4014, 243, 'Nišava', '20', 0, 1),
(4015, 243, 'Toplica', '21', 0, 1),
(4016, 243, 'Pirot', '22', 0, 1),
(4017, 243, 'Jablanica', '23', 0, 1),
(4018, 243, 'Pčinja', '24', 0, 1),
(4020, 245, 'Bonaire', 'BO', 0, 1),
(4021, 245, 'Saba', 'SA', 0, 1),
(4022, 245, 'Sint Eustatius', 'SE', 0, 1),
(4023, 248, 'Central Equatoria', 'EC', 0, 1),
(4024, 248, 'Eastern Equatoria', 'EE', 0, 1),
(4025, 248, 'Jonglei', 'JG', 0, 1),
(4026, 248, 'Lakes', 'LK', 0, 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 0, 1),
(4028, 248, 'Unity', 'UY', 0, 1),
(4029, 248, 'Upper Nile', 'NU', 0, 1),
(4030, 248, 'Warrap', 'WR', 0, 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 0, 1),
(4032, 248, 'Western Equatoria', 'EW', 0, 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 0, 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 0, 1),
(4038, 117, 'Aizkraukles novads', '0320200', 0, 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 0, 1),
(4040, 117, 'Aizputes novads', '0640600', 0, 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 0, 1),
(4042, 117, 'Aknīstes novads', '0560800', 0, 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 0, 1),
(4044, 117, 'Alojas novads', '0661000', 0, 1),
(4045, 117, 'Alsungas novads', '0624200', 0, 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 0, 1),
(4047, 117, 'Alūksnes novads', '0360200', 0, 1),
(4048, 117, 'Amatas novads', '0424701', 0, 1),
(4049, 117, 'Ape, Apes novads', '0360805', 0, 1),
(4050, 117, 'Apes novads', '0360800', 0, 1),
(4051, 117, 'Auce, Auces novads', '0460805', 0, 1),
(4052, 117, 'Auces novads', '0460800', 0, 1),
(4053, 117, 'Ādažu novads', '0804400', 0, 1),
(4054, 117, 'Babītes novads', '0804900', 0, 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 0, 1),
(4056, 117, 'Baldones novads', '0800600', 0, 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 0, 1),
(4058, 117, 'Baltinavas novads', '0384400', 0, 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 0, 1),
(4060, 117, 'Balvu novads', '0380200', 0, 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 0, 1),
(4062, 117, 'Bauskas novads', '0400200', 0, 1),
(4063, 117, 'Beverīnas novads', '0964700', 0, 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 0, 1),
(4065, 117, 'Brocēnu novads', '0840601', 0, 1),
(4066, 117, 'Burtnieku novads', '0967101', 0, 1),
(4067, 117, 'Carnikavas novads', '0805200', 0, 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 0, 1),
(4069, 117, 'Cesvaines novads', '0700800', 0, 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 0, 1),
(4071, 117, 'Cēsu novads', '0420200', 0, 1),
(4072, 117, 'Ciblas novads', '0684901', 0, 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 0, 1),
(4074, 117, 'Dagdas novads', '0601000', 0, 1),
(4075, 117, 'Daugavpils', '0050000', 0, 1),
(4076, 117, 'Daugavpils novads', '0440200', 0, 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 0, 1),
(4078, 117, 'Dobeles novads', '0460200', 0, 1),
(4079, 117, 'Dundagas novads', '0885100', 0, 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 0, 1),
(4081, 117, 'Durbes novads', '0640801', 0, 1),
(4082, 117, 'Engures novads', '0905100', 0, 1),
(4083, 117, 'Ērgļu novads', '0705500', 0, 1),
(4084, 117, 'Garkalnes novads', '0806000', 0, 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 0, 1),
(4086, 117, 'Grobiņas novads', '0641000', 0, 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 0, 1),
(4088, 117, 'Gulbenes novads', '0500200', 0, 1),
(4089, 117, 'Iecavas novads', '0406400', 0, 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 0, 1),
(4091, 117, 'Ikšķiles novads', '0740600', 0, 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 0, 1),
(4093, 117, 'Ilūkstes novads', '0440801', 0, 1),
(4094, 117, 'Inčukalna novads', '0801800', 0, 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 0, 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 0, 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 0, 1),
(4098, 117, 'Jaunpils novads', '0905700', 0, 1),
(4099, 117, 'Jelgava', '0090000', 0, 1),
(4100, 117, 'Jelgavas novads', '0540200', 0, 1),
(4101, 117, 'Jēkabpils', '0110000', 0, 1),
(4102, 117, 'Jēkabpils novads', '0560200', 0, 1),
(4103, 117, 'Jūrmala', '0130000', 0, 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 0, 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 0, 1),
(4106, 117, 'Kandavas novads', '0901201', 0, 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 0, 1),
(4108, 117, 'Kārsavas novads', '0681000', 0, 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 0, 1),
(4110, 117, 'Kokneses novads', '0326100', 0, 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 0, 1),
(4112, 117, 'Krāslavas novads', '0600202', 0, 1),
(4113, 117, 'Krimuldas novads', '0806900', 0, 1),
(4114, 117, 'Krustpils novads', '0566900', 0, 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 0, 1),
(4116, 117, 'Kuldīgas novads', '0620200', 0, 1),
(4117, 117, 'Ķeguma novads', '0741001', 0, 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 0, 1),
(4119, 117, 'Ķekavas novads', '0800800', 0, 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 0, 1),
(4121, 117, 'Lielvārdes novads', '0741401', 0, 1),
(4122, 117, 'Liepāja', '0170000', 0, 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 0, 1),
(4124, 117, 'Limbažu novads', '0660200', 0, 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 0, 1),
(4126, 117, 'Līgatnes novads', '0421200', 0, 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 0, 1),
(4128, 117, 'Līvānu novads', '0761201', 0, 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 0, 1),
(4130, 117, 'Lubānas novads', '0701400', 0, 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 0, 1),
(4132, 117, 'Ludzas novads', '0680200', 0, 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 0, 1),
(4134, 117, 'Madonas novads', '0700200', 0, 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 0, 1),
(4136, 117, 'Mazsalacas novads', '0961000', 0, 1),
(4137, 117, 'Mālpils novads', '0807400', 0, 1),
(4138, 117, 'Mārupes novads', '0807600', 0, 1),
(4139, 117, 'Mērsraga novads', '0887600', 0, 1),
(4140, 117, 'Naukšēnu novads', '0967300', 0, 1),
(4141, 117, 'Neretas novads', '0327100', 0, 1),
(4142, 117, 'Nīcas novads', '0647900', 0, 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 0, 1),
(4144, 117, 'Ogres novads', '0740202', 0, 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 0, 1),
(4146, 117, 'Olaines novads', '0801000', 0, 1),
(4147, 117, 'Ozolnieku novads', '0546701', 0, 1),
(4148, 117, 'Pārgaujas novads', '0427500', 0, 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 0, 1),
(4150, 117, 'Pāvilostas novads', '0641401', 0, 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 0, 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 0, 1),
(4153, 117, 'Pļaviņu novads', '0321400', 0, 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 0, 1),
(4155, 117, 'Preiļu novads', '0760202', 0, 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 0, 1),
(4157, 117, 'Priekules novads', '0641600', 0, 1),
(4158, 117, 'Priekuļu novads', '0427300', 0, 1),
(4159, 117, 'Raunas novads', '0427700', 0, 1),
(4160, 117, 'Rēzekne', '0210000', 0, 1),
(4161, 117, 'Rēzeknes novads', '0780200', 0, 1),
(4162, 117, 'Riebiņu novads', '0766300', 0, 1),
(4163, 117, 'Rīga', '0010000', 0, 1),
(4164, 117, 'Rojas novads', '0888300', 0, 1),
(4165, 117, 'Ropažu novads', '0808400', 0, 1),
(4166, 117, 'Rucavas novads', '0648500', 0, 1),
(4167, 117, 'Rugāju novads', '0387500', 0, 1),
(4168, 117, 'Rundāles novads', '0407700', 0, 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 0, 1),
(4170, 117, 'Rūjienas novads', '0961600', 0, 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 0, 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 0, 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 0, 1),
(4174, 117, 'Salas novads', '0568700', 0, 1),
(4175, 117, 'Salaspils novads', '0801200', 0, 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 0, 1),
(4177, 117, 'Saldus novads', '0840200', 0, 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 0, 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 0, 1),
(4180, 117, 'Saulkrastu novads', '0801400', 0, 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 0, 1),
(4182, 117, 'Sējas novads', '0809200', 0, 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 0, 1),
(4184, 117, 'Siguldas novads', '0801601', 0, 1),
(4185, 117, 'Skrīveru novads', '0328200', 0, 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 0, 1),
(4187, 117, 'Skrundas novads', '0621200', 0, 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 0, 1),
(4189, 117, 'Smiltenes novads', '0941600', 0, 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 0, 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 0, 1),
(4192, 117, 'Stopiņu novads', '0809600', 0, 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 0, 1),
(4194, 117, 'Strenču novads', '0941800', 0, 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 0, 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 0, 1),
(4197, 117, 'Talsu novads', '0880200', 0, 1),
(4198, 117, 'Tērvetes novads', '0468900', 0, 1),
(4199, 117, 'Tukuma novads', '0900200', 0, 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 0, 1),
(4201, 117, 'Vaiņodes novads', '0649300', 0, 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 0, 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 0, 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `delivery_price`, `status`) VALUES
(4204, 117, 'Valkas novads', '0940200', 0, 1),
(4205, 117, 'Valmiera', '0250000', 0, 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 0, 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 0, 1),
(4208, 117, 'Varakļānu novads', '0701800', 0, 1),
(4209, 117, 'Vārkavas novads', '0769101', 0, 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 0, 1),
(4211, 117, 'Vecumnieku novads', '0409500', 0, 1),
(4212, 117, 'Ventspils', '0270000', 0, 1),
(4213, 117, 'Ventspils novads', '0980200', 0, 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 0, 1),
(4215, 117, 'Viesītes novads', '0561800', 0, 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 0, 1),
(4217, 117, 'Viļakas novads', '0381600', 0, 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 0, 1),
(4219, 117, 'Viļānu novads', '0781800', 0, 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 0, 1),
(4221, 117, 'Zilupes novads', '0681801', 0, 1),
(4222, 43, 'Arica y Parinacota', 'AP', 0, 1),
(4223, 43, 'Los Rios', 'LR', 0, 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 0, 1),
(4225, 118, 'Beirut', 'LB-BR', 0, 1),
(4226, 118, 'Bekaa', 'LB-BE', 0, 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 0, 1),
(4228, 118, 'Nabatieh', 'LB-NB', 0, 1),
(4229, 118, 'North', 'LB-NR', 0, 1),
(4230, 118, 'South', 'LB-ST', 0, 1),
(4231, 99, 'Telangana', 'TS', 0, 1),
(4232, 44, 'Qinghai', 'QH', 0, 1),
(4233, 100, 'Papua Barat', 'PB', 0, 1),
(4234, 100, 'Sulawesi Barat', 'SR', 0, 1),
(4235, 100, 'Kepulauan Riau', 'KR', 0, 1),
(4236, 114, 'fdfsdf', 'fdfdf', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 114, 1788, 5, '2017-05-01 14:18:32', '0000-00-00 00:00:00'),
(116, 114, 1788, 6, '2017-05-02 16:09:09', '0000-00-00 00:00:00'),
(115, 114, 4236, 6, '2017-05-02 16:09:09', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`affiliate_activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_menu`
--
ALTER TABLE `oc_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `oc_menu_description`
--
ALTER TABLE `oc_menu_description`
  ADD PRIMARY KEY (`menu_id`,`language_id`);

--
-- Indexes for table `oc_menu_module`
--
ALTER TABLE `oc_menu_module`
  ADD PRIMARY KEY (`menu_module_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  ADD PRIMARY KEY (`newsletter_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_sp_admins`
--
ALTER TABLE `oc_sp_admins`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `oc_sp_answers`
--
ALTER TABLE `oc_sp_answers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `oc_sp_config`
--
ALTER TABLE `oc_sp_config`
  ADD PRIMARY KEY (`shop_id`,`config_name`);

--
-- Indexes for table `oc_sp_exceptions`
--
ALTER TABLE `oc_sp_exceptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_sp_hooks_templates`
--
ALTER TABLE `oc_sp_hooks_templates`
  ADD UNIQUE KEY `area` (`area`);

--
-- Indexes for table `oc_sp_marketing_filter`
--
ALTER TABLE `oc_sp_marketing_filter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_sp_optout_deleted`
--
ALTER TABLE `oc_sp_optout_deleted`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `oc_sp_optout_prices`
--
ALTER TABLE `oc_sp_optout_prices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `oc_sp_optout_texts`
--
ALTER TABLE `oc_sp_optout_texts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `oc_sp_outofstock`
--
ALTER TABLE `oc_sp_outofstock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `oc_sp_ownnumbersenderids`
--
ALTER TABLE `oc_sp_ownnumbersenderids`
  ADD UNIQUE KEY `textsenderID` (`ownnumbersenderID`);

--
-- Indexes for table `oc_sp_settings`
--
ALTER TABLE `oc_sp_settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `oc_sp_smsuser`
--
ALTER TABLE `oc_sp_smsuser`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `oc_sp_sms_history`
--
ALTER TABLE `oc_sp_sms_history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vyber1` (`date`),
  ADD KEY `vyber2` (`date`,`type`),
  ADD KEY `vyber3` (`date`,`type`,`status`);

--
-- Indexes for table `oc_sp_template`
--
ALTER TABLE `oc_sp_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_sp_textsenderids`
--
ALTER TABLE `oc_sp_textsenderids`
  ADD UNIQUE KEY `textsenderID` (`textsenderID`);

--
-- Indexes for table `oc_sp_variables`
--
ALTER TABLE `oc_sp_variables`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_menu`
--
ALTER TABLE `oc_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `oc_newsletter`
--
ALTER TABLE `oc_newsletter`
  MODIFY `newsletter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;
--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2724;
--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;
--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=618;
--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;
--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2539;
--
-- AUTO_INCREMENT for table `oc_sp_admins`
--
ALTER TABLE `oc_sp_admins`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_sp_answers`
--
ALTER TABLE `oc_sp_answers`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_sp_exceptions`
--
ALTER TABLE `oc_sp_exceptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `oc_sp_marketing_filter`
--
ALTER TABLE `oc_sp_marketing_filter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `oc_sp_optout_deleted`
--
ALTER TABLE `oc_sp_optout_deleted`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_sp_optout_prices`
--
ALTER TABLE `oc_sp_optout_prices`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_sp_optout_texts`
--
ALTER TABLE `oc_sp_optout_texts`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_sp_outofstock`
--
ALTER TABLE `oc_sp_outofstock`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_sp_settings`
--
ALTER TABLE `oc_sp_settings`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_sp_smsuser`
--
ALTER TABLE `oc_sp_smsuser`
  MODIFY `ID` tinyint(1) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_sp_sms_history`
--
ALTER TABLE `oc_sp_sms_history`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_sp_template`
--
ALTER TABLE `oc_sp_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1139;
--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4237;
--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
