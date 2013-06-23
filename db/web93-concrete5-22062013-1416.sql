-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 22, 2013 at 01:46 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `web93-concrete5`
--

-- --------------------------------------------------------

--
-- Table structure for table `areapermissionassignments`
--

DROP TABLE IF EXISTS `areapermissionassignments`;
CREATE TABLE IF NOT EXISTS `areapermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `areapermissionblocktypeaccesslist`
--

DROP TABLE IF EXISTS `areapermissionblocktypeaccesslist`;
CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `areapermissionblocktypeaccesslistcustom`
--

DROP TABLE IF EXISTS `areapermissionblocktypeaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `areapermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
CREATE TABLE IF NOT EXISTS `areas` (
  `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arID`),
  KEY `arIsGlobal` (`arIsGlobal`),
  KEY `cID` (`cID`),
  KEY `arHandle` (`arHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`) VALUES
(1, 106, 'Header', 0, 0, 0),
(2, 106, 'Column 1', 0, 0, 0),
(3, 106, 'Column 2', 0, 0, 0),
(4, 106, 'Column 3', 0, 0, 0),
(5, 106, 'Column 4', 0, 0, 0),
(6, 105, 'Primary', 0, 0, 0),
(7, 105, 'Secondary 1', 0, 0, 0),
(8, 105, 'Secondary 2', 0, 0, 0),
(9, 105, 'Secondary 3', 0, 0, 0),
(10, 105, 'Secondary 4', 0, 0, 0),
(11, 105, 'Secondary 5', 0, 0, 0),
(12, 121, 'Main', 0, 0, 0),
(13, 122, 'Main', 0, 0, 0),
(14, 123, 'Main', 0, 0, 0),
(15, 124, 'Main', 0, 0, 0),
(16, 124, 'Sidebar', 0, 0, 0),
(17, 124, 'Thumbnail Image', 0, 0, 0),
(18, 124, 'Header Image', 0, 0, 0),
(19, 125, 'Header Image', 0, 0, 0),
(20, 126, 'Header Image', 0, 0, 0),
(21, 127, 'Header Image', 0, 0, 0),
(22, 1, 'Sidebar', 0, 0, 0),
(23, 1, 'Main', 0, 0, 0),
(24, 1, 'Header Image', 0, 0, 0),
(25, 128, 'Sidebar', 0, 0, 0),
(26, 128, 'Main', 0, 0, 0),
(27, 128, 'Header Image', 0, 0, 0),
(28, 132, 'Sidebar', 0, 0, 0),
(29, 132, 'Main', 0, 0, 0),
(30, 132, 'Header Image', 0, 0, 0),
(31, 131, 'Sidebar', 0, 0, 0),
(32, 131, 'Main', 0, 0, 0),
(33, 131, 'Header Image', 0, 0, 0),
(34, 130, 'Sidebar', 0, 0, 0),
(35, 130, 'Main', 0, 0, 0),
(36, 130, 'Header Image', 0, 0, 0),
(37, 129, 'Main', 0, 0, 0),
(38, 129, 'Sidebar', 0, 0, 0),
(39, 129, 'Header Image', 0, 0, 0),
(40, 134, 'Header Image', 0, 0, 0),
(41, 134, 'Main', 0, 0, 0),
(42, 134, 'Thumbnail Image', 0, 0, 0),
(43, 134, 'Sidebar', 0, 0, 0),
(44, 133, 'Main', 0, 0, 0),
(45, 133, 'Sidebar', 0, 0, 0),
(46, 133, 'Header Image', 0, 0, 0),
(47, 1, 'Site Name', 0, 0, 1),
(48, 1, 'Header Nav', 0, 0, 1),
(49, 129, 'Site Name', 0, 0, 1),
(50, 129, 'Header Nav', 0, 0, 1),
(51, 128, 'Site Name', 0, 0, 1),
(52, 128, 'Header Nav', 0, 0, 1),
(53, 130, 'Site Name', 0, 0, 1),
(54, 130, 'Header Nav', 0, 0, 1),
(55, 133, 'Site Name', 0, 0, 1),
(56, 133, 'Header Nav', 0, 0, 1),
(57, 134, 'Site Name', 0, 0, 1),
(58, 134, 'Header Nav', 0, 0, 1),
(59, 136, 'Site Name', 0, 0, 1),
(60, 136, 'Header Nav', 0, 0, 1),
(61, 136, 'Header Image', 0, 0, 0),
(62, 136, 'Main', 0, 0, 0),
(63, 136, 'Sidebar', 0, 0, 0),
(64, 138, 'Site Name', 0, 0, 1),
(65, 138, 'Header Nav', 0, 0, 1),
(66, 138, 'Header Image', 0, 0, 0),
(67, 138, 'Main', 0, 0, 0),
(68, 138, 'Sidebar', 0, 0, 0),
(69, 139, 'Site Name', 0, 0, 1),
(70, 139, 'Header Nav', 0, 0, 1),
(71, 139, 'Header Image', 0, 0, 0),
(72, 139, 'Main', 0, 0, 0),
(73, 139, 'Sidebar', 0, 0, 0),
(74, 137, 'Site Name', 0, 0, 1),
(75, 137, 'Header Nav', 0, 0, 1),
(76, 137, 'Header Image', 0, 0, 0),
(77, 137, 'Main', 0, 0, 0),
(78, 137, 'Sidebar', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ataddress`
--

DROP TABLE IF EXISTS `ataddress`;
CREATE TABLE IF NOT EXISTS `ataddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state_province` varchar(255) DEFAULT NULL,
  `country` varchar(4) DEFAULT NULL,
  `postal_code` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ataddresscustomcountries`
--

DROP TABLE IF EXISTS `ataddresscustomcountries`;
CREATE TABLE IF NOT EXISTS `ataddresscustomcountries` (
  `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) NOT NULL,
  PRIMARY KEY (`atAddressCustomCountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ataddresssettings`
--

DROP TABLE IF EXISTS `ataddresssettings`;
CREATE TABLE IF NOT EXISTS `ataddresssettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` int(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atboolean`
--

DROP TABLE IF EXISTS `atboolean`;
CREATE TABLE IF NOT EXISTS `atboolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atboolean`
--

INSERT INTO `atboolean` (`avID`, `value`) VALUES
(20, 1),
(31, 1),
(34, 1),
(64, 1),
(65, 1),
(68, 1),
(69, 1),
(75, 1),
(108, 1),
(117, 1),
(118, 1),
(119, 1),
(138, 1),
(139, 1),
(140, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atbooleansettings`
--

DROP TABLE IF EXISTS `atbooleansettings`;
CREATE TABLE IF NOT EXISTS `atbooleansettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atbooleansettings`
--

INSERT INTO `atbooleansettings` (`akID`, `akCheckedByDefault`) VALUES
(5, 0),
(6, 0),
(8, 0),
(9, 0),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atdatetime`
--

DROP TABLE IF EXISTS `atdatetime`;
CREATE TABLE IF NOT EXISTS `atdatetime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atdatetimesettings`
--

DROP TABLE IF EXISTS `atdatetimesettings`;
CREATE TABLE IF NOT EXISTS `atdatetimesettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atdefault`
--

DROP TABLE IF EXISTS `atdefault`;
CREATE TABLE IF NOT EXISTS `atdefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atdefault`
--

INSERT INTO `atdefault` (`avID`, `value`) VALUES
(1, 'blog, blogging'),
(2, 'icon-book'),
(3, 'new blog, write blog, blogging'),
(4, 'icon-pencil'),
(5, 'blog drafts,composer'),
(6, 'icon-book'),
(7, 'pages, add page, delete page, copy, move, alias'),
(8, 'pages, add page, delete page, copy, move, alias'),
(9, 'icon-home'),
(10, 'pages, add page, delete page, copy, move, alias, bulk'),
(11, 'icon-road'),
(12, 'find page, search page, search, find, pages, sitemap'),
(13, 'icon-search'),
(14, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(15, 'icon-picture'),
(16, 'file, file attributes, title, attribute, description, rename'),
(17, 'icon-cog'),
(18, 'files, category, categories'),
(19, 'icon-list-alt'),
(21, 'new file set'),
(22, 'icon-plus-sign'),
(23, 'users, groups, people, find, delete user, remove user, change password, password'),
(24, 'find, search, people, delete user, remove user, change password, password'),
(25, 'icon-user'),
(26, 'user, group, people, permissions, access, expire'),
(27, 'icon-globe'),
(28, 'user attributes, user data, gather data, registration data'),
(29, 'icon-cog'),
(30, 'new user, create'),
(32, 'icon-plus-sign'),
(33, 'new user group, new group, group, create'),
(35, 'icon-plus'),
(36, 'group set'),
(37, 'icon-list'),
(38, 'forms, log, error, email, mysql, exception, survey'),
(39, 'hits, pageviews, visitors, activity'),
(40, 'icon-signal'),
(41, 'forms, questions, response, data'),
(42, 'icon-briefcase'),
(43, 'questions, quiz, response'),
(44, 'icon-tasks'),
(45, 'forms, log, error, email, mysql, exception, survey, history'),
(46, 'icon-time'),
(47, 'new theme, theme, active theme, change theme, template, css'),
(48, 'icon-font'),
(49, 'theme'),
(50, 'page types'),
(51, 'custom theme, change theme, custom css, css'),
(52, 'page type defaults, global block, global area, starter, template'),
(53, 'icon-file'),
(54, 'page attributes, custom'),
(55, 'icon-cog'),
(56, 'single, page, custom, application'),
(57, 'icon-wrench'),
(58, 'add workflow, remove workflow'),
(59, 'icon-list'),
(60, 'icon-user'),
(61, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(62, 'icon-th'),
(63, 'icon-lock'),
(66, 'block, refresh, custom'),
(67, 'icon-wrench'),
(70, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(71, 'update, upgrade'),
(72, 'concrete5.org, my account, marketplace'),
(73, 'buy theme, new theme, marketplace, template'),
(74, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(76, 'website name, title'),
(77, 'logo, favicon, iphone, icon, bookmark'),
(78, 'tinymce, content block, fonts, editor, tinymce, content, overlay'),
(79, 'translate, translation, internationalization, multilingual, translate'),
(80, 'timezone, profile, locale'),
(81, 'interface, quick nav, dashboard background, background image'),
(82, 'vanity, pretty url, seo, pageview, view'),
(83, 'bulk, seo, change keywords, engine, optimization, search'),
(84, 'traffic, statistics, google analytics, quant, pageviews, hits'),
(85, 'pretty, slug'),
(86, 'turn off statistics, tracking, statistics, pageviews, hits'),
(87, 'configure search, site search, search option'),
(88, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(89, 'cache option, turn off cache, no cache, page cache, caching'),
(90, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(91, 'editors, hide site, offline, private, public, access'),
(92, 'file options, file manager, upload, modify'),
(93, 'security, files, media, extension, manager, upload'),
(94, 'security, actions, administrator, admin, package, marketplace, search'),
(95, 'security, lock ip, lock out, block ip, address, restrict, access'),
(96, 'security, registration'),
(97, 'antispam, block spam, security'),
(98, 'lock site, under construction, hide, hidden'),
(99, 'profile, login, redirect, specific, dashboard, administrators'),
(100, 'member profile, member page,community, forums, social, avatar'),
(101, 'signup, new user, community'),
(102, 'smtp, mail settings'),
(103, 'email server, mail settings, mail configuration, external, internal'),
(104, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(105, 'attribute configuration'),
(106, 'attributes, sets'),
(107, 'attributes, types'),
(109, 'overrides, system info, debug, support,help'),
(110, 'errors,exceptions, develop, support, help'),
(111, 'email, logging, logs, smtp, pop, errors, mysql, errors, log'),
(112, 'security, alternate storage, hide files'),
(113, 'network, proxy server'),
(114, 'export, backup, database, sql, mysql, encryption, restore'),
(115, 'upgrade, new version, update'),
(116, 'export, database, xml, starting, points, schema, refresh, custom, tables'),
(142, 'Meta title'),
(143, 'Meta description'),
(145, 'This is a subtitle'),
(146, ''),
(147, ''),
(149, 'Subtitle 2'),
(172, 'Meta title'),
(173, 'Meta description'),
(175, 'This is a subtitle'),
(176, ''),
(177, ''),
(179, 'Subtitle 2'),
(180, 'Meta title'),
(181, 'Meta description'),
(183, 'Beakeriser'),
(184, ''),
(185, ''),
(187, 'KS3 Geography'),
(188, 'Gloopy Gloop'),
(189, 'Vector drawn meatballs in canvas'),
(191, ''),
(192, ''),
(193, ''),
(195, 'The history of design'),
(196, 'Meta title'),
(197, 'Meta description'),
(199, 'Beakeriser'),
(200, ''),
(201, ''),
(203, 'KS3 Geography'),
(204, 'Open University'),
(205, 'Discover your design alter-ego'),
(207, 'The history of design'),
(208, 'My Face'),
(209, 'Home made 3d face scanner made before Kinnect was cool'),
(211, ''),
(212, 'Kerve Creative'),
(213, '3d forced perspective cloud thing'),
(215, ''),
(216, 'Martin Parr: touchscreen interactive'),
(217, 'In gallery voting touchscreen thing'),
(219, 'touchscreen interactive'),
(220, 'Tree Chaving Challenge'),
(221, 'Wishing you a chavtastic christmas'),
(223, ''),
(224, 'WildScreen: Team Wild'),
(225, 'Science to the rescue with a lot of jumping'),
(227, 'Team Wild'),
(228, 'Capture the Museum'),
(229, 'Museum based team fun and shenanigans'),
(231, ''),
(232, 'ZOOM'),
(233, 'Animal poses unlock archive'),
(235, '');

-- --------------------------------------------------------

--
-- Table structure for table `atfile`
--

DROP TABLE IF EXISTS `atfile`;
CREATE TABLE IF NOT EXISTS `atfile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atfile`
--

INSERT INTO `atfile` (`avID`, `fID`) VALUES
(144, 8),
(148, 8),
(174, 18),
(178, 8),
(182, 9),
(186, 10),
(190, 12),
(194, 15),
(198, 9),
(202, 10),
(206, 16),
(210, 15),
(214, 13),
(218, 14),
(222, 17),
(226, 18),
(230, 11),
(234, 19);

-- --------------------------------------------------------

--
-- Table structure for table `atnumber`
--

DROP TABLE IF EXISTS `atnumber`;
CREATE TABLE IF NOT EXISTS `atnumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atnumber`
--

INSERT INTO `atnumber` (`avID`, `value`) VALUES
(120, '960.0000'),
(121, '212.0000'),
(122, '960.0000'),
(123, '212.0000'),
(124, '960.0000'),
(125, '212.0000'),
(126, '960.0000'),
(127, '212.0000'),
(128, '960.0000'),
(129, '212.0000'),
(130, '960.0000'),
(131, '212.0000'),
(132, '960.0000'),
(133, '212.0000'),
(134, '150.0000'),
(135, '150.0000'),
(150, '480.0000'),
(151, '300.0000'),
(152, '480.0000'),
(153, '300.0000'),
(154, '480.0000'),
(155, '300.0000'),
(156, '480.0000'),
(157, '300.0000'),
(158, '480.0000'),
(159, '300.0000'),
(160, '480.0000'),
(161, '300.0000'),
(162, '480.0000'),
(163, '300.0000'),
(164, '480.0000'),
(165, '300.0000'),
(166, '480.0000'),
(167, '300.0000'),
(168, '480.0000'),
(169, '300.0000'),
(170, '480.0000'),
(171, '300.0000');

-- --------------------------------------------------------

--
-- Table structure for table `atselectoptions`
--

DROP TABLE IF EXISTS `atselectoptions`;
CREATE TABLE IF NOT EXISTS `atselectoptions` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `atselectoptions`
--

INSERT INTO `atselectoptions` (`ID`, `akID`, `value`, `displayOrder`, `isEndUserAdded`) VALUES
(1, 14, 'composer', 0, 1),
(2, 14, 'hello', 1, 1),
(3, 14, 'world', 2, 1),
(4, 14, 'first post', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `atselectoptionsselected`
--

DROP TABLE IF EXISTS `atselectoptionsselected`;
CREATE TABLE IF NOT EXISTS `atselectoptionsselected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`avID`,`atSelectOptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atselectoptionsselected`
--

INSERT INTO `atselectoptionsselected` (`avID`, `atSelectOptionID`) VALUES
(137, 1),
(137, 2),
(137, 3),
(137, 4);

-- --------------------------------------------------------

--
-- Table structure for table `atselectsettings`
--

DROP TABLE IF EXISTS `atselectsettings`;
CREATE TABLE IF NOT EXISTS `atselectsettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `atselectsettings`
--

INSERT INTO `atselectsettings` (`akID`, `akSelectAllowMultipleValues`, `akSelectOptionDisplayOrder`, `akSelectAllowOtherValues`) VALUES
(14, 1, 'display_asc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attextareasettings`
--

DROP TABLE IF EXISTS `attextareasettings`;
CREATE TABLE IF NOT EXISTS `attextareasettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attextareasettings`
--

INSERT INTO `attextareasettings` (`akID`, `akTextareaDisplayMode`) VALUES
(2, ''),
(3, ''),
(4, ''),
(7, '');

-- --------------------------------------------------------

--
-- Table structure for table `attributekeycategories`
--

DROP TABLE IF EXISTS `attributekeycategories`;
CREATE TABLE IF NOT EXISTS `attributekeycategories` (
  `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akCategoryHandle` varchar(255) NOT NULL,
  `akCategoryAllowSets` smallint(4) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `attributekeycategories`
--

INSERT INTO `attributekeycategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributekeys`
--

DROP TABLE IF EXISTS `attributekeys`;
CREATE TABLE IF NOT EXISTS `attributekeys` (
  `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akHandle` varchar(255) NOT NULL,
  `akName` varchar(255) NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`akID`),
  UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `attributekeys`
--

INSERT INTO `attributekeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1, 'meta_title', 'Meta Title', 1, 1, 0, 0, 0, 1, 1, 1, 0),
(2, 'meta_description', 'Meta Description', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(3, 'meta_keywords', 'Meta Keywords', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(4, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 1, 0, 1, 2, 1, 0),
(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(7, 'header_extra_content', 'Header Extra Content', 1, 1, 0, 0, 0, 1, 2, 1, 0),
(8, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(9, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 0, 0, 0, 1, 3, 1, 0),
(10, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(11, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 1, 0, 0, 0, 1, 3, 2, 0),
(12, 'width', 'Width', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(13, 'height', 'Height', 1, 1, 0, 0, 0, 1, 6, 3, 0),
(14, 'tags', 'Tags', 1, 1, 0, 0, 0, 1, 8, 1, 0),
(15, 'page_image', 'Page Image', 1, 0, 0, 0, 0, 1, 5, 1, 0),
(16, 'page_subtitle', 'Page Subtitle', 1, 0, 0, 0, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attributesetkeys`
--

DROP TABLE IF EXISTS `attributesetkeys`;
CREATE TABLE IF NOT EXISTS `attributesetkeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`akID`,`asID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributesetkeys`
--

INSERT INTO `attributesetkeys` (`akID`, `asID`, `displayOrder`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 2, 1),
(6, 2, 2),
(7, 1, 4),
(8, 2, 3),
(9, 2, 4),
(15, 3, 1),
(16, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `attributesets`
--

DROP TABLE IF EXISTS `attributesets`;
CREATE TABLE IF NOT EXISTS `attributesets` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asName` varchar(255) DEFAULT NULL,
  `asHandle` varchar(255) NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` int(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`asID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `attributesets`
--

INSERT INTO `attributesets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1, 'Page Header', 'page_header', 1, 0, 0, 0),
(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 2),
(3, 'Page Index', 'page_index', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `attributetypecategories`
--

DROP TABLE IF EXISTS `attributetypecategories`;
CREATE TABLE IF NOT EXISTS `attributetypecategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`atID`,`akCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributetypecategories`
--

INSERT INTO `attributetypecategories` (`atID`, `akCategoryID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 2),
(8, 3),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `attributetypes`
--

DROP TABLE IF EXISTS `attributetypes`;
CREATE TABLE IF NOT EXISTS `attributetypes` (
  `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atHandle` varchar(255) NOT NULL,
  `atName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`atID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `attributetypes`
--

INSERT INTO `attributetypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', 0),
(2, 'textarea', 'Text Area', 0),
(3, 'boolean', 'Checkbox', 0),
(4, 'date_time', 'Date/Time', 0),
(5, 'image_file', 'Image/File', 0),
(6, 'number', 'Number', 0),
(7, 'rating', 'Rating', 0),
(8, 'select', 'Select', 0),
(9, 'address', 'Address', 0);

-- --------------------------------------------------------

--
-- Table structure for table `attributevalues`
--

DROP TABLE IF EXISTS `attributevalues`;
CREATE TABLE IF NOT EXISTS `attributevalues` (
  `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`avID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=237 ;

--
-- Dumping data for table `attributevalues`
--

INSERT INTO `attributevalues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 3, '2013-06-22 10:54:30', 1, 2),
(2, 4, '2013-06-22 10:54:30', 1, 2),
(3, 3, '2013-06-22 10:54:30', 1, 2),
(4, 4, '2013-06-22 10:54:30', 1, 2),
(5, 3, '2013-06-22 10:54:30', 1, 2),
(6, 4, '2013-06-22 10:54:30', 1, 2),
(7, 3, '2013-06-22 10:54:30', 1, 2),
(8, 3, '2013-06-22 10:54:30', 1, 2),
(9, 4, '2013-06-22 10:54:30', 1, 2),
(10, 3, '2013-06-22 10:54:30', 1, 2),
(11, 4, '2013-06-22 10:54:30', 1, 2),
(12, 3, '2013-06-22 10:54:30', 1, 2),
(13, 4, '2013-06-22 10:54:30', 1, 2),
(14, 3, '2013-06-22 10:54:30', 1, 2),
(15, 4, '2013-06-22 10:54:30', 1, 2),
(16, 3, '2013-06-22 10:54:30', 1, 2),
(17, 4, '2013-06-22 10:54:30', 1, 2),
(18, 3, '2013-06-22 10:54:30', 1, 2),
(19, 4, '2013-06-22 10:54:30', 1, 2),
(20, 5, '2013-06-22 10:54:31', 1, 3),
(21, 3, '2013-06-22 10:54:31', 1, 2),
(22, 4, '2013-06-22 10:54:31', 1, 2),
(23, 3, '2013-06-22 10:54:31', 1, 2),
(24, 3, '2013-06-22 10:54:31', 1, 2),
(25, 4, '2013-06-22 10:54:31', 1, 2),
(26, 3, '2013-06-22 10:54:31', 1, 2),
(27, 4, '2013-06-22 10:54:31', 1, 2),
(28, 3, '2013-06-22 10:54:31', 1, 2),
(29, 4, '2013-06-22 10:54:31', 1, 2),
(30, 3, '2013-06-22 10:54:31', 1, 2),
(31, 5, '2013-06-22 10:54:31', 1, 3),
(32, 4, '2013-06-22 10:54:31', 1, 2),
(33, 3, '2013-06-22 10:54:31', 1, 2),
(34, 5, '2013-06-22 10:54:31', 1, 3),
(35, 4, '2013-06-22 10:54:31', 1, 2),
(36, 3, '2013-06-22 10:54:31', 1, 2),
(37, 4, '2013-06-22 10:54:31', 1, 2),
(38, 3, '2013-06-22 10:54:31', 1, 2),
(39, 3, '2013-06-22 10:54:31', 1, 2),
(40, 4, '2013-06-22 10:54:31', 1, 2),
(41, 3, '2013-06-22 10:54:32', 1, 2),
(42, 4, '2013-06-22 10:54:32', 1, 2),
(43, 3, '2013-06-22 10:54:32', 1, 2),
(44, 4, '2013-06-22 10:54:32', 1, 2),
(45, 3, '2013-06-22 10:54:32', 1, 2),
(46, 4, '2013-06-22 10:54:32', 1, 2),
(47, 3, '2013-06-22 10:54:32', 1, 2),
(48, 4, '2013-06-22 10:54:32', 1, 2),
(49, 3, '2013-06-22 10:54:32', 1, 2),
(50, 3, '2013-06-22 10:54:32', 1, 2),
(51, 3, '2013-06-22 10:54:32', 1, 2),
(52, 3, '2013-06-22 10:54:32', 1, 2),
(53, 4, '2013-06-22 10:54:32', 1, 2),
(54, 3, '2013-06-22 10:54:32', 1, 2),
(55, 4, '2013-06-22 10:54:32', 1, 2),
(56, 3, '2013-06-22 10:54:32', 1, 2),
(57, 4, '2013-06-22 10:54:32', 1, 2),
(58, 3, '2013-06-22 10:54:32', 1, 2),
(59, 4, '2013-06-22 10:54:32', 1, 2),
(60, 4, '2013-06-22 10:54:32', 1, 2),
(61, 3, '2013-06-22 10:54:32', 1, 2),
(62, 4, '2013-06-22 10:54:32', 1, 2),
(63, 4, '2013-06-22 10:54:32', 1, 2),
(64, 5, '2013-06-22 10:54:32', 1, 3),
(65, 8, '2013-06-22 10:54:33', 1, 3),
(66, 3, '2013-06-22 10:54:33', 1, 2),
(67, 4, '2013-06-22 10:54:33', 1, 2),
(68, 5, '2013-06-22 10:54:33', 1, 3),
(69, 5, '2013-06-22 10:54:33', 1, 3),
(70, 3, '2013-06-22 10:54:33', 1, 2),
(71, 3, '2013-06-22 10:54:33', 1, 2),
(72, 3, '2013-06-22 10:54:33', 1, 2),
(73, 3, '2013-06-22 10:54:33', 1, 2),
(74, 3, '2013-06-22 10:54:33', 1, 2),
(75, 5, '2013-06-22 10:54:33', 1, 3),
(76, 3, '2013-06-22 10:54:33', 1, 2),
(77, 3, '2013-06-22 10:54:33', 1, 2),
(78, 3, '2013-06-22 10:54:33', 1, 2),
(79, 3, '2013-06-22 10:54:33', 1, 2),
(80, 3, '2013-06-22 10:54:33', 1, 2),
(81, 3, '2013-06-22 10:54:33', 1, 2),
(82, 3, '2013-06-22 10:54:33', 1, 2),
(83, 3, '2013-06-22 10:54:33', 1, 2),
(84, 3, '2013-06-22 10:54:33', 1, 2),
(85, 3, '2013-06-22 10:54:33', 1, 2),
(86, 3, '2013-06-22 10:54:33', 1, 2),
(87, 3, '2013-06-22 10:54:33', 1, 2),
(88, 3, '2013-06-22 10:54:33', 1, 2),
(89, 3, '2013-06-22 10:54:33', 1, 2),
(90, 3, '2013-06-22 10:54:33', 1, 2),
(91, 3, '2013-06-22 10:54:34', 1, 2),
(92, 3, '2013-06-22 10:54:34', 1, 2),
(93, 3, '2013-06-22 10:54:34', 1, 2),
(94, 3, '2013-06-22 10:54:34', 1, 2),
(95, 3, '2013-06-22 10:54:34', 1, 2),
(96, 3, '2013-06-22 10:54:34', 1, 2),
(97, 3, '2013-06-22 10:54:34', 1, 2),
(98, 3, '2013-06-22 10:54:34', 1, 2),
(99, 3, '2013-06-22 10:54:34', 1, 2),
(100, 3, '2013-06-22 10:54:34', 1, 2),
(101, 3, '2013-06-22 10:54:34', 1, 2),
(102, 3, '2013-06-22 10:54:34', 1, 2),
(103, 3, '2013-06-22 10:54:34', 1, 2),
(104, 3, '2013-06-22 10:54:34', 1, 2),
(105, 3, '2013-06-22 10:54:34', 1, 2),
(106, 3, '2013-06-22 10:54:34', 1, 2),
(107, 3, '2013-06-22 10:54:34', 1, 2),
(108, 8, '2013-06-22 10:54:34', 1, 3),
(109, 3, '2013-06-22 10:54:34', 1, 2),
(110, 3, '2013-06-22 10:54:34', 1, 2),
(111, 3, '2013-06-22 10:54:34', 1, 2),
(112, 3, '2013-06-22 10:54:34', 1, 2),
(113, 3, '2013-06-22 10:54:34', 1, 2),
(114, 3, '2013-06-22 10:54:34', 1, 2),
(115, 3, '2013-06-22 10:54:34', 1, 2),
(116, 3, '2013-06-22 10:54:34', 1, 2),
(117, 5, '2013-06-22 10:54:35', 1, 3),
(118, 5, '2013-06-22 10:54:35', 1, 3),
(119, 8, '2013-06-22 10:54:35', 1, 3),
(120, 12, '2013-06-22 10:54:38', 1, 6),
(121, 13, '2013-06-22 10:54:38', 1, 6),
(122, 12, '2013-06-22 10:54:38', 1, 6),
(123, 13, '2013-06-22 10:54:38', 1, 6),
(124, 12, '2013-06-22 10:54:38', 1, 6),
(125, 13, '2013-06-22 10:54:38', 1, 6),
(126, 12, '2013-06-22 10:54:38', 1, 6),
(127, 13, '2013-06-22 10:54:38', 1, 6),
(128, 12, '2013-06-22 10:54:38', 1, 6),
(129, 13, '2013-06-22 10:54:38', 1, 6),
(130, 12, '2013-06-22 10:54:39', 1, 6),
(131, 13, '2013-06-22 10:54:39', 1, 6),
(132, 12, '2013-06-22 10:54:39', 1, 6),
(133, 13, '2013-06-22 10:54:39', 1, 6),
(134, 12, '2013-06-22 10:54:39', 1, 6),
(135, 13, '2013-06-22 10:54:39', 1, 6),
(136, 14, '2013-06-22 10:54:44', 1, 8),
(137, 14, '2013-06-22 10:54:44', 1, 8),
(138, 5, '2013-06-22 10:54:44', 1, 3),
(139, 6, '2013-06-22 10:54:44', 1, 3),
(140, 8, '2013-06-22 10:54:44', 1, 3),
(141, 14, '2013-06-22 10:54:45', 1, 8),
(142, 1, '2013-06-22 11:37:58', 1, 1),
(143, 2, '2013-06-22 11:37:58', 1, 2),
(144, 15, '2013-06-22 11:37:58', 1, 5),
(145, 16, '2013-06-22 11:37:59', 1, 1),
(146, 1, '2013-06-22 11:38:14', 1, 1),
(147, 2, '2013-06-22 11:38:14', 1, 2),
(148, 15, '2013-06-22 11:38:14', 1, 5),
(149, 16, '2013-06-22 11:38:14', 1, 1),
(150, 12, '2013-06-22 12:51:38', 1, 6),
(151, 13, '2013-06-22 12:51:38', 1, 6),
(152, 12, '2013-06-22 12:51:39', 1, 6),
(153, 13, '2013-06-22 12:51:39', 1, 6),
(154, 12, '2013-06-22 12:51:39', 1, 6),
(155, 13, '2013-06-22 12:51:39', 1, 6),
(156, 12, '2013-06-22 12:51:39', 1, 6),
(157, 13, '2013-06-22 12:51:39', 1, 6),
(158, 12, '2013-06-22 12:51:39', 1, 6),
(159, 13, '2013-06-22 12:51:39', 1, 6),
(160, 12, '2013-06-22 12:51:40', 1, 6),
(161, 13, '2013-06-22 12:51:40', 1, 6),
(162, 12, '2013-06-22 12:51:40', 1, 6),
(163, 13, '2013-06-22 12:51:40', 1, 6),
(164, 12, '2013-06-22 12:51:40', 1, 6),
(165, 13, '2013-06-22 12:51:40', 1, 6),
(166, 12, '2013-06-22 12:51:41', 1, 6),
(167, 13, '2013-06-22 12:51:41', 1, 6),
(168, 12, '2013-06-22 12:51:41', 1, 6),
(169, 13, '2013-06-22 12:51:41', 1, 6),
(170, 12, '2013-06-22 12:51:41', 1, 6),
(171, 13, '2013-06-22 12:51:41', 1, 6),
(172, 1, '2013-06-22 12:52:41', 1, 1),
(173, 2, '2013-06-22 12:52:41', 1, 2),
(174, 15, '2013-06-22 12:52:41', 1, 5),
(175, 16, '2013-06-22 12:52:41', 1, 1),
(176, 1, '2013-06-22 12:52:50', 1, 1),
(177, 2, '2013-06-22 12:52:50', 1, 2),
(178, 15, '2013-06-22 12:52:50', 1, 5),
(179, 16, '2013-06-22 12:52:50', 1, 1),
(180, 1, '2013-06-22 12:53:30', 1, 1),
(181, 2, '2013-06-22 12:53:30', 1, 2),
(182, 15, '2013-06-22 12:53:30', 1, 5),
(183, 16, '2013-06-22 12:53:30', 1, 1),
(184, 1, '2013-06-22 12:54:06', 1, 1),
(185, 2, '2013-06-22 12:54:06', 1, 2),
(186, 15, '2013-06-22 12:54:06', 1, 5),
(187, 16, '2013-06-22 12:54:06', 1, 1),
(188, 1, '2013-06-22 12:54:49', 1, 1),
(189, 2, '2013-06-22 12:54:49', 1, 2),
(190, 15, '2013-06-22 12:54:49', 1, 5),
(191, 16, '2013-06-22 12:54:49', 1, 1),
(192, 1, '2013-06-22 12:55:52', 1, 1),
(193, 2, '2013-06-22 12:55:52', 1, 2),
(194, 15, '2013-06-22 12:55:52', 1, 5),
(195, 16, '2013-06-22 12:55:52', 1, 1),
(196, 1, '2013-06-22 12:56:01', 1, 1),
(197, 2, '2013-06-22 12:56:01', 1, 2),
(198, 15, '2013-06-22 12:56:01', 1, 5),
(199, 16, '2013-06-22 12:56:01', 1, 1),
(200, 1, '2013-06-22 12:56:06', 1, 1),
(201, 2, '2013-06-22 12:56:06', 1, 2),
(202, 15, '2013-06-22 12:56:06', 1, 5),
(203, 16, '2013-06-22 12:56:06', 1, 1),
(204, 1, '2013-06-22 12:57:00', 1, 1),
(205, 2, '2013-06-22 12:57:00', 1, 2),
(206, 15, '2013-06-22 12:57:00', 1, 5),
(207, 16, '2013-06-22 12:57:00', 1, 1),
(208, 1, '2013-06-22 12:57:18', 1, 1),
(209, 2, '2013-06-22 12:57:18', 1, 2),
(210, 15, '2013-06-22 12:57:18', 1, 5),
(211, 16, '2013-06-22 12:57:18', 1, 1),
(212, 1, '2013-06-22 12:58:08', 1, 1),
(213, 2, '2013-06-22 12:58:08', 1, 2),
(214, 15, '2013-06-22 12:58:08', 1, 5),
(215, 16, '2013-06-22 12:58:08', 1, 1),
(216, 1, '2013-06-22 12:59:08', 1, 1),
(217, 2, '2013-06-22 12:59:08', 1, 2),
(218, 15, '2013-06-22 12:59:08', 1, 5),
(219, 16, '2013-06-22 12:59:08', 1, 1),
(220, 1, '2013-06-22 12:59:44', 1, 1),
(221, 2, '2013-06-22 12:59:44', 1, 2),
(222, 15, '2013-06-22 12:59:44', 1, 5),
(223, 16, '2013-06-22 12:59:44', 1, 1),
(224, 1, '2013-06-22 13:00:28', 1, 1),
(225, 2, '2013-06-22 13:00:28', 1, 2),
(226, 15, '2013-06-22 13:00:28', 1, 5),
(227, 16, '2013-06-22 13:00:28', 1, 1),
(228, 1, '2013-06-22 13:01:19', 1, 1),
(229, 2, '2013-06-22 13:01:19', 1, 2),
(230, 15, '2013-06-22 13:01:19', 1, 5),
(231, 16, '2013-06-22 13:01:19', 1, 1),
(232, 1, '2013-06-22 13:02:08', 1, 1),
(233, 2, '2013-06-22 13:02:08', 1, 2),
(234, 15, '2013-06-22 13:02:08', 1, 5),
(235, 16, '2013-06-22 13:02:08', 1, 1),
(236, 14, '2013-06-22 13:13:02', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `basicworkflowpermissionassignments`
--

DROP TABLE IF EXISTS `basicworkflowpermissionassignments`;
CREATE TABLE IF NOT EXISTS `basicworkflowpermissionassignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `basicworkflowprogressdata`
--

DROP TABLE IF EXISTS `basicworkflowprogressdata`;
CREATE TABLE IF NOT EXISTS `basicworkflowprogressdata` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL,
  PRIMARY KEY (`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blockpermissionassignments`
--

DROP TABLE IF EXISTS `blockpermissionassignments`;
CREATE TABLE IF NOT EXISTS `blockpermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blockrelations`
--

DROP TABLE IF EXISTS `blockrelations`;
CREATE TABLE IF NOT EXISTS `blockrelations` (
  `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) NOT NULL,
  PRIMARY KEY (`brID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `blockrelations`
--

INSERT INTO `blockrelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1, 49, 48, 'DUPLICATE');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bName` varchar(60) DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(32) DEFAULT NULL,
  `bIsActive` varchar(1) NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"1";i:1;s:161:"	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:1:"1";s:7:"content";s:161:"	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						";}'),
(2, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"2";i:1;s:327:"<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:1:"2";s:7:"content";s:327:"<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>";}'),
(3, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"3";i:1;s:368:"<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:1:"3";s:7:"content";s:368:"<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>";}'),
(4, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"4";i:1;s:323:"<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:1:"4";s:7:"content";s:323:"<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>";}'),
(5, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"5";i:1;s:346:"\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:1:"5";s:7:"content";s:346:"\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>";}'),
(6, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 6, 1, NULL),
(7, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 7, 1, NULL),
(8, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 5, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"8";i:1;s:1:"A";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:1:"8";s:4:"slot";s:1:"A";}'),
(9, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 5, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:1:"9";i:1;s:1:"B";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:1:"9";s:4:"slot";s:1:"B";}'),
(10, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 4, 1, NULL),
(11, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 3, 1, NULL),
(12, '', '2013-06-22 10:54:35', '2013-06-22 10:54:35', NULL, '1', 5, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:25:"btDashboardNewsflowLatest";s:8:"_tableat";s:25:"btDashboardNewsflowLatest";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"12";i:1;s:1:"C";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"12";s:4:"slot";s:1:"C";}'),
(13, 'Blog Content', '2013-06-22 10:54:40', '2013-06-22 10:54:40', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"13";i:1;s:34:"<p>This is my first blog post.</p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"13";s:7:"content";s:34:"<p>This is my first blog post.</p>";}'),
(14, '', '2013-06-22 10:54:40', '2013-06-22 10:54:40', NULL, '1', 25, 1, 'O:11:"BlockRecord":13:{s:5:"_dbat";i:1;s:6:"_table";s:6:"btTags";s:8:"_tableat";s:6:"btTags";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"14";i:1;s:4:"Tags";i:2;s:3:"133";i:3;s:4:"page";i:4;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"14";s:5:"title";s:4:"Tags";s:9:"targetCID";s:3:"133";s:11:"displayMode";s:4:"page";s:10:"cloudCount";s:1:"0";}'),
(15, 'Thumbnail Image', '2013-06-22 10:54:40', '2013-06-22 10:54:40', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"15";i:1;s:1:"8";i:2;i:0;i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;N;i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"15";s:3:"fID";s:1:"8";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";N;s:7:"altText";s:0:"";}'),
(16, 'Header Image', '2013-06-22 10:54:40', '2013-06-22 10:54:41', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"16";i:1;s:1:"2";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:17:"My concrete5 Blog";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"16";s:3:"fID";s:1:"2";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:17:"My concrete5 Blog";}'),
(17, '', '2013-06-22 10:54:41', '2013-06-22 10:54:41', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"17";i:1;s:1:"7";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"17";s:3:"fID";s:1:"7";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(18, '', '2013-06-22 10:54:41', '2013-06-22 10:54:41', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"18";i:1;s:1:"6";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"18";s:3:"fID";s:1:"6";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(19, '', '2013-06-22 10:54:41', '2013-06-22 10:54:41', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"19";i:1;s:1:"4";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"19";s:3:"fID";s:1:"4";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(20, '', '2013-06-22 10:54:41', '2013-06-22 10:54:41', NULL, '1', 8, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"20";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:4:"none";i:6;s:6:"enough";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"20";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:4:"none";s:20:"displaySubPageLevels";s:6:"enough";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(21, '', '2013-06-22 10:54:41', '2013-06-22 10:54:41', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"21";i:1;s:15:"<h3>Links:</h3>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"21";s:7:"content";s:15:"<h3>Links:</h3>";}'),
(22, '', '2013-06-22 10:54:41', '2013-06-22 10:54:42', NULL, '1', 8, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"22";i:1;s:11:"display_asc";i:2;s:12:"second_level";i:3;i:0;i:4;i:0;i:5;s:3:"all";i:6;s:3:"all";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"22";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:12:"second_level";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:3:"all";s:20:"displaySubPageLevels";s:3:"all";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(23, '', '2013-06-22 10:54:42', '2013-06-22 10:54:42', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"23";i:1;s:133:"<h1><a title="Home" \n                                	href="{CCM:CID_1}"\n                                >CorinWilkins.co.uk</a></h1>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"23";s:7:"content";s:133:"<h1><a title="Home" \n                                	href="{CCM:CID_1}"\n                                >CorinWilkins.co.uk</a></h1>";}'),
(24, '', '2013-06-22 10:54:42', '2013-06-22 10:54:42', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"24";i:1;s:16:"<h3>Sidebar</h3>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"24";s:7:"content";s:16:"<h3>Sidebar</h3>";}'),
(25, '', '2013-06-22 10:54:42', '2013-06-22 10:54:42', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"25";i:1;s:343:"<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"25";s:7:"content";s:343:"<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>";}'),
(26, '', '2013-06-22 10:54:42', '2013-06-22 10:54:42', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"26";i:1;s:1592:"<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="{CCM:CID_110}">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="{CCM:CID_6}">Sitemap</a> and quickly delete the parts you don''t want.</p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"26";s:7:"content";s:1592:"<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="{CCM:CID_110}">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="{CCM:CID_6}">Sitemap</a> and quickly delete the parts you don''t want.</p>";}'),
(27, '', '2013-06-22 10:54:42', '2013-06-22 10:54:42', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"27";i:1;s:1:"1";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"27";s:3:"fID";s:1:"1";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:0:"";}'),
(28, '', '2013-06-22 10:54:42', '2013-06-22 10:54:42', NULL, '1', 2, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"28";i:1;s:3:"122";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"28";s:4:"stID";s:3:"122";}'),
(29, '', '2013-06-22 10:54:42', '2013-06-22 10:54:42', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"29";i:1;s:1739:"<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"29";s:7:"content";s:1739:"<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>";}'),
(30, '', '2013-06-22 10:54:42', '2013-06-22 10:54:42', NULL, '1', 2, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"30";i:1;s:3:"122";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"30";s:4:"stID";s:3:"122";}'),
(31, '', '2013-06-22 10:54:42', '2013-06-22 10:54:42', NULL, '1', 16, 1, NULL),
(32, '', '2013-06-22 10:54:42', '2013-06-22 10:54:43', NULL, '1', 2, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:18:"btCoreStackDisplay";s:8:"_tableat";s:18:"btCoreStackDisplay";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"32";i:1;s:3:"122";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"32";s:4:"stID";s:3:"122";}'),
(33, '', '2013-06-22 10:54:43', '2013-06-22 10:54:43', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"33";i:1;s:192:"<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">add a form block</a>.</p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"33";s:7:"content";s:192:"<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">add a form block</a>.</p>";}'),
(34, '', '2013-06-22 10:54:43', '2013-06-22 10:54:43', NULL, '1', 14, 1, NULL),
(35, '', '2013-06-22 10:54:43', '2013-06-22 10:54:43', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"35";i:1;s:17:"<h3>Site Map</h3>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"35";s:7:"content";s:17:"<h3>Site Map</h3>";}'),
(36, '', '2013-06-22 10:54:43', '2013-06-22 10:54:43', NULL, '1', 8, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:12:"btNavigation";s:8:"_tableat";s:12:"btNavigation";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"36";i:1;s:11:"display_asc";i:2;s:3:"top";i:3;i:0;i:4;i:0;i:5;s:3:"all";i:6;s:3:"all";i:7;i:0;i:8;i:0;}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"36";s:7:"orderBy";s:11:"display_asc";s:12:"displayPages";s:3:"top";s:15:"displayPagesCID";i:0;s:23:"displayPagesIncludeSelf";i:0;s:15:"displaySubPages";s:3:"all";s:20:"displaySubPageLevels";s:3:"all";s:23:"displaySubPageLevelsNum";i:0;s:23:"displayUnavailablePages";i:0;}'),
(37, '', '2013-06-22 10:54:43', '2013-06-22 10:54:43', NULL, '1', 22, 1, NULL),
(38, '', '2013-06-22 10:54:43', '2013-06-22 10:54:43', 'blog_index_thumbnail.php', '1', 20, 1, 'O:11:"BlockRecord":23:{s:5:"_dbat";i:1;s:6:"_table";s:10:"btPageList";s:8:"_tableat";s:10:"btPageList";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:15:{i:0;s:2:"38";i:1;s:2:"12";i:2;s:11:"chrono_desc";i:3;s:3:"129";i:4;s:1:"0";i:5;s:1:"0";i:6;i:1;i:7;s:1:"0";i:8;i:4;i:9;i:0;i:10;s:0:"";i:11;s:0:"";i:12;s:1:"1";i:13;s:1:"0";i:14;i:128;}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"38";s:3:"num";s:2:"12";s:7:"orderBy";s:11:"chrono_desc";s:9:"cParentID";s:3:"129";s:5:"cThis";s:1:"0";s:21:"includeAllDescendents";s:1:"0";s:8:"paginate";i:1;s:14:"displayAliases";s:1:"0";s:4:"ctID";i:4;s:3:"rss";i:0;s:8:"rssTitle";s:0:"";s:14:"rssDescription";s:0:"";s:17:"truncateSummaries";s:1:"1";s:19:"displayFeaturedOnly";s:1:"0";s:13:"truncateChars";i:128;}'),
(39, '', '2013-06-22 10:54:43', '2013-06-22 10:54:43', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"39";i:1;s:13:"<h3>Tags</h3>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"39";s:7:"content";s:13:"<h3>Tags</h3>";}'),
(40, '', '2013-06-22 10:54:43', '2013-06-22 10:54:43', NULL, '1', 25, 1, 'O:11:"BlockRecord":13:{s:5:"_dbat";i:1;s:6:"_table";s:6:"btTags";s:8:"_tableat";s:6:"btTags";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"40";i:1;s:0:"";i:2;s:3:"133";i:3;s:5:"cloud";i:4;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"40";s:5:"title";s:0:"";s:9:"targetCID";s:3:"133";s:11:"displayMode";s:5:"cloud";s:10:"cloudCount";s:1:"0";}'),
(41, '', '2013-06-22 10:54:44', '2013-06-22 10:54:44', NULL, '1', 28, 1, 'O:11:"BlockRecord":12:{s:5:"_dbat";i:1;s:6:"_table";s:13:"btDateArchive";s:8:"_tableat";s:13:"btDateArchive";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:4:{i:0;s:2:"41";i:1;s:8:"Archives";i:2;s:3:"133";i:3;s:2:"12";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"41";s:5:"title";s:8:"Archives";s:9:"targetCID";s:3:"133";s:9:"numMonths";s:2:"12";}'),
(42, 'Header Image', '2013-06-22 10:54:44', '2013-06-22 10:54:44', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"42";i:1;s:1:"2";i:2;i:0;i:3;i:960;i:4;i:212;i:5;s:0:"";i:6;i:0;i:7;s:1:"1";i:8;s:17:"My concrete5 Blog";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"42";s:3:"fID";s:1:"2";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:960;s:9:"maxHeight";i:212;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"1";s:7:"altText";s:17:"My concrete5 Blog";}'),
(43, 'Blog Content', '2013-06-22 10:54:44', '2013-06-22 10:54:44', NULL, '1', 9, 1, 'O:11:"BlockRecord":10:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentLocal";s:8:"_tableat";s:14:"btContentLocal";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:2:{i:0;s:2:"43";i:1;s:66:"<p>Here is some sample content! I''m writing it using composer!</p>";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"43";s:7:"content";s:66:"<p>Here is some sample content! I''m writing it using composer!</p>";}'),
(44, 'Thumbnail Image', '2013-06-22 10:54:44', '2013-06-22 10:54:44', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"44";i:1;s:1:"8";i:2;i:0;i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;N;i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"44";s:3:"fID";s:1:"8";s:10:"fOnstateID";i:0;s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";N;s:7:"altText";s:0:"";}'),
(45, '', '2013-06-22 10:54:44', '2013-06-22 10:54:44', NULL, '1', 22, 1, NULL),
(46, '', '2013-06-22 10:54:44', '2013-06-22 10:54:44', NULL, '1', 25, 1, 'O:11:"BlockRecord":13:{s:5:"_dbat";i:1;s:6:"_table";s:6:"btTags";s:8:"_tableat";s:6:"btTags";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:5:{i:0;s:2:"46";i:1;s:4:"Tags";i:2;s:3:"133";i:3;s:5:"cloud";i:4;s:1:"0";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"46";s:5:"title";s:4:"Tags";s:9:"targetCID";s:3:"133";s:11:"displayMode";s:5:"cloud";s:10:"cloudCount";s:1:"0";}'),
(47, '', '2013-06-22 10:54:44', '2013-06-22 10:54:44', NULL, '1', 28, 1, 'O:11:"BlockRecord":12:{s:5:"_dbat";i:1;s:6:"_table";s:13:"btDateArchive";s:8:"_tableat";s:13:"btDateArchive";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:4:{i:0;s:2:"47";i:1;s:8:"Archives";i:2;s:3:"133";i:3;s:2:"12";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"47";s:5:"title";s:8:"Archives";s:9:"targetCID";s:3:"133";s:9:"numMonths";s:2:"12";}'),
(48, NULL, '2013-06-22 11:22:59', '2013-06-22 11:22:59', NULL, '1', 20, 1, 'O:11:"BlockRecord":23:{s:5:"_dbat";i:1;s:6:"_table";s:10:"btPageList";s:8:"_tableat";s:10:"btPageList";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:15:{i:0;s:2:"48";i:1;i:0;i:2;s:11:"display_asc";i:3;i:0;i:4;s:1:"0";i:5;s:1:"0";i:6;i:0;i:7;s:1:"1";i:8;i:9;i:9;i:0;i:10;s:0:"";i:11;s:0:"";i:12;s:1:"0";i:13;s:1:"0";i:14;i:0;}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"48";s:3:"num";i:0;s:7:"orderBy";s:11:"display_asc";s:9:"cParentID";i:0;s:5:"cThis";s:1:"0";s:21:"includeAllDescendents";s:1:"0";s:8:"paginate";i:0;s:14:"displayAliases";s:1:"1";s:4:"ctID";i:9;s:3:"rss";i:0;s:8:"rssTitle";s:0:"";s:14:"rssDescription";s:0:"";s:17:"truncateSummaries";s:1:"0";s:19:"displayFeaturedOnly";s:1:"0";s:13:"truncateChars";i:0;}'),
(49, NULL, '2013-06-22 11:40:43', '2013-06-22 11:40:43', NULL, '1', 20, 1, 'O:11:"BlockRecord":23:{s:5:"_dbat";i:1;s:6:"_table";s:10:"btPageList";s:8:"_tableat";s:10:"btPageList";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:15:{i:0;s:2:"49";i:1;i:0;i:2;s:11:"display_asc";i:3;s:3:"136";i:4;s:1:"1";i:5;s:1:"1";i:6;i:0;i:7;s:1:"0";i:8;i:9;i:9;i:0;i:10;s:0:"";i:11;s:0:"";i:12;s:1:"0";i:13;s:1:"0";i:14;i:0;}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"49";s:3:"num";i:0;s:7:"orderBy";s:11:"display_asc";s:9:"cParentID";s:3:"136";s:5:"cThis";s:1:"1";s:21:"includeAllDescendents";s:1:"1";s:8:"paginate";i:0;s:14:"displayAliases";s:1:"0";s:4:"ctID";i:9;s:3:"rss";i:0;s:8:"rssTitle";s:0:"";s:14:"rssDescription";s:0:"";s:17:"truncateSummaries";s:1:"0";s:19:"displayFeaturedOnly";s:1:"0";s:13:"truncateChars";i:0;}'),
(50, NULL, '2013-06-22 11:41:18', '2013-06-22 11:41:18', NULL, '1', 18, 1, 'O:11:"BlockRecord":17:{s:5:"_dbat";i:1;s:6:"_table";s:14:"btContentImage";s:8:"_tableat";s:14:"btContentImage";s:6:"_where";N;s:6:"_saved";b:1;s:8:"_lasterr";b:0;s:9:"_original";a:9:{i:0;s:2:"50";i:1;s:1:"7";i:2;s:1:"0";i:3;i:0;i:4;i:0;i:5;s:0:"";i:6;i:0;i:7;s:1:"0";i:8;s:0:"";}s:11:"foreignName";s:11:"blockrecord";s:3:"bID";s:2:"50";s:3:"fID";s:1:"7";s:10:"fOnstateID";s:1:"0";s:8:"maxWidth";i:0;s:9:"maxHeight";i:0;s:12:"externalLink";s:0:"";s:15:"internalLinkCID";i:0;s:27:"forceImageToMatchDimensions";s:1:"0";s:7:"altText";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `blocktypepermissionblocktypeaccesslist`
--

DROP TABLE IF EXISTS `blocktypepermissionblocktypeaccesslist`;
CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blocktypepermissionblocktypeaccesslistcustom`
--

DROP TABLE IF EXISTS `blocktypepermissionblocktypeaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `blocktypepermissionblocktypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`btID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blocktypes`
--

DROP TABLE IF EXISTS `blocktypes`;
CREATE TABLE IF NOT EXISTS `blocktypes` (
  `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `btHandle` varchar(32) NOT NULL,
  `btName` varchar(128) NOT NULL,
  `btDescription` text,
  `btActiveWhenAdded` tinyint(1) NOT NULL DEFAULT '1',
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`btID`),
  UNIQUE KEY `btHandle` (`btHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `blocktypes`
--

INSERT INTO `blocktypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btActiveWhenAdded`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1, 'core_scrapbook_display', 'Scrapbook Display (Core)', 'Proxy block for blocks pasted through the scrapbook.', 1, 0, 0, 1, 0, 400, 400, 0),
(2, 'core_stack_display', 'Stack Display (Core)', 'Proxy block for stacks added through the UI.', 1, 0, 0, 1, 0, 400, 400, 0),
(3, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(4, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 1, 0, 0, 1, 0, 300, 100, 0),
(5, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 1, 0, 0, 1, 0, 400, 400, 0),
(6, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 1, 0, 0, 1, 0, 400, 400, 0),
(7, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 1, 0, 0, 1, 0, 400, 400, 0),
(8, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 1, 0, 0, 0, 1, 500, 350, 0),
(9, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 1, 0, 0, 0, 2, 600, 465, 0),
(10, 'date_nav', 'Date Navigation', 'A collapsible date based navigation tree', 1, 0, 0, 0, 3, 500, 350, 0),
(11, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 1, 0, 0, 0, 4, 370, 100, 0),
(12, 'file', 'File', 'Link to files stored in the asset library.', 1, 0, 0, 0, 5, 300, 250, 0),
(13, 'flash_content', 'Flash Content', 'Embeds SWF files, including flash detection.', 1, 0, 0, 0, 6, 380, 200, 0),
(14, 'form', 'Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 7, 420, 430, 0),
(15, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 1, 0, 0, 0, 8, 400, 200, 0),
(16, 'guestbook', 'Guestbook / Comments', 'Adds blog-style comments (a guestbook) to your page.', 1, 0, 1, 0, 9, 350, 480, 0),
(17, 'html', 'HTML', 'For adding HTML by hand.', 1, 0, 0, 0, 10, 600, 465, 0),
(18, 'image', 'Image', 'Adds images and onstates from the library to pages.', 1, 0, 0, 0, 11, 400, 550, 0),
(19, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 1, 0, 0, 0, 12, 430, 400, 0),
(20, 'page_list', 'Page List', 'List pages based on type, area.', 1, 0, 0, 0, 13, 500, 350, 0),
(21, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 1, 0, 0, 0, 14, 400, 330, 0),
(22, 'search', 'Search', 'Add a search box to your site.', 1, 0, 0, 0, 15, 400, 240, 0),
(23, 'slideshow', 'Slideshow', 'Display a running loop of images.', 1, 0, 0, 0, 16, 550, 400, 0),
(24, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 1, 0, 0, 0, 17, 420, 300, 0),
(25, 'tags', 'Tags', 'List pages based on type, area.', 1, 0, 0, 0, 18, 450, 260, 0),
(26, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports AVI, WMV, Quicktime/MPEG4 and FLV formats.', 1, 0, 0, 0, 19, 320, 220, 0),
(27, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 1, 0, 0, 0, 20, 400, 210, 0),
(28, 'date_archive', 'Blog Date Archive', 'Displays month archive for pages', 1, 0, 0, 0, 21, 500, 350, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btcontentfile`
--

DROP TABLE IF EXISTS `btcontentfile`;
CREATE TABLE IF NOT EXISTS `btcontentfile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) DEFAULT NULL,
  `filePassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btcontentimage`
--

DROP TABLE IF EXISTS `btcontentimage`;
CREATE TABLE IF NOT EXISTS `btcontentimage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `forceImageToMatchDimensions` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btcontentimage`
--

INSERT INTO `btcontentimage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `forceImageToMatchDimensions`, `altText`) VALUES
(15, 8, 0, 0, 0, '', 0, NULL, ''),
(16, 2, 0, 960, 212, '', 0, 1, 'My concrete5 Blog'),
(17, 7, 0, 960, 212, '', 0, 1, ''),
(18, 6, 0, 960, 212, '', 0, 1, ''),
(19, 4, 0, 960, 212, '', 0, 1, ''),
(27, 1, 0, 960, 212, '', 0, 1, ''),
(42, 2, 0, 960, 212, '', 0, 1, 'My concrete5 Blog'),
(44, 8, 0, 0, 0, '', 0, NULL, ''),
(50, 7, 0, 0, 0, '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `btcontentlocal`
--

DROP TABLE IF EXISTS `btcontentlocal`;
CREATE TABLE IF NOT EXISTS `btcontentlocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btcontentlocal`
--

INSERT INTO `btcontentlocal` (`bID`, `content`) VALUES
(1, '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						'),
(2, '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>'),
(3, '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>'),
(4, '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>'),
(5, '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>'),
(13, '<p>This is my first blog post.</p>'),
(21, '<h3>Links:</h3>'),
(23, '<h1><a title="Home" \n                                	href="{CCM:CID_1}"\n                                >CorinWilkins.co.uk</a></h1>'),
(24, '<h3>Sidebar</h3>'),
(25, '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>'),
(26, '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="{CCM:CID_110}">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="{CCM:CID_6}">Sitemap</a> and quickly delete the parts you don''t want.</p>'),
(29, '<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>'),
(33, '<h2>Contact Us</h2>\n									<p>Building a form is easy to do. Learn how to <a href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">add a form block</a>.</p>'),
(35, '<h3>Site Map</h3>'),
(39, '<h3>Tags</h3>'),
(43, '<p>Here is some sample content! I''m writing it using composer!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `btcorescrapbookdisplay`
--

DROP TABLE IF EXISTS `btcorescrapbookdisplay`;
CREATE TABLE IF NOT EXISTS `btcorescrapbookdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`),
  KEY `bOriginalID` (`bOriginalID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btcorestackdisplay`
--

DROP TABLE IF EXISTS `btcorestackdisplay`;
CREATE TABLE IF NOT EXISTS `btcorestackdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btcorestackdisplay`
--

INSERT INTO `btcorestackdisplay` (`bID`, `stID`) VALUES
(28, 122),
(30, 122),
(32, 122);

-- --------------------------------------------------------

--
-- Table structure for table `btdashboardnewsflowlatest`
--

DROP TABLE IF EXISTS `btdashboardnewsflowlatest`;
CREATE TABLE IF NOT EXISTS `btdashboardnewsflowlatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) NOT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btdashboardnewsflowlatest`
--

INSERT INTO `btdashboardnewsflowlatest` (`bID`, `slot`) VALUES
(8, 'A'),
(9, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `btdatearchive`
--

DROP TABLE IF EXISTS `btdatearchive`;
CREATE TABLE IF NOT EXISTS `btdatearchive` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `numMonths` int(11) DEFAULT '12',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btdatearchive`
--

INSERT INTO `btdatearchive` (`bID`, `title`, `targetCID`, `numMonths`) VALUES
(41, 'Archives', 133, 12),
(47, 'Archives', 133, 12);

-- --------------------------------------------------------

--
-- Table structure for table `btdatenav`
--

DROP TABLE IF EXISTS `btdatenav`;
CREATE TABLE IF NOT EXISTS `btdatenav` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `flatDisplay` int(11) DEFAULT '0',
  `defaultNode` varchar(64) DEFAULT 'current_page',
  `truncateTitles` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  `truncateTitleChars` int(11) DEFAULT '128',
  `showDescriptions` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btexternalform`
--

DROP TABLE IF EXISTS `btexternalform`;
CREATE TABLE IF NOT EXISTS `btexternalform` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btflashcontent`
--

DROP TABLE IF EXISTS `btflashcontent`;
CREATE TABLE IF NOT EXISTS `btflashcontent` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `quality` varchar(255) DEFAULT NULL,
  `minVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btform`
--

DROP TABLE IF EXISTS `btform`;
CREATE TABLE IF NOT EXISTS `btform` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) DEFAULT NULL,
  `thankyouMsg` text,
  `notifyMeOnSubmission` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`),
  KEY `questionSetIdForeign` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btform`
--

INSERT INTO `btform` (`bID`, `questionSetId`, `surveyName`, `thankyouMsg`, `notifyMeOnSubmission`, `recipientEmail`, `displayCaptcha`, `redirectCID`, `addFilesToSet`) VALUES
(34, 1371898483, 'Contact Us', 'Thanks!', 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btformanswers`
--

DROP TABLE IF EXISTS `btformanswers`;
CREATE TABLE IF NOT EXISTS `btformanswers` (
  `aID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) DEFAULT NULL,
  `answerLong` text,
  PRIMARY KEY (`aID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btformanswerset`
--

DROP TABLE IF EXISTS `btformanswerset`;
CREATE TABLE IF NOT EXISTS `btformanswerset` (
  `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`asID`),
  KEY `questionSetId` (`questionSetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btformquestions`
--

DROP TABLE IF EXISTS `btformquestions`;
CREATE TABLE IF NOT EXISTS `btformquestions` (
  `qID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) DEFAULT NULL,
  `inputType` varchar(255) DEFAULT NULL,
  `options` text,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0',
  PRIMARY KEY (`qID`),
  KEY `questionSetId` (`questionSetId`),
  KEY `msqID` (`msqID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `btformquestions`
--

INSERT INTO `btformquestions` (`qID`, `msqID`, `bID`, `questionSetId`, `question`, `inputType`, `options`, `position`, `width`, `height`, `required`) VALUES
(5, 4, 34, 1371898483, 'Name', 'field', '', 0, 50, 3, 1),
(6, 5, 34, 1371898483, 'Email:', 'email', '', 0, 50, 3, 1),
(7, 6, 34, 1371898483, 'What are you contacting us about?', 'radios', 'Question%%Comment%%Urgent Issue%%To Say Hello%%Other', 0, 50, 3, 1),
(8, 7, 34, 1371898483, 'Message', 'text', '', 0, 50, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btgooglemap`
--

DROP TABLE IF EXISTS `btgooglemap`;
CREATE TABLE IF NOT EXISTS `btgooglemap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` int(8) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btguestbook`
--

DROP TABLE IF EXISTS `btguestbook`;
CREATE TABLE IF NOT EXISTS `btguestbook` (
  `bID` int(10) unsigned NOT NULL,
  `requireApproval` int(11) DEFAULT '0',
  `title` varchar(100) DEFAULT 'Comments',
  `dateFormat` varchar(100) DEFAULT NULL,
  `displayGuestBookForm` int(11) DEFAULT '1',
  `displayCaptcha` int(11) DEFAULT '1',
  `authenticationRequired` int(11) DEFAULT '0',
  `notifyEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btguestbook`
--

INSERT INTO `btguestbook` (`bID`, `requireApproval`, `title`, `dateFormat`, `displayGuestBookForm`, `displayCaptcha`, `authenticationRequired`, `notifyEmail`) VALUES
(31, 0, 'Tell us what you think', 'M jS, Y', 1, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `btguestbookentries`
--

DROP TABLE IF EXISTS `btguestbookentries`;
CREATE TABLE IF NOT EXISTS `btguestbookentries` (
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT '1',
  `entryID` int(11) NOT NULL AUTO_INCREMENT,
  `uID` int(11) DEFAULT '0',
  `commentText` longtext,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `entryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approved` int(11) DEFAULT '1',
  PRIMARY KEY (`entryID`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btnavigation`
--

DROP TABLE IF EXISTS `btnavigation`;
CREATE TABLE IF NOT EXISTS `btnavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) DEFAULT 'alpha_asc',
  `displayPages` varchar(255) DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) DEFAULT 'none',
  `displaySubPageLevels` varchar(255) DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btnavigation`
--

INSERT INTO `btnavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
(20, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(22, 'display_asc', 'second_level', 0, 0, 'all', 'all', 0, 0),
(36, 'display_asc', 'top', 0, 0, 'all', 'all', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btnextprevious`
--

DROP TABLE IF EXISTS `btnextprevious`;
CREATE TABLE IF NOT EXISTS `btnextprevious` (
  `bID` int(10) unsigned NOT NULL,
  `linkStyle` varchar(32) DEFAULT NULL,
  `nextLabel` varchar(128) DEFAULT NULL,
  `previousLabel` varchar(128) DEFAULT NULL,
  `parentLabel` varchar(128) DEFAULT NULL,
  `showArrows` int(11) DEFAULT '1',
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) DEFAULT 'display_asc',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btpagelist`
--

DROP TABLE IF EXISTS `btpagelist`;
CREATE TABLE IF NOT EXISTS `btpagelist` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `paginate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayAliases` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ctID` smallint(5) unsigned DEFAULT NULL,
  `rss` int(11) DEFAULT '0',
  `rssTitle` varchar(255) DEFAULT NULL,
  `rssDescription` longtext,
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` int(11) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btpagelist`
--

INSERT INTO `btpagelist` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `includeAllDescendents`, `paginate`, `displayAliases`, `ctID`, `rss`, `rssTitle`, `rssDescription`, `truncateSummaries`, `displayFeaturedOnly`, `truncateChars`) VALUES
(38, 12, 'chrono_desc', 129, 0, 0, 1, 0, 4, 0, '', '', 1, 0, 128),
(48, 0, 'display_asc', 0, 0, 0, 0, 1, 9, 0, '', '', 0, 0, 0),
(49, 0, 'display_asc', 136, 1, 1, 0, 0, 9, 0, '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btrssdisplay`
--

DROP TABLE IF EXISTS `btrssdisplay`;
CREATE TABLE IF NOT EXISTS `btrssdisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `dateFormat` varchar(100) DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btsearch`
--

DROP TABLE IF EXISTS `btsearch`;
CREATE TABLE IF NOT EXISTS `btsearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `buttonText` varchar(128) DEFAULT NULL,
  `baseSearchPath` varchar(255) DEFAULT NULL,
  `postTo_cID` varchar(255) DEFAULT NULL,
  `resultsURL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `btsearch`
--

INSERT INTO `btsearch` (`bID`, `title`, `buttonText`, `baseSearchPath`, `postTo_cID`, `resultsURL`) VALUES
(37, 'Search This Site', 'Search', '', '', ''),
(45, 'Search Blog', 'Search', '/blog', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `btslideshow`
--

DROP TABLE IF EXISTS `btslideshow`;
CREATE TABLE IF NOT EXISTS `btslideshow` (
  `bID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned DEFAULT NULL,
  `playback` varchar(50) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btslideshowimg`
--

DROP TABLE IF EXISTS `btslideshowimg`;
CREATE TABLE IF NOT EXISTS `btslideshowimg` (
  `slideshowImgId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned DEFAULT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `fadeDuration` int(10) unsigned DEFAULT NULL,
  `groupSet` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned DEFAULT NULL,
  `imgHeight` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`slideshowImgId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btsurvey`
--

DROP TABLE IF EXISTS `btsurvey`;
CREATE TABLE IF NOT EXISTS `btsurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btsurveyoptions`
--

DROP TABLE IF EXISTS `btsurveyoptions`;
CREATE TABLE IF NOT EXISTS `btsurveyoptions` (
  `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0',
  PRIMARY KEY (`optionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btsurveyresults`
--

DROP TABLE IF EXISTS `btsurveyresults`;
CREATE TABLE IF NOT EXISTS `btsurveyresults` (
  `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`resultID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bttags`
--

DROP TABLE IF EXISTS `bttags`;
CREATE TABLE IF NOT EXISTS `bttags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bttags`
--

INSERT INTO `bttags` (`bID`, `title`, `targetCID`, `displayMode`, `cloudCount`) VALUES
(14, 'Tags', 133, 'page', 0),
(40, '', 133, 'cloud', 0),
(46, 'Tags', 133, 'cloud', 0);

-- --------------------------------------------------------

--
-- Table structure for table `btvideo`
--

DROP TABLE IF EXISTS `btvideo`;
CREATE TABLE IF NOT EXISTS `btvideo` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `btyoutube`
--

DROP TABLE IF EXISTS `btyoutube`;
CREATE TABLE IF NOT EXISTS `btyoutube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vPlayer` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `collectionattributevalues`
--

DROP TABLE IF EXISTS `collectionattributevalues`;
CREATE TABLE IF NOT EXISTS `collectionattributevalues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionattributevalues`
--

INSERT INTO `collectionattributevalues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(3, 1, 3, 1),
(3, 1, 4, 2),
(4, 1, 3, 3),
(4, 1, 4, 4),
(5, 1, 3, 5),
(5, 1, 4, 6),
(6, 1, 3, 7),
(7, 1, 3, 8),
(7, 1, 4, 9),
(8, 1, 3, 10),
(8, 1, 4, 11),
(9, 1, 3, 12),
(9, 1, 4, 13),
(11, 1, 3, 14),
(11, 1, 4, 15),
(12, 1, 3, 16),
(12, 1, 4, 17),
(13, 1, 3, 18),
(13, 1, 4, 19),
(14, 1, 3, 21),
(14, 1, 4, 22),
(14, 1, 5, 20),
(15, 1, 3, 23),
(16, 1, 3, 24),
(16, 1, 4, 25),
(17, 1, 3, 26),
(17, 1, 4, 27),
(18, 1, 3, 28),
(18, 1, 4, 29),
(19, 1, 3, 30),
(19, 1, 4, 32),
(19, 1, 5, 31),
(20, 1, 3, 33),
(20, 1, 4, 35),
(20, 1, 5, 34),
(21, 1, 3, 36),
(21, 1, 4, 37),
(22, 1, 3, 38),
(23, 1, 3, 39),
(23, 1, 4, 40),
(24, 1, 3, 41),
(24, 1, 4, 42),
(25, 1, 3, 43),
(25, 1, 4, 44),
(26, 1, 3, 45),
(26, 1, 4, 46),
(28, 1, 3, 47),
(28, 1, 4, 48),
(29, 1, 3, 49),
(30, 1, 3, 50),
(31, 1, 3, 51),
(32, 1, 3, 52),
(32, 1, 4, 53),
(34, 1, 3, 54),
(34, 1, 4, 55),
(35, 1, 3, 56),
(35, 1, 4, 57),
(36, 1, 3, 58),
(37, 1, 4, 59),
(38, 1, 4, 60),
(40, 1, 3, 61),
(40, 1, 4, 62),
(41, 1, 4, 63),
(42, 1, 5, 64),
(42, 1, 8, 65),
(43, 1, 3, 66),
(43, 1, 4, 67),
(44, 1, 5, 68),
(45, 1, 5, 69),
(46, 1, 3, 70),
(47, 1, 3, 71),
(48, 1, 3, 72),
(49, 1, 3, 73),
(50, 1, 3, 74),
(51, 1, 5, 75),
(53, 1, 3, 76),
(54, 1, 3, 77),
(55, 1, 3, 78),
(56, 1, 3, 79),
(57, 1, 3, 80),
(58, 1, 3, 81),
(60, 1, 3, 82),
(61, 1, 3, 83),
(62, 1, 3, 84),
(63, 1, 3, 85),
(64, 1, 3, 86),
(65, 1, 3, 87),
(67, 1, 3, 88),
(68, 1, 3, 89),
(69, 1, 3, 90),
(71, 1, 3, 91),
(72, 1, 3, 92),
(73, 1, 3, 93),
(74, 1, 3, 94),
(77, 1, 3, 95),
(78, 1, 3, 96),
(79, 1, 3, 97),
(80, 1, 3, 98),
(82, 1, 3, 99),
(83, 1, 3, 100),
(84, 1, 3, 101),
(85, 1, 3, 102),
(86, 1, 3, 103),
(87, 1, 3, 104),
(88, 1, 3, 105),
(89, 1, 3, 106),
(90, 1, 3, 107),
(91, 1, 8, 108),
(92, 1, 3, 109),
(93, 1, 3, 110),
(94, 1, 3, 111),
(95, 1, 3, 112),
(96, 1, 3, 113),
(97, 1, 3, 114),
(99, 1, 3, 115),
(100, 1, 3, 116),
(105, 1, 5, 118),
(105, 1, 8, 119),
(106, 1, 5, 117),
(129, 1, 14, 136),
(133, 1, 5, 138),
(133, 1, 6, 139),
(133, 1, 8, 140),
(133, 1, 14, 141),
(134, 1, 14, 137),
(138, 2, 1, 142),
(138, 2, 2, 143),
(138, 2, 15, 144),
(138, 2, 16, 145),
(138, 3, 1, 142),
(138, 3, 2, 143),
(138, 3, 15, 144),
(138, 3, 16, 145),
(138, 4, 1, 172),
(138, 4, 2, 173),
(138, 4, 15, 174),
(138, 4, 16, 175),
(138, 5, 1, 180),
(138, 5, 2, 181),
(138, 5, 15, 182),
(138, 5, 16, 183),
(138, 6, 1, 196),
(138, 6, 2, 197),
(138, 6, 15, 198),
(138, 6, 16, 199),
(139, 2, 1, 146),
(139, 2, 2, 147),
(139, 2, 15, 148),
(139, 2, 16, 149),
(139, 3, 1, 176),
(139, 3, 2, 177),
(139, 3, 15, 178),
(139, 3, 16, 179),
(139, 4, 1, 184),
(139, 4, 2, 185),
(139, 4, 15, 186),
(139, 4, 16, 187),
(139, 5, 1, 200),
(139, 5, 2, 201),
(139, 5, 15, 202),
(139, 5, 16, 203),
(140, 1, 1, 188),
(140, 1, 2, 189),
(140, 1, 15, 190),
(140, 1, 16, 191),
(141, 1, 1, 192),
(141, 1, 2, 193),
(141, 1, 15, 194),
(141, 1, 16, 195),
(141, 2, 1, 208),
(141, 2, 2, 209),
(141, 2, 15, 210),
(141, 2, 16, 211),
(142, 1, 1, 204),
(142, 1, 2, 205),
(142, 1, 15, 206),
(142, 1, 16, 207),
(143, 1, 1, 212),
(143, 1, 2, 213),
(143, 1, 15, 214),
(143, 1, 16, 215),
(144, 1, 1, 216),
(144, 1, 2, 217),
(144, 1, 15, 218),
(144, 1, 16, 219),
(145, 1, 1, 220),
(145, 1, 2, 221),
(145, 1, 15, 222),
(145, 1, 16, 223),
(146, 1, 1, 224),
(146, 1, 2, 225),
(146, 1, 15, 226),
(146, 1, 16, 227),
(147, 1, 1, 228),
(147, 1, 2, 229),
(147, 1, 15, 230),
(147, 1, 16, 231),
(148, 1, 1, 232),
(148, 1, 2, 233),
(148, 1, 15, 234),
(148, 1, 16, 235);

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
CREATE TABLE IF NOT EXISTS `collections` (
  `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cID`),
  KEY `cDateModified` (`cDateModified`),
  KEY `cDateAdded` (`cDateAdded`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2013-06-22 10:54:13', '2013-06-22 10:54:40', 'home'),
(2, '2013-06-22 10:54:16', '2013-06-22 10:54:16', 'dashboard'),
(3, '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'composer'),
(4, '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'write'),
(5, '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'drafts'),
(6, '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'sitemap'),
(7, '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'full'),
(8, '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'explore'),
(9, '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'search'),
(10, '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'files'),
(11, '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'search'),
(12, '2013-06-22 10:54:17', '2013-06-22 10:54:18', 'attributes'),
(13, '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'sets'),
(14, '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'add_set'),
(15, '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'users'),
(16, '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'search'),
(17, '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'groups'),
(18, '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'attributes'),
(19, '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'add'),
(20, '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'add_group'),
(21, '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'group_sets'),
(22, '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'reports'),
(23, '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'statistics'),
(24, '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'forms'),
(25, '2013-06-22 10:54:19', '2013-06-22 10:54:20', 'surveys'),
(26, '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'logs'),
(27, '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'pages'),
(28, '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'themes'),
(29, '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'add'),
(30, '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'inspect'),
(31, '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'customize'),
(32, '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'types'),
(33, '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'add'),
(34, '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'attributes'),
(35, '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'single'),
(36, '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'workflow'),
(37, '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'list'),
(38, '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'me'),
(39, '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'blocks'),
(40, '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'stacks'),
(41, '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'permissions'),
(42, '2013-06-22 10:54:21', '2013-06-22 10:54:22', 'list'),
(43, '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'types'),
(44, '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'extend'),
(45, '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'news'),
(46, '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'install'),
(47, '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'update'),
(48, '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'connect'),
(49, '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'themes'),
(50, '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'add-ons'),
(51, '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'system'),
(52, '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'basics'),
(53, '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'site_name'),
(54, '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'icons'),
(55, '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'editor'),
(56, '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'multilingual'),
(57, '2013-06-22 10:54:23', '2013-06-22 10:54:24', 'timezone'),
(58, '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'interface'),
(59, '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'seo'),
(60, '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'urls'),
(61, '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'bulk_seo_tool'),
(62, '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'tracking_codes'),
(63, '2013-06-22 10:54:24', '2013-06-22 10:54:25', 'excluded'),
(64, '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'statistics'),
(65, '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'search_index'),
(66, '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'optimization'),
(67, '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'cache'),
(68, '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'clear_cache'),
(69, '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'jobs'),
(70, '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'permissions'),
(71, '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'site'),
(72, '2013-06-22 10:54:25', '2013-06-22 10:54:26', 'files'),
(73, '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'file_types'),
(74, '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'tasks'),
(75, '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'users'),
(76, '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'advanced'),
(77, '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'ip_blacklist'),
(78, '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'captcha'),
(79, '2013-06-22 10:54:26', '2013-06-22 10:54:27', 'antispam'),
(80, '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'maintenance_mode'),
(81, '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'registration'),
(82, '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'postlogin'),
(83, '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'profiles'),
(84, '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'public_registration'),
(85, '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'mail'),
(86, '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'method'),
(87, '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'importers'),
(88, '2013-06-22 10:54:27', '2013-06-22 10:54:28', 'attributes'),
(89, '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'sets'),
(90, '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'types'),
(91, '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'environment'),
(92, '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'info'),
(93, '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'debug'),
(94, '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'logging'),
(95, '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'file_storage_locations'),
(96, '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'proxy'),
(97, '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'backup_restore'),
(98, '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'backup'),
(99, '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'update'),
(100, '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'database'),
(101, '2013-06-22 10:54:29', '2013-06-22 10:54:30', 'composer'),
(102, '2013-06-22 10:54:30', '2013-06-22 10:54:30', NULL),
(103, '2013-06-22 10:54:30', '2013-06-22 10:54:30', NULL),
(104, '2013-06-22 10:54:30', '2013-06-22 10:54:30', NULL),
(105, '2013-06-22 10:54:30', '2013-06-22 10:54:30', 'home'),
(106, '2013-06-22 10:54:30', '2013-06-22 10:54:30', 'welcome'),
(107, '2013-06-22 10:54:36', '2013-06-22 10:54:36', '!drafts'),
(108, '2013-06-22 10:54:36', '2013-06-22 10:54:36', '!trash'),
(109, '2013-06-22 10:54:36', '2013-06-22 10:54:36', '!stacks'),
(110, '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'login'),
(111, '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'register'),
(112, '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'profile'),
(113, '2013-06-22 10:54:36', '2013-06-22 10:54:37', 'edit'),
(114, '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'avatar'),
(115, '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'messages'),
(116, '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'friends'),
(117, '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'page_not_found'),
(118, '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'page_forbidden'),
(119, '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'download_file'),
(120, '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'members'),
(121, '2013-06-22 10:54:39', '2013-06-22 10:54:39', 'header-nav'),
(122, '2013-06-22 10:54:39', '2013-06-22 10:54:39', 'side-nav'),
(123, '2013-06-22 10:54:39', '2013-06-22 10:54:39', 'site-name'),
(124, '2013-06-22 10:54:40', '2013-06-22 10:54:40', NULL),
(125, '2013-06-22 10:54:40', '2013-06-22 10:54:40', NULL),
(126, '2013-06-22 10:54:40', '2013-06-22 10:54:40', NULL),
(127, '2013-06-22 10:54:40', '2013-06-22 10:54:40', NULL),
(128, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'about'),
(129, '2013-06-22 10:54:40', '2013-06-22 12:37:03', 'blog'),
(130, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'search'),
(131, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'contact-us'),
(132, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'guestbook'),
(133, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'blog-archives'),
(134, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'hello-world'),
(135, '2013-06-22 11:19:06', '2013-06-22 11:19:06', NULL),
(136, '2013-06-22 11:19:46', '2013-06-22 13:09:54', 'work'),
(137, '2013-06-22 11:20:56', '2013-06-22 11:20:56', NULL),
(138, '2013-06-22 11:21:31', '2013-06-22 12:56:01', 'work-piece-1'),
(139, '2013-06-22 11:22:16', '2013-06-22 12:56:06', 'work-piece-2'),
(140, '2013-06-22 12:54:49', '2013-06-22 12:54:49', 'gloopy-gloop'),
(141, '2013-06-22 12:55:52', '2013-06-22 12:57:18', 'my-face'),
(142, '2013-06-22 12:57:00', '2013-06-22 12:57:00', 'open-university'),
(143, '2013-06-22 12:58:08', '2013-06-22 12:58:08', 'kerve-creative'),
(144, '2013-06-22 12:59:08', '2013-06-22 12:59:09', 'martin-parr'),
(145, '2013-06-22 12:59:44', '2013-06-22 12:59:44', 'tree-chaving-challenge'),
(146, '2013-06-22 13:00:28', '2013-06-22 13:00:28', 'wildscreen'),
(147, '2013-06-22 13:01:19', '2013-06-22 13:01:19', 'capture-museum'),
(148, '2013-06-22 13:02:08', '2013-06-22 13:02:08', 'zoom');

-- --------------------------------------------------------

--
-- Table structure for table `collectionsearchindexattributes`
--

DROP TABLE IF EXISTS `collectionsearchindexattributes`;
CREATE TABLE IF NOT EXISTS `collectionsearchindexattributes` (
  `cID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` text,
  `ak_meta_description` text,
  `ak_meta_keywords` text,
  `ak_icon_dashboard` text,
  `ak_exclude_nav` tinyint(4) DEFAULT '0',
  `ak_exclude_page_list` tinyint(4) DEFAULT '0',
  `ak_header_extra_content` text,
  `ak_exclude_search_index` tinyint(4) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(4) DEFAULT '0',
  `ak_tags` text,
  `ak_page_image` int(11) DEFAULT '0',
  `ak_page_subtitle` text,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionsearchindexattributes`
--

INSERT INTO `collectionsearchindexattributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_tags`, `ak_page_image`, `ak_page_subtitle`) VALUES
(1, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(3, NULL, NULL, 'blog, blogging', 'icon-book', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(4, NULL, NULL, 'new blog, write blog, blogging', 'icon-pencil', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(5, NULL, NULL, 'blog drafts,composer', 'icon-book', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(6, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(7, NULL, NULL, 'pages, add page, delete page, copy, move, alias', 'icon-home', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(8, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', 'icon-road', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(9, NULL, NULL, 'find page, search page, search, find, pages, sitemap', 'icon-search', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(11, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 'icon-picture', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(12, NULL, NULL, 'file, file attributes, title, attribute, description, rename', 'icon-cog', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(13, NULL, NULL, 'files, category, categories', 'icon-list-alt', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(14, NULL, NULL, 'new file set', 'icon-plus-sign', 1, 0, NULL, 0, 0, NULL, 0, NULL),
(15, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(16, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', 'icon-user', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(17, NULL, NULL, 'user, group, people, permissions, access, expire', 'icon-globe', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(18, NULL, NULL, 'user attributes, user data, gather data, registration data', 'icon-cog', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(19, NULL, NULL, 'new user, create', 'icon-plus-sign', 1, 0, NULL, 0, 0, NULL, 0, NULL),
(20, NULL, NULL, 'new user group, new group, group, create', 'icon-plus', 1, 0, NULL, 0, 0, NULL, 0, NULL),
(21, NULL, NULL, 'group set', 'icon-list', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(22, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(23, NULL, NULL, 'hits, pageviews, visitors, activity', 'icon-signal', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(24, NULL, NULL, 'forms, questions, response, data', 'icon-briefcase', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(25, NULL, NULL, 'questions, quiz, response', 'icon-tasks', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', 'icon-time', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', 'icon-font', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(29, NULL, NULL, 'theme', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(30, NULL, NULL, 'page types', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(31, NULL, NULL, 'custom theme, change theme, custom css, css', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(32, NULL, NULL, 'page type defaults, global block, global area, starter, template', 'icon-file', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(34, NULL, NULL, 'page attributes, custom', 'icon-cog', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(35, NULL, NULL, 'single, page, custom, application', 'icon-wrench', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(36, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(37, NULL, NULL, NULL, 'icon-list', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(38, NULL, NULL, NULL, 'icon-user', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(40, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 'icon-th', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(41, NULL, NULL, NULL, 'icon-lock', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(42, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, NULL, 0, NULL),
(43, NULL, NULL, 'block, refresh, custom', 'icon-wrench', 0, 0, NULL, 0, 0, NULL, 0, NULL),
(44, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL, 0, NULL),
(45, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL, 0, NULL),
(46, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(47, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(48, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(49, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(50, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(51, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL, 0, NULL),
(53, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(54, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(55, NULL, NULL, 'tinymce, content block, fonts, editor, tinymce, content, overlay', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(56, NULL, NULL, 'translate, translation, internationalization, multilingual, translate', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(57, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(58, NULL, NULL, 'interface, quick nav, dashboard background, background image', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(60, NULL, NULL, 'vanity, pretty url, seo, pageview, view', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(61, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(62, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(63, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(64, NULL, NULL, 'turn off statistics, tracking, statistics, pageviews, hits', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(65, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(67, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(68, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(69, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(71, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(72, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(73, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(74, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(77, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(78, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(79, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(80, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(82, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(83, NULL, NULL, 'member profile, member page,community, forums, social, avatar', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(84, NULL, NULL, 'signup, new user, community', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(85, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(86, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(87, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(88, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(89, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(90, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(91, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 0, NULL, 0, NULL),
(92, NULL, NULL, 'overrides, system info, debug, support,help', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(93, NULL, NULL, 'errors,exceptions, develop, support, help', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(94, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, errors, log', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(95, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(96, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(97, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(99, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(100, NULL, NULL, 'export, database, xml, starting, points, schema, refresh, custom, tables', NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(105, NULL, NULL, NULL, NULL, 1, 0, NULL, 1, 0, NULL, 0, NULL),
(106, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, 0, NULL, 0, NULL),
(128, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(129, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, '', 0, NULL),
(130, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(131, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(132, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(133, NULL, NULL, NULL, NULL, 1, 1, NULL, 1, 0, '', 0, NULL),
(134, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, '\ncomposer\nhello\nworld\nfirst post\n', 0, NULL),
(136, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, NULL, 0, NULL),
(138, 'Meta title', 'Meta description', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 9, 'Beakeriser'),
(139, '', '', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 10, 'KS3 Geography'),
(140, 'Gloopy Gloop', 'Vector drawn meatballs in canvas', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 12, ''),
(141, 'My Face', 'Home made 3d face scanner made before Kinnect was cool', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 15, ''),
(142, 'Open University', 'Discover your design alter-ego', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 16, 'The history of design'),
(143, 'Kerve Creative', '3d forced perspective cloud thing', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 13, ''),
(144, 'Martin Parr: touchscreen interactive', 'In gallery voting touchscreen thing', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 14, 'touchscreen interactive'),
(145, 'Tree Chaving Challenge', 'Wishing you a chavtastic christmas', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 17, ''),
(146, 'WildScreen: Team Wild', 'Science to the rescue with a lot of jumping', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 18, 'Team Wild'),
(147, 'Capture the Museum', 'Museum based team fun and shenanigans', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 11, ''),
(148, 'ZOOM', 'Animal poses unlock archive', NULL, NULL, 0, 0, NULL, 0, 0, NULL, 19, '');

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionarealayouts`
--

DROP TABLE IF EXISTS `collectionversionarealayouts`;
CREATE TABLE IF NOT EXISTS `collectionversionarealayouts` (
  `cvalID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cvID` int(10) unsigned DEFAULT '0',
  `arHandle` varchar(255) DEFAULT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `position` int(10) DEFAULT '1000',
  `areaNameNumber` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cvalID`),
  KEY `areaLayoutsIndex` (`cID`,`cvID`,`arHandle`),
  KEY `cID` (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionareastyles`
--

DROP TABLE IF EXISTS `collectionversionareastyles`;
CREATE TABLE IF NOT EXISTS `collectionversionareastyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblocks`
--

DROP TABLE IF EXISTS `collectionversionblocks`;
CREATE TABLE IF NOT EXISTS `collectionversionblocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  KEY `cbIncludeAll` (`cbIncludeAll`),
  KEY `isOriginal` (`isOriginal`),
  KEY `bID` (`bID`),
  KEY `cIDcvID` (`cID`,`cvID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversionblocks`
--

INSERT INTO `collectionversionblocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`) VALUES
(1, 1, 24, 'Sidebar', 0, 1, 0, 0),
(1, 1, 25, 'Sidebar', 1, 1, 0, 0),
(1, 1, 26, 'Main', 0, 1, 0, 0),
(1, 1, 27, 'Header Image', 0, 1, 0, 0),
(105, 1, 6, 'Primary', 0, 1, 0, 0),
(105, 1, 7, 'Primary', 1, 1, 0, 0),
(105, 1, 8, 'Secondary 1', 0, 1, 0, 0),
(105, 1, 9, 'Secondary 2', 0, 1, 0, 0),
(105, 1, 10, 'Secondary 3', 0, 1, 0, 0),
(105, 1, 11, 'Secondary 4', 0, 1, 0, 0),
(105, 1, 12, 'Secondary 5', 0, 1, 0, 0),
(106, 1, 1, 'Header', 0, 1, 0, 0),
(106, 1, 2, 'Column 1', 0, 1, 0, 0),
(106, 1, 3, 'Column 2', 0, 1, 0, 0),
(106, 1, 4, 'Column 3', 0, 1, 0, 0),
(106, 1, 5, 'Column 4', 0, 1, 0, 0),
(121, 1, 20, 'Main', 0, 1, 0, 0),
(122, 1, 21, 'Main', 0, 1, 0, 0),
(122, 1, 22, 'Main', 1, 1, 0, 0),
(123, 1, 23, 'Main', 0, 1, 0, 0),
(124, 1, 13, 'Main', 0, 1, 0, 0),
(124, 1, 14, 'Sidebar', 0, 1, 0, 0),
(124, 1, 15, 'Thumbnail Image', 0, 1, 0, 0),
(124, 1, 16, 'Header Image', 0, 1, 0, 0),
(125, 1, 17, 'Header Image', 0, 1, 0, 0),
(126, 1, 18, 'Header Image', 0, 1, 0, 0),
(127, 1, 19, 'Header Image', 0, 1, 0, 0),
(128, 1, 18, 'Header Image', 0, 0, 0, 0),
(128, 1, 28, 'Sidebar', 0, 1, 0, 0),
(128, 1, 29, 'Main', 0, 1, 0, 0),
(129, 1, 19, 'Header Image', 0, 0, 0, 0),
(129, 1, 38, 'Main', 0, 1, 0, 0),
(129, 1, 39, 'Sidebar', 0, 1, 0, 0),
(129, 1, 40, 'Sidebar', 1, 1, 0, 0),
(129, 1, 41, 'Sidebar', 2, 1, 0, 0),
(130, 1, 19, 'Header Image', 0, 0, 0, 0),
(130, 1, 35, 'Sidebar', 0, 1, 0, 0),
(130, 1, 36, 'Sidebar', 1, 1, 0, 0),
(130, 1, 37, 'Main', 0, 1, 0, 0),
(131, 1, 18, 'Header Image', 0, 0, 0, 0),
(131, 1, 32, 'Sidebar', 0, 1, 0, 0),
(131, 1, 33, 'Main', 0, 1, 0, 0),
(131, 1, 34, 'Main', 1, 1, 0, 0),
(132, 1, 19, 'Header Image', 0, 0, 0, 0),
(132, 1, 30, 'Sidebar', 0, 1, 0, 0),
(132, 1, 31, 'Main', 0, 1, 0, 1),
(133, 1, 19, 'Header Image', 0, 0, 0, 0),
(133, 1, 45, 'Main', 0, 1, 0, 0),
(133, 1, 46, 'Sidebar', 0, 1, 0, 0),
(133, 1, 47, 'Sidebar', 1, 1, 0, 0),
(134, 1, 14, 'Sidebar', 0, 0, 0, 0),
(134, 1, 42, 'Header Image', 0, 1, 0, 0),
(134, 1, 43, 'Main', 0, 1, 0, 0),
(134, 1, 44, 'Thumbnail Image', 0, 1, 0, 0),
(136, 2, 48, 'Main', 0, 1, 0, 0),
(136, 3, 49, 'Main', 0, 1, 0, 0),
(136, 4, 49, 'Main', 0, 0, 0, 0),
(136, 5, 49, 'Main', 0, 0, 0, 0),
(138, 3, 50, 'Header Image', 0, 1, 0, 0),
(138, 4, 50, 'Header Image', 0, 0, 0, 0),
(138, 5, 50, 'Header Image', 0, 0, 0, 0),
(138, 6, 50, 'Header Image', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblocksoutputcache`
--

DROP TABLE IF EXISTS `collectionversionblocksoutputcache`;
CREATE TABLE IF NOT EXISTS `collectionversionblocksoutputcache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `btCachedBlockOutput` longtext,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversionblocksoutputcache`
--

INSERT INTO `collectionversionblocksoutputcache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529664893),
(1, 1, 24, 'Sidebar', '<h3>Sidebar</h3>', 1529664893),
(1, 1, 25, 'Sidebar', '<p>Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;<a title="Move blocks in concrete5" href="http://www.concrete5.org/documentation/general-topics/blocks-and-areas" target="_blank">drag and drop blocks</a>&nbsp;like this around your layout.</p>', 1529664893),
(1, 1, 26, 'Main', '<h2>Welcome to concrete5!</h2>\n                                        <p>Content Management is easy with concrete5''s in-context editing. Just <a href="/index.php/login/">login</a> and you can change things as you browse your site.</p>\n                                        <p>You can watch videos and learn how to:</p>\n                                        <ul>\n                                        <li><a title="In-context editing CMS" href="http://www.concrete5.org/documentation/general-topics/in-context-editing/" target="_blank">Edit</a>&nbsp;this page.</li>\n                                        <li>Add a <a title="Add a page in concrete5" href="http://www.concrete5.org/documentation/general-topics/add-a-page/" target="_blank">new page</a>.</li>\n                                        <li>Add some basic functionality, like&nbsp;<a title="Add a simple form in concrete5" href="http://www.concrete5.org/documentation/general-topics/add_a_form" target="_blank">a Form</a>.</li>\n                                        <li><a title="add-on marketplace for concrete5" href="http://www.concrete5.org/marketplace/how_to_install_add_ons_and_themes_/" target="_blank">Finding &amp; adding</a>&nbsp;more functionality and themes.</li>\n                                        </ul>\n                                        <p>We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;<a href="/index.php/dashboard/sitemap/">Sitemap</a> and quickly delete the parts you don''t want.</p>', 1529664893),
(1, 1, 27, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/files/7413/7189/8478/england_village.jpg" width="960" height="212" />', 1529664893),
(106, 1, 1, 'Header', '	<div id="newsflow-header-first-run"><h1>Welcome to concrete5.</h1>\n						<h2>It''s easy to edit content and add pages using in-context editing.</h2></div>\n						', 1529664894),
(106, 1, 2, 'Column 1', '<div class="newsflow-column-first-run">\n							<h3>Building Your Own Site</h3>\n							<p>Editing with concrete5 is a breeze. Just point and click to make changes.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/editors'')" class="btn primary">Editor''s Guide</a></p>\n							</div>', 1529664894),
(106, 1, 3, 'Column 2', '<div class="newsflow-column-first-run">\n							<h3>Developing Applications</h3>\n							<p>If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture.</p>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/developers'')" class="btn primary">Developer''s Guide</a></p>\n							</div>', 1529664894),
(106, 1, 4, 'Column 3', '<div class="newsflow-column-first-run">\n							<h3>Designing Websites</h3>\n							<p>Good with CSS and HTML? You can easily theme anything with concrete5.</p>\n							<br/>\n							<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/designers'')" class="btn primary">Designer''s Guide</a></p>\n							</div>', 1529664894),
(106, 1, 5, 'Column 4', '\n						<div class="newsflow-column-first-run">\n						<h3>Business Background</h3>\n						<p>Worried about license structures, white-labeling or why concrete5 is a good choice for your agency?</p>\n						<p><a href="javascript:void(0)" onclick="ccm_getNewsflowByPath(''/welcome/executives'')" class="btn primary">Executive''s Guide</a></p>\n						</div>', 1529664894),
(128, 1, 18, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/files/3413/7189/8478/europe_valencia_hemispheric.jpg" width="960" height="212" />', 1529665996),
(128, 1, 21, 'Main', '<h3>Links:</h3>', 1529665996),
(128, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529665996),
(128, 1, 29, 'Main', '<h2>Learn More</h2>\n																<p>Visit&nbsp;<a title="concrete5 Content Management System" href="http://www.concrete5.org/" target="_blank">concrete5.org</a>&nbsp;to learn more from the&nbsp;<a title="open source content management system" href="http://www.concrete5.org/community" target="_blank">community</a>&nbsp;and the&nbsp;<a href="http://www.concrete5.org/documentation/general-topics/" target="_blank">documentation</a>. You can also browse our&nbsp;<a title="concrete5 marketplace" href="http://www.concrete5.org/marketplace/" target="_blank">marketplace</a>&nbsp;for more&nbsp;<a title="Add-ons for concrete5" href="http://www.concrete5.org/marketplace/addons/" target="_blank">add-ons</a>&nbsp;and&nbsp;<a title="Themes for concrete5" href="http://www.concrete5.org/marketplace/themes/" target="_blank">themes</a>&nbsp;to quickly build the site you really need.&nbsp;</p>\n																<h3>&nbsp;</h3>\n																<h3>Getting Help</h3>\n																<p>You can get free help in the <a href="http://www.concrete5.org/community/forums/" target="_blank">forums</a> and post for free to the&nbsp;<a href="http://www.concrete5.org/community/forums/jobs1/" target="_blank">jobs board</a>.&nbsp;</p>\n																<p>You can also pay the concrete5 team of developers to help with&nbsp;<a href="http://www.concrete5.org/services/support/" target="_blank">any problem</a>&nbsp;you run into. We offer <a href="http://www.concrete5.org/services/training/" target="_blank">training courses</a>&nbsp;and&nbsp;<a href="http://www.concrete5.org/services/hosting/" target="_blank">hosting packages</a>, just let us know <a href="http://www.concrete5.org/services/professional_services/" target="_blank">how we can help</a>.</p>', 1529665996),
(129, 1, 19, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/files/8213/7189/8478/europe_rotterdam_port.jpg" width="960" height="212" />', 1529665986),
(129, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529665986),
(129, 1, 39, 'Sidebar', '<h3>Tags</h3>', 1529665986),
(130, 1, 19, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/files/8213/7189/8478/europe_rotterdam_port.jpg" width="960" height="212" />', 1529665998),
(130, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529665998),
(130, 1, 35, 'Sidebar', '<h3>Site Map</h3>', 1529665998),
(133, 1, 19, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/files/8213/7189/8478/europe_rotterdam_port.jpg" width="960" height="212" />', 1529666013),
(133, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529666013),
(134, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529666106),
(134, 1, 42, 'Header Image', '<img border="0" class="ccm-image-block" alt="My concrete5 Blog" src="/files/3413/7189/8478/europe_england_stonehenge.jpg" width="960" height="212" />', 1529666107),
(134, 1, 43, 'Main', '<p>Here is some sample content! I''m writing it using composer!</p>', 1529666107),
(136, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529666541),
(136, 2, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529666592),
(136, 3, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529667653),
(136, 4, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529672878),
(136, 5, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529672988),
(137, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529667015),
(138, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529666630),
(138, 2, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529667503),
(138, 3, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529667689),
(138, 3, 50, 'Header Image', '<img border="0" class="ccm-image-block" alt="" src="/files/2213/7189/8479/northern_az_lake_powell_house_boats.jpg" width="960" height="212" />', 1529667678),
(139, 1, 23, 'Site Name', '<h1><a title="Home" \n                                	href="/"\n                                >CorinWilkins.co.uk</a></h1>', 1529666633);

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionblockstyles`
--

DROP TABLE IF EXISTS `collectionversionblockstyles`;
CREATE TABLE IF NOT EXISTS `collectionversionblockstyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversionblockstyles`
--

INSERT INTO `collectionversionblockstyles` (`cID`, `cvID`, `bID`, `arHandle`, `csrID`) VALUES
(128, 1, 18, 'Header Image', 0),
(129, 1, 19, 'Header Image', 0),
(130, 1, 19, 'Header Image', 0),
(131, 1, 18, 'Header Image', 0),
(132, 1, 19, 'Header Image', 0),
(133, 1, 19, 'Header Image', 0),
(134, 1, 14, 'Sidebar', 0),
(136, 3, 49, 'Main', 0),
(136, 4, 49, 'Main', 0),
(136, 5, 49, 'Main', 0),
(138, 4, 50, 'Header Image', 0),
(138, 5, 50, 'Header Image', 0),
(138, 6, 50, 'Header Image', 0);

-- --------------------------------------------------------

--
-- Table structure for table `collectionversionrelatededits`
--

DROP TABLE IF EXISTS `collectionversionrelatededits`;
CREATE TABLE IF NOT EXISTS `collectionversionrelatededits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `collectionversions`
--

DROP TABLE IF EXISTS `collectionversions`;
CREATE TABLE IF NOT EXISTS `collectionversions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text,
  `cvHandle` varchar(255) DEFAULT NULL,
  `cvDescription` text,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`cID`,`cvID`),
  KEY `cvIsApproved` (`cvIsApproved`),
  KEY `ctID` (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `collectionversions`
--

INSERT INTO `collectionversions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `ptID`, `ctID`, `cvActivateDatetime`) VALUES
(1, 1, 'Home', 'home', '', '2013-06-22 10:54:13', '2013-06-22 10:54:13', 'Initial Version', 1, 0, 1, NULL, 5, 7, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2013-06-22 10:54:16', '2013-06-22 10:54:16', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(3, 1, 'Composer', 'composer', 'Write for your site.', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(4, 1, 'Write', 'write', '', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(5, 1, 'Drafts', 'drafts', '', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(6, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(7, 1, 'Full Sitemap', 'full', '', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(8, 1, 'Flat View', 'explore', '', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(9, 1, 'Page Search', 'search', '', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(10, 1, 'Files', 'files', 'All documents and images.', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(11, 1, 'File Manager', 'search', '', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(12, 1, 'Attributes', 'attributes', '', '2013-06-22 10:54:17', '2013-06-22 10:54:17', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(13, 1, 'File Sets', 'sets', '', '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(14, 1, 'Add File Set', 'add_set', '', '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(15, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(16, 1, 'Search Users', 'search', '', '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(17, 1, 'User Groups', 'groups', '', '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(18, 1, 'Attributes', 'attributes', '', '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(19, 1, 'Add User', 'add', '', '2013-06-22 10:54:18', '2013-06-22 10:54:18', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(20, 1, 'Add Group', 'add_group', '', '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(21, 1, 'Group Sets', 'group_sets', '', '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(22, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(23, 1, 'Statistics', 'statistics', 'View your site activity.', '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2013-06-22 10:54:19', '2013-06-22 10:54:19', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(29, 1, 'Add', 'add', '', '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(30, 1, 'Inspect', 'inspect', '', '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(31, 1, 'Customize', 'customize', '', '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(32, 1, 'Page Types', 'types', 'What goes in your site.', '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(33, 1, 'Add Page Type', 'add', 'Add page types to your site.', '2013-06-22 10:54:20', '2013-06-22 10:54:20', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(34, 1, 'Attributes', 'attributes', '', '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(35, 1, 'Single Pages', 'single', '', '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(36, 1, 'Workflow', 'workflow', '', '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(37, 1, 'Workflow List', 'list', '', '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(38, 1, 'Waiting for Me', 'me', '', '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(39, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(40, 1, 'Stacks', 'stacks', 'Share content across your site.', '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(41, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(42, 1, 'Stack List', 'list', '', '2013-06-22 10:54:21', '2013-06-22 10:54:21', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(43, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(44, 1, 'Extend concrete5', 'extend', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(45, 1, 'Dashboard', 'news', '', '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(46, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(47, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(48, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2013-06-22 10:54:22', '2013-06-22 10:54:22', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(49, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(50, 1, 'Get More Add-Ons', 'add-ons', 'Download add-ons from concrete5.org.', '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(51, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(52, 1, 'Basics', 'basics', 'Basic information about your website.', '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(53, 1, 'Site Name', 'site_name', '', '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(54, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(55, 1, 'Rich Text Editor', 'editor', '', '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(56, 1, 'Languages', 'multilingual', '', '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(57, 1, 'Time Zone', 'timezone', '', '2013-06-22 10:54:23', '2013-06-22 10:54:23', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(58, 1, 'Interface Preferences', 'interface', '', '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(59, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs, statistics and tracking codes.', '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(60, 1, 'Pretty URLs', 'urls', '', '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(61, 1, 'Bulk SEO Updater', 'bulk_seo_tool', '', '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(62, 1, 'Tracking Codes', 'tracking_codes', '', '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(63, 1, 'Excluded URL Word List', 'excluded', '', '2013-06-22 10:54:24', '2013-06-22 10:54:24', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(64, 1, 'Statistics', 'statistics', '', '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(65, 1, 'Search Index', 'search_index', '', '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(66, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(67, 1, 'Cache & Speed Settings', 'cache', '', '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(68, 1, 'Clear Cache', 'clear_cache', '', '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(69, 1, 'Automated Jobs', 'jobs', '', '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(70, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(71, 1, 'Site Access', 'site', '', '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(72, 1, 'File Manager Permissions', 'files', '', '2013-06-22 10:54:25', '2013-06-22 10:54:25', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(73, 1, 'Allowed File Types', 'file_types', '', '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(74, 1, 'Task Permissions', 'tasks', '', '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(75, 1, 'User Permissions', 'users', '', '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(76, 1, 'Advanced Permissions', 'advanced', '', '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(77, 1, 'IP Blacklist', 'ip_blacklist', '', '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(78, 1, 'Captcha Setup', 'captcha', '', '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(79, 1, 'Spam Control', 'antispam', '', '2013-06-22 10:54:26', '2013-06-22 10:54:26', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(80, 1, 'Maintenance Mode', 'maintenance_mode', '', '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(81, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(82, 1, 'Login Destination', 'postlogin', '', '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(83, 1, 'Public Profiles', 'profiles', '', '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(84, 1, 'Public Registration', 'public_registration', '', '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(85, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(86, 1, 'SMTP Method', 'method', '', '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(87, 1, 'Email Importers', 'importers', '', '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(88, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2013-06-22 10:54:27', '2013-06-22 10:54:27', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(89, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(90, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(91, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(92, 1, 'Environment Information', 'info', '', '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(93, 1, 'Debug Settings', 'debug', '', '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(94, 1, 'Logging Settings', 'logging', '', '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(95, 1, 'File Storage Locations', 'file_storage_locations', '', '2013-06-22 10:54:28', '2013-06-22 10:54:28', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(96, 1, 'Proxy Server', 'proxy', '', '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(97, 1, 'Backup & Restore', 'backup_restore', 'Backup or restore your website.', '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(98, 1, 'Backup Database', 'backup', '', '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(99, 1, 'Update concrete5', 'update', '', '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(100, 1, 'Database XML', 'database', '', '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(101, 1, 'Composer', 'composer', '', '2013-06-22 10:54:29', '2013-06-22 10:54:29', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(102, 1, '', NULL, NULL, '2013-06-22 10:54:30', '2013-06-22 10:54:30', 'Initial Version', 1, 0, NULL, NULL, 0, 1, NULL),
(103, 1, '', NULL, NULL, '2013-06-22 10:54:30', '2013-06-22 10:54:30', 'Initial Version', 1, 0, NULL, NULL, 0, 2, NULL),
(104, 1, '', NULL, NULL, '2013-06-22 10:54:30', '2013-06-22 10:54:30', 'Initial Version', 1, 0, NULL, NULL, 0, 3, NULL),
(105, 1, 'Customize Dashboard Home', 'home', '', '2013-06-22 10:54:30', '2013-06-22 10:54:30', 'Initial Version', 1, 0, 1, NULL, 5, 2, NULL),
(106, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2013-06-22 10:54:30', '2013-06-22 10:54:30', 'Initial Version', 1, 0, 1, NULL, 5, 3, NULL),
(107, 1, 'Drafts', '!drafts', '', '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(108, 1, 'Trash', '!trash', '', '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(109, 1, 'Stacks', '!stacks', '', '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(110, 1, 'Login', 'login', '', '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(111, 1, 'Register', 'register', '', '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(112, 1, 'Profile', 'profile', '', '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(113, 1, 'Edit', 'edit', '', '2013-06-22 10:54:36', '2013-06-22 10:54:36', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(114, 1, 'Avatar', 'avatar', '', '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(115, 1, 'Messages', 'messages', '', '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(116, 1, 'Friends', 'friends', '', '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(117, 1, 'Page Not Found', 'page_not_found', '', '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(118, 1, 'Page Forbidden', 'page_forbidden', '', '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(119, 1, 'Download File', 'download_file', '', '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(120, 1, 'Members', 'members', '', '2013-06-22 10:54:37', '2013-06-22 10:54:37', 'Initial Version', 1, 0, 1, NULL, 5, 0, NULL),
(121, 1, 'Header Nav', 'header-nav', NULL, '2013-06-22 10:54:39', '2013-06-22 10:54:39', 'Initial Version', 1, 0, 1, NULL, 5, 1, NULL),
(122, 1, 'Side Nav', 'side-nav', NULL, '2013-06-22 10:54:39', '2013-06-22 10:54:39', 'Initial Version', 1, 0, 1, NULL, 5, 1, NULL),
(123, 1, 'Site Name', 'site-name', NULL, '2013-06-22 10:54:39', '2013-06-22 10:54:39', 'Initial Version', 1, 0, 1, NULL, 5, 1, NULL),
(124, 1, '', NULL, NULL, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL),
(125, 1, '', NULL, NULL, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL),
(126, 1, '', NULL, NULL, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, NULL, NULL, 0, 6, NULL),
(127, 1, '', NULL, NULL, '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL),
(128, 1, 'About', 'about', '', '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, 1, NULL, 5, 6, NULL),
(129, 1, 'Blog', 'blog', '', '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Version 1', 1, 0, 1, NULL, 5, 7, NULL),
(130, 1, 'Search', 'search', '', '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, 1, NULL, 5, 7, NULL),
(131, 1, 'Contact Us', 'contact-us', '', '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, 1, NULL, 5, 6, NULL),
(132, 1, 'Guestbook', 'guestbook', '', '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, 1, NULL, 5, 7, NULL),
(133, 1, 'Blog Archives', 'blog-archives', '', '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, 1, NULL, 5, 7, NULL),
(134, 1, 'Hello World', 'hello-world', 'This is my first blog post!', '2013-06-22 10:54:40', '2013-06-22 10:54:40', 'Initial Version', 1, 0, 1, NULL, 5, 4, NULL),
(135, 1, '', NULL, NULL, '2013-06-22 11:19:06', '2013-06-22 11:19:06', 'Initial Version', 1, 0, NULL, NULL, 0, 8, NULL),
(136, 1, 'Work', 'work', '', '2013-06-22 11:19:00', '2013-06-22 11:19:46', 'Initial Version', 0, 0, 1, 1, 5, 8, NULL),
(136, 2, 'Work', 'work', '', '2013-06-22 11:19:00', '2013-06-22 11:22:59', 'Version 2', 0, 0, 1, 1, 5, 8, NULL),
(136, 3, 'Work', 'work', '', '2013-06-22 11:19:00', '2013-06-22 11:40:43', 'Version 3', 0, 0, 1, 1, 5, 8, NULL),
(136, 4, 'Work', 'work', '', '2013-06-22 11:19:00', '2013-06-22 13:07:54', 'New Version 4', 0, 0, 1, 1, 5, 8, NULL),
(136, 5, 'Work', 'work', '', '2013-06-22 11:19:00', '2013-06-22 13:09:47', 'Version 5', 1, 0, 1, 1, 5, 8, NULL),
(137, 1, '', NULL, NULL, '2013-06-22 11:20:56', '2013-06-22 11:20:56', 'Initial Version', 1, 0, NULL, NULL, 0, 9, NULL),
(138, 1, 'Work Piece 1', 'work-piece-1', 'This is the first piece of work we will look at', '2013-06-22 11:21:00', '2013-06-22 11:21:31', 'Initial Version', 0, 0, 1, 1, 5, 9, NULL),
(138, 2, 'Work Piece 1', 'work-piece-1', 'This is the first piece of work we will look at', '2013-06-22 11:21:00', '2013-06-22 11:37:58', 'New Version 2', 0, 0, 1, 1, 5, 9, NULL),
(138, 3, 'Work Piece 1', 'work-piece-1', 'This is the first piece of work we will look at', '2013-06-22 11:21:00', '2013-06-22 11:41:18', 'Version 3', 0, 0, 1, 1, 5, 9, NULL),
(138, 4, 'Work 1:', 'work-piece-1', 'This is the first piece of work we will look at', '2013-06-22 11:21:00', '2013-06-22 12:52:41', 'New Version 4', 0, 0, 1, 1, 5, 9, NULL),
(138, 5, 'Tracy Beaker:', 'work-piece-1', 'This is the first piece of work we will look at', '2013-06-22 11:21:00', '2013-06-22 12:53:30', 'New Version 5', 0, 0, 1, 1, 5, 9, NULL),
(138, 6, 'Tracy Beaker', 'work-piece-1', 'This is the first piece of work we will look at', '2013-06-22 11:21:00', '2013-06-22 12:56:01', 'New Version 6', 1, 0, 1, 1, 5, 9, NULL),
(139, 1, 'Work Piece 2', 'work-piece-2', 'This is the second piece of work I will look at', '2013-06-22 11:22:00', '2013-06-22 11:22:16', 'Initial Version', 0, 0, 1, 1, 5, 9, NULL),
(139, 2, 'Work Piece 2', 'work-piece-2', 'This is the second piece of work I will look at', '2013-06-22 11:22:00', '2013-06-22 11:38:14', 'New Version 2', 0, 0, 1, 1, 5, 9, NULL),
(139, 3, 'Work 2:', 'work-piece-2', 'This is the second piece of work I will look at', '2013-06-22 11:22:00', '2013-06-22 12:52:50', 'New Version 3', 0, 0, 1, 1, 5, 9, NULL),
(139, 4, 'BBC Bitesize:', 'work-piece-2', 'This is the second piece of work I will look at', '2013-06-22 11:22:00', '2013-06-22 12:54:06', 'New Version 4', 0, 0, 1, 1, 5, 9, NULL),
(139, 5, 'BBC Bitesize', 'work-piece-2', 'This is the second piece of work I will look at', '2013-06-22 11:22:00', '2013-06-22 12:56:06', 'New Version 5', 1, 0, 1, 1, 5, 9, NULL),
(140, 1, 'Gloopy Gloop', 'gloopy-gloop', 'Vector drawn meatballs in canvas', '2013-06-22 12:54:00', '2013-06-22 12:54:49', 'Initial Version', 1, 0, 1, 1, 5, 9, NULL),
(141, 1, 'My Face', 'my-face', 'Home made 3d face scanner made before Kinnect was cool', '2013-06-22 12:55:00', '2013-06-22 12:55:52', 'Initial Version', 0, 0, 1, 1, 5, 9, NULL),
(141, 2, 'My Face', 'my-face', 'Home made 3d face scanner made before Kinnect was cool', '2013-06-22 12:55:00', '2013-06-22 12:57:17', 'New Version 2', 1, 0, 1, 1, 5, 9, NULL),
(142, 1, 'Open University', 'open-university', 'Discover your design alter-ego', '2013-06-22 12:56:00', '2013-06-22 12:57:00', 'Initial Version', 1, 0, 1, 1, 5, 9, NULL),
(143, 1, 'Kerve Creative', 'kerve-creative', '3d forced perspective cloud thing', '2013-06-22 12:57:00', '2013-06-22 12:58:08', 'Initial Version', 1, 0, 1, 1, 5, 9, NULL),
(144, 1, 'Martin Parr', 'martin-parr', 'In gallery voting touchscreen thing', '2013-06-22 12:58:00', '2013-06-22 12:59:08', 'Initial Version', 1, 0, 1, 1, 5, 9, NULL),
(145, 1, 'Tree Chaving Challenge', 'tree-chaving-challenge', 'Wishing you a chavtastic christmas', '2013-06-22 12:59:00', '2013-06-22 12:59:44', 'Initial Version', 1, 0, 1, 1, 5, 9, NULL),
(146, 1, 'WildScreen', 'wildscreen', 'Science to the rescue with a lot of jumping', '2013-06-22 12:59:00', '2013-06-22 13:00:28', 'Initial Version', 1, 0, 1, 1, 5, 9, NULL),
(147, 1, 'Capture the Museum', 'capture-museum', 'Museum based team fun and shenanigans', '2013-06-22 13:00:00', '2013-06-22 13:01:19', 'Initial Version', 1, 0, 1, 1, 5, 9, NULL),
(148, 1, 'ZOOM', 'zoom', 'Animal poses unlock archive', '2013-06-22 13:01:00', '2013-06-22 13:02:08', 'Initial Version', 1, 0, 1, 1, 5, 9, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `composercontentlayout`
--

DROP TABLE IF EXISTS `composercontentlayout`;
CREATE TABLE IF NOT EXISTS `composercontentlayout` (
  `cclID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ccFilename` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`cclID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `composercontentlayout`
--

INSERT INTO `composercontentlayout` (`cclID`, `bID`, `akID`, `displayOrder`, `ctID`, `ccFilename`) VALUES
(1, 16, 0, 1, 4, 'header.php'),
(2, 15, 0, 2, 4, 'thumbnail.php'),
(3, 13, 0, 3, 4, ''),
(4, 0, 14, 4, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `composerdrafts`
--

DROP TABLE IF EXISTS `composerdrafts`;
CREATE TABLE IF NOT EXISTS `composerdrafts` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cpPublishParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `composertypes`
--

DROP TABLE IF EXISTS `composertypes`;
CREATE TABLE IF NOT EXISTS `composertypes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageMethod` varchar(64) NOT NULL DEFAULT 'CHOOSE',
  `ctComposerPublishPageTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctComposerPublishPageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `composertypes`
--

INSERT INTO `composertypes` (`ctID`, `ctComposerPublishPageMethod`, `ctComposerPublishPageTypeID`, `ctComposerPublishPageParentID`) VALUES
(4, 'PARENT', 0, 129);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `cfKey` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cfValue` longtext,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cfKey`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('ACCESS_ENTITY_UPDATED', '2013-06-22 09:54:38', '1371898478', 0, 0),
('ANTISPAM_LOG_SPAM', '2013-06-22 09:54:37', '1', 0, 0),
('APP_VERSION_LATEST', '2013-06-22 09:54:46', '5.6.1.2', 0, 0),
('DO_PAGE_REINDEX_CHECK', '2013-06-22 12:09:54', '0', 0, 0),
('ENABLE_BLOCK_CACHE', '2013-06-22 12:14:44', '0', 0, 0),
('ENABLE_LOG_EMAILS', '2013-06-22 09:54:37', '1', 0, 0),
('ENABLE_LOG_ERRORS', '2013-06-22 09:54:37', '1', 0, 0),
('ENABLE_MARKETPLACE_SUPPORT', '2013-06-22 09:54:37', '1', 0, 0),
('ENABLE_OVERRIDE_CACHE', '2013-06-22 12:14:44', '0', 0, 0),
('FULL_PAGE_CACHE_GLOBAL', '2013-06-22 12:14:44', '0', 0, 0),
('FULL_PAGE_CACHE_LIFETIME', '2013-06-22 12:14:44', 'default', 0, 0),
('FULL_PAGE_CACHE_LIFETIME_CUSTOM', '2013-06-22 12:14:44', NULL, 0, 0),
('NEWSFLOW_LAST_VIEWED', '2013-06-22 10:54:54', '1371898494', 1, 0),
('SEEN_INTRODUCTION', '2013-06-22 09:54:53', '1', 0, 0),
('SITE', '2013-06-22 09:54:45', 'CorinWilkins.co.uk', 0, 0),
('SITE_APP_VERSION', '2013-06-22 09:54:45', '5.6.1.2', 0, 0),
('SITE_DEBUG_LEVEL', '2013-06-22 09:54:37', '1', 0, 0),
('SITE_INSTALLED_APP_VERSION', '2013-06-22 09:54:45', '5.6.1.2', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `customstylepresets`
--

DROP TABLE IF EXISTS `customstylepresets`;
CREATE TABLE IF NOT EXISTS `customstylepresets` (
  `cspID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cspName` varchar(255) NOT NULL,
  `csrID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cspID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customstylerules`
--

DROP TABLE IF EXISTS `customstylerules`;
CREATE TABLE IF NOT EXISTS `customstylerules` (
  `csrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `css_id` varchar(128) DEFAULT NULL,
  `css_class` varchar(128) DEFAULT NULL,
  `css_serialized` text,
  `css_custom` text,
  PRIMARY KEY (`csrID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `downloadstatistics`
--

DROP TABLE IF EXISTS `downloadstatistics`;
CREATE TABLE IF NOT EXISTS `downloadstatistics` (
  `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fileattributevalues`
--

DROP TABLE IF EXISTS `fileattributevalues`;
CREATE TABLE IF NOT EXISTS `fileattributevalues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fileattributevalues`
--

INSERT INTO `fileattributevalues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 12, 120),
(1, 1, 13, 121),
(2, 1, 12, 122),
(2, 1, 13, 123),
(3, 1, 12, 124),
(3, 1, 13, 125),
(4, 1, 12, 126),
(4, 1, 13, 127),
(5, 1, 12, 128),
(5, 1, 13, 129),
(6, 1, 12, 130),
(6, 1, 13, 131),
(7, 1, 12, 132),
(7, 1, 13, 133),
(8, 1, 12, 134),
(8, 1, 13, 135),
(9, 1, 12, 150),
(9, 1, 13, 151),
(10, 1, 12, 152),
(10, 1, 13, 153),
(11, 1, 12, 154),
(11, 1, 13, 155),
(12, 1, 12, 156),
(12, 1, 13, 157),
(13, 1, 12, 158),
(13, 1, 13, 159),
(14, 1, 12, 160),
(14, 1, 13, 161),
(15, 1, 12, 162),
(15, 1, 13, 163),
(16, 1, 12, 164),
(16, 1, 13, 165),
(17, 1, 12, 166),
(17, 1, 13, 167),
(18, 1, 12, 168),
(18, 1, 13, 169),
(19, 1, 12, 170),
(19, 1, 13, 171);

-- --------------------------------------------------------

--
-- Table structure for table `filepermissionassignments`
--

DROP TABLE IF EXISTS `filepermissionassignments`;
CREATE TABLE IF NOT EXISTS `filepermissionassignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filepermissionfiletypes`
--

DROP TABLE IF EXISTS `filepermissionfiletypes`;
CREATE TABLE IF NOT EXISTS `filepermissionfiletypes` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(32) NOT NULL,
  PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filepermissions`
--

DROP TABLE IF EXISTS `filepermissions`;
CREATE TABLE IF NOT EXISTS `filepermissions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `canRead` int(4) NOT NULL DEFAULT '0',
  `canWrite` int(4) NOT NULL DEFAULT '0',
  `canAdmin` int(4) NOT NULL DEFAULT '0',
  `canSearch` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`gID`,`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` int(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fID`,`uID`,`fslID`),
  KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1, '2013-06-22 10:54:38', 1, 0, 0, 0, NULL),
(2, '2013-06-22 10:54:38', 1, 0, 0, 0, NULL),
(3, '2013-06-22 10:54:38', 1, 0, 0, 0, NULL),
(4, '2013-06-22 10:54:38', 1, 0, 0, 0, NULL),
(5, '2013-06-22 10:54:38', 1, 0, 0, 0, NULL),
(6, '2013-06-22 10:54:38', 1, 0, 0, 0, NULL),
(7, '2013-06-22 10:54:39', 1, 0, 0, 0, NULL),
(8, '2013-06-22 10:54:39', 1, 0, 0, 0, NULL),
(9, '2013-06-22 12:51:38', 1, 0, 7, 0, NULL),
(10, '2013-06-22 12:51:39', 1, 0, 7, 0, NULL),
(11, '2013-06-22 12:51:39', 1, 0, 7, 0, NULL),
(12, '2013-06-22 12:51:39', 1, 0, 7, 0, NULL),
(13, '2013-06-22 12:51:39', 1, 0, 7, 0, NULL),
(14, '2013-06-22 12:51:40', 1, 0, 7, 0, NULL),
(15, '2013-06-22 12:51:40', 1, 0, 7, 0, NULL),
(16, '2013-06-22 12:51:40', 1, 0, 7, 0, NULL),
(17, '2013-06-22 12:51:41', 1, 0, 7, 0, NULL),
(18, '2013-06-22 12:51:41', 1, 0, 7, 0, NULL),
(19, '2013-06-22 12:51:41', 1, 0, 7, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filesearchindexattributes`
--

DROP TABLE IF EXISTS `filesearchindexattributes`;
CREATE TABLE IF NOT EXISTS `filesearchindexattributes` (
  `fID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  PRIMARY KEY (`fID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filesearchindexattributes`
--

INSERT INTO `filesearchindexattributes` (`fID`, `ak_width`, `ak_height`) VALUES
(1, '960.0000', '212.0000'),
(2, '960.0000', '212.0000'),
(3, '960.0000', '212.0000'),
(4, '960.0000', '212.0000'),
(5, '960.0000', '212.0000'),
(6, '960.0000', '212.0000'),
(7, '960.0000', '212.0000'),
(8, '150.0000', '150.0000'),
(9, '480.0000', '300.0000'),
(10, '480.0000', '300.0000'),
(11, '480.0000', '300.0000'),
(12, '480.0000', '300.0000'),
(13, '480.0000', '300.0000'),
(14, '480.0000', '300.0000'),
(15, '480.0000', '300.0000'),
(16, '480.0000', '300.0000'),
(17, '480.0000', '300.0000'),
(18, '480.0000', '300.0000'),
(19, '480.0000', '300.0000');

-- --------------------------------------------------------

--
-- Table structure for table `filesetfiles`
--

DROP TABLE IF EXISTS `filesetfiles`;
CREATE TABLE IF NOT EXISTS `filesetfiles` (
  `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL,
  PRIMARY KEY (`fsfID`),
  KEY `fID` (`fID`),
  KEY `fsID` (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `filesetpermissionassignments`
--

DROP TABLE IF EXISTS `filesetpermissionassignments`;
CREATE TABLE IF NOT EXISTS `filesetpermissionassignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fsID`,`paID`,`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filesetpermissionassignments`
--

INSERT INTO `filesetpermissionassignments` (`fsID`, `paID`, `pkID`) VALUES
(0, 36, 34),
(0, 37, 35),
(0, 38, 36),
(0, 39, 37),
(0, 40, 38),
(0, 41, 39),
(0, 42, 41),
(0, 43, 40),
(0, 44, 42);

-- --------------------------------------------------------

--
-- Table structure for table `filesetpermissionfiletypeaccesslist`
--

DROP TABLE IF EXISTS `filesetpermissionfiletypeaccesslist`;
CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filesetpermissionfiletypeaccesslistcustom`
--

DROP TABLE IF EXISTS `filesetpermissionfiletypeaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `filesetpermissionfiletypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(64) NOT NULL,
  PRIMARY KEY (`paID`,`peID`,`extension`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filesets`
--

DROP TABLE IF EXISTS `filesets`;
CREATE TABLE IF NOT EXISTS `filesets` (
  `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fsName` varchar(64) NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` int(4) NOT NULL,
  `fsOverrideGlobalPermissions` int(4) DEFAULT NULL,
  PRIMARY KEY (`fsID`),
  KEY `fsOverrideGlobalPermissions` (`fsOverrideGlobalPermissions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `filesetsavedsearches`
--

DROP TABLE IF EXISTS `filesetsavedsearches`;
CREATE TABLE IF NOT EXISTS `filesetsavedsearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text,
  `fsResultColumns` text,
  PRIMARY KEY (`fsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `filestoragelocations`
--

DROP TABLE IF EXISTS `filestoragelocations`;
CREATE TABLE IF NOT EXISTS `filestoragelocations` (
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslName` varchar(255) NOT NULL,
  `fslDirectory` varchar(255) NOT NULL,
  PRIMARY KEY (`fslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fileversionlog`
--

DROP TABLE IF EXISTS `fileversionlog`;
CREATE TABLE IF NOT EXISTS `fileversionlog` (
  `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fvlID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `fileversionlog`
--

INSERT INTO `fileversionlog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(1, 1, 1, 5, 12),
(2, 1, 1, 5, 13),
(3, 2, 1, 5, 12),
(4, 2, 1, 5, 13),
(5, 3, 1, 5, 12),
(6, 3, 1, 5, 13),
(7, 4, 1, 5, 12),
(8, 4, 1, 5, 13),
(9, 5, 1, 5, 12),
(10, 5, 1, 5, 13),
(11, 6, 1, 5, 12),
(12, 6, 1, 5, 13),
(13, 7, 1, 5, 12),
(14, 7, 1, 5, 13),
(15, 8, 1, 5, 12),
(16, 8, 1, 5, 13),
(17, 9, 1, 5, 12),
(18, 9, 1, 5, 13),
(19, 10, 1, 5, 12),
(20, 10, 1, 5, 13),
(21, 11, 1, 5, 12),
(22, 11, 1, 5, 13),
(23, 12, 1, 5, 12),
(24, 12, 1, 5, 13),
(25, 13, 1, 5, 12),
(26, 13, 1, 5, 13),
(27, 14, 1, 5, 12),
(28, 14, 1, 5, 13),
(29, 15, 1, 5, 12),
(30, 15, 1, 5, 13),
(31, 16, 1, 5, 12),
(32, 16, 1, 5, 13),
(33, 17, 1, 5, 12),
(34, 17, 1, 5, 13),
(35, 18, 1, 5, 12),
(36, 18, 1, 5, 13),
(37, 19, 1, 5, 12),
(38, 19, 1, 5, 13);

-- --------------------------------------------------------

--
-- Table structure for table `fileversions`
--

DROP TABLE IF EXISTS `fileversions`;
CREATE TABLE IF NOT EXISTS `fileversions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) NOT NULL,
  `fvPrefix` varchar(12) DEFAULT NULL,
  `fvGenericType` int(3) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(20) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) DEFAULT NULL,
  `fvDescription` text,
  `fvTags` varchar(255) DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasThumbnail1` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail2` int(1) NOT NULL DEFAULT '0',
  `fvHasThumbnail3` int(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fID`,`fvID`),
  KEY `fvExtension` (`fvType`),
  KEY `fvTitle` (`fvTitle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fileversions`
--

INSERT INTO `fileversions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasThumbnail1`, `fvHasThumbnail2`, `fvHasThumbnail3`, `fvExtension`, `fvType`) VALUES
(1, 1, 'england_village.jpg', '741371898478', 1, 333117, 'england_village.jpg', '', '', 1, '2013-06-22 10:54:38', 1, 1, '2013-06-22 10:54:38', 1, 1, 0, 'jpg', 1),
(2, 1, 'europe_england_stonehenge.jpg', '341371898478', 1, 286856, 'europe_england_stonehenge.jpg', '', '', 1, '2013-06-22 10:54:38', 1, 1, '2013-06-22 10:54:38', 1, 1, 0, 'jpg', 1),
(3, 1, 'europe_germany_munich_arch.jpg', '481371898478', 1, 229235, 'europe_germany_munich_arch.jpg', '', '', 1, '2013-06-22 10:54:38', 1, 1, '2013-06-22 10:54:38', 1, 1, 0, 'jpg', 1),
(4, 1, 'europe_rotterdam_port.jpg', '821371898478', 1, 203784, 'europe_rotterdam_port.jpg', '', '', 1, '2013-06-22 10:54:38', 1, 1, '2013-06-22 10:54:38', 1, 1, 0, 'jpg', 1),
(5, 1, 'europe_spain_grenada_alhambra.jpg', '721371898478', 1, 320805, 'europe_spain_grenada_alhambra.jpg', '', '', 1, '2013-06-22 10:54:38', 1, 1, '2013-06-22 10:54:38', 1, 1, 0, 'jpg', 1),
(6, 1, 'europe_valencia_hemispheric.jpg', '341371898478', 1, 262679, 'europe_valencia_hemispheric.jpg', '', '', 1, '2013-06-22 10:54:39', 1, 1, '2013-06-22 10:54:39', 1, 1, 0, 'jpg', 1),
(7, 1, 'northern_az_lake_powell_house_boats.jpg', '221371898479', 1, 226976, 'northern_az_lake_powell_house_boats.jpg', '', '', 1, '2013-06-22 10:54:39', 1, 1, '2013-06-22 10:54:39', 1, 1, 0, 'jpg', 1),
(8, 1, 'sh_thumbnail.jpg', '691371898479', 1, 15243, 'sh_thumbnail.jpg', '', '', 1, '2013-06-22 10:54:39', 1, 1, '2013-06-22 10:54:39', 1, 1, 0, 'jpg', 1),
(9, 1, 'beakeriser.png', '391371905498', 1, 39186, 'beakeriser.png', '', '', 1, '2013-06-22 12:51:38', 1, 1, '2013-06-22 12:51:38', 1, 1, 0, 'png', 1),
(10, 1, 'bitesize-geography.png', '521371905499', 1, 41038, 'bitesize-geography.png', '', '', 1, '2013-06-22 12:51:39', 1, 1, '2013-06-22 12:51:39', 1, 1, 0, 'png', 1),
(11, 1, 'capture.png', '881371905499', 1, 19032, 'capture.png', '', '', 1, '2013-06-22 12:51:39', 1, 1, '2013-06-22 12:51:39', 1, 1, 0, 'png', 1),
(12, 1, 'gloop.png', '681371905499', 1, 24933, 'gloop.png', '', '', 1, '2013-06-22 12:51:39', 1, 1, '2013-06-22 12:51:39', 1, 1, 0, 'png', 1),
(13, 1, 'kerve.png', '341371905499', 1, 28965, 'kerve.png', '', '', 1, '2013-06-22 12:51:39', 1, 1, '2013-06-22 12:51:39', 1, 1, 0, 'png', 1),
(14, 1, 'martin-parr.png', '571371905500', 1, 66162, 'martin-parr.png', '', '', 1, '2013-06-22 12:51:40', 1, 1, '2013-06-22 12:51:40', 1, 1, 0, 'png', 1),
(15, 1, 'myface.png', '931371905500', 1, 18136, 'myface.png', '', '', 1, '2013-06-22 12:51:40', 1, 1, '2013-06-22 12:51:40', 1, 1, 0, 'png', 1),
(16, 1, 'ou.png', '251371905500', 1, 70553, 'ou.png', '', '', 1, '2013-06-22 12:51:40', 1, 1, '2013-06-22 12:51:40', 1, 1, 0, 'png', 1),
(17, 1, 'tcc.png', '811371905501', 1, 49916, 'tcc.png', '', '', 1, '2013-06-22 12:51:41', 1, 1, '2013-06-22 12:51:41', 1, 1, 0, 'png', 1),
(18, 1, 'teamwild.png', '261371905501', 1, 43207, 'teamwild.png', '', '', 1, '2013-06-22 12:51:41', 1, 1, '2013-06-22 12:51:41', 1, 1, 0, 'png', 1),
(19, 1, 'zoom.png', '761371905501', 1, 62999, 'zoom.png', '', '', 1, '2013-06-22 12:51:41', 1, 1, '2013-06-22 12:51:41', 1, 1, 0, 'png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gName` varchar(128) NOT NULL,
  `gDescription` varchar(255) NOT NULL,
  `gUserExpirationIsEnabled` int(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`gID`),
  UNIQUE KEY `gName` (`gName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groupsetgroups`
--

DROP TABLE IF EXISTS `groupsetgroups`;
CREATE TABLE IF NOT EXISTS `groupsetgroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gID`,`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groupsets`
--

DROP TABLE IF EXISTS `groupsets`;
CREATE TABLE IF NOT EXISTS `groupsets` (
  `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gsName` varchar(255) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jName` varchar(100) NOT NULL,
  `jDescription` varchar(255) NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` varchar(255) DEFAULT NULL,
  `jLastStatusCode` smallint(4) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) NOT NULL,
  `jNotUninstallable` smallint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`) VALUES
(1, 'Index Search Engine', 'Index the site to allow searching to work quickly and accurately.', '2013-06-22 10:54:16', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1),
(2, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2013-06-22 10:54:16', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0),
(3, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2013-06-22 10:54:16', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0),
(4, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2013-06-22 10:54:16', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jobslog`
--

DROP TABLE IF EXISTS `jobslog`;
CREATE TABLE IF NOT EXISTS `jobslog` (
  `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` varchar(255) NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jlError` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jlID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `layoutpresets`
--

DROP TABLE IF EXISTS `layoutpresets`;
CREATE TABLE IF NOT EXISTS `layoutpresets` (
  `lpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lpName` varchar(128) NOT NULL,
  `layoutID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lpID`),
  UNIQUE KEY `layoutID` (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

DROP TABLE IF EXISTS `layouts`;
CREATE TABLE IF NOT EXISTS `layouts` (
  `layoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `layout_rows` int(5) NOT NULL DEFAULT '3',
  `layout_columns` int(3) NOT NULL DEFAULT '3',
  `spacing` int(3) NOT NULL DEFAULT '3',
  `breakpoints` varchar(255) NOT NULL DEFAULT '',
  `locked` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`layoutID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
CREATE TABLE IF NOT EXISTS `logs` (
  `logID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logType` varchar(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logText` longtext,
  `logUserID` int(10) unsigned DEFAULT NULL,
  `logIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`logID`),
  KEY `logType` (`logType`),
  KEY `logIsInternal` (`logIsInternal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mailimporters`
--

DROP TABLE IF EXISTS `mailimporters`;
CREATE TABLE IF NOT EXISTS `mailimporters` (
  `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miHandle` varchar(64) NOT NULL,
  `miServer` varchar(255) DEFAULT NULL,
  `miUsername` varchar(255) DEFAULT NULL,
  `miPassword` varchar(255) DEFAULT NULL,
  `miEncryption` varchar(32) DEFAULT NULL,
  `miIsEnabled` int(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) DEFAULT 'POP',
  PRIMARY KEY (`miID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mailimporters`
--

INSERT INTO `mailimporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `mailvalidationhashes`
--

DROP TABLE IF EXISTS `mailvalidationhashes`;
CREATE TABLE IF NOT EXISTS `mailvalidationhashes` (
  `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `mHash` varchar(128) NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`mvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkgName` varchar(255) NOT NULL,
  `pkgHandle` varchar(64) NOT NULL,
  `pkgDescription` text,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`pkgID`),
  UNIQUE KEY `pkgHandle` (`pkgHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pagepaths`
--

DROP TABLE IF EXISTS `pagepaths`;
CREATE TABLE IF NOT EXISTS `pagepaths` (
  `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text,
  `ppIsCanonical` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ppID`),
  KEY `cID` (`cID`),
  KEY `ppIsCanonical` (`ppIsCanonical`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=182 ;

--
-- Dumping data for table `pagepaths`
--

INSERT INTO `pagepaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`) VALUES
(1, 2, '/dashboard', '1'),
(2, 3, '/dashboard/composer', '1'),
(3, 4, '/dashboard/composer/write', '1'),
(4, 5, '/dashboard/composer/drafts', '1'),
(5, 6, '/dashboard/sitemap', '1'),
(6, 7, '/dashboard/sitemap/full', '1'),
(7, 8, '/dashboard/sitemap/explore', '1'),
(8, 9, '/dashboard/sitemap/search', '1'),
(9, 10, '/dashboard/files', '1'),
(10, 11, '/dashboard/files/search', '1'),
(11, 12, '/dashboard/files/attributes', '1'),
(12, 13, '/dashboard/files/sets', '1'),
(13, 14, '/dashboard/files/add_set', '1'),
(14, 15, '/dashboard/users', '1'),
(15, 16, '/dashboard/users/search', '1'),
(16, 17, '/dashboard/users/groups', '1'),
(17, 18, '/dashboard/users/attributes', '1'),
(18, 19, '/dashboard/users/add', '1'),
(19, 20, '/dashboard/users/add_group', '1'),
(20, 21, '/dashboard/users/group_sets', '1'),
(21, 22, '/dashboard/reports', '1'),
(22, 23, '/dashboard/reports/statistics', '1'),
(23, 24, '/dashboard/reports/forms', '1'),
(24, 25, '/dashboard/reports/surveys', '1'),
(25, 26, '/dashboard/reports/logs', '1'),
(26, 27, '/dashboard/pages', '1'),
(27, 28, '/dashboard/pages/themes', '1'),
(28, 29, '/dashboard/pages/themes/add', '1'),
(29, 30, '/dashboard/pages/themes/inspect', '1'),
(30, 31, '/dashboard/pages/themes/customize', '1'),
(31, 32, '/dashboard/pages/types', '1'),
(32, 33, '/dashboard/pages/types/add', '1'),
(33, 34, '/dashboard/pages/attributes', '1'),
(34, 35, '/dashboard/pages/single', '1'),
(35, 36, '/dashboard/workflow', '1'),
(36, 37, '/dashboard/workflow/list', '1'),
(37, 38, '/dashboard/workflow/me', '1'),
(38, 39, '/dashboard/blocks', '1'),
(39, 40, '/dashboard/blocks/stacks', '1'),
(40, 41, '/dashboard/blocks/permissions', '1'),
(41, 42, '/dashboard/blocks/stacks/list', '1'),
(42, 43, '/dashboard/blocks/types', '1'),
(43, 44, '/dashboard/extend', '1'),
(44, 45, '/dashboard/news', '1'),
(45, 46, '/dashboard/extend/install', '1'),
(46, 47, '/dashboard/extend/update', '1'),
(47, 48, '/dashboard/extend/connect', '1'),
(48, 49, '/dashboard/extend/themes', '1'),
(49, 50, '/dashboard/extend/add-ons', '1'),
(50, 51, '/dashboard/system', '1'),
(51, 52, '/dashboard/system/basics', '1'),
(52, 53, '/dashboard/system/basics/site_name', '1'),
(53, 54, '/dashboard/system/basics/icons', '1'),
(54, 55, '/dashboard/system/basics/editor', '1'),
(55, 56, '/dashboard/system/basics/multilingual', '1'),
(56, 57, '/dashboard/system/basics/timezone', '1'),
(57, 58, '/dashboard/system/basics/interface', '1'),
(58, 59, '/dashboard/system/seo', '1'),
(59, 60, '/dashboard/system/seo/urls', '1'),
(60, 61, '/dashboard/system/seo/bulk_seo_tool', '1'),
(61, 62, '/dashboard/system/seo/tracking_codes', '1'),
(62, 63, '/dashboard/system/seo/excluded', '1'),
(63, 64, '/dashboard/system/seo/statistics', '1'),
(64, 65, '/dashboard/system/seo/search_index', '1'),
(65, 66, '/dashboard/system/optimization', '1'),
(66, 67, '/dashboard/system/optimization/cache', '1'),
(67, 68, '/dashboard/system/optimization/clear_cache', '1'),
(68, 69, '/dashboard/system/optimization/jobs', '1'),
(69, 70, '/dashboard/system/permissions', '1'),
(70, 71, '/dashboard/system/permissions/site', '1'),
(71, 72, '/dashboard/system/permissions/files', '1'),
(72, 73, '/dashboard/system/permissions/file_types', '1'),
(73, 74, '/dashboard/system/permissions/tasks', '1'),
(74, 75, '/dashboard/system/permissions/users', '1'),
(75, 76, '/dashboard/system/permissions/advanced', '1'),
(76, 77, '/dashboard/system/permissions/ip_blacklist', '1'),
(77, 78, '/dashboard/system/permissions/captcha', '1'),
(78, 79, '/dashboard/system/permissions/antispam', '1'),
(79, 80, '/dashboard/system/permissions/maintenance_mode', '1'),
(80, 81, '/dashboard/system/registration', '1'),
(81, 82, '/dashboard/system/registration/postlogin', '1'),
(82, 83, '/dashboard/system/registration/profiles', '1'),
(83, 84, '/dashboard/system/registration/public_registration', '1'),
(84, 85, '/dashboard/system/mail', '1'),
(85, 86, '/dashboard/system/mail/method', '1'),
(86, 87, '/dashboard/system/mail/importers', '1'),
(87, 88, '/dashboard/system/attributes', '1'),
(88, 89, '/dashboard/system/attributes/sets', '1'),
(89, 90, '/dashboard/system/attributes/types', '1'),
(90, 91, '/dashboard/system/environment', '1'),
(91, 92, '/dashboard/system/environment/info', '1'),
(92, 93, '/dashboard/system/environment/debug', '1'),
(93, 94, '/dashboard/system/environment/logging', '1'),
(94, 95, '/dashboard/system/environment/file_storage_locations', '1'),
(95, 96, '/dashboard/system/environment/proxy', '1'),
(96, 97, '/dashboard/system/backup_restore', '1'),
(97, 98, '/dashboard/system/backup_restore/backup', '1'),
(98, 99, '/dashboard/system/backup_restore/update', '1'),
(99, 100, '/dashboard/system/backup_restore/database', '1'),
(100, 101, '/dashboard/pages/types/composer', '1'),
(101, 105, '/dashboard/home', '1'),
(102, 106, '/dashboard/welcome', '1'),
(103, 107, '/!drafts', '1'),
(104, 108, '/!trash', '1'),
(105, 109, '/!stacks', '1'),
(106, 110, '/login', '1'),
(107, 111, '/register', '1'),
(108, 112, '/profile', '1'),
(109, 113, '/profile/edit', '1'),
(110, 114, '/profile/avatar', '1'),
(111, 115, '/profile/messages', '1'),
(112, 116, '/profile/friends', '1'),
(113, 117, '/page_not_found', '1'),
(114, 118, '/page_forbidden', '1'),
(115, 119, '/download_file', '1'),
(116, 120, '/members', '1'),
(117, 121, '/!stacks/header-nav', '1'),
(118, 122, '/!stacks/side-nav', '1'),
(119, 123, '/!stacks/site-name', '1'),
(120, 128, '/about', '1'),
(122, 130, '/search', '1'),
(123, 131, '/about/contact-us', '1'),
(124, 132, '/about/guestbook', '1'),
(139, 129, '/!trash/blog', '1'),
(140, 133, '/!trash/blog/blog-archives', '1'),
(141, 134, '/!trash/blog/hello-world', '1'),
(170, 136, '/work', '1'),
(171, 138, '/work/work-piece-1', '1'),
(172, 139, '/work/work-piece-2', '1'),
(173, 140, '/work/gloopy-gloop', '1'),
(174, 141, '/work/my-face', '1'),
(175, 142, '/work/open-university', '1'),
(176, 143, '/work/kerve-creative', '1'),
(177, 144, '/work/martin-parr', '1'),
(178, 145, '/work/tree-chaving-challenge', '1'),
(179, 146, '/work/wildscreen', '1'),
(180, 147, '/work/capture-museum', '1'),
(181, 148, '/work/zoom', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionassignments`
--

DROP TABLE IF EXISTS `pagepermissionassignments`;
CREATE TABLE IF NOT EXISTS `pagepermissionassignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`pkID`,`paID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagepermissionassignments`
--

INSERT INTO `pagepermissionassignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 45),
(1, 2, 46),
(1, 3, 47),
(1, 4, 48),
(1, 5, 49),
(1, 6, 50),
(1, 7, 51),
(1, 8, 52),
(1, 9, 53),
(1, 10, 54),
(1, 11, 55),
(1, 12, 56),
(1, 13, 57),
(1, 14, 58),
(1, 15, 59),
(2, 1, 18),
(2, 2, 19),
(2, 3, 24),
(2, 4, 20),
(2, 5, 21),
(2, 6, 26),
(2, 7, 28),
(2, 8, 30),
(2, 9, 27),
(2, 10, 31),
(2, 11, 32),
(2, 12, 22),
(2, 13, 25),
(2, 14, 23),
(2, 15, 29),
(42, 1, 33),
(110, 1, 34),
(111, 1, 35);

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpagetypeaccesslist`
--

DROP TABLE IF EXISTS `pagepermissionpagetypeaccesslist`;
CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpagetypeaccesslistcustom`
--

DROP TABLE IF EXISTS `pagepermissionpagetypeaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `pagepermissionpagetypeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ctID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpropertyaccesslist`
--

DROP TABLE IF EXISTS `pagepermissionpropertyaccesslist`;
CREATE TABLE IF NOT EXISTS `pagepermissionpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` int(1) unsigned DEFAULT '0',
  `publicDateTime` int(1) unsigned DEFAULT '0',
  `uID` int(1) unsigned DEFAULT '0',
  `description` int(1) unsigned DEFAULT '0',
  `paths` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionpropertyattributeaccesslistcustom`
--

DROP TABLE IF EXISTS `pagepermissionpropertyattributeaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `pagepermissionpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionthemeaccesslist`
--

DROP TABLE IF EXISTS `pagepermissionthemeaccesslist`;
CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pagepermissionthemeaccesslistcustom`
--

DROP TABLE IF EXISTS `pagepermissionthemeaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `pagepermissionthemeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`ptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` int(1) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` varchar(255) DEFAULT NULL,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` int(4) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cParentID` (`cParentID`),
  KEY `cIsActive` (`cIsActive`),
  KEY `cCheckedOutUID` (`cCheckedOutUID`),
  KEY `uID` (`uID`),
  KEY `cPointerID` (`cPointerID`),
  KEY `cIsTemplate` (`cIsTemplate`),
  KEY `cIsSystemPage` (`cIsSystemPage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`cID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 14, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/view.php', 0, NULL, 0, 1, 2, 0, 2, 0, -1, '0', 0, 1),
(4, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/write.php', 0, NULL, 0, 1, 0, 0, 3, 0, -1, '0', 0, 1),
(5, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/composer/drafts.php', 0, NULL, 0, 1, 0, 1, 3, 0, -1, '0', 0, 1),
(6, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 1, 2, 0, -1, '0', 0, 1),
(7, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 6, 0, -1, '0', 0, 1),
(8, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 6, 0, -1, '0', 0, 1),
(9, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 6, 0, -1, '0', 0, 1),
(10, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 2, 2, 0, -1, '0', 0, 1),
(11, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 10, 0, -1, '0', 0, 1),
(12, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 10, 0, -1, '0', 0, 1),
(13, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 10, 0, -1, '0', 0, 1),
(14, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 10, 0, -1, '0', 0, 1),
(15, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 6, 3, 2, 0, -1, '0', 0, 1),
(16, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 15, 0, -1, '0', 0, 1),
(17, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 0, 1, 15, 0, -1, '0', 0, 1),
(18, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 15, 0, -1, '0', 0, 1),
(19, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 15, 0, -1, '0', 0, 1),
(20, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 15, 0, -1, '0', 0, 1),
(21, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 15, 0, -1, '0', 0, 1),
(22, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 4, 4, 2, 0, -1, '0', 0, 1),
(23, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/statistics.php', 0, NULL, 0, 1, 0, 0, 22, 0, -1, '0', 0, 1),
(24, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 1, 22, 0, -1, '0', 0, 1),
(25, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 2, 22, 0, -1, '0', 0, 1),
(26, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 3, 22, 0, -1, '0', 0, 1),
(27, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 4, 5, 2, 0, -1, '0', 0, 1),
(28, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 3, 0, 27, 0, -1, '0', 0, 1),
(29, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/add.php', 0, NULL, 0, 1, 0, 0, 28, 0, -1, '0', 0, 1),
(30, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 1, 28, 0, -1, '0', 0, 1),
(31, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/customize.php', 0, NULL, 0, 1, 0, 2, 28, 0, -1, '0', 0, 1),
(32, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 2, 1, 27, 0, -1, '0', 0, 1),
(33, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 0, 32, 0, -1, '0', 0, 1),
(34, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 2, 27, 0, -1, '0', 0, 1),
(35, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 3, 27, 0, -1, '0', 0, 1),
(36, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, -1, '0', 0, 1),
(37, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/list.php', 0, NULL, 0, 1, 0, 0, 36, 0, -1, '0', 0, 1),
(38, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 1, 36, 0, -1, '0', 0, 1),
(39, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, -1, '0', 0, 1),
(40, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 39, 0, -1, '0', 0, 1),
(41, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 39, 0, -1, '0', 0, 1),
(42, 0, 1, 0, NULL, NULL, NULL, 1, 42, 'OVERRIDE', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 40, 0, -1, '0', 0, 1),
(43, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 39, 0, -1, '0', 0, 1),
(44, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, -1, '0', 0, 1),
(45, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, -1, '0', 0, 1),
(46, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 44, 0, -1, '0', 0, 1),
(47, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 44, 0, -1, '0', 0, 1),
(48, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 44, 0, -1, '0', 0, 1),
(49, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 44, 0, -1, '0', 0, 1),
(50, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/add-ons.php', 0, NULL, 0, 1, 0, 4, 44, 0, -1, '0', 0, 1),
(51, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 9, 10, 2, 0, -1, '0', 0, 1),
(52, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 6, 0, 51, 0, -1, '0', 0, 1),
(53, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/site_name.php', 0, NULL, 0, 1, 0, 0, 52, 0, -1, '0', 0, 1),
(54, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 1, 52, 0, -1, '0', 0, 1),
(55, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 2, 52, 0, -1, '0', 0, 1),
(56, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 3, 52, 0, -1, '0', 0, 1),
(57, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 4, 52, 0, -1, '0', 0, 1),
(58, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/interface.php', 0, NULL, 0, 1, 0, 5, 52, 0, -1, '0', 0, 1),
(59, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 6, 1, 51, 0, -1, '0', 0, 1),
(60, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 59, 0, -1, '0', 0, 1),
(61, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk_seo_tool.php', 0, NULL, 0, 1, 0, 1, 59, 0, -1, '0', 0, 1),
(62, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/tracking_codes.php', 0, NULL, 0, 1, 0, 2, 59, 0, -1, '0', 0, 1),
(63, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 59, 0, -1, '0', 0, 1),
(64, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/statistics.php', 0, NULL, 0, 1, 0, 4, 59, 0, -1, '0', 0, 1),
(65, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/search_index.php', 0, NULL, 0, 1, 0, 5, 59, 0, -1, '0', 0, 1),
(66, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 3, 2, 51, 0, -1, '0', 0, 1),
(67, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 66, 0, -1, '0', 0, 1),
(68, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clear_cache.php', 0, NULL, 0, 1, 0, 1, 66, 0, -1, '0', 0, 1),
(69, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 66, 0, -1, '0', 0, 1),
(70, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 10, 3, 51, 0, -1, '0', 0, 1),
(71, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 70, 0, -1, '0', 0, 1),
(72, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/files.php', 0, NULL, 0, 1, 0, 1, 70, 0, -1, '0', 0, 1),
(73, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/file_types.php', 0, NULL, 0, 1, 0, 2, 70, 0, -1, '0', 0, 1),
(74, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 3, 70, 0, -1, '0', 0, 1),
(75, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 4, 70, 0, -1, '0', 0, 1),
(76, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 5, 70, 0, -1, '0', 0, 1),
(77, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/ip_blacklist.php', 0, NULL, 0, 1, 0, 6, 70, 0, -1, '0', 0, 1),
(78, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 7, 70, 0, -1, '0', 0, 1),
(79, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 8, 70, 0, -1, '0', 0, 1),
(80, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance_mode.php', 0, NULL, 0, 1, 0, 9, 70, 0, -1, '0', 0, 1),
(81, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 3, 4, 51, 0, -1, '0', 0, 1),
(82, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 81, 0, -1, '0', 0, 1),
(83, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 81, 0, -1, '0', 0, 1),
(84, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/public_registration.php', 0, NULL, 0, 1, 0, 2, 81, 0, -1, '0', 0, 1),
(85, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 5, 51, 0, -1, '0', 0, 1),
(86, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 0, 0, 85, 0, -1, '0', 0, 1),
(87, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 85, 0, -1, '0', 0, 1),
(88, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 2, 6, 51, 0, -1, '0', 0, 1),
(89, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 88, 0, -1, '0', 0, 1),
(90, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 88, 0, -1, '0', 0, 1),
(91, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 7, 51, 0, -1, '0', 0, 1),
(92, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 91, 0, -1, '0', 0, 1),
(93, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 91, 0, -1, '0', 0, 1),
(94, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 91, 0, -1, '0', 0, 1),
(95, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/file_storage_locations.php', 0, NULL, 0, 1, 0, 3, 91, 0, -1, '0', 0, 1),
(96, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 4, 91, 0, -1, '0', 0, 1),
(97, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/view.php', 0, NULL, 0, 1, 3, 8, 51, 0, -1, '0', 0, 1),
(98, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/backup.php', 0, NULL, 0, 1, 0, 0, 97, 0, -1, '0', 0, 1),
(99, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/update.php', 0, NULL, 0, 1, 0, 1, 97, 0, -1, '0', 0, 1),
(100, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup_restore/database.php', 0, NULL, 0, 1, 0, 2, 97, 0, -1, '0', 0, 1),
(101, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/composer.php', 0, NULL, 0, 1, 0, 1, 32, 0, -1, '0', 0, 1),
(102, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(103, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(104, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(105, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, -1, '0', 0, 1),
(106, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, -1, '0', 0, 1),
(107, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(108, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 1, 0, 0, 0, -1, '0', 0, 1),
(109, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, -1, '0', 0, 1),
(110, 0, 1, 0, NULL, NULL, NULL, 1, 110, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(111, 0, 1, 0, NULL, NULL, NULL, 1, 111, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(112, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/view.php', 0, NULL, 0, 1, 4, 0, 1, 0, -1, '0', 0, 1),
(113, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/edit.php', 0, NULL, 0, 1, 0, 0, 112, 0, -1, '0', 0, 1),
(114, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/avatar.php', 0, NULL, 0, 1, 0, 1, 112, 0, -1, '0', 0, 1),
(115, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/messages.php', 0, NULL, 0, 1, 0, 2, 112, 0, -1, '0', 0, 1),
(116, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/profile/friends.php', 0, NULL, 0, 1, 0, 3, 112, 0, -1, '0', 0, 1),
(117, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(118, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, -1, '0', 0, 1),
(119, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, -1, '0', 0, 1),
(120, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members.php', 0, NULL, 0, 1, 0, 2, 1, 0, -1, '0', 0, 1),
(121, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 109, 0, -1, '0', 0, 1),
(122, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 109, 0, -1, '0', 0, 1),
(123, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 109, 0, -1, '0', 0, 1),
(124, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(125, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(126, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(127, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(128, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 2, 3, 1, 0, -1, '0', 0, 0),
(129, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 0, 2, 0, 108, 0, -1, '0', 0, 1),
(130, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 1, 0, -1, '0', 0, 0),
(131, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 128, 0, -1, '0', 0, 0),
(132, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 128, 0, -1, '0', 0, 0),
(133, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 129, 0, -1, '0', 0, 1),
(134, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 129, 0, -1, '0', 0, 1),
(135, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(136, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 11, 6, 1, 0, -1, '0', 0, 0),
(137, 1, NULL, 0, NULL, NULL, NULL, 1, 0, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, -1, '0', 0, 0),
(138, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 136, 0, -1, '0', 0, 0),
(139, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 136, 0, -1, '0', 0, 0),
(140, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 136, 0, -1, '0', 0, 0),
(141, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 136, 0, -1, '0', 0, 0),
(142, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 136, 0, -1, '0', 0, 0),
(143, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 136, 0, -1, '0', 0, 0),
(144, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 136, 0, -1, '0', 0, 0),
(145, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 136, 0, -1, '0', 0, 0),
(146, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 136, 0, -1, '0', 0, 0),
(147, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 9, 136, 0, -1, '0', 0, 0),
(148, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 10, 136, 0, -1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagesearchindex`
--

DROP TABLE IF EXISTS `pagesearchindex`;
CREATE TABLE IF NOT EXISTS `pagesearchindex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text,
  `cName` varchar(255) DEFAULT NULL,
  `cDescription` text,
  `cPath` text,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`cID`),
  KEY `cDateLastIndexed` (`cDateLastIndexed`),
  KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  KEY `cRequiresReindex` (`cRequiresReindex`),
  FULLTEXT KEY `cName` (`cName`),
  FULLTEXT KEY `cDescription` (`cDescription`),
  FULLTEXT KEY `content` (`content`),
  FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagesearchindex`
--

INSERT INTO `pagesearchindex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(3, '', 'Composer', 'Write for your site.', '/dashboard/composer', '2013-06-22 10:54:17', '2013-06-22 10:54:30', NULL, 0),
(4, '', 'Write', '', '/dashboard/composer/write', '2013-06-22 10:54:17', '2013-06-22 10:54:30', NULL, 0),
(5, '', 'Drafts', '', '/dashboard/composer/drafts', '2013-06-22 10:54:17', '2013-06-22 10:54:30', NULL, 0),
(6, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2013-06-22 10:54:17', '2013-06-22 10:54:30', NULL, 0),
(7, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2013-06-22 10:54:17', '2013-06-22 10:54:30', NULL, 0),
(8, '', 'Flat View', '', '/dashboard/sitemap/explore', '2013-06-22 10:54:17', '2013-06-22 10:54:30', NULL, 0),
(9, '', 'Page Search', '', '/dashboard/sitemap/search', '2013-06-22 10:54:17', '2013-06-22 10:54:30', NULL, 0),
(11, '', 'File Manager', '', '/dashboard/files/search', '2013-06-22 10:54:17', '2013-06-22 10:54:30', NULL, 0),
(12, '', 'Attributes', '', '/dashboard/files/attributes', '2013-06-22 10:54:17', '2013-06-22 10:54:30', NULL, 0),
(13, '', 'File Sets', '', '/dashboard/files/sets', '2013-06-22 10:54:18', '2013-06-22 10:54:31', NULL, 0),
(14, '', 'Add File Set', '', '/dashboard/files/add_set', '2013-06-22 10:54:18', '2013-06-22 10:54:31', NULL, 0),
(15, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2013-06-22 10:54:18', '2013-06-22 10:54:31', NULL, 0),
(16, '', 'Search Users', '', '/dashboard/users/search', '2013-06-22 10:54:18', '2013-06-22 10:54:31', NULL, 0),
(17, '', 'User Groups', '', '/dashboard/users/groups', '2013-06-22 10:54:18', '2013-06-22 10:54:31', NULL, 0),
(18, '', 'Attributes', '', '/dashboard/users/attributes', '2013-06-22 10:54:18', '2013-06-22 10:54:31', NULL, 0),
(19, '', 'Add User', '', '/dashboard/users/add', '2013-06-22 10:54:18', '2013-06-22 10:54:31', NULL, 0),
(20, '', 'Add Group', '', '/dashboard/users/add_group', '2013-06-22 10:54:19', '2013-06-22 10:54:31', NULL, 0),
(21, '', 'Group Sets', '', '/dashboard/users/group_sets', '2013-06-22 10:54:19', '2013-06-22 10:54:31', NULL, 0),
(22, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2013-06-22 10:54:19', '2013-06-22 10:54:31', NULL, 0),
(23, '', 'Statistics', 'View your site activity.', '/dashboard/reports/statistics', '2013-06-22 10:54:19', '2013-06-22 10:54:32', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2013-06-22 10:54:19', '2013-06-22 10:54:32', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2013-06-22 10:54:19', '2013-06-22 10:54:32', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2013-06-22 10:54:20', '2013-06-22 10:54:32', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2013-06-22 10:54:20', '2013-06-22 10:54:32', NULL, 0),
(29, '', 'Add', '', '/dashboard/pages/themes/add', '2013-06-22 10:54:20', '2013-06-22 10:54:32', NULL, 0),
(30, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2013-06-22 10:54:20', '2013-06-22 10:54:32', NULL, 0),
(31, '', 'Customize', '', '/dashboard/pages/themes/customize', '2013-06-22 10:54:20', '2013-06-22 10:54:32', NULL, 0),
(32, '', 'Page Types', 'What goes in your site.', '/dashboard/pages/types', '2013-06-22 10:54:20', '2013-06-22 10:54:32', NULL, 0),
(34, '', 'Attributes', '', '/dashboard/pages/attributes', '2013-06-22 10:54:21', '2013-06-22 10:54:32', NULL, 0),
(35, '', 'Single Pages', '', '/dashboard/pages/single', '2013-06-22 10:54:21', '2013-06-22 10:54:32', NULL, 0),
(36, '', 'Workflow', '', '/dashboard/workflow', '2013-06-22 10:54:21', '2013-06-22 10:54:32', NULL, 0),
(37, '', 'Workflow List', '', '/dashboard/workflow/list', '2013-06-22 10:54:21', '2013-06-22 10:54:32', NULL, 0),
(38, '', 'Waiting for Me', '', '/dashboard/workflow/me', '2013-06-22 10:54:21', '2013-06-22 10:54:32', NULL, 0),
(40, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2013-06-22 10:54:21', '2013-06-22 10:54:32', NULL, 0),
(41, '', 'Block & Stack Permissions', 'Control who can add blocks and stacks on your site.', '/dashboard/blocks/permissions', '2013-06-22 10:54:21', '2013-06-22 10:54:32', NULL, 0),
(42, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2013-06-22 10:54:21', '2013-06-22 10:54:33', NULL, 0),
(43, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2013-06-22 10:54:22', '2013-06-22 10:54:33', NULL, 0),
(44, '', 'Extend concrete5', 'Connect to the concrete5 marketplace, install custom add-ons, and download updates for marketplace add-ons and themes.', '/dashboard/extend', '2013-06-22 10:54:22', '2013-06-22 10:54:33', NULL, 0),
(45, '', 'Dashboard', '', '/dashboard/news', '2013-06-22 10:54:22', '2013-06-22 10:54:33', NULL, 0),
(46, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2013-06-22 10:54:22', '2013-06-22 10:54:33', NULL, 0),
(47, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2013-06-22 10:54:22', '2013-06-22 10:54:33', NULL, 0),
(48, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2013-06-22 10:54:22', '2013-06-22 10:54:33', NULL, 0),
(49, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2013-06-22 10:54:23', '2013-06-22 10:54:33', NULL, 0),
(50, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/add-ons', '2013-06-22 10:54:23', '2013-06-22 10:54:33', NULL, 0),
(51, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2013-06-22 10:54:23', '2013-06-22 10:54:33', NULL, 0),
(53, '', 'Site Name', '', '/dashboard/system/basics/site_name', '2013-06-22 10:54:23', '2013-06-22 10:54:33', NULL, 0),
(54, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2013-06-22 10:54:23', '2013-06-22 10:54:33', NULL, 0),
(55, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2013-06-22 10:54:23', '2013-06-22 10:54:33', NULL, 0),
(56, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2013-06-22 10:54:23', '2013-06-22 10:54:33', NULL, 0),
(57, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2013-06-22 10:54:23', '2013-06-22 10:54:33', NULL, 0),
(58, '', 'Interface Preferences', '', '/dashboard/system/basics/interface', '2013-06-22 10:54:24', '2013-06-22 10:54:33', NULL, 0),
(60, '', 'Pretty URLs', '', '/dashboard/system/seo/urls', '2013-06-22 10:54:24', '2013-06-22 10:54:33', NULL, 0),
(61, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk_seo_tool', '2013-06-22 10:54:24', '2013-06-22 10:54:33', NULL, 0),
(62, '', 'Tracking Codes', '', '/dashboard/system/seo/tracking_codes', '2013-06-22 10:54:24', '2013-06-22 10:54:33', NULL, 0),
(63, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2013-06-22 10:54:24', '2013-06-22 10:54:33', NULL, 0),
(64, '', 'Statistics', '', '/dashboard/system/seo/statistics', '2013-06-22 10:54:25', '2013-06-22 10:54:33', NULL, 0),
(65, '', 'Search Index', '', '/dashboard/system/seo/search_index', '2013-06-22 10:54:25', '2013-06-22 10:54:33', NULL, 0),
(67, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2013-06-22 10:54:25', '2013-06-22 10:54:33', NULL, 0),
(68, '', 'Clear Cache', '', '/dashboard/system/optimization/clear_cache', '2013-06-22 10:54:25', '2013-06-22 10:54:33', NULL, 0),
(69, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2013-06-22 10:54:25', '2013-06-22 10:54:34', NULL, 0),
(71, '', 'Site Access', '', '/dashboard/system/permissions/site', '2013-06-22 10:54:25', '2013-06-22 10:54:34', NULL, 0),
(72, '', 'File Manager Permissions', '', '/dashboard/system/permissions/files', '2013-06-22 10:54:25', '2013-06-22 10:54:34', NULL, 0),
(73, '', 'Allowed File Types', '', '/dashboard/system/permissions/file_types', '2013-06-22 10:54:26', '2013-06-22 10:54:34', NULL, 0),
(74, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2013-06-22 10:54:26', '2013-06-22 10:54:34', NULL, 0),
(77, '', 'IP Blacklist', '', '/dashboard/system/permissions/ip_blacklist', '2013-06-22 10:54:26', '2013-06-22 10:54:34', NULL, 0),
(78, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2013-06-22 10:54:26', '2013-06-22 10:54:34', NULL, 0),
(79, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2013-06-22 10:54:26', '2013-06-22 10:54:34', NULL, 0),
(80, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance_mode', '2013-06-22 10:54:27', '2013-06-22 10:54:34', NULL, 0),
(82, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2013-06-22 10:54:27', '2013-06-22 10:54:34', NULL, 0),
(83, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2013-06-22 10:54:27', '2013-06-22 10:54:34', NULL, 0),
(84, '', 'Public Registration', '', '/dashboard/system/registration/public_registration', '2013-06-22 10:54:27', '2013-06-22 10:54:34', NULL, 0),
(85, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2013-06-22 10:54:27', '2013-06-22 10:54:34', NULL, 0),
(86, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2013-06-22 10:54:27', '2013-06-22 10:54:34', NULL, 0),
(87, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2013-06-22 10:54:27', '2013-06-22 10:54:34', NULL, 0),
(88, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2013-06-22 10:54:27', '2013-06-22 10:54:34', NULL, 0),
(89, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2013-06-22 10:54:28', '2013-06-22 10:54:34', NULL, 0),
(90, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2013-06-22 10:54:28', '2013-06-22 10:54:34', NULL, 0),
(91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(92, '', 'Environment Information', '', '/dashboard/system/environment/info', '2013-06-22 10:54:28', '2013-06-22 10:54:34', NULL, 0),
(93, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2013-06-22 10:54:28', '2013-06-22 10:54:34', NULL, 0),
(94, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2013-06-22 10:54:28', '2013-06-22 10:54:34', NULL, 0),
(95, '', 'File Storage Locations', '', '/dashboard/system/environment/file_storage_locations', '2013-06-22 10:54:28', '2013-06-22 10:54:34', NULL, 0),
(96, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2013-06-22 10:54:29', '2013-06-22 10:54:34', NULL, 0),
(97, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup_restore', '2013-06-22 10:54:29', '2013-06-22 10:54:34', NULL, 0),
(99, '', 'Update concrete5', '', '/dashboard/system/backup_restore/update', '2013-06-22 10:54:29', '2013-06-22 10:54:34', NULL, 0),
(100, '', 'Database XML', '', '/dashboard/system/backup_restore/database', '2013-06-22 10:54:29', '2013-06-22 10:54:35', NULL, 0),
(106, '	Welcome to concrete5.\n						It''s easy to edit content and add pages using in-context editing. \n						 \n							Building Your Own Site\n							 Editing with concrete5 is a breeze. Just point and click to make changes. \n							 \n							 Editor''s Guide \n							  \n							Developing Applications\n							 If you’re comfortable in PHP concrete5 should be a breeze to learn. Take a few moments to understand the architecture. \n							 Developer''s Guide \n							  \n							Designing Websites\n							 Good with CSS and HTML? You can easily theme anything with concrete5. \n							 \n							 Designer''s Guide \n							  \n						\n						Business Background\n						 Worried about license structures, white-labeling or why concrete5 is a good choice for your agency? \n						 Executive''s Guide \n						  ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2013-06-22 10:54:30', '2013-06-22 10:54:35', NULL, 0),
(105, '', 'Customize Dashboard Home', '', '/dashboard/home', '2013-06-22 10:54:30', '2013-06-22 10:54:36', NULL, 0),
(1, 'Sidebar  Everything about concrete5 is completely customizable through the CMS. This is a separate area from the main content on the homepage. You can&nbsp;drag and drop blocks&nbsp;like this around your layout.  Welcome to concrete5!\n                                         Content Management is easy with concrete5''s in-context editing. Just login and you can change things as you browse your site. \n                                         You can watch videos and learn how to: \n                                        \n                                        Edit&nbsp;this page.\n                                        Add a new page.\n                                        Add some basic functionality, like&nbsp;a Form.\n                                        Finding &amp; adding&nbsp;more functionality and themes.\n                                        \n                                         We''ve taken the liberty to build out the rest of this site with some sample content that will help you learn concrete5. Wander around a bit, or click Dashboard to get to the&nbsp;Sitemap and quickly delete the parts you don''t want.  ', 'Home', '', NULL, '2013-06-22 10:54:13', '2013-06-22 10:54:42', NULL, 0),
(128, 'Learn More\n																 Visit&nbsp;concrete5.org&nbsp;to learn more from the&nbsp;community&nbsp;and the&nbsp;documentation. You can also browse our&nbsp;marketplace&nbsp;for more&nbsp;add-ons&nbsp;and&nbsp;themes&nbsp;to quickly build the site you really need.&nbsp; \n																&nbsp;\n																Getting Help\n																 You can get free help in the forums and post for free to the&nbsp;jobs board.&nbsp; \n																 You can also pay the concrete5 team of developers to help with&nbsp;any problem&nbsp;you run into. We offer training courses&nbsp;and&nbsp;hosting packages, just let us know how we can help.  ', 'About', '', '/about', '2013-06-22 10:54:40', '2013-06-22 10:54:42', NULL, 0),
(132, '', 'Guestbook', '', '/about/guestbook', '2013-06-22 10:54:40', '2013-06-22 10:54:42', NULL, 0),
(131, 'Contact Us\n									 Building a form is easy to do. Learn how to add a form block.  ', 'Contact Us', '', '/about/contact-us', '2013-06-22 10:54:40', '2013-06-22 10:54:43', NULL, 0),
(130, 'Site Map ', 'Search', '', '/search', '2013-06-22 10:54:40', '2013-06-22 10:54:43', NULL, 0),
(129, 'Tags ', 'Blog', '', '/blog', '2013-06-22 10:54:40', '2013-06-22 10:54:44', NULL, 0),
(134, ' Here is some sample content! I''m writing it using composer!  ', 'Hello World', 'This is my first blog post!', '/blog/hello-world', '2013-06-22 10:54:40', '2013-06-22 10:54:44', NULL, 0),
(133, '', 'Blog Archives', '', '/blog/blog-archives', '2013-06-22 10:54:40', '2013-06-22 10:54:45', NULL, 0),
(136, '', 'Work', '', '/work', '2013-06-22 11:19:00', '2013-06-22 13:09:54', NULL, 0),
(138, '', 'Tracy Beaker', 'This is the first piece of work we will look at', '/work/work-piece-1', '2013-06-22 11:21:00', '2013-06-22 12:57:01', NULL, 0),
(139, '', 'BBC Bitesize', 'This is the second piece of work I will look at', '/work/work-piece-2', '2013-06-22 11:22:00', '2013-06-22 12:57:01', NULL, 0),
(140, '', 'Gloopy Gloop', 'Vector drawn meatballs in canvas', '/work/gloopy-gloop', '2013-06-22 12:54:00', '2013-06-22 12:54:49', NULL, 0),
(141, '', 'My Face', 'Home made 3d face scanner made before Kinnect was cool', '/work/my-face', '2013-06-22 12:55:00', '2013-06-22 12:58:09', NULL, 0),
(143, '', 'Kerve Creative', '3d forced perspective cloud thing', '/work/kerve-creative', '2013-06-22 12:57:00', '2013-06-22 12:58:09', NULL, 0),
(142, '', 'Open University', 'Discover your design alter-ego', '/work/open-university', '2013-06-22 12:56:00', '2013-06-22 12:57:01', NULL, 0),
(144, '', 'Martin Parr', 'In gallery voting touchscreen thing', '/work/martin-parr', '2013-06-22 12:58:00', '2013-06-22 12:59:09', NULL, 0),
(145, '', 'Tree Chaving Challenge', 'Wishing you a chavtastic christmas', '/work/tree-chaving-challenge', '2013-06-22 12:59:00', '2013-06-22 12:59:45', NULL, 0),
(146, '', 'WildScreen', 'Science to the rescue with a lot of jumping', '/work/wildscreen', '2013-06-22 12:59:00', '2013-06-22 13:00:29', NULL, 0),
(147, '', 'Capture the Museum', 'Museum based team fun and shenanigans', '/work/capture-museum', '2013-06-22 13:00:00', '2013-06-22 13:01:20', NULL, 0),
(148, '', 'ZOOM', 'Animal poses unlock archive', '/work/zoom', '2013-06-22 13:01:00', '2013-06-22 13:02:09', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagestatistics`
--

DROP TABLE IF EXISTS `pagestatistics`;
CREATE TABLE IF NOT EXISTS `pagestatistics` (
  `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pstID`),
  KEY `cID` (`cID`),
  KEY `date` (`date`),
  KEY `uID` (`uID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=220 ;

--
-- Dumping data for table `pagestatistics`
--

INSERT INTO `pagestatistics` (`pstID`, `cID`, `date`, `timestamp`, `uID`) VALUES
(1, 1, '2013-06-22', '2013-06-22 10:54:53', 1),
(2, 106, '2013-06-22', '2013-06-22 10:54:54', 1),
(3, 1, '2013-06-22', '2013-06-22 10:58:07', 1),
(4, 2, '2013-06-22', '2013-06-22 11:06:07', 1),
(5, 28, '2013-06-22', '2013-06-22 11:06:08', 1),
(6, 28, '2013-06-22', '2013-06-22 11:06:32', 1),
(7, 28, '2013-06-22', '2013-06-22 11:06:33', 1),
(8, 28, '2013-06-22', '2013-06-22 11:06:35', 1),
(9, 49, '2013-06-22', '2013-06-22 11:07:44', 1),
(10, 48, '2013-06-22', '2013-06-22 11:07:44', 1),
(11, 2, '2013-06-22', '2013-06-22 11:07:51', 1),
(12, 28, '2013-06-22', '2013-06-22 11:10:23', 1),
(13, 2, '2013-06-22', '2013-06-22 11:11:18', 1),
(14, 28, '2013-06-22', '2013-06-22 11:11:19', 1),
(15, 28, '2013-06-22', '2013-06-22 11:11:20', 1),
(16, 30, '2013-06-22', '2013-06-22 11:11:20', 1),
(17, 28, '2013-06-22', '2013-06-22 11:11:29', 1),
(18, 28, '2013-06-22', '2013-06-22 11:11:34', 1),
(19, 1, '2013-06-22', '2013-06-22 11:12:32', 1),
(20, 28, '2013-06-22', '2013-06-22 11:12:46', 1),
(21, 28, '2013-06-22', '2013-06-22 11:12:48', 1),
(22, 1, '2013-06-22', '2013-06-22 11:12:51', 1),
(23, 129, '2013-06-22', '2013-06-22 11:13:06', 1),
(24, 128, '2013-06-22', '2013-06-22 11:13:16', 1),
(25, 130, '2013-06-22', '2013-06-22 11:13:18', 1),
(26, 1, '2013-06-22', '2013-06-22 11:13:19', 1),
(27, 7, '2013-06-22', '2013-06-22 11:13:24', 1),
(28, 133, '2013-06-22', '2013-06-22 11:13:32', 1),
(29, 7, '2013-06-22', '2013-06-22 11:13:35', 1),
(30, 129, '2013-06-22', '2013-06-22 11:15:01', 1),
(31, 134, '2013-06-22', '2013-06-22 11:15:06', 1),
(32, 129, '2013-06-22', '2013-06-22 11:15:12', 1),
(33, 129, '2013-06-22', '2013-06-22 11:17:05', 1),
(34, 129, '2013-06-22', '2013-06-22 11:18:17', 1),
(35, 2, '2013-06-22', '2013-06-22 11:18:30', 1),
(36, 32, '2013-06-22', '2013-06-22 11:18:34', 1),
(37, 33, '2013-06-22', '2013-06-22 11:18:39', 1),
(38, 33, '2013-06-22', '2013-06-22 11:19:06', 1),
(39, 32, '2013-06-22', '2013-06-22 11:19:06', 1),
(40, 32, '2013-06-22', '2013-06-22 11:19:11', 1),
(41, 32, '2013-06-22', '2013-06-22 11:19:17', 1),
(42, 32, '2013-06-22', '2013-06-22 11:19:17', 1),
(43, 2, '2013-06-22', '2013-06-22 11:19:31', 1),
(44, 7, '2013-06-22', '2013-06-22 11:19:33', 1),
(45, 6, '2013-06-22', '2013-06-22 11:19:46', 1),
(46, 7, '2013-06-22', '2013-06-22 11:19:46', 1),
(47, 2, '2013-06-22', '2013-06-22 11:20:24', 1),
(48, 32, '2013-06-22', '2013-06-22 11:20:27', 1),
(49, 33, '2013-06-22', '2013-06-22 11:20:29', 1),
(50, 33, '2013-06-22', '2013-06-22 11:20:56', 1),
(51, 32, '2013-06-22', '2013-06-22 11:20:56', 1),
(52, 2, '2013-06-22', '2013-06-22 11:21:05', 1),
(53, 7, '2013-06-22', '2013-06-22 11:21:07', 1),
(54, 6, '2013-06-22', '2013-06-22 11:21:31', 1),
(55, 7, '2013-06-22', '2013-06-22 11:21:31', 1),
(56, 6, '2013-06-22', '2013-06-22 11:22:16', 1),
(57, 7, '2013-06-22', '2013-06-22 11:22:16', 1),
(58, 129, '2013-06-22', '2013-06-22 11:22:20', 1),
(59, 136, '2013-06-22', '2013-06-22 11:22:21', 1),
(60, 136, '2013-06-22', '2013-06-22 11:22:25', 1),
(61, 136, '2013-06-22', '2013-06-22 11:23:12', 1),
(62, 138, '2013-06-22', '2013-06-22 11:23:50', 1),
(63, 136, '2013-06-22', '2013-06-22 11:23:52', 1),
(64, 139, '2013-06-22', '2013-06-22 11:23:53', 1),
(65, 136, '2013-06-22', '2013-06-22 11:23:54', 1),
(66, 136, '2013-06-22', '2013-06-22 11:25:31', 1),
(67, 136, '2013-06-22', '2013-06-22 11:26:05', 1),
(68, 2, '2013-06-22', '2013-06-22 11:26:28', 1),
(69, 34, '2013-06-22', '2013-06-22 11:26:31', 1),
(70, 34, '2013-06-22', '2013-06-22 11:26:40', 1),
(71, 34, '2013-06-22', '2013-06-22 11:27:11', 1),
(72, 34, '2013-06-22', '2013-06-22 11:27:11', 1),
(73, 89, '2013-06-22', '2013-06-22 11:28:20', 1),
(74, 89, '2013-06-22', '2013-06-22 11:28:29', 1),
(75, 89, '2013-06-22', '2013-06-22 11:28:29', 1),
(76, 2, '2013-06-22', '2013-06-22 11:28:37', 1),
(77, 34, '2013-06-22', '2013-06-22 11:28:39', 1),
(78, 34, '2013-06-22', '2013-06-22 11:28:43', 1),
(79, 34, '2013-06-22', '2013-06-22 11:28:47', 1),
(80, 34, '2013-06-22', '2013-06-22 11:28:47', 1),
(81, 34, '2013-06-22', '2013-06-22 11:29:24', 1),
(82, 34, '2013-06-22', '2013-06-22 11:29:41', 1),
(83, 34, '2013-06-22', '2013-06-22 11:29:41', 1),
(84, 7, '2013-06-22', '2013-06-22 11:30:01', 1),
(85, 2, '2013-06-22', '2013-06-22 11:30:08', 1),
(86, 32, '2013-06-22', '2013-06-22 11:30:10', 1),
(87, 32, '2013-06-22', '2013-06-22 11:30:15', 1),
(88, 137, '2013-06-22', '2013-06-22 11:30:15', 1),
(89, 32, '2013-06-22', '2013-06-22 11:30:18', 1),
(90, 32, '2013-06-22', '2013-06-22 11:30:20', 1),
(91, 32, '2013-06-22', '2013-06-22 11:30:34', 1),
(92, 32, '2013-06-22', '2013-06-22 11:30:34', 1),
(93, 7, '2013-06-22', '2013-06-22 11:37:00', 1),
(94, 136, '2013-06-22', '2013-06-22 11:38:17', 1),
(95, 136, '2013-06-22', '2013-06-22 11:38:20', 1),
(96, 138, '2013-06-22', '2013-06-22 11:38:23', 1),
(97, 136, '2013-06-22', '2013-06-22 11:38:25', 1),
(98, 129, '2013-06-22', '2013-06-22 11:38:29', 1),
(99, 129, '2013-06-22', '2013-06-22 11:38:35', 1),
(100, 129, '2013-06-22', '2013-06-22 11:38:57', 1),
(101, 134, '2013-06-22', '2013-06-22 11:38:58', 1),
(102, 129, '2013-06-22', '2013-06-22 11:39:38', 1),
(103, 129, '2013-06-22', '2013-06-22 11:39:39', 1),
(104, 129, '2013-06-22', '2013-06-22 11:40:16', 1),
(105, 136, '2013-06-22', '2013-06-22 11:40:24', 1),
(106, 136, '2013-06-22', '2013-06-22 11:40:53', 1),
(107, 136, '2013-06-22', '2013-06-22 11:40:57', 1),
(108, 136, '2013-06-22', '2013-06-22 11:40:59', 1),
(109, 138, '2013-06-22', '2013-06-22 11:41:00', 1),
(110, 138, '2013-06-22', '2013-06-22 11:41:02', 1),
(111, 138, '2013-06-22', '2013-06-22 11:41:29', 1),
(112, 136, '2013-06-22', '2013-06-22 11:41:30', 1),
(113, 136, '2013-06-22', '2013-06-22 11:41:32', 1),
(114, 32, '2013-06-22', '2013-06-22 11:42:08', 1),
(115, 1, '2013-06-22', '2013-06-22 11:42:10', 1),
(116, 2, '2013-06-22', '2013-06-22 11:42:12', 1),
(117, 136, '2013-06-22', '2013-06-22 11:46:30', 1),
(118, 136, '2013-06-22', '2013-06-22 11:46:55', 1),
(119, 136, '2013-06-22', '2013-06-22 11:49:39', 1),
(120, 136, '2013-06-22', '2013-06-22 12:36:51', 1),
(121, 7, '2013-06-22', '2013-06-22 12:36:57', 1),
(122, 136, '2013-06-22', '2013-06-22 12:41:35', 1),
(123, 136, '2013-06-22', '2013-06-22 12:48:21', 1),
(124, 138, '2013-06-22', '2013-06-22 12:50:11', 1),
(125, 138, '2013-06-22', '2013-06-22 12:50:12', 1),
(126, 138, '2013-06-22', '2013-06-22 12:50:14', 1),
(127, 136, '2013-06-22', '2013-06-22 12:50:16', 1),
(128, 6, '2013-06-22', '2013-06-22 12:54:49', 1),
(129, 7, '2013-06-22', '2013-06-22 12:54:49', 1),
(130, 6, '2013-06-22', '2013-06-22 12:55:52', 1),
(131, 7, '2013-06-22', '2013-06-22 12:55:52', 1),
(132, 6, '2013-06-22', '2013-06-22 12:57:00', 1),
(133, 7, '2013-06-22', '2013-06-22 12:57:00', 1),
(134, 6, '2013-06-22', '2013-06-22 12:58:08', 1),
(135, 7, '2013-06-22', '2013-06-22 12:58:08', 1),
(136, 6, '2013-06-22', '2013-06-22 12:59:09', 1),
(137, 7, '2013-06-22', '2013-06-22 12:59:09', 1),
(138, 6, '2013-06-22', '2013-06-22 12:59:44', 1),
(139, 7, '2013-06-22', '2013-06-22 12:59:44', 1),
(140, 6, '2013-06-22', '2013-06-22 13:00:29', 1),
(141, 7, '2013-06-22', '2013-06-22 13:00:29', 1),
(142, 6, '2013-06-22', '2013-06-22 13:01:20', 1),
(143, 7, '2013-06-22', '2013-06-22 13:01:20', 1),
(144, 8, '2013-06-22', '2013-06-22 13:01:22', 1),
(145, 8, '2013-06-22', '2013-06-22 13:01:24', 1),
(146, 7, '2013-06-22', '2013-06-22 13:01:37', 1),
(147, 6, '2013-06-22', '2013-06-22 13:02:09', 1),
(148, 7, '2013-06-22', '2013-06-22 13:02:09', 1),
(149, 136, '2013-06-22', '2013-06-22 13:02:15', 1),
(150, 136, '2013-06-22', '2013-06-22 13:04:47', 1),
(151, 136, '2013-06-22', '2013-06-22 13:06:24', 1),
(152, 136, '2013-06-22', '2013-06-22 13:06:25', 1),
(153, 136, '2013-06-22', '2013-06-22 13:07:11', 1),
(154, 136, '2013-06-22', '2013-06-22 13:07:31', 1),
(155, 136, '2013-06-22', '2013-06-22 13:07:33', 1),
(156, 136, '2013-06-22', '2013-06-22 13:07:58', 1),
(157, 136, '2013-06-22', '2013-06-22 13:08:48', 1),
(158, 136, '2013-06-22', '2013-06-22 13:08:49', 1),
(159, 136, '2013-06-22', '2013-06-22 13:09:47', 1),
(160, 136, '2013-06-22', '2013-06-22 13:09:54', 1),
(161, 2, '2013-06-22', '2013-06-22 13:10:04', 1),
(162, 32, '2013-06-22', '2013-06-22 13:10:06', 1),
(163, 32, '2013-06-22', '2013-06-22 13:10:13', 1),
(164, 32, '2013-06-22', '2013-06-22 13:10:17', 1),
(165, 32, '2013-06-22', '2013-06-22 13:10:19', 1),
(166, 32, '2013-06-22', '2013-06-22 13:10:22', 1),
(167, 32, '2013-06-22', '2013-06-22 13:10:28', 1),
(168, 101, '2013-06-22', '2013-06-22 13:10:31', 1),
(169, 32, '2013-06-22', '2013-06-22 13:10:35', 1),
(170, 32, '2013-06-22', '2013-06-22 13:10:39', 1),
(171, 32, '2013-06-22', '2013-06-22 13:11:00', 1),
(172, 2, '2013-06-22', '2013-06-22 13:11:04', 1),
(173, 34, '2013-06-22', '2013-06-22 13:11:26', 1),
(174, 2, '2013-06-22', '2013-06-22 13:11:29', 1),
(175, 11, '2013-06-22', '2013-06-22 13:11:31', 1),
(176, 2, '2013-06-22', '2013-06-22 13:11:33', 1),
(177, 28, '2013-06-22', '2013-06-22 13:11:35', 1),
(178, 2, '2013-06-22', '2013-06-22 13:11:38', 1),
(179, 32, '2013-06-22', '2013-06-22 13:11:39', 1),
(180, 32, '2013-06-22', '2013-06-22 13:11:46', 1),
(181, 32, '2013-06-22', '2013-06-22 13:12:01', 1),
(182, 32, '2013-06-22', '2013-06-22 13:12:01', 1),
(183, 32, '2013-06-22', '2013-06-22 13:12:03', 1),
(184, 32, '2013-06-22', '2013-06-22 13:12:16', 1),
(185, 32, '2013-06-22', '2013-06-22 13:12:16', 1),
(186, 33, '2013-06-22', '2013-06-22 13:12:18', 1),
(187, 32, '2013-06-22', '2013-06-22 13:12:20', 1),
(188, 2, '2013-06-22', '2013-06-22 13:12:49', 1),
(189, 4, '2013-06-22', '2013-06-22 13:12:54', 1),
(190, 4, '2013-06-22', '2013-06-22 13:12:55', 1),
(191, 4, '2013-06-22', '2013-06-22 13:12:55', 1),
(192, 4, '2013-06-22', '2013-06-22 13:13:02', 1),
(193, 4, '2013-06-22', '2013-06-22 13:13:09', 1),
(194, 4, '2013-06-22', '2013-06-22 13:13:16', 1),
(195, 5, '2013-06-22', '2013-06-22 13:13:16', 1),
(196, 2, '2013-06-22', '2013-06-22 13:13:22', 1),
(197, 51, '2013-06-22', '2013-06-22 13:14:01', 1),
(198, 68, '2013-06-22', '2013-06-22 13:14:11', 1),
(199, 68, '2013-06-22', '2013-06-22 13:14:14', 1),
(200, 68, '2013-06-22', '2013-06-22 13:14:14', 1),
(201, 136, '2013-06-22', '2013-06-22 13:14:20', 1),
(202, 136, '2013-06-22', '2013-06-22 13:14:23', 1),
(203, 2, '2013-06-22', '2013-06-22 13:14:28', 1),
(204, 51, '2013-06-22', '2013-06-22 13:14:30', 1),
(205, 67, '2013-06-22', '2013-06-22 13:14:31', 1),
(206, 67, '2013-06-22', '2013-06-22 13:14:44', 1),
(207, 67, '2013-06-22', '2013-06-22 13:14:44', 1),
(208, 136, '2013-06-22', '2013-06-22 13:14:48', 1),
(209, 136, '2013-06-22', '2013-06-22 13:14:50', 1),
(210, 136, '2013-06-22', '2013-06-22 13:16:09', 1),
(211, 136, '2013-06-22', '2013-06-22 13:16:12', 1),
(212, 136, '2013-06-22', '2013-06-22 13:16:13', 1),
(213, 138, '2013-06-22', '2013-06-22 13:16:23', 1),
(214, 2, '2013-06-22', '2013-06-22 13:18:45', 1),
(215, 2, '2013-06-22', '2013-06-22 13:42:10', 1),
(216, 138, '2013-06-22', '2013-06-22 13:43:25', 1),
(217, 2, '2013-06-22', '2013-06-22 13:43:27', 1),
(218, 1, '2013-06-22', '2013-06-22 13:43:30', 1),
(219, 136, '2013-06-22', '2013-06-22 13:43:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pagethemes`
--

DROP TABLE IF EXISTS `pagethemes`;
CREATE TABLE IF NOT EXISTS `pagethemes` (
  `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ptHandle` varchar(64) NOT NULL,
  `ptName` varchar(255) DEFAULT NULL,
  `ptDescription` text,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ptID`),
  UNIQUE KEY `ptHandle` (`ptHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pagethemes`
--

INSERT INTO `pagethemes` (`ptID`, `ptHandle`, `ptName`, `ptDescription`, `pkgID`) VALUES
(5, 'corin', 'Corin', 'Corin''s theme for Concrete5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pagethemestyles`
--

DROP TABLE IF EXISTS `pagethemestyles`;
CREATE TABLE IF NOT EXISTS `pagethemestyles` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptsHandle` varchar(128) NOT NULL,
  `ptsValue` longtext,
  `ptsType` varchar(32) NOT NULL,
  PRIMARY KEY (`ptID`,`ptsHandle`,`ptsType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pagetypeattributes`
--

DROP TABLE IF EXISTS `pagetypeattributes`;
CREATE TABLE IF NOT EXISTS `pagetypeattributes` (
  `ctID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pagetypeattributes`
--

INSERT INTO `pagetypeattributes` (`ctID`, `akID`) VALUES
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(9, 15),
(9, 16);

-- --------------------------------------------------------

--
-- Table structure for table `pagetypes`
--

DROP TABLE IF EXISTS `pagetypes`;
CREATE TABLE IF NOT EXISTS `pagetypes` (
  `ctID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctHandle` varchar(32) NOT NULL,
  `ctIcon` varchar(128) DEFAULT NULL,
  `ctName` varchar(90) NOT NULL,
  `ctIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ctID`),
  UNIQUE KEY `ctHandle` (`ctHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pagetypes`
--

INSERT INTO `pagetypes` (`ctID`, `ctHandle`, `ctIcon`, `ctName`, `ctIsInternal`, `pkgID`) VALUES
(1, 'core_stack', 'main.png', 'Stack', 1, 0),
(2, 'dashboard_primary_five', 'main.png', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', 'main.png', 'Dashboard Header + Four Column', 1, 0),
(4, 'blog_entry', 'template1.png', 'Blog Entry', 0, 0),
(5, 'full', 'main.png', 'Full', 0, 0),
(6, 'left_sidebar', 'template1.png', 'Left Sidebar', 0, 0),
(7, 'right_sidebar', 'right_sidebar.png', 'Right Sidebar', 0, 0),
(8, 'work_index', 'template2.png', 'Work Index', 0, 0),
(9, 'work_entry', 'main.png', 'Work Entry', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pageworkflowprogress`
--

DROP TABLE IF EXISTS `pageworkflowprogress`;
CREATE TABLE IF NOT EXISTS `pageworkflowprogress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cID`,`wpID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccess`
--

DROP TABLE IF EXISTS `permissionaccess`;
CREATE TABLE IF NOT EXISTS `permissionaccess` (
  `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `paIsInUse` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `permissionaccess`
--

INSERT INTO `permissionaccess` (`paID`, `paIsInUse`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentities`
--

DROP TABLE IF EXISTS `permissionaccessentities`;
CREATE TABLE IF NOT EXISTS `permissionaccessentities` (
  `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`peID`),
  KEY `petID` (`petID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `permissionaccessentities`
--

INSERT INTO `permissionaccessentities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 5),
(5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitygroups`
--

DROP TABLE IF EXISTS `permissionaccessentitygroups`;
CREATE TABLE IF NOT EXISTS `permissionaccessentitygroups` (
  `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pegID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `permissionaccessentitygroups`
--

INSERT INTO `permissionaccessentitygroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitygroupsets`
--

DROP TABLE IF EXISTS `permissionaccessentitygroupsets`;
CREATE TABLE IF NOT EXISTS `permissionaccessentitygroupsets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`gsID`),
  KEY `gsID` (`gsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitytypecategories`
--

DROP TABLE IF EXISTS `permissionaccessentitytypecategories`;
CREATE TABLE IF NOT EXISTS `permissionaccessentitytypecategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petID`,`pkCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissionaccessentitytypecategories`
--

INSERT INTO `permissionaccessentitytypecategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(2, 1),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(3, 1),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(4, 1),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(5, 1),
(6, 6),
(6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentitytypes`
--

DROP TABLE IF EXISTS `permissionaccessentitytypes`;
CREATE TABLE IF NOT EXISTS `permissionaccessentitytypes` (
  `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `petHandle` varchar(255) NOT NULL,
  `petName` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`petID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `permissionaccessentitytypes`
--

INSERT INTO `permissionaccessentitytypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessentityusers`
--

DROP TABLE IF EXISTS `permissionaccessentityusers`;
CREATE TABLE IF NOT EXISTS `permissionaccessentityusers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`peID`,`uID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccesslist`
--

DROP TABLE IF EXISTS `permissionaccesslist`;
CREATE TABLE IF NOT EXISTS `permissionaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`),
  KEY `accessType` (`accessType`),
  KEY `peID` (`peID`),
  KEY `peID_accessType` (`peID`,`accessType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissionaccesslist`
--

INSERT INTO `permissionaccesslist` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 1, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 1, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(28, 1, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 1, 0, 10),
(32, 1, 0, 10),
(33, 2, 0, 10),
(34, 2, 0, 10),
(34, 3, 0, 10),
(35, 2, 0, 10),
(36, 1, 0, 10),
(36, 2, 0, 10),
(37, 1, 0, 10),
(38, 1, 0, 10),
(39, 1, 0, 10),
(40, 1, 0, 10),
(41, 1, 0, 10),
(42, 1, 0, 10),
(43, 1, 0, 10),
(44, 1, 0, 10),
(45, 2, 0, 10),
(46, 1, 0, 10),
(47, 1, 0, 10),
(48, 1, 0, 10),
(49, 1, 0, 10),
(50, 1, 0, 10),
(51, 1, 0, 10),
(52, 1, 0, 10),
(53, 1, 0, 10),
(54, 1, 0, 10),
(55, 1, 0, 10),
(56, 1, 0, 10),
(57, 1, 0, 10),
(58, 1, 0, 10),
(59, 1, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `permissionaccessworkflows`
--

DROP TABLE IF EXISTS `permissionaccessworkflows`;
CREATE TABLE IF NOT EXISTS `permissionaccessworkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`wfID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissionassignments`
--

DROP TABLE IF EXISTS `permissionassignments`;
CREATE TABLE IF NOT EXISTS `permissionassignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`pkID`),
  KEY `pkID` (`pkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissionassignments`
--

INSERT INTO `permissionassignments` (`paID`, `pkID`) VALUES
(1, 16),
(2, 17),
(3, 54),
(4, 55),
(5, 56),
(6, 57),
(7, 59),
(8, 60),
(9, 61),
(10, 62),
(11, 63),
(12, 65),
(13, 66),
(14, 67),
(15, 68),
(16, 69),
(17, 70);

-- --------------------------------------------------------

--
-- Table structure for table `permissiondurationobjects`
--

DROP TABLE IF EXISTS `permissiondurationobjects`;
CREATE TABLE IF NOT EXISTS `permissiondurationobjects` (
  `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pdObject` text,
  PRIMARY KEY (`pdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permissionkeycategories`
--

DROP TABLE IF EXISTS `permissionkeycategories`;
CREATE TABLE IF NOT EXISTS `permissionkeycategories` (
  `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `permissionkeycategories`
--

INSERT INTO `permissionkeycategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'composer_page', NULL),
(5, 'user', NULL),
(6, 'file_set', NULL),
(7, 'file', NULL),
(8, 'area', NULL),
(9, 'block_type', NULL),
(10, 'block', NULL),
(11, 'admin', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace_newsflow', NULL),
(14, 'basic_workflow', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissionkeys`
--

DROP TABLE IF EXISTS `permissionkeys`;
CREATE TABLE IF NOT EXISTS `permissionkeys` (
  `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pkHandle` varchar(255) NOT NULL,
  `pkName` varchar(255) NOT NULL,
  `pkCanTriggerWorkflow` int(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` int(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`pkID`),
  UNIQUE KEY `akHandle` (`pkHandle`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `permissionkeys`
--

INSERT INTO `permissionkeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(4, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(5, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(6, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(7, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(8, 'edit_page_type', 'Change Page Type', 0, 0, 'Ability to change just the page type for this page, also check out Theme permissions.', 1, 0),
(9, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(10, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site''s Trash.', 1, 0),
(11, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(12, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(13, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(14, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(15, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(16, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(17, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 9, 0),
(18, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 8, 0),
(19, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 8, 0),
(20, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 8, 0),
(21, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 8, 0),
(22, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 8, 0),
(23, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area''s custom CSS.', 8, 0),
(24, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 8, 0),
(25, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 8, 0),
(26, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 8, 0),
(27, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 10, 0),
(28, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 10, 0),
(29, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 10, 0),
(30, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 10, 0),
(31, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 10, 0),
(32, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 10, 0),
(33, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 10, 0),
(34, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 6, 0),
(35, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 6, 0),
(36, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 6, 0),
(37, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 6, 0),
(38, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 6, 0),
(39, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 6, 0),
(40, 'delete_file_set', 'Delete File Set', 0, 0, '', 6, 0),
(41, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 6, 0),
(42, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 6, 0),
(43, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 7, 0),
(44, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 7, 0),
(45, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 7, 0),
(46, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 7, 0),
(47, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 7, 0),
(48, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 7, 0),
(49, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 7, 0),
(50, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(51, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(52, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(53, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(54, 'access_user_search', 'Access User Search', 0, 1, '', 5, 0),
(55, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 5, 0),
(56, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 5, 0),
(57, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 5, 0),
(58, 'sudo', 'Sign in as User', 0, 0, NULL, 5, 0),
(59, 'delete_user', 'Delete User', 0, 0, NULL, 5, 0),
(60, 'access_group_search', 'Access Group Search', 0, 0, '', 5, 0),
(61, 'edit_groups', 'Edit Groups', 0, 0, '', 5, 0),
(62, 'assign_user_groups', 'Assign Groups to User', 0, 1, '', 5, 0),
(63, 'backup', 'Perform Backups', 0, 0, NULL, 11, 0),
(64, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 11, 0),
(65, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(66, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 11, 0),
(67, 'empty_trash', 'Empty Trash', 0, 0, NULL, 11, 0),
(68, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(69, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(70, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pilecontents`
--

DROP TABLE IF EXISTS `pilecontents`;
CREATE TABLE IF NOT EXISTS `pilecontents` (
  `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `piles`
--

DROP TABLE IF EXISTS `piles`;
CREATE TABLE IF NOT EXISTS `piles` (
  `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) DEFAULT NULL,
  `state` varchar(64) NOT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `signuprequests`
--

DROP TABLE IF EXISTS `signuprequests`;
CREATE TABLE IF NOT EXISTS `signuprequests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `index_ipFrom` (`ipFrom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `stacks`
--

DROP TABLE IF EXISTS `stacks`;
CREATE TABLE IF NOT EXISTS `stacks` (
  `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stName` varchar(255) NOT NULL,
  `stType` int(1) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`stID`),
  KEY `stType` (`stType`),
  KEY `stName` (`stName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `stacks`
--

INSERT INTO `stacks` (`stID`, `stName`, `stType`, `cID`) VALUES
(1, 'Header Nav', 20, 121),
(2, 'Side Nav', 0, 122),
(3, 'Site Name', 20, 123);

-- --------------------------------------------------------

--
-- Table structure for table `systemantispamlibraries`
--

DROP TABLE IF EXISTS `systemantispamlibraries`;
CREATE TABLE IF NOT EXISTS `systemantispamlibraries` (
  `saslHandle` varchar(64) NOT NULL,
  `saslName` varchar(255) DEFAULT NULL,
  `saslIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`saslHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `systemcaptchalibraries`
--

DROP TABLE IF EXISTS `systemcaptchalibraries`;
CREATE TABLE IF NOT EXISTS `systemcaptchalibraries` (
  `sclHandle` varchar(64) NOT NULL,
  `sclName` varchar(255) DEFAULT NULL,
  `sclIsActive` int(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`sclHandle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `systemcaptchalibraries`
--

INSERT INTO `systemcaptchalibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `systemnotifications`
--

DROP TABLE IF EXISTS `systemnotifications`;
CREATE TABLE IF NOT EXISTS `systemnotifications` (
  `snID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `snTypeID` int(3) unsigned NOT NULL DEFAULT '0',
  `snURL` text,
  `snURL2` text,
  `snDateTime` datetime NOT NULL,
  `snIsArchived` int(1) NOT NULL DEFAULT '0',
  `snIsNew` int(1) NOT NULL DEFAULT '0',
  `snTitle` varchar(255) DEFAULT NULL,
  `snDescription` text,
  `snBody` text,
  PRIMARY KEY (`snID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userattributekeys`
--

DROP TABLE IF EXISTS `userattributekeys`;
CREATE TABLE IF NOT EXISTS `userattributekeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userattributekeys`
--

INSERT INTO `userattributekeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(10, 0, 0, 1, 0, 1, 0, 1, 1),
(11, 0, 0, 1, 0, 1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `userattributevalues`
--

DROP TABLE IF EXISTS `userattributevalues`;
CREATE TABLE IF NOT EXISTS `userattributevalues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uID`,`akID`,`avID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userbannedips`
--

DROP TABLE IF EXISTS `userbannedips`;
CREATE TABLE IF NOT EXISTS `userbannedips` (
  `ipFrom` int(10) unsigned NOT NULL DEFAULT '0',
  `ipTo` int(10) unsigned NOT NULL DEFAULT '0',
  `banCode` int(1) unsigned NOT NULL DEFAULT '1',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `isManual` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipFrom`,`ipTo`),
  KEY `ipFrom` (`ipFrom`),
  KEY `ipTo` (`ipTo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

DROP TABLE IF EXISTS `usergroups`;
CREATE TABLE IF NOT EXISTS `usergroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`uID`,`gID`),
  KEY `uID` (`uID`),
  KEY `gID` (`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `useropenids`
--

DROP TABLE IF EXISTS `useropenids`;
CREATE TABLE IF NOT EXISTS `useropenids` (
  `uID` int(10) unsigned NOT NULL,
  `uOpenID` varchar(255) NOT NULL,
  PRIMARY KEY (`uOpenID`),
  KEY `uID` (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissionassigngroupaccesslist`
--

DROP TABLE IF EXISTS `userpermissionassigngroupaccesslist`;
CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissionassigngroupaccesslistcustom`
--

DROP TABLE IF EXISTS `userpermissionassigngroupaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `userpermissionassigngroupaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissioneditpropertyaccesslist`
--

DROP TABLE IF EXISTS `userpermissioneditpropertyaccesslist`;
CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` int(1) unsigned DEFAULT '0',
  `uEmail` int(1) unsigned DEFAULT '0',
  `uPassword` int(1) unsigned DEFAULT '0',
  `uAvatar` int(1) unsigned DEFAULT '0',
  `uTimezone` int(1) unsigned DEFAULT '0',
  `uDefaultLanguage` int(1) unsigned DEFAULT '0',
  `attributePermission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissioneditpropertyattributeaccesslistcustom`
--

DROP TABLE IF EXISTS `userpermissioneditpropertyattributeaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `userpermissioneditpropertyattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissionusersearchaccesslist`
--

DROP TABLE IF EXISTS `userpermissionusersearchaccesslist`;
CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissionusersearchaccesslistcustom`
--

DROP TABLE IF EXISTS `userpermissionusersearchaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `userpermissionusersearchaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`gID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissionviewattributeaccesslist`
--

DROP TABLE IF EXISTS `userpermissionviewattributeaccesslist`;
CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslist` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`paID`,`peID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userpermissionviewattributeaccesslistcustom`
--

DROP TABLE IF EXISTS `userpermissionviewattributeaccesslistcustom`;
CREATE TABLE IF NOT EXISTS `userpermissionviewattributeaccesslistcustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`paID`,`peID`,`akID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `userprivatemessages`
--

DROP TABLE IF EXISTS `userprivatemessages`;
CREATE TABLE IF NOT EXISTS `userprivatemessages` (
  `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) NOT NULL,
  `msgBody` text,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userprivatemessagesto`
--

DROP TABLE IF EXISTS `userprivatemessagesto`;
CREATE TABLE IF NOT EXISTS `userprivatemessagesto` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` int(1) NOT NULL DEFAULT '0',
  `msgIsUnread` int(1) NOT NULL DEFAULT '0',
  `msgIsReplied` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgID`,`uID`,`uAuthorID`),
  KEY `uID` (`uID`),
  KEY `uAuthorID` (`uAuthorID`),
  KEY `msgFolderID` (`msgMailboxID`),
  KEY `msgIsNew` (`msgIsNew`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uName` varchar(64) NOT NULL,
  `uEmail` varchar(64) NOT NULL,
  `uPassword` varchar(255) NOT NULL,
  `uIsActive` varchar(1) NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(4) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` bigint(10) NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) DEFAULT NULL,
  `uDefaultLanguage` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`uID`),
  UNIQUE KEY `uName` (`uName`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'thealscott@gmail.com', '4f3de1d75f6f030cb4c241f73bb2db34', '1', -1, 1, '2013-06-22 10:54:12', 0, 1371908530, 1371898452, 2130706433, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usersearchindexattributes`
--

DROP TABLE IF EXISTS `usersearchindexattributes`;
CREATE TABLE IF NOT EXISTS `usersearchindexattributes` (
  `uID` int(11) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(4) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usersfriends`
--

DROP TABLE IF EXISTS `usersfriends`;
CREATE TABLE IF NOT EXISTS `usersfriends` (
  `ufID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `status` varchar(64) NOT NULL,
  `friendUID` int(10) unsigned DEFAULT NULL,
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ufID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `uservalidationhashes`
--

DROP TABLE IF EXISTS `uservalidationhashes`;
CREATE TABLE IF NOT EXISTS `uservalidationhashes` (
  `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) NOT NULL,
  `type` int(4) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`uvhID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflowprogress`
--

DROP TABLE IF EXISTS `workflowprogress`;
CREATE TABLE IF NOT EXISTS `workflowprogress` (
  `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(10) NOT NULL DEFAULT '0',
  `wrID` int(1) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`wpID`),
  KEY `wrID` (`wrID`),
  KEY `wpIsCompleted` (`wpIsCompleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflowprogresscategories`
--

DROP TABLE IF EXISTS `workflowprogresscategories`;
CREATE TABLE IF NOT EXISTS `workflowprogresscategories` (
  `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpCategoryHandle` varchar(255) NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wpCategoryID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `workflowprogresscategories`
--

INSERT INTO `workflowprogresscategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workflowprogresshistory`
--

DROP TABLE IF EXISTS `workflowprogresshistory`;
CREATE TABLE IF NOT EXISTS `workflowprogresshistory` (
  `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` text,
  PRIMARY KEY (`wphID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `workflowprogresshistory`
--

INSERT INTO `workflowprogresshistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2013-06-22 11:19:46', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"136";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"1";}'),
(2, 2, '2013-06-22 11:21:31', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"138";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"2";}'),
(3, 3, '2013-06-22 11:22:16', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"139";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"3";}'),
(4, 4, '2013-06-22 11:23:12', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"136";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"4";}'),
(5, 5, '2013-06-22 11:37:59', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"138";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"5";}'),
(6, 6, '2013-06-22 11:38:14', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"139";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"6";}'),
(7, 7, '2013-06-22 11:40:53', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"136";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"7";}'),
(8, 8, '2013-06-22 11:41:28', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"138";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"8";}'),
(9, 9, '2013-06-22 12:37:03', 'O:29:"DeletePagePageWorkflowRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"10";s:3:"cID";s:3:"129";s:4:"wrID";s:1:"9";}'),
(10, 10, '2013-06-22 12:52:41', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"138";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"10";}'),
(11, 11, '2013-06-22 12:52:51', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"139";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"11";}'),
(12, 12, '2013-06-22 12:53:30', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"138";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"12";}'),
(13, 13, '2013-06-22 12:54:06', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"139";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"13";}'),
(14, 14, '2013-06-22 12:54:49', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"140";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"14";}'),
(15, 15, '2013-06-22 12:55:52', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"141";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"15";}'),
(16, 16, '2013-06-22 12:56:01', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"138";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"16";}'),
(17, 17, '2013-06-22 12:56:06', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"139";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"17";}'),
(18, 18, '2013-06-22 12:57:00', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"142";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"18";}'),
(19, 19, '2013-06-22 12:57:18', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"141";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"19";}'),
(20, 20, '2013-06-22 12:58:08', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"143";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"20";}'),
(21, 21, '2013-06-22 12:59:09', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"144";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"21";}'),
(22, 22, '2013-06-22 12:59:44', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"145";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"22";}'),
(23, 23, '2013-06-22 13:00:28', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"146";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"23";}'),
(24, 24, '2013-06-22 13:01:19', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"147";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"24";}'),
(25, 25, '2013-06-22 13:02:08', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"148";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"25";}'),
(26, 26, '2013-06-22 13:07:54', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"136";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"26";}'),
(27, 27, '2013-06-22 13:09:54', 'O:30:"ApprovePagePageWorkflowRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"12";s:3:"cID";s:3:"136";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"27";}');

-- --------------------------------------------------------

--
-- Table structure for table `workflowrequestobjects`
--

DROP TABLE IF EXISTS `workflowrequestobjects`;
CREATE TABLE IF NOT EXISTS `workflowrequestobjects` (
  `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wrObject` text,
  PRIMARY KEY (`wrID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflows`
--

DROP TABLE IF EXISTS `workflows`;
CREATE TABLE IF NOT EXISTS `workflows` (
  `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wfName` varchar(255) DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wfID`),
  UNIQUE KEY `wfName` (`wfName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workflowtypes`
--

DROP TABLE IF EXISTS `workflowtypes`;
CREATE TABLE IF NOT EXISTS `workflowtypes` (
  `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wftHandle` varchar(64) NOT NULL,
  `wftName` varchar(128) NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`wftID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `workflowtypes`
--

INSERT INTO `workflowtypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
