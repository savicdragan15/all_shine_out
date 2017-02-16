-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2017 at 12:51 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `all_shine_out`
--

-- --------------------------------------------------------

--
-- Table structure for table `datatables_demo`
--

CREATE TABLE `datatables_demo` (
  `id` int(10) NOT NULL,
  `first_name` varchar(250) NOT NULL DEFAULT '',
  `last_name` varchar(250) NOT NULL DEFAULT '',
  `position` varchar(250) NOT NULL DEFAULT '',
  `email` varchar(250) NOT NULL DEFAULT '',
  `office` varchar(250) NOT NULL DEFAULT '',
  `start_date` datetime DEFAULT NULL,
  `age` int(8) DEFAULT NULL,
  `salary` int(8) DEFAULT NULL,
  `seq` int(8) DEFAULT NULL,
  `extn` varchar(8) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `datatables_demo`
--

INSERT INTO `datatables_demo` (`id`, `first_name`, `last_name`, `position`, `email`, `office`, `start_date`, `age`, `salary`, `seq`, `extn`) VALUES
(1, 'Tiger', 'Nixon', 'System Architect', 't.nixon@datatables.net', 'Edinburgh', '2011-04-25 00:00:00', 61, 320800, 2, '5421'),
(2, 'Garrett', 'Winters', 'Accountant', 'g.winters@datatables.net', 'Tokyo', '2011-07-25 00:00:00', 63, 170750, 22, '8422'),
(3, 'Ashton', 'Cox', 'Junior Technical Author', 'a.cox@datatables.net', 'San Francisco', '2009-01-12 00:00:00', 66, 86000, 6, '1562'),
(4, 'Cedric', 'Kelly', 'Senior Javascript Developer', 'c.kelly@datatables.net', 'Edinburgh', '2012-03-29 00:00:00', 22, 433060, 41, '6224'),
(5, 'Airi', 'Satou', 'Accountant', 'a.satou@datatables.net', 'Tokyo', '2008-11-28 00:00:00', 33, 162700, 55, '5407'),
(6, 'Brielle', 'Williamson', 'Integration Specialist', 'b.williamson@datatables.net', 'New York', '2012-12-02 00:00:00', 61, 372000, 21, '4804'),
(7, 'Herrod', 'Chandler', 'Sales Assistant', 'h.chandler@datatables.net', 'San Francisco', '2012-08-06 00:00:00', 59, 137500, 46, '9608'),
(8, 'Rhona', 'Davidson', 'Integration Specialist', 'r.davidson@datatables.net', 'Tokyo', '2010-10-14 00:00:00', 55, 327900, 50, '6200'),
(9, 'Colleen', 'Hurst', 'Javascript Developer', 'c.hurst@datatables.net', 'San Francisco', '2009-09-15 00:00:00', 39, 205500, 26, '2360'),
(10, 'Sonya', 'Frost', 'Software Engineer', 's.frost@datatables.net', 'Edinburgh', '2008-12-13 00:00:00', 23, 103600, 18, '1667'),
(11, 'Jena', 'Gaines', 'Office Manager', 'j.gaines@datatables.net', 'London', '2008-12-19 00:00:00', 30, 90560, 13, '3814'),
(12, 'Quinn', 'Flynn', 'Support Lead', 'q.flynn@datatables.net', 'Edinburgh', '2013-03-03 00:00:00', 22, 342000, 23, '9497'),
(13, 'Charde', 'Marshall', 'Regional Director', 'c.marshall@datatables.net', 'San Francisco', '2008-10-16 00:00:00', 36, 470600, 14, '6741'),
(14, 'Haley', 'Kennedy', 'Senior Marketing Designer', 'h.kennedy@datatables.net', 'London', '2012-12-18 00:00:00', 43, 313500, 12, '3597'),
(15, 'Tatyana', 'Fitzpatrick', 'Regional Director', 't.fitzpatrick@datatables.net', 'London', '2010-03-17 00:00:00', 19, 385750, 54, '1965'),
(16, 'Michael', 'Silva', 'Marketing Designer', 'm.silva@datatables.net', 'London', '2012-11-27 00:00:00', 66, 198500, 37, '1581'),
(17, 'Paul', 'Byrd', 'Chief Financial Officer (CFO)', 'p.byrd@datatables.net', 'New York', '2010-06-09 00:00:00', 64, 725000, 32, '3059'),
(18, 'Gloria', 'Little', 'Systems Administrator', 'g.little@datatables.net', 'New York', '2009-04-10 00:00:00', 59, 237500, 35, '1721'),
(19, 'Bradley', 'Greer', 'Software Engineer', 'b.greer@datatables.net', 'London', '2012-10-13 00:00:00', 41, 132000, 48, '2558'),
(20, 'Dai', 'Rios', 'Personnel Lead', 'd.rios@datatables.net', 'Edinburgh', '2012-09-26 00:00:00', 35, 217500, 45, '2290'),
(21, 'Jenette', 'Caldwell', 'Development Lead', 'j.caldwell@datatables.net', 'New York', '2011-09-03 00:00:00', 30, 345000, 17, '1937'),
(22, 'Yuri', 'Berry', 'Chief Marketing Officer (CMO)', 'y.berry@datatables.net', 'New York', '2009-06-25 00:00:00', 40, 675000, 57, '6154'),
(23, 'Caesar', 'Vance', 'Pre-Sales Support', 'c.vance@datatables.net', 'New York', '2011-12-12 00:00:00', 21, 106450, 29, '8330'),
(24, 'Doris', 'Wilder', 'Sales Assistant', 'd.wilder@datatables.net', 'Sidney', '2010-09-20 00:00:00', 23, 85600, 56, '3023'),
(25, 'Angelica', 'Ramos', 'Chief Executive Officer (CEO)', 'a.ramos@datatables.net', 'London', '2009-10-09 00:00:00', 47, 1200000, 36, '5797'),
(26, 'Gavin', 'Joyce', 'Developer', 'g.joyce@datatables.net', 'Edinburgh', '2010-12-22 00:00:00', 42, 92575, 5, '8822'),
(27, 'Jennifer', 'Chang', 'Regional Director', 'j.chang@datatables.net', 'Singapore', '2010-11-14 00:00:00', 28, 357650, 51, '9239'),
(28, 'Brenden', 'Wagner', 'Software Engineer', 'b.wagner@datatables.net', 'San Francisco', '2011-06-07 00:00:00', 28, 206850, 20, '1314'),
(29, 'Fiona', 'Green', 'Chief Operating Officer (COO)', 'f.green@datatables.net', 'San Francisco', '2010-03-11 00:00:00', 48, 850000, 7, '2947'),
(30, 'Shou', 'Itou', 'Regional Marketing', 's.itou@datatables.net', 'Tokyo', '2011-08-14 00:00:00', 20, 163000, 1, '8899'),
(31, 'Michelle', 'House', 'Integration Specialist', 'm.house@datatables.net', 'Sidney', '2011-06-02 00:00:00', 37, 95400, 39, '2769'),
(32, 'Suki', 'Burks', 'Developer', 's.burks@datatables.net', 'London', '2009-10-22 00:00:00', 53, 114500, 40, '6832'),
(33, 'Prescott', 'Bartlett', 'Technical Author', 'p.bartlett@datatables.net', 'London', '2011-05-07 00:00:00', 27, 145000, 47, '3606'),
(34, 'Gavin', 'Cortez', 'Team Leader', 'g.cortez@datatables.net', 'San Francisco', '2008-10-26 00:00:00', 22, 235500, 52, '2860'),
(35, 'Martena', 'Mccray', 'Post-Sales support', 'm.mccray@datatables.net', 'Edinburgh', '2011-03-09 00:00:00', 46, 324050, 8, '8240'),
(36, 'Unity', 'Butler', 'Marketing Designer', 'u.butler@datatables.net', 'San Francisco', '2009-12-09 00:00:00', 47, 85675, 24, '5384'),
(37, 'Howard', 'Hatfield', 'Office Manager', 'h.hatfield@datatables.net', 'San Francisco', '2008-12-16 00:00:00', 51, 164500, 38, '7031'),
(38, 'Hope', 'Fuentes', 'Secretary', 'h.fuentes@datatables.net', 'San Francisco', '2010-02-12 00:00:00', 41, 109850, 53, '6318'),
(39, 'Vivian', 'Harrell', 'Financial Controller', 'v.harrell@datatables.net', 'San Francisco', '2009-02-14 00:00:00', 62, 452500, 30, '9422'),
(40, 'Timothy', 'Mooney', 'Office Manager', 't.mooney@datatables.net', 'London', '2008-12-11 00:00:00', 37, 136200, 28, '7580'),
(41, 'Jackson', 'Bradshaw', 'Director', 'j.bradshaw@datatables.net', 'New York', '2008-09-26 00:00:00', 65, 645750, 34, '1042'),
(42, 'Olivia', 'Liang', 'Support Engineer', 'o.liang@datatables.net', 'Singapore', '2011-02-03 00:00:00', 64, 234500, 4, '2120'),
(43, 'Bruno', 'Nash', 'Software Engineer', 'b.nash@datatables.net', 'London', '2011-05-03 00:00:00', 38, 163500, 3, '6222'),
(44, 'Sakura', 'Yamamoto', 'Support Engineer', 's.yamamoto@datatables.net', 'Tokyo', '2009-08-19 00:00:00', 37, 139575, 31, '9383'),
(45, 'Thor', 'Walton', 'Developer', 't.walton@datatables.net', 'New York', '2013-08-11 00:00:00', 61, 98540, 11, '8327'),
(46, 'Finn', 'Camacho', 'Support Engineer', 'f.camacho@datatables.net', 'San Francisco', '2009-07-07 00:00:00', 47, 87500, 10, '2927'),
(47, 'Serge', 'Baldwin', 'Data Coordinator', 's.baldwin@datatables.net', 'Singapore', '2012-04-09 00:00:00', 64, 138575, 44, '8352'),
(48, 'Zenaida', 'Frank', 'Software Engineer', 'z.frank@datatables.net', 'New York', '2010-01-04 00:00:00', 63, 125250, 42, '7439'),
(49, 'Zorita', 'Serrano', 'Software Engineer', 'z.serrano@datatables.net', 'San Francisco', '2012-06-01 00:00:00', 56, 115000, 27, '4389'),
(50, 'Jennifer', 'Acosta', 'Junior Javascript Developer', 'j.acosta@datatables.net', 'Edinburgh', '2013-02-01 00:00:00', 43, 75650, 49, '3431'),
(51, 'Cara', 'Stevens', 'Sales Assistant', 'c.stevens@datatables.net', 'New York', '2011-12-06 00:00:00', 46, 145600, 15, '3990'),
(52, 'Hermione', 'Butler', 'Regional Director', 'h.butler@datatables.net', 'London', '2011-03-21 00:00:00', 47, 356250, 9, '1016'),
(53, 'Lael', 'Greer', 'Systems Administrator', 'l.greer@datatables.net', 'London', '2009-02-27 00:00:00', 21, 103500, 25, '6733'),
(54, 'Jonas', 'Alexander', 'Developer', 'j.alexander@datatables.net', 'San Francisco', '2010-07-14 00:00:00', 30, 86500, 33, '8196'),
(55, 'Shad', 'Decker', 'Regional Director', 's.decker@datatables.net', 'Edinburgh', '2008-11-13 00:00:00', 51, 183000, 43, '6373'),
(56, 'Michael', 'Bruce', 'Javascript Developer', 'm.bruce@datatables.net', 'Singapore', '2011-06-27 00:00:00', 29, 183000, 16, '5384'),
(57, 'Donna', 'Snider', 'Customer Support', 'd.snider@datatables.net', 'New York', '2011-01-25 00:00:00', 27, 112000, 19, '4226');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `product_id`, `image_name`) VALUES
(1, 1, '580b8c34c37532016-10-22.jpg'),
(3, 2, '580b8daca974f2016-10-22.jpg'),
(4, NULL, '581cd45f05dc02016-11-04.jpg'),
(5, 7, '583752b3181f02016-11-24.jpg'),
(6, 3, '58375277356b02016-11-24.jpg'),
(7, 8, '583ca60eaab402016-11-28.jpg'),
(8, NULL, '583de3afd76e02016-11-29.jpg'),
(9, 9, '583de7f92c8802016-11-29.jpg'),
(10, 10, '587bd70791e6f2017-01-15.jpg'),
(11, NULL, '58891f6d489b82017-01-25.jpg'),
(12, NULL, '58891f8fe17082017-01-25.jpg'),
(13, NULL, '58891fa4cd2d02017-01-25.jpg'),
(14, NULL, '588920167be082017-01-25.jpg'),
(15, NULL, '588920fba27382017-01-25.jpg'),
(16, NULL, '588921d0491882017-01-25.jpg'),
(17, NULL, '588921f463f382017-01-25.jpg'),
(18, NULL, '58892203948902017-01-25.jpg'),
(19, NULL, '588922181f9782017-01-25.jpg'),
(20, NULL, '5889228563b502017-01-25.jpg'),
(21, NULL, '588922d1b34c02017-01-25.jpg'),
(22, 11, '58892319aded02017-01-25.jpg'),
(23, 12, '58a46c4023bed2017-02-15.jpg'),
(24, 13, '58a46f3b1130d2017-02-15.jpg'),
(25, 14, '58a4703d5c62d2017-02-15.jpg'),
(26, 15, '583de7f92c8802016-11-29.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `ID` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `link` varchar(250) NOT NULL,
  `has_subcategory` tinyint(4) NOT NULL DEFAULT '0',
  `sort` int(10) UNSIGNED NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `subparent` tinyint(1) NOT NULL DEFAULT '0',
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `id_subparent` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`ID`, `name`, `link`, `has_subcategory`, `sort`, `parent`, `subparent`, `id_parent`, `id_subparent`) VALUES
(1, 'Exterior', '', 1, 1, 1, 0, 0, 0),
(2, 'Wäsche', '', 0, 1, 0, 0, 1, 0),
(3, 'Versiegelungen', '', 0, 2, 0, 0, 1, 0),
(4, 'Felgen & Reifen', '', 0, 3, 0, 0, 1, 0),
(5, 'Reiniger', '', 0, 4, 0, 0, 1, 0),
(6, 'Wachse', '', 0, 5, 0, 0, 1, 0),
(7, 'Glas', '', 0, 6, 0, 0, 1, 0),
(8, 'Lackreinigung', '', 0, 7, 0, 0, 1, 0),
(9, 'Quick Detailer', '', 0, 8, 0, 0, 1, 0),
(10, 'Metall', '', 0, 9, 0, 0, 1, 0),
(11, 'Polituren', '', 0, 10, 0, 0, 1, 0),
(12, 'Kunststoff & Gummi', '', 0, 11, 0, 0, 1, 0),
(13, 'Verdeck', '', 0, 12, 0, 0, 1, 0),
(14, 'Interior', '', 1, 2, 1, 0, 0, 0),
(15, 'Kunststoff', '', 0, 1, 0, 0, 14, 0),
(16, 'Lufterfrischer', '', 0, 2, 0, 0, 14, 0),
(17, 'Stoff', '', 0, 3, 0, 0, 14, 0),
(18, 'Leder', '', 0, 4, 0, 0, 14, 0),
(19, 'Glas', '', 0, 5, 0, 0, 14, 0),
(20, 'Microfaser', '', 0, 3, 1, 0, 0, 0),
(21, 'Zubehör', '', 1, 4, 1, 0, 0, 0),
(22, 'Applikatoren', '', 0, 1, 0, 0, 21, 0),
(23, 'Bürsten', '', 0, 2, 0, 0, 21, 0),
(24, 'Schwämme', '', 0, 3, 0, 0, 21, 0),
(25, 'Aufbewahrung', '', 0, 4, 0, 0, 21, 0),
(26, 'Polier-Pads', '', 0, 5, 0, 0, 21, 0),
(27, 'Sprühflaschen', '', 0, 6, 0, 0, 21, 0),
(28, 'Misc', '', 0, 5, 0, 0, 21, 0),
(29, 'Maschinen', '', 1, 6, 0, 1, 21, 0),
(30, 'Poliermaschinen', '', 0, 1, 0, 0, 21, 29),
(31, 'Sauger', '', 0, 2, 0, 0, 21, 29),
(32, 'Akku-Schrauber', '', 0, 3, 0, 0, 21, 29),
(33, 'Schleifen', '', 0, 4, 0, 0, 21, 29),
(34, 'Sets', '', 0, 5, 1, 0, 0, 0),
(35, 'Merchandise', '', 0, 6, 1, 0, 0, 0),
(36, 'Gutscheine', '', 0, 7, 1, 0, 0, 0),
(37, 'Hautschutz', '', 0, 8, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(10) UNSIGNED NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_unit_price` decimal(20,2) NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `transaction_id`, `product_id`, `product_quantity`, `product_unit_price`, `comment`) VALUES
(1, 1, 1, 2, '3.50', ''),
(2, 1, 2, 1, '3.50', ''),
(3, 1, 3, 1, '3.50', ''),
(4, 2, 13, 1, '3.50', ''),
(5, 3, 14, 1, '3.50', ''),
(6, 4, 16, 1, '3.50', ''),
(7, 5, 14, 1, '3.50', ''),
(8, 6, 16, 1, '3.50', ''),
(9, 6, 15, 1, '3.50', ''),
(10, 7, 15, 1, '3.50', ''),
(11, 7, 14, 1, '3.50', ''),
(12, 8, 14, 1, '3.50', ''),
(13, 8, 13, 2, '3.50', ''),
(14, 9, 15, 1, '3.50', ''),
(15, 9, 14, 1, '3.50', ''),
(16, 10, 16, 1, '3.50', ''),
(17, 11, 16, 1, '3.50', ''),
(18, 11, 13, 1, '3.50', ''),
(19, 12, 16, 1, '3.50', ''),
(20, 12, 15, 1, '3.50', ''),
(21, 13, 11, 1, '3.50', ''),
(22, 14, 16, 1, '3.50', ''),
(23, 15, 4, 1, '12.50', ''),
(24, 15, 3, 1, '10.55', ''),
(25, 16, 11, 10, '3.50', ''),
(26, 16, 15, 4, '3.50', ''),
(27, 16, 16, 4, '3.50', ''),
(28, 16, 14, 3, '3.50', ''),
(29, 16, 13, 3, '3.50', ''),
(30, 16, 12, 4, '3.50', ''),
(31, 16, 10, 7, '3.50', ''),
(32, 17, 15, 1, '3.50', ''),
(33, 17, 14, 1, '3.50', ''),
(34, 18, 14, 1, '3.50', ''),
(35, 19, 14, 3, '3.50', ''),
(36, 19, 13, 3, '3.50', ''),
(37, 19, 16, 1, '3.50', ''),
(38, 19, 11, 1, '3.50', ''),
(39, 19, 10, 1, '3.50', ''),
(40, 19, 15, 1, '3.50', ''),
(41, 19, 3, 1, '10.55', ''),
(42, 19, 4, 1, '12.50', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `ID` int(10) UNSIGNED NOT NULL,
  `preview_name` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` varchar(1) NOT NULL COMMENT '0 - inactive 1 - active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`ID`, `preview_name`, `name`, `status`) VALUES
(1, 'Eps überweisung', 'eps', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `order_name` varchar(255) DEFAULT NULL,
  `product_description` text NOT NULL,
  `product_price` decimal(20,2) NOT NULL,
  `product_quantity` tinyint(4) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_subcategory` int(11) NOT NULL,
  `product_sub_subcategory` int(11) NOT NULL,
  `product_status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `product_name`, `order_name`, `product_description`, `product_price`, `product_quantity`, `product_category`, `product_subcategory`, `product_sub_subcategory`, `product_status`) VALUES
(1, '3', NULL, '&#60;p&#62;&#38;lt;p&#38;gt;3M - Car Wash Soap&#38;lt;/p&#38;gt;&#60;/p&#62;', '12.92', 10, 1, 2, 0, 1),
(2, 'Auto Finesse - Avalanche', NULL, '<h1 class="fn product-title">Auto Finesse - Avalanche</h1>', '20.00', 10, 1, 2, 0, 1),
(3, 'proba123', NULL, '&#60;p&#62;&#38;lt;p&#38;gt;proba&#38;lt;/p&#38;gt;&#60;/p&#62;', '100.00', 10, 1, 2, 0, 1),
(7, 'proba12377777', NULL, '&#60;p&#62;&#38;lt;p&#38;gt;proba&#38;lt;/p&#38;gt;&#60;/p&#62;', '100.00', 10, 1, 2, 0, 1),
(8, 'eeee', NULL, '<p>dsasa</p>\n<p>s</p>\n<p>da</p>\n<p>as</p>\n<p>sad</p>', '3.50', 10, 14, 15, 0, 1),
(9, 'probica filtera stringa ok ok 100ml', 'probica filtera stringa ok ok 100ml', '<p><strong>sadsadsa</strong></p>\n<p><em>sadsa</em></p>\n<p>sad</p>\n<p>&nbsp;"sad"</p>', '3.50', 10, 14, 15, 0, 1),
(10, 'Testic123', NULL, '<p>testic <strong>sadsadasdsad</strong></p>', '500.00', 1, 14, 15, 0, 1),
(11, 'eee', NULL, '<p>eee</p>', '10.00', 10, 1, 3, 0, 0),
(12, 'test proizvod', NULL, '<p>sadsadsada</p>', '5.00', 10, 1, 2, 0, 1),
(13, 'eee', NULL, '<p>eee breee</p>', '5.00', 10, 1, 2, 0, 1),
(14, 'celavi', NULL, '<p>asdsadsa</p>', '50.00', 10, 1, 4, 0, 1),
(15, 'probica filtera stringa ok ok 500ml', 'probica filtera stringa ok ok 500ml', '<p><strong>sadsadsa</strong></p>\r\n<p><em>sadsa</em></p>\r\n<p>sad</p>\r\n<p>&nbsp;"sad"</p>', '3.50', 10, 14, 15, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `ID` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `status` varchar(1) NOT NULL COMMENT '0 - inactive 1 - active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`ID`, `name`, `price`, `status`) VALUES
(1, 'Self pick up FREE', '0.00', '1'),
(2, 'Post', '5.00', '1'),
(3, 'DHL', '6.00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `ID` int(10) UNSIGNED NOT NULL,
  `transaction_id` varchar(60) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shipping_method_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `total_price` decimal(20,2) NOT NULL,
  `transaction_date` datetime NOT NULL,
  `status` varchar(1) NOT NULL COMMENT '0 - failed 1 - ok ok'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`ID`, `transaction_id`, `user_id`, `shipping_method_id`, `payment_method_id`, `total_price`, `transaction_date`, `status`) VALUES
(1, 'Order - 58546a1482643', 1, 2, 1, '21.80', '2016-12-16 23:26:28', '1'),
(2, 'Order - 58546a846ce07', 1, 3, 1, '10.20', '2016-12-16 23:28:20', '0'),
(3, 'Order - 58546e0841d9e', 1, 1, 1, '4.20', '2016-12-16 23:43:20', '0'),
(4, 'Order - 5855758e3a3c9', 1, 2, 1, '9.20', '2016-12-17 18:27:42', '2'),
(5, 'Order - 585576925b44f', 1, 1, 1, '4.20', '2016-12-17 18:32:02', '1'),
(6, 'Order - 585578fc0256b', 3, 1, 1, '8.40', '2016-12-17 18:42:20', '1'),
(7, 'Order - 585580f24b4a3', 4, 3, 1, '14.40', '2016-12-17 19:16:18', '1'),
(8, 'Order - 58559fa0de670', 1, 2, 1, '17.60', '2016-12-17 21:27:12', '2'),
(9, 'Order - 5855cb3d9048f', 1, 2, 1, '13.40', '2016-12-18 00:33:17', '1'),
(10, 'Order - 5855ccb64a2bc', 1, 1, 1, '4.20', '2016-12-18 00:39:34', '2'),
(11, 'Order - 5857be0b0f732', 1, 2, 1, '13.40', '2016-12-19 12:01:31', '1'),
(12, 'Order - 5857be8d0cf53', 1, 1, 1, '8.40', '2016-12-19 12:03:41', '1'),
(13, 'Order - 58593bfbbc4b8', 1, 1, 1, '4.20', '2016-12-20 15:11:07', '1'),
(14, 'Order - 58593c9dc22d6', 1, 1, 1, '4.20', '2016-12-20 15:13:49', '1'),
(15, 'Order - 58594ba23643a', 1, 1, 1, '27.66', '2016-12-20 16:17:54', '1'),
(16, 'Order - 585954e70989b', 1, 1, 1, '147.00', '2016-12-20 16:57:27', '0'),
(17, 'Order - 585bf0e8404f4', 11, 1, 1, '8.40', '2016-12-22 16:27:36', '2'),
(18, 'Order - 585bf285e37dd', 1, 3, 1, '10.20', '2016-12-22 16:34:29', '1'),
(19, 'Order - 585bf3225581e', 1, 3, 1, '75.66', '2016-12-22 16:37:06', '1');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `ID` int(10) UNSIGNED NOT NULL,
  `unit_name` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`ID`, `unit_name`) VALUES
(1, 'ml'),
(2, 'l');

-- --------------------------------------------------------

--
-- Table structure for table `units_products`
--

CREATE TABLE `units_products` (
  `ID` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `unit_quantity_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(20,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units_products`
--

INSERT INTO `units_products` (`ID`, `product_id`, `unit_quantity_id`, `quantity`, `price`) VALUES
(1, 9, 2, 50, '25.00'),
(2, 9, 1, 250, '50.00');

-- --------------------------------------------------------

--
-- Table structure for table `units_quantity`
--

CREATE TABLE `units_quantity` (
  `ID` int(10) UNSIGNED NOT NULL,
  `unit_id` int(11) NOT NULL,
  `quantity_unit` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `units_quantity`
--

INSERT INTO `units_quantity` (`ID`, `unit_id`, `quantity_unit`) VALUES
(1, 1, 500),
(2, 1, 200),
(3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `company` varchar(100) NOT NULL,
  `salt` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `zip` varchar(25) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL COMMENT '1 - admin 2 - user',
  `last_login` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `first_name`, `last_name`, `email`, `password`, `company`, `salt`, `city`, `country`, `address`, `telephone`, `zip`, `active`, `status`, `last_login`) VALUES
(11, 'Goran', 'Mladenovic', 'savicdragan15@facebook.com', '$2y$12$gAFPfixVUWKUSlUIYXAleOlwIE6JNNy7TyLsy0jlK3XdovseZWDzS', '', '4rmCugjw3oEDTlw8SPGd5N65f129db2558e4312021dfa4c19c4186', '', '', '', '', '', 1, 2, '2016-12-16 21:09:26'),
(28, 'Dragan', 'Savic', 'dtest2707@gmail.com', '$2y$12$N0tlTkdYQUomdnU5a0xZYemL0nfNyFEr/GDVKmMck9Ft6zaUbl3iu', '', 'E7HC61UpX6FkSglnpY4aYnbd7476742644c5931f9bad3470e3f0b2', 'Beograd', 'Austria', 'Kumanovska 13', '381637625902', '11000', 1, 2, '2017-01-15 13:20:59'),
(14, '', '', 'dragan@mediaworks.io', '$2y$12$NnlCQWRvMUlaVzdNb3FCd.1zcM5EqFMaH6JSwTCD7DqQyREClx3Tm', '', 'TIlqD9L13kOM4AL09Jxrcacfdbb05da5a51648b0fe8d22b9c464b8', '', '', '', '', '', 1, 1, '2017-02-15 14:56:52'),
(20, '', '', '', '$2y$12$hGxAd706JmLOpjbsxs03LuqI0BWd.yYmuZpf9./WmhE7nawnLy9TG', '', 'G4UiyqtiEgCwrNdmYJ0SbUe86a11db17866d9911b8eea2bf28c293', '', '', '', '', '', 0, 2, '2016-12-16 21:09:26'),
(21, 'Dragan', 'Testerko', 'savicdragan@gmail.com', '$2y$12$aFdkJThnSkpWQnJaYmlHSOhskriMd1GKAb2gYufedQMhk6SFLgQ06', '', 'ZdgF1ihLiAzLrHuU642SXx0484f6cb89422fdf2978b5cf8419e1a5', 'Beograd', 'Austria', 'Kumanovska 13', '381637625902', '11000', 0, 2, '2016-12-16 20:56:12'),
(22, 'Probica', 'Testerko', 'savicdragan270777777@gmail.com', '$2y$12$Nm0waWxWNEshcW45IzgzTe7tlV0KRvMmdh7qOJQojNg8lsDXwtRVy', '', 'QfdBuYESXXlSXZDXiy6N8da687216de0d86638d0e27fcc9f70d771', 'Beograd', 'Austria', 'Kumanovska 133', '381637625902', '11000', 0, 2, '2016-12-16 20:58:08'),
(1, 'Dragan', 'Savic', 'savicdragan2707@gmail.com', '$2y$12$I00zZEBUP2pVcGl0QlgmWOqn9gozOjKOvmXfyQ0kWrEV7uORWSHs6', '', 'bq0eGkU58WR9E9HdhM4qQsbe28e95f8cc551c53557cc2a8061bc78', 'Beograd', 'Austria', 'Kumanovska 13', '381637625902', '11000', 1, 2, '2017-02-15 17:22:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datatables_demo`
--
ALTER TABLE `datatables_demo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seq` (`seq`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `units_products`
--
ALTER TABLE `units_products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `units_quantity`
--
ALTER TABLE `units_quantity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datatables_demo`
--
ALTER TABLE `datatables_demo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `units_products`
--
ALTER TABLE `units_products`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `units_quantity`
--
ALTER TABLE `units_quantity`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
