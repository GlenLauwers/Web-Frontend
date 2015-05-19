-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Gegenereerd op: 17 mei 2015 om 16:25
-- Serverversie: 5.6.20
-- PHP-versie: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `vocht_in_uw_woning`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaLayoutColumns`
--

CREATE TABLE IF NOT EXISTS `AreaLayoutColumns` (
`arLayoutColumnID` int(10) unsigned NOT NULL,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `arID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `AreaLayoutColumns`
--

INSERT INTO `AreaLayoutColumns` (`arLayoutColumnID`, `arLayoutID`, `arLayoutColumnIndex`, `arID`, `arLayoutColumnDisplayID`) VALUES
(1, 1, 0, 387, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaLayoutCustomColumns`
--

CREATE TABLE IF NOT EXISTS `AreaLayoutCustomColumns` (
`arLayoutColumnID` int(10) unsigned NOT NULL,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `AreaLayoutCustomColumns`
--

INSERT INTO `AreaLayoutCustomColumns` (`arLayoutColumnID`, `arLayoutColumnWidth`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaLayoutPresets`
--

CREATE TABLE IF NOT EXISTS `AreaLayoutPresets` (
`arLayoutPresetID` int(10) unsigned NOT NULL,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaLayouts`
--

CREATE TABLE IF NOT EXISTS `AreaLayouts` (
`arLayoutID` int(10) unsigned NOT NULL,
  `arLayoutSpacing` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `AreaLayouts`
--

INSERT INTO `AreaLayouts` (`arLayoutID`, `arLayoutSpacing`, `arLayoutIsCustom`, `arLayoutMaxColumns`, `arLayoutUsesThemeGridFramework`) VALUES
(1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaLayoutThemeGridColumns`
--

CREATE TABLE IF NOT EXISTS `AreaLayoutThemeGridColumns` (
`arLayoutColumnID` int(10) unsigned NOT NULL,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `AreaPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaPermissionBlockTypeAccessList`
--

CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaPermissionBlockTypeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Areas`
--

CREATE TABLE IF NOT EXISTS `Areas` (
`arID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) unsigned NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=388 ;

--
-- Gegevens worden geëxporteerd voor tabel `Areas`
--

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1, 124, 'Main', 0, 0, 0, 0),
(2, 125, 'Primary', 0, 0, 0, 0),
(3, 125, 'Secondary 1', 0, 0, 0, 0),
(4, 125, 'Secondary 2', 0, 0, 0, 0),
(5, 125, 'Secondary 3', 0, 0, 0, 0),
(6, 125, 'Secondary 4', 0, 0, 0, 0),
(7, 125, 'Secondary 5', 0, 0, 0, 0),
(8, 142, 'Main', 0, 0, 0, 0),
(9, 143, 'Main', 0, 0, 0, 0),
(10, 1, 'Header Site Title', 0, 0, 1, 0),
(11, 144, 'Main', 0, 0, 0, 0),
(12, 1, 'Header Navigation', 0, 0, 1, 0),
(13, 1, 'Main', 0, 0, 0, 0),
(14, 1, 'Page Footer', 0, 0, 0, 0),
(15, 145, 'Main', 0, 0, 0, 0),
(16, 1, 'Footer Legal', 0, 0, 1, 0),
(17, 146, 'Main', 0, 0, 0, 0),
(18, 1, 'Footer Navigation', 0, 0, 1, 0),
(19, 147, 'Main', 0, 0, 0, 0),
(20, 1, 'Footer Contact', 0, 0, 1, 0),
(21, 148, 'Main', 0, 0, 0, 0),
(22, 1, 'Header Search', 0, 0, 1, 0),
(23, 149, 'Main', 0, 0, 0, 0),
(24, 1, 'Footer Site Title', 0, 0, 1, 0),
(25, 150, 'Main', 0, 0, 0, 0),
(26, 1, 'Footer Social', 0, 0, 1, 0),
(27, 1, 'Area Name', 0, 0, 0, 0),
(28, 1, 'vochtproblemen_home', 0, 0, 0, 0),
(29, 1, 'realisaties_home', 0, 0, 0, 0),
(30, 1, 'over_ons_home', 0, 0, 0, 0),
(31, 1, 'afbeelding_vochtprobleem_home', 0, 0, 0, 0),
(32, 1, 'vochtproblemen_img_home', 0, 0, 0, 0),
(33, 1, 'realisaties_img_home', 0, 0, 0, 0),
(34, 1, 'over_ons_img_home', 0, 0, 0, 0),
(35, 1, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(36, 1, 'realisaties_titel_home', 0, 0, 0, 0),
(37, 139, 'Main', 0, 0, 0, 0),
(38, 151, 'Main', 0, 0, 0, 0),
(39, 151, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(40, 151, 'vochtproblemen_img_home', 0, 0, 0, 0),
(41, 151, 'vochtproblemen_home', 0, 0, 0, 0),
(42, 151, 'realisaties_titel_home', 0, 0, 0, 0),
(43, 151, 'realisaties_img_home', 0, 0, 0, 0),
(44, 151, 'realisaties_home', 0, 0, 0, 0),
(45, 151, 'over_ons_img_home', 0, 0, 0, 0),
(46, 151, 'over_ons_home', 0, 0, 0, 0),
(47, 1, 'over_ons_titel_home', 0, 0, 0, 0),
(48, 1, 'vochtprobleem_img_home', 0, 0, 0, 0),
(49, 1, 'navigatie', 0, 0, 0, 0),
(50, 152, 'Main', 0, 0, 0, 0),
(51, 152, 'navigatie', 0, 0, 0, 0),
(52, 152, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(53, 152, 'vochtprobleem_img_home', 0, 0, 0, 0),
(54, 152, 'vochtproblemen_home', 0, 0, 0, 0),
(55, 152, 'realisaties_titel_home', 0, 0, 0, 0),
(56, 152, 'realisaties_img_home', 0, 0, 0, 0),
(57, 152, 'realisaties_home', 0, 0, 0, 0),
(58, 152, 'over_ons_titel_home', 0, 0, 0, 0),
(59, 152, 'over_ons_img_home', 0, 0, 0, 0),
(60, 152, 'over_ons_home', 0, 0, 0, 0),
(61, 153, 'Main', 0, 0, 0, 0),
(62, 153, 'navigatie', 0, 0, 0, 0),
(63, 153, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(64, 153, 'vochtprobleem_img_home', 0, 0, 0, 0),
(65, 153, 'vochtproblemen_home', 0, 0, 0, 0),
(66, 153, 'realisaties_titel_home', 0, 0, 0, 0),
(67, 153, 'realisaties_img_home', 0, 0, 0, 0),
(68, 153, 'realisaties_home', 0, 0, 0, 0),
(69, 153, 'over_ons_titel_home', 0, 0, 0, 0),
(70, 153, 'over_ons_img_home', 0, 0, 0, 0),
(71, 153, 'over_ons_home', 0, 0, 0, 0),
(72, 154, 'Main', 0, 0, 0, 0),
(73, 154, 'navigatie', 0, 0, 0, 0),
(74, 154, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(75, 154, 'vochtprobleem_img_home', 0, 0, 0, 0),
(76, 154, 'vochtproblemen_home', 0, 0, 0, 0),
(77, 154, 'realisaties_titel_home', 0, 0, 0, 0),
(78, 154, 'realisaties_img_home', 0, 0, 0, 0),
(79, 154, 'realisaties_home', 0, 0, 0, 0),
(80, 154, 'over_ons_titel_home', 0, 0, 0, 0),
(81, 154, 'over_ons_img_home', 0, 0, 0, 0),
(82, 154, 'over_ons_home', 0, 0, 0, 0),
(83, 155, 'Main', 0, 0, 0, 0),
(84, 155, 'navigatie', 0, 0, 0, 0),
(85, 155, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(86, 155, 'vochtprobleem_img_home', 0, 0, 0, 0),
(87, 155, 'vochtproblemen_home', 0, 0, 0, 0),
(88, 155, 'realisaties_titel_home', 0, 0, 0, 0),
(89, 155, 'realisaties_img_home', 0, 0, 0, 0),
(90, 155, 'realisaties_home', 0, 0, 0, 0),
(91, 155, 'over_ons_titel_home', 0, 0, 0, 0),
(92, 155, 'over_ons_img_home', 0, 0, 0, 0),
(93, 155, 'over_ons_home', 0, 0, 0, 0),
(94, 157, 'Main', 0, 0, 0, 0),
(95, 157, 'navigatie', 0, 0, 0, 0),
(96, 157, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(97, 157, 'vochtprobleem_img_home', 0, 0, 0, 0),
(98, 157, 'vochtproblemen_home', 0, 0, 0, 0),
(99, 157, 'realisaties_titel_home', 0, 0, 0, 0),
(100, 157, 'realisaties_img_home', 0, 0, 0, 0),
(101, 157, 'realisaties_home', 0, 0, 0, 0),
(102, 157, 'over_ons_titel_home', 0, 0, 0, 0),
(103, 157, 'over_ons_img_home', 0, 0, 0, 0),
(104, 157, 'over_ons_home', 0, 0, 0, 0),
(105, 1, 'realisatie_link_home', 0, 0, 0, 0),
(106, 1, 'vochtproblemen_link_home', 0, 0, 0, 0),
(107, 1, 'over_ons_link_home', 0, 0, 0, 0),
(108, 159, 'Main', 0, 0, 0, 0),
(109, 159, 'navigatie', 0, 0, 0, 0),
(110, 159, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(111, 159, 'vochtprobleem_img_home', 0, 0, 0, 0),
(112, 159, 'vochtproblemen_home', 0, 0, 0, 0),
(113, 159, 'vochtproblemen_link_home', 0, 0, 0, 0),
(114, 159, 'realisaties_titel_home', 0, 0, 0, 0),
(115, 159, 'realisaties_img_home', 0, 0, 0, 0),
(116, 159, 'realisaties_home', 0, 0, 0, 0),
(117, 159, 'realisatie_link_home', 0, 0, 0, 0),
(118, 159, 'over_ons_titel_home', 0, 0, 0, 0),
(119, 159, 'over_ons_img_home', 0, 0, 0, 0),
(120, 159, 'over_ons_home', 0, 0, 0, 0),
(121, 159, 'over_ons_link_home', 0, 0, 0, 0),
(122, 153, 'vochtproblemen_link_home', 0, 0, 0, 0),
(123, 153, 'realisatie_link_home', 0, 0, 0, 0),
(124, 153, 'over_ons_link_home', 0, 0, 0, 0),
(125, 154, 'vochtproblemen_link_home', 0, 0, 0, 0),
(126, 154, 'realisatie_link_home', 0, 0, 0, 0),
(127, 154, 'over_ons_link_home', 0, 0, 0, 0),
(128, 1, 'carousel1_tekst_boven', 0, 0, 0, 0),
(129, 1, 'carousel1_foto', 0, 0, 0, 0),
(130, 1, 'carousel1_test_onder', 0, 0, 0, 0),
(131, 1, 'carousel1_test_boven', 0, 0, 0, 0),
(132, 1, 'carousel1_foto_onder', 0, 0, 0, 0),
(133, 1, 'carousel1_tekst', 0, 0, 0, 0),
(134, 1, 'carousel1_teks', 0, 0, 0, 0),
(135, 1, 'dgfgf', 0, 0, 0, 0),
(136, 1, 'carousel1dffoto', 0, 0, 0, 0),
(137, 1, 'carousel2_tekst', 0, 0, 0, 0),
(138, 1, 'carousel2_foto', 0, 0, 0, 0),
(139, 1, 'carousel3_tekst', 0, 0, 0, 0),
(140, 1, 'carousel3_foto', 0, 0, 0, 0),
(141, 1, 'carousel1', 0, 0, 0, 0),
(142, 1, 'titel_voorwaarde', 0, 0, 0, 0),
(143, 1, 'voorwaarde', 0, 0, 0, 0),
(144, 1, 'titel_adres', 0, 0, 0, 0),
(145, 1, 'adres', 0, 0, 0, 0),
(146, 1, 'expertise', 0, 0, 0, 0),
(147, 1, 'meer_info', 0, 0, 0, 0),
(148, 1, 'meer_info_vochtproblemen', 0, 0, 0, 0),
(149, 1, 'meer_info_realisaties', 0, 0, 0, 0),
(150, 1, 'meer_info_over_ons', 0, 0, 0, 0),
(151, 159, 'titel_voorwaarde', 0, 0, 0, 0),
(152, 159, 'voorwaarde', 0, 0, 0, 0),
(153, 159, 'titel_adres', 0, 0, 0, 0),
(154, 159, 'adres', 0, 0, 0, 0),
(155, 159, 'expertise', 0, 0, 0, 0),
(156, 159, 'titel', 0, 0, 0, 0),
(157, 159, 'ondertitel_1', 0, 0, 0, 0),
(158, 159, 'ondertitel_2', 0, 0, 0, 0),
(159, 159, 'ondertitel_3', 0, 0, 0, 0),
(160, 159, 'afbeelding_1', 0, 0, 0, 0),
(161, 159, 'tekst1', 0, 0, 0, 0),
(162, 159, 'link_1', 0, 0, 0, 0),
(163, 152, 'carousel1_tekst', 0, 0, 0, 0),
(164, 152, 'carousel1_foto', 0, 0, 0, 0),
(165, 152, 'carousel2_tekst', 0, 0, 0, 0),
(166, 152, 'carousel2_foto', 0, 0, 0, 0),
(167, 152, 'carousel3_tekst', 0, 0, 0, 0),
(168, 152, 'carousel3_foto', 0, 0, 0, 0),
(169, 152, 'meer_info_vochtproblemen', 0, 0, 0, 0),
(170, 152, 'meer_info_realisaties', 0, 0, 0, 0),
(171, 152, 'meer_info_over_ons', 0, 0, 0, 0),
(172, 152, 'titel_voorwaarde', 0, 0, 0, 0),
(173, 152, 'voorwaarde', 0, 0, 0, 0),
(174, 152, 'titel_adres', 0, 0, 0, 0),
(175, 152, 'adres', 0, 0, 0, 0),
(176, 152, 'expertise', 0, 0, 0, 0),
(177, 151, 'navigatie', 0, 0, 0, 0),
(178, 151, 'carousel1_tekst', 0, 0, 0, 0),
(179, 151, 'carousel1_foto', 0, 0, 0, 0),
(180, 151, 'carousel2_tekst', 0, 0, 0, 0),
(181, 151, 'carousel2_foto', 0, 0, 0, 0),
(182, 151, 'carousel3_tekst', 0, 0, 0, 0),
(183, 151, 'carousel3_foto', 0, 0, 0, 0),
(184, 151, 'vochtprobleem_img_home', 0, 0, 0, 0),
(185, 151, 'meer_info_vochtproblemen', 0, 0, 0, 0),
(186, 151, 'meer_info_realisaties', 0, 0, 0, 0),
(187, 151, 'over_ons_titel_home', 0, 0, 0, 0),
(188, 151, 'meer_info_over_ons', 0, 0, 0, 0),
(189, 151, 'titel_voorwaarde', 0, 0, 0, 0),
(190, 151, 'voorwaarde', 0, 0, 0, 0),
(191, 151, 'titel_adres', 0, 0, 0, 0),
(192, 151, 'adres', 0, 0, 0, 0),
(193, 151, 'expertise', 0, 0, 0, 0),
(194, 163, 'Main', 0, 0, 0, 0),
(195, 163, 'navigatie', 0, 0, 0, 0),
(196, 163, 'carousel1_tekst', 0, 0, 0, 0),
(197, 163, 'carousel1_foto', 0, 0, 0, 0),
(198, 163, 'carousel2_tekst', 0, 0, 0, 0),
(199, 163, 'carousel2_foto', 0, 0, 0, 0),
(200, 163, 'carousel3_tekst', 0, 0, 0, 0),
(201, 163, 'carousel3_foto', 0, 0, 0, 0),
(202, 163, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(203, 163, 'vochtprobleem_img_home', 0, 0, 0, 0),
(204, 163, 'vochtproblemen_home', 0, 0, 0, 0),
(205, 163, 'meer_info_vochtproblemen', 0, 0, 0, 0),
(206, 163, 'realisaties_titel_home', 0, 0, 0, 0),
(207, 163, 'realisaties_img_home', 0, 0, 0, 0),
(208, 163, 'realisaties_home', 0, 0, 0, 0),
(209, 163, 'meer_info_realisaties', 0, 0, 0, 0),
(210, 163, 'over_ons_titel_home', 0, 0, 0, 0),
(211, 163, 'over_ons_img_home', 0, 0, 0, 0),
(212, 163, 'over_ons_home', 0, 0, 0, 0),
(213, 163, 'meer_info_over_ons', 0, 0, 0, 0),
(214, 163, 'titel_voorwaarde', 0, 0, 0, 0),
(215, 163, 'voorwaarde', 0, 0, 0, 0),
(216, 163, 'titel_adres', 0, 0, 0, 0),
(217, 163, 'adres', 0, 0, 0, 0),
(218, 163, 'expertise', 0, 0, 0, 0),
(219, 159, 'tekst_1', 0, 0, 0, 0),
(220, 159, 'afbeelding_2', 0, 0, 0, 0),
(221, 159, 'tekst_2', 0, 0, 0, 0),
(222, 159, 'link_2', 0, 0, 0, 0),
(223, 159, 'afbeelding_3', 0, 0, 0, 0),
(224, 159, 'tekst_3', 0, 0, 0, 0),
(225, 159, 'link_3', 0, 0, 0, 0),
(226, 153, 'titel', 0, 0, 0, 0),
(227, 153, 'ondertitel_1', 0, 0, 0, 0),
(228, 153, 'afbeelding_1', 0, 0, 0, 0),
(229, 153, 'tekst_1', 0, 0, 0, 0),
(230, 153, 'link_1', 0, 0, 0, 0),
(231, 153, 'ondertitel_2', 0, 0, 0, 0),
(232, 153, 'afbeelding_2', 0, 0, 0, 0),
(233, 153, 'tekst_2', 0, 0, 0, 0),
(234, 153, 'link_2', 0, 0, 0, 0),
(235, 153, 'ondertitel_3', 0, 0, 0, 0),
(236, 153, 'afbeelding_3', 0, 0, 0, 0),
(237, 153, 'tekst_3', 0, 0, 0, 0),
(238, 153, 'link_3', 0, 0, 0, 0),
(239, 153, 'titel_voorwaarde', 0, 0, 0, 0),
(240, 153, 'voorwaarde', 0, 0, 0, 0),
(241, 153, 'titel_adres', 0, 0, 0, 0),
(242, 153, 'adres', 0, 0, 0, 0),
(243, 153, 'expertise', 0, 0, 0, 0),
(244, 152, 'titel', 0, 0, 0, 0),
(245, 152, 'tekst_1', 0, 0, 0, 0),
(246, 152, 'foto_1', 0, 0, 0, 0),
(247, 152, 'ondertitel_1', 0, 0, 0, 0),
(248, 152, 'foto_2', 0, 0, 0, 0),
(249, 152, 'tekst_2', 0, 0, 0, 0),
(250, 152, 'ondertitel_2', 0, 0, 0, 0),
(251, 152, 'foto_3', 0, 0, 0, 0),
(252, 152, 'tekst_3', 0, 0, 0, 0),
(253, 152, 'ondertitel_3', 0, 0, 0, 0),
(254, 152, 'foto_4', 0, 0, 0, 0),
(255, 152, 'tekst_4', 0, 0, 0, 0),
(256, 152, 'ondertitel_4', 0, 0, 0, 0),
(257, 152, 'foto_5', 0, 0, 0, 0),
(258, 152, 'tekst_5', 0, 0, 0, 0),
(259, 151, 'titel', 0, 0, 0, 0),
(260, 151, 'tekst_1', 0, 0, 0, 0),
(261, 151, 'foto_1', 0, 0, 0, 0),
(262, 151, 'ondertitel_1', 0, 0, 0, 0),
(263, 151, 'foto_2', 0, 0, 0, 0),
(264, 151, 'tekst_2', 0, 0, 0, 0),
(265, 151, 'ondertitel_2', 0, 0, 0, 0),
(266, 151, 'foto_3', 0, 0, 0, 0),
(267, 151, 'tekst_3', 0, 0, 0, 0),
(268, 151, 'ondertitel_3', 0, 0, 0, 0),
(269, 151, 'foto_4', 0, 0, 0, 0),
(270, 151, 'tekst_4', 0, 0, 0, 0),
(271, 151, 'ondertitel_4', 0, 0, 0, 0),
(272, 151, 'foto_5', 0, 0, 0, 0),
(273, 151, 'tekst_5', 0, 0, 0, 0),
(274, 163, 'titel', 0, 0, 0, 0),
(275, 163, 'tekst_1', 0, 0, 0, 0),
(276, 163, 'foto_1', 0, 0, 0, 0),
(277, 163, 'ondertitel_1', 0, 0, 0, 0),
(278, 163, 'foto_2', 0, 0, 0, 0),
(279, 163, 'tekst_2', 0, 0, 0, 0),
(280, 163, 'ondertitel_2', 0, 0, 0, 0),
(281, 163, 'foto_3', 0, 0, 0, 0),
(282, 163, 'tekst_3', 0, 0, 0, 0),
(283, 163, 'ondertitel_3', 0, 0, 0, 0),
(284, 163, 'foto_4', 0, 0, 0, 0),
(285, 163, 'tekst_4', 0, 0, 0, 0),
(286, 163, 'ondertitel_4', 0, 0, 0, 0),
(287, 163, 'foto_5', 0, 0, 0, 0),
(288, 163, 'tekst_5', 0, 0, 0, 0),
(289, 164, 'Main', 0, 0, 0, 0),
(290, 164, 'navigatie', 0, 0, 0, 0),
(291, 164, 'carousel1_tekst', 0, 0, 0, 0),
(292, 164, 'carousel1_foto', 0, 0, 0, 0),
(293, 164, 'carousel2_tekst', 0, 0, 0, 0),
(294, 164, 'carousel2_foto', 0, 0, 0, 0),
(295, 164, 'carousel3_tekst', 0, 0, 0, 0),
(296, 164, 'carousel3_foto', 0, 0, 0, 0),
(297, 164, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(298, 164, 'vochtprobleem_img_home', 0, 0, 0, 0),
(299, 164, 'vochtproblemen_home', 0, 0, 0, 0),
(300, 164, 'meer_info_vochtproblemen', 0, 0, 0, 0),
(301, 164, 'realisaties_titel_home', 0, 0, 0, 0),
(302, 164, 'realisaties_img_home', 0, 0, 0, 0),
(303, 164, 'realisaties_home', 0, 0, 0, 0),
(304, 164, 'meer_info_realisaties', 0, 0, 0, 0),
(305, 164, 'over_ons_titel_home', 0, 0, 0, 0),
(306, 164, 'over_ons_img_home', 0, 0, 0, 0),
(307, 164, 'over_ons_home', 0, 0, 0, 0),
(308, 164, 'meer_info_over_ons', 0, 0, 0, 0),
(309, 164, 'titel_voorwaarde', 0, 0, 0, 0),
(310, 164, 'voorwaarde', 0, 0, 0, 0),
(311, 164, 'titel_adres', 0, 0, 0, 0),
(312, 164, 'adres', 0, 0, 0, 0),
(313, 164, 'expertise', 0, 0, 0, 0),
(314, 165, 'Main', 0, 0, 0, 0),
(315, 165, 'navigatie', 0, 0, 0, 0),
(316, 165, 'carousel1_tekst', 0, 0, 0, 0),
(317, 165, 'carousel1_foto', 0, 0, 0, 0),
(318, 165, 'carousel2_tekst', 0, 0, 0, 0),
(319, 165, 'carousel2_foto', 0, 0, 0, 0),
(320, 165, 'carousel3_tekst', 0, 0, 0, 0),
(321, 165, 'carousel3_foto', 0, 0, 0, 0),
(322, 165, 'vochtprobleem_titel_home', 0, 0, 0, 0),
(323, 165, 'vochtprobleem_img_home', 0, 0, 0, 0),
(324, 165, 'vochtproblemen_home', 0, 0, 0, 0),
(325, 165, 'meer_info_vochtproblemen', 0, 0, 0, 0),
(326, 165, 'realisaties_titel_home', 0, 0, 0, 0),
(327, 165, 'realisaties_img_home', 0, 0, 0, 0),
(328, 165, 'realisaties_home', 0, 0, 0, 0),
(329, 165, 'meer_info_realisaties', 0, 0, 0, 0),
(330, 165, 'over_ons_titel_home', 0, 0, 0, 0),
(331, 165, 'over_ons_img_home', 0, 0, 0, 0),
(332, 165, 'over_ons_home', 0, 0, 0, 0),
(333, 165, 'meer_info_over_ons', 0, 0, 0, 0),
(334, 165, 'titel_voorwaarde', 0, 0, 0, 0),
(335, 165, 'voorwaarde', 0, 0, 0, 0),
(336, 165, 'titel_adres', 0, 0, 0, 0),
(337, 165, 'adres', 0, 0, 0, 0),
(338, 165, 'expertise', 0, 0, 0, 0),
(339, 154, 'foto_1', 0, 0, 0, 0),
(340, 154, 'titel_voorwaarde', 0, 0, 0, 0),
(341, 154, 'voorwaarde', 0, 0, 0, 0),
(342, 154, 'titel_adres', 0, 0, 0, 0),
(343, 154, 'adres', 0, 0, 0, 0),
(344, 154, 'expertise', 0, 0, 0, 0),
(345, 154, 'tekst_1', 0, 0, 0, 0),
(346, 154, 'tekst_2', 0, 0, 0, 0),
(347, 154, 'tekst_3', 0, 0, 0, 0),
(348, 154, 'tekst_4', 0, 0, 0, 0),
(349, 154, 'foto_2', 0, 0, 0, 0),
(350, 154, 'foto_3', 0, 0, 0, 0),
(351, 154, 'foto_4', 0, 0, 0, 0),
(352, 154, 'foto', 0, 0, 0, 0),
(353, 164, 'foto_1', 0, 0, 0, 0),
(354, 164, 'foto_2', 0, 0, 0, 0),
(355, 164, 'foto_3', 0, 0, 0, 0),
(356, 164, 'foto_4', 0, 0, 0, 0),
(357, 164, 'titel', 0, 0, 0, 0),
(358, 154, 'titel', 0, 0, 0, 0),
(359, 165, 'titel', 0, 0, 0, 0),
(360, 165, 'foto_1', 0, 0, 0, 0),
(361, 165, 'foto_2', 0, 0, 0, 0),
(362, 165, 'foto_3', 0, 0, 0, 0),
(363, 165, 'foto_4', 0, 0, 0, 0),
(364, 157, 'titel_voorwaarde', 0, 0, 0, 0),
(365, 157, 'voorwaarde', 0, 0, 0, 0),
(366, 157, 'titel_adres', 0, 0, 0, 0),
(367, 157, 'adres', 0, 0, 0, 0),
(368, 157, 'expertise', 0, 0, 0, 0),
(369, 157, 'titel', 0, 0, 0, 0),
(370, 157, 'carousel_1', 0, 0, 0, 0),
(371, 157, 'carousel_2', 0, 0, 0, 0),
(372, 157, 'ondertitel_1', 0, 0, 0, 0),
(373, 157, 'tekst_1', 0, 0, 0, 0),
(374, 157, 'ondertitel_2', 0, 0, 0, 0),
(375, 157, 'tekst_2', 0, 0, 0, 0),
(376, 157, 'carousel_3', 0, 0, 0, 0),
(377, 155, 'titel', 0, 0, 0, 0),
(378, 155, 'adres_1_boven', 0, 0, 0, 0),
(379, 155, 'adres_2_boven', 0, 0, 0, 0),
(380, 155, 'titel_voorwaarde', 0, 0, 0, 0),
(381, 155, 'voorwaarde', 0, 0, 0, 0),
(382, 155, 'titel_adres', 0, 0, 0, 0),
(383, 155, 'adres', 0, 0, 0, 0),
(384, 155, 'expertise', 0, 0, 0, 0),
(385, 155, 'map', 0, 0, 0, 0),
(386, 155, 'kaart', 0, 0, 0, 0),
(387, 151, 'foto_3 : 1', 0, 0, 0, 266);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atAddress`
--

CREATE TABLE IF NOT EXISTS `atAddress` (
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atAddressCustomCountries`
--

CREATE TABLE IF NOT EXISTS `atAddressCustomCountries` (
`atAddressCustomCountryID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atAddressSettings`
--

CREATE TABLE IF NOT EXISTS `atAddressSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akHasCustomCountries` tinyint(1) NOT NULL DEFAULT '0',
  `akDefaultCountry` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atBoolean`
--

CREATE TABLE IF NOT EXISTS `atBoolean` (
  `avID` int(10) unsigned NOT NULL,
  `value` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `atBoolean`
--

INSERT INTO `atBoolean` (`avID`, `value`) VALUES
(9, 1),
(16, 1),
(18, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(42, 1),
(43, 1),
(47, 1),
(51, 1),
(98, 1),
(105, 1),
(106, 1),
(107, 1),
(126, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atBooleanSettings`
--

CREATE TABLE IF NOT EXISTS `atBooleanSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akCheckedByDefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `atBooleanSettings`
--

INSERT INTO `atBooleanSettings` (`akID`, `akCheckedByDefault`) VALUES
(5, 0),
(6, 0),
(9, 0),
(10, 0),
(11, 0),
(12, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atDateTime`
--

CREATE TABLE IF NOT EXISTS `atDateTime` (
  `avID` int(10) unsigned NOT NULL,
  `value` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atDateTimeSettings`
--

CREATE TABLE IF NOT EXISTS `atDateTimeSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akDateDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atDefault`
--

CREATE TABLE IF NOT EXISTS `atDefault` (
  `avID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `atDefault`
--

INSERT INTO `atDefault` (`avID`, `value`) VALUES
(1, 'fa fa-th-large'),
(2, 'pages, add page, delete page, copy, move, alias'),
(3, 'pages, add page, delete page, copy, move, alias'),
(4, 'pages, add page, delete page, copy, move, alias, bulk'),
(5, 'find page, search page, search, find, pages, sitemap'),
(6, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute'),
(7, 'file, file attributes, title, attribute, description, rename'),
(8, 'files, category, categories'),
(10, 'new file set'),
(11, 'users, groups, people, find, delete user, remove user, change password, password'),
(12, 'find, search, people, delete user, remove user, change password, password'),
(13, 'user, group, people, permissions, expire, badges'),
(14, 'user attributes, user data, gather data, registration data'),
(15, 'new user, create'),
(17, 'new user group, new group, group, create'),
(19, 'group set'),
(20, 'community, points, karma'),
(21, 'action, community actions'),
(22, 'forms, log, error, email, mysql, exception, survey'),
(23, 'forms, questions, response, data'),
(24, 'questions, quiz, response'),
(25, 'forms, log, error, email, mysql, exception, survey, history'),
(26, 'new theme, theme, active theme, change theme, template, css'),
(27, 'page types'),
(36, 'page attributes, custom'),
(37, 'single, page, custom, application'),
(38, 'atom, rss, feed, syndication'),
(39, 'icon-bullhorn'),
(40, 'add workflow, remove workflow'),
(41, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo'),
(44, 'edit stacks, view stacks, all stacks'),
(45, 'block, refresh, custom'),
(46, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks'),
(48, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks'),
(49, 'update, upgrade'),
(50, 'concrete5.org, my account, marketplace'),
(52, 'buy theme, new theme, marketplace, template'),
(53, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace'),
(54, 'dashboard, configuration'),
(55, 'website name, title'),
(56, 'accessibility, easy mode'),
(57, 'sharing, facebook, twitter'),
(58, 'logo, favicon, iphone, icon, bookmark'),
(59, 'tinymce, content block, fonts, editor, content, overlay'),
(60, 'translate, translation, internationalization, multilingual'),
(61, 'timezone, profile, locale'),
(62, 'multilingual, localization, internationalization, i18n'),
(63, 'vanity, pretty url, seo, pageview, view'),
(64, 'bulk, seo, change keywords, engine, optimization, search'),
(65, 'traffic, statistics, google analytics, quant, pageviews, hits'),
(66, 'pretty, slug'),
(67, 'configure search, site search, search option'),
(68, 'file options, file manager, upload, modify'),
(69, 'security, files, media, extension, manager, upload'),
(70, 'images, picture, responsive, retina'),
(71, 'security, alternate storage, hide files'),
(72, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching'),
(73, 'cache option, turn off cache, no cache, page cache, caching'),
(74, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old'),
(75, 'queries, database, mysql'),
(76, 'editors, hide site, offline, private, public, access'),
(77, 'security, actions, administrator, admin, package, marketplace, search'),
(78, 'security, lock ip, lock out, block ip, address, restrict, access'),
(79, 'security, registration'),
(80, 'antispam, block spam, security'),
(81, 'lock site, under construction, hide, hidden'),
(82, 'profile, login, redirect, specific, dashboard, administrators'),
(83, 'member profile, member page, community, forums, social, avatar'),
(84, 'signup, new user, community, public registration, public, registration'),
(85, 'auth, authentication, types, oauth, facebook, login, registration'),
(86, 'smtp, mail settings'),
(87, 'email server, mail settings, mail configuration, external, internal'),
(88, 'test smtp, test mail'),
(89, 'email server, mail settings, mail configuration, private message, message system, import, email, message'),
(90, 'conversations'),
(91, 'conversations'),
(92, 'conversations ratings, ratings, community, community points'),
(93, 'conversations bad words, banned words, banned, bad words, bad, words, list'),
(94, 'attribute configuration'),
(95, 'attributes, sets'),
(96, 'attributes, types'),
(97, 'topics, tags, taxonomy'),
(99, 'overrides, system info, debug, support, help'),
(100, 'errors, exceptions, develop, support, help'),
(101, 'email, logging, logs, smtp, pop, errors, mysql, log'),
(102, 'network, proxy server'),
(103, 'export, backup, database, sql, mysql, encryption, restore'),
(104, 'upgrade, new version, update'),
(108, 'fa fa-edit'),
(109, 'fa fa-trash-o'),
(110, 'fa fa-th'),
(111, 'fa fa-briefcase'),
(122, ''),
(123, ''),
(124, ''),
(125, '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atFile`
--

CREATE TABLE IF NOT EXISTS `atFile` (
  `avID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atNumber`
--

CREATE TABLE IF NOT EXISTS `atNumber` (
  `avID` int(10) unsigned NOT NULL,
  `value` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `atNumber`
--

INSERT INTO `atNumber` (`avID`, `value`) VALUES
(112, '3264.0000'),
(113, '1737.0000'),
(114, '3264.0000'),
(115, '1737.0000'),
(116, '3264.0000'),
(117, '1737.0000'),
(118, '3264.0000'),
(119, '1737.0000'),
(120, '2816.0000'),
(121, '1488.0000'),
(127, '2817.0000'),
(128, '1489.0000'),
(129, '2818.0000'),
(130, '1490.0000'),
(131, '1500.0000'),
(132, '481.0000'),
(133, '1500.0000'),
(134, '481.0000'),
(135, '1500.0000'),
(136, '481.0000'),
(137, '400.0000'),
(138, '213.0000'),
(139, '400.0000'),
(140, '213.0000'),
(141, '3264.0000'),
(142, '1485.0000'),
(143, '3264.0000'),
(144, '1631.0000'),
(145, '2816.0000'),
(146, '2112.0000'),
(147, '2816.0000'),
(148, '2112.0000'),
(149, '2816.0000'),
(150, '2112.0000'),
(151, '2816.0000'),
(152, '2112.0000'),
(153, '2816.0000'),
(154, '2112.0000'),
(155, '2816.0000'),
(156, '2112.0000'),
(157, '2816.0000'),
(158, '2112.0000'),
(159, '2816.0000'),
(160, '2112.0000'),
(161, '2816.0000'),
(162, '2112.0000'),
(163, '1350.0000'),
(164, '351.0000'),
(165, '3264.0000'),
(166, '2448.0000'),
(167, '3264.0000'),
(168, '2448.0000'),
(169, '3264.0000'),
(170, '2448.0000'),
(171, '3264.0000'),
(172, '2448.0000'),
(173, '3264.0000'),
(174, '2448.0000'),
(175, '3264.0000'),
(176, '2448.0000'),
(177, '3264.0000'),
(178, '2448.0000'),
(179, '3264.0000'),
(180, '2448.0000'),
(181, '3264.0000'),
(182, '1631.0000'),
(183, '3264.0000'),
(184, '2448.0000'),
(185, '2816.0000'),
(186, '2112.0000'),
(187, '2816.0000'),
(188, '2112.0000'),
(189, '2816.0000'),
(190, '2112.0000'),
(191, '2816.0000'),
(192, '2112.0000'),
(193, '2816.0000'),
(194, '2112.0000'),
(195, '1915.0000'),
(196, '629.0000'),
(197, '3264.0000'),
(198, '1073.0000'),
(199, '2816.0000'),
(200, '926.0000'),
(201, '1500.0000'),
(202, '481.0000'),
(203, '1500.0000'),
(204, '481.0000'),
(205, '1500.0000'),
(206, '481.0000'),
(207, '1500.0000'),
(208, '481.0000'),
(209, '1500.0000'),
(210, '481.0000'),
(211, '1500.0000'),
(212, '481.0000'),
(213, '1500.0000'),
(214, '481.0000');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atSelectedTopics`
--

CREATE TABLE IF NOT EXISTS `atSelectedTopics` (
  `avID` int(10) unsigned NOT NULL,
  `TopicNodeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atSelectOptions`
--

CREATE TABLE IF NOT EXISTS `atSelectOptions` (
`ID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atSelectOptionsSelected`
--

CREATE TABLE IF NOT EXISTS `atSelectOptionsSelected` (
  `avID` int(10) unsigned NOT NULL,
  `atSelectOptionID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atSelectSettings`
--

CREATE TABLE IF NOT EXISTS `atSelectSettings` (
  `akID` int(10) unsigned NOT NULL,
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '0',
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'display_asc',
  `akSelectAllowOtherValues` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `atSelectSettings`
--

INSERT INTO `atSelectSettings` (`akID`, `akSelectAllowMultipleValues`, `akSelectOptionDisplayOrder`, `akSelectAllowOtherValues`) VALUES
(8, 1, 'display_asc', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atSocialLinks`
--

CREATE TABLE IF NOT EXISTS `atSocialLinks` (
`avsID` int(10) unsigned NOT NULL,
  `avID` int(10) unsigned NOT NULL DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serviceInfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atTextareaSettings`
--

CREATE TABLE IF NOT EXISTS `atTextareaSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTextareaDisplayMode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `akTextareaDisplayModeCustomOptions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `atTextareaSettings`
--

INSERT INTO `atTextareaSettings` (`akID`, `akTextareaDisplayMode`, `akTextareaDisplayModeCustomOptions`) VALUES
(2, '', ''),
(3, '', ''),
(4, '', ''),
(7, '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `atTopicSettings`
--

CREATE TABLE IF NOT EXISTS `atTopicSettings` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `akTopicParentNodeID` int(11) DEFAULT NULL,
  `akTopicTreeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AttributeKeyCategories`
--

CREATE TABLE IF NOT EXISTS `AttributeKeyCategories` (
`akCategoryID` int(10) unsigned NOT NULL,
  `akCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryAllowSets` smallint(6) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `AttributeKeyCategories`
--

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AttributeKeys`
--

CREATE TABLE IF NOT EXISTS `AttributeKeys` (
`akID` int(10) unsigned NOT NULL,
  `akHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL DEFAULT '0',
  `akIsSearchableIndexed` tinyint(1) NOT NULL DEFAULT '0',
  `akIsAutoCreated` tinyint(1) NOT NULL DEFAULT '0',
  `akIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `akIsColumnHeader` tinyint(1) NOT NULL DEFAULT '0',
  `akIsEditable` tinyint(1) NOT NULL DEFAULT '0',
  `atID` int(10) unsigned DEFAULT NULL,
  `akCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Gegevens worden geëxporteerd voor tabel `AttributeKeys`
--

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsSearchableIndexed`, `akIsAutoCreated`, `akIsInternal`, `akIsColumnHeader`, `akIsEditable`, `atID`, `akCategoryID`, `pkgID`) VALUES
(1, 'meta_title', 'Meta Title', 1, 1, 1, 0, 0, 1, 1, 1, 0),
(2, 'meta_description', 'Meta Description', 1, 1, 1, 0, 0, 1, 2, 1, 0),
(3, 'meta_keywords', 'Meta Keywords', 1, 1, 1, 0, 0, 1, 2, 1, 0),
(4, 'icon_dashboard', 'Dashboard Icon', 0, 0, 1, 1, 0, 1, 2, 1, 0),
(5, 'exclude_nav', 'Exclude From Nav', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(6, 'exclude_page_list', 'Exclude From Page List', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(7, 'header_extra_content', 'Header Extra Content', 1, 1, 1, 0, 0, 1, 2, 1, 0),
(8, 'tags', 'Tags', 1, 1, 1, 0, 0, 1, 8, 1, 0),
(9, 'is_featured', 'Is Featured', 1, 0, 1, 0, 0, 1, 3, 1, 0),
(10, 'exclude_search_index', 'Exclude From Search Index', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(11, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 1, 1, 0, 0, 1, 3, 1, 0),
(12, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 0, 0, 0, 0, 1, 3, 2, 0),
(13, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 0, 0, 0, 0, 1, 3, 2, 0),
(14, 'width', 'Width', 1, 1, 1, 0, 0, 1, 6, 3, 0),
(15, 'height', 'Height', 1, 1, 1, 0, 0, 1, 6, 3, 0),
(16, 'account_profile_links', 'Personal Links', 0, 0, 0, 0, 0, 1, 11, 2, 0),
(17, 'duration', 'Duration', 1, 1, 1, 0, 0, 1, 6, 3, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AttributeSetKeys`
--

CREATE TABLE IF NOT EXISTS `AttributeSetKeys` (
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `asID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `AttributeSetKeys`
--

INSERT INTO `AttributeSetKeys` (`akID`, `asID`, `displayOrder`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(7, 1, 4),
(11, 1, 5),
(9, 2, 1),
(5, 2, 2),
(6, 2, 3),
(10, 2, 4),
(8, 2, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AttributeSets`
--

CREATE TABLE IF NOT EXISTS `AttributeSets` (
`asID` int(10) unsigned NOT NULL,
  `asName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `asIsLocked` tinyint(1) NOT NULL DEFAULT '1',
  `asDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `AttributeSets`
--

INSERT INTO `AttributeSets` (`asID`, `asName`, `asHandle`, `akCategoryID`, `pkgID`, `asIsLocked`, `asDisplayOrder`) VALUES
(1, 'SEO', 'seo', 1, 0, 0, 0),
(2, 'Navigation and Indexing', 'navigation', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AttributeTypeCategories`
--

CREATE TABLE IF NOT EXISTS `AttributeTypeCategories` (
  `atID` int(10) unsigned NOT NULL DEFAULT '0',
  `akCategoryID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `AttributeTypeCategories`
--

INSERT INTO `AttributeTypeCategories` (`atID`, `akCategoryID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(10, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(6, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(6, 3),
(7, 3),
(8, 3),
(10, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AttributeTypes`
--

CREATE TABLE IF NOT EXISTS `AttributeTypes` (
`atID` int(10) unsigned NOT NULL,
  `atHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Gegevens worden geëxporteerd voor tabel `AttributeTypes`
--

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', 0),
(2, 'textarea', 'Text Area', 0),
(3, 'boolean', 'Checkbox', 0),
(4, 'date_time', 'Date/Time', 0),
(5, 'image_file', 'Image/File', 0),
(6, 'number', 'Number', 0),
(7, 'rating', 'Rating', 0),
(8, 'select', 'Select', 0),
(9, 'address', 'Address', 0),
(10, 'topics', 'Topics', 0),
(11, 'social_links', 'Social Links', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AttributeValues`
--

CREATE TABLE IF NOT EXISTS `AttributeValues` (
`avID` int(10) unsigned NOT NULL,
  `akID` int(10) unsigned DEFAULT NULL,
  `avDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uID` int(10) unsigned DEFAULT NULL,
  `atID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=215 ;

--
-- Gegevens worden geëxporteerd voor tabel `AttributeValues`
--

INSERT INTO `AttributeValues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 4, '2015-05-11 11:48:32', 1, 2),
(2, 3, '2015-05-11 11:48:32', 1, 2),
(3, 3, '2015-05-11 11:48:32', 1, 2),
(4, 3, '2015-05-11 11:48:32', 1, 2),
(5, 3, '2015-05-11 11:48:32', 1, 2),
(6, 3, '2015-05-11 11:48:32', 1, 2),
(7, 3, '2015-05-11 11:48:32', 1, 2),
(8, 3, '2015-05-11 11:48:32', 1, 2),
(9, 5, '2015-05-11 11:48:33', 1, 3),
(10, 3, '2015-05-11 11:48:33', 1, 2),
(11, 3, '2015-05-11 11:48:33', 1, 2),
(12, 3, '2015-05-11 11:48:33', 1, 2),
(13, 3, '2015-05-11 11:48:33', 1, 2),
(14, 3, '2015-05-11 11:48:33', 1, 2),
(15, 3, '2015-05-11 11:48:33', 1, 2),
(16, 5, '2015-05-11 11:48:33', 1, 3),
(17, 3, '2015-05-11 11:48:33', 1, 2),
(18, 5, '2015-05-11 11:48:33', 1, 3),
(19, 3, '2015-05-11 11:48:33', 1, 2),
(20, 3, '2015-05-11 11:48:33', 1, 2),
(21, 3, '2015-05-11 11:48:33', 1, 2),
(22, 3, '2015-05-11 11:48:33', 1, 2),
(23, 3, '2015-05-11 11:48:33', 1, 2),
(24, 3, '2015-05-11 11:48:33', 1, 2),
(25, 3, '2015-05-11 11:48:33', 1, 2),
(26, 3, '2015-05-11 11:48:33', 1, 2),
(27, 3, '2015-05-11 11:48:33', 1, 2),
(28, 5, '2015-05-11 11:48:33', 1, 3),
(29, 5, '2015-05-11 11:48:33', 1, 3),
(30, 5, '2015-05-11 11:48:33', 1, 3),
(31, 5, '2015-05-11 11:48:33', 1, 3),
(32, 5, '2015-05-11 11:48:33', 1, 3),
(33, 5, '2015-05-11 11:48:33', 1, 3),
(34, 5, '2015-05-11 11:48:33', 1, 3),
(35, 5, '2015-05-11 11:48:33', 1, 3),
(36, 3, '2015-05-11 11:48:33', 1, 2),
(37, 3, '2015-05-11 11:48:33', 1, 2),
(38, 3, '2015-05-11 11:48:33', 1, 2),
(39, 4, '2015-05-11 11:48:33', 1, 2),
(40, 3, '2015-05-11 11:48:33', 1, 2),
(41, 3, '2015-05-11 11:48:33', 1, 2),
(42, 5, '2015-05-11 11:48:33', 1, 3),
(43, 10, '2015-05-11 11:48:33', 1, 3),
(44, 3, '2015-05-11 11:48:33', 1, 2),
(45, 3, '2015-05-11 11:48:33', 1, 2),
(46, 3, '2015-05-11 11:48:33', 1, 2),
(47, 5, '2015-05-11 11:48:33', 1, 3),
(48, 3, '2015-05-11 11:48:33', 1, 2),
(49, 3, '2015-05-11 11:48:33', 1, 2),
(50, 3, '2015-05-11 11:48:33', 1, 2),
(51, 5, '2015-05-11 11:48:33', 1, 3),
(52, 3, '2015-05-11 11:48:33', 1, 2),
(53, 3, '2015-05-11 11:48:33', 1, 2),
(54, 3, '2015-05-11 11:48:33', 1, 2),
(55, 3, '2015-05-11 11:48:33', 1, 2),
(56, 3, '2015-05-11 11:48:33', 1, 2),
(57, 3, '2015-05-11 11:48:33', 1, 2),
(58, 3, '2015-05-11 11:48:33', 1, 2),
(59, 3, '2015-05-11 11:48:33', 1, 2),
(60, 3, '2015-05-11 11:48:33', 1, 2),
(61, 3, '2015-05-11 11:48:33', 1, 2),
(62, 3, '2015-05-11 11:48:33', 1, 2),
(63, 3, '2015-05-11 11:48:33', 1, 2),
(64, 3, '2015-05-11 11:48:33', 1, 2),
(65, 3, '2015-05-11 11:48:33', 1, 2),
(66, 3, '2015-05-11 11:48:33', 1, 2),
(67, 3, '2015-05-11 11:48:33', 1, 2),
(68, 3, '2015-05-11 11:48:33', 1, 2),
(69, 3, '2015-05-11 11:48:33', 1, 2),
(70, 3, '2015-05-11 11:48:34', 1, 2),
(71, 3, '2015-05-11 11:48:34', 1, 2),
(72, 3, '2015-05-11 11:48:34', 1, 2),
(73, 3, '2015-05-11 11:48:34', 1, 2),
(74, 3, '2015-05-11 11:48:34', 1, 2),
(75, 3, '2015-05-11 11:48:34', 1, 2),
(76, 3, '2015-05-11 11:48:34', 1, 2),
(77, 3, '2015-05-11 11:48:34', 1, 2),
(78, 3, '2015-05-11 11:48:34', 1, 2),
(79, 3, '2015-05-11 11:48:34', 1, 2),
(80, 3, '2015-05-11 11:48:34', 1, 2),
(81, 3, '2015-05-11 11:48:34', 1, 2),
(82, 3, '2015-05-11 11:48:34', 1, 2),
(83, 3, '2015-05-11 11:48:34', 1, 2),
(84, 3, '2015-05-11 11:48:34', 1, 2),
(85, 3, '2015-05-11 11:48:34', 1, 2),
(86, 3, '2015-05-11 11:48:34', 1, 2),
(87, 3, '2015-05-11 11:48:34', 1, 2),
(88, 3, '2015-05-11 11:48:34', 1, 2),
(89, 3, '2015-05-11 11:48:34', 1, 2),
(90, 3, '2015-05-11 11:48:34', 1, 2),
(91, 3, '2015-05-11 11:48:34', 1, 2),
(92, 3, '2015-05-11 11:48:34', 1, 2),
(93, 3, '2015-05-11 11:48:34', 1, 2),
(94, 3, '2015-05-11 11:48:34', 1, 2),
(95, 3, '2015-05-11 11:48:34', 1, 2),
(96, 3, '2015-05-11 11:48:34', 1, 2),
(97, 3, '2015-05-11 11:48:34', 1, 2),
(98, 10, '2015-05-11 11:48:34', 1, 3),
(99, 3, '2015-05-11 11:48:34', 1, 2),
(100, 3, '2015-05-11 11:48:34', 1, 2),
(101, 3, '2015-05-11 11:48:34', 1, 2),
(102, 3, '2015-05-11 11:48:34', 1, 2),
(103, 3, '2015-05-11 11:48:34', 1, 2),
(104, 3, '2015-05-11 11:48:34', 1, 2),
(105, 5, '2015-05-11 11:48:34', 1, 3),
(106, 5, '2015-05-11 11:48:34', 1, 3),
(107, 10, '2015-05-11 11:48:34', 1, 3),
(108, 4, '2015-05-11 11:48:35', 1, 2),
(109, 4, '2015-05-11 11:48:35', 1, 2),
(110, 4, '2015-05-11 11:48:35', 1, 2),
(111, 4, '2015-05-11 11:48:35', 1, 2),
(112, 14, '2015-05-11 13:39:33', 1, 6),
(113, 15, '2015-05-11 13:39:33', 1, 6),
(114, 14, '2015-05-11 13:50:58', 1, 6),
(115, 15, '2015-05-11 13:50:58', 1, 6),
(116, 14, '2015-05-11 13:59:56', 1, 6),
(117, 15, '2015-05-11 13:59:56', 1, 6),
(118, 14, '2015-05-11 14:03:11', 1, 6),
(119, 15, '2015-05-11 14:03:11', 1, 6),
(120, 14, '2015-05-11 14:08:56', 1, 6),
(121, 15, '2015-05-11 14:08:56', 1, 6),
(122, 1, '2015-05-11 16:06:11', 1, 1),
(123, 2, '2015-05-11 16:06:11', 1, 2),
(124, 3, '2015-05-11 16:06:11', 1, 2),
(125, 7, '2015-05-11 16:06:11', 1, 2),
(126, 11, '2015-05-11 16:06:11', 1, 3),
(127, 14, '2015-05-11 16:09:04', 1, 6),
(128, 15, '2015-05-11 16:09:04', 1, 6),
(129, 14, '2015-05-11 16:09:39', 1, 6),
(130, 15, '2015-05-11 16:09:39', 1, 6),
(131, 14, '2015-05-11 18:06:08', 1, 6),
(132, 15, '2015-05-11 18:06:08', 1, 6),
(133, 14, '2015-05-12 09:29:21', 1, 6),
(134, 15, '2015-05-12 09:29:21', 1, 6),
(135, 14, '2015-05-12 09:54:45', 1, 6),
(136, 15, '2015-05-12 09:54:45', 1, 6),
(137, 14, '2015-05-12 11:26:59', 1, 6),
(138, 15, '2015-05-12 11:26:59', 1, 6),
(139, 14, '2015-05-12 11:36:43', 1, 6),
(140, 15, '2015-05-12 11:36:43', 1, 6),
(141, 14, '2015-05-12 12:00:05', 1, 6),
(142, 15, '2015-05-12 12:00:05', 1, 6),
(143, 14, '2015-05-12 12:01:15', 1, 6),
(144, 15, '2015-05-12 12:01:15', 1, 6),
(145, 14, '2015-05-12 18:20:12', 1, 6),
(146, 15, '2015-05-12 18:20:12', 1, 6),
(147, 14, '2015-05-12 18:21:10', 1, 6),
(148, 15, '2015-05-12 18:21:10', 1, 6),
(149, 14, '2015-05-12 18:21:29', 1, 6),
(150, 15, '2015-05-12 18:21:29', 1, 6),
(151, 14, '2015-05-12 18:21:49', 1, 6),
(152, 15, '2015-05-12 18:21:49', 1, 6),
(153, 14, '2015-05-12 18:22:29', 1, 6),
(154, 15, '2015-05-12 18:22:29', 1, 6),
(155, 14, '2015-05-12 18:23:13', 1, 6),
(156, 15, '2015-05-12 18:23:13', 1, 6),
(157, 14, '2015-05-12 18:23:33', 1, 6),
(158, 15, '2015-05-12 18:23:33', 1, 6),
(159, 14, '2015-05-12 18:50:41', 1, 6),
(160, 15, '2015-05-12 18:50:41', 1, 6),
(161, 14, '2015-05-12 18:50:59', 1, 6),
(162, 15, '2015-05-12 18:50:59', 1, 6),
(163, 14, '2015-05-12 18:51:14', 1, 6),
(164, 15, '2015-05-12 18:51:14', 1, 6),
(165, 14, '2015-05-12 19:02:18', 1, 6),
(166, 15, '2015-05-12 19:02:19', 1, 6),
(167, 14, '2015-05-12 19:02:37', 1, 6),
(168, 15, '2015-05-12 19:02:37', 1, 6),
(169, 14, '2015-05-12 19:02:58', 1, 6),
(170, 15, '2015-05-12 19:02:58', 1, 6),
(171, 14, '2015-05-12 19:03:23', 1, 6),
(172, 15, '2015-05-12 19:03:23', 1, 6),
(173, 14, '2015-05-12 19:03:53', 1, 6),
(174, 15, '2015-05-12 19:03:53', 1, 6),
(175, 14, '2015-05-12 19:04:28', 1, 6),
(176, 15, '2015-05-12 19:04:28', 1, 6),
(177, 14, '2015-05-12 19:05:07', 1, 6),
(178, 15, '2015-05-12 19:05:07', 1, 6),
(179, 14, '2015-05-12 19:05:14', 1, 6),
(180, 15, '2015-05-12 19:05:14', 1, 6),
(181, 14, '2015-05-12 19:05:31', 1, 6),
(182, 15, '2015-05-12 19:05:31', 1, 6),
(183, 14, '2015-05-12 19:06:00', 1, 6),
(184, 15, '2015-05-12 19:06:00', 1, 6),
(185, 14, '2015-05-12 19:06:46', 1, 6),
(186, 15, '2015-05-12 19:06:46', 1, 6),
(187, 14, '2015-05-12 19:08:28', 1, 6),
(188, 15, '2015-05-12 19:08:28', 1, 6),
(189, 14, '2015-05-12 19:08:51', 1, 6),
(190, 15, '2015-05-12 19:08:51', 1, 6),
(191, 14, '2015-05-12 19:09:13', 1, 6),
(192, 15, '2015-05-12 19:09:13', 1, 6),
(193, 14, '2015-05-12 19:25:27', 1, 6),
(194, 15, '2015-05-12 19:25:27', 1, 6),
(195, 14, '2015-05-12 20:36:42', 1, 6),
(196, 15, '2015-05-12 20:36:42', 1, 6),
(197, 14, '2015-05-12 20:37:15', 1, 6),
(198, 15, '2015-05-12 20:37:15', 1, 6),
(199, 14, '2015-05-12 20:37:42', 1, 6),
(200, 15, '2015-05-12 20:37:42', 1, 6),
(201, 14, '2015-05-12 20:46:22', 1, 6),
(202, 15, '2015-05-12 20:46:22', 1, 6),
(203, 14, '2015-05-12 20:46:44', 1, 6),
(204, 15, '2015-05-12 20:46:44', 1, 6),
(205, 14, '2015-05-12 20:47:45', 1, 6),
(206, 15, '2015-05-12 20:47:45', 1, 6),
(207, 14, '2015-05-12 20:50:44', 1, 6),
(208, 15, '2015-05-12 20:50:44', 1, 6),
(209, 14, '2015-05-12 20:52:23', 1, 6),
(210, 15, '2015-05-12 20:52:23', 1, 6),
(211, 14, '2015-05-12 20:53:13', 1, 6),
(212, 15, '2015-05-12 20:53:13', 1, 6),
(213, 14, '2015-05-12 20:53:56', 1, 6),
(214, 15, '2015-05-12 20:53:56', 1, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AuthenticationTypes`
--

CREATE TABLE IF NOT EXISTS `AuthenticationTypes` (
`authTypeID` int(10) unsigned NOT NULL,
  `authTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Gegevens worden geëxporteerd voor tabel `AuthenticationTypes`
--

INSERT INTO `AuthenticationTypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
(1, 'concrete', 'Standard', 1, 0, 0),
(2, 'community', 'concrete5.org', 0, 0, 0),
(3, 'facebook', 'Facebook', 0, 0, 0),
(4, 'twitter', 'Twitter', 0, 0, 0),
(5, 'google', 'Google', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `authTypeConcreteCookieMap`
--

CREATE TABLE IF NOT EXISTS `authTypeConcreteCookieMap` (
`ID` int(10) unsigned NOT NULL,
  `token` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BannedWords`
--

CREATE TABLE IF NOT EXISTS `BannedWords` (
`bwID` int(10) unsigned NOT NULL,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `BannedWords`
--

INSERT INTO `BannedWords` (`bwID`, `bannedWord`) VALUES
(1, 'fuck'),
(2, 'shit'),
(3, 'bitch'),
(4, 'ass');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BasicWorkflowPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BasicWorkflowProgressData`
--

CREATE TABLE IF NOT EXISTS `BasicWorkflowProgressData` (
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDStarted` int(10) unsigned NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) unsigned NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BlockFeatureAssignments`
--

CREATE TABLE IF NOT EXISTS `BlockFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `faID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `BlockFeatureAssignments`
--

INSERT INTO `BlockFeatureAssignments` (`cID`, `cvID`, `bID`, `faID`) VALUES
(1, 3, 14, 1),
(1, 4, 14, 1),
(1, 5, 14, 1),
(1, 4, 17, 2),
(1, 5, 17, 2),
(1, 6, 17, 2),
(1, 7, 17, 2),
(1, 8, 17, 2),
(1, 9, 17, 2),
(1, 10, 17, 2),
(1, 11, 17, 2),
(1, 12, 17, 2),
(1, 13, 17, 2),
(1, 14, 17, 2),
(1, 15, 17, 2),
(1, 16, 17, 2),
(1, 17, 17, 2),
(1, 18, 17, 2),
(1, 19, 17, 2),
(1, 20, 17, 2),
(1, 21, 17, 2),
(1, 22, 17, 2),
(1, 23, 17, 2),
(1, 24, 17, 2),
(1, 25, 17, 2),
(1, 26, 17, 2),
(1, 27, 17, 2),
(1, 28, 17, 2),
(1, 29, 17, 2),
(1, 30, 17, 2),
(1, 31, 17, 2),
(1, 32, 17, 2),
(1, 33, 17, 2),
(1, 34, 17, 2),
(1, 35, 17, 2),
(1, 36, 17, 2),
(1, 37, 17, 2),
(1, 38, 17, 2),
(1, 39, 17, 2),
(1, 40, 17, 2),
(1, 41, 17, 2),
(1, 42, 17, 2),
(1, 43, 17, 2),
(1, 44, 17, 2),
(1, 45, 17, 2),
(1, 46, 17, 2),
(1, 47, 17, 2),
(1, 48, 17, 2),
(1, 49, 17, 2),
(1, 6, 23, 5),
(1, 7, 23, 5),
(1, 8, 23, 5),
(1, 9, 23, 5),
(1, 10, 23, 5),
(1, 11, 23, 5),
(1, 12, 23, 5),
(1, 13, 23, 5),
(1, 14, 23, 5),
(1, 15, 23, 5),
(1, 16, 23, 5),
(1, 17, 23, 5),
(1, 18, 23, 5),
(1, 19, 23, 5),
(1, 20, 23, 5),
(1, 21, 23, 5),
(1, 22, 23, 5),
(1, 23, 23, 5),
(1, 24, 23, 5),
(1, 25, 23, 5),
(1, 26, 23, 5),
(1, 27, 23, 5),
(1, 28, 23, 5),
(1, 29, 23, 5),
(1, 30, 23, 5),
(1, 31, 23, 5),
(1, 32, 23, 5),
(1, 33, 23, 5),
(1, 34, 23, 5),
(1, 35, 23, 5),
(1, 36, 23, 5),
(1, 37, 23, 5),
(1, 38, 23, 5),
(1, 39, 23, 5),
(1, 40, 23, 5),
(1, 41, 23, 5),
(1, 42, 23, 5),
(1, 43, 23, 5),
(1, 44, 23, 5),
(1, 45, 23, 5),
(1, 46, 23, 5),
(1, 47, 23, 5),
(1, 48, 23, 5),
(1, 49, 23, 5),
(1, 6, 24, 6),
(1, 7, 24, 6),
(1, 8, 24, 6),
(1, 9, 24, 6),
(1, 10, 24, 6),
(1, 11, 24, 6),
(1, 12, 24, 6),
(1, 13, 24, 6),
(1, 14, 24, 6),
(1, 15, 24, 6),
(1, 16, 24, 6),
(1, 17, 24, 6),
(1, 18, 24, 6),
(1, 19, 24, 6),
(1, 20, 24, 6),
(1, 21, 24, 6),
(1, 22, 24, 6),
(1, 23, 24, 6),
(1, 24, 24, 6),
(1, 25, 24, 6),
(1, 26, 24, 6),
(1, 27, 24, 6),
(1, 28, 24, 6),
(1, 29, 24, 6),
(1, 30, 24, 6),
(1, 31, 24, 6),
(1, 32, 24, 6),
(1, 33, 24, 6),
(1, 34, 24, 6),
(1, 35, 24, 6),
(1, 36, 24, 6),
(1, 37, 24, 6),
(1, 38, 24, 6),
(1, 39, 24, 6),
(1, 40, 24, 6),
(1, 41, 24, 6),
(1, 42, 24, 6),
(1, 43, 24, 6),
(1, 44, 24, 6),
(1, 45, 24, 6),
(1, 46, 24, 6),
(1, 47, 24, 6),
(1, 48, 24, 6),
(1, 49, 24, 6),
(1, 7, 26, 8),
(1, 8, 26, 8),
(1, 9, 26, 8),
(1, 10, 26, 8),
(1, 11, 26, 8),
(1, 12, 26, 8),
(1, 13, 26, 8),
(1, 14, 26, 8),
(1, 15, 26, 8),
(1, 16, 26, 8),
(1, 17, 26, 8),
(1, 18, 26, 8),
(1, 19, 26, 8),
(1, 20, 26, 8),
(1, 21, 26, 8),
(1, 22, 26, 8),
(1, 23, 26, 8),
(1, 24, 26, 8),
(1, 25, 26, 8),
(1, 26, 26, 8),
(1, 27, 26, 8),
(1, 28, 26, 8),
(1, 29, 26, 8),
(1, 30, 26, 8),
(1, 31, 26, 8),
(1, 32, 26, 8),
(1, 33, 26, 8),
(1, 34, 26, 8),
(1, 35, 26, 8),
(1, 36, 26, 8),
(1, 37, 26, 8),
(1, 38, 26, 8),
(1, 39, 26, 8),
(1, 40, 26, 8),
(1, 41, 26, 8),
(1, 42, 26, 8),
(1, 43, 26, 8),
(1, 44, 26, 8),
(1, 45, 26, 8),
(1, 46, 26, 8),
(1, 47, 26, 8),
(1, 48, 26, 8),
(1, 49, 26, 8),
(1, 13, 87, 9),
(1, 14, 87, 9),
(1, 15, 87, 9),
(1, 16, 87, 9),
(1, 17, 87, 9),
(1, 18, 87, 9),
(1, 19, 87, 9),
(1, 20, 87, 9),
(1, 21, 87, 9),
(1, 22, 87, 9),
(1, 23, 87, 9),
(1, 24, 87, 9),
(1, 25, 87, 9),
(1, 17, 90, 10),
(1, 18, 90, 10),
(1, 19, 90, 10),
(1, 20, 90, 10),
(1, 21, 90, 10),
(1, 22, 90, 10),
(1, 23, 90, 10),
(1, 24, 90, 10),
(1, 25, 90, 10),
(1, 26, 90, 10),
(1, 27, 90, 10),
(1, 28, 90, 10),
(1, 29, 90, 10),
(1, 30, 90, 10),
(1, 31, 90, 10),
(1, 32, 90, 10),
(1, 33, 90, 10),
(1, 24, 97, 11),
(1, 25, 97, 11),
(1, 26, 97, 11),
(1, 27, 97, 11),
(1, 28, 97, 11),
(1, 29, 97, 11),
(1, 25, 98, 12),
(1, 26, 98, 12),
(1, 27, 98, 12),
(1, 28, 98, 12),
(1, 29, 98, 12),
(1, 30, 98, 12),
(1, 31, 98, 12),
(1, 26, 100, 14),
(1, 27, 100, 14),
(1, 28, 100, 14),
(1, 27, 101, 15),
(1, 28, 101, 15),
(1, 28, 102, 16),
(1, 29, 102, 16),
(1, 30, 102, 16),
(1, 31, 102, 16),
(1, 32, 102, 16),
(1, 33, 102, 16),
(1, 34, 102, 16),
(1, 35, 102, 16),
(1, 36, 102, 16),
(1, 37, 102, 16),
(1, 38, 102, 16),
(1, 39, 102, 16),
(1, 40, 102, 16),
(1, 41, 102, 16),
(1, 42, 102, 16),
(1, 32, 105, 17),
(1, 32, 106, 18),
(1, 33, 106, 18),
(1, 34, 106, 18),
(1, 35, 106, 18),
(1, 35, 108, 19),
(1, 36, 108, 19),
(1, 37, 108, 19),
(1, 38, 108, 19),
(1, 39, 108, 19),
(1, 40, 108, 19),
(1, 41, 108, 19),
(1, 42, 108, 19),
(1, 43, 108, 19),
(1, 44, 108, 19),
(1, 45, 108, 19),
(1, 46, 108, 19),
(1, 37, 110, 20),
(1, 38, 110, 20),
(1, 39, 110, 20),
(1, 40, 110, 20),
(1, 41, 110, 20),
(1, 42, 110, 20),
(159, 4, 128, 21),
(159, 5, 128, 21),
(159, 6, 128, 21),
(159, 7, 128, 21),
(159, 8, 128, 21),
(159, 9, 128, 21),
(159, 10, 128, 21),
(159, 6, 145, 22),
(159, 7, 145, 22),
(159, 8, 145, 22),
(159, 6, 148, 23),
(159, 7, 148, 23),
(159, 8, 148, 23),
(152, 3, 159, 24),
(152, 4, 159, 24),
(152, 4, 161, 25),
(152, 4, 164, 26),
(152, 4, 168, 28),
(152, 4, 171, 29),
(151, 4, 182, 30),
(151, 5, 182, 30),
(151, 6, 182, 30),
(151, 7, 182, 30),
(151, 8, 182, 30),
(151, 9, 182, 30),
(151, 10, 182, 30),
(151, 11, 182, 30),
(151, 12, 182, 30),
(151, 13, 182, 30),
(151, 5, 185, 31),
(151, 6, 185, 31),
(151, 7, 185, 31),
(151, 8, 185, 31),
(151, 9, 185, 31),
(151, 10, 185, 31),
(151, 11, 185, 31),
(151, 12, 185, 31),
(151, 13, 185, 31),
(151, 5, 187, 32),
(151, 6, 187, 32),
(151, 7, 187, 32),
(151, 8, 187, 32),
(151, 9, 187, 32),
(151, 10, 187, 32),
(151, 11, 187, 32),
(151, 12, 187, 32),
(151, 13, 187, 32),
(163, 3, 196, 33),
(163, 3, 199, 34),
(163, 3, 202, 35),
(153, 4, 212, 36),
(153, 5, 212, 36),
(153, 6, 212, 36),
(153, 4, 213, 37),
(153, 5, 213, 37),
(153, 6, 213, 37),
(153, 4, 214, 38),
(153, 5, 214, 38),
(153, 6, 214, 38),
(154, 4, 236, 39),
(154, 5, 236, 39),
(154, 6, 236, 39),
(154, 7, 236, 39),
(154, 8, 236, 39),
(154, 9, 236, 39),
(154, 10, 236, 39),
(154, 11, 236, 39),
(154, 12, 236, 39),
(154, 13, 236, 39),
(159, 9, 237, 40),
(159, 10, 237, 40),
(159, 9, 238, 41),
(159, 10, 238, 41),
(153, 7, 239, 42),
(153, 7, 240, 43),
(153, 7, 241, 44),
(154, 9, 246, 45),
(154, 10, 246, 45),
(154, 11, 246, 45),
(154, 12, 246, 45),
(154, 13, 246, 45),
(154, 13, 249, 46),
(154, 14, 250, 47),
(154, 15, 250, 47),
(154, 16, 250, 47),
(154, 14, 251, 48),
(154, 14, 252, 49),
(154, 15, 252, 49),
(154, 16, 252, 49),
(154, 17, 252, 49),
(154, 18, 252, 49),
(154, 14, 253, 50),
(154, 15, 253, 50),
(154, 16, 253, 50),
(154, 17, 253, 50),
(154, 18, 253, 50),
(154, 15, 254, 51),
(154, 16, 254, 51),
(154, 17, 254, 51),
(154, 18, 254, 51),
(164, 2, 255, 52),
(164, 3, 255, 52),
(164, 4, 255, 52),
(164, 2, 256, 53),
(164, 3, 256, 53),
(164, 4, 256, 53),
(164, 5, 256, 53),
(164, 2, 257, 54),
(164, 3, 257, 54),
(164, 4, 257, 54),
(164, 5, 257, 54),
(164, 2, 258, 55),
(164, 3, 258, 55),
(164, 4, 258, 55),
(164, 5, 258, 55),
(165, 2, 264, 56),
(165, 2, 265, 57),
(165, 3, 265, 57),
(165, 2, 266, 58),
(165, 3, 266, 58),
(165, 2, 267, 59),
(165, 3, 267, 59),
(154, 17, 273, 60),
(154, 18, 273, 60),
(164, 5, 279, 61),
(165, 3, 285, 62),
(157, 4, 287, 63),
(157, 4, 288, 64),
(157, 5, 288, 64),
(157, 6, 288, 64),
(157, 7, 288, 64),
(157, 8, 288, 64),
(157, 4, 289, 65),
(157, 6, 290, 66),
(157, 6, 291, 67),
(157, 7, 291, 67),
(157, 8, 291, 67),
(157, 7, 292, 68),
(157, 8, 292, 68),
(1, 43, 302, 69),
(1, 43, 303, 70),
(1, 44, 303, 70),
(1, 45, 303, 70),
(1, 44, 304, 71),
(1, 45, 307, 72),
(1, 46, 308, 73),
(1, 46, 309, 74),
(1, 47, 309, 74),
(1, 48, 309, 74),
(1, 49, 309, 74),
(1, 47, 310, 75),
(1, 47, 311, 76),
(1, 48, 311, 76),
(1, 48, 312, 77),
(1, 49, 312, 77),
(1, 49, 313, 78);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BlockPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `BlockPermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BlockRelations`
--

CREATE TABLE IF NOT EXISTS `BlockRelations` (
`brID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalBID` int(10) unsigned NOT NULL DEFAULT '0',
  `relationType` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=41 ;

--
-- Gegevens worden geëxporteerd voor tabel `BlockRelations`
--

INSERT INTO `BlockRelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1, 24, 14, 'DUPLICATE'),
(2, 57, 12, 'DUPLICATE'),
(3, 58, 13, 'DUPLICATE'),
(4, 89, 11, 'DUPLICATE'),
(5, 92, 88, 'DUPLICATE'),
(6, 93, 92, 'DUPLICATE'),
(7, 94, 93, 'DUPLICATE'),
(9, 107, 104, 'DUPLICATE'),
(10, 237, 145, 'DUPLICATE'),
(11, 238, 148, 'DUPLICATE'),
(12, 239, 212, 'DUPLICATE'),
(13, 240, 213, 'DUPLICATE'),
(14, 241, 214, 'DUPLICATE'),
(15, 250, 246, 'DUPLICATE'),
(16, 251, 236, 'DUPLICATE'),
(17, 252, 249, 'DUPLICATE'),
(18, 254, 251, 'DUPLICATE'),
(19, 273, 250, 'DUPLICATE'),
(20, 274, 261, 'DUPLICATE'),
(21, 279, 255, 'DUPLICATE'),
(22, 285, 264, 'DUPLICATE'),
(23, 302, 102, 'DUPLICATE'),
(24, 303, 110, 'DUPLICATE'),
(25, 304, 302, 'DUPLICATE'),
(26, 305, 95, 'DUPLICATE'),
(27, 307, 304, 'DUPLICATE'),
(28, 308, 307, 'DUPLICATE'),
(29, 309, 303, 'DUPLICATE'),
(30, 310, 308, 'DUPLICATE'),
(31, 311, 108, 'DUPLICATE'),
(32, 312, 310, 'DUPLICATE'),
(33, 313, 311, 'DUPLICATE'),
(34, 318, 317, 'DUPLICATE'),
(35, 319, 318, 'DUPLICATE'),
(36, 320, 319, 'DUPLICATE'),
(37, 321, 320, 'DUPLICATE'),
(38, 327, 151, 'DUPLICATE'),
(40, 331, 330, 'DUPLICATE');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Blocks`
--

CREATE TABLE IF NOT EXISTS `Blocks` (
`bID` int(10) unsigned NOT NULL,
  `bName` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=336 ;

--
-- Gegevens worden geëxporteerd voor tabel `Blocks`
--

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2015-05-11 11:48:34', '2015-05-11 11:48:34', NULL, '0', 12, 1, NULL),
(2, '', '2015-05-11 11:48:34', '2015-05-11 11:48:34', NULL, '0', 9, 1, NULL),
(3, '', '2015-05-11 11:48:34', '2015-05-11 11:48:34', NULL, '0', 10, 1, NULL),
(4, '', '2015-05-11 11:48:34', '2015-05-11 11:48:34', NULL, '0', 8, 1, NULL),
(5, '', '2015-05-11 11:48:34', '2015-05-11 11:48:34', NULL, '0', 8, 1, NULL),
(6, '', '2015-05-11 11:48:34', '2015-05-11 11:48:34', NULL, '0', 7, 1, NULL),
(7, '', '2015-05-11 11:48:34', '2015-05-11 11:48:34', NULL, '0', 6, 1, NULL),
(8, '', '2015-05-11 11:48:34', '2015-05-11 11:48:34', NULL, '0', 8, 1, NULL),
(9, '', '2015-05-11 11:48:36', '2015-05-11 11:48:36', NULL, '0', 2, 1, NULL),
(10, '', '2015-05-11 13:25:38', '2015-05-11 13:26:27', NULL, '0', 12, 1, NULL),
(11, '', '2015-05-11 13:27:48', '2015-05-11 13:28:08', NULL, '0', 12, 1, NULL),
(12, '', '2015-05-11 13:27:56', '2015-05-11 13:27:56', NULL, '0', 12, 1, NULL),
(13, '', '2015-05-11 13:28:20', '2015-05-11 13:28:20', NULL, '0', 12, 1, NULL),
(14, '', '2015-05-11 13:39:47', '2015-05-11 13:40:36', NULL, '0', 27, 1, NULL),
(16, '', '2015-05-11 13:55:36', '2015-05-11 13:55:36', NULL, '0', 12, 1, NULL),
(17, '', '2015-05-11 14:03:28', '2015-05-11 14:03:28', NULL, '0', 27, 1, NULL),
(18, '', '2015-05-11 14:04:16', '2015-05-11 14:04:16', NULL, '0', 12, 1, NULL),
(21, '', '2015-05-11 14:09:40', '2015-05-11 14:09:40', NULL, '0', 12, 1, NULL),
(23, '', '2015-05-11 14:11:13', '2015-05-11 14:11:13', NULL, '0', 27, 1, NULL),
(24, '', '2015-05-11 14:13:20', '2015-05-11 14:13:20', '', '1', 27, 1, NULL),
(26, '', '2015-05-11 14:20:20', '2015-05-11 14:20:20', NULL, '0', 27, 1, NULL),
(27, '', '2015-05-11 14:49:16', '2015-05-11 14:49:16', NULL, '0', 11, 1, NULL),
(28, '', '2015-05-11 14:53:34', '2015-05-11 14:53:34', NULL, '0', 11, 1, NULL),
(31, '', '2015-05-11 15:02:59', '2015-05-11 15:02:59', NULL, '0', 12, 1, NULL),
(39, '', '2015-05-11 15:04:45', '2015-05-11 15:04:45', NULL, '0', 12, 1, NULL),
(40, '', '2015-05-11 15:09:08', '2015-05-11 15:09:08', NULL, '0', 11, 1, NULL),
(46, '', '2015-05-11 15:24:49', '2015-05-11 15:24:49', NULL, '0', 12, 1, NULL),
(50, '', '2015-05-11 15:31:25', '2015-05-11 15:31:25', NULL, '0', 12, 1, NULL),
(51, '', '2015-05-11 15:33:06', '2015-05-11 15:33:06', NULL, '0', 11, 1, NULL),
(56, '', '2015-05-11 15:43:27', '2015-05-11 15:43:27', NULL, '0', 12, 1, NULL),
(57, '', '2015-05-11 15:48:27', '2015-05-11 15:50:06', NULL, '1', 12, 1, NULL),
(58, '', '2015-05-11 15:50:00', '2015-05-11 15:50:00', NULL, '1', 12, 1, NULL),
(59, '', '2015-05-11 15:51:29', '2015-05-11 15:51:29', NULL, '0', 12, 1, NULL),
(60, '', '2015-05-11 15:54:27', '2015-05-11 15:54:27', NULL, '0', 12, 1, NULL),
(61, '', '2015-05-11 15:56:05', '2015-05-11 15:56:05', NULL, '0', 12, 1, NULL),
(62, '', '2015-05-11 15:56:36', '2015-05-11 15:56:36', NULL, '0', 12, 1, NULL),
(68, '', '2015-05-11 16:00:46', '2015-05-11 16:00:46', NULL, '0', 12, 1, NULL),
(69, '', '2015-05-11 16:02:40', '2015-05-11 16:02:40', NULL, '0', 11, 1, NULL),
(73, '', '2015-05-11 16:03:58', '2015-05-11 16:03:58', NULL, '0', 12, 1, NULL),
(74, '', '2015-05-11 16:04:10', '2015-05-11 16:04:10', NULL, '0', 11, 1, NULL),
(75, '', '2015-05-11 16:05:49', '2015-05-11 16:05:49', NULL, '0', 12, 1, NULL),
(85, '', '2015-05-11 17:53:08', '2015-05-11 17:53:08', NULL, '0', 12, 1, NULL),
(86, '', '2015-05-11 17:54:13', '2015-05-11 17:54:13', NULL, '0', 11, 1, NULL),
(87, '', '2015-05-11 18:06:14', '2015-05-11 18:06:14', NULL, '0', 27, 1, NULL),
(88, '', '2015-05-11 18:36:05', '2015-05-11 18:36:05', NULL, '0', 12, 1, NULL),
(89, '', '2015-05-11 20:19:09', '2015-05-11 20:19:09', NULL, '1', 12, 1, NULL),
(90, '', '2015-05-12 09:29:31', '2015-05-12 09:29:31', NULL, '0', 27, 1, NULL),
(91, '', '2015-05-12 09:33:48', '2015-05-12 09:33:48', NULL, '0', 12, 1, NULL),
(92, '', '2015-05-12 09:34:35', '2015-05-12 09:34:35', NULL, '1', 12, 1, NULL),
(93, '', '2015-05-12 09:35:50', '2015-05-12 09:35:50', NULL, '1', 12, 1, NULL),
(94, '', '2015-05-12 09:40:34', '2015-05-12 09:40:34', NULL, '1', 12, 1, NULL),
(95, '', '2015-05-12 09:42:16', '2015-05-12 09:42:16', NULL, '0', 12, 1, NULL),
(96, '', '2015-05-12 09:52:08', '2015-05-12 09:52:08', NULL, '0', 12, 1, NULL),
(97, '', '2015-05-12 09:54:53', '2015-05-12 09:54:53', NULL, '0', 27, 1, NULL),
(98, '', '2015-05-12 09:56:26', '2015-05-12 09:56:26', NULL, '0', 27, 1, NULL),
(100, '', '2015-05-12 10:04:01', '2015-05-12 10:04:01', NULL, '0', 27, 1, NULL),
(101, '', '2015-05-12 10:04:29', '2015-05-12 10:04:29', NULL, '0', 27, 1, NULL),
(102, '', '2015-05-12 10:04:55', '2015-05-12 10:04:55', NULL, '0', 27, 1, NULL),
(103, '', '2015-05-12 10:07:54', '2015-05-12 10:07:54', NULL, '0', 12, 1, NULL),
(104, '', '2015-05-12 10:08:55', '2015-05-12 10:08:55', NULL, '0', 12, 1, NULL),
(105, '', '2015-05-12 10:09:28', '2015-05-12 10:09:28', NULL, '0', 27, 1, NULL),
(106, '', '2015-05-12 10:09:49', '2015-05-12 10:09:49', NULL, '0', 27, 1, NULL),
(107, '', '2015-05-12 10:10:55', '2015-05-12 10:10:55', NULL, '1', 12, 1, NULL),
(108, '', '2015-05-12 10:13:13', '2015-05-12 10:13:13', NULL, '0', 27, 1, NULL),
(110, '', '2015-05-12 10:16:44', '2015-05-12 10:16:44', NULL, '0', 27, 1, NULL),
(111, '', '2015-05-12 10:17:29', '2015-05-12 10:17:29', NULL, '0', 12, 1, NULL),
(112, '', '2015-05-12 10:20:09', '2015-05-12 10:20:09', NULL, '0', 12, 1, NULL),
(113, '', '2015-05-12 10:25:45', '2015-05-12 10:25:45', NULL, '0', 12, 1, NULL),
(114, '', '2015-05-12 10:26:32', '2015-05-12 10:26:32', NULL, '0', 12, 1, NULL),
(115, '', '2015-05-12 10:27:44', '2015-05-12 10:27:44', NULL, '0', 12, 1, NULL),
(116, '', '2015-05-12 10:28:39', '2015-05-12 10:28:39', NULL, '0', 12, 1, NULL),
(117, '', '2015-05-12 10:48:50', '2015-05-12 10:48:50', NULL, '0', 12, 1, NULL),
(118, '', '2015-05-12 10:49:24', '2015-05-12 10:49:24', NULL, '0', 12, 1, NULL),
(119, '', '2015-05-12 10:49:42', '2015-05-12 10:49:42', NULL, '0', 12, 1, NULL),
(120, '', '2015-05-12 10:50:54', '2015-05-12 10:50:54', NULL, '0', 12, 1, NULL),
(121, '', '2015-05-12 10:51:11', '2015-05-12 10:51:11', NULL, '0', 12, 1, NULL),
(122, '', '2015-05-12 10:51:27', '2015-05-12 10:51:27', NULL, '0', 12, 1, NULL),
(123, '', '2015-05-12 11:23:04', '2015-05-12 11:23:04', NULL, '0', 12, 1, NULL),
(124, '', '2015-05-12 11:23:24', '2015-05-12 11:23:55', NULL, '0', 12, 1, NULL),
(125, '', '2015-05-12 11:23:36', '2015-05-12 11:23:36', NULL, '0', 12, 1, NULL),
(126, '', '2015-05-12 11:23:48', '2015-05-12 11:23:48', NULL, '0', 12, 1, NULL),
(127, '', '2015-05-12 11:26:19', '2015-05-12 11:26:33', NULL, '0', 12, 1, NULL),
(128, '', '2015-05-12 11:27:04', '2015-05-12 11:27:04', NULL, '0', 27, 1, NULL),
(132, '', '2015-05-12 11:29:41', '2015-05-12 11:29:41', NULL, '0', 12, 1, NULL),
(133, '', '2015-05-12 11:31:04', '2015-05-12 11:31:04', NULL, '0', 11, 1, NULL),
(136, '', '2015-05-12 11:31:40', '2015-05-12 11:31:40', NULL, '0', 12, 1, NULL),
(140, '', '2015-05-12 11:32:04', '2015-05-12 11:32:04', NULL, '0', 12, 1, NULL),
(141, '', '2015-05-12 11:32:22', '2015-05-12 11:32:22', NULL, '0', 11, 1, NULL),
(142, '', '2015-05-12 11:32:59', '2015-05-12 11:32:59', NULL, '0', 11, 1, NULL),
(143, '', '2015-05-12 11:33:33', '2015-05-12 11:33:33', NULL, '0', 12, 1, NULL),
(144, '', '2015-05-12 11:35:48', '2015-05-12 11:35:48', NULL, '0', 12, 1, NULL),
(145, '', '2015-05-12 11:36:52', '2015-05-12 11:36:52', NULL, '0', 27, 1, NULL),
(146, '', '2015-05-12 11:37:05', '2015-05-12 11:37:05', NULL, '0', 12, 1, NULL),
(147, '', '2015-05-12 11:37:22', '2015-05-12 11:37:22', NULL, '0', 12, 1, NULL),
(148, '', '2015-05-12 11:37:39', '2015-05-12 11:37:39', NULL, '0', 27, 1, NULL),
(149, '', '2015-05-12 11:37:48', '2015-05-12 11:37:48', NULL, '0', 12, 1, NULL),
(150, '', '2015-05-12 11:37:54', '2015-05-12 11:37:54', NULL, '0', 12, 1, NULL),
(151, '', '2015-05-12 11:38:17', '2015-05-12 11:38:17', NULL, '0', 12, 1, NULL),
(152, '', '2015-05-12 11:39:45', '2015-05-12 11:39:45', NULL, '0', 12, 1, NULL),
(153, '', '2015-05-12 11:41:00', '2015-05-12 11:41:00', NULL, '0', 12, 1, NULL),
(154, '', '2015-05-12 11:41:18', '2015-05-12 11:41:18', NULL, '0', 12, 1, NULL),
(155, '', '2015-05-12 11:41:38', '2015-05-12 11:41:38', NULL, '0', 12, 1, NULL),
(156, '', '2015-05-12 11:42:01', '2015-05-12 11:42:01', NULL, '0', 12, 1, NULL),
(157, '', '2015-05-12 11:59:25', '2015-05-12 11:59:25', NULL, '0', 12, 1, NULL),
(158, '', '2015-05-12 11:59:39', '2015-05-12 11:59:39', NULL, '0', 12, 1, NULL),
(159, '', '2015-05-12 12:00:12', '2015-05-12 12:00:12', NULL, '0', 27, 1, NULL),
(160, '', '2015-05-12 12:00:32', '2015-05-12 12:00:32', NULL, '0', 12, 1, NULL),
(161, '', '2015-05-12 12:01:21', '2015-05-12 12:01:21', NULL, '0', 27, 1, NULL),
(162, '', '2015-05-12 12:01:38', '2015-05-12 12:01:38', NULL, '0', 12, 1, NULL),
(163, '', '2015-05-12 12:01:53', '2015-05-12 12:01:53', NULL, '0', 12, 1, NULL),
(164, '', '2015-05-12 12:02:07', '2015-05-12 12:02:07', NULL, '0', 27, 1, NULL),
(165, '', '2015-05-12 12:02:26', '2015-05-12 12:02:26', NULL, '0', 12, 1, NULL),
(166, '', '2015-05-12 12:03:01', '2015-05-12 12:03:01', NULL, '0', 12, 1, NULL),
(168, '', '2015-05-12 12:03:33', '2015-05-12 12:03:33', NULL, '0', 27, 1, NULL),
(169, '', '2015-05-12 12:03:49', '2015-05-12 12:03:49', NULL, '0', 12, 1, NULL),
(170, '', '2015-05-12 12:04:03', '2015-05-12 12:04:03', NULL, '0', 12, 1, NULL),
(171, '', '2015-05-12 12:04:14', '2015-05-12 12:04:14', NULL, '0', 27, 1, NULL),
(172, '', '2015-05-12 12:04:22', '2015-05-12 12:04:22', NULL, '0', 12, 1, NULL),
(173, '', '2015-05-12 12:04:32', '2015-05-12 12:04:32', NULL, '0', 12, 1, NULL),
(174, '', '2015-05-12 12:04:40', '2015-05-12 12:04:40', NULL, '0', 12, 1, NULL),
(175, '', '2015-05-12 12:05:02', '2015-05-12 12:05:02', NULL, '0', 12, 1, NULL),
(176, '', '2015-05-12 12:05:17', '2015-05-12 12:05:17', NULL, '0', 12, 1, NULL),
(177, '', '2015-05-12 12:05:36', '2015-05-12 12:05:36', NULL, '0', 12, 1, NULL),
(179, '', '2015-05-12 17:47:33', '2015-05-12 17:47:33', NULL, '0', 12, 1, NULL),
(180, '', '2015-05-12 17:47:46', '2015-05-12 17:47:46', NULL, '0', 12, 1, NULL),
(181, '', '2015-05-12 17:48:02', '2015-05-12 17:48:02', NULL, '0', 12, 1, NULL),
(182, '', '2015-05-12 17:48:18', '2015-05-12 17:48:18', NULL, '0', 27, 1, NULL),
(183, '', '2015-05-12 17:48:38', '2015-05-12 17:48:38', NULL, '0', 12, 1, NULL),
(184, '', '2015-05-12 17:48:53', '2015-05-12 17:48:53', NULL, '0', 12, 1, NULL),
(185, '', '2015-05-12 17:49:13', '2015-05-12 17:49:13', NULL, '0', 27, 1, NULL),
(186, '', '2015-05-12 17:49:27', '2015-05-12 17:49:27', NULL, '0', 12, 1, NULL),
(187, '', '2015-05-12 17:49:43', '2015-05-12 17:49:43', NULL, '0', 27, 1, NULL),
(188, '', '2015-05-12 17:49:55', '2015-05-12 17:49:55', NULL, '0', 12, 1, NULL),
(189, '', '2015-05-12 17:50:36', '2015-05-12 17:50:36', NULL, '0', 12, 1, NULL),
(190, '', '2015-05-12 17:50:44', '2015-05-12 17:50:44', NULL, '0', 12, 1, NULL),
(191, '', '2015-05-12 17:51:24', '2015-05-12 17:51:24', NULL, '0', 12, 1, NULL),
(192, '', '2015-05-12 17:51:51', '2015-05-12 17:51:51', NULL, '0', 12, 1, NULL),
(193, '', '2015-05-12 17:52:18', '2015-05-12 17:52:50', NULL, '0', 12, 1, NULL),
(194, '', '2015-05-12 17:55:41', '2015-05-12 17:55:41', NULL, '0', 12, 1, NULL),
(195, '', '2015-05-12 17:55:53', '2015-05-12 17:55:53', NULL, '0', 12, 1, NULL),
(196, '', '2015-05-12 17:56:03', '2015-05-12 17:56:03', NULL, '0', 27, 1, NULL),
(197, '', '2015-05-12 17:56:15', '2015-05-12 17:56:15', NULL, '0', 12, 1, NULL),
(198, '', '2015-05-12 17:56:24', '2015-05-12 17:56:24', NULL, '0', 12, 1, NULL),
(199, '', '2015-05-12 17:56:39', '2015-05-12 17:56:39', NULL, '0', 27, 1, NULL),
(200, '', '2015-05-12 17:56:52', '2015-05-12 17:56:52', NULL, '0', 12, 1, NULL),
(201, '', '2015-05-12 17:57:10', '2015-05-12 17:57:10', NULL, '0', 12, 1, NULL),
(202, '', '2015-05-12 17:57:20', '2015-05-12 17:57:20', NULL, '0', 27, 1, NULL),
(203, '', '2015-05-12 17:57:36', '2015-05-12 17:57:36', NULL, '0', 12, 1, NULL),
(204, '', '2015-05-12 17:57:46', '2015-05-12 17:57:46', NULL, '0', 12, 1, NULL),
(205, '', '2015-05-12 17:58:11', '2015-05-12 17:58:11', NULL, '0', 12, 1, NULL),
(206, '', '2015-05-12 17:58:28', '2015-05-12 17:58:28', NULL, '0', 12, 1, NULL),
(207, '', '2015-05-12 17:58:51', '2015-05-12 17:58:51', NULL, '0', 12, 1, NULL),
(208, '', '2015-05-12 18:00:48', '2015-05-12 18:00:48', NULL, '0', 12, 1, NULL),
(209, '', '2015-05-12 18:00:59', '2015-05-12 18:00:59', NULL, '0', 12, 1, NULL),
(210, '', '2015-05-12 18:01:16', '2015-05-12 18:01:16', NULL, '0', 12, 1, NULL),
(211, '', '2015-05-12 18:01:28', '2015-05-12 18:01:28', NULL, '0', 12, 1, NULL),
(212, '', '2015-05-12 18:01:41', '2015-05-12 18:01:41', NULL, '0', 27, 1, NULL),
(213, '', '2015-05-12 18:01:50', '2015-05-12 18:01:50', NULL, '0', 27, 1, NULL),
(214, '', '2015-05-12 18:02:00', '2015-05-12 18:02:00', NULL, '0', 27, 1, NULL),
(215, '', '2015-05-12 18:02:12', '2015-05-12 18:02:12', NULL, '0', 12, 1, NULL),
(216, '', '2015-05-12 18:02:19', '2015-05-12 18:02:19', NULL, '0', 12, 1, NULL),
(217, '', '2015-05-12 18:02:32', '2015-05-12 18:02:32', NULL, '0', 12, 1, NULL),
(223, '', '2015-05-12 18:05:18', '2015-05-12 18:05:18', NULL, '0', 12, 1, NULL),
(227, '', '2015-05-12 18:05:59', '2015-05-12 18:05:59', NULL, '0', 12, 1, NULL),
(228, '', '2015-05-12 18:06:32', '2015-05-12 18:06:32', NULL, '0', 12, 1, NULL),
(229, '', '2015-05-12 18:06:49', '2015-05-12 18:06:49', NULL, '0', 12, 1, NULL),
(230, '', '2015-05-12 18:07:05', '2015-05-12 18:07:05', NULL, '0', 12, 1, NULL),
(231, '', '2015-05-12 18:07:45', '2015-05-12 18:07:45', NULL, '0', 12, 1, NULL),
(232, '', '2015-05-12 18:08:07', '2015-05-12 18:08:07', NULL, '0', 12, 1, NULL),
(233, '', '2015-05-12 18:08:15', '2015-05-12 18:08:15', NULL, '0', 12, 1, NULL),
(234, '', '2015-05-12 18:08:31', '2015-05-12 18:08:31', NULL, '0', 12, 1, NULL),
(235, '', '2015-05-12 18:08:50', '2015-05-12 18:08:50', NULL, '0', 12, 1, NULL),
(236, '', '2015-05-12 18:24:21', '2015-05-12 18:24:21', NULL, '0', 27, 1, NULL),
(237, '', '2015-05-12 18:29:38', '2015-05-12 18:29:38', NULL, '1', 27, 1, NULL),
(238, '', '2015-05-12 18:29:45', '2015-05-12 18:29:45', NULL, '1', 27, 1, NULL),
(239, '', '2015-05-12 18:31:26', '2015-05-12 18:31:26', NULL, '1', 27, 1, NULL),
(240, '', '2015-05-12 18:31:33', '2015-05-12 18:31:33', NULL, '1', 27, 1, NULL),
(241, '', '2015-05-12 18:31:42', '2015-05-12 18:31:42', NULL, '1', 27, 1, NULL),
(242, '', '2015-05-12 18:34:01', '2015-05-12 18:34:01', NULL, '0', 12, 1, NULL),
(243, '', '2015-05-12 18:36:50', '2015-05-12 18:36:50', NULL, '0', 12, 1, NULL),
(244, '', '2015-05-12 18:39:35', '2015-05-12 18:39:35', NULL, '0', 12, 1, NULL),
(245, '', '2015-05-12 18:50:20', '2015-05-12 18:50:20', NULL, '0', 12, 1, NULL),
(246, '', '2015-05-12 18:51:19', '2015-05-12 18:51:19', NULL, '0', 27, 1, NULL),
(247, '', '2015-05-12 18:54:04', '2015-05-12 18:54:04', NULL, '0', 33, 1, NULL),
(248, '', '2015-05-12 18:55:32', '2015-05-12 18:55:40', NULL, '0', 33, 1, NULL),
(249, '', '2015-05-12 19:04:38', '2015-05-12 19:04:38', NULL, '0', 27, 1, NULL),
(250, '', '2015-05-12 19:08:06', '2015-05-12 19:08:06', NULL, '1', 27, 1, NULL),
(251, '', '2015-05-12 19:08:37', '2015-05-12 19:08:37', NULL, '1', 27, 1, NULL),
(252, '', '2015-05-12 19:08:57', '2015-05-12 19:08:57', NULL, '1', 27, 1, NULL),
(253, '', '2015-05-12 19:09:17', '2015-05-12 19:09:17', NULL, '0', 27, 1, NULL),
(254, '', '2015-05-12 19:09:54', '2015-05-12 19:10:07', NULL, '1', 27, 1, NULL),
(255, '', '2015-05-12 19:17:00', '2015-05-12 19:17:00', NULL, '0', 27, 1, NULL),
(256, '', '2015-05-12 19:17:12', '2015-05-12 19:17:12', NULL, '0', 27, 1, NULL),
(257, '', '2015-05-12 19:17:25', '2015-05-12 19:17:25', NULL, '0', 27, 1, NULL),
(258, '', '2015-05-12 19:17:36', '2015-05-12 19:17:36', NULL, '0', 27, 1, NULL),
(259, '', '2015-05-12 19:17:53', '2015-05-12 19:17:53', NULL, '0', 11, 1, NULL),
(260, '', '2015-05-12 19:19:05', '2015-05-12 19:19:05', NULL, '0', 12, 1, NULL),
(261, '', '2015-05-12 19:19:32', '2015-05-12 19:19:32', NULL, '0', 12, 1, NULL),
(262, '', '2015-05-12 19:20:18', '2015-05-12 19:20:18', NULL, '0', 11, 1, NULL),
(263, '', '2015-05-12 19:20:32', '2015-05-12 19:20:32', NULL, '0', 12, 1, NULL),
(264, '', '2015-05-12 19:20:45', '2015-05-12 19:20:45', NULL, '0', 27, 1, NULL),
(265, '', '2015-05-12 19:20:57', '2015-05-12 19:20:57', NULL, '0', 27, 1, NULL),
(266, '', '2015-05-12 19:21:08', '2015-05-12 19:21:08', NULL, '0', 27, 1, NULL),
(267, '', '2015-05-12 19:21:19', '2015-05-12 19:21:19', NULL, '0', 27, 1, NULL),
(268, '', '2015-05-12 19:21:33', '2015-05-12 19:21:33', NULL, '0', 12, 1, NULL),
(269, '', '2015-05-12 19:21:53', '2015-05-12 19:21:53', NULL, '0', 12, 1, NULL),
(270, '', '2015-05-12 19:22:03', '2015-05-12 19:22:03', NULL, '0', 12, 1, NULL),
(271, '', '2015-05-12 19:22:15', '2015-05-12 19:22:15', NULL, '0', 12, 1, NULL),
(272, '', '2015-05-12 19:22:32', '2015-05-12 19:22:32', NULL, '0', 12, 1, NULL),
(273, '', '2015-05-12 19:25:12', '2015-05-12 19:25:32', NULL, '1', 27, 1, NULL),
(274, '', '2015-05-12 19:26:03', '2015-05-12 19:26:14', NULL, '1', 12, 1, NULL),
(275, '', '2015-05-12 19:27:47', '2015-05-12 19:27:47', NULL, '0', 12, 1, NULL),
(276, '', '2015-05-12 19:27:55', '2015-05-12 19:27:55', NULL, '0', 12, 1, NULL),
(277, '', '2015-05-12 19:28:10', '2015-05-12 19:28:10', NULL, '0', 12, 1, NULL),
(278, '', '2015-05-12 19:28:28', '2015-05-12 19:28:28', NULL, '0', 12, 1, NULL),
(279, '', '2015-05-12 19:29:06', '2015-05-12 19:29:06', NULL, '1', 27, 1, NULL),
(280, '', '2015-05-12 19:29:15', '2015-05-12 19:29:15', NULL, '0', 12, 1, NULL),
(281, '', '2015-05-12 19:29:23', '2015-05-12 19:29:23', NULL, '0', 12, 1, NULL),
(282, '', '2015-05-12 19:30:02', '2015-05-12 19:30:02', NULL, '0', 12, 1, NULL),
(283, '', '2015-05-12 19:30:19', '2015-05-12 19:30:19', NULL, '0', 12, 1, NULL),
(284, '', '2015-05-12 19:30:37', '2015-05-12 19:30:37', NULL, '0', 12, 1, NULL),
(285, '', '2015-05-12 19:31:19', '2015-05-12 19:31:19', NULL, '1', 27, 1, NULL),
(286, '', '2015-05-12 20:36:00', '2015-05-12 20:36:00', NULL, '0', 12, 1, NULL),
(287, '', '2015-05-12 20:36:50', '2015-05-12 20:36:50', NULL, '0', 27, 1, NULL),
(288, '', '2015-05-12 20:37:21', '2015-05-12 20:37:21', NULL, '0', 27, 1, NULL),
(289, '', '2015-05-12 20:37:50', '2015-05-12 20:37:50', NULL, '0', 27, 1, NULL),
(290, '', '2015-05-12 20:39:15', '2015-05-12 20:40:40', NULL, '0', 27, 1, NULL),
(291, '', '2015-05-12 20:39:32', '2015-05-12 20:40:18', NULL, '0', 27, 1, NULL),
(292, '', '2015-05-12 20:41:46', '2015-05-12 20:41:46', NULL, '0', 27, 1, NULL),
(293, '', '2015-05-12 20:42:25', '2015-05-12 20:42:25', NULL, '0', 12, 1, NULL),
(294, '', '2015-05-12 20:42:38', '2015-05-12 20:42:38', NULL, '0', 12, 1, NULL),
(295, '', '2015-05-12 20:42:50', '2015-05-12 20:42:50', NULL, '0', 12, 1, NULL),
(296, '', '2015-05-12 20:43:02', '2015-05-12 20:43:02', NULL, '0', 12, 1, NULL),
(297, '', '2015-05-12 20:43:15', '2015-05-12 20:43:15', NULL, '0', 12, 1, NULL),
(298, '', '2015-05-12 20:43:23', '2015-05-12 20:43:23', NULL, '0', 12, 1, NULL),
(299, '', '2015-05-12 20:43:46', '2015-05-12 20:43:46', NULL, '0', 12, 1, NULL),
(300, '', '2015-05-12 20:44:05', '2015-05-12 20:44:05', NULL, '0', 12, 1, NULL),
(301, '', '2015-05-12 20:44:27', '2015-05-12 20:44:27', NULL, '0', 12, 1, NULL),
(302, '', '2015-05-12 20:46:28', '2015-05-12 20:47:05', NULL, '1', 27, 1, NULL),
(303, '', '2015-05-12 20:46:51', '2015-05-12 20:46:51', NULL, '1', 27, 1, NULL),
(304, '', '2015-05-12 20:48:00', '2015-05-12 20:48:00', NULL, '1', 27, 1, NULL),
(305, '', '2015-05-12 20:49:10', '2015-05-12 20:49:10', NULL, '1', 12, 1, NULL),
(306, '', '2015-05-12 20:49:44', '2015-05-12 20:49:44', NULL, '0', 12, 1, NULL),
(307, '', '2015-05-12 20:50:51', '2015-05-12 20:50:51', NULL, '1', 27, 1, NULL),
(308, '', '2015-05-12 20:52:33', '2015-05-12 20:52:33', NULL, '1', 27, 1, NULL),
(309, '', '2015-05-12 20:53:20', '2015-05-12 20:54:03', NULL, '1', 27, 1, NULL),
(310, '', '2015-05-12 20:54:59', '2015-05-12 20:55:38', NULL, '1', 27, 1, NULL),
(311, '', '2015-05-12 20:56:20', '2015-05-12 20:56:20', NULL, '1', 27, 1, NULL),
(312, '', '2015-05-12 20:56:42', '2015-05-12 20:56:42', NULL, '1', 27, 1, NULL),
(313, '', '2015-05-12 20:57:14', '2015-05-12 20:57:14', NULL, '1', 27, 1, NULL),
(314, '', '2015-05-12 21:00:22', '2015-05-12 21:00:22', NULL, '0', 12, 1, NULL),
(315, '', '2015-05-12 21:02:12', '2015-05-12 21:02:12', NULL, '0', 12, 1, NULL),
(316, '', '2015-05-12 21:02:27', '2015-05-12 21:02:27', NULL, '0', 12, 1, NULL),
(317, '', '2015-05-12 21:04:16', '2015-05-12 21:04:16', NULL, '0', 24, 1, NULL),
(318, '', '2015-05-12 21:05:15', '2015-05-12 21:05:15', NULL, '1', 24, 1, NULL),
(319, '', '2015-05-12 21:05:34', '2015-05-12 21:05:34', NULL, '1', 24, 1, NULL),
(320, '', '2015-05-12 21:05:56', '2015-05-12 21:05:56', NULL, '1', 24, 1, NULL),
(321, '', '2015-05-12 21:06:21', '2015-05-12 21:06:21', NULL, '1', 24, 1, NULL),
(322, '', '2015-05-12 21:06:52', '2015-05-12 21:06:52', NULL, '0', 12, 1, NULL),
(323, '', '2015-05-12 21:07:20', '2015-05-12 21:07:20', NULL, '0', 12, 1, NULL),
(324, '', '2015-05-12 21:07:32', '2015-05-12 21:07:32', NULL, '0', 12, 1, NULL),
(325, '', '2015-05-12 21:07:54', '2015-05-12 21:07:54', NULL, '0', 12, 1, NULL),
(326, '', '2015-05-12 21:08:30', '2015-05-12 21:08:30', NULL, '0', 12, 1, NULL),
(327, '', '2015-05-13 21:22:18', '2015-05-13 21:22:18', NULL, '1', 12, 1, NULL),
(328, '', '2015-05-13 21:24:55', '2015-05-13 21:24:55', NULL, '0', 12, 1, NULL),
(330, '', '2015-05-13 21:27:22', '2015-05-13 21:27:22', NULL, '0', 12, 1, NULL),
(331, '', '2015-05-13 21:28:28', '2015-05-13 21:28:35', NULL, '1', 12, 1, NULL),
(332, '', '2015-05-13 21:29:24', '2015-05-13 21:29:24', NULL, '0', 26, 1, NULL),
(333, '', '2015-05-13 21:29:51', '2015-05-13 21:29:51', NULL, '0', 1, 1, NULL),
(334, '', '2015-05-13 21:30:26', '2015-05-13 21:30:26', NULL, '0', 19, 1, NULL),
(335, '', '2015-05-13 21:31:29', '2015-05-13 21:31:29', NULL, '0', 19, 1, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BlockTypePermissionBlockTypeAccessList`
--

CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BlockTypePermissionBlockTypeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `btID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BlockTypes`
--

CREATE TABLE IF NOT EXISTS `BlockTypes` (
`btID` int(10) unsigned NOT NULL,
  `btHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `btDescription` text COLLATE utf8_unicode_ci,
  `btCopyWhenPropagate` tinyint(1) NOT NULL DEFAULT '0',
  `btIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `btIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineAdd` tinyint(1) NOT NULL DEFAULT '0',
  `btSupportsInlineEdit` tinyint(1) NOT NULL DEFAULT '0',
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL DEFAULT '0',
  `btDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `btInterfaceWidth` int(10) unsigned NOT NULL DEFAULT '400',
  `btInterfaceHeight` int(10) unsigned NOT NULL DEFAULT '400',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Gegevens worden geëxporteerd voor tabel `BlockTypes`
--

INSERT INTO `BlockTypes` (`btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineAdd`, `btSupportsInlineEdit`, `btIgnorePageThemeGridFrameworkContainer`, `btDisplayOrder`, `btInterfaceWidth`, `btInterfaceHeight`, `pkgID`) VALUES
(1, 'core_area_layout', 'Area Layout', 'Proxy block for area layouts.', 0, 0, 1, 1, 1, 0, 0, 400, 400, 0),
(2, 'core_page_type_composer_control_output', 'Composer Control', 'Proxy block for blocks that need to be output through composer.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(3, 'core_scrapbook_display', 'Scrapbook Display', 'Proxy block for blocks pasted through the scrapbook.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(4, 'core_stack_display', 'Stack Display', 'Proxy block for stacks added through the UI.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(5, 'core_conversation', 'Conversation', 'Displays conversations on a page.', 1, 0, 0, 0, 0, 0, 0, 400, 400, 0),
(6, 'dashboard_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 300, 100, 0),
(7, 'dashboard_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 300, 100, 0),
(8, 'dashboard_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(9, 'dashboard_app_status', 'Dashboard App Status', 'Displays update and welcome back information on your dashboard.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(10, 'dashboard_site_activity', 'Dashboard Site Activity', 'Displays a summary of website activity.', 0, 0, 1, 0, 0, 0, 0, 400, 400, 0),
(11, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 0, 0, 0, 0, 0, 0, 0, 800, 350, 0),
(12, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 0, 0, 0, 1, 1, 0, 0, 600, 465, 0),
(13, 'date_navigation', 'Date Navigation', 'Displays a list of months to filter a page list by.', 0, 0, 0, 0, 0, 0, 0, 400, 450, 0),
(14, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 0, 0, 0, 0, 0, 0, 0, 370, 175, 0),
(15, 'file', 'File', 'Link to files stored in the asset library.', 0, 0, 0, 0, 0, 0, 0, 300, 250, 0),
(16, 'page_attribute_display', 'Page Attribute Display', 'Displays the value of a page attribute for the current page.', 0, 0, 0, 0, 0, 0, 0, 500, 365, 0),
(17, 'form', 'Form', 'Build simple forms and surveys.', 0, 0, 0, 0, 0, 0, 0, 420, 430, 0),
(18, 'page_title', 'Page Title', 'Displays a Page''s Title', 0, 0, 0, 0, 0, 0, 0, 400, 200, 0),
(19, 'feature', 'Feature', 'Displays an icon, a title, and a short paragraph description.', 0, 0, 0, 0, 0, 0, 0, 400, 520, 0),
(20, 'topic_list', 'Topic List', 'Displays a list of your site''s topics, allowing you to click on them to filter a page list.', 0, 0, 0, 0, 0, 0, 0, 400, 400, 0),
(21, 'social_links', 'Social Links', 'Allows users to add social icons to their website', 0, 0, 0, 0, 0, 0, 0, 400, 400, 0),
(22, 'testimonial', 'Testimonial', 'Displays a quote or paragraph next to biographical information and a person''s picture.', 0, 0, 0, 0, 0, 0, 0, 450, 560, 0),
(23, 'share_this_page', 'Share This Page', 'Allows users to share this page with social networks.', 0, 0, 0, 0, 0, 0, 0, 400, 400, 0),
(24, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 0, 0, 0, 0, 0, 0, 0, 400, 320, 0),
(25, 'html', 'HTML', 'For adding HTML by hand.', 0, 0, 0, 0, 0, 1, 0, 600, 500, 0),
(26, 'horizontal_rule', 'Horizontal Rule', 'Adds a thin hairline horizontal divider to the page.', 0, 0, 0, 0, 0, 1, 0, 400, 400, 0),
(27, 'image', 'Image', 'Adds images and onstates from the library to pages.', 0, 0, 0, 0, 0, 0, 0, 400, 550, 0),
(28, 'faq', 'FAQ', 'Frequently Asked Questions Block', 0, 0, 0, 0, 0, 0, 0, 600, 465, 0),
(29, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 0, 0, 0, 0, 0, 0, 0, 430, 400, 0),
(30, 'page_list', 'Page List', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 0, 800, 350, 0),
(31, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 0, 0, 0, 0, 0, 0, 0, 400, 550, 0),
(32, 'search', 'Search', 'Add a search box to your site.', 0, 0, 0, 0, 0, 0, 0, 400, 420, 0),
(33, 'image_slider', 'Image Slider', 'Display your images and captions in an attractive slideshow format.', 0, 0, 0, 0, 0, 1, 0, 600, 465, 0),
(34, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 0, 0, 0, 0, 0, 0, 0, 420, 400, 0),
(35, 'switch_language', 'Switch Language', 'Adds a front-end language switcher to your website.', 0, 0, 0, 0, 0, 0, 0, 500, 150, 0),
(36, 'tags', 'Tags', 'List pages based on type, area.', 0, 0, 0, 0, 0, 0, 0, 450, 439, 0),
(37, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.', 0, 0, 0, 0, 0, 0, 0, 320, 270, 0),
(38, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 0, 0, 0, 0, 0, 0, 0, 400, 430, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BlockTypeSetBlockTypes`
--

CREATE TABLE IF NOT EXISTS `BlockTypeSetBlockTypes` (
  `btID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsID` int(10) unsigned NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `BlockTypeSetBlockTypes`
--

INSERT INTO `BlockTypeSetBlockTypes` (`btID`, `btsID`, `displayOrder`) VALUES
(12, 1, 0),
(25, 1, 1),
(27, 1, 2),
(15, 1, 3),
(26, 1, 4),
(19, 1, 5),
(11, 2, 0),
(18, 2, 1),
(28, 2, 2),
(30, 2, 3),
(29, 2, 4),
(13, 2, 5),
(36, 2, 6),
(20, 2, 7),
(31, 2, 8),
(35, 2, 9),
(17, 3, 0),
(32, 3, 1),
(14, 3, 2),
(34, 4, 0),
(5, 4, 1),
(21, 4, 2),
(22, 4, 3),
(23, 4, 4),
(16, 5, 0),
(33, 5, 1),
(37, 5, 2),
(38, 5, 3),
(24, 5, 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BlockTypeSets`
--

CREATE TABLE IF NOT EXISTS `BlockTypeSets` (
`btsID` int(10) unsigned NOT NULL,
  `btsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Gegevens worden geëxporteerd voor tabel `BlockTypeSets`
--

INSERT INTO `BlockTypeSets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
(1, 'Basic', 'basic', 0, 0),
(2, 'Navigation', 'navigation', 0, 0),
(3, 'Forms', 'form', 0, 0),
(4, 'Social Networking', 'social', 0, 0),
(5, 'Multimedia', 'multimedia', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btContentFile`
--

CREATE TABLE IF NOT EXISTS `btContentFile` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btContentImage`
--

CREATE TABLE IF NOT EXISTS `btContentImage` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `fOnstateID` int(10) unsigned DEFAULT '0',
  `maxWidth` int(10) unsigned DEFAULT '0',
  `maxHeight` int(10) unsigned DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `altText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `btContentImage`
--

INSERT INTO `btContentImage` (`bID`, `fID`, `fOnstateID`, `maxWidth`, `maxHeight`, `externalLink`, `internalLinkCID`, `altText`, `title`) VALUES
(14, 1, 0, 0, 0, '', 0, '', ''),
(17, 4, 0, 0, 0, '', 0, '', ''),
(23, 5, 0, 0, 0, '', 0, '', ''),
(24, 1, 0, 0, 0, '', 0, '', ''),
(26, 1, 0, 0, 0, '', 0, '', ''),
(87, 6, 0, 0, 0, '', 0, '', ''),
(90, 7, 0, 0, 0, '', 0, '', ''),
(97, 8, 0, 0, 0, '', 0, '', ''),
(98, 8, 0, 0, 0, '', 0, '', ''),
(100, 6, 0, 0, 0, '', 0, '', ''),
(101, 6, 0, 0, 0, '', 0, '', ''),
(102, 6, 0, 0, 0, '', 0, '', ''),
(105, 8, 0, 0, 0, '', 0, '', ''),
(106, 8, 0, 0, 0, '', 0, '', ''),
(108, 7, 0, 0, 0, '', 0, '', ''),
(110, 8, 0, 0, 0, '', 0, '', ''),
(128, 9, 0, 0, 0, '', 0, '', ''),
(145, 10, 0, 0, 0, '', 0, '', ''),
(148, 10, 0, 0, 0, '', 0, '', ''),
(159, 11, 0, 0, 0, '', 0, '', ''),
(161, 12, 0, 0, 0, '', 0, '', ''),
(164, 12, 0, 0, 0, '', 0, '', ''),
(168, 12, 0, 0, 0, '', 0, '', ''),
(171, 12, 0, 0, 0, '', 0, '', ''),
(182, 11, 0, 0, 0, '', 0, '', ''),
(185, 12, 0, 0, 0, '', 0, '', ''),
(187, 12, 0, 0, 0, '', 0, '', ''),
(196, 11, 0, 0, 0, '', 0, '', ''),
(199, 12, 0, 0, 0, '', 0, '', ''),
(202, 12, 0, 0, 0, '', 0, '', ''),
(212, 10, 0, 0, 0, '', 0, '', ''),
(213, 10, 0, 0, 0, '', 0, '', ''),
(214, 10, 0, 0, 0, '', 0, '', ''),
(236, 12, 0, 0, 0, '', 0, '', ''),
(237, 9, 0, 0, 0, '', 0, '', ''),
(238, 9, 0, 0, 0, '', 0, '', ''),
(239, 9, 0, 0, 0, '', 0, '', ''),
(240, 9, 0, 0, 0, '', 0, '', ''),
(241, 9, 0, 0, 0, '', 0, '', ''),
(246, 22, 0, 0, 0, '', 0, '', ''),
(249, 22, 0, 0, 0, '', 0, '', ''),
(250, 30, 0, 0, 0, '', 0, '', ''),
(251, 31, 0, 0, 0, '', 0, '', ''),
(252, 32, 0, 0, 0, '', 0, '', ''),
(253, 33, 0, 0, 0, '', 0, '', ''),
(254, 31, 0, 0, 0, '', 0, '', ''),
(255, 30, 0, 0, 0, '', 0, '', ''),
(256, 31, 0, 0, 0, '', 0, '', ''),
(257, 32, 0, 0, 0, '', 0, '', ''),
(258, 33, 0, 0, 0, '', 0, '', ''),
(264, 30, 0, 0, 0, '', 0, '', ''),
(265, 31, 0, 0, 0, '', 0, '', ''),
(266, 32, 0, 0, 0, '', 0, '', ''),
(267, 33, 0, 0, 0, '', 0, '', ''),
(273, 34, 0, 0, 0, '', 0, '', ''),
(279, 34, 0, 0, 0, '', 0, '', ''),
(285, 34, 0, 0, 0, '', 0, '', ''),
(287, 35, 0, 0, 0, '', 0, '', ''),
(288, 36, 0, 0, 0, '', 0, '', ''),
(289, 37, 0, 0, 0, '', 0, '', ''),
(290, 37, 0, 0, 0, '', 0, '', ''),
(291, 35, 0, 0, 0, '', 0, '', ''),
(292, 37, 0, 0, 0, '', 0, '', ''),
(302, 38, 0, 0, 0, '', 0, '', ''),
(303, 39, 0, 0, 0, '', 0, '', ''),
(304, 38, 0, 0, 0, '', 0, '', ''),
(307, 40, 0, 0, 0, '', 0, '', ''),
(308, 41, 0, 0, 0, '', 0, '', ''),
(309, 43, 0, 0, 0, '', 0, '', ''),
(310, 0, 0, 0, 0, '', 0, '', ''),
(311, 41, 0, 0, 0, '', 0, '', ''),
(312, 41, 0, 0, 0, '', 0, '', ''),
(313, 42, 0, 0, 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btContentLocal`
--

CREATE TABLE IF NOT EXISTS `btContentLocal` (
  `bID` int(10) unsigned NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `btContentLocal`
--

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(1, '<div style="padding: 40px; text-align: center"> <iframe width="853" height="480" src="//www.youtube.com/embed/VB-R71zk06U" frameborder="0" allowfullscreen></iframe>                                     </div>'),
(10, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatidsffdfsdsqfdsqdffsdon ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),
(11, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),
(12, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),
(13, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),
(16, '<p>Vochtproblemen</p>'),
(18, '<p>Realisaties</p>'),
(21, '<p>Over ons</p>'),
(31, ''),
(39, ''),
(46, ''),
(50, ''),
(56, ''),
(57, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</p>'),
(58, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),
(59, '<p><a href="{CCM:CID_157}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(60, '<p>Lees meer</p>'),
(61, '<p><a href="{CCM:CID_157}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(62, '<p><a href="{CCM:CID_157}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(68, ''),
(73, ''),
(75, ''),
(85, ''),
(88, '<p>Opstijgend vocht?</p>'),
(89, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.tekst</p>'),
(91, 'Vochtige kelder?'),
(92, '<p>Opstijgend vocht?</p>'),
(93, '<p>Opstijgend vocht?</p>'),
(94, '<p>Opstijgend vocht?</p>'),
(95, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Opstijgend vocht</a></p>'),
(96, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Vochtige kelder?</a></p>'),
(103, ''),
(104, ''),
(107, ''),
(111, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Schimmels?</a></p>'),
(112, '<p>Wij staan voor:</p>'),
(113, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(114, '<p>Adres:</p>'),
(115, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>    				 <li>Fax. +32 (0)54 26 03 76</li>    				 <li>GSM. +32 (0)478/30 94 63</li>    				 <li>info@vochtinuwwoning.be</li></ul>'),
(116, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis Expertise</a></p>'),
(117, '<p><a href="{CCM:CID_159}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(118, '<p><a href="{CCM:CID_153}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(119, '<p><a href="{CCM:CID_157}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(120, '<p><a href="{CCM:CID_159}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(121, '<p><a href="{CCM:CID_153}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(122, '<p><a href="{CCM:CID_157}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(123, '<p>Vochtproblemen</p>'),
(124, '<p>Oorzaken?</p>'),
(125, '<p>Wat is de impact?</p>'),
(126, '<p>Hoe oplossen?</p>'),
(127, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&nbsp;tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&nbsp;quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&nbsp;consequat.</p>'),
(132, ''),
(136, ''),
(140, ''),
(143, '<p><a href="{CCM:CID_152}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(144, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad  minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip  ex ea commodo consequat.</p>'),
(146, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad  minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip  ex ea commodo consequat.</p>'),
(147, '<p><a href="{CCM:CID_151}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(149, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad  minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip  ex ea commodo consequat.</p>'),
(150, ''),
(151, '<p><a href="{CCM:CID_163}" data-concrete5-link-type="ajax">Lees meer?</a></p>'),
(152, '<p>Wij staan voor:</p>'),
(153, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(154, '<p>Adres:</p>'),
(155, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(156, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(157, '<p>Oorzaken</p>'),
(158, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(160, '<p>Opstijgend vocht</p>'),
(162, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(163, '<p>Lekken</p>'),
(165, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(166, '<p>Gebrekkige ventilatie</p>'),
(169, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(170, '<p>Koudebruggen</p>'),
(172, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(173, '<p>Wij staan voor:</p>'),
(174, '<p>Adres:</p>'),
(175, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(176, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(177, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(179, ''),
(180, '<p>Wat is de impact?</p>'),
(181, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(183, '<p>Gezondheid</p>'),
(184, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(186, '<p>Energieverbruik</p>'),
(188, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(189, '<p>Wij staan voor:</p>'),
(190, '<p>Adres:</p>'),
(191, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(192, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(193, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(194, '<p>oplossing</p>'),
(195, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(197, '<p>Oplossing 1</p>'),
(198, '<p>Oplossing 2</p>'),
(200, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(201, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(203, '<p>Wij staan voor:</p>'),
(204, '<p>Adres:</p>'),
(205, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(206, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(207, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(208, '<p>Realisaties</p>'),
(209, '<p>Isolatie binnenmuren</p>'),
(210, '<p>Vochtinjecties</p>'),
(211, '<p>Kelderrenovatie</p>'),
(215, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(216, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(217, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.</p>'),
(223, ''),
(227, ''),
(228, '<p><a href="{CCM:CID_154}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(229, '<p><a href="{CCM:CID_164}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(230, '<p><a href="{CCM:CID_165}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(231, '<p>Wij staan voor:</p>'),
(232, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(233, '<p>Adres:</p>'),
(234, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(235, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(242, ''),
(243, '<p>Tekst bij foto 1</p>'),
(244, '<p>Wij staan voor:</p>'),
(245, ''),
(260, '<p>Vochtinjecties en zoutwerende fleece</p>'),
(261, '<p>Isolatie van binnenmuren tegen koudebruggen</p>'),
(263, '<p>Kelderrenovaties</p>'),
(268, '<p>Wij staan voor:</p>'),
(269, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(270, '<p>Adres:</p>'),
(271, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(272, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(274, '<p>Isolatie van binnenmuren tegen koudebruggen</p>'),
(275, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(276, '<p>Adres:</p>'),
(277, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(278, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(280, '<p>Wij staan voor:</p>'),
(281, '<p>Adres:</p>'),
(282, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(283, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(284, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(286, '<p>Over ons</p>'),
(293, '<p>Historiek</p>'),
(294, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.           orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehe</p>'),
(295, '<p>Realisaties</p>'),
(296, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.           orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehe</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>'),
(297, '<p>Wij staan voor:</p>'),
(298, '<p>Adres:</p>'),
(299, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(300, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(301, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(305, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Opstijgend vocht?</a></p>'),
(306, ''),
(314, '<p>Contact</p>'),
(315, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p>'),
(316, '<p>Fax. +32 (0)54 26 03 76<br>GSM. +32 (0)478/30 94 63<br>info@vochtinuwwoning.be</p>'),
(322, '<p>Wij staan voor:</p>'),
(323, '<p>Voorwaarde 1<br>Voorwaarde 2<br>Voorwaarde 3<br>Voorwaarde 4<br>Voorwaarde 5<br>Voorwaarde 6</p>'),
(324, '<p>Adres:</p>'),
(325, '<p>De Decker Eddy<br>Molenstraat 10<br>1570 Vollezele</p><ul>             <li>Fax. +32 (0)54 26 03 76</li>             <li>GSM. +32 (0)478/30 94 63</li>             <li>info@vochtinuwwoning.be</li></ul>'),
(326, '<p><a href="{CCM:CID_155}" data-concrete5-link-type="ajax">Gratis expertise</a></p>'),
(327, '<p><a href="{CCM:CID_163}" data-concrete5-link-type="ajax">Lees meer</a></p>'),
(328, ''),
(330, '<p>dsfsd</p>'),
(331, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat</p>');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btCoreAreaLayout`
--

CREATE TABLE IF NOT EXISTS `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `btCoreAreaLayout`
--

INSERT INTO `btCoreAreaLayout` (`bID`, `arLayoutID`) VALUES
(333, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btCoreConversation`
--

CREATE TABLE IF NOT EXISTS `btCoreConversation` (
  `bID` int(10) unsigned NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) unsigned NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `displayPostingForm` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `insertNewMessages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'top'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btCorePageTypeComposerControlOutput`
--

CREATE TABLE IF NOT EXISTS `btCorePageTypeComposerControlOutput` (
  `bID` int(10) unsigned NOT NULL,
  `ptComposerOutputControlID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `btCorePageTypeComposerControlOutput`
--

INSERT INTO `btCorePageTypeComposerControlOutput` (`bID`, `ptComposerOutputControlID`) VALUES
(9, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btCoreScrapbookDisplay`
--

CREATE TABLE IF NOT EXISTS `btCoreScrapbookDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `bOriginalID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btCoreStackDisplay`
--

CREATE TABLE IF NOT EXISTS `btCoreStackDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `stID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btDashboardNewsflowLatest`
--

CREATE TABLE IF NOT EXISTS `btDashboardNewsflowLatest` (
  `bID` int(10) unsigned NOT NULL,
  `slot` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `btDashboardNewsflowLatest`
--

INSERT INTO `btDashboardNewsflowLatest` (`bID`, `slot`) VALUES
(4, 'A'),
(5, 'B'),
(8, 'C');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btDateNavigation`
--

CREATE TABLE IF NOT EXISTS `btDateNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cTargetID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btExternalForm`
--

CREATE TABLE IF NOT EXISTS `btExternalForm` (
  `bID` int(10) unsigned NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btFaq`
--

CREATE TABLE IF NOT EXISTS `btFaq` (
  `bID` int(10) unsigned NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btFaqEntries`
--

CREATE TABLE IF NOT EXISTS `btFaqEntries` (
`id` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btFeature`
--

CREATE TABLE IF NOT EXISTS `btFeature` (
  `bID` int(10) unsigned NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `btFeature`
--

INSERT INTO `btFeature` (`bID`, `icon`, `title`, `paragraph`, `externalLink`, `internalLinkCID`) VALUES
(334, '', '', '', '', 0),
(335, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btForm`
--

CREATE TABLE IF NOT EXISTS `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thankyouMsg` text COLLATE utf8_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btFormAnswers`
--

CREATE TABLE IF NOT EXISTS `btFormAnswers` (
`aID` int(10) unsigned NOT NULL,
  `asID` int(10) unsigned DEFAULT '0',
  `msqID` int(10) unsigned DEFAULT '0',
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btFormAnswerSet`
--

CREATE TABLE IF NOT EXISTS `btFormAnswerSet` (
`asID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btFormQuestions`
--

CREATE TABLE IF NOT EXISTS `btFormQuestions` (
`qID` int(10) unsigned NOT NULL,
  `msqID` int(10) unsigned DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0',
  `questionSetId` int(10) unsigned DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8_unicode_ci,
  `position` int(10) unsigned DEFAULT '1000',
  `width` int(10) unsigned DEFAULT '50',
  `height` int(10) unsigned DEFAULT '3',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btGoogleMap`
--

CREATE TABLE IF NOT EXISTS `btGoogleMap` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `btGoogleMap`
--

INSERT INTO `btGoogleMap` (`bID`, `title`, `location`, `latitude`, `longitude`, `zoom`, `width`, `height`, `scrollwheel`) VALUES
(317, '', 'Molenstraat 10, Galmaarden, België', 50.7659159, 4.026207200000044, 14, '100%', '400px', 0),
(318, '', 'Molenstraat 10, Galmaarden, België', 50.7659159, 4.026207200000044, 14, '100%', '300px', 0),
(319, '', 'Molenstraat 10, Galmaarden, België', 50.7659159, 4.026207200000044, 14, '100%', '300px', 1),
(320, '', 'Molenstraat 10, Galmaarden, België', 50.7659159, 4.026207200000044, 10, '100%', '300px', 0),
(321, '', 'Molenstraat 10, Galmaarden, België', 50.7659159, 4.026207200000044, 16, '100%', '300px', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btImageSlider`
--

CREATE TABLE IF NOT EXISTS `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `btImageSlider`
--

INSERT INTO `btImageSlider` (`bID`, `navigationType`) VALUES
(247, 0),
(248, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btImageSliderEntries`
--

CREATE TABLE IF NOT EXISTS `btImageSliderEntries` (
`id` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `fID` int(10) unsigned DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) unsigned DEFAULT '0',
  `title` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `btImageSliderEntries`
--

INSERT INTO `btImageSliderEntries` (`id`, `bID`, `cID`, `fID`, `linkURL`, `internalLinkCID`, `title`, `description`, `sortOrder`) VALUES
(1, 247, 0, 22, '', 0, 'Schimmels', '', 0),
(3, 248, 0, 22, '', 0, '', '<p>Schimmel</p>', 0),
(4, 248, 0, 12, '', 0, '', '', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btNavigation`
--

CREATE TABLE IF NOT EXISTS `btNavigation` (
  `bID` int(10) unsigned NOT NULL,
  `orderBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'top',
  `displayPagesCID` int(10) unsigned NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `displaySubPageLevels` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `displaySubPageLevelsNum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `btNavigation`
--

INSERT INTO `btNavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
(27, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(28, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(40, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(51, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(69, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(74, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(86, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(133, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(141, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(142, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(259, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(262, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btNextPrevious`
--

CREATE TABLE IF NOT EXISTS `btNextPrevious` (
  `bID` int(10) unsigned NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `excludeSystemPages` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btPageAttributeDisplay`
--

CREATE TABLE IF NOT EXISTS `btPageAttributeDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) unsigned DEFAULT NULL,
  `thumbnailWidth` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btPageList`
--

CREATE TABLE IF NOT EXISTS `btPageList` (
  `bID` int(10) unsigned NOT NULL,
  `num` smallint(5) unsigned NOT NULL,
  `orderBy` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btPageTitle`
--

CREATE TABLE IF NOT EXISTS `btPageTitle` (
  `bID` int(10) unsigned NOT NULL,
  `useCustomTitle` int(10) unsigned DEFAULT '0',
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btRssDisplay`
--

CREATE TABLE IF NOT EXISTS `btRssDisplay` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) unsigned DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btSearch`
--

CREATE TABLE IF NOT EXISTS `btSearch` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postTo_cID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btShareThisPage`
--

CREATE TABLE IF NOT EXISTS `btShareThisPage` (
`btShareThisPageID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT '0',
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btSocialLinks`
--

CREATE TABLE IF NOT EXISTS `btSocialLinks` (
`btSocialLinkID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btSurvey`
--

CREATE TABLE IF NOT EXISTS `btSurvey` (
  `bID` int(10) unsigned NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btSurveyOptions`
--

CREATE TABLE IF NOT EXISTS `btSurveyOptions` (
`optionID` int(10) unsigned NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btSurveyResults`
--

CREATE TABLE IF NOT EXISTS `btSurveyResults` (
`resultID` int(10) unsigned NOT NULL,
  `optionID` int(10) unsigned DEFAULT '0',
  `uID` int(10) unsigned DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btSwitchLanguage`
--

CREATE TABLE IF NOT EXISTS `btSwitchLanguage` (
  `bID` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btTags`
--

CREATE TABLE IF NOT EXISTS `btTags` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btTestimonial`
--

CREATE TABLE IF NOT EXISTS `btTestimonial` (
  `bID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btTopicList`
--

CREATE TABLE IF NOT EXISTS `btTopicList` (
  `bID` int(10) unsigned NOT NULL,
  `mode` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btVideo`
--

CREATE TABLE IF NOT EXISTS `btVideo` (
  `bID` int(10) unsigned NOT NULL,
  `webmfID` int(10) unsigned DEFAULT '0',
  `oggfID` int(10) unsigned DEFAULT '0',
  `posterfID` int(10) unsigned DEFAULT '0',
  `mp4fID` int(10) unsigned DEFAULT '0',
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btYouTube`
--

CREATE TABLE IF NOT EXISTS `btYouTube` (
  `bID` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vPlayer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionAttributeValues`
--

CREATE TABLE IF NOT EXISTS `CollectionAttributeValues` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CollectionAttributeValues`
--

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(2, 1, 4, 1),
(3, 1, 3, 2),
(4, 1, 3, 3),
(5, 1, 3, 4),
(6, 1, 3, 5),
(8, 1, 3, 6),
(9, 1, 3, 7),
(10, 1, 3, 8),
(11, 1, 5, 9),
(11, 1, 3, 10),
(12, 1, 3, 11),
(13, 1, 3, 12),
(14, 1, 3, 13),
(15, 1, 3, 14),
(16, 1, 3, 15),
(16, 1, 5, 16),
(17, 1, 3, 17),
(17, 1, 5, 18),
(19, 1, 3, 19),
(20, 1, 3, 20),
(22, 1, 3, 21),
(23, 1, 3, 22),
(24, 1, 3, 23),
(25, 1, 3, 24),
(26, 1, 3, 25),
(28, 1, 3, 26),
(29, 1, 3, 27),
(29, 1, 5, 28),
(31, 1, 5, 29),
(32, 1, 5, 30),
(33, 1, 5, 31),
(34, 1, 5, 32),
(35, 1, 5, 33),
(36, 1, 5, 34),
(38, 1, 5, 35),
(39, 1, 3, 36),
(40, 1, 3, 37),
(41, 1, 3, 38),
(43, 1, 4, 39),
(44, 1, 3, 40),
(48, 1, 3, 41),
(50, 1, 5, 42),
(50, 1, 10, 43),
(50, 1, 3, 44),
(51, 1, 3, 45),
(52, 1, 3, 46),
(53, 1, 5, 47),
(54, 1, 3, 48),
(55, 1, 3, 49),
(56, 1, 3, 50),
(56, 1, 5, 51),
(57, 1, 3, 52),
(58, 1, 3, 53),
(59, 1, 3, 54),
(61, 1, 3, 55),
(62, 1, 3, 56),
(63, 1, 3, 57),
(64, 1, 3, 58),
(65, 1, 3, 59),
(66, 1, 3, 60),
(67, 1, 3, 61),
(68, 1, 3, 62),
(73, 1, 3, 63),
(74, 1, 3, 64),
(75, 1, 3, 65),
(76, 1, 3, 66),
(77, 1, 3, 67),
(79, 1, 3, 68),
(80, 1, 3, 69),
(81, 1, 3, 70),
(82, 1, 3, 71),
(84, 1, 3, 72),
(85, 1, 3, 73),
(86, 1, 3, 74),
(87, 1, 3, 75),
(89, 1, 3, 76),
(90, 1, 3, 77),
(93, 1, 3, 78),
(94, 1, 3, 79),
(95, 1, 3, 80),
(96, 1, 3, 81),
(98, 1, 3, 82),
(99, 1, 3, 83),
(100, 1, 3, 84),
(101, 1, 3, 85),
(102, 1, 3, 86),
(103, 1, 3, 87),
(104, 1, 3, 88),
(105, 1, 3, 89),
(106, 1, 3, 90),
(107, 1, 3, 91),
(108, 1, 3, 92),
(109, 1, 3, 93),
(111, 1, 3, 94),
(112, 1, 3, 95),
(113, 1, 3, 96),
(114, 1, 3, 97),
(116, 1, 10, 98),
(117, 1, 3, 99),
(118, 1, 3, 100),
(119, 1, 3, 101),
(120, 1, 3, 102),
(121, 1, 3, 103),
(123, 1, 3, 104),
(124, 1, 5, 105),
(125, 1, 5, 106),
(125, 1, 10, 107),
(126, 1, 4, 108),
(127, 1, 4, 109),
(128, 1, 4, 110),
(131, 1, 4, 111),
(153, 3, 1, 122),
(153, 4, 1, 122),
(153, 5, 1, 122),
(153, 6, 1, 122),
(153, 7, 1, 122),
(153, 3, 2, 123),
(153, 4, 2, 123),
(153, 5, 2, 123),
(153, 6, 2, 123),
(153, 7, 2, 123),
(153, 3, 3, 124),
(153, 4, 3, 124),
(153, 5, 3, 124),
(153, 6, 3, 124),
(153, 7, 3, 124),
(153, 3, 7, 125),
(153, 4, 7, 125),
(153, 5, 7, 125),
(153, 6, 7, 125),
(153, 7, 7, 125),
(153, 3, 11, 126),
(153, 4, 11, 126),
(153, 5, 11, 126),
(153, 6, 11, 126),
(153, 7, 11, 126);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Collections`
--

CREATE TABLE IF NOT EXISTS `Collections` (
`cID` int(10) unsigned NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=166 ;

--
-- Gegevens worden geëxporteerd voor tabel `Collections`
--

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2015-05-11 11:47:56', '2015-05-12 20:57:17', 'home'),
(2, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'dashboard'),
(3, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'sitemap'),
(4, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'full'),
(5, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'explore'),
(6, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'search'),
(7, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'files'),
(8, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'search'),
(9, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'attributes'),
(10, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'sets'),
(11, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'add_set'),
(12, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'users'),
(13, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'search'),
(14, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'groups'),
(15, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'attributes'),
(16, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'add'),
(17, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'add_group'),
(18, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'bulkupdate'),
(19, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'group_sets'),
(20, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'points'),
(21, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'assign'),
(22, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'actions'),
(23, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'reports'),
(24, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'forms'),
(25, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'surveys'),
(26, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'logs'),
(27, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'pages'),
(28, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'themes'),
(29, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'inspect'),
(30, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'types'),
(31, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'organize'),
(32, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'add'),
(33, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'form'),
(34, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'output'),
(35, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'attributes'),
(36, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'permissions'),
(37, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'templates'),
(38, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'add'),
(39, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'attributes'),
(40, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'single'),
(41, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'feeds'),
(42, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'conversations'),
(43, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'messages'),
(44, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'workflow'),
(45, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'workflows'),
(46, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'me'),
(47, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'blocks'),
(48, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'stacks'),
(49, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'permissions'),
(50, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'list'),
(51, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'types'),
(52, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'extend'),
(53, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'news'),
(54, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'install'),
(55, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'update'),
(56, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'connect'),
(57, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'themes'),
(58, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'addons'),
(59, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'system'),
(60, '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'basics'),
(61, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'name'),
(62, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'accessibility'),
(63, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'social'),
(64, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'icons'),
(65, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'editor'),
(66, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'multilingual'),
(67, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'timezone'),
(68, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'multilingual'),
(69, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'setup'),
(70, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'page_report'),
(71, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'translate_interface'),
(72, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'seo'),
(73, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'urls'),
(74, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'bulk'),
(75, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'codes'),
(76, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'excluded'),
(77, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'searchindex'),
(78, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'files'),
(79, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'permissions'),
(80, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'filetypes'),
(81, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'thumbnails'),
(82, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'storage'),
(83, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'optimization'),
(84, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'cache'),
(85, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'clearcache'),
(86, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'jobs'),
(87, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'query_log'),
(88, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'permissions'),
(89, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'site'),
(90, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'tasks'),
(91, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'users'),
(92, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'advanced'),
(93, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'blacklist'),
(94, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'captcha'),
(95, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'antispam'),
(96, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'maintenance'),
(97, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'registration'),
(98, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'postlogin'),
(99, '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'profiles'),
(100, '2015-05-11 11:48:31', '2015-05-11 11:48:32', 'open'),
(101, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'authentication'),
(102, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'mail'),
(103, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'method'),
(104, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'test'),
(105, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'importers'),
(106, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'conversations'),
(107, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'settings'),
(108, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'points'),
(109, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'bannedwords'),
(110, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'permissions'),
(111, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'attributes'),
(112, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'sets'),
(113, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'types'),
(114, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'topics'),
(115, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'add'),
(116, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'environment'),
(117, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'info'),
(118, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'debug'),
(119, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'logging'),
(120, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'proxy'),
(121, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'backup'),
(122, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'backup'),
(123, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'update'),
(124, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'welcome'),
(125, '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'home'),
(126, '2015-05-11 11:48:35', '2015-05-11 11:48:35', '!drafts'),
(127, '2015-05-11 11:48:35', '2015-05-11 11:48:35', '!trash'),
(128, '2015-05-11 11:48:35', '2015-05-11 11:48:35', '!stacks'),
(129, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'login'),
(130, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'register'),
(131, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'account'),
(132, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'edit_profile'),
(133, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'avatar'),
(134, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'messages'),
(135, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'inbox'),
(136, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'members'),
(137, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'profile'),
(138, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'directory'),
(139, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'page_not_found'),
(140, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'page_forbidden'),
(141, '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'download_file'),
(142, '2015-05-11 11:48:36', '2015-05-11 11:48:36', NULL),
(143, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'header-site-title'),
(144, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'header-navigation'),
(145, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'footer-legal'),
(146, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'footer-navigation'),
(147, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'footer-contact'),
(148, '2015-05-11 11:52:29', '2015-05-11 11:52:29', 'header-search'),
(149, '2015-05-11 11:52:29', '2015-05-11 11:52:29', 'footer-site-title'),
(150, '2015-05-11 11:52:29', '2015-05-11 11:52:29', 'footer-social'),
(151, '2015-05-11 14:06:16', '2015-05-13 21:31:33', ''),
(152, '2015-05-11 15:02:13', '2015-05-12 12:05:39', ''),
(153, '2015-05-11 15:02:26', '2015-05-12 18:31:45', ''),
(154, '2015-05-11 15:02:59', '2015-05-12 19:28:31', ''),
(155, '2015-05-11 15:03:38', '2015-05-12 21:08:34', ''),
(156, '2015-05-11 15:04:24', '2015-05-11 15:04:24', NULL),
(157, '2015-05-11 15:31:05', '2015-05-12 20:44:31', ''),
(158, '2015-05-11 15:31:21', '2015-05-11 15:31:21', NULL),
(159, '2015-05-11 16:00:15', '2015-05-13 21:22:24', ''),
(160, '2015-05-11 16:00:42', '2015-05-11 16:00:42', NULL),
(161, '2015-05-11 17:53:03', '2015-05-11 17:53:03', NULL),
(162, '2015-05-12 11:29:28', '2015-05-12 11:29:28', NULL),
(163, '2015-05-12 11:31:46', '2015-05-12 17:59:23', ''),
(164, '2015-05-12 18:04:53', '2015-05-12 19:30:47', ''),
(165, '2015-05-12 18:05:41', '2015-05-12 19:31:22', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionSearchIndexAttributes`
--

CREATE TABLE IF NOT EXISTS `CollectionSearchIndexAttributes` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_meta_title` longtext COLLATE utf8_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8_unicode_ci,
  `ak_icon_dashboard` longtext COLLATE utf8_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8_unicode_ci,
  `ak_tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CollectionSearchIndexAttributes`
--

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`) VALUES
(1, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(2, NULL, NULL, NULL, 'fa fa-th-large', 0, 0, NULL, NULL, 0, 0, 0),
(3, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(4, NULL, NULL, 'pages, add page, delete page, copy, move, alias', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(5, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(6, NULL, NULL, 'find page, search page, search, find, pages, sitemap', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(8, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(9, NULL, NULL, 'file, file attributes, title, attribute, description, rename', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(10, NULL, NULL, 'files, category, categories', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(11, NULL, NULL, 'new file set', NULL, 1, 0, NULL, NULL, 0, 0, 0),
(12, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(13, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(14, NULL, NULL, 'user, group, people, permissions, expire, badges', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(15, NULL, NULL, 'user attributes, user data, gather data, registration data', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(16, NULL, NULL, 'new user, create', NULL, 1, 0, NULL, NULL, 0, 0, 0),
(17, NULL, NULL, 'new user group, new group, group, create', NULL, 1, 0, NULL, NULL, 0, 0, 0),
(19, NULL, NULL, 'group set', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(20, NULL, NULL, 'community, points, karma', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(22, NULL, NULL, 'action, community actions', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(23, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(24, NULL, NULL, 'forms, questions, response, data', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(25, NULL, NULL, 'questions, quiz, response', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(28, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(29, NULL, NULL, 'page types', NULL, 1, 0, NULL, NULL, 0, 0, 0),
(31, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(32, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(33, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(34, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(35, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(36, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(38, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(39, NULL, NULL, 'page attributes, custom', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(40, NULL, NULL, 'single, page, custom, application', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(41, NULL, NULL, 'atom, rss, feed, syndication', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(43, NULL, NULL, NULL, 'icon-bullhorn', 0, 0, NULL, NULL, 0, 0, 0),
(44, NULL, NULL, 'add workflow, remove workflow', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(48, NULL, NULL, 'stacks, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(50, NULL, NULL, 'edit stacks, view stacks, all stacks', NULL, 1, 0, NULL, NULL, 0, 1, 0),
(51, NULL, NULL, 'block, refresh, custom', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(52, NULL, NULL, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(53, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(54, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(55, NULL, NULL, 'update, upgrade', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(56, NULL, NULL, 'concrete5.org, my account, marketplace', NULL, 1, 0, NULL, NULL, 0, 0, 0),
(57, NULL, NULL, 'buy theme, new theme, marketplace, template', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(58, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(59, NULL, NULL, 'dashboard, configuration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(61, NULL, NULL, 'website name, title', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(62, NULL, NULL, 'accessibility, easy mode', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(63, NULL, NULL, 'sharing, facebook, twitter', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(64, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(65, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(66, NULL, NULL, 'translate, translation, internationalization, multilingual', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(67, NULL, NULL, 'timezone, profile, locale', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(68, NULL, NULL, 'multilingual, localization, internationalization, i18n', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(73, NULL, NULL, 'vanity, pretty url, seo, pageview, view', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(74, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(75, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(76, NULL, NULL, 'pretty, slug', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(77, NULL, NULL, 'configure search, site search, search option', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(79, NULL, NULL, 'file options, file manager, upload, modify', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(80, NULL, NULL, 'security, files, media, extension, manager, upload', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(81, NULL, NULL, 'images, picture, responsive, retina', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(82, NULL, NULL, 'security, alternate storage, hide files', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(84, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(85, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(86, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(87, NULL, NULL, 'queries, database, mysql', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(89, NULL, NULL, 'editors, hide site, offline, private, public, access', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(90, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(93, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(94, NULL, NULL, 'security, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(95, NULL, NULL, 'antispam, block spam, security', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(96, NULL, NULL, 'lock site, under construction, hide, hidden', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(98, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(99, NULL, NULL, 'member profile, member page, community, forums, social, avatar', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(100, NULL, NULL, 'signup, new user, community, public registration, public, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(101, NULL, NULL, 'auth, authentication, types, oauth, facebook, login, registration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(102, NULL, NULL, 'smtp, mail settings', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(103, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(104, NULL, NULL, 'test smtp, test mail', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(105, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(106, NULL, NULL, 'conversations', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(107, NULL, NULL, 'conversations', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(108, NULL, NULL, 'conversations ratings, ratings, community, community points', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(109, NULL, NULL, 'conversations bad words, banned words, banned, bad words, bad, words, list', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(111, NULL, NULL, 'attribute configuration', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(112, NULL, NULL, 'attributes, sets', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(113, NULL, NULL, 'attributes, types', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(114, NULL, NULL, 'topics, tags, taxonomy', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(116, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 1, 0),
(117, NULL, NULL, 'overrides, system info, debug, support, help', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(118, NULL, NULL, 'errors, exceptions, develop, support, help', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(119, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(120, NULL, NULL, 'network, proxy server', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(121, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(123, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(124, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(125, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 1, 0),
(126, NULL, NULL, NULL, 'fa fa-edit', 0, 0, NULL, NULL, 0, 0, 0),
(127, NULL, NULL, NULL, 'fa fa-trash-o', 0, 0, NULL, NULL, 0, 0, 0),
(128, NULL, NULL, NULL, 'fa fa-th', 0, 0, NULL, NULL, 0, 0, 0),
(131, NULL, NULL, NULL, 'fa fa-briefcase', 0, 0, NULL, NULL, 0, 0, 0),
(151, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(152, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(153, '', '', '', NULL, 0, 0, '', NULL, 0, 0, 0),
(154, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(155, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(157, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(159, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(163, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(164, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(165, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionVersionAreaStyles`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionAreaStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionVersionBlocks`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocks` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cbDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CollectionVersionBlocks`
--

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`) VALUES
(1, 2, 10, 'Area Name', 0, 1, 0, 0, 0),
(1, 2, 11, 'vochtproblemen_home', 0, 1, 0, 0, 0),
(1, 2, 12, 'realisaties_home', 0, 1, 0, 0, 0),
(1, 2, 13, 'over_ons_home', 0, 1, 0, 0, 0),
(1, 3, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 3, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 3, 12, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 3, 13, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 3, 14, 'vochtproblemen_img_home', 0, 1, 0, 0, 0),
(1, 4, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 4, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 4, 12, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 4, 13, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 4, 14, 'vochtproblemen_img_home', 1, 0, 0, 0, 0),
(1, 4, 16, 'vochtprobleem_titel_home', 0, 1, 0, 0, 0),
(1, 4, 17, 'realisaties_img_home', 0, 1, 0, 0, 0),
(1, 5, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 5, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 5, 12, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 5, 13, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 5, 14, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 5, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 5, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 5, 18, 'realisaties_titel_home', 0, 1, 0, 0, 0),
(1, 6, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 6, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 6, 12, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 6, 13, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 6, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 6, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 6, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 6, 21, 'over_ons_titel_home', 0, 1, 0, 0, 0),
(1, 6, 23, 'over_ons_img_home', 0, 1, 0, 0, 0),
(1, 6, 24, 'vochtproblemen_img_home', 0, 1, 0, 0, 0),
(1, 7, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 7, 11, 'vochtproblemen_home', 1, 0, 0, 0, 0),
(1, 7, 12, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 7, 13, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 7, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 7, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 7, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 7, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 7, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 7, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 7, 26, 'vochtprobleem_img_home', 0, 1, 0, 0, 0),
(1, 8, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 8, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 8, 12, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 8, 13, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 8, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 8, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 8, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 8, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 8, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 8, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 8, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 8, 27, 'navigatie', 0, 1, 0, 0, 0),
(1, 9, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 9, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 9, 12, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 9, 13, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 9, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 9, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 9, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 9, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 9, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 9, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 9, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 9, 28, 'navigatie', 0, 1, 0, 0, 0),
(1, 10, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 10, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 10, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 10, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 10, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 10, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 10, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 10, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 10, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 10, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 10, 57, 'realisaties_home', 0, 1, 0, 0, 0),
(1, 10, 58, 'over_ons_home', 0, 1, 0, 0, 0),
(1, 10, 59, 'realisatie_link_home', 0, 1, 0, 0, 0),
(1, 11, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 11, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 11, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 11, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 11, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 11, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 11, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 11, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 11, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 11, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 11, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 11, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 11, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 11, 60, 'vochtproblemen_link_home', 0, 1, 0, 0, 0),
(1, 12, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 12, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 12, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 12, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 12, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 12, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 12, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 12, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 12, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 12, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 12, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 12, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 12, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 12, 61, 'vochtproblemen_link_home', 0, 1, 0, 0, 0),
(1, 12, 62, 'over_ons_link_home', 0, 1, 0, 0, 0),
(1, 13, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 13, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 13, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 13, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 13, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 13, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 13, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 13, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 13, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 13, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 13, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 13, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 13, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 13, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 13, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 13, 87, 'carousel1_foto', 0, 1, 0, 0, 0),
(1, 14, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 14, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 14, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 14, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 14, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 14, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 14, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 14, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 14, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 14, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 14, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 14, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 14, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 14, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 14, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 14, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 15, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 15, 11, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 15, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 15, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 15, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 15, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 15, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 15, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 15, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 15, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 15, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 15, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 15, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 15, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 15, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 15, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 15, 88, 'carousel1_tekst', 0, 1, 0, 0, 0),
(1, 16, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 16, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 16, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 16, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 16, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 16, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 16, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 16, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 16, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 16, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 16, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 16, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 16, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 16, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 16, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 16, 88, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 16, 89, 'vochtproblemen_home', 0, 1, 0, 0, 0),
(1, 17, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 17, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 17, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 17, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 17, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 17, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 17, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 17, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 17, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 17, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 17, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 17, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 17, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 17, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 17, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 17, 88, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 17, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 17, 90, 'carousel2_foto', 0, 1, 0, 0, 0),
(1, 17, 91, 'carousel2_tekst', 0, 1, 0, 0, 0),
(1, 18, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 18, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 18, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 18, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 18, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 18, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 18, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 18, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 18, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 18, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 18, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 18, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 18, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 18, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 18, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 18, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 18, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 18, 91, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 18, 92, 'carousel1_tekst', 0, 1, 0, 0, 0),
(1, 19, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 19, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 19, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 19, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 19, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 19, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 19, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 19, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 19, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 19, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 19, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 19, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 19, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 19, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 19, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 19, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 19, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 19, 91, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 19, 93, 'carousel1_tekst', 0, 1, 0, 0, 0),
(1, 20, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 20, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 20, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 20, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 20, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 20, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 20, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 20, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 20, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 20, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 20, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 20, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 20, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 20, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 20, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 20, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 20, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 20, 91, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 20, 94, 'carousel1_tekst', 0, 1, 0, 0, 0),
(1, 21, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 21, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 21, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 21, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 21, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 21, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 21, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 21, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 21, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 21, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 21, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 21, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 21, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 21, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 21, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 21, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 21, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 21, 91, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 21, 95, 'carousel1_tekst', 0, 1, 0, 0, 0),
(1, 22, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 22, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 22, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 22, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 22, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 22, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 22, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 22, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 22, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 22, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 22, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 22, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 22, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 22, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 22, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 22, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 22, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 22, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 23, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 23, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 23, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 23, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 23, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 23, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 23, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 23, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 23, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 23, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 23, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 23, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 23, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 23, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 23, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 23, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 23, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 23, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 23, 96, 'carousel2_tekst', 0, 1, 0, 0, 0),
(1, 24, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 24, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 24, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 24, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 24, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 24, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 24, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 24, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 24, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 24, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 24, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 24, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 24, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 24, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 24, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 24, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 24, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 24, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 24, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 24, 97, 'carousel3_tekst', 0, 1, 0, 0, 0),
(1, 25, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 25, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 25, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 25, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 25, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 25, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 25, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 25, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 25, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 25, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 25, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 25, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 25, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 25, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 25, 87, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 25, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 25, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 25, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 25, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 25, 97, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 25, 98, 'carousel3_foto', 0, 1, 0, 0, 0),
(1, 26, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 26, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 26, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 26, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 26, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 26, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 26, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 26, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 26, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 26, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 26, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 26, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 26, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 26, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 26, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 26, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 26, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 26, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 26, 97, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 26, 98, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 26, 100, 'carousel1_tekst', 1, 1, 0, 0, 0),
(1, 27, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 27, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 27, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 27, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 27, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 27, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 27, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 27, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 27, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 27, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 27, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 27, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 27, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 27, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 27, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 27, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 27, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 27, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 27, 97, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 27, 98, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 27, 100, 'carousel1_tekst', 1, 0, 0, 0, 0),
(1, 27, 101, 'carousel1_tekst', 2, 1, 0, 0, 0),
(1, 28, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 28, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 28, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 28, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 28, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 28, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 28, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 28, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 28, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 28, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 28, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 28, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 28, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 28, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 28, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 28, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 28, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 28, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 28, 97, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 28, 98, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 28, 100, 'carousel1_tekst', 1, 0, 0, 0, 0),
(1, 28, 101, 'carousel1_tekst', 2, 0, 0, 0, 0),
(1, 28, 102, 'carousel1_foto', 0, 1, 0, 0, 0),
(1, 29, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 29, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 29, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 29, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 29, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 29, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 29, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 29, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 29, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 29, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 29, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 29, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 29, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 29, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 29, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 29, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 29, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 29, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 29, 97, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 29, 98, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 29, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 30, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 30, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 30, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 30, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 30, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 30, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 30, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 30, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 30, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 30, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 30, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 30, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 30, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 30, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 30, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 30, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 30, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 30, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 30, 98, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 30, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 31, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 31, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 31, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 31, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 31, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 31, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 31, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 31, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 31, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 31, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 31, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 31, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 31, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 31, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 31, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 31, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 31, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 31, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 31, 98, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 31, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 31, 103, 'carousel3_tekst', 0, 1, 0, 0, 0),
(1, 32, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 32, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 32, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 32, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 32, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 32, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 32, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 32, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 32, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 32, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 32, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 32, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 32, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 32, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 32, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 32, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 32, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 32, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 32, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 32, 103, 'carousel3_tekst', 1, 0, 0, 0, 0),
(1, 32, 104, 'carousel3_tekst', 0, 1, 0, 0, 0),
(1, 32, 105, 'carousel3_tekst', 2, 1, 0, 0, 0),
(1, 32, 106, 'carousel3_foto', 0, 1, 0, 0, 0),
(1, 33, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 33, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 33, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 33, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 33, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 33, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 33, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 33, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 33, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 33, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 33, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 33, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 33, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 33, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 33, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 33, 90, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 33, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 33, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 33, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 33, 106, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 33, 107, 'carousel3_tekst', 0, 1, 0, 0, 0),
(1, 34, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 34, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 34, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 34, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 34, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 34, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 34, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 34, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 34, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 34, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 34, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 34, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 34, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 34, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 34, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 34, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 34, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 34, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 34, 106, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 34, 107, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 35, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 35, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 35, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 35, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 35, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 35, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 35, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 35, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 35, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 35, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 35, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 35, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 35, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 35, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 35, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 35, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 35, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 35, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 35, 106, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 35, 107, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 35, 108, 'carousel2_foto', 0, 1, 0, 0, 0),
(1, 36, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 36, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 36, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 36, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 36, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 36, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 36, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 36, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 36, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 36, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 36, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 36, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 36, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 36, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 36, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 36, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 36, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 36, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 36, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 37, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 37, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 37, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 37, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 37, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 37, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 37, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 37, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 37, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 37, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 37, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 37, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 37, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 37, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 37, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 37, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 37, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 37, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 37, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 37, 110, 'carousel3_foto', 0, 1, 0, 0, 0),
(1, 38, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 38, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 38, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 38, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 38, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 38, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 38, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 38, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 38, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 38, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 38, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 38, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 38, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 38, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 38, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 38, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 38, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 38, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 38, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 38, 110, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 38, 111, 'carousel3_tekst', 0, 1, 0, 0, 0),
(1, 39, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 39, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 39, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 39, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 39, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 39, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 39, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 39, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 39, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 39, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 39, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 39, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 39, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 39, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 39, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 39, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 39, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 39, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 39, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 39, 110, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 39, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 39, 112, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(1, 39, 113, 'voorwaarde', 0, 1, 0, 0, 0),
(1, 39, 114, 'titel_adres', 0, 1, 0, 0, 0),
(1, 40, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 40, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 40, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 40, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 40, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 40, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 40, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 40, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 40, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 40, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 40, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 40, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 40, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 40, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 40, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 40, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 40, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 40, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 40, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 40, 110, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 40, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 40, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 40, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 40, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 40, 115, 'adres', 0, 1, 0, 0, 0),
(1, 40, 116, 'expertise', 0, 1, 0, 0, 0),
(1, 41, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 41, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 41, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 41, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 41, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 41, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 41, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 41, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 41, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 41, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 41, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 41, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 41, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 41, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 41, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 41, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 41, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 41, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 41, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 41, 110, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 41, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 41, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 41, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 41, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 41, 115, 'adres', 0, 0, 0, 0, 0),
(1, 41, 116, 'expertise', 0, 0, 0, 0, 0),
(1, 41, 117, 'meer_info', 2, 1, 0, 0, 0),
(1, 41, 118, 'meer_info', 1, 1, 0, 0, 0),
(1, 41, 119, 'meer_info', 0, 1, 0, 0, 0),
(1, 42, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 42, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 42, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 42, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 42, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 42, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 42, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 42, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 42, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 42, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 42, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 42, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 42, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 42, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 42, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 42, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 42, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 42, 102, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 42, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 42, 110, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 42, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 42, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 42, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 42, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 42, 115, 'adres', 0, 0, 0, 0, 0),
(1, 42, 116, 'expertise', 0, 0, 0, 0, 0),
(1, 42, 117, 'meer_info', 2, 0, 0, 0, 0),
(1, 42, 118, 'meer_info', 1, 0, 0, 0, 0),
(1, 42, 119, 'meer_info', 0, 0, 0, 0, 0),
(1, 42, 120, 'meer_info_vochtproblemen', 0, 1, 0, 0, 0),
(1, 42, 121, 'meer_info_realisaties', 0, 1, 0, 0, 0),
(1, 42, 122, 'meer_info_over_ons', 0, 1, 0, 0, 0),
(1, 43, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 43, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 43, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 43, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 43, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 43, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 43, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 43, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 43, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 43, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 43, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 43, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 43, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 43, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 43, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 43, 95, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 43, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 43, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 43, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 43, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 43, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 43, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 43, 115, 'adres', 0, 0, 0, 0, 0),
(1, 43, 116, 'expertise', 0, 0, 0, 0, 0),
(1, 43, 117, 'meer_info', 2, 0, 0, 0, 0),
(1, 43, 118, 'meer_info', 1, 0, 0, 0, 0),
(1, 43, 119, 'meer_info', 0, 0, 0, 0, 0),
(1, 43, 120, 'meer_info_vochtproblemen', 0, 0, 0, 0, 0),
(1, 43, 121, 'meer_info_realisaties', 0, 0, 0, 0, 0),
(1, 43, 122, 'meer_info_over_ons', 0, 0, 0, 0, 0),
(1, 43, 302, 'carousel1_foto', 0, 1, 0, 0, 0),
(1, 43, 303, 'carousel3_foto', 0, 1, 0, 0, 0),
(1, 44, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 44, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 44, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 44, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 44, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 44, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 44, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 44, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 44, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 44, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 44, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 44, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 44, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 44, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 44, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 44, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 44, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 44, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 44, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 44, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 44, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 44, 115, 'adres', 0, 0, 0, 0, 0),
(1, 44, 116, 'expertise', 0, 0, 0, 0, 0),
(1, 44, 117, 'meer_info', 2, 0, 0, 0, 0),
(1, 44, 118, 'meer_info', 1, 0, 0, 0, 0),
(1, 44, 119, 'meer_info', 0, 0, 0, 0, 0),
(1, 44, 120, 'meer_info_vochtproblemen', 0, 0, 0, 0, 0),
(1, 44, 121, 'meer_info_realisaties', 0, 0, 0, 0, 0),
(1, 44, 122, 'meer_info_over_ons', 0, 0, 0, 0, 0),
(1, 44, 303, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 44, 304, 'carousel1_foto', 0, 1, 0, 0, 0),
(1, 44, 305, 'carousel1_tekst', 1, 1, 0, 0, 0),
(1, 44, 306, 'carousel1_tekst', 0, 1, 0, 0, 0),
(1, 45, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 45, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 45, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 45, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 45, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 45, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 45, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 45, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 45, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 45, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 45, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 45, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 45, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 45, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 45, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 45, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 45, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 45, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 45, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 45, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 45, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 45, 115, 'adres', 0, 0, 0, 0, 0),
(1, 45, 116, 'expertise', 0, 0, 0, 0, 0),
(1, 45, 117, 'meer_info', 2, 0, 0, 0, 0),
(1, 45, 118, 'meer_info', 1, 0, 0, 0, 0),
(1, 45, 119, 'meer_info', 0, 0, 0, 0, 0),
(1, 45, 120, 'meer_info_vochtproblemen', 0, 0, 0, 0, 0),
(1, 45, 121, 'meer_info_realisaties', 0, 0, 0, 0, 0),
(1, 45, 122, 'meer_info_over_ons', 0, 0, 0, 0, 0),
(1, 45, 303, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 45, 305, 'carousel1_tekst', 1, 0, 0, 0, 0),
(1, 45, 307, 'carousel1_foto', 0, 1, 0, 0, 0),
(1, 46, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 46, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 46, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 46, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 46, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 46, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 46, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 46, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 46, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 46, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 46, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 46, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 46, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 46, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 46, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 46, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 46, 108, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 46, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 46, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 46, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 46, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 46, 115, 'adres', 0, 0, 0, 0, 0),
(1, 46, 116, 'expertise', 0, 0, 0, 0, 0),
(1, 46, 117, 'meer_info', 2, 0, 0, 0, 0),
(1, 46, 118, 'meer_info', 1, 0, 0, 0, 0),
(1, 46, 119, 'meer_info', 0, 0, 0, 0, 0),
(1, 46, 120, 'meer_info_vochtproblemen', 0, 0, 0, 0, 0),
(1, 46, 121, 'meer_info_realisaties', 0, 0, 0, 0, 0),
(1, 46, 122, 'meer_info_over_ons', 0, 0, 0, 0, 0),
(1, 46, 305, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 46, 308, 'carousel1_foto', 0, 1, 0, 0, 0),
(1, 46, 309, 'carousel3_foto', 0, 1, 0, 0, 0),
(1, 47, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 47, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 47, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 47, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 47, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 47, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 47, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 47, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 47, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 47, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 47, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 47, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 47, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 47, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 47, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 47, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 47, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 47, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 47, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 47, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 47, 115, 'adres', 0, 0, 0, 0, 0),
(1, 47, 116, 'expertise', 0, 0, 0, 0, 0),
(1, 47, 117, 'meer_info', 2, 0, 0, 0, 0),
(1, 47, 118, 'meer_info', 1, 0, 0, 0, 0),
(1, 47, 119, 'meer_info', 0, 0, 0, 0, 0),
(1, 47, 120, 'meer_info_vochtproblemen', 0, 0, 0, 0, 0),
(1, 47, 121, 'meer_info_realisaties', 0, 0, 0, 0, 0),
(1, 47, 122, 'meer_info_over_ons', 0, 0, 0, 0, 0),
(1, 47, 305, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 47, 309, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 47, 310, 'carousel1_foto', 0, 1, 0, 0, 0),
(1, 47, 311, 'carousel2_foto', 0, 1, 0, 0, 0),
(1, 48, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 48, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 48, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 48, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 48, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 48, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 48, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 48, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 48, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 48, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 48, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 48, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 48, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 48, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 48, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 48, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 48, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 48, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 48, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 48, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 48, 115, 'adres', 0, 0, 0, 0, 0),
(1, 48, 116, 'expertise', 0, 0, 0, 0, 0),
(1, 48, 117, 'meer_info', 2, 0, 0, 0, 0),
(1, 48, 118, 'meer_info', 1, 0, 0, 0, 0),
(1, 48, 119, 'meer_info', 0, 0, 0, 0, 0),
(1, 48, 120, 'meer_info_vochtproblemen', 0, 0, 0, 0, 0),
(1, 48, 121, 'meer_info_realisaties', 0, 0, 0, 0, 0),
(1, 48, 122, 'meer_info_over_ons', 0, 0, 0, 0, 0),
(1, 48, 305, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 48, 309, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 48, 311, 'carousel2_foto', 0, 0, 0, 0, 0),
(1, 48, 312, 'carousel1_foto', 0, 1, 0, 0, 0),
(1, 49, 10, 'Area Name', 0, 0, 0, 0, 0),
(1, 49, 16, 'vochtprobleem_titel_home', 0, 0, 0, 0, 0),
(1, 49, 17, 'realisaties_img_home', 0, 0, 0, 0, 0),
(1, 49, 18, 'realisaties_titel_home', 0, 0, 0, 0, 0),
(1, 49, 21, 'over_ons_titel_home', 0, 0, 0, 0, 0),
(1, 49, 23, 'over_ons_img_home', 0, 0, 0, 0, 0),
(1, 49, 24, 'vochtproblemen_img_home', 0, 0, 0, 0, 0),
(1, 49, 26, 'vochtprobleem_img_home', 0, 0, 0, 0, 0),
(1, 49, 28, 'navigatie', 0, 0, 0, 0, 0),
(1, 49, 57, 'realisaties_home', 0, 0, 0, 0, 0),
(1, 49, 58, 'over_ons_home', 0, 0, 0, 0, 0),
(1, 49, 59, 'realisatie_link_home', 0, 0, 0, 0, 0),
(1, 49, 61, 'vochtproblemen_link_home', 0, 0, 0, 0, 0),
(1, 49, 62, 'over_ons_link_home', 0, 0, 0, 0, 0),
(1, 49, 89, 'vochtproblemen_home', 0, 0, 0, 0, 0),
(1, 49, 96, 'carousel2_tekst', 0, 0, 0, 0, 0),
(1, 49, 111, 'carousel3_tekst', 0, 0, 0, 0, 0),
(1, 49, 112, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(1, 49, 113, 'voorwaarde', 0, 0, 0, 0, 0),
(1, 49, 114, 'titel_adres', 0, 0, 0, 0, 0),
(1, 49, 115, 'adres', 0, 0, 0, 0, 0),
(1, 49, 116, 'expertise', 0, 0, 0, 0, 0),
(1, 49, 117, 'meer_info', 2, 0, 0, 0, 0),
(1, 49, 118, 'meer_info', 1, 0, 0, 0, 0),
(1, 49, 119, 'meer_info', 0, 0, 0, 0, 0),
(1, 49, 120, 'meer_info_vochtproblemen', 0, 0, 0, 0, 0),
(1, 49, 121, 'meer_info_realisaties', 0, 0, 0, 0, 0),
(1, 49, 122, 'meer_info_over_ons', 0, 0, 0, 0, 0),
(1, 49, 305, 'carousel1_tekst', 0, 0, 0, 0, 0),
(1, 49, 309, 'carousel3_foto', 0, 0, 0, 0, 0),
(1, 49, 312, 'carousel1_foto', 0, 0, 0, 0, 0),
(1, 49, 313, 'carousel2_foto', 0, 1, 0, 0, 0),
(124, 1, 1, 'Main', 0, 1, 0, 0, 0),
(125, 1, 2, 'Primary', 0, 1, 0, 0, 0),
(125, 1, 3, 'Primary', 1, 1, 0, 0, 0),
(125, 1, 4, 'Secondary 1', 0, 1, 0, 0, 0),
(125, 1, 5, 'Secondary 2', 0, 1, 0, 0, 0),
(125, 1, 6, 'Secondary 3', 0, 1, 0, 0, 0),
(125, 1, 7, 'Secondary 4', 0, 1, 0, 0, 0),
(125, 1, 8, 'Secondary 5', 0, 1, 0, 0, 0),
(142, 1, 9, 'Main', 0, 1, 0, 0, 0),
(151, 1, 136, 'Main', 0, 1, 0, 0, 0),
(151, 2, 136, 'Main', 0, 0, 0, 0, 0),
(151, 2, 142, 'navigatie', 0, 1, 0, 0, 0),
(151, 3, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 3, 179, 'Main', 0, 1, 0, 0, 0),
(151, 4, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 4, 179, 'Main', 0, 0, 0, 0, 0),
(151, 4, 180, 'titel', 0, 1, 0, 0, 0),
(151, 4, 181, 'tekst_1', 0, 1, 0, 0, 0),
(151, 4, 182, 'foto_1', 0, 1, 0, 0, 0),
(151, 4, 183, 'ondertitel_1', 0, 1, 0, 0, 0),
(151, 4, 184, 'tekst_2', 0, 1, 0, 0, 0),
(151, 5, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 5, 179, 'Main', 0, 0, 0, 0, 0),
(151, 5, 180, 'titel', 0, 0, 0, 0, 0),
(151, 5, 181, 'tekst_1', 0, 0, 0, 0, 0),
(151, 5, 182, 'foto_1', 0, 0, 0, 0, 0),
(151, 5, 183, 'ondertitel_1', 0, 0, 0, 0, 0),
(151, 5, 184, 'tekst_2', 0, 0, 0, 0, 0),
(151, 5, 185, 'tekst_3', 0, 1, 0, 0, 0),
(151, 5, 186, 'ondertitel_3', 0, 1, 0, 0, 0),
(151, 5, 187, 'foto_4', 0, 1, 0, 0, 0),
(151, 5, 188, 'tekst_5', 0, 1, 0, 0, 0),
(151, 6, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 6, 179, 'Main', 0, 0, 0, 0, 0),
(151, 6, 180, 'titel', 0, 0, 0, 0, 0),
(151, 6, 181, 'tekst_1', 0, 0, 0, 0, 0),
(151, 6, 182, 'foto_1', 0, 0, 0, 0, 0),
(151, 6, 183, 'ondertitel_1', 0, 0, 0, 0, 0),
(151, 6, 184, 'tekst_2', 0, 0, 0, 0, 0),
(151, 6, 185, 'tekst_3', 0, 0, 0, 0, 0),
(151, 6, 186, 'ondertitel_3', 0, 0, 0, 0, 0),
(151, 6, 187, 'foto_4', 0, 0, 0, 0, 0),
(151, 6, 188, 'tekst_5', 0, 0, 0, 0, 0),
(151, 6, 189, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(151, 6, 190, 'titel_adres', 0, 1, 0, 0, 0),
(151, 6, 191, 'voorwaarde', 0, 1, 0, 0, 0),
(151, 6, 192, 'adres', 0, 1, 0, 0, 0),
(151, 6, 193, 'expertise', 0, 1, 0, 0, 0),
(151, 7, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 7, 179, 'Main', 0, 0, 0, 0, 0),
(151, 7, 180, 'titel', 0, 0, 0, 0, 0),
(151, 7, 181, 'tekst_1', 0, 0, 0, 0, 0),
(151, 7, 182, 'foto_1', 0, 0, 0, 0, 0),
(151, 7, 183, 'ondertitel_1', 0, 0, 0, 0, 0),
(151, 7, 184, 'tekst_2', 0, 0, 0, 0, 0),
(151, 7, 185, 'tekst_3', 0, 0, 0, 0, 0),
(151, 7, 186, 'ondertitel_3', 0, 0, 0, 0, 0),
(151, 7, 187, 'foto_4', 0, 0, 0, 0, 0),
(151, 7, 188, 'tekst_5', 0, 0, 0, 0, 0),
(151, 7, 189, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(151, 7, 190, 'titel_adres', 0, 0, 0, 0, 0),
(151, 7, 191, 'voorwaarde', 0, 0, 0, 0, 0),
(151, 7, 192, 'adres', 0, 0, 0, 0, 0),
(151, 7, 193, 'expertise', 0, 0, 0, 0, 0),
(151, 7, 328, 'ondertitel_4', 0, 1, 0, 0, 0),
(151, 8, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 8, 179, 'Main', 0, 0, 0, 0, 0),
(151, 8, 180, 'titel', 0, 0, 0, 0, 0),
(151, 8, 181, 'tekst_1', 0, 0, 0, 0, 0),
(151, 8, 182, 'foto_1', 0, 0, 0, 0, 0),
(151, 8, 183, 'ondertitel_1', 0, 0, 0, 0, 0),
(151, 8, 184, 'tekst_2', 0, 0, 0, 0, 0),
(151, 8, 185, 'tekst_3', 0, 0, 0, 0, 0),
(151, 8, 186, 'ondertitel_3', 0, 0, 0, 0, 0),
(151, 8, 187, 'foto_4', 0, 0, 0, 0, 0),
(151, 8, 189, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(151, 8, 190, 'titel_adres', 0, 0, 0, 0, 0),
(151, 8, 191, 'voorwaarde', 0, 0, 0, 0, 0),
(151, 8, 192, 'adres', 0, 0, 0, 0, 0),
(151, 8, 193, 'expertise', 0, 0, 0, 0, 0),
(151, 8, 330, 'foto_5', 0, 1, 0, 0, 0),
(151, 9, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 9, 179, 'Main', 0, 0, 0, 0, 0),
(151, 9, 180, 'titel', 0, 0, 0, 0, 0),
(151, 9, 181, 'tekst_1', 0, 0, 0, 0, 0),
(151, 9, 182, 'foto_1', 0, 0, 0, 0, 0),
(151, 9, 183, 'ondertitel_1', 0, 0, 0, 0, 0),
(151, 9, 184, 'tekst_2', 0, 0, 0, 0, 0),
(151, 9, 185, 'tekst_3', 0, 0, 0, 0, 0),
(151, 9, 186, 'ondertitel_3', 0, 0, 0, 0, 0),
(151, 9, 187, 'foto_4', 0, 0, 0, 0, 0),
(151, 9, 189, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(151, 9, 190, 'titel_adres', 0, 0, 0, 0, 0),
(151, 9, 191, 'voorwaarde', 0, 0, 0, 0, 0),
(151, 9, 192, 'adres', 0, 0, 0, 0, 0),
(151, 9, 193, 'expertise', 0, 0, 0, 0, 0),
(151, 9, 331, 'foto_5', 0, 1, 0, 0, 0),
(151, 10, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 10, 179, 'Main', 0, 0, 0, 0, 0),
(151, 10, 180, 'titel', 0, 0, 0, 0, 0),
(151, 10, 181, 'tekst_1', 0, 0, 0, 0, 0),
(151, 10, 182, 'foto_1', 0, 0, 0, 0, 0),
(151, 10, 183, 'ondertitel_1', 0, 0, 0, 0, 0),
(151, 10, 184, 'tekst_2', 0, 0, 0, 0, 0),
(151, 10, 185, 'tekst_3', 0, 0, 0, 0, 0),
(151, 10, 186, 'ondertitel_3', 0, 0, 0, 0, 0),
(151, 10, 187, 'foto_4', 0, 0, 0, 0, 0),
(151, 10, 189, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(151, 10, 190, 'titel_adres', 0, 0, 0, 0, 0),
(151, 10, 191, 'voorwaarde', 0, 0, 0, 0, 0),
(151, 10, 192, 'adres', 0, 0, 0, 0, 0),
(151, 10, 193, 'expertise', 0, 0, 0, 0, 0),
(151, 10, 331, 'foto_5', 0, 0, 0, 0, 0),
(151, 10, 332, 'ondertitel_2', 0, 1, 0, 0, 0),
(151, 11, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 11, 179, 'Main', 0, 0, 0, 0, 0),
(151, 11, 180, 'titel', 0, 0, 0, 0, 0);
INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`) VALUES
(151, 11, 181, 'tekst_1', 0, 0, 0, 0, 0),
(151, 11, 182, 'foto_1', 0, 0, 0, 0, 0),
(151, 11, 183, 'ondertitel_1', 0, 0, 0, 0, 0),
(151, 11, 184, 'tekst_2', 0, 0, 0, 0, 0),
(151, 11, 185, 'tekst_3', 0, 0, 0, 0, 0),
(151, 11, 186, 'ondertitel_3', 0, 0, 0, 0, 0),
(151, 11, 187, 'foto_4', 0, 0, 0, 0, 0),
(151, 11, 189, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(151, 11, 190, 'titel_adres', 0, 0, 0, 0, 0),
(151, 11, 191, 'voorwaarde', 0, 0, 0, 0, 0),
(151, 11, 192, 'adres', 0, 0, 0, 0, 0),
(151, 11, 193, 'expertise', 0, 0, 0, 0, 0),
(151, 11, 331, 'foto_5', 0, 0, 0, 0, 0),
(151, 11, 333, 'foto_3', 0, 1, 0, 0, 0),
(151, 12, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 12, 179, 'Main', 0, 0, 0, 0, 0),
(151, 12, 180, 'titel', 0, 0, 0, 0, 0),
(151, 12, 181, 'tekst_1', 0, 0, 0, 0, 0),
(151, 12, 182, 'foto_1', 0, 0, 0, 0, 0),
(151, 12, 183, 'ondertitel_1', 0, 0, 0, 0, 0),
(151, 12, 184, 'tekst_2', 0, 0, 0, 0, 0),
(151, 12, 185, 'tekst_3', 0, 0, 0, 0, 0),
(151, 12, 186, 'ondertitel_3', 0, 0, 0, 0, 0),
(151, 12, 187, 'foto_4', 0, 0, 0, 0, 0),
(151, 12, 189, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(151, 12, 190, 'titel_adres', 0, 0, 0, 0, 0),
(151, 12, 191, 'voorwaarde', 0, 0, 0, 0, 0),
(151, 12, 192, 'adres', 0, 0, 0, 0, 0),
(151, 12, 193, 'expertise', 0, 0, 0, 0, 0),
(151, 12, 331, 'foto_5', 0, 0, 0, 0, 0),
(151, 12, 333, 'foto_3', 0, 0, 0, 0, 0),
(151, 12, 334, 'foto_3 : 1', 0, 1, 0, 0, 0),
(151, 13, 142, 'navigatie', 0, 0, 0, 0, 0),
(151, 13, 179, 'Main', 0, 0, 0, 0, 0),
(151, 13, 180, 'titel', 0, 0, 0, 0, 0),
(151, 13, 181, 'tekst_1', 0, 0, 0, 0, 0),
(151, 13, 182, 'foto_1', 0, 0, 0, 0, 0),
(151, 13, 183, 'ondertitel_1', 0, 0, 0, 0, 0),
(151, 13, 184, 'tekst_2', 0, 0, 0, 0, 0),
(151, 13, 185, 'tekst_3', 0, 0, 0, 0, 0),
(151, 13, 186, 'ondertitel_3', 0, 0, 0, 0, 0),
(151, 13, 187, 'foto_4', 0, 0, 0, 0, 0),
(151, 13, 189, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(151, 13, 190, 'titel_adres', 0, 0, 0, 0, 0),
(151, 13, 191, 'voorwaarde', 0, 0, 0, 0, 0),
(151, 13, 192, 'adres', 0, 0, 0, 0, 0),
(151, 13, 193, 'expertise', 0, 0, 0, 0, 0),
(151, 13, 331, 'foto_5', 0, 0, 0, 0, 0),
(151, 13, 333, 'foto_3', 0, 0, 0, 0, 0),
(151, 13, 334, 'foto_3 : 1', 0, 0, 0, 0, 0),
(151, 13, 335, 'ondertitel_4', 0, 1, 0, 0, 0),
(152, 1, 132, 'Main', 0, 1, 0, 0, 0),
(152, 2, 132, 'Main', 0, 0, 0, 0, 0),
(152, 2, 133, 'navigatie', 0, 1, 0, 0, 0),
(152, 3, 132, 'Main', 0, 0, 0, 0, 0),
(152, 3, 133, 'navigatie', 0, 0, 0, 0, 0),
(152, 3, 157, 'titel', 0, 1, 0, 0, 0),
(152, 3, 158, 'tekst_1', 0, 1, 0, 0, 0),
(152, 3, 159, 'foto_1', 0, 1, 0, 0, 0),
(152, 3, 160, 'ondertitel_1', 0, 1, 0, 0, 0),
(152, 4, 132, 'Main', 0, 0, 0, 0, 0),
(152, 4, 133, 'navigatie', 0, 0, 0, 0, 0),
(152, 4, 157, 'titel', 0, 0, 0, 0, 0),
(152, 4, 158, 'tekst_1', 0, 0, 0, 0, 0),
(152, 4, 159, 'foto_1', 0, 0, 0, 0, 0),
(152, 4, 160, 'ondertitel_1', 0, 0, 0, 0, 0),
(152, 4, 161, 'foto_2', 0, 1, 0, 0, 0),
(152, 4, 162, 'tekst_2', 0, 1, 0, 0, 0),
(152, 4, 163, 'ondertitel_2', 0, 1, 0, 0, 0),
(152, 4, 164, 'foto_3', 0, 1, 0, 0, 0),
(152, 4, 165, 'tekst_3', 0, 1, 0, 0, 0),
(152, 4, 166, 'ondertitel_3', 0, 1, 0, 0, 0),
(152, 4, 168, 'foto_4', 0, 1, 0, 0, 0),
(152, 4, 169, 'tekst_4', 0, 1, 0, 0, 0),
(152, 4, 170, 'ondertitel_4', 0, 1, 0, 0, 0),
(152, 4, 171, 'foto_5', 0, 1, 0, 0, 0),
(152, 4, 172, 'tekst_5', 0, 1, 0, 0, 0),
(152, 4, 173, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(152, 4, 174, 'titel_adres', 0, 1, 0, 0, 0),
(152, 4, 175, 'voorwaarde', 0, 1, 0, 0, 0),
(152, 4, 176, 'adres', 0, 1, 0, 0, 0),
(152, 4, 177, 'expertise', 0, 1, 0, 0, 0),
(153, 1, 73, 'Main', 0, 1, 0, 0, 0),
(153, 2, 73, 'Main', 0, 0, 0, 0, 0),
(153, 2, 74, 'navigatie', 0, 1, 0, 0, 0),
(153, 3, 74, 'navigatie', 0, 0, 0, 0, 0),
(153, 3, 75, 'Main', 0, 1, 0, 0, 0),
(153, 4, 74, 'navigatie', 0, 0, 0, 0, 0),
(153, 4, 75, 'Main', 0, 0, 0, 0, 0),
(153, 4, 208, 'titel', 0, 1, 0, 0, 0),
(153, 4, 209, 'ondertitel_1', 0, 1, 0, 0, 0),
(153, 4, 210, 'ondertitel_2', 0, 1, 0, 0, 0),
(153, 4, 211, 'ondertitel_3', 0, 1, 0, 0, 0),
(153, 4, 212, 'afbeelding_1', 0, 1, 0, 0, 0),
(153, 4, 213, 'afbeelding_2', 0, 1, 0, 0, 0),
(153, 4, 214, 'afbeelding_3', 0, 1, 0, 0, 0),
(153, 4, 215, 'tekst_1', 0, 1, 0, 0, 0),
(153, 4, 216, 'tekst_2', 0, 1, 0, 0, 0),
(153, 4, 217, 'tekst_3', 0, 1, 0, 0, 0),
(153, 5, 74, 'navigatie', 0, 0, 0, 0, 0),
(153, 5, 75, 'Main', 0, 0, 0, 0, 0),
(153, 5, 208, 'titel', 0, 0, 0, 0, 0),
(153, 5, 209, 'ondertitel_1', 0, 0, 0, 0, 0),
(153, 5, 210, 'ondertitel_2', 0, 0, 0, 0, 0),
(153, 5, 211, 'ondertitel_3', 0, 0, 0, 0, 0),
(153, 5, 212, 'afbeelding_1', 0, 0, 0, 0, 0),
(153, 5, 213, 'afbeelding_2', 0, 0, 0, 0, 0),
(153, 5, 214, 'afbeelding_3', 0, 0, 0, 0, 0),
(153, 5, 215, 'tekst_1', 0, 0, 0, 0, 0),
(153, 5, 216, 'tekst_2', 0, 0, 0, 0, 0),
(153, 5, 217, 'tekst_3', 0, 0, 0, 0, 0),
(153, 5, 228, 'link_1', 0, 1, 0, 0, 0),
(153, 5, 229, 'link_2', 0, 1, 0, 0, 0),
(153, 5, 230, 'link_3', 0, 1, 0, 0, 0),
(153, 6, 74, 'navigatie', 0, 0, 0, 0, 0),
(153, 6, 75, 'Main', 0, 0, 0, 0, 0),
(153, 6, 208, 'titel', 0, 0, 0, 0, 0),
(153, 6, 209, 'ondertitel_1', 0, 0, 0, 0, 0),
(153, 6, 210, 'ondertitel_2', 0, 0, 0, 0, 0),
(153, 6, 211, 'ondertitel_3', 0, 0, 0, 0, 0),
(153, 6, 212, 'afbeelding_1', 0, 0, 0, 0, 0),
(153, 6, 213, 'afbeelding_2', 0, 0, 0, 0, 0),
(153, 6, 214, 'afbeelding_3', 0, 0, 0, 0, 0),
(153, 6, 215, 'tekst_1', 0, 0, 0, 0, 0),
(153, 6, 216, 'tekst_2', 0, 0, 0, 0, 0),
(153, 6, 217, 'tekst_3', 0, 0, 0, 0, 0),
(153, 6, 228, 'link_1', 0, 0, 0, 0, 0),
(153, 6, 229, 'link_2', 0, 0, 0, 0, 0),
(153, 6, 230, 'link_3', 0, 0, 0, 0, 0),
(153, 6, 231, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(153, 6, 232, 'voorwaarde', 0, 1, 0, 0, 0),
(153, 6, 233, 'titel_adres', 0, 1, 0, 0, 0),
(153, 6, 234, 'adres', 0, 1, 0, 0, 0),
(153, 6, 235, 'expertise', 0, 1, 0, 0, 0),
(153, 7, 74, 'navigatie', 0, 0, 0, 0, 0),
(153, 7, 75, 'Main', 0, 0, 0, 0, 0),
(153, 7, 208, 'titel', 0, 0, 0, 0, 0),
(153, 7, 209, 'ondertitel_1', 0, 0, 0, 0, 0),
(153, 7, 210, 'ondertitel_2', 0, 0, 0, 0, 0),
(153, 7, 211, 'ondertitel_3', 0, 0, 0, 0, 0),
(153, 7, 215, 'tekst_1', 0, 0, 0, 0, 0),
(153, 7, 216, 'tekst_2', 0, 0, 0, 0, 0),
(153, 7, 217, 'tekst_3', 0, 0, 0, 0, 0),
(153, 7, 228, 'link_1', 0, 0, 0, 0, 0),
(153, 7, 229, 'link_2', 0, 0, 0, 0, 0),
(153, 7, 230, 'link_3', 0, 0, 0, 0, 0),
(153, 7, 231, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(153, 7, 232, 'voorwaarde', 0, 0, 0, 0, 0),
(153, 7, 233, 'titel_adres', 0, 0, 0, 0, 0),
(153, 7, 234, 'adres', 0, 0, 0, 0, 0),
(153, 7, 235, 'expertise', 0, 0, 0, 0, 0),
(153, 7, 239, 'afbeelding_1', 0, 1, 0, 0, 0),
(153, 7, 240, 'afbeelding_2', 0, 1, 0, 0, 0),
(153, 7, 241, 'afbeelding_3', 0, 1, 0, 0, 0),
(154, 1, 31, 'Main', 0, 1, 0, 0, 0),
(154, 2, 85, 'Main', 0, 1, 0, 0, 0),
(154, 3, 85, 'Main', 0, 0, 0, 0, 0),
(154, 3, 86, 'navigatie', 0, 1, 0, 0, 0),
(154, 4, 85, 'Main', 0, 0, 0, 0, 0),
(154, 4, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 4, 236, 'foto_1', 0, 1, 0, 0, 0),
(154, 5, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 5, 236, 'foto_1', 0, 0, 0, 0, 0),
(154, 5, 242, 'Main', 0, 1, 0, 0, 0),
(154, 6, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 6, 236, 'foto_1', 0, 0, 0, 0, 0),
(154, 6, 242, 'Main', 0, 0, 0, 0, 0),
(154, 6, 243, 'tekst_1', 0, 1, 0, 0, 0),
(154, 7, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 7, 236, 'foto_1', 0, 0, 0, 0, 0),
(154, 7, 242, 'Main', 0, 0, 0, 0, 0),
(154, 7, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 7, 244, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(154, 8, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 8, 236, 'foto_1', 0, 0, 0, 0, 0),
(154, 8, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 8, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 8, 245, 'Main', 0, 1, 0, 0, 0),
(154, 9, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 9, 236, 'foto_1', 0, 0, 0, 0, 0),
(154, 9, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 9, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 9, 245, 'Main', 0, 0, 0, 0, 0),
(154, 9, 246, 'foto_2', 0, 1, 0, 0, 0),
(154, 10, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 10, 236, 'foto_1', 0, 0, 0, 0, 0),
(154, 10, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 10, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 10, 245, 'Main', 0, 0, 0, 0, 0),
(154, 10, 246, 'foto_2', 0, 0, 0, 0, 0),
(154, 10, 247, 'foto_3', 0, 1, 0, 0, 0),
(154, 11, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 11, 236, 'foto_1', 0, 0, 0, 0, 0),
(154, 11, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 11, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 11, 245, 'Main', 0, 0, 0, 0, 0),
(154, 11, 246, 'foto_2', 0, 0, 0, 0, 0),
(154, 11, 247, 'foto_3', 0, 0, 0, 0, 0),
(154, 11, 248, 'foto', 0, 1, 0, 0, 0),
(154, 12, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 12, 236, 'foto_1', 0, 0, 0, 0, 0),
(154, 12, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 12, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 12, 245, 'Main', 0, 0, 0, 0, 0),
(154, 12, 246, 'foto_2', 0, 0, 0, 0, 0),
(154, 13, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 13, 236, 'foto_1', 0, 0, 0, 0, 0),
(154, 13, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 13, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 13, 245, 'Main', 0, 0, 0, 0, 0),
(154, 13, 246, 'foto_2', 0, 0, 0, 0, 0),
(154, 13, 249, 'foto_3', 0, 1, 0, 0, 0),
(154, 14, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 14, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 14, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 14, 245, 'Main', 0, 0, 0, 0, 0),
(154, 14, 250, 'foto_2', 0, 1, 0, 0, 0),
(154, 14, 251, 'foto_1', 0, 1, 0, 0, 0),
(154, 14, 252, 'foto_3', 0, 1, 0, 0, 0),
(154, 14, 253, 'foto_4', 0, 1, 0, 0, 0),
(154, 15, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 15, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 15, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 15, 245, 'Main', 0, 0, 0, 0, 0),
(154, 15, 250, 'foto_2', 0, 0, 0, 0, 0),
(154, 15, 252, 'foto_3', 0, 0, 0, 0, 0),
(154, 15, 253, 'foto_4', 0, 0, 0, 0, 0),
(154, 15, 254, 'foto_1', 0, 1, 0, 0, 0),
(154, 16, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 16, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 16, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 16, 245, 'Main', 0, 0, 0, 0, 0),
(154, 16, 250, 'foto_2', 0, 0, 0, 0, 0),
(154, 16, 252, 'foto_3', 0, 0, 0, 0, 0),
(154, 16, 253, 'foto_4', 0, 0, 0, 0, 0),
(154, 16, 254, 'foto_1', 0, 0, 0, 0, 0),
(154, 16, 261, 'titel', 0, 1, 0, 0, 0),
(154, 17, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 17, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 17, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 17, 245, 'Main', 0, 0, 0, 0, 0),
(154, 17, 252, 'foto_3', 0, 0, 0, 0, 0),
(154, 17, 253, 'foto_4', 0, 0, 0, 0, 0),
(154, 17, 254, 'foto_1', 0, 0, 0, 0, 0),
(154, 17, 261, 'titel', 0, 0, 0, 0, 0),
(154, 17, 273, 'foto_2', 0, 1, 0, 0, 0),
(154, 18, 86, 'navigatie', 0, 0, 0, 0, 0),
(154, 18, 243, 'tekst_1', 0, 0, 0, 0, 0),
(154, 18, 244, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(154, 18, 245, 'Main', 0, 0, 0, 0, 0),
(154, 18, 252, 'foto_3', 0, 0, 0, 0, 0),
(154, 18, 253, 'foto_4', 0, 0, 0, 0, 0),
(154, 18, 254, 'foto_1', 0, 0, 0, 0, 0),
(154, 18, 273, 'foto_2', 0, 0, 0, 0, 0),
(154, 18, 274, 'titel', 0, 1, 0, 0, 0),
(154, 18, 275, 'voorwaarde', 0, 1, 0, 0, 0),
(154, 18, 276, 'titel_adres', 0, 1, 0, 0, 0),
(154, 18, 277, 'adres', 0, 1, 0, 0, 0),
(154, 18, 278, 'expertise', 0, 1, 0, 0, 0),
(155, 1, 39, 'Main', 0, 1, 0, 0, 0),
(155, 2, 39, 'Main', 0, 0, 0, 0, 0),
(155, 2, 40, 'navigatie', 0, 1, 0, 0, 0),
(155, 3, 40, 'navigatie', 0, 0, 0, 0, 0),
(155, 3, 46, 'Main', 0, 1, 0, 0, 0),
(155, 4, 40, 'navigatie', 0, 0, 0, 0, 0),
(155, 4, 46, 'Main', 0, 0, 0, 0, 0),
(155, 4, 314, 'titel', 0, 1, 0, 0, 0),
(155, 4, 315, 'adres_1_boven', 0, 1, 0, 0, 0),
(155, 4, 316, 'adres_2_boven', 0, 1, 0, 0, 0),
(155, 4, 317, 'kaart', 0, 1, 0, 0, 0),
(155, 5, 40, 'navigatie', 0, 0, 0, 0, 0),
(155, 5, 46, 'Main', 0, 0, 0, 0, 0),
(155, 5, 314, 'titel', 0, 0, 0, 0, 0),
(155, 5, 315, 'adres_1_boven', 0, 0, 0, 0, 0),
(155, 5, 316, 'adres_2_boven', 0, 0, 0, 0, 0),
(155, 5, 318, 'kaart', 0, 1, 0, 0, 0),
(155, 6, 40, 'navigatie', 0, 0, 0, 0, 0),
(155, 6, 46, 'Main', 0, 0, 0, 0, 0),
(155, 6, 314, 'titel', 0, 0, 0, 0, 0),
(155, 6, 315, 'adres_1_boven', 0, 0, 0, 0, 0),
(155, 6, 316, 'adres_2_boven', 0, 0, 0, 0, 0),
(155, 6, 319, 'kaart', 0, 1, 0, 0, 0),
(155, 7, 40, 'navigatie', 0, 0, 0, 0, 0),
(155, 7, 46, 'Main', 0, 0, 0, 0, 0),
(155, 7, 314, 'titel', 0, 0, 0, 0, 0),
(155, 7, 315, 'adres_1_boven', 0, 0, 0, 0, 0),
(155, 7, 316, 'adres_2_boven', 0, 0, 0, 0, 0),
(155, 7, 320, 'kaart', 0, 1, 0, 0, 0),
(155, 8, 40, 'navigatie', 0, 0, 0, 0, 0),
(155, 8, 46, 'Main', 0, 0, 0, 0, 0),
(155, 8, 314, 'titel', 0, 0, 0, 0, 0),
(155, 8, 315, 'adres_1_boven', 0, 0, 0, 0, 0),
(155, 8, 316, 'adres_2_boven', 0, 0, 0, 0, 0),
(155, 8, 321, 'kaart', 0, 1, 0, 0, 0),
(155, 9, 40, 'navigatie', 0, 0, 0, 0, 0),
(155, 9, 46, 'Main', 0, 0, 0, 0, 0),
(155, 9, 314, 'titel', 0, 0, 0, 0, 0),
(155, 9, 315, 'adres_1_boven', 0, 0, 0, 0, 0),
(155, 9, 316, 'adres_2_boven', 0, 0, 0, 0, 0),
(155, 9, 321, 'kaart', 0, 0, 0, 0, 0),
(155, 9, 322, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(155, 9, 323, 'voorwaarde', 0, 1, 0, 0, 0),
(155, 9, 324, 'titel_adres', 0, 1, 0, 0, 0),
(155, 9, 325, 'adres', 0, 1, 0, 0, 0),
(155, 9, 326, 'expertise', 0, 1, 0, 0, 0),
(157, 1, 50, 'Main', 0, 1, 0, 0, 0),
(157, 2, 50, 'Main', 0, 0, 0, 0, 0),
(157, 2, 51, 'navigatie', 0, 1, 0, 0, 0),
(157, 3, 51, 'navigatie', 0, 0, 0, 0, 0),
(157, 3, 56, 'Main', 0, 1, 0, 0, 0),
(157, 4, 51, 'navigatie', 0, 0, 0, 0, 0),
(157, 4, 56, 'Main', 0, 0, 0, 0, 0),
(157, 4, 286, 'titel', 0, 1, 0, 0, 0),
(157, 4, 287, 'carousel_2', 1, 1, 0, 0, 0),
(157, 4, 288, 'carousel_1', 0, 1, 0, 0, 0),
(157, 4, 289, 'carousel_2', 0, 1, 0, 0, 0),
(157, 5, 51, 'navigatie', 0, 0, 0, 0, 0),
(157, 5, 56, 'Main', 0, 0, 0, 0, 0),
(157, 5, 286, 'titel', 0, 0, 0, 0, 0),
(157, 5, 288, 'carousel_1', 0, 0, 0, 0, 0),
(157, 6, 51, 'navigatie', 0, 0, 0, 0, 0),
(157, 6, 56, 'Main', 0, 0, 0, 0, 0),
(157, 6, 286, 'titel', 0, 0, 0, 0, 0),
(157, 6, 288, 'carousel_1', 0, 0, 0, 0, 0),
(157, 6, 290, 'carousel_2', 1, 1, 0, 0, 0),
(157, 6, 291, 'carousel_2', 0, 1, 0, 0, 0),
(157, 7, 51, 'navigatie', 0, 0, 0, 0, 0),
(157, 7, 56, 'Main', 0, 0, 0, 0, 0),
(157, 7, 286, 'titel', 0, 0, 0, 0, 0),
(157, 7, 288, 'carousel_1', 0, 0, 0, 0, 0),
(157, 7, 291, 'carousel_2', 0, 0, 0, 0, 0),
(157, 7, 292, 'carousel_3', 0, 1, 0, 0, 0),
(157, 8, 51, 'navigatie', 0, 0, 0, 0, 0),
(157, 8, 56, 'Main', 0, 0, 0, 0, 0),
(157, 8, 286, 'titel', 0, 0, 0, 0, 0),
(157, 8, 288, 'carousel_1', 0, 0, 0, 0, 0),
(157, 8, 291, 'carousel_2', 0, 0, 0, 0, 0),
(157, 8, 292, 'carousel_3', 0, 0, 0, 0, 0),
(157, 8, 293, 'ondertitel_1', 0, 1, 0, 0, 0),
(157, 8, 294, 'tekst_1', 0, 1, 0, 0, 0),
(157, 8, 295, 'ondertitel_2', 0, 1, 0, 0, 0),
(157, 8, 296, 'tekst_2', 0, 1, 0, 0, 0),
(157, 8, 297, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(157, 8, 298, 'titel_adres', 0, 1, 0, 0, 0),
(157, 8, 299, 'voorwaarde', 0, 1, 0, 0, 0),
(157, 8, 300, 'adres', 0, 1, 0, 0, 0),
(157, 8, 301, 'expertise', 0, 1, 0, 0, 0),
(159, 1, 68, 'Main', 0, 1, 0, 0, 0),
(159, 2, 68, 'Main', 0, 0, 0, 0, 0),
(159, 2, 69, 'navigatie', 0, 1, 0, 0, 0),
(159, 3, 68, 'Main', 0, 0, 0, 0, 0),
(159, 3, 69, 'navigatie', 0, 0, 0, 0, 0),
(159, 3, 123, 'titel', 0, 1, 0, 0, 0),
(159, 3, 124, 'ondertitel_1', 0, 1, 0, 0, 0),
(159, 3, 125, 'ondertitel_2', 0, 1, 0, 0, 0),
(159, 3, 126, 'ondertitel_3', 0, 1, 0, 0, 0),
(159, 4, 68, 'Main', 0, 0, 0, 0, 0),
(159, 4, 69, 'navigatie', 0, 0, 0, 0, 0),
(159, 4, 123, 'titel', 0, 0, 0, 0, 0),
(159, 4, 124, 'ondertitel_1', 0, 0, 0, 0, 0),
(159, 4, 125, 'ondertitel_2', 0, 0, 0, 0, 0),
(159, 4, 126, 'ondertitel_3', 0, 0, 0, 0, 0),
(159, 4, 127, 'tekst1', 0, 1, 0, 0, 0),
(159, 4, 128, 'afbeelding_1', 0, 1, 0, 0, 0),
(159, 5, 68, 'Main', 0, 0, 0, 0, 0),
(159, 5, 69, 'navigatie', 0, 0, 0, 0, 0),
(159, 5, 123, 'titel', 0, 0, 0, 0, 0),
(159, 5, 124, 'ondertitel_1', 0, 0, 0, 0, 0),
(159, 5, 125, 'ondertitel_2', 0, 0, 0, 0, 0),
(159, 5, 126, 'ondertitel_3', 0, 0, 0, 0, 0),
(159, 5, 127, 'tekst1', 0, 0, 0, 0, 0),
(159, 5, 128, 'afbeelding_1', 0, 0, 0, 0, 0),
(159, 5, 143, 'link_1', 0, 1, 0, 0, 0),
(159, 6, 69, 'navigatie', 0, 0, 0, 0, 0),
(159, 6, 123, 'titel', 0, 0, 0, 0, 0),
(159, 6, 124, 'ondertitel_1', 0, 0, 0, 0, 0),
(159, 6, 125, 'ondertitel_2', 0, 0, 0, 0, 0),
(159, 6, 126, 'ondertitel_3', 0, 0, 0, 0, 0),
(159, 6, 127, 'tekst1', 0, 0, 0, 0, 0),
(159, 6, 128, 'afbeelding_1', 0, 0, 0, 0, 0),
(159, 6, 143, 'link_1', 0, 0, 0, 0, 0),
(159, 6, 144, 'tekst_1', 0, 1, 0, 0, 0),
(159, 6, 145, 'afbeelding_2', 0, 1, 0, 0, 0),
(159, 6, 146, 'tekst_2', 0, 1, 0, 0, 0),
(159, 6, 147, 'link_2', 0, 1, 0, 0, 0),
(159, 6, 148, 'afbeelding_3', 0, 1, 0, 0, 0),
(159, 6, 149, 'tekst_3', 0, 1, 0, 0, 0),
(159, 6, 150, 'Main', 0, 1, 0, 0, 0),
(159, 7, 69, 'navigatie', 0, 0, 0, 0, 0),
(159, 7, 123, 'titel', 0, 0, 0, 0, 0),
(159, 7, 124, 'ondertitel_1', 0, 0, 0, 0, 0),
(159, 7, 125, 'ondertitel_2', 0, 0, 0, 0, 0),
(159, 7, 126, 'ondertitel_3', 0, 0, 0, 0, 0),
(159, 7, 127, 'tekst1', 0, 0, 0, 0, 0),
(159, 7, 128, 'afbeelding_1', 0, 0, 0, 0, 0),
(159, 7, 143, 'link_1', 0, 0, 0, 0, 0),
(159, 7, 144, 'tekst_1', 0, 0, 0, 0, 0),
(159, 7, 145, 'afbeelding_2', 0, 0, 0, 0, 0),
(159, 7, 146, 'tekst_2', 0, 0, 0, 0, 0),
(159, 7, 147, 'link_2', 0, 0, 0, 0, 0),
(159, 7, 148, 'afbeelding_3', 0, 0, 0, 0, 0),
(159, 7, 149, 'tekst_3', 0, 0, 0, 0, 0),
(159, 7, 150, 'Main', 0, 0, 0, 0, 0),
(159, 7, 151, 'link_3', 0, 1, 0, 0, 0),
(159, 8, 69, 'navigatie', 0, 0, 0, 0, 0),
(159, 8, 123, 'titel', 0, 0, 0, 0, 0),
(159, 8, 124, 'ondertitel_1', 0, 0, 0, 0, 0),
(159, 8, 125, 'ondertitel_2', 0, 0, 0, 0, 0),
(159, 8, 126, 'ondertitel_3', 0, 0, 0, 0, 0),
(159, 8, 127, 'tekst1', 0, 0, 0, 0, 0),
(159, 8, 128, 'afbeelding_1', 0, 0, 0, 0, 0),
(159, 8, 143, 'link_1', 0, 0, 0, 0, 0),
(159, 8, 144, 'tekst_1', 0, 0, 0, 0, 0),
(159, 8, 145, 'afbeelding_2', 0, 0, 0, 0, 0),
(159, 8, 146, 'tekst_2', 0, 0, 0, 0, 0),
(159, 8, 147, 'link_2', 0, 0, 0, 0, 0),
(159, 8, 148, 'afbeelding_3', 0, 0, 0, 0, 0),
(159, 8, 149, 'tekst_3', 0, 0, 0, 0, 0),
(159, 8, 150, 'Main', 0, 0, 0, 0, 0),
(159, 8, 151, 'link_3', 0, 0, 0, 0, 0),
(159, 8, 152, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(159, 8, 153, 'voorwaarde', 0, 1, 0, 0, 0),
(159, 8, 154, 'titel_adres', 0, 1, 0, 0, 0),
(159, 8, 155, 'adres', 0, 1, 0, 0, 0),
(159, 8, 156, 'expertise', 0, 1, 0, 0, 0),
(159, 9, 69, 'navigatie', 0, 0, 0, 0, 0),
(159, 9, 123, 'titel', 0, 0, 0, 0, 0),
(159, 9, 124, 'ondertitel_1', 0, 0, 0, 0, 0),
(159, 9, 125, 'ondertitel_2', 0, 0, 0, 0, 0),
(159, 9, 126, 'ondertitel_3', 0, 0, 0, 0, 0),
(159, 9, 127, 'tekst1', 0, 0, 0, 0, 0),
(159, 9, 128, 'afbeelding_1', 0, 0, 0, 0, 0),
(159, 9, 143, 'link_1', 0, 0, 0, 0, 0),
(159, 9, 144, 'tekst_1', 0, 0, 0, 0, 0),
(159, 9, 146, 'tekst_2', 0, 0, 0, 0, 0),
(159, 9, 147, 'link_2', 0, 0, 0, 0, 0),
(159, 9, 149, 'tekst_3', 0, 0, 0, 0, 0),
(159, 9, 150, 'Main', 0, 0, 0, 0, 0),
(159, 9, 151, 'link_3', 0, 0, 0, 0, 0),
(159, 9, 152, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(159, 9, 153, 'voorwaarde', 0, 0, 0, 0, 0),
(159, 9, 154, 'titel_adres', 0, 0, 0, 0, 0),
(159, 9, 155, 'adres', 0, 0, 0, 0, 0),
(159, 9, 156, 'expertise', 0, 0, 0, 0, 0),
(159, 9, 237, 'afbeelding_2', 0, 1, 0, 0, 0),
(159, 9, 238, 'afbeelding_3', 0, 1, 0, 0, 0),
(159, 10, 69, 'navigatie', 0, 0, 0, 0, 0),
(159, 10, 123, 'titel', 0, 0, 0, 0, 0),
(159, 10, 124, 'ondertitel_1', 0, 0, 0, 0, 0),
(159, 10, 125, 'ondertitel_2', 0, 0, 0, 0, 0),
(159, 10, 126, 'ondertitel_3', 0, 0, 0, 0, 0),
(159, 10, 127, 'tekst1', 0, 0, 0, 0, 0),
(159, 10, 128, 'afbeelding_1', 0, 0, 0, 0, 0),
(159, 10, 143, 'link_1', 0, 0, 0, 0, 0),
(159, 10, 144, 'tekst_1', 0, 0, 0, 0, 0),
(159, 10, 146, 'tekst_2', 0, 0, 0, 0, 0),
(159, 10, 147, 'link_2', 0, 0, 0, 0, 0),
(159, 10, 149, 'tekst_3', 0, 0, 0, 0, 0),
(159, 10, 150, 'Main', 0, 0, 0, 0, 0),
(159, 10, 152, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(159, 10, 153, 'voorwaarde', 0, 0, 0, 0, 0),
(159, 10, 154, 'titel_adres', 0, 0, 0, 0, 0),
(159, 10, 155, 'adres', 0, 0, 0, 0, 0),
(159, 10, 156, 'expertise', 0, 0, 0, 0, 0),
(159, 10, 237, 'afbeelding_2', 0, 0, 0, 0, 0),
(159, 10, 238, 'afbeelding_3', 0, 0, 0, 0, 0),
(159, 10, 327, 'link_3', 0, 1, 0, 0, 0),
(163, 1, 140, 'Main', 0, 1, 0, 0, 0),
(163, 2, 140, 'Main', 0, 0, 0, 0, 0),
(163, 2, 141, 'navigatie', 0, 1, 0, 0, 0),
(163, 3, 140, 'Main', 0, 0, 0, 0, 0),
(163, 3, 141, 'navigatie', 0, 0, 0, 0, 0),
(163, 3, 194, 'titel', 0, 1, 0, 0, 0),
(163, 3, 195, 'tekst_1', 0, 1, 0, 0, 0),
(163, 3, 196, 'foto_1', 0, 1, 0, 0, 0),
(163, 3, 197, 'ondertitel_1', 0, 1, 0, 0, 0),
(163, 3, 198, 'ondertitel_2', 0, 1, 0, 0, 0),
(163, 3, 199, 'foto_2', 0, 1, 0, 0, 0),
(163, 3, 200, 'tekst_2', 0, 1, 0, 0, 0),
(163, 3, 201, 'tekst_3', 0, 1, 0, 0, 0),
(163, 3, 202, 'foto_3', 0, 1, 0, 0, 0),
(163, 3, 203, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(163, 3, 204, 'titel_adres', 0, 1, 0, 0, 0),
(163, 3, 205, 'voorwaarde', 0, 1, 0, 0, 0),
(163, 3, 206, 'adres', 0, 1, 0, 0, 0),
(163, 3, 207, 'expertise', 0, 1, 0, 0, 0),
(164, 1, 223, 'Main', 0, 1, 0, 0, 0),
(164, 2, 223, 'Main', 0, 0, 0, 0, 0),
(164, 2, 255, 'foto_1', 0, 1, 0, 0, 0),
(164, 2, 256, 'foto_2', 0, 1, 0, 0, 0),
(164, 2, 257, 'foto_3', 0, 1, 0, 0, 0),
(164, 2, 258, 'foto_4', 0, 1, 0, 0, 0),
(164, 3, 223, 'Main', 0, 0, 0, 0, 0),
(164, 3, 255, 'foto_1', 0, 0, 0, 0, 0),
(164, 3, 256, 'foto_2', 0, 0, 0, 0, 0),
(164, 3, 257, 'foto_3', 0, 0, 0, 0, 0),
(164, 3, 258, 'foto_4', 0, 0, 0, 0, 0),
(164, 3, 259, 'navigatie', 0, 1, 0, 0, 0),
(164, 4, 223, 'Main', 0, 0, 0, 0, 0),
(164, 4, 255, 'foto_1', 0, 0, 0, 0, 0),
(164, 4, 256, 'foto_2', 0, 0, 0, 0, 0),
(164, 4, 257, 'foto_3', 0, 0, 0, 0, 0),
(164, 4, 258, 'foto_4', 0, 0, 0, 0, 0),
(164, 4, 259, 'navigatie', 0, 0, 0, 0, 0),
(164, 4, 260, 'titel', 0, 1, 0, 0, 0),
(164, 5, 223, 'Main', 0, 0, 0, 0, 0),
(164, 5, 256, 'foto_2', 0, 0, 0, 0, 0),
(164, 5, 257, 'foto_3', 0, 0, 0, 0, 0),
(164, 5, 258, 'foto_4', 0, 0, 0, 0, 0),
(164, 5, 259, 'navigatie', 0, 0, 0, 0, 0),
(164, 5, 260, 'titel', 0, 0, 0, 0, 0),
(164, 5, 279, 'foto_1', 0, 1, 0, 0, 0),
(164, 5, 280, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(164, 5, 281, 'titel_adres', 0, 1, 0, 0, 0),
(164, 5, 282, 'voorwaarde', 0, 1, 0, 0, 0),
(164, 5, 283, 'adres', 0, 1, 0, 0, 0),
(164, 5, 284, 'expertise', 0, 1, 0, 0, 0),
(165, 1, 227, 'Main', 0, 1, 0, 0, 0),
(165, 2, 227, 'Main', 0, 0, 0, 0, 0),
(165, 2, 262, 'navigatie', 0, 1, 0, 0, 0),
(165, 2, 263, 'titel', 0, 1, 0, 0, 0),
(165, 2, 264, 'foto_1', 0, 1, 0, 0, 0),
(165, 2, 265, 'foto_2', 0, 1, 0, 0, 0),
(165, 2, 266, 'foto_3', 0, 1, 0, 0, 0),
(165, 2, 267, 'foto_4', 0, 1, 0, 0, 0),
(165, 2, 268, 'titel_voorwaarde', 0, 1, 0, 0, 0),
(165, 2, 269, 'voorwaarde', 0, 1, 0, 0, 0),
(165, 2, 270, 'titel_adres', 0, 1, 0, 0, 0),
(165, 2, 271, 'adres', 0, 1, 0, 0, 0),
(165, 2, 272, 'expertise', 0, 1, 0, 0, 0),
(165, 3, 227, 'Main', 0, 0, 0, 0, 0),
(165, 3, 262, 'navigatie', 0, 0, 0, 0, 0),
(165, 3, 263, 'titel', 0, 0, 0, 0, 0),
(165, 3, 265, 'foto_2', 0, 0, 0, 0, 0),
(165, 3, 266, 'foto_3', 0, 0, 0, 0, 0),
(165, 3, 267, 'foto_4', 0, 0, 0, 0, 0),
(165, 3, 268, 'titel_voorwaarde', 0, 0, 0, 0, 0),
(165, 3, 269, 'voorwaarde', 0, 0, 0, 0, 0),
(165, 3, 270, 'titel_adres', 0, 0, 0, 0, 0),
(165, 3, 271, 'adres', 0, 0, 0, 0, 0),
(165, 3, 272, 'expertise', 0, 0, 0, 0, 0),
(165, 3, 285, 'foto_1', 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionVersionBlocksCacheSettings`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionVersionBlocksOutputCache`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionBlocksOutputCache` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8_unicode_ci,
  `btCachedBlockOutputExpires` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionVersionBlockStyles`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionBlockStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CollectionVersionBlockStyles`
--

INSERT INTO `CollectionVersionBlockStyles` (`cID`, `cvID`, `bID`, `arHandle`, `issID`) VALUES
(1, 6, 24, 'vochtproblemen_img_home', 1),
(1, 7, 24, 'vochtproblemen_img_home', 1),
(1, 8, 24, 'vochtproblemen_img_home', 1),
(1, 9, 24, 'vochtproblemen_img_home', 1),
(1, 10, 24, 'vochtproblemen_img_home', 1),
(1, 11, 24, 'vochtproblemen_img_home', 1),
(1, 12, 24, 'vochtproblemen_img_home', 1),
(1, 13, 24, 'vochtproblemen_img_home', 1),
(1, 14, 24, 'vochtproblemen_img_home', 1),
(1, 15, 24, 'vochtproblemen_img_home', 1),
(1, 16, 24, 'vochtproblemen_img_home', 1),
(1, 17, 24, 'vochtproblemen_img_home', 1),
(1, 18, 24, 'vochtproblemen_img_home', 1),
(1, 19, 24, 'vochtproblemen_img_home', 1),
(1, 20, 24, 'vochtproblemen_img_home', 1),
(1, 21, 24, 'vochtproblemen_img_home', 1),
(1, 22, 24, 'vochtproblemen_img_home', 1),
(1, 23, 24, 'vochtproblemen_img_home', 1),
(1, 24, 24, 'vochtproblemen_img_home', 1),
(1, 25, 24, 'vochtproblemen_img_home', 1),
(1, 26, 24, 'vochtproblemen_img_home', 1),
(1, 27, 24, 'vochtproblemen_img_home', 1),
(1, 28, 24, 'vochtproblemen_img_home', 1),
(1, 29, 24, 'vochtproblemen_img_home', 1),
(1, 30, 24, 'vochtproblemen_img_home', 1),
(1, 31, 24, 'vochtproblemen_img_home', 1),
(1, 32, 24, 'vochtproblemen_img_home', 1),
(1, 33, 24, 'vochtproblemen_img_home', 1),
(1, 34, 24, 'vochtproblemen_img_home', 1),
(1, 35, 24, 'vochtproblemen_img_home', 1),
(1, 36, 24, 'vochtproblemen_img_home', 1),
(1, 37, 24, 'vochtproblemen_img_home', 1),
(1, 38, 24, 'vochtproblemen_img_home', 1),
(1, 39, 24, 'vochtproblemen_img_home', 1),
(1, 40, 24, 'vochtproblemen_img_home', 1),
(1, 41, 24, 'vochtproblemen_img_home', 1),
(1, 42, 24, 'vochtproblemen_img_home', 1),
(1, 43, 24, 'vochtproblemen_img_home', 1),
(1, 44, 24, 'vochtproblemen_img_home', 1),
(1, 45, 24, 'vochtproblemen_img_home', 1),
(1, 46, 24, 'vochtproblemen_img_home', 1),
(1, 47, 24, 'vochtproblemen_img_home', 1),
(1, 48, 24, 'vochtproblemen_img_home', 1),
(1, 49, 24, 'vochtproblemen_img_home', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionVersionFeatureAssignments`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionFeatureAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `faID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CollectionVersionFeatureAssignments`
--

INSERT INTO `CollectionVersionFeatureAssignments` (`cID`, `cvID`, `faID`) VALUES
(1, 3, 1),
(1, 4, 1),
(1, 5, 1),
(1, 4, 2),
(1, 5, 2),
(1, 6, 2),
(1, 7, 2),
(1, 8, 2),
(1, 9, 2),
(1, 10, 2),
(1, 11, 2),
(1, 12, 2),
(1, 13, 2),
(1, 14, 2),
(1, 15, 2),
(1, 16, 2),
(1, 17, 2),
(1, 18, 2),
(1, 19, 2),
(1, 20, 2),
(1, 21, 2),
(1, 22, 2),
(1, 23, 2),
(1, 24, 2),
(1, 25, 2),
(1, 26, 2),
(1, 27, 2),
(1, 28, 2),
(1, 29, 2),
(1, 30, 2),
(1, 31, 2),
(1, 32, 2),
(1, 33, 2),
(1, 34, 2),
(1, 35, 2),
(1, 36, 2),
(1, 37, 2),
(1, 38, 2),
(1, 39, 2),
(1, 40, 2),
(1, 41, 2),
(1, 42, 2),
(1, 43, 2),
(1, 44, 2),
(1, 45, 2),
(1, 46, 2),
(1, 47, 2),
(1, 48, 2),
(1, 49, 2),
(1, 6, 5),
(1, 7, 5),
(1, 8, 5),
(1, 9, 5),
(1, 10, 5),
(1, 11, 5),
(1, 12, 5),
(1, 13, 5),
(1, 14, 5),
(1, 15, 5),
(1, 16, 5),
(1, 17, 5),
(1, 18, 5),
(1, 19, 5),
(1, 20, 5),
(1, 21, 5),
(1, 22, 5),
(1, 23, 5),
(1, 24, 5),
(1, 25, 5),
(1, 26, 5),
(1, 27, 5),
(1, 28, 5),
(1, 29, 5),
(1, 30, 5),
(1, 31, 5),
(1, 32, 5),
(1, 33, 5),
(1, 34, 5),
(1, 35, 5),
(1, 36, 5),
(1, 37, 5),
(1, 38, 5),
(1, 39, 5),
(1, 40, 5),
(1, 41, 5),
(1, 42, 5),
(1, 43, 5),
(1, 44, 5),
(1, 45, 5),
(1, 46, 5),
(1, 47, 5),
(1, 48, 5),
(1, 49, 5),
(1, 6, 6),
(1, 7, 6),
(1, 8, 6),
(1, 9, 6),
(1, 10, 6),
(1, 11, 6),
(1, 12, 6),
(1, 13, 6),
(1, 14, 6),
(1, 15, 6),
(1, 16, 6),
(1, 17, 6),
(1, 18, 6),
(1, 19, 6),
(1, 20, 6),
(1, 21, 6),
(1, 22, 6),
(1, 23, 6),
(1, 24, 6),
(1, 25, 6),
(1, 26, 6),
(1, 27, 6),
(1, 28, 6),
(1, 29, 6),
(1, 30, 6),
(1, 31, 6),
(1, 32, 6),
(1, 33, 6),
(1, 34, 6),
(1, 35, 6),
(1, 36, 6),
(1, 37, 6),
(1, 38, 6),
(1, 39, 6),
(1, 40, 6),
(1, 41, 6),
(1, 42, 6),
(1, 43, 6),
(1, 44, 6),
(1, 45, 6),
(1, 46, 6),
(1, 47, 6),
(1, 48, 6),
(1, 49, 6),
(1, 7, 8),
(1, 8, 8),
(1, 9, 8),
(1, 10, 8),
(1, 11, 8),
(1, 12, 8),
(1, 13, 8),
(1, 14, 8),
(1, 15, 8),
(1, 16, 8),
(1, 17, 8),
(1, 18, 8),
(1, 19, 8),
(1, 20, 8),
(1, 21, 8),
(1, 22, 8),
(1, 23, 8),
(1, 24, 8),
(1, 25, 8),
(1, 26, 8),
(1, 27, 8),
(1, 28, 8),
(1, 29, 8),
(1, 30, 8),
(1, 31, 8),
(1, 32, 8),
(1, 33, 8),
(1, 34, 8),
(1, 35, 8),
(1, 36, 8),
(1, 37, 8),
(1, 38, 8),
(1, 39, 8),
(1, 40, 8),
(1, 41, 8),
(1, 42, 8),
(1, 43, 8),
(1, 44, 8),
(1, 45, 8),
(1, 46, 8),
(1, 47, 8),
(1, 48, 8),
(1, 49, 8),
(1, 13, 9),
(1, 14, 9),
(1, 15, 9),
(1, 16, 9),
(1, 17, 9),
(1, 18, 9),
(1, 19, 9),
(1, 20, 9),
(1, 21, 9),
(1, 22, 9),
(1, 23, 9),
(1, 24, 9),
(1, 25, 9),
(1, 17, 10),
(1, 18, 10),
(1, 19, 10),
(1, 20, 10),
(1, 21, 10),
(1, 22, 10),
(1, 23, 10),
(1, 24, 10),
(1, 25, 10),
(1, 26, 10),
(1, 27, 10),
(1, 28, 10),
(1, 29, 10),
(1, 30, 10),
(1, 31, 10),
(1, 32, 10),
(1, 33, 10),
(1, 24, 11),
(1, 25, 11),
(1, 26, 11),
(1, 27, 11),
(1, 28, 11),
(1, 29, 11),
(1, 25, 12),
(1, 26, 12),
(1, 27, 12),
(1, 28, 12),
(1, 29, 12),
(1, 30, 12),
(1, 31, 12),
(1, 26, 14),
(1, 27, 14),
(1, 28, 14),
(1, 27, 15),
(1, 28, 15),
(1, 28, 16),
(1, 29, 16),
(1, 30, 16),
(1, 31, 16),
(1, 32, 16),
(1, 33, 16),
(1, 34, 16),
(1, 35, 16),
(1, 36, 16),
(1, 37, 16),
(1, 38, 16),
(1, 39, 16),
(1, 40, 16),
(1, 41, 16),
(1, 42, 16),
(1, 32, 17),
(1, 32, 18),
(1, 33, 18),
(1, 34, 18),
(1, 35, 18),
(1, 35, 19),
(1, 36, 19),
(1, 37, 19),
(1, 38, 19),
(1, 39, 19),
(1, 40, 19),
(1, 41, 19),
(1, 42, 19),
(1, 43, 19),
(1, 44, 19),
(1, 45, 19),
(1, 46, 19),
(1, 37, 20),
(1, 38, 20),
(1, 39, 20),
(1, 40, 20),
(1, 41, 20),
(1, 42, 20),
(159, 4, 21),
(159, 5, 21),
(159, 6, 21),
(159, 7, 21),
(159, 8, 21),
(159, 9, 21),
(159, 10, 21),
(159, 6, 22),
(159, 7, 22),
(159, 8, 22),
(159, 6, 23),
(159, 7, 23),
(159, 8, 23),
(152, 3, 24),
(152, 4, 24),
(152, 4, 25),
(152, 4, 26),
(152, 4, 28),
(152, 4, 29),
(151, 4, 30),
(151, 5, 30),
(151, 6, 30),
(151, 7, 30),
(151, 8, 30),
(151, 9, 30),
(151, 10, 30),
(151, 11, 30),
(151, 12, 30),
(151, 13, 30),
(151, 5, 31),
(151, 6, 31),
(151, 7, 31),
(151, 8, 31),
(151, 9, 31),
(151, 10, 31),
(151, 11, 31),
(151, 12, 31),
(151, 13, 31),
(151, 5, 32),
(151, 6, 32),
(151, 7, 32),
(151, 8, 32),
(151, 9, 32),
(151, 10, 32),
(151, 11, 32),
(151, 12, 32),
(151, 13, 32),
(163, 3, 33),
(163, 3, 34),
(163, 3, 35),
(153, 4, 36),
(153, 5, 36),
(153, 6, 36),
(153, 4, 37),
(153, 5, 37),
(153, 6, 37),
(153, 4, 38),
(153, 5, 38),
(153, 6, 38),
(154, 4, 39),
(154, 5, 39),
(154, 6, 39),
(154, 7, 39),
(154, 8, 39),
(154, 9, 39),
(154, 10, 39),
(154, 11, 39),
(154, 12, 39),
(154, 13, 39),
(159, 9, 40),
(159, 10, 40),
(159, 9, 41),
(159, 10, 41),
(153, 7, 42),
(153, 7, 43),
(153, 7, 44),
(154, 9, 45),
(154, 10, 45),
(154, 11, 45),
(154, 12, 45),
(154, 13, 45),
(154, 13, 46),
(154, 14, 47),
(154, 15, 47),
(154, 16, 47),
(154, 14, 48),
(154, 14, 49),
(154, 15, 49),
(154, 16, 49),
(154, 17, 49),
(154, 18, 49),
(154, 14, 50),
(154, 15, 50),
(154, 16, 50),
(154, 17, 50),
(154, 18, 50),
(154, 15, 51),
(154, 16, 51),
(154, 17, 51),
(154, 18, 51),
(164, 2, 52),
(164, 3, 52),
(164, 4, 52),
(164, 2, 53),
(164, 3, 53),
(164, 4, 53),
(164, 5, 53),
(164, 2, 54),
(164, 3, 54),
(164, 4, 54),
(164, 5, 54),
(164, 2, 55),
(164, 3, 55),
(164, 4, 55),
(164, 5, 55),
(165, 2, 56),
(165, 2, 57),
(165, 3, 57),
(165, 2, 58),
(165, 3, 58),
(165, 2, 59),
(165, 3, 59),
(154, 17, 60),
(154, 18, 60),
(164, 5, 61),
(165, 3, 62),
(157, 4, 63),
(157, 4, 64),
(157, 5, 64),
(157, 6, 64),
(157, 7, 64),
(157, 8, 64),
(157, 4, 65),
(157, 6, 66),
(157, 6, 67),
(157, 7, 67),
(157, 8, 67),
(157, 7, 68),
(157, 8, 68),
(1, 43, 69),
(1, 43, 70),
(1, 44, 70),
(1, 45, 70),
(1, 44, 71),
(1, 45, 72),
(1, 46, 73),
(1, 46, 74),
(1, 47, 74),
(1, 48, 74),
(1, 49, 74),
(1, 47, 75),
(1, 47, 76),
(1, 48, 76),
(1, 48, 77),
(1, 49, 77),
(1, 49, 78);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionVersionRelatedEdits`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionRelatedEdits` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '0',
  `cRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvRelationID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionVersions`
--

CREATE TABLE IF NOT EXISTS `CollectionVersions` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cvComments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) unsigned DEFAULT NULL,
  `cvApproverUID` int(10) unsigned DEFAULT NULL,
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `CollectionVersions`
--

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`) VALUES
(1, 1, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 11:47:56', 'Initial Version', 0, 0, 1, NULL, 2, 5, NULL),
(1, 2, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 13:25:38', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 5, NULL),
(1, 3, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 13:39:47', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 5, NULL),
(1, 4, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 13:55:21', 'Nieuwe Versie 4', 0, 0, 1, 1, 2, 5, NULL),
(1, 5, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 14:04:16', 'Nieuwe Versie 5', 0, 0, 1, 1, 2, 5, NULL),
(1, 6, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 14:09:02', 'Version 6', 0, 0, 1, 1, 2, 5, NULL),
(1, 7, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 14:20:00', 'Version 7', 0, 0, 1, 1, 2, 5, NULL),
(1, 8, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 14:49:16', 'Version 8', 0, 0, 1, 1, 2, 5, NULL),
(1, 9, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 14:53:01', 'Version 9', 0, 0, 1, 1, 2, 5, NULL),
(1, 10, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 15:48:26', 'Version 10', 0, 0, 1, 1, 2, 5, NULL),
(1, 11, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 15:54:27', 'Version 11', 0, 0, 1, 1, 2, 5, NULL),
(1, 12, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 15:55:11', 'Version 12', 0, 0, 1, 1, 2, 5, NULL),
(1, 13, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 18:06:14', 'Version 13', 0, 0, 1, 1, 2, 5, NULL),
(1, 14, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 18:13:01', 'Nieuwe Versie 14', 0, 0, 1, 1, 2, 5, NULL),
(1, 15, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 18:36:04', 'Version 15', 0, 0, 1, 1, 2, 5, NULL),
(1, 16, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-11 20:19:08', 'Version 16', 0, 0, 1, 1, 2, 5, NULL),
(1, 17, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 09:29:31', 'Version 17', 0, 0, 1, 1, 2, 5, NULL),
(1, 18, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 09:34:35', 'Version 18', 0, 0, 1, 1, 2, 5, NULL),
(1, 19, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 09:35:50', 'Version 19', 0, 0, 1, 1, 2, 5, NULL),
(1, 20, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 09:40:34', 'Version 20', 0, 0, 1, 1, 2, 5, NULL),
(1, 21, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 09:41:19', 'Version 21', 0, 0, 1, 1, 2, 5, NULL),
(1, 22, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 09:50:23', 'Version 22', 0, 0, 1, 1, 2, 5, NULL),
(1, 23, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 09:52:08', 'Version 23', 0, 0, 1, 1, 2, 5, NULL),
(1, 24, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 09:54:53', 'Version 24', 0, 0, 1, NULL, 2, 5, NULL),
(1, 25, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 09:56:26', 'Version 25', 0, 0, 1, 1, 2, 5, NULL),
(1, 26, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:03:22', 'Version 26', 0, 0, 1, 1, 2, 5, NULL),
(1, 27, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:04:29', 'Version 27', 0, 0, 1, 1, 2, 5, NULL),
(1, 28, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:04:55', 'Version 28', 0, 0, 1, 1, 2, 5, NULL),
(1, 29, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:05:16', 'Version 29', 0, 0, 1, 1, 2, 5, NULL),
(1, 30, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:06:51', 'Version 30', 0, 0, 1, 1, 2, 5, NULL),
(1, 31, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:07:54', 'Version 31', 0, 0, 1, 1, 2, 5, NULL),
(1, 32, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:08:55', 'Version 32', 0, 0, 1, 1, 2, 5, NULL),
(1, 33, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:10:24', 'Version 33', 0, 0, 1, 1, 2, 5, NULL),
(1, 34, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:12:16', 'Version 34', 0, 0, 1, 1, 2, 5, NULL),
(1, 35, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:13:13', 'Version 35', 0, 0, 1, 1, 2, 5, NULL),
(1, 36, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:14:17', 'Version 36', 0, 0, 1, 1, 2, 5, NULL),
(1, 37, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:16:44', 'Version 37', 0, 0, 1, NULL, 2, 5, NULL),
(1, 38, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:17:28', 'Version 38', 0, 0, 1, 1, 2, 5, NULL),
(1, 39, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:20:09', 'Nieuwe Versie 39', 0, 0, 1, 1, 2, 5, NULL),
(1, 40, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:27:44', 'Version 40', 0, 0, 1, 1, 2, 5, NULL),
(1, 41, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:48:50', 'Version 41', 0, 0, 1, 1, 2, 5, NULL),
(1, 42, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 10:50:54', 'Version 42', 0, 0, 1, 1, 2, 5, NULL),
(1, 43, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 20:46:28', 'Version 43', 0, 0, 1, 1, 2, 5, NULL),
(1, 44, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 20:48:00', 'Version 44', 0, 0, 1, 1, 2, 5, NULL),
(1, 45, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 20:50:17', 'Version 45', 0, 0, 1, 1, 2, 5, NULL),
(1, 46, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 20:52:33', 'Version 46', 0, 0, 1, 1, 2, 5, NULL),
(1, 47, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 20:54:59', 'Version 47', 0, 0, 1, 1, 2, 5, NULL),
(1, 48, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 20:56:42', 'Version 48', 0, 0, 1, 1, 2, 5, NULL),
(1, 49, 'Home', 'home', '', '2015-05-11 11:47:56', '2015-05-12 20:57:14', 'Version 49', 1, 0, 1, 1, 2, 5, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(3, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(4, 1, 'Full Sitemap', 'full', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(5, 1, 'Flat View', 'explore', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(6, 1, 'Page Search', 'search', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(7, 1, 'Files', 'files', 'All documents and images.', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(8, 1, 'File Manager', 'search', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(9, 1, 'Attributes', 'attributes', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(10, 1, 'File Sets', 'sets', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(11, 1, 'Add File Set', 'add_set', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(12, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(13, 1, 'Search Users', 'search', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(14, 1, 'User Groups', 'groups', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(15, 1, 'Attributes', 'attributes', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(16, 1, 'Add User', 'add', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(17, 1, 'Add Group', 'add_group', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(18, 1, 'Move Multiple Groups', 'bulkupdate', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(19, 1, 'Group Sets', 'group_sets', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(20, 1, 'Community Points', 'points', NULL, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(21, 1, 'Assign Points', 'assign', NULL, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(22, 1, 'Actions', 'actions', NULL, '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(23, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2015-05-11 11:48:29', '2015-05-11 11:48:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(29, 1, 'Inspect', 'inspect', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(30, 1, 'Page Types', 'types', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(31, 1, 'Organize Page Type Order', 'organize', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(32, 1, 'Add Page Type', 'add', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(33, 1, 'Compose Form', 'form', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(34, 1, 'Defaults and Output', 'output', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(35, 1, 'Page Type Attributes', 'attributes', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(36, 1, 'Page Type Permissions', 'permissions', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(37, 1, 'Page Templates', 'templates', 'Form factors for pages in your site.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(38, 1, 'Add Page Template', 'add', 'Add page templates to your site.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(39, 1, 'Attributes', 'attributes', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(40, 1, 'Single Pages', 'single', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(41, 1, 'RSS Feeds', 'feeds', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(42, 1, 'Conversations', 'conversations', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(43, 1, 'Messages', 'messages', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(44, 1, 'Workflow', 'workflow', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(45, 1, 'Workflow List', 'workflows', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(46, 1, 'Waiting for Me', 'me', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(47, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(48, 1, 'Stacks', 'stacks', 'Share content across your site.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(49, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(50, 1, 'Stack List', 'list', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(51, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(52, 1, 'Extend concrete5', 'extend', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(53, 1, 'Dashboard', 'news', '', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(54, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(55, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(56, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(57, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(58, 1, 'Get More Add-Ons', 'addons', 'Download add-ons from concrete5.org.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(59, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(60, 1, 'Basics', 'basics', 'Basic information about your website.', '2015-05-11 11:48:30', '2015-05-11 11:48:30', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(61, 1, 'Site Name', 'name', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(62, 1, 'Accessibility', 'accessibility', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(63, 1, 'Social Links', 'social', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(64, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(65, 1, 'Rich Text Editor', 'editor', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(66, 1, 'Languages', 'multilingual', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(67, 1, 'Time Zone', 'timezone', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(68, 1, 'Multilingual', 'multilingual', 'Run your site in multiple languages.', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(69, 1, 'Multilingual Setup', 'setup', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(70, 1, 'Page Report', 'page_report', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(71, 1, 'Translate Site Interface', 'translate_interface', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(72, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs and tracking codes.', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(73, 1, 'Pretty URLs', 'urls', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(74, 1, 'Bulk SEO Updater', 'bulk', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(75, 1, 'Tracking Codes', 'codes', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(76, 1, 'Excluded URL Word List', 'excluded', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(77, 1, 'Search Index', 'searchindex', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(78, 1, 'Files', 'files', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(79, 1, 'File Manager Permissions', 'permissions', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(80, 1, 'Allowed File Types', 'filetypes', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(81, 1, 'Thumbnails', 'thumbnails', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(82, 1, 'File Storage Locations', 'storage', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(83, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(84, 1, 'Cache & Speed Settings', 'cache', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(85, 1, 'Clear Cache', 'clearcache', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(86, 1, 'Automated Jobs', 'jobs', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(87, 1, 'Database Query Log', 'query_log', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(88, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(89, 1, 'Site Access', 'site', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(90, 1, 'Task Permissions', 'tasks', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(91, 1, 'User Permissions', 'users', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(92, 1, 'Advanced Permissions', 'advanced', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(93, 1, 'IP Blacklist', 'blacklist', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(94, 1, 'Captcha Setup', 'captcha', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(95, 1, 'Spam Control', 'antispam', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(96, 1, 'Maintenance Mode', 'maintenance', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(97, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(98, 1, 'Login Destination', 'postlogin', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(99, 1, 'Public Profiles', 'profiles', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(100, 1, 'Public Registration', 'open', '', '2015-05-11 11:48:31', '2015-05-11 11:48:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(101, 1, 'Authentication Types', 'authentication', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(102, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(103, 1, 'SMTP Method', 'method', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(104, 1, 'Test Mail Settings', 'test', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(105, 1, 'Email Importers', 'importers', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(106, 1, 'Conversations', 'conversations', 'Manage your conversations settings', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(107, 1, 'Settings', 'settings', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(108, 1, 'Community Points', 'points', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(109, 1, 'Banned Words', 'bannedwords', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(110, 1, 'Conversation Permissions', 'permissions', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(111, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(112, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(113, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(114, 1, 'Topics', 'topics', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(115, 1, 'Add Topic Tree', 'add', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(116, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(117, 1, 'Environment Information', 'info', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(118, 1, 'Debug Settings', 'debug', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(119, 1, 'Logging Settings', 'logging', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(120, 1, 'Proxy Server', 'proxy', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(121, 1, 'Backup & Restore', 'backup', 'Backup or restore your website.', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(122, 1, 'Backup Database', 'backup', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(123, 1, 'Update concrete5', 'update', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(124, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 4, NULL),
(125, 1, 'Customize Dashboard Home', 'home', '', '2015-05-11 11:48:32', '2015-05-11 11:48:32', 'Initial Version', 1, 0, 1, NULL, 2, 2, NULL),
(126, 1, 'Drafts', '!drafts', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(127, 1, 'Trash', '!trash', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(128, 1, 'Stacks', '!stacks', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(129, 1, 'Login', 'login', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(130, 1, 'Register', 'register', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(131, 1, 'My Account', 'account', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(132, 1, 'Edit Profile', 'edit_profile', 'Edit your user profile and change password.', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(133, 1, 'Profile Picture', 'avatar', 'Specify a new image attached to posts or edits.', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(134, 1, 'Messages', 'messages', 'Inbox for site-specific messages.', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(135, 1, 'Inbox', 'inbox', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(136, 1, 'Members', 'members', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(137, 1, 'View Profile', 'profile', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(138, 1, 'Directory', 'directory', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(139, 1, 'Page Not Found', 'page_not_found', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(140, 1, 'Page Forbidden', 'page_forbidden', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(141, 1, 'Download File', 'download_file', '', '2015-05-11 11:48:35', '2015-05-11 11:48:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(142, 1, '', NULL, NULL, '2015-05-11 11:48:36', '2015-05-11 11:48:36', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL),
(143, 1, 'Header Site Title', 'header-site-title', NULL, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(144, 1, 'Header Navigation', 'header-navigation', NULL, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(145, 1, 'Footer Legal', 'footer-legal', NULL, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(146, 1, 'Footer Navigation', 'footer-navigation', NULL, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(147, 1, 'Footer Contact', 'footer-contact', NULL, '2015-05-11 11:49:49', '2015-05-11 11:49:49', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(148, 1, 'Header Search', 'header-search', NULL, '2015-05-11 11:52:29', '2015-05-11 11:52:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(149, 1, 'Footer Site Title', 'footer-site-title', NULL, '2015-05-11 11:52:29', '2015-05-11 11:52:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(150, 1, 'Footer Social', 'footer-social', NULL, '2015-05-11 11:52:29', '2015-05-11 11:52:29', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(151, 1, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-11 14:06:16', 'Initial Version', 0, 0, 1, 1, 2, 10, NULL),
(151, 2, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-12 11:32:59', 'Version 2', 0, 0, 1, 1, 2, 10, NULL),
(151, 3, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-12 17:47:30', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 10, NULL),
(151, 4, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-12 17:47:46', 'Version 4', 0, 0, 1, 1, 2, 10, NULL),
(151, 5, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-12 17:49:13', 'Version 5', 0, 0, 1, 1, 2, 10, NULL),
(151, 6, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-12 17:50:36', 'Version 6', 0, 0, 1, 1, 2, 10, NULL),
(151, 7, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-13 21:24:54', 'Version 7', 0, 0, 1, 1, 2, 10, NULL),
(151, 8, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-13 21:26:11', 'Version 8', 0, 0, 1, 1, 2, 10, NULL),
(151, 9, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-13 21:28:27', 'Version 9', 0, 0, 1, 1, 2, 10, NULL),
(151, 10, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-13 21:29:24', 'Version 10', 0, 0, 1, 1, 2, 10, NULL),
(151, 11, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-13 21:29:43', 'Version 11', 0, 0, 1, 1, 2, 10, NULL),
(151, 12, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-13 21:30:26', 'Version 12', 0, 0, 1, 1, 2, 10, NULL),
(151, 13, 'impact', 'impact', '', '2015-05-11 14:06:16', '2015-05-13 21:31:29', 'Version 13', 1, 0, 1, 1, 2, 10, NULL),
(152, 1, 'oorzaken', 'oorzaken', '', '2015-05-11 15:02:13', '2015-05-11 15:02:13', 'Initial Version', 0, 0, 1, 1, 2, 10, NULL),
(152, 2, 'oorzaken', 'oorzaken', '', '2015-05-11 15:02:13', '2015-05-12 11:31:04', 'Version 2', 0, 0, 1, 1, 2, 10, NULL),
(152, 3, 'oorzaken', 'oorzaken', '', '2015-05-11 15:02:13', '2015-05-12 11:59:25', 'Version 3', 0, 0, 1, 1, 2, 10, NULL),
(152, 4, 'oorzaken', 'oorzaken', '', '2015-05-11 15:02:13', '2015-05-12 12:01:21', 'Version 4', 1, 0, 1, 1, 2, 10, NULL),
(153, 1, 'Realisaties', 'realisaties', '', '2015-05-11 15:02:26', '2015-05-11 15:02:26', 'Initial Version', 0, 0, 1, 1, 2, 8, NULL),
(153, 2, 'Realisaties', 'realisaties', '', '2015-05-11 15:02:26', '2015-05-11 16:04:10', 'Version 2', 0, 0, 1, 1, 2, 8, NULL),
(153, 3, 'Realisaties', 'realisaties', '', '2015-05-11 15:02:26', '2015-05-11 16:05:49', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 8, NULL),
(153, 4, 'Realisaties', 'realisaties', '', '2015-05-11 15:02:26', '2015-05-12 18:00:48', 'Version 4', 0, 0, 1, 1, 2, 8, NULL),
(153, 5, 'Realisaties', 'realisaties', '', '2015-05-11 15:02:26', '2015-05-12 18:06:32', 'Version 5', 0, 0, 1, 1, 2, 8, NULL),
(153, 6, 'Realisaties', 'realisaties', '', '2015-05-11 15:02:26', '2015-05-12 18:07:45', 'Version 6', 0, 0, 1, 1, 2, 8, NULL),
(153, 7, 'Realisaties', 'realisaties', '', '2015-05-11 15:02:26', '2015-05-12 18:31:26', 'Version 7', 1, 0, 1, 1, 2, 8, NULL),
(154, 1, '', '', NULL, '2015-05-11 15:02:59', '2015-05-11 15:02:59', 'Version 1', 0, 0, 1, NULL, 2, 5, NULL),
(154, 2, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-11 17:52:28', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 9, NULL),
(154, 3, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-11 17:54:13', 'Version 3', 0, 0, 1, 1, 2, 9, NULL),
(154, 4, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 18:24:20', 'Version 4', 0, 0, 1, 1, 2, 9, NULL),
(154, 5, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 18:34:01', 'Nieuwe Versie 5', 0, 0, 1, 1, 2, 9, NULL),
(154, 6, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 18:36:50', 'Version 6', 0, 0, 1, 1, 2, 9, NULL),
(154, 7, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 18:39:35', 'Version 7', 0, 0, 1, 1, 2, 9, NULL),
(154, 8, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 18:50:20', 'Nieuwe Versie 8', 0, 0, 1, 1, 2, 9, NULL),
(154, 9, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 18:51:19', 'Version 9', 0, 0, 1, 1, 2, 9, NULL),
(154, 10, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 18:54:04', 'Version 10', 0, 0, 1, 1, 2, 9, NULL),
(154, 11, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 18:55:32', 'Version 11', 0, 0, 1, 1, 2, 9, NULL),
(154, 12, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 18:56:51', 'Version 12', 0, 0, 1, 1, 2, 9, NULL),
(154, 13, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 19:04:38', 'Nieuwe Versie 13', 0, 0, 1, 1, 2, 9, NULL),
(154, 14, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 19:08:06', 'Version 14', 0, 0, 1, 1, 2, 9, NULL),
(154, 15, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 19:09:54', 'Version 15', 0, 0, 1, 1, 2, 9, NULL),
(154, 16, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 19:19:32', 'Version 16', 0, 0, 1, 1, 2, 9, NULL),
(154, 17, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 19:25:12', 'Version 17', 0, 0, 1, 1, 2, 9, NULL),
(154, 18, 'Isolatie', 'isolatie', '', '2015-05-11 15:02:59', '2015-05-12 19:26:03', 'Version 18', 1, 0, 1, 1, 2, 9, NULL),
(155, 1, 'Contact', 'contact', '', '2015-05-11 15:03:38', '2015-05-11 15:03:38', 'Initial Version', 0, 0, 1, 1, 2, 6, NULL),
(155, 2, 'Contact', 'contact', '', '2015-05-11 15:03:38', '2015-05-11 15:09:08', 'Version 2', 0, 0, 1, 1, 2, 6, NULL),
(155, 3, 'Contact', 'contact', '', '2015-05-11 15:03:38', '2015-05-11 15:24:27', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 6, NULL),
(155, 4, 'Contact', 'contact', '', '2015-05-11 15:03:38', '2015-05-12 21:00:22', 'Version 4', 0, 0, 1, 1, 2, 6, NULL),
(155, 5, 'Contact', 'contact', '', '2015-05-11 15:03:38', '2015-05-12 21:05:15', 'Version 5', 0, 0, 1, 1, 2, 6, NULL),
(155, 6, 'Contact', 'contact', '', '2015-05-11 15:03:38', '2015-05-12 21:05:34', 'Version 6', 0, 0, 1, 1, 2, 6, NULL),
(155, 7, 'Contact', 'contact', '', '2015-05-11 15:03:38', '2015-05-12 21:05:55', 'Version 7', 0, 0, 1, 1, 2, 6, NULL),
(155, 8, 'Contact', 'contact', '', '2015-05-11 15:03:38', '2015-05-12 21:06:21', 'Version 8', 0, 0, 1, 1, 2, 6, NULL),
(155, 9, 'Contact', 'contact', '', '2015-05-11 15:03:38', '2015-05-12 21:06:52', 'Version 9', 1, 0, 1, 1, 2, 6, NULL),
(156, 1, '', NULL, NULL, '2015-05-11 15:04:24', '2015-05-11 15:04:24', 'Initial Version', 1, 0, NULL, NULL, 0, 6, NULL),
(157, 1, 'Over ons', 'over-ons', '', '2015-05-11 15:31:05', '2015-05-11 15:31:05', 'Initial Version', 0, 0, 1, 1, 2, 7, NULL),
(157, 2, 'Over ons', 'over-ons', '', '2015-05-11 15:31:05', '2015-05-11 15:33:06', 'Version 2', 0, 0, 1, 1, 2, 7, NULL),
(157, 3, 'Over ons', 'over-ons', '', '2015-05-11 15:31:05', '2015-05-11 15:43:08', 'Version 3', 0, 0, 1, 1, 2, 7, NULL),
(157, 4, 'Over ons', 'over-ons', '', '2015-05-11 15:31:05', '2015-05-12 20:36:00', 'Version 4', 0, 0, 1, 1, 2, 7, NULL),
(157, 5, 'Over ons', 'over-ons', '', '2015-05-11 15:31:05', '2015-05-12 20:38:26', 'Version 5', 0, 0, 1, 1, 2, 7, NULL),
(157, 6, 'Over ons', 'over-ons', '', '2015-05-11 15:31:05', '2015-05-12 20:39:15', 'Version 6', 0, 0, 1, 1, 2, 7, NULL),
(157, 7, 'Over ons', 'over-ons', '', '2015-05-11 15:31:05', '2015-05-12 20:41:31', 'Version 7', 0, 0, 1, 1, 2, 7, NULL),
(157, 8, 'Over ons', 'over-ons', '', '2015-05-11 15:31:05', '2015-05-12 20:42:25', 'Version 8', 1, 0, 1, 1, 2, 7, NULL),
(158, 1, '', NULL, NULL, '2015-05-11 15:31:21', '2015-05-11 15:31:21', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL),
(159, 1, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-11 16:00:15', 'Initial Version', 0, 0, 1, 1, 2, 8, NULL),
(159, 2, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-11 16:02:40', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 8, NULL),
(159, 3, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-12 11:23:04', 'Version 3', 0, 0, 1, 1, 2, 8, NULL),
(159, 4, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-12 11:26:19', 'Nieuwe Versie 4', 0, 0, 1, 1, 2, 8, NULL),
(159, 5, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-12 11:33:33', 'Version 5', 0, 0, 1, 1, 2, 8, NULL),
(159, 6, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-12 11:35:48', 'Nieuwe Versie 6', 0, 0, 1, 1, 2, 8, NULL),
(159, 7, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-12 11:38:17', 'Version 7', 0, 0, 1, 1, 2, 8, NULL),
(159, 8, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-12 11:39:45', 'Version 8', 0, 0, 1, 1, 2, 8, NULL),
(159, 9, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-12 18:29:37', 'Version 9', 0, 0, 1, 1, 2, 8, NULL),
(159, 10, 'Vochtproblemen', 'vochtproblemen', '', '2015-05-11 16:00:15', '2015-05-13 21:22:18', 'Version 10', 1, 0, 1, 1, 2, 8, NULL),
(160, 1, '', NULL, NULL, '2015-05-11 16:00:42', '2015-05-11 16:00:42', 'Initial Version', 1, 0, NULL, NULL, 0, 8, NULL),
(161, 1, '', NULL, NULL, '2015-05-11 17:53:03', '2015-05-11 17:53:03', 'Initial Version', 1, 0, NULL, NULL, 0, 9, NULL),
(162, 1, '', NULL, NULL, '2015-05-12 11:29:28', '2015-05-12 11:29:28', 'Initial Version', 1, 0, NULL, NULL, 0, 10, NULL),
(163, 1, 'oplossing', 'oplossing', '', '2015-05-12 11:31:46', '2015-05-12 11:31:46', 'Initial Version', 0, 0, 1, 1, 2, 10, NULL),
(163, 2, 'oplossing', 'oplossing', '', '2015-05-12 11:31:46', '2015-05-12 11:32:22', 'Version 2', 0, 0, 1, 1, 2, 10, NULL),
(163, 3, 'oplossing', 'oplossing', '', '2015-05-12 11:31:46', '2015-05-12 17:55:41', 'Nieuwe Versie 3', 1, 0, 1, 1, 2, 10, NULL),
(164, 1, 'Vochtinjecties', 'vochtinjecties', '', '2015-05-12 18:04:53', '2015-05-12 18:04:53', 'Initial Version', 0, 0, 1, 1, 2, 9, NULL),
(164, 2, 'Vochtinjecties', 'vochtinjecties', '', '2015-05-12 18:04:53', '2015-05-12 19:17:00', 'Version 2', 0, 0, 1, 1, 2, 9, NULL),
(164, 3, 'Vochtinjecties', 'vochtinjecties', '', '2015-05-12 18:04:53', '2015-05-12 19:17:53', 'Version 3', 0, 0, 1, 1, 2, 9, NULL),
(164, 4, 'Vochtinjecties', 'vochtinjecties', '', '2015-05-12 18:04:53', '2015-05-12 19:19:05', 'Version 4', 0, 0, 1, 1, 2, 9, NULL),
(164, 5, 'Vochtinjecties', 'vochtinjecties', '', '2015-05-12 18:04:53', '2015-05-12 19:29:06', 'Version 5', 1, 0, 1, 1, 2, 9, NULL),
(165, 1, 'kelderrenovaties', 'kelderrenovaties', '', '2015-05-12 18:05:41', '2015-05-12 18:05:41', 'Initial Version', 0, 0, 1, 1, 2, 9, NULL),
(165, 2, 'kelderrenovaties', 'kelderrenovaties', '', '2015-05-12 18:05:41', '2015-05-12 19:20:18', 'Version 2', 0, 0, 1, 1, 2, 9, NULL),
(165, 3, 'kelderrenovaties', 'kelderrenovaties', '', '2015-05-12 18:05:41', '2015-05-12 19:31:19', 'Version 3', 1, 0, 1, 1, 2, 9, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `CollectionVersionThemeCustomStyles`
--

CREATE TABLE IF NOT EXISTS `CollectionVersionThemeCustomStyles` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `cvID` int(10) unsigned NOT NULL DEFAULT '1',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Config`
--

CREATE TABLE IF NOT EXISTS `Config` (
  `configNamespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Config`
--

INSERT INTO `Config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
('', 'concrete', 'security.token.encryption', 'qPGKtYRCA9OWF3hnCj0PkC5yT3jecXjGEp94wY1Czst12QV0g4TzButDK5CXF9V6'),
('', 'concrete', 'security.token.jobs', 'E8GHFTSyiHCyerRPHPEuts1lsSFU9Ques4JPhkhRHRxOq1GYqCqRtQi7GBS7n3uk'),
('', 'concrete', 'security.token.validation', 'SYiWp4U31NpneADekRIbY15cLSOQsieNhyWOZ60eNegQiTXmZapah3EFJk0GS79o');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConfigStore`
--

CREATE TABLE IF NOT EXISTS `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ConfigStore`
--

INSERT INTO `ConfigStore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('DISABLED_HELP_NOTIFICATIONS', '2015-05-11 10:00:40', 'all', 1, 0),
('NEWSFLOW_LAST_VIEWED', '2015-05-11 09:48:36', '1431544890', 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationDiscussions`
--

CREATE TABLE IF NOT EXISTS `ConversationDiscussions` (
`cnvDiscussionID` int(10) unsigned NOT NULL,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationEditors`
--

CREATE TABLE IF NOT EXISTS `ConversationEditors` (
`cnvEditorID` int(10) unsigned NOT NULL,
  `cnvEditorHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `ConversationEditors`
--

INSERT INTO `ConversationEditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1, 'plain_text', 'Plain Text', 0, 0),
(2, 'markdown', 'Markdown', 0, 0),
(3, 'redactor', 'Redactor', 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationFeatureDetailAssignments`
--

CREATE TABLE IF NOT EXISTS `ConversationFeatureDetailAssignments` (
  `faID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationFlaggedMessages`
--

CREATE TABLE IF NOT EXISTS `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationFlaggedMessageTypes`
--

CREATE TABLE IF NOT EXISTS `ConversationFlaggedMessageTypes` (
`cnvMessageFlagTypeID` int(10) unsigned NOT NULL,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `ConversationFlaggedMessageTypes`
--

INSERT INTO `ConversationFlaggedMessageTypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
(1, 'spam');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationMessageAttachments`
--

CREATE TABLE IF NOT EXISTS `ConversationMessageAttachments` (
`cnvMessageAttachmentID` int(10) unsigned NOT NULL,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationMessageRatings`
--

CREATE TABLE IF NOT EXISTS `ConversationMessageRatings` (
`cnvMessageRatingID` int(10) unsigned NOT NULL,
  `cnvMessageID` int(10) unsigned DEFAULT NULL,
  `cnvRatingTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationMessages`
--

CREATE TABLE IF NOT EXISTS `ConversationMessages` (
`cnvMessageID` int(10) unsigned NOT NULL,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8_unicode_ci,
  `cnvMessageLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8_unicode_ci,
  `cnvMessageBody` text COLLATE utf8_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `ConversationPermissionAssignments` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ConversationPermissionAssignments`
--

INSERT INTO `ConversationPermissionAssignments` (`cnvID`, `pkID`, `paID`) VALUES
(0, 66, 65),
(0, 67, 66),
(0, 70, 67),
(0, 69, 68),
(0, 71, 69),
(0, 68, 70),
(0, 72, 71),
(0, 73, 72);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationRatingTypes`
--

CREATE TABLE IF NOT EXISTS `ConversationRatingTypes` (
`cnvRatingTypeID` int(10) unsigned NOT NULL,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `ConversationRatingTypes`
--

INSERT INTO `ConversationRatingTypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
(1, 'up_vote', 'Up Vote', 1, 0),
(2, 'down_vote', 'Down Vote', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Conversations`
--

CREATE TABLE IF NOT EXISTS `Conversations` (
`cnvID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) unsigned DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) unsigned DEFAULT '0',
  `cnvOverrideGlobalPermissions` smallint(5) unsigned DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `DownloadStatistics`
--

CREATE TABLE IF NOT EXISTS `DownloadStatistics` (
`dsID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  `fvID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned NOT NULL,
  `rcID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FeatureAssignments`
--

CREATE TABLE IF NOT EXISTS `FeatureAssignments` (
`faID` int(10) unsigned NOT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=79 ;

--
-- Gegevens worden geëxporteerd voor tabel `FeatureAssignments`
--

INSERT INTO `FeatureAssignments` (`faID`, `feID`, `fcID`, `fdObject`) VALUES
(1, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:79:"/Examen/Frontend_2/concrete/application/files/2614/3134/4372/vochtproblemen.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1737;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(2, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:76:"/Examen/Frontend_2/concrete/application/files/2614/3134/5791/realisaties.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1737;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(5, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1214/3134/6136/over_ons.jpg";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:1488;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(6, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:79:"/Examen/Frontend_2/concrete/application/files/2614/3134/4372/vochtproblemen.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1737;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(8, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:79:"/Examen/Frontend_2/concrete/application/files/2614/3134/4372/vochtproblemen.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1737;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(9, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/3714/3136/0367/carousel1.png";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(10, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/7714/3141/5760/carousel2.jpg";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(11, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/4114/3141/7284/carousel3.jpg";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(12, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/4114/3141/7284/carousel3.jpg";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(14, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/3714/3136/0367/carousel1.png";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(15, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/3714/3136/0367/carousel1.png";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(16, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/3714/3136/0367/carousel1.png";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(17, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/4114/3141/7284/carousel3.jpg";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(18, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/4114/3141/7284/carousel3.jpg";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(19, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/7714/3141/5760/carousel2.jpg";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(20, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/4114/3141/7284/carousel3.jpg";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(21, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:78:"/Examen/Frontend_2/concrete/application/files/6514/3142/2819/vochtprobleem.jpg";s:8:"\0*\0width";d:400;s:9:"\0*\0height";d:213;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(22, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:78:"/Examen/Frontend_2/concrete/application/files/1814/3142/3403/vochtprobleem.jpg";s:8:"\0*\0width";d:400;s:9:"\0*\0height";d:213;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(23, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:78:"/Examen/Frontend_2/concrete/application/files/1814/3142/3403/vochtprobleem.jpg";s:8:"\0*\0width";d:400;s:9:"\0*\0height";d:213;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(24, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/2014/3142/4804/oorzaak2.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1485;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(25, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(26, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(28, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(29, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(30, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/2014/3142/4804/oorzaak2.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1485;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(31, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(32, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(33, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/2014/3142/4804/oorzaak2.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1485;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(34, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(35, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(36, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:78:"/Examen/Frontend_2/concrete/application/files/1814/3142/3403/vochtprobleem.jpg";s:8:"\0*\0width";d:400;s:9:"\0*\0height";d:213;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(37, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:78:"/Examen/Frontend_2/concrete/application/files/1814/3142/3403/vochtprobleem.jpg";s:8:"\0*\0width";d:400;s:9:"\0*\0height";d:213;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(38, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:78:"/Examen/Frontend_2/concrete/application/files/1814/3142/3403/vochtprobleem.jpg";s:8:"\0*\0width";d:400;s:9:"\0*\0height";d:213;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(39, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(40, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(41, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(42, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(43, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(44, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(45, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:83:"/Examen/Frontend_2/concrete/application/files/8914/3144/9474/opstijgend-vocht_1.jpg";s:8:"\0*\0width";d:1350;s:9:"\0*\0height";d:351;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(46, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:83:"/Examen/Frontend_2/concrete/application/files/8914/3144/9474/opstijgend-vocht_1.jpg";s:8:"\0*\0width";d:1350;s:9:"\0*\0height";d:351;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(47, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(48, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:73:"/Examen/Frontend_2/concrete/application/files/1914/3142/4874/oorzaak3.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1631;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(49, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(50, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/2614/3145/0552/4.JPG";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(51, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/5614/3145/0508/2.JPG";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(52, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/6214/3145/0406/1.jpg";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(53, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/5614/3145/0508/2.JPG";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(54, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/9314/3145/0531/3.JPG";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(55, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/2614/3145/0552/4.JPG";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(56, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/6214/3145/0406/1.jpg";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(57, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/5614/3145/0508/2.JPG";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(58, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/9314/3145/0531/3.JPG";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(59, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:66:"/Examen/Frontend_2/concrete/application/files/2614/3145/0552/4.JPG";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:2112;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(60, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(61, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(62, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(63, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/8314/3145/5801/carousel2.jpg";s:8:"\0*\0width";d:1915;s:9:"\0*\0height";d:629;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(64, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/3114/3145/5834/carousel1.jpg";s:8:"\0*\0width";d:3264;s:9:"\0*\0height";d:1073;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(65, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/9114/3145/5862/carousel3.jpg";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:926;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(66, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(67, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(68, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/9114/3145/5862/carousel3.jpg";s:8:"\0*\0width";d:2816;s:9:"\0*\0height";d:926;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(69, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(70, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(71, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/5314/3145/6465/carousel1.png";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(72, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/5314/3145/6465/carousel1.png";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(73, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(74, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(75, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/7814/3145/6742/carousel1.png";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(76, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(77, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";N;s:8:"\0*\0width";N;s:9:"\0*\0height";N;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(78, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:74:"/Examen/Frontend_2/concrete/application/files/7814/3145/6742/carousel1.png";s:8:"\0*\0width";d:1500;s:9:"\0*\0height";d:481;s:7:"\0*\0item";N;s:5:"error";s:0:"";}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FeatureCategories`
--

CREATE TABLE IF NOT EXISTS `FeatureCategories` (
`fcID` int(10) unsigned NOT NULL,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `FeatureCategories`
--

INSERT INTO `FeatureCategories` (`fcID`, `fcHandle`, `pkgID`) VALUES
(1, 'collection_version', 0),
(2, 'gathering_item', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Features`
--

CREATE TABLE IF NOT EXISTS `Features` (
`feID` int(10) unsigned NOT NULL,
  `feHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Gegevens worden geëxporteerd voor tabel `Features`
--

INSERT INTO `Features` (`feID`, `feHandle`, `feScore`, `feHasCustomClass`, `pkgID`) VALUES
(1, 'title', 1, 0, 0),
(2, 'link', 1, 0, 0),
(3, 'author', 1, 0, 0),
(4, 'date_time', 1, 0, 0),
(5, 'image', 500, 1, 0),
(6, 'conversation', 10, 1, 0),
(7, 'description', 1, 0, 0),
(8, 'featured', 1000, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileAttributeValues`
--

CREATE TABLE IF NOT EXISTS `FileAttributeValues` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `FileAttributeValues`
--

INSERT INTO `FileAttributeValues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 14, 112),
(1, 1, 15, 113),
(2, 1, 14, 114),
(2, 1, 15, 115),
(3, 1, 14, 116),
(3, 1, 15, 117),
(4, 1, 14, 118),
(4, 1, 15, 119),
(5, 1, 14, 120),
(5, 1, 15, 121),
(5, 2, 14, 127),
(5, 2, 15, 128),
(5, 3, 14, 129),
(5, 3, 15, 130),
(6, 1, 14, 131),
(6, 1, 15, 132),
(7, 1, 14, 133),
(7, 1, 15, 134),
(8, 1, 14, 135),
(8, 1, 15, 136),
(9, 1, 14, 137),
(9, 1, 15, 138),
(10, 1, 14, 139),
(10, 1, 15, 140),
(11, 1, 14, 141),
(11, 1, 15, 142),
(12, 1, 14, 143),
(12, 1, 15, 144),
(13, 1, 14, 145),
(13, 1, 15, 146),
(14, 1, 14, 147),
(14, 1, 15, 148),
(15, 1, 14, 149),
(15, 1, 15, 150),
(16, 1, 14, 151),
(16, 1, 15, 152),
(17, 1, 14, 153),
(17, 1, 15, 154),
(18, 1, 14, 155),
(18, 1, 15, 156),
(19, 1, 14, 157),
(19, 1, 15, 158),
(20, 1, 14, 159),
(20, 1, 15, 160),
(21, 1, 14, 161),
(21, 1, 15, 162),
(22, 1, 14, 163),
(22, 1, 15, 164),
(23, 1, 14, 165),
(23, 1, 15, 166),
(24, 1, 14, 167),
(24, 1, 15, 168),
(25, 1, 14, 169),
(25, 1, 15, 170),
(26, 1, 14, 171),
(26, 1, 15, 172),
(27, 1, 14, 173),
(27, 1, 15, 174),
(28, 1, 14, 175),
(28, 1, 15, 176),
(22, 2, 14, 177),
(22, 2, 15, 178),
(22, 3, 14, 179),
(22, 3, 15, 180),
(22, 4, 14, 181),
(22, 4, 15, 182),
(29, 1, 14, 183),
(29, 1, 15, 184),
(30, 1, 14, 185),
(30, 1, 15, 186),
(31, 1, 14, 187),
(31, 1, 15, 188),
(32, 1, 14, 189),
(32, 1, 15, 190),
(33, 1, 14, 191),
(33, 1, 15, 192),
(34, 1, 14, 193),
(34, 1, 15, 194),
(35, 1, 14, 195),
(35, 1, 15, 196),
(36, 1, 14, 197),
(36, 1, 15, 198),
(37, 1, 14, 199),
(37, 1, 15, 200),
(38, 1, 14, 201),
(38, 1, 15, 202),
(39, 1, 14, 203),
(39, 1, 15, 204),
(38, 2, 14, 205),
(38, 2, 15, 206),
(40, 1, 14, 207),
(40, 1, 15, 208),
(41, 1, 14, 209),
(41, 1, 15, 210),
(42, 1, 14, 211),
(42, 1, 15, 212),
(43, 1, 14, 213),
(43, 1, 15, 214);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileImageThumbnailTypes`
--

CREATE TABLE IF NOT EXISTS `FileImageThumbnailTypes` (
`ftTypeID` int(10) unsigned NOT NULL,
  `ftTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ftTypeWidth` int(11) NOT NULL DEFAULT '0',
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `FileImageThumbnailTypes`
--

INSERT INTO `FileImageThumbnailTypes` (`ftTypeID`, `ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`) VALUES
(1, 'file_manager_listing', 'File Manager Thumbnails', 60, 60, 1),
(2, 'file_manager_detail', 'File Manager Detail Thumbnails', 400, NULL, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FilePermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `FilePermissionAssignments` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FilePermissionFileTypes`
--

CREATE TABLE IF NOT EXISTS `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Files`
--

CREATE TABLE IF NOT EXISTS `Files` (
`fID` int(10) unsigned NOT NULL,
  `fDateAdded` datetime DEFAULT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fslID` int(10) unsigned NOT NULL DEFAULT '0',
  `ocID` int(10) unsigned NOT NULL DEFAULT '0',
  `fOverrideSetPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `fPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Gegevens worden geëxporteerd voor tabel `Files`
--

INSERT INTO `Files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1, '2015-05-11 13:39:32', 1, 1, 0, 0, NULL),
(2, '2015-05-11 13:50:57', 1, 1, 0, 0, NULL),
(3, '2015-05-11 13:59:55', 1, 1, 0, 0, NULL),
(4, '2015-05-11 14:03:11', 1, 1, 0, 0, NULL),
(5, '2015-05-11 14:08:56', 1, 1, 0, 0, NULL),
(9, '2015-05-12 11:26:59', 1, 1, 0, 0, NULL),
(11, '2015-05-12 12:00:04', 1, 1, 0, 0, NULL),
(12, '2015-05-12 12:01:14', 1, 1, 0, 0, NULL),
(13, '2015-05-12 18:20:12', 1, 1, 0, 0, NULL),
(14, '2015-05-12 18:21:10', 1, 1, 0, 0, NULL),
(15, '2015-05-12 18:21:29', 1, 1, 0, 0, NULL),
(16, '2015-05-12 18:21:49', 1, 1, 0, 0, NULL),
(17, '2015-05-12 18:22:29', 1, 1, 0, 0, NULL),
(18, '2015-05-12 18:23:13', 1, 1, 0, 0, NULL),
(19, '2015-05-12 18:23:33', 1, 1, 0, 0, NULL),
(20, '2015-05-12 18:50:41', 1, 1, 0, 0, NULL),
(21, '2015-05-12 18:50:59', 1, 1, 0, 0, NULL),
(23, '2015-05-12 19:02:18', 1, 1, 0, 0, NULL),
(24, '2015-05-12 19:02:37', 1, 1, 0, 0, NULL),
(25, '2015-05-12 19:02:58', 1, 1, 0, 0, NULL),
(26, '2015-05-12 19:03:22', 1, 1, 0, 0, NULL),
(27, '2015-05-12 19:03:53', 1, 1, 0, 0, NULL),
(28, '2015-05-12 19:04:28', 1, 1, 0, 0, NULL),
(29, '2015-05-12 19:05:59', 1, 1, 0, 0, NULL),
(31, '2015-05-12 19:08:28', 1, 1, 0, 0, NULL),
(32, '2015-05-12 19:08:51', 1, 1, 0, 0, NULL),
(33, '2015-05-12 19:09:12', 1, 1, 0, 0, NULL),
(34, '2015-05-12 19:25:27', 1, 1, 0, 0, NULL),
(35, '2015-05-12 20:36:41', 1, 1, 0, 0, NULL),
(36, '2015-05-12 20:37:14', 1, 1, 0, 0, NULL),
(37, '2015-05-12 20:37:42', 1, 1, 0, 0, NULL),
(41, '2015-05-12 20:52:22', 1, 1, 0, 0, NULL),
(42, '2015-05-12 20:53:12', 1, 1, 0, 0, NULL),
(43, '2015-05-12 20:53:56', 1, 1, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileSearchIndexAttributes`
--

CREATE TABLE IF NOT EXISTS `FileSearchIndexAttributes` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `FileSearchIndexAttributes`
--

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1, '3264.0000', '1737.0000', '0.0000'),
(2, '3264.0000', '1737.0000', '0.0000'),
(3, '3264.0000', '1737.0000', '0.0000'),
(4, '3264.0000', '1737.0000', '0.0000'),
(5, '2818.0000', '1490.0000', '0.0000'),
(6, '1500.0000', '481.0000', '0.0000'),
(7, '1500.0000', '481.0000', '0.0000'),
(8, '1500.0000', '481.0000', '0.0000'),
(9, '400.0000', '213.0000', '0.0000'),
(10, '400.0000', '213.0000', '0.0000'),
(11, '3264.0000', '1485.0000', '0.0000'),
(12, '3264.0000', '1631.0000', '0.0000'),
(13, '2816.0000', '2112.0000', '0.0000'),
(14, '2816.0000', '2112.0000', '0.0000'),
(15, '2816.0000', '2112.0000', '0.0000'),
(16, '2816.0000', '2112.0000', '0.0000'),
(17, '2816.0000', '2112.0000', '0.0000'),
(18, '2816.0000', '2112.0000', '0.0000'),
(19, '2816.0000', '2112.0000', '0.0000'),
(20, '2816.0000', '2112.0000', '0.0000'),
(21, '2816.0000', '2112.0000', '0.0000'),
(22, '3264.0000', '1631.0000', '0.0000'),
(23, '3264.0000', '2448.0000', '0.0000'),
(24, '3264.0000', '2448.0000', '0.0000'),
(25, '3264.0000', '2448.0000', '0.0000'),
(26, '3264.0000', '2448.0000', '0.0000'),
(27, '3264.0000', '2448.0000', '0.0000'),
(28, '3264.0000', '2448.0000', '0.0000'),
(29, '3264.0000', '2448.0000', '0.0000'),
(30, '2816.0000', '2112.0000', '0.0000'),
(31, '2816.0000', '2112.0000', '0.0000'),
(32, '2816.0000', '2112.0000', '0.0000'),
(33, '2816.0000', '2112.0000', '0.0000'),
(34, '2816.0000', '2112.0000', '0.0000'),
(35, '1915.0000', '629.0000', '0.0000'),
(36, '3264.0000', '1073.0000', '0.0000'),
(37, '2816.0000', '926.0000', '0.0000'),
(38, '1500.0000', '481.0000', '0.0000'),
(39, '1500.0000', '481.0000', '0.0000'),
(40, '1500.0000', '481.0000', '0.0000'),
(41, '1500.0000', '481.0000', '0.0000'),
(42, '1500.0000', '481.0000', '0.0000'),
(43, '1500.0000', '481.0000', '0.0000');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileSetFiles`
--

CREATE TABLE IF NOT EXISTS `FileSetFiles` (
`fsfID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL,
  `fsID` int(10) unsigned NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileSetPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `FileSetPermissionAssignments` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `FileSetPermissionAssignments`
--

INSERT INTO `FileSetPermissionAssignments` (`fsID`, `pkID`, `paID`) VALUES
(0, 39, 31),
(0, 40, 32),
(0, 41, 33),
(0, 42, 34),
(0, 43, 35),
(0, 44, 36),
(0, 46, 37),
(0, 45, 38),
(0, 47, 39);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileSetPermissionFileTypeAccessList`
--

CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileSetPermissionFileTypeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `FileSetPermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileSets`
--

CREATE TABLE IF NOT EXISTS `FileSets` (
`fsID` int(10) unsigned NOT NULL,
  `fsName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `FileSets`
--

INSERT INTO `FileSets` (`fsID`, `fsName`, `uID`, `fsType`, `fsOverrideGlobalPermissions`) VALUES
(1, 'Starred Files', 1, 2, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileSetSavedSearches`
--

CREATE TABLE IF NOT EXISTS `FileSetSavedSearches` (
  `fsID` int(10) unsigned NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8_unicode_ci,
  `fsResultColumns` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileStorageLocations`
--

CREATE TABLE IF NOT EXISTS `FileStorageLocations` (
`fslID` int(10) unsigned NOT NULL,
  `fslName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `FileStorageLocations`
--

INSERT INTO `FileStorageLocations` (`fslID`, `fslName`, `fslConfiguration`, `fslIsDefault`) VALUES
(1, 'Default', 'O:69:"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration":1:{s:10:"\0*\0default";b:1;}', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileStorageLocationTypes`
--

CREATE TABLE IF NOT EXISTS `FileStorageLocationTypes` (
`fslTypeID` int(10) unsigned NOT NULL,
  `fslTypeHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fslTypeName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `FileStorageLocationTypes`
--

INSERT INTO `FileStorageLocationTypes` (`fslTypeID`, `fslTypeHandle`, `fslTypeName`, `pkgID`) VALUES
(1, 'default', 'Default', 0),
(2, 'local', 'Local', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileVersionLog`
--

CREATE TABLE IF NOT EXISTS `FileVersionLog` (
`fvlID` int(10) unsigned NOT NULL,
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=105 ;

--
-- Gegevens worden geëxporteerd voor tabel `FileVersionLog`
--

INSERT INTO `FileVersionLog` (`fvlID`, `fID`, `fvID`, `fvUpdateTypeID`, `fvUpdateTypeAttributeID`) VALUES
(1, 1, 1, 5, 14),
(2, 1, 1, 5, 15),
(3, 2, 1, 5, 14),
(4, 2, 1, 5, 15),
(5, 3, 1, 5, 14),
(6, 3, 1, 5, 15),
(7, 4, 1, 5, 14),
(8, 4, 1, 5, 15),
(9, 5, 1, 5, 14),
(10, 5, 1, 5, 15),
(11, 5, 2, 1, 0),
(12, 5, 2, 5, 14),
(13, 5, 2, 5, 15),
(14, 5, 3, 1, 0),
(15, 5, 3, 5, 14),
(16, 5, 3, 5, 15),
(17, 6, 1, 5, 14),
(18, 6, 1, 5, 15),
(19, 7, 1, 5, 14),
(20, 7, 1, 5, 15),
(21, 8, 1, 5, 14),
(22, 8, 1, 5, 15),
(23, 9, 1, 5, 14),
(24, 9, 1, 5, 15),
(25, 10, 1, 5, 14),
(26, 10, 1, 5, 15),
(27, 11, 1, 5, 14),
(28, 11, 1, 5, 15),
(29, 12, 1, 5, 14),
(30, 12, 1, 5, 15),
(31, 13, 1, 5, 14),
(32, 13, 1, 5, 15),
(33, 14, 1, 5, 14),
(34, 14, 1, 5, 15),
(35, 15, 1, 5, 14),
(36, 15, 1, 5, 15),
(37, 16, 1, 5, 14),
(38, 16, 1, 5, 15),
(39, 17, 1, 5, 14),
(40, 17, 1, 5, 15),
(41, 18, 1, 5, 14),
(42, 18, 1, 5, 15),
(43, 19, 1, 5, 14),
(44, 19, 1, 5, 15),
(45, 20, 1, 5, 14),
(46, 20, 1, 5, 15),
(47, 21, 1, 5, 14),
(48, 21, 1, 5, 15),
(49, 22, 1, 5, 14),
(50, 22, 1, 5, 15),
(51, 23, 1, 5, 14),
(52, 23, 1, 5, 15),
(53, 24, 1, 5, 14),
(54, 24, 1, 5, 15),
(55, 25, 1, 5, 14),
(56, 25, 1, 5, 15),
(57, 26, 1, 5, 14),
(58, 26, 1, 5, 15),
(59, 27, 1, 5, 14),
(60, 27, 1, 5, 15),
(61, 28, 1, 5, 14),
(62, 28, 1, 5, 15),
(63, 22, 2, 1, 0),
(64, 22, 2, 5, 14),
(65, 22, 2, 5, 15),
(66, 22, 3, 1, 0),
(67, 22, 3, 5, 14),
(68, 22, 3, 5, 15),
(69, 22, 4, 1, 0),
(70, 22, 4, 5, 14),
(71, 22, 4, 5, 15),
(72, 29, 1, 5, 14),
(73, 29, 1, 5, 15),
(74, 30, 1, 5, 14),
(75, 30, 1, 5, 15),
(76, 31, 1, 5, 14),
(77, 31, 1, 5, 15),
(78, 32, 1, 5, 14),
(79, 32, 1, 5, 15),
(80, 33, 1, 5, 14),
(81, 33, 1, 5, 15),
(82, 34, 1, 5, 14),
(83, 34, 1, 5, 15),
(84, 35, 1, 5, 14),
(85, 35, 1, 5, 15),
(86, 36, 1, 5, 14),
(87, 36, 1, 5, 15),
(88, 37, 1, 5, 14),
(89, 37, 1, 5, 15),
(90, 38, 1, 5, 14),
(91, 38, 1, 5, 15),
(92, 39, 1, 5, 14),
(93, 39, 1, 5, 15),
(94, 38, 2, 1, 0),
(95, 38, 2, 5, 14),
(96, 38, 2, 5, 15),
(97, 40, 1, 5, 14),
(98, 40, 1, 5, 15),
(99, 41, 1, 5, 14),
(100, 41, 1, 5, 15),
(101, 42, 1, 5, 14),
(102, 42, 1, 5, 15),
(103, 43, 1, 5, 14),
(104, 43, 1, 5, 15);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FileVersions`
--

CREATE TABLE IF NOT EXISTS `FileVersions` (
  `fID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvFilename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fvPrefix` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvGenericType` smallint(5) unsigned NOT NULL DEFAULT '0',
  `fvSize` int(10) unsigned NOT NULL DEFAULT '0',
  `fvTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvDescription` text COLLATE utf8_unicode_ci,
  `fvTags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvIsApproved` int(10) unsigned NOT NULL DEFAULT '1',
  `fvDateAdded` datetime DEFAULT NULL,
  `fvApproverUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvAuthorUID` int(10) unsigned NOT NULL DEFAULT '0',
  `fvActivateDatetime` datetime DEFAULT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvHasDetailThumbnail` tinyint(1) NOT NULL DEFAULT '0',
  `fvExtension` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fvType` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `FileVersions`
--

INSERT INTO `FileVersions` (`fID`, `fvID`, `fvFilename`, `fvPrefix`, `fvGenericType`, `fvSize`, `fvTitle`, `fvDescription`, `fvTags`, `fvIsApproved`, `fvDateAdded`, `fvApproverUID`, `fvAuthorUID`, `fvActivateDatetime`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fvExtension`, `fvType`) VALUES
(1, 1, 'vochtproblemen.jpg', '261431344372', 0, 350436, 'vochtproblemen.jpg', NULL, '', 1, '2015-05-11 13:39:32', 1, 1, '2015-05-11 13:39:32', 1, 1, 'jpg', 1),
(2, 1, 'realisaties.jpg', '821431345057', 0, 0, 'realisaties.jpg', NULL, '', 1, '2015-05-11 13:50:57', 1, 1, '2015-05-11 13:50:57', 0, 0, NULL, 0),
(3, 1, 'realisaties.jpg', '421431345595', 0, 0, 'realisaties.jpg', NULL, '', 1, '2015-05-11 13:59:55', 1, 1, '2015-05-11 13:59:55', 0, 0, NULL, 0),
(4, 1, 'realisaties.jpg', '261431345791', 0, 393742, 'realisaties.jpg', NULL, '', 1, '2015-05-11 14:03:11', 1, 1, '2015-05-11 14:03:11', 1, 1, 'jpg', 1),
(5, 1, 'over_ons.jpg', '121431346136', 0, 589183, 'over_ons.jpg', NULL, '', 0, '2015-05-11 14:08:56', 1, 1, '2015-05-11 14:08:56', 1, 1, 'jpg', 1),
(5, 2, 'over_ons.jpg', '531431353343', 0, 589183, 'over_ons.jpg', NULL, '', 0, '2015-05-11 14:08:56', 1, 1, '2015-05-11 14:08:56', 1, 1, 'jpg', 1),
(5, 3, 'over_ons.jpg', '661431353378', 0, 589183, 'over_ons.jpg', NULL, '', 1, '2015-05-11 14:08:56', 1, 1, '2015-05-11 14:08:56', 1, 1, 'jpg', 1),
(9, 1, 'vochtprobleem.jpg', '651431422819', 0, 30952, 'vochtprobleem.jpg', NULL, '', 1, '2015-05-12 11:26:59', 1, 1, '2015-05-12 11:26:59', 1, 0, 'jpg', 1),
(11, 1, 'oorzaak2.jpg', '201431424804', 0, 415695, 'oorzaak2.jpg', NULL, '', 1, '2015-05-12 12:00:04', 1, 1, '2015-05-12 12:00:04', 1, 1, 'jpg', 1),
(12, 1, 'oorzaak3.jpg', '191431424874', 0, 1354245, 'oorzaak3.jpg', NULL, '', 1, '2015-05-12 12:01:14', 1, 1, '2015-05-12 12:01:14', 1, 1, 'jpg', 1),
(13, 1, '1.JPG', '801431447612', 0, 0, '1.JPG', NULL, '', 1, '2015-05-12 18:20:12', 1, 1, '2015-05-12 18:20:12', 0, 0, NULL, 0),
(14, 1, '1.JPG', '811431447670', 0, 0, '1.JPG', NULL, '', 1, '2015-05-12 18:21:10', 1, 1, '2015-05-12 18:21:10', 0, 0, NULL, 0),
(15, 1, '1.JPG', '931431447689', 0, 0, '1.JPG', NULL, '', 1, '2015-05-12 18:21:29', 1, 1, '2015-05-12 18:21:29', 0, 0, NULL, 0),
(16, 1, '3.JPG', '661431447709', 0, 0, '3.JPG', NULL, '', 1, '2015-05-12 18:21:49', 1, 1, '2015-05-12 18:21:49', 0, 0, NULL, 0),
(17, 1, '1.jpg', '491431447749', 0, 0, '1.jpg', NULL, '', 1, '2015-05-12 18:22:29', 1, 1, '2015-05-12 18:22:29', 0, 0, NULL, 0),
(18, 1, '1.jpg', '951431447793', 0, 0, '1.jpg', NULL, '', 1, '2015-05-12 18:23:13', 1, 1, '2015-05-12 18:23:13', 0, 0, NULL, 0),
(19, 1, '1.jpg', '841431447813', 0, 0, '1.jpg', NULL, '', 1, '2015-05-12 18:23:33', 1, 1, '2015-05-12 18:23:33', 0, 0, NULL, 0),
(20, 1, '1.jpg', '241431449441', 0, 0, '1.jpg', NULL, '', 1, '2015-05-12 18:50:41', 1, 1, '2015-05-12 18:50:41', 0, 0, NULL, 0),
(21, 1, '3.JPG', '401431449459', 0, 0, '3.JPG', NULL, '', 1, '2015-05-12 18:50:59', 1, 1, '2015-05-12 18:50:59', 0, 0, NULL, 0),
(23, 1, '20141107_153545.jpg', '311431450138', 0, 0, '20141107_153545.jpg', NULL, '', 1, '2015-05-12 19:02:18', 1, 1, '2015-05-12 19:02:18', 0, 0, NULL, 0),
(24, 1, '20141107_153545.jpg', '151431450157', 0, 0, '20141107_153545.jpg', NULL, '', 1, '2015-05-12 19:02:37', 1, 1, '2015-05-12 19:02:37', 0, 0, NULL, 0),
(25, 1, '20141107_153545.jpg', '971431450178', 0, 0, '20141107_153545.jpg', NULL, '', 1, '2015-05-12 19:02:58', 1, 1, '2015-05-12 19:02:58', 0, 0, NULL, 0),
(26, 1, '20141030_141005.jpg', '161431450202', 0, 0, '20141030_141005.jpg', NULL, '', 1, '2015-05-12 19:03:22', 1, 1, '2015-05-12 19:03:22', 0, 0, NULL, 0),
(27, 1, '20150113_160642.jpg', '121431450233', 0, 0, '20150113_160642.jpg', NULL, '', 1, '2015-05-12 19:03:53', 1, 1, '2015-05-12 19:03:53', 0, 0, NULL, 0),
(28, 1, '20141030_141005.jpg', '121431450268', 0, 0, '20141030_141005.jpg', NULL, '', 1, '2015-05-12 19:04:28', 1, 1, '2015-05-12 19:04:28', 0, 0, NULL, 0),
(29, 1, 'oorzaak1.jpg', '541431450359', 0, 0, 'oorzaak1.jpg', NULL, '', 1, '2015-05-12 19:05:59', 1, 1, '2015-05-12 19:05:59', 0, 0, NULL, 0),
(31, 1, '2.JPG', '561431450508', 0, 0, '2.JPG', NULL, '', 1, '2015-05-12 19:08:28', 1, 1, '2015-05-12 19:08:28', 0, 0, NULL, 0),
(32, 1, '3.JPG', '931431450531', 0, 0, '3.JPG', NULL, '', 1, '2015-05-12 19:08:51', 1, 1, '2015-05-12 19:08:51', 0, 0, NULL, 0),
(33, 1, '4.JPG', '261431450552', 0, 0, '4.JPG', NULL, '', 1, '2015-05-12 19:09:12', 1, 1, '2015-05-12 19:09:12', 0, 0, NULL, 0),
(34, 1, '1.jpg', '971431451527', 0, 0, '1.jpg', NULL, '', 1, '2015-05-12 19:25:27', 1, 1, '2015-05-12 19:25:27', 0, 0, NULL, 0),
(35, 1, 'carousel2.jpg', '831431455801', 0, 422921, 'carousel2.jpg', NULL, '', 1, '2015-05-12 20:36:41', 1, 1, '2015-05-12 20:36:41', 1, 1, 'jpg', 1),
(36, 1, 'carousel1.jpg', '311431455834', 0, 614335, 'carousel1.jpg', NULL, '', 1, '2015-05-12 20:37:14', 1, 1, '2015-05-12 20:37:14', 1, 1, 'jpg', 1),
(37, 1, 'carousel3.jpg', '911431455862', 0, 185132, 'carousel3.jpg', NULL, '', 1, '2015-05-12 20:37:42', 1, 1, '2015-05-12 20:37:42', 1, 1, 'jpg', 1),
(41, 1, 'carousel1.png', '781431456742', 0, 732864, 'carousel1.png', NULL, '', 1, '2015-05-12 20:52:22', 1, 1, '2015-05-12 20:52:22', 1, 1, 'png', 1),
(42, 1, 'carousel2.jpg', '521431456792', 0, 783942, 'carousel2.jpg', NULL, '', 1, '2015-05-12 20:53:12', 1, 1, '2015-05-12 20:53:12', 1, 1, 'jpg', 1),
(43, 1, 'carousel3.jpg', '331431456836', 0, 935863, 'carousel3.jpg', NULL, '', 1, '2015-05-12 20:53:56', 1, 1, '2015-05-12 20:53:56', 1, 1, 'jpg', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gaPage`
--

CREATE TABLE IF NOT EXISTS `gaPage` (
  `gaiID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GatheringConfiguredDataSources`
--

CREATE TABLE IF NOT EXISTS `GatheringConfiguredDataSources` (
`gcsID` int(10) unsigned NOT NULL,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GatheringDataSources`
--

CREATE TABLE IF NOT EXISTS `GatheringDataSources` (
`gasID` int(10) unsigned NOT NULL,
  `gasName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `GatheringDataSources`
--

INSERT INTO `GatheringDataSources` (`gasID`, `gasName`, `gasHandle`, `pkgID`, `gasDisplayOrder`) VALUES
(1, 'Site Page', 'page', 0, 0),
(2, 'RSS Feed', 'rss_feed', 0, 1),
(3, 'Flickr Feed', 'flickr_feed', 0, 2),
(4, 'Twitter', 'twitter', 0, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GatheringItemFeatureAssignments`
--

CREATE TABLE IF NOT EXISTS `GatheringItemFeatureAssignments` (
`gafaID` int(10) unsigned NOT NULL,
  `gaiID` int(10) unsigned DEFAULT NULL,
  `faID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GatheringItems`
--

CREATE TABLE IF NOT EXISTS `GatheringItems` (
`gaiID` int(10) unsigned NOT NULL,
  `gaID` int(10) unsigned DEFAULT NULL,
  `gasID` int(10) unsigned DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8_unicode_ci,
  `gaiSlotWidth` int(10) unsigned DEFAULT '1',
  `gaiSlotHeight` int(10) unsigned DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GatheringItemSelectedTemplates`
--

CREATE TABLE IF NOT EXISTS `GatheringItemSelectedTemplates` (
  `gaiID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatID` int(10) unsigned NOT NULL DEFAULT '0',
  `gatTypeID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GatheringItemTemplateFeatures`
--

CREATE TABLE IF NOT EXISTS `GatheringItemTemplateFeatures` (
`gfeID` int(10) unsigned NOT NULL,
  `gatID` int(10) unsigned DEFAULT NULL,
  `feID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=67 ;

--
-- Gegevens worden geëxporteerd voor tabel `GatheringItemTemplateFeatures`
--

INSERT INTO `GatheringItemTemplateFeatures` (`gfeID`, `gatID`, `feID`) VALUES
(4, 1, 1),
(10, 2, 1),
(13, 3, 1),
(16, 4, 1),
(19, 5, 1),
(23, 7, 1),
(29, 11, 1),
(33, 12, 1),
(37, 13, 1),
(42, 14, 1),
(47, 15, 1),
(53, 17, 1),
(56, 18, 1),
(63, 21, 1),
(64, 22, 1),
(3, 1, 2),
(9, 2, 2),
(12, 3, 2),
(15, 4, 2),
(18, 5, 2),
(21, 6, 2),
(25, 8, 2),
(27, 9, 2),
(41, 13, 3),
(46, 14, 3),
(51, 16, 3),
(55, 17, 3),
(62, 20, 3),
(66, 22, 3),
(2, 1, 4),
(8, 2, 4),
(14, 4, 4),
(17, 5, 4),
(31, 11, 4),
(35, 12, 4),
(39, 13, 4),
(44, 14, 4),
(61, 20, 4),
(5, 1, 5),
(22, 6, 5),
(24, 8, 5),
(26, 9, 5),
(28, 10, 5),
(32, 11, 5),
(36, 12, 5),
(40, 13, 5),
(45, 14, 5),
(49, 15, 5),
(50, 16, 5),
(59, 19, 5),
(65, 22, 5),
(20, 5, 6),
(1, 1, 7),
(7, 2, 7),
(11, 3, 7),
(30, 11, 7),
(34, 12, 7),
(38, 13, 7),
(43, 14, 7),
(48, 15, 7),
(52, 16, 7),
(54, 17, 7),
(57, 18, 7),
(58, 19, 7),
(60, 20, 7),
(6, 1, 8);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GatheringItemTemplates`
--

CREATE TABLE IF NOT EXISTS `GatheringItemTemplates` (
`gatID` int(10) unsigned NOT NULL,
  `gatHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) unsigned DEFAULT '0',
  `gatFixedSlotHeight` int(10) unsigned DEFAULT '0',
  `gatForceDefault` int(10) unsigned DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `gatTypeID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Gegevens worden geëxporteerd voor tabel `GatheringItemTemplates`
--

INSERT INTO `GatheringItemTemplates` (`gatID`, `gatHandle`, `gatName`, `gatHasCustomClass`, `gatFixedSlotWidth`, `gatFixedSlotHeight`, `gatForceDefault`, `pkgID`, `gatTypeID`) VALUES
(1, 'featured', 'Featured Item', 0, 6, 2, 1, 0, 1),
(2, 'title_date_description', 'Title Date & Description', 0, 0, 0, 0, 0, 1),
(3, 'title_description', 'Title & Description', 0, 0, 0, 0, 0, 1),
(4, 'title_date', 'Title & Date', 0, 0, 0, 0, 0, 1),
(5, 'title_date_comments', 'Title, Date & Comments', 1, 0, 0, 0, 0, 1),
(6, 'thumbnail', 'Thumbnail', 0, 0, 0, 0, 0, 1),
(7, 'basic', 'Basic', 0, 0, 0, 0, 0, 2),
(8, 'image_sharing_link', 'Image Sharing Link', 0, 0, 0, 0, 0, 2),
(9, 'image_conversation', 'Image Conversation', 0, 0, 0, 0, 0, 2),
(10, 'image', 'Large Image', 0, 0, 0, 0, 0, 2),
(11, 'masthead_image_left', 'Masthead Image Left', 0, 0, 0, 0, 0, 1),
(12, 'masthead_image_right', 'Masthead Image Right', 0, 0, 0, 0, 0, 1),
(13, 'masthead_image_byline_right', 'Masthead Image Byline Right', 0, 0, 0, 0, 0, 1),
(14, 'masthead_image_byline_left', 'Masthead Image Byline Left', 0, 0, 0, 0, 0, 1),
(15, 'image_masthead_description_center', 'Image Masthead Description Center', 0, 0, 0, 0, 0, 1),
(16, 'image_byline_description_center', 'Image Byline Description Center', 0, 0, 0, 0, 0, 1),
(17, 'masthead_byline_description', 'Masthead Byline Description', 0, 0, 0, 0, 0, 1),
(18, 'masthead_description', 'Masthead Description', 0, 0, 0, 0, 0, 1),
(19, 'thumbnail_description_center', 'Thumbnail & Description Center', 0, 0, 0, 0, 0, 1),
(20, 'tweet', 'Tweet', 0, 0, 0, 0, 0, 1),
(21, 'vimeo', 'Vimeo', 0, 0, 0, 0, 0, 1),
(22, 'image_overlay_headline', 'Image Overlay Headline', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GatheringItemTemplateTypes`
--

CREATE TABLE IF NOT EXISTS `GatheringItemTemplateTypes` (
`gatTypeID` int(10) unsigned NOT NULL,
  `gatTypeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `GatheringItemTemplateTypes`
--

INSERT INTO `GatheringItemTemplateTypes` (`gatTypeID`, `gatTypeHandle`, `pkgID`) VALUES
(1, 'tile', 0),
(2, 'detail', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GatheringPermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `GatheringPermissionAssignments` (
  `gaID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Gatherings`
--

CREATE TABLE IF NOT EXISTS `Gatherings` (
`gaID` int(10) unsigned NOT NULL,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Groups`
--

CREATE TABLE IF NOT EXISTS `Groups` (
`gID` int(10) unsigned NOT NULL,
  `gName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) unsigned NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) unsigned NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `Groups`
--

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Guest', 0),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Registered Users', 0),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Administrators', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GroupSetGroups`
--

CREATE TABLE IF NOT EXISTS `GroupSetGroups` (
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `GroupSets`
--

CREATE TABLE IF NOT EXISTS `GroupSets` (
`gsID` int(10) unsigned NOT NULL,
  `gsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Jobs`
--

CREATE TABLE IF NOT EXISTS `Jobs` (
`jID` int(10) unsigned NOT NULL,
  `jName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Gegevens worden geëxporteerd voor tabel `Jobs`
--

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.', '2015-05-11 11:48:29', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2015-05-11 11:48:29', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Check Automated Groups', 'Automatically add users to groups and assign badges.', '2015-05-11 11:48:29', NULL, 0, NULL, 0, 'ENABLED', 'check_automated_groups', 0, 0, 'days', 0),
(4, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2015-05-11 11:48:29', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(5, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2015-05-11 11:48:29', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(6, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2015-05-11 11:48:29', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0),
(7, 'Update Gatherings', 'Loads new items into gatherings.', '2015-05-11 11:48:29', NULL, 0, NULL, 0, 'ENABLED', 'update_gatherings', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `JobSetJobs`
--

CREATE TABLE IF NOT EXISTS `JobSetJobs` (
  `jsID` int(10) unsigned NOT NULL DEFAULT '0',
  `jID` int(10) unsigned NOT NULL DEFAULT '0',
  `jRunOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `JobSetJobs`
--

INSERT INTO `JobSetJobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `JobSets`
--

CREATE TABLE IF NOT EXISTS `JobSets` (
`jsID` int(10) unsigned NOT NULL,
  `jsName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `JobSets`
--

INSERT INTO `JobSets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `JobsLog`
--

CREATE TABLE IF NOT EXISTS `JobsLog` (
`jlID` int(10) unsigned NOT NULL,
  `jID` int(10) unsigned NOT NULL,
  `jlMessage` longtext COLLATE utf8_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Logs`
--

CREATE TABLE IF NOT EXISTS `Logs` (
`logID` int(10) unsigned NOT NULL,
  `channel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` int(10) unsigned NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `uID` int(10) unsigned DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `MailImporters`
--

CREATE TABLE IF NOT EXISTS `MailImporters` (
`miID` int(10) unsigned NOT NULL,
  `miHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `miPort` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'POP'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `MailImporters`
--

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `MailValidationHashes`
--

CREATE TABLE IF NOT EXISTS `MailValidationHashes` (
`mvhID` int(10) unsigned NOT NULL,
  `miID` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `mDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `MultilingualPageRelations`
--

CREATE TABLE IF NOT EXISTS `MultilingualPageRelations` (
  `mpRelationID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `mpLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mpLocale` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `MultilingualSections`
--

CREATE TABLE IF NOT EXISTS `MultilingualSections` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `msLanguage` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `MultilingualTranslations`
--

CREATE TABLE IF NOT EXISTS `MultilingualTranslations` (
`mtID` int(10) unsigned NOT NULL,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgstr` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `OauthUserMap`
--

CREATE TABLE IF NOT EXISTS `OauthUserMap` (
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Packages`
--

CREATE TABLE IF NOT EXISTS `Packages` (
`pkgID` int(10) unsigned NOT NULL,
  `pkgName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pkgDescription` text COLLATE utf8_unicode_ci,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL DEFAULT '1',
  `pkgVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgAvailableVersion` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageFeeds`
--

CREATE TABLE IF NOT EXISTS `PageFeeds` (
`pfID` int(10) unsigned NOT NULL,
  `cParentID` int(10) unsigned NOT NULL DEFAULT '1',
  `pfTitle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `pfContentToDisplay` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) unsigned DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PagePaths`
--

CREATE TABLE IF NOT EXISTS `PagePaths` (
`ppID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=159 ;

--
-- Gegevens worden geëxporteerd voor tabel `PagePaths`
--

INSERT INTO `PagePaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`) VALUES
(1, 2, '/dashboard', '1'),
(2, 3, '/dashboard/sitemap', '1'),
(3, 4, '/dashboard/sitemap/full', '1'),
(4, 5, '/dashboard/sitemap/explore', '1'),
(5, 6, '/dashboard/sitemap/search', '1'),
(6, 7, '/dashboard/files', '1'),
(7, 8, '/dashboard/files/search', '1'),
(8, 9, '/dashboard/files/attributes', '1'),
(9, 10, '/dashboard/files/sets', '1'),
(10, 11, '/dashboard/files/add_set', '1'),
(11, 12, '/dashboard/users', '1'),
(12, 13, '/dashboard/users/search', '1'),
(13, 14, '/dashboard/users/groups', '1'),
(14, 15, '/dashboard/users/attributes', '1'),
(15, 16, '/dashboard/users/add', '1'),
(16, 17, '/dashboard/users/add_group', '1'),
(17, 18, '/dashboard/users/groups/bulkupdate', '1'),
(18, 19, '/dashboard/users/group_sets', '1'),
(19, 20, '/dashboard/users/points', '1'),
(20, 21, '/dashboard/users/points/assign', '1'),
(21, 22, '/dashboard/users/points/actions', '1'),
(22, 23, '/dashboard/reports', '1'),
(23, 24, '/dashboard/reports/forms', '1'),
(24, 25, '/dashboard/reports/surveys', '1'),
(25, 26, '/dashboard/reports/logs', '1'),
(26, 27, '/dashboard/pages', '1'),
(27, 28, '/dashboard/pages/themes', '1'),
(28, 29, '/dashboard/pages/themes/inspect', '1'),
(29, 30, '/dashboard/pages/types', '1'),
(30, 31, '/dashboard/pages/types/organize', '1'),
(31, 32, '/dashboard/pages/types/add', '1'),
(32, 33, '/dashboard/pages/types/form', '1'),
(33, 34, '/dashboard/pages/types/output', '1'),
(34, 35, '/dashboard/pages/types/attributes', '1'),
(35, 36, '/dashboard/pages/types/permissions', '1'),
(36, 37, '/dashboard/pages/templates', '1'),
(37, 38, '/dashboard/pages/templates/add', '1'),
(38, 39, '/dashboard/pages/attributes', '1'),
(39, 40, '/dashboard/pages/single', '1'),
(40, 41, '/dashboard/pages/feeds', '1'),
(41, 42, '/dashboard/conversations', '1'),
(42, 43, '/dashboard/conversations/messages', '1'),
(43, 44, '/dashboard/workflow', '1'),
(44, 45, '/dashboard/workflow/workflows', '1'),
(45, 46, '/dashboard/workflow/me', '1'),
(46, 47, '/dashboard/blocks', '1'),
(47, 48, '/dashboard/blocks/stacks', '1'),
(48, 49, '/dashboard/blocks/permissions', '1'),
(49, 50, '/dashboard/blocks/stacks/list', '1'),
(50, 51, '/dashboard/blocks/types', '1'),
(51, 52, '/dashboard/extend', '1'),
(52, 53, '/dashboard/news', '1'),
(53, 54, '/dashboard/extend/install', '1'),
(54, 55, '/dashboard/extend/update', '1'),
(55, 56, '/dashboard/extend/connect', '1'),
(56, 57, '/dashboard/extend/themes', '1'),
(57, 58, '/dashboard/extend/addons', '1'),
(58, 59, '/dashboard/system', '1'),
(59, 60, '/dashboard/system/basics', '1'),
(60, 61, '/dashboard/system/basics/name', '1'),
(61, 62, '/dashboard/system/basics/accessibility', '1'),
(62, 63, '/dashboard/system/basics/social', '1'),
(63, 64, '/dashboard/system/basics/icons', '1'),
(64, 65, '/dashboard/system/basics/editor', '1'),
(65, 66, '/dashboard/system/basics/multilingual', '1'),
(66, 67, '/dashboard/system/basics/timezone', '1'),
(67, 68, '/dashboard/system/multilingual', '1'),
(68, 69, '/dashboard/system/multilingual/setup', '1'),
(69, 70, '/dashboard/system/multilingual/page_report', '1'),
(70, 71, '/dashboard/system/multilingual/translate_interface', '1'),
(71, 72, '/dashboard/system/seo', '1'),
(72, 73, '/dashboard/system/seo/urls', '1'),
(73, 74, '/dashboard/system/seo/bulk', '1'),
(74, 75, '/dashboard/system/seo/codes', '1'),
(75, 76, '/dashboard/system/seo/excluded', '1'),
(76, 77, '/dashboard/system/seo/searchindex', '1'),
(77, 78, '/dashboard/system/files', '1'),
(78, 79, '/dashboard/system/files/permissions', '1'),
(79, 80, '/dashboard/system/files/filetypes', '1'),
(80, 81, '/dashboard/system/files/thumbnails', '1'),
(81, 82, '/dashboard/system/files/storage', '1'),
(82, 83, '/dashboard/system/optimization', '1'),
(83, 84, '/dashboard/system/optimization/cache', '1'),
(84, 85, '/dashboard/system/optimization/clearcache', '1'),
(85, 86, '/dashboard/system/optimization/jobs', '1'),
(86, 87, '/dashboard/system/optimization/query_log', '1'),
(87, 88, '/dashboard/system/permissions', '1'),
(88, 89, '/dashboard/system/permissions/site', '1'),
(89, 90, '/dashboard/system/permissions/tasks', '1'),
(90, 91, '/dashboard/system/permissions/users', '1'),
(91, 92, '/dashboard/system/permissions/advanced', '1'),
(92, 93, '/dashboard/system/permissions/blacklist', '1'),
(93, 94, '/dashboard/system/permissions/captcha', '1'),
(94, 95, '/dashboard/system/permissions/antispam', '1'),
(95, 96, '/dashboard/system/permissions/maintenance', '1'),
(96, 97, '/dashboard/system/registration', '1'),
(97, 98, '/dashboard/system/registration/postlogin', '1'),
(98, 99, '/dashboard/system/registration/profiles', '1'),
(99, 100, '/dashboard/system/registration/open', '1'),
(100, 101, '/dashboard/system/registration/authentication', '1'),
(101, 102, '/dashboard/system/mail', '1'),
(102, 103, '/dashboard/system/mail/method', '1'),
(103, 104, '/dashboard/system/mail/method/test', '1'),
(104, 105, '/dashboard/system/mail/importers', '1'),
(105, 106, '/dashboard/system/conversations', '1'),
(106, 107, '/dashboard/system/conversations/settings', '1'),
(107, 108, '/dashboard/system/conversations/points', '1'),
(108, 109, '/dashboard/system/conversations/bannedwords', '1'),
(109, 110, '/dashboard/system/conversations/permissions', '1'),
(110, 111, '/dashboard/system/attributes', '1'),
(111, 112, '/dashboard/system/attributes/sets', '1'),
(112, 113, '/dashboard/system/attributes/types', '1'),
(113, 114, '/dashboard/system/attributes/topics', '1'),
(114, 115, '/dashboard/system/attributes/topics/add', '1'),
(115, 116, '/dashboard/system/environment', '1'),
(116, 117, '/dashboard/system/environment/info', '1'),
(117, 118, '/dashboard/system/environment/debug', '1'),
(118, 119, '/dashboard/system/environment/logging', '1'),
(119, 120, '/dashboard/system/environment/proxy', '1'),
(120, 121, '/dashboard/system/backup', '1'),
(121, 122, '/dashboard/system/backup/backup', '1'),
(122, 123, '/dashboard/system/backup/update', '1'),
(123, 124, '/dashboard/welcome', '1'),
(124, 125, '/dashboard/home', '1'),
(125, 126, '/!drafts', '1'),
(126, 127, '/!trash', '1'),
(127, 128, '/!stacks', '1'),
(128, 129, '/login', '1'),
(129, 130, '/register', '1'),
(130, 131, '/account', '1'),
(131, 132, '/account/edit_profile', '1'),
(132, 133, '/account/avatar', '1'),
(133, 134, '/account/messages', '1'),
(134, 135, '/account/messages/inbox', '1'),
(135, 136, '/members', '1'),
(136, 137, '/members/profile', '1'),
(137, 138, '/members/directory', '1'),
(138, 139, '/page_not_found', '1'),
(139, 140, '/page_forbidden', '1'),
(140, 141, '/download_file', '1'),
(141, 143, '/!stacks/header-site-title', '1'),
(142, 144, '/!stacks/header-navigation', '1'),
(143, 145, '/!stacks/footer-legal', '1'),
(144, 146, '/!stacks/footer-navigation', '1'),
(145, 147, '/!stacks/footer-contact', '1'),
(146, 148, '/!stacks/header-search', '1'),
(147, 149, '/!stacks/footer-site-title', '1'),
(148, 150, '/!stacks/footer-social', '1'),
(149, 151, '/vochtproblemen/impact', '1'),
(150, 152, '/vochtproblemen/oorzaken', '1'),
(151, 153, '/realisaties', '1'),
(152, 154, '/realisaties/isolatie', '1'),
(153, 155, '/contact', '1'),
(154, 157, '/over-ons', '1'),
(155, 159, '/vochtproblemen', '1'),
(156, 163, '/vochtproblemen/oplossing', '1'),
(157, 164, '/realisaties/vochtinjecties', '1'),
(158, 165, '/realisaties/kelderrenovaties', '1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PagePermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `PagePermissionAssignments` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PagePermissionAssignments`
--

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 73),
(2, 1, 59),
(129, 1, 57),
(130, 1, 58),
(1, 2, 74),
(1, 3, 42),
(1, 4, 82),
(1, 5, 75),
(1, 6, 76),
(1, 7, 77),
(1, 8, 78),
(1, 9, 79),
(1, 11, 80),
(1, 12, 81),
(1, 13, 84),
(1, 14, 85),
(1, 15, 86),
(1, 16, 87),
(1, 17, 83),
(1, 18, 47);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PagePermissionPageTypeAccessList`
--

CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PagePermissionPageTypeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PagePermissionPropertyAccessList`
--

CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PagePermissionPropertyAttributeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PagePermissionThemeAccessList`
--

CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PagePermissionThemeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `PagePermissionThemeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Pages`
--

CREATE TABLE IF NOT EXISTS `Pages` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) unsigned DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) unsigned DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) unsigned NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) unsigned NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) unsigned NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `cParentID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) unsigned NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) unsigned NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Pages`
--

INSERT INTO `Pages` (`cID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 15, 0, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 13, 0, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 0, 2, 0, 0, -1, '0', 0, 1),
(4, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 3, 0, 0, -1, '0', 0, 1),
(5, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 3, 0, 0, -1, '0', 0, 1),
(6, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 3, 0, 0, -1, '0', 0, 1),
(7, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 1, 2, 0, 0, -1, '0', 0, 1),
(8, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 7, 0, 0, -1, '0', 0, 1),
(9, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 7, 0, 0, -1, '0', 0, 1),
(10, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 7, 0, 0, -1, '0', 0, 1),
(11, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 7, 0, 0, -1, '0', 0, 1),
(12, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 7, 2, 2, 0, 0, -1, '0', 0, 1),
(13, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 12, 0, 0, -1, '0', 0, 1),
(14, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups.php', 0, NULL, 0, 1, 1, 1, 12, 0, 0, -1, '0', 0, 1),
(15, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 12, 0, 0, -1, '0', 0, 1),
(16, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 12, 0, 0, -1, '0', 0, 1),
(17, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 12, 0, 0, -1, '0', 0, 1),
(18, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/groups/bulkupdate.php', 0, NULL, 0, 1, 0, 0, 14, 0, 0, -1, '0', 0, 1),
(19, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 12, 0, 0, -1, '0', 0, 1),
(20, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/view.php', 0, NULL, 0, 1, 2, 6, 12, 0, 0, -1, '0', 0, 1),
(21, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/assign.php', 0, NULL, 0, 1, 0, 0, 20, 0, 0, -1, '0', 0, 1),
(22, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/points/actions.php', 0, NULL, 0, 1, 0, 1, 20, 0, 0, -1, '0', 0, 1),
(23, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports.php', 0, NULL, 0, 1, 3, 3, 2, 0, 0, -1, '0', 0, 1),
(24, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 0, 0, 23, 0, 0, -1, '0', 0, 1),
(25, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 1, 23, 0, 0, -1, '0', 0, 1),
(26, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 2, 23, 0, 0, -1, '0', 0, 1),
(27, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/view.php', 0, NULL, 0, 1, 6, 4, 2, 0, 0, -1, '0', 0, 1),
(28, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 1, 0, 27, 0, 0, -1, '0', 0, 1),
(29, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 0, 28, 0, 0, -1, '0', 0, 1),
(30, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 6, 1, 27, 0, 0, -1, '0', 0, 1),
(31, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/organize.php', 0, NULL, 0, 1, 0, 0, 30, 0, 0, -1, '0', 0, 1),
(32, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 1, 30, 0, 0, -1, '0', 0, 1),
(33, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/form.php', 0, NULL, 0, 1, 0, 2, 30, 0, 0, -1, '0', 0, 1),
(34, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/output.php', 0, NULL, 0, 1, 0, 3, 30, 0, 0, -1, '0', 0, 1),
(35, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/attributes.php', 0, NULL, 0, 1, 0, 4, 30, 0, 0, -1, '0', 0, 1),
(36, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/types/permissions.php', 0, NULL, 0, 1, 0, 5, 30, 0, 0, -1, '0', 0, 1),
(37, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/view.php', 0, NULL, 0, 1, 1, 2, 27, 0, 0, -1, '0', 0, 1),
(38, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/templates/add.php', 0, NULL, 0, 1, 0, 0, 37, 0, 0, -1, '0', 0, 1),
(39, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 3, 27, 0, 0, -1, '0', 0, 1),
(40, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 4, 27, 0, 0, -1, '0', 0, 1),
(41, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/feeds.php', 0, NULL, 0, 1, 0, 5, 27, 0, 0, -1, '0', 0, 1),
(42, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/view.php', 0, NULL, 0, 1, 1, 5, 2, 0, 0, -1, '0', 0, 1),
(43, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/conversations/messages.php', 0, NULL, 0, 1, 0, 0, 42, 0, 0, -1, '0', 0, 1),
(44, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/view.php', 0, NULL, 0, 1, 2, 6, 2, 0, 0, -1, '0', 0, 1),
(45, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/workflows.php', 0, NULL, 0, 1, 0, 0, 44, 0, 0, -1, '0', 0, 1),
(46, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/workflow/me.php', 0, NULL, 0, 1, 0, 1, 44, 0, 0, -1, '0', 0, 1),
(47, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 7, 2, 0, 0, -1, '0', 0, 1),
(48, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 47, 0, 0, -1, '0', 0, 1),
(49, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 47, 0, 0, -1, '0', 0, 1),
(50, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 48, 0, 0, -1, '0', 0, 1),
(51, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 47, 0, 0, -1, '0', 0, 1),
(52, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 8, 2, 0, 0, -1, '0', 0, 1),
(53, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/news.php', 0, NULL, 0, 1, 0, 9, 2, 0, 0, -1, '0', 0, 1),
(54, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 52, 0, 0, -1, '0', 0, 1),
(55, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 52, 0, 0, -1, '0', 0, 1),
(56, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 52, 0, 0, -1, '0', 0, 1),
(57, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 52, 0, 0, -1, '0', 0, 1),
(58, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/extend/addons.php', 0, NULL, 0, 1, 0, 4, 52, 0, 0, -1, '0', 0, 1),
(59, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/view.php', 0, NULL, 0, 1, 12, 10, 2, 0, 0, -1, '0', 0, 1),
(60, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 7, 0, 59, 0, 0, -1, '0', 0, 1),
(61, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/name.php', 0, NULL, 0, 1, 0, 0, 60, 0, 0, -1, '0', 0, 1),
(62, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/accessibility.php', 0, NULL, 0, 1, 0, 1, 60, 0, 0, -1, '0', 0, 1),
(63, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/social.php', 0, NULL, 0, 1, 0, 2, 60, 0, 0, -1, '0', 0, 1),
(64, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 3, 60, 0, 0, -1, '0', 0, 1),
(65, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 4, 60, 0, 0, -1, '0', 0, 1),
(66, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 0, 5, 60, 0, 0, -1, '0', 0, 1),
(67, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 6, 60, 0, 0, -1, '0', 0, 1),
(68, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/view.php', 0, NULL, 0, 1, 3, 1, 59, 0, 0, -1, '0', 0, 1),
(69, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/setup.php', 0, NULL, 0, 1, 0, 0, 68, 0, 0, -1, '0', 0, 1),
(70, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/page_report.php', 0, NULL, 0, 1, 0, 1, 68, 0, 0, -1, '0', 0, 1),
(71, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/multilingual/translate_interface.php', 0, NULL, 0, 1, 0, 2, 68, 0, 0, -1, '0', 0, 1),
(72, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 5, 2, 59, 0, 0, -1, '0', 0, 1),
(73, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 72, 0, 0, -1, '0', 0, 1),
(74, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/bulk.php', 0, NULL, 0, 1, 0, 1, 72, 0, 0, -1, '0', 0, 1),
(75, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/codes.php', 0, NULL, 0, 1, 0, 2, 72, 0, 0, -1, '0', 0, 1),
(76, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 72, 0, 0, -1, '0', 0, 1),
(77, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/seo/searchindex.php', 0, NULL, 0, 1, 0, 4, 72, 0, 0, -1, '0', 0, 1),
(78, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/view.php', 0, NULL, 0, 1, 4, 3, 59, 0, 0, -1, '0', 0, 1),
(79, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/permissions.php', 0, NULL, 0, 1, 0, 0, 78, 0, 0, -1, '0', 0, 1),
(80, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/filetypes.php', 0, NULL, 0, 1, 0, 1, 78, 0, 0, -1, '0', 0, 1),
(81, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/thumbnails.php', 0, NULL, 0, 1, 0, 2, 78, 0, 0, -1, '0', 0, 1),
(82, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/files/storage.php', 0, NULL, 0, 1, 0, 3, 78, 0, 0, -1, '0', 0, 1),
(83, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 4, 4, 59, 0, 0, -1, '0', 0, 1),
(84, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 83, 0, 0, -1, '0', 0, 1),
(85, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/clearcache.php', 0, NULL, 0, 1, 0, 1, 83, 0, 0, -1, '0', 0, 1),
(86, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 83, 0, 0, -1, '0', 0, 1),
(87, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/optimization/query_log.php', 0, NULL, 0, 1, 0, 3, 83, 0, 0, -1, '0', 0, 1),
(88, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 8, 5, 59, 0, 0, -1, '0', 0, 1),
(89, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 88, 0, 0, -1, '0', 0, 1),
(90, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 1, 88, 0, 0, -1, '0', 0, 1),
(91, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 2, 88, 0, 0, -1, '0', 0, 1),
(92, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 3, 88, 0, 0, -1, '0', 0, 1),
(93, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/blacklist.php', 0, NULL, 0, 1, 0, 4, 88, 0, 0, -1, '0', 0, 1),
(94, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 5, 88, 0, 0, -1, '0', 0, 1),
(95, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 6, 88, 0, 0, -1, '0', 0, 1),
(96, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/permissions/maintenance.php', 0, NULL, 0, 1, 0, 7, 88, 0, 0, -1, '0', 0, 1),
(97, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 4, 6, 59, 0, 0, -1, '0', 0, 1),
(98, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 0, 97, 0, 0, -1, '0', 0, 1),
(99, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 1, 97, 0, 0, -1, '0', 0, 1),
(100, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/open.php', 0, NULL, 0, 1, 0, 2, 97, 0, 0, -1, '0', 0, 1),
(101, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/registration/authentication.php', 0, NULL, 0, 1, 0, 3, 97, 0, 0, -1, '0', 0, 1),
(102, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 2, 7, 59, 0, 0, -1, '0', 0, 1),
(103, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 102, 0, 0, -1, '0', 0, 1),
(104, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/method/test.php', 0, NULL, 0, 1, 0, 0, 103, 0, 0, -1, '0', 0, 1),
(105, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 102, 0, 0, -1, '0', 0, 1),
(106, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/view.php', 0, NULL, 0, 1, 4, 8, 59, 0, 0, -1, '0', 0, 1),
(107, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/settings.php', 0, NULL, 0, 1, 0, 0, 106, 0, 0, -1, '0', 0, 1),
(108, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/points.php', 0, NULL, 0, 1, 0, 1, 106, 0, 0, -1, '0', 0, 1),
(109, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/bannedwords.php', 0, NULL, 0, 1, 0, 2, 106, 0, 0, -1, '0', 0, 1),
(110, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/conversations/permissions.php', 0, NULL, 0, 1, 0, 3, 106, 0, 0, -1, '0', 0, 1),
(111, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 3, 9, 59, 0, 0, -1, '0', 0, 1),
(112, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 0, 111, 0, 0, -1, '0', 0, 1),
(113, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 1, 111, 0, 0, -1, '0', 0, 1),
(114, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/view.php', 0, NULL, 0, 1, 1, 2, 111, 0, 0, -1, '0', 0, 1),
(115, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/attributes/topics/add.php', 0, NULL, 0, 1, 0, 0, 114, 0, 0, -1, '0', 0, 1),
(116, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 4, 10, 59, 0, 0, -1, '0', 0, 1),
(117, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 116, 0, 0, -1, '0', 0, 1),
(118, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 116, 0, 0, -1, '0', 0, 1),
(119, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 116, 0, 0, -1, '0', 0, 1),
(120, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 3, 116, 0, 0, -1, '0', 0, 1),
(121, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/view.php', 0, NULL, 0, 1, 2, 11, 59, 0, 0, -1, '0', 0, 1),
(122, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/backup.php', 0, NULL, 0, 1, 0, 0, 121, 0, 0, -1, '0', 0, 1),
(123, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/update.php', 0, NULL, 0, 1, 0, 1, 121, 0, 0, -1, '0', 0, 1),
(124, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, 0, -1, '0', 0, 1),
(125, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, 0, -1, '0', 0, 1),
(126, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(127, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(128, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 8, 0, 0, 0, 0, -1, '0', 0, 1),
(129, 0, 0, 1, 0, NULL, NULL, NULL, 1, 129, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(130, 0, 0, 1, 0, NULL, NULL, NULL, 1, 130, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(131, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, 0, -1, '0', 0, 1),
(132, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/edit_profile.php', 0, NULL, 0, 1, 0, 0, 131, 0, 0, -1, '0', 0, 1),
(133, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/avatar.php', 0, NULL, 0, 1, 0, 1, 131, 0, 0, -1, '0', 0, 1),
(134, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/view.php', 0, NULL, 0, 1, 1, 2, 131, 0, 0, -1, '0', 0, 1),
(135, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/inbox.php', 0, NULL, 0, 1, 0, 0, 134, 0, 0, -1, '0', 0, 1),
(136, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/view.php', 0, NULL, 0, 1, 2, 0, 1, 0, 0, -1, '0', 0, 1),
(137, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/profile.php', 0, NULL, 0, 1, 0, 0, 136, 0, 0, -1, '0', 0, 1),
(138, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/directory.php', 0, NULL, 0, 1, 0, 1, 136, 0, 0, -1, '0', 0, 1),
(139, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
(140, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
(141, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, 0, -1, '0', 0, 1),
(142, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 142, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(143, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 128, 0, 0, -1, '0', 0, 1),
(144, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 128, 0, 0, -1, '0', 0, 1),
(145, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 128, 0, 0, -1, '0', 0, 1),
(146, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 128, 0, 0, -1, '0', 0, 1),
(147, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 128, 0, 0, -1, '0', 0, 1),
(148, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 128, 0, 0, -1, '0', 0, 1),
(149, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 128, 0, 0, -1, '0', 0, 1),
(150, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 128, 0, 0, -1, '0', 0, 1),
(151, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 159, 0, 159, -1, '0', 0, 0),
(152, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 159, 0, 159, -1, '0', 0, 0),
(153, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 3, 1, 1, 0, 1, -1, '0', 0, 0),
(154, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 153, 0, 153, -1, '0', 0, 0),
(155, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 1, 0, 1, -1, '0', 0, 0),
(156, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 156, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(157, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 1, 0, 1, -1, '0', 0, 0),
(158, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 158, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(159, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 3, 0, 1, 0, 1, -1, '0', 0, 0),
(160, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 160, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(161, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 161, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(162, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 162, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(163, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 159, 0, 159, -1, '0', 0, 0),
(164, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 153, 0, 153, -1, '0', 0, 0),
(165, 5, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 153, 0, 153, -1, '0', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageSearchIndex`
--

CREATE TABLE IF NOT EXISTS `PageSearchIndex` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8_unicode_ci,
  `cName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8_unicode_ci,
  `cPath` text COLLATE utf8_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PageSearchIndex`
--

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(2, '', 'Dashboard', '', '/dashboard', '2015-05-11 11:48:29', '2015-05-11 11:48:32', NULL, 0),
(3, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2015-05-11 11:48:29', '2015-05-11 11:48:32', NULL, 0),
(4, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2015-05-11 11:48:29', '2015-05-11 11:48:32', NULL, 0),
(5, '', 'Flat View', '', '/dashboard/sitemap/explore', '2015-05-11 11:48:29', '2015-05-11 11:48:32', NULL, 0),
(6, '', 'Page Search', '', '/dashboard/sitemap/search', '2015-05-11 11:48:29', '2015-05-11 11:48:32', NULL, 0),
(8, '', 'File Manager', '', '/dashboard/files/search', '2015-05-11 11:48:29', '2015-05-11 11:48:32', NULL, 0),
(9, '', 'Attributes', '', '/dashboard/files/attributes', '2015-05-11 11:48:29', '2015-05-11 11:48:32', NULL, 0),
(10, '', 'File Sets', '', '/dashboard/files/sets', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(11, '', 'Add File Set', '', '/dashboard/files/add_set', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(12, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(13, '', 'Search Users', '', '/dashboard/users/search', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(14, '', 'User Groups', '', '/dashboard/users/groups', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(15, '', 'Attributes', '', '/dashboard/users/attributes', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(16, '', 'Add User', '', '/dashboard/users/add', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(17, '', 'Add Group', '', '/dashboard/users/add_group', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(19, '', 'Group Sets', '', '/dashboard/users/group_sets', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(20, '', 'Community Points', NULL, '/dashboard/users/points', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(22, '', 'Actions', NULL, '/dashboard/users/points/actions', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(23, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2015-05-11 11:48:29', '2015-05-11 11:48:33', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(29, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(31, '', 'Organize Page Type Order', '', '/dashboard/pages/types/organize', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(32, '', 'Add Page Type', '', '/dashboard/pages/types/add', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(33, '', 'Compose Form', '', '/dashboard/pages/types/form', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(34, '', 'Defaults and Output', '', '/dashboard/pages/types/output', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(35, '', 'Page Type Attributes', '', '/dashboard/pages/types/attributes', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(36, '', 'Page Type Permissions', '', '/dashboard/pages/types/permissions', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(38, '', 'Add Page Template', 'Add page templates to your site.', '/dashboard/pages/templates/add', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(39, '', 'Attributes', '', '/dashboard/pages/attributes', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(40, '', 'Single Pages', '', '/dashboard/pages/single', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(41, '', 'RSS Feeds', '', '/dashboard/pages/feeds', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(43, '', 'Messages', '', '/dashboard/conversations/messages', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(44, '', 'Workflow', '', '/dashboard/workflow', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(48, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(50, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(51, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(52, '', 'Extend concrete5', '', '/dashboard/extend', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(53, '', 'Dashboard', '', '/dashboard/news', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(54, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(55, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(56, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(57, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(58, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/addons', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(59, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2015-05-11 11:48:30', '2015-05-11 11:48:33', NULL, 0),
(61, '', 'Site Name', '', '/dashboard/system/basics/name', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(62, '', 'Accessibility', '', '/dashboard/system/basics/accessibility', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(63, '', 'Social Links', '', '/dashboard/system/basics/social', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(64, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(65, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(66, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(67, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(68, '', 'Multilingual', 'Run your site in multiple languages.', '/dashboard/system/multilingual', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(73, '', 'Pretty URLs', '', '/dashboard/system/seo/urls', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(74, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(75, '', 'Tracking Codes', '', '/dashboard/system/seo/codes', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(76, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(77, '', 'Search Index', '', '/dashboard/system/seo/searchindex', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(79, '', 'File Manager Permissions', '', '/dashboard/system/files/permissions', '2015-05-11 11:48:31', '2015-05-11 11:48:33', NULL, 0),
(80, '', 'Allowed File Types', '', '/dashboard/system/files/filetypes', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(81, '', 'Thumbnails', '', '/dashboard/system/files/thumbnails', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(82, '', 'File Storage Locations', '', '/dashboard/system/files/storage', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(84, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(85, '', 'Clear Cache', '', '/dashboard/system/optimization/clearcache', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(86, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(87, '', 'Database Query Log', '', '/dashboard/system/optimization/query_log', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(89, '', 'Site Access', '', '/dashboard/system/permissions/site', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(90, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(93, '', 'IP Blacklist', '', '/dashboard/system/permissions/blacklist', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(94, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(95, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(96, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(98, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(99, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(100, '', 'Public Registration', '', '/dashboard/system/registration/open', '2015-05-11 11:48:31', '2015-05-11 11:48:34', NULL, 0),
(101, '', 'Authentication Types', '', '/dashboard/system/registration/authentication', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(102, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(103, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(104, '', 'Test Mail Settings', '', '/dashboard/system/mail/method/test', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(105, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(106, '', 'Conversations', 'Manage your conversations settings', '/dashboard/system/conversations', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(107, '', 'Settings', '', '/dashboard/system/conversations/settings', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(108, '', 'Community Points', '', '/dashboard/system/conversations/points', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(109, '', 'Banned Words', '', '/dashboard/system/conversations/bannedwords', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(111, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(112, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(113, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(114, '', 'Topics', '', '/dashboard/system/attributes/topics', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, '', 'Environment Information', '', '/dashboard/system/environment/info', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(118, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(119, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(120, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(121, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(123, '', 'Update concrete5', '', '/dashboard/system/backup/update', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(124, '                                        ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(125, '', 'Customize Dashboard Home', '', '/dashboard/home', '2015-05-11 11:48:32', '2015-05-11 11:48:34', NULL, 0),
(126, '', 'Drafts', '', '/!drafts', '2015-05-11 11:48:35', '2015-05-11 11:48:35', NULL, 0),
(127, '', 'Trash', '', '/!trash', '2015-05-11 11:48:35', '2015-05-11 11:48:35', NULL, 0),
(128, '', 'Stacks', '', '/!stacks', '2015-05-11 11:48:35', '2015-05-11 11:48:35', NULL, 0),
(131, '', 'My Account', '', '/account', '2015-05-11 11:48:35', '2015-05-11 11:48:35', NULL, 0),
(1, ' Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitatidsffdfsdsqfdsqdffsdon ullamco laboris nisi ut aliquip ex ea commodo consequat.   Vochtproblemen   Realisaties   Over ons   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.   Lees meer   Lees meer   Lees meer   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.tekst   Vochtige kelder?   Schimmels?   Wij staan voor:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   Adres:   De Decker Eddy Molenstraat 10 1570 Vollezele     				 Fax. +32 (0)54 26 03 76    				 GSM. +32 (0)478/30 94 63    				 info@vochtinuwwoning.be  Gratis Expertise   Lees meer   Lees meer   Lees meer   Lees meer   Lees meer   Lees meer   Opstijgend vocht?  ', 'Home', '', NULL, '2015-05-11 11:47:56', '2015-05-12 20:57:20', NULL, 0),
(155, ' Contact   De Decker Eddy Molenstraat 10 1570 Vollezele   Fax. +32 (0)54 26 03 76 GSM. +32 (0)478/30 94 63 info@vochtinuwwoning.be   Wij staan voor:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   Adres:   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise  ', 'Contact', '', '/contact', '2015-05-11 15:03:38', '2015-05-12 21:08:35', NULL, 0),
(157, ' Over ons   Historiek   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.           orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehe   Realisaties   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.           orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehe  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse           cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non           proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   Wij staan voor:   Adres:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise  ', 'Over ons', '', '/over-ons', '2015-05-11 15:31:05', '2015-05-12 20:44:33', NULL, 0),
(159, ' Vochtproblemen   Oorzaken?   Wat is de impact?   Hoe oplossen?   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.   Lees meer   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad  minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip  ex ea commodo consequat.   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad  minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip  ex ea commodo consequat.   Lees meer   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do  eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad  minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip  ex ea commodo consequat.   Wij staan voor:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   Adres:   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise   Lees meer  ', 'Vochtproblemen', '', '/vochtproblemen', '2015-05-11 16:00:15', '2015-05-13 21:22:25', NULL, 0),
(153, ' Realisaties   Isolatie binnenmuren   Vochtinjecties   Kelderrenovatie   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Lees meer   Lees meer   Lees meer   Wij staan voor:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   Adres:   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise  ', 'Realisaties', '', '/realisaties', '2015-05-11 15:02:26', '2015-05-12 18:31:47', NULL, 0),
(154, ' Tekst bij foto 1   Wij staan voor:   Isolatie van binnenmuren tegen koudebruggen   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   Adres:   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise  ', 'Isolatie', '', '/realisaties/isolatie', '2015-05-11 15:02:59', '2015-05-12 19:28:32', NULL, 0),
(152, ' Oorzaken   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Opstijgend vocht   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Lekken   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Gebrekkige ventilatie   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Koudebruggen   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Wij staan voor:   Adres:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise  ', 'oorzaken', '', '/vochtproblemen/oorzaken', '2015-05-11 15:02:13', '2015-05-12 12:05:40', NULL, 0),
(151, ' Wat is de impact?   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Gezondheid   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Energieverbruik   Wij staan voor:   Adres:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat  ', 'impact', '', '/vochtproblemen/impact', '2015-05-11 14:06:16', '2015-05-13 21:31:35', NULL, 0),
(163, ' oplossing   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Oplossing 1   Oplossing 2   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod           tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,           quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo           consequat.   Wij staan voor:   Adres:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise  ', 'oplossing', '', '/vochtproblemen/oplossing', '2015-05-12 11:31:46', '2015-05-12 17:59:25', NULL, 0),
(164, ' Vochtinjecties en zoutwerende fleece   Wij staan voor:   Adres:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise  ', 'Vochtinjecties', '', '/realisaties/vochtinjecties', '2015-05-12 18:04:53', '2015-05-12 19:30:48', NULL, 0),
(165, ' Kelderrenovaties   Wij staan voor:   Voorwaarde 1 Voorwaarde 2 Voorwaarde 3 Voorwaarde 4 Voorwaarde 5 Voorwaarde 6   Adres:   De Decker Eddy Molenstraat 10 1570 Vollezele              Fax. +32 (0)54 26 03 76             GSM. +32 (0)478/30 94 63             info@vochtinuwwoning.be  Gratis expertise  ', 'kelderrenovaties', '', '/realisaties/kelderrenovaties', '2015-05-12 18:05:41', '2015-05-12 19:31:24', NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageStatistics`
--

CREATE TABLE IF NOT EXISTS `PageStatistics` (
`pstID` bigint(20) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTemplates`
--

CREATE TABLE IF NOT EXISTS `PageTemplates` (
`pTemplateID` int(10) unsigned NOT NULL,
  `pTemplateHandle` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pTemplateName` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Gegevens worden geëxporteerd voor tabel `PageTemplates`
--

INSERT INTO `PageTemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1, 'core_stack', '', 'Stack', 1, 0),
(2, 'dashboard_primary_five', '', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', '', 'Dashboard Header + Four Column', 1, 0),
(4, 'dashboard_full', '', 'Dashboard Full', 1, 0),
(5, 'home', 'blank.png', 'home', 0, 0),
(6, 'contact', 'blank.png', 'contact', 0, 0),
(7, 'over_ons', 'blank.png', 'over_ons', 0, 0),
(8, 'kolommen', 'blank.png', 'kolommen', 0, 0),
(9, 'realisaties_foto', 'blank.png', 'realisaties_foto', 0, 0),
(10, 'oorzaak', 'blank.png', 'oorzaak', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageThemeCustomStyles`
--

CREATE TABLE IF NOT EXISTS `PageThemeCustomStyles` (
  `pThemeID` int(10) unsigned NOT NULL DEFAULT '0',
  `scvlID` int(10) unsigned DEFAULT '0',
  `preset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageThemes`
--

CREATE TABLE IF NOT EXISTS `PageThemes` (
`pThemeID` int(10) unsigned NOT NULL,
  `pThemeHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8_unicode_ci,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `PageThemes`
--

INSERT INTO `PageThemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(1, 'elemental', 'Elemental', 'Elegant, spacious theme with support for blogs, portfolios, layouts and more.', 0, 1),
(2, 'Vocht_in_uw_woning', 'Vocht in uw woning', 'Beschrijving van de vocht in uw woning', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypeComposerControlTypes`
--

CREATE TABLE IF NOT EXISTS `PageTypeComposerControlTypes` (
`ptComposerControlTypeID` int(10) unsigned NOT NULL,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypeComposerControlTypes`
--

INSERT INTO `PageTypeComposerControlTypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
(1, 'core_page_property', 'Built-In Properties', 0),
(2, 'collection_attribute', 'Custom Attributes', 0),
(3, 'block', 'Block', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypeComposerFormLayoutSetControls`
--

CREATE TABLE IF NOT EXISTS `PageTypeComposerFormLayoutSetControls` (
`ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL,
  `ptComposerFormLayoutSetID` int(10) unsigned DEFAULT '0',
  `ptComposerControlTypeID` int(10) unsigned DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypeComposerFormLayoutSetControls`
--

INSERT INTO `PageTypeComposerFormLayoutSetControls` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
(1, 1, 1, 'O:78:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty":9:{s:37:"\0*\0ptComposerControlRequiredByDefault";b:1;s:17:"\0*\0propertyHandle";s:4:"name";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:4:"name";s:24:"\0*\0ptComposerControlName";s:9:"Page Name";s:27:"\0*\0ptComposerControlIconSRC";s:61:"/Examen/Frontend 2/concrete/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, 'Page Name', NULL, NULL, 1),
(2, 1, 1, 'O:85:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:11:"description";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:11:"description";s:24:"\0*\0ptComposerControlName";s:11:"Description";s:27:"\0*\0ptComposerControlIconSRC";s:65:"/Examen/Frontend 2/concrete/concrete/attributes/textarea/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 1, NULL, NULL, NULL, 0),
(3, 1, 1, 'O:81:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:8:"url_slug";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:8:"url_slug";s:24:"\0*\0ptComposerControlName";s:8:"URL Slug";s:27:"\0*\0ptComposerControlIconSRC";s:61:"/Examen/Frontend 2/concrete/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 2, NULL, NULL, NULL, 0),
(4, 1, 1, 'O:86:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:13:"page_template";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:13:"page_template";s:24:"\0*\0ptComposerControlName";s:13:"Page Template";s:27:"\0*\0ptComposerControlIconSRC";s:63:"/Examen/Frontend 2/concrete/concrete/attributes/select/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 3, NULL, NULL, NULL, 0),
(5, 1, 1, 'O:87:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:14:"publish_target";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:14:"publish_target";s:24:"\0*\0ptComposerControlName";s:13:"Page Location";s:27:"\0*\0ptComposerControlIconSRC";s:67:"/Examen/Frontend 2/concrete/concrete/attributes/image_file/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 4, NULL, NULL, NULL, 0),
(6, 2, 3, 'O:53:"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl":11:{s:7:"\0*\0btID";i:12;s:30:"\0*\0ptComposerControlTypeHandle";s:5:"block";s:5:"\0*\0bt";b:0;s:4:"\0*\0b";b:0;s:30:"\0*\0ptComposerControlIdentifier";i:12;s:24:"\0*\0ptComposerControlName";s:7:"Content";s:27:"\0*\0ptComposerControlIconSRC";s:60:"/Examen/Frontend 2/concrete/concrete/blocks/content/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, 'Body', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypeComposerFormLayoutSets`
--

CREATE TABLE IF NOT EXISTS `PageTypeComposerFormLayoutSets` (
`ptComposerFormLayoutSetID` int(10) unsigned NOT NULL,
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypeComposerFormLayoutSets`
--

INSERT INTO `PageTypeComposerFormLayoutSets` (`ptComposerFormLayoutSetID`, `ptID`, `ptComposerFormLayoutSetName`, `ptComposerFormLayoutSetDescription`, `ptComposerFormLayoutSetDisplayOrder`) VALUES
(1, 5, 'Basics', '', 0),
(2, 5, 'Content', '', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypeComposerOutputBlocks`
--

CREATE TABLE IF NOT EXISTS `PageTypeComposerOutputBlocks` (
`ptComposerOutputBlockID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL DEFAULT '0',
  `bID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=75 ;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypeComposerOutputBlocks`
--

INSERT INTO `PageTypeComposerOutputBlocks` (`ptComposerOutputBlockID`, `cID`, `arHandle`, `cbDisplayOrder`, `ptComposerFormLayoutSetControlID`, `bID`) VALUES
(18, 155, 'Main', 0, 6, 46),
(27, 157, 'Main', 0, 6, 56),
(38, 153, 'Main', 0, 6, 75),
(52, 152, 'Main', 0, 6, 132),
(59, 163, 'Main', 0, 6, 140),
(60, 159, 'Main', 0, 6, 150),
(62, 151, 'Main', 0, 6, 179),
(68, 164, 'Main', 0, 6, 223),
(72, 165, 'Main', 0, 6, 227),
(74, 154, 'Main', 0, 6, 245);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypeComposerOutputControls`
--

CREATE TABLE IF NOT EXISTS `PageTypeComposerOutputControls` (
`ptComposerOutputControlID` int(10) unsigned NOT NULL,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypeComposerOutputControls`
--

INSERT INTO `PageTypeComposerOutputControls` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
(1, 5, 5, 6),
(2, 6, 5, 6),
(3, 7, 5, 6),
(4, 8, 5, 6),
(5, 9, 5, 6),
(6, 10, 5, 6);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypePageTemplateDefaultPages`
--

CREATE TABLE IF NOT EXISTS `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypePageTemplateDefaultPages`
--

INSERT INTO `PageTypePageTemplateDefaultPages` (`pTemplateID`, `ptID`, `cID`) VALUES
(5, 5, 142),
(6, 5, 156),
(7, 5, 158),
(8, 5, 160),
(9, 5, 161),
(10, 5, 162);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypePageTemplates`
--

CREATE TABLE IF NOT EXISTS `PageTypePageTemplates` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pTemplateID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypePermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `PageTypePermissionAssignments` (
  `ptID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypePermissionAssignments`
--

INSERT INTO `PageTypePermissionAssignments` (`ptID`, `pkID`, `paID`) VALUES
(1, 59, 9),
(2, 59, 9),
(3, 59, 9),
(4, 59, 9),
(5, 59, 9),
(1, 60, 9),
(2, 60, 9),
(3, 60, 9),
(4, 60, 9),
(5, 60, 9),
(1, 61, 9),
(2, 61, 9),
(3, 61, 9),
(4, 61, 9),
(5, 61, 9),
(1, 62, 9),
(2, 62, 9),
(3, 62, 9),
(4, 62, 9),
(5, 62, 9),
(1, 63, 25),
(2, 63, 26),
(3, 63, 27),
(4, 63, 28),
(5, 63, 29);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypePublishTargetTypes`
--

CREATE TABLE IF NOT EXISTS `PageTypePublishTargetTypes` (
`ptPublishTargetTypeID` int(10) unsigned NOT NULL,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypePublishTargetTypes`
--

INSERT INTO `PageTypePublishTargetTypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
(1, 'parent_page', 'Always publish below a certain page', 0),
(2, 'page_type', 'Choose from pages of a certain type', 0),
(3, 'all', 'Choose from all pages when publishing', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypes`
--

CREATE TABLE IF NOT EXISTS `PageTypes` (
`ptID` int(10) unsigned NOT NULL,
  `ptName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) unsigned DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) unsigned DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) unsigned DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypes`
--

INSERT INTO `PageTypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`) VALUES
(1, 'Stack', 'core_stack', NULL, 0, 'A', 1, 0, 0, 0, 0, NULL),
(2, 'Dashboard Primary + Five', 'dashboard_primary_five', NULL, 0, 'A', 1, 0, 1, 0, 0, NULL),
(3, 'Dashboard Header + Four Column', 'dashboard_header_four_col', NULL, 0, 'A', 1, 0, 2, 0, 0, NULL),
(4, 'Dashboard Full', 'dashboard_full', NULL, 0, 'A', 1, 0, 3, 0, 0, NULL),
(5, 'Page', 'page', 3, 5, 'A', 0, 0, 0, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":4:{s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageWorkflowProgress`
--

CREATE TABLE IF NOT EXISTS `PageWorkflowProgress` (
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccess`
--

CREATE TABLE IF NOT EXISTS `PermissionAccess` (
`paID` int(10) unsigned NOT NULL,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=90 ;

--
-- Gegevens worden geëxporteerd voor tabel `PermissionAccess`
--

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
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
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessEntities`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntities` (
`peID` int(10) unsigned NOT NULL,
  `petID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Gegevens worden geëxporteerd voor tabel `PermissionAccessEntities`
--

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1, 1),
(3, 1),
(5, 1),
(2, 5),
(6, 6),
(4, 7);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessEntityGroups`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroups` (
`pegID` int(10) unsigned NOT NULL,
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `PermissionAccessEntityGroups`
--

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 3, 1),
(3, 5, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessEntityGroupSets`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityGroupSets` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `gsID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessEntityTypeCategories`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypeCategories` (
  `petID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PermissionAccessEntityTypeCategories`
--

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(6, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(1, 14),
(2, 14),
(3, 14),
(4, 14),
(5, 14),
(1, 15),
(2, 15),
(3, 15),
(4, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(1, 17),
(2, 17),
(3, 17),
(4, 17),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(1, 19),
(2, 19),
(3, 19),
(4, 19),
(7, 19),
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(7, 20);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessEntityTypes`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypes` (
`petID` int(10) unsigned NOT NULL,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Gegevens worden geëxporteerd voor tabel `PermissionAccessEntityTypes`
--

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0),
(7, 'conversation_message_author', 'Message Author', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessEntityUsers`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityUsers` (
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessList`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `pdID` int(10) unsigned NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PermissionAccessList`
--

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
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
(25, 2, 0, 10),
(26, 2, 0, 10),
(27, 2, 0, 10),
(28, 2, 0, 10),
(29, 2, 0, 10),
(30, 3, 0, 10),
(31, 1, 0, 10),
(31, 3, 0, 10),
(32, 1, 0, 10),
(33, 1, 0, 10),
(34, 1, 0, 10),
(35, 1, 0, 10),
(36, 1, 0, 10),
(37, 1, 0, 10),
(38, 1, 0, 10),
(39, 1, 0, 10),
(40, 3, 0, 10),
(41, 1, 0, 10),
(42, 1, 0, 10),
(43, 1, 0, 10),
(44, 1, 0, 10),
(45, 1, 0, 10),
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
(57, 3, 0, 10),
(58, 3, 0, 10),
(59, 1, 0, 10),
(60, 1, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 3, 0, 10),
(66, 3, 0, 10),
(67, 1, 0, 10),
(67, 4, 0, 10),
(68, 1, 0, 10),
(68, 4, 0, 10),
(69, 1, 0, 10),
(69, 5, 0, 10),
(70, 1, 0, 10),
(71, 1, 0, 10),
(72, 1, 0, 10),
(73, 3, 0, 10),
(74, 1, 0, 10),
(75, 1, 0, 10),
(76, 1, 0, 10),
(77, 1, 0, 10),
(78, 1, 0, 10),
(79, 1, 0, 10),
(80, 1, 0, 10),
(81, 1, 0, 10),
(82, 1, 0, 10),
(83, 1, 0, 10),
(84, 1, 0, 10),
(85, 1, 0, 10),
(86, 1, 0, 10),
(87, 1, 0, 10),
(88, 1, 0, 10),
(89, 1, 0, 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessWorkflows`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessWorkflows` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `wfID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `PermissionAssignments` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PermissionAssignments`
--

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(88, 19),
(89, 20),
(3, 74),
(4, 75),
(5, 76),
(6, 78),
(7, 79),
(8, 80),
(9, 86),
(10, 87),
(11, 89),
(12, 90),
(13, 91),
(14, 92),
(15, 93),
(16, 94),
(17, 95),
(18, 96),
(19, 97),
(20, 98),
(21, 99),
(22, 100),
(23, 101),
(24, 102);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionDurationObjects`
--

CREATE TABLE IF NOT EXISTS `PermissionDurationObjects` (
`pdID` int(10) unsigned NOT NULL,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionKeyCategories`
--

CREATE TABLE IF NOT EXISTS `PermissionKeyCategories` (
`pkCategoryID` int(10) unsigned NOT NULL,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Gegevens worden geëxporteerd voor tabel `PermissionKeyCategories`
--

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'user', NULL),
(5, 'file_set', NULL),
(6, 'file', NULL),
(7, 'area', NULL),
(8, 'block_type', NULL),
(9, 'block', NULL),
(10, 'admin', NULL),
(11, 'sitemap', NULL),
(12, 'marketplace_newsflow', NULL),
(13, 'basic_workflow', NULL),
(14, 'page_type', NULL),
(15, 'gathering', NULL),
(16, 'group_tree_node', NULL),
(17, 'topic_category_tree_node', NULL),
(18, 'topic_tree_node', NULL),
(19, 'conversation', NULL),
(20, 'conversation_message', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionKeys`
--

CREATE TABLE IF NOT EXISTS `PermissionKeys` (
`pkID` int(10) unsigned NOT NULL,
  `pkHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) unsigned DEFAULT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=103 ;

--
-- Gegevens worden geëxporteerd voor tabel `PermissionKeys`
--

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_template', 'Change Page Template', 0, 0, 'Ability to change just the page template for this page.', 1, 0),
(10, 'edit_page_page_type', 'Edit Page Type', 0, 0, 'Change the type of an existing page.', 1, 0),
(11, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(12, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site''s Trash.', 1, 0),
(13, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(14, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(15, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(16, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(17, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(18, 'edit_page_multilingual_settings', 'Edit Multilingual Settings', 0, 0, 'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.', 1, 0),
(19, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(20, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(21, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 7, 0),
(22, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 7, 0),
(23, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 7, 0),
(24, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 7, 0),
(25, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 7, 0),
(26, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area''s custom CSS.', 7, 0),
(27, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 7, 0),
(28, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 7, 0),
(29, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 7, 0),
(30, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 9, 0),
(31, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 9, 0),
(32, 'edit_block_custom_template', 'Change Custom Template', 0, 0, 'Controls whether users can change the custom template on this block. This overrides any area or page permissions.', 9, 0),
(33, 'edit_block_cache_settings', 'Edit Cache Settings', 0, 0, 'Controls whether users can change the block cache settings for this block instance.', 9, 0),
(34, 'edit_block_name', 'Edit Name', 0, 0, 'Controls whether users can change the block''s name (rarely used.)', 9, 0),
(35, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 9, 0),
(36, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 9, 0),
(37, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 9, 0),
(38, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 9, 0),
(39, 'view_file_set_file', 'View Files', 0, 0, 'Can view and download files in the site.', 5, 0),
(40, 'search_file_set', 'Search Files in File Manager', 0, 0, 'Can access the file manager', 5, 0),
(41, 'edit_file_set_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 5, 0),
(42, 'edit_file_set_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in set.', 5, 0),
(43, 'copy_file_set_files', 'Copy File', 0, 0, 'Can copy files in file set.', 5, 0),
(44, 'edit_file_set_permissions', 'Edit File Access', 0, 0, 'Can edit access to file sets.', 5, 0),
(45, 'delete_file_set', 'Delete File Set', 0, 0, 'Can delete file set.', 5, 0),
(46, 'delete_file_set_files', 'Delete File', 0, 0, 'Can delete files in set.', 5, 0),
(47, 'add_file', 'Add File', 0, 1, 'Can add files to set.', 5, 0),
(48, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 6, 0),
(49, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 6, 0),
(50, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file''s properties.', 6, 0),
(51, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 6, 0),
(52, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 6, 0),
(53, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 6, 0),
(54, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 6, 0),
(55, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 13, 0),
(56, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 13, 0),
(57, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 13, 0),
(58, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 13, 0),
(59, 'add_page_type', 'Add Pages of This Type', 0, 0, '', 14, 0),
(60, 'edit_page_type', 'Edit Page Type', 0, 0, '', 14, 0),
(61, 'delete_page_type', 'Delete Page Type', 0, 0, '', 14, 0),
(62, 'edit_page_type_permissions', 'Edit Page Type Permissions', 0, 0, '', 14, 0),
(63, 'edit_page_type_drafts', 'Edit Page Type Drafts', 0, 0, '', 14, 0),
(64, 'view_topic_tree_node', 'View Topic Tree Node', 0, 0, '', 18, 0),
(65, 'view_topic_category_tree_node', 'View Topic Category Tree Node', 0, 0, '', 17, 0),
(66, 'add_conversation_message', 'Add Message to Conversation', 0, 0, '', 19, 0),
(67, 'add_conversation_message_attachments', 'Add Message Attachments', 0, 0, '', 19, 0),
(68, 'edit_conversation_permissions', 'Edit Conversation Permissions', 0, 0, '', 19, 0),
(69, 'delete_conversation_message', 'Delete Message', 0, 0, '', 19, 0),
(70, 'edit_conversation_message', 'Edit Message', 0, 0, '', 19, 0),
(71, 'rate_conversation_message', 'Rate Message', 0, 0, '', 19, 0),
(72, 'flag_conversation_message', 'Flag Message', 0, 0, '', 19, 0),
(73, 'approve_conversation_message', 'Approve Message', 0, 0, '', 19, 0),
(74, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 4, 0),
(75, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 4, 0),
(76, 'activate_user', 'Activate/Deactivate User', 0, 0, NULL, 4, 0),
(77, 'sudo', 'Sign in as User', 0, 0, NULL, 4, 0),
(78, 'upgrade', 'Upgrade concrete5', 0, 0, NULL, 10, 0),
(79, 'access_group_search', 'Access Group Search', 0, 0, NULL, 4, 0),
(80, 'delete_user', 'Delete User', 0, 0, NULL, 4, 0),
(81, 'search_users_in_group', 'Search User Group', 0, 0, NULL, 16, 0),
(82, 'edit_group', 'Edit Group', 0, 0, NULL, 16, 0),
(83, 'assign_group', 'Assign Group', 0, 0, NULL, 16, 0),
(84, 'add_sub_group', 'Add Child Group', 0, 0, NULL, 16, 0),
(85, 'edit_group_permissions', 'Edit Group Permissions', 0, 0, NULL, 16, 0),
(86, 'access_page_type_permissions', 'Access Page Type Permissions', 0, 0, NULL, 10, 0),
(87, 'backup', 'Perform Backups', 0, 0, NULL, 10, 0),
(88, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 10, 0),
(89, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 11, 0),
(90, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 10, 0),
(91, 'customize_themes', 'Customize Themes', 0, 0, NULL, 10, 0),
(92, 'manage_layout_presets', 'Manage Layout Presets', 0, 0, NULL, 10, 0),
(93, 'empty_trash', 'Empty Trash', 0, 0, NULL, 10, 0),
(94, 'add_topic_tree', 'Add Topic Tree', 0, 0, NULL, 10, 0),
(95, 'remove_topic_tree', 'Remove Topic Tree', 0, 0, NULL, 10, 0),
(96, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 12, 0),
(97, 'install_packages', 'Install Packages', 0, 0, NULL, 12, 0),
(98, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 12, 0),
(99, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 4, 0),
(100, 'access_user_search', 'Access User Search', 0, 0, 'Controls whether a user can view the search user interface.', 4, 0),
(101, 'edit_gatherings', 'Edit Gatherings', 0, 0, 'Can edit the footprint and items in all gatherings.', 10, 0),
(102, 'edit_gathering_items', 'Edit Gathering Items', 0, 0, '', 15, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PileContents`
--

CREATE TABLE IF NOT EXISTS `PileContents` (
`pcID` int(10) unsigned NOT NULL,
  `pID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `PileContents`
--

INSERT INTO `PileContents` (`pcID`, `pID`, `itemID`, `itemType`, `quantity`, `timestamp`, `displayOrder`) VALUES
(1, 1, 12, 'BLOCK', 1, '2015-05-11 13:48:19', 1),
(2, 1, 61, 'BLOCK', 1, '2015-05-11 13:56:10', 2),
(3, 1, 264, 'BLOCK', 1, '2015-05-12 17:31:10', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Piles`
--

CREATE TABLE IF NOT EXISTS `Piles` (
`pID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `Piles`
--

INSERT INTO `Piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1, 1, 1, '2015-05-11 10:55:40', NULL, 'READY');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `QueueMessages`
--

CREATE TABLE IF NOT EXISTS `QueueMessages` (
`message_id` int(10) unsigned NOT NULL,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` varchar(8192) COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `QueuePageDuplicationRelations`
--

CREATE TABLE IF NOT EXISTS `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cID` int(10) unsigned NOT NULL DEFAULT '0',
  `originalCID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Queues`
--

CREATE TABLE IF NOT EXISTS `Queues` (
`queue_id` int(10) unsigned NOT NULL,
  `queue_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Sessions`
--

CREATE TABLE IF NOT EXISTS `Sessions` (
  `sessionID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sessionValue` text COLLATE utf8_unicode_ci NOT NULL,
  `sessionTime` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SignupRequests`
--

CREATE TABLE IF NOT EXISTS `SignupRequests` (
`id` int(11) NOT NULL,
  `ipFrom` tinyblob,
  `date_access` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SocialLinks`
--

CREATE TABLE IF NOT EXISTS `SocialLinks` (
`slID` int(10) unsigned NOT NULL,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Stacks`
--

CREATE TABLE IF NOT EXISTS `Stacks` (
`stID` int(10) unsigned NOT NULL,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Gegevens worden geëxporteerd voor tabel `Stacks`
--

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`) VALUES
(1, 'Header Site Title', 20, 143),
(2, 'Header Navigation', 20, 144),
(3, 'Footer Legal', 20, 145),
(4, 'Footer Navigation', 20, 146),
(5, 'Footer Contact', 20, 147),
(6, 'Header Search', 20, 148),
(7, 'Footer Site Title', 20, 149),
(8, 'Footer Social', 20, 150);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `StyleCustomizerCustomCssRecords`
--

CREATE TABLE IF NOT EXISTS `StyleCustomizerCustomCssRecords` (
`sccRecordID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `StyleCustomizerInlineStylePresets`
--

CREATE TABLE IF NOT EXISTS `StyleCustomizerInlineStylePresets` (
`pssPresetID` int(10) unsigned NOT NULL,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `StyleCustomizerInlineStyleSets`
--

CREATE TABLE IF NOT EXISTS `StyleCustomizerInlineStyleSets` (
`issID` int(10) unsigned NOT NULL,
  `backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) DEFAULT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `StyleCustomizerInlineStyleSets`
--

INSERT INTO `StyleCustomizerInlineStyleSets` (`issID`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `borderWidth`, `borderColor`, `borderStyle`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `customClass`) VALUES
(1, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(2, '', 0, 'no-repeat', NULL, '', 'none', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `StyleCustomizerValueLists`
--

CREATE TABLE IF NOT EXISTS `StyleCustomizerValueLists` (
`scvlID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `StyleCustomizerValues`
--

CREATE TABLE IF NOT EXISTS `StyleCustomizerValues` (
`scvID` int(10) unsigned NOT NULL,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SystemAntispamLibraries`
--

CREATE TABLE IF NOT EXISTS `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SystemCaptchaLibraries`
--

CREATE TABLE IF NOT EXISTS `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `SystemCaptchaLibraries`
--

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SystemContentEditorSnippets`
--

CREATE TABLE IF NOT EXISTS `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `SystemContentEditorSnippets`
--

INSERT INTO `SystemContentEditorSnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
('page_name', 'Page Name', 1, 0),
('user_name', 'User Name', 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SystemDatabaseMigrations`
--

CREATE TABLE IF NOT EXISTS `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `SystemDatabaseMigrations`
--

INSERT INTO `SystemDatabaseMigrations` (`version`) VALUES
('20150109000000');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SystemDatabaseQueryLog`
--

CREATE TABLE IF NOT EXISTS `SystemDatabaseQueryLog` (
  `query` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SystemImageEditorComponents`
--

CREATE TABLE IF NOT EXISTS `SystemImageEditorComponents` (
`scsID` int(10) unsigned NOT NULL,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SystemImageEditorControlSets`
--

CREATE TABLE IF NOT EXISTS `SystemImageEditorControlSets` (
`scsID` int(10) unsigned NOT NULL,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `SystemImageEditorControlSets`
--

INSERT INTO `SystemImageEditorControlSets` (`scsID`, `scsHandle`, `scsName`, `scsDisplayOrder`, `pkgID`) VALUES
(1, 'position', 'Position', 0, 0),
(2, 'filter', 'Filter', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SystemImageEditorFilters`
--

CREATE TABLE IF NOT EXISTS `SystemImageEditorFilters` (
`scsID` int(10) unsigned NOT NULL,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Gegevens worden geëxporteerd voor tabel `SystemImageEditorFilters`
--

INSERT INTO `SystemImageEditorFilters` (`scsID`, `scsHandle`, `scsName`, `scsDisplayOrder`, `pkgID`) VALUES
(1, 'none', 'None', 0, 0),
(2, 'grayscale', 'Grayscale', 0, 0),
(3, 'sepia', 'Sepia', 0, 0),
(4, 'gaussian_blur', 'Blur', 0, 0),
(5, 'vignette', 'Vignette', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SystemImageEditorShapes`
--

CREATE TABLE IF NOT EXISTS `SystemImageEditorShapes` (
`scsID` int(10) unsigned NOT NULL,
  `scsHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsName` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `scsDisplayOrder` int(10) unsigned NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TopicTrees`
--

CREATE TABLE IF NOT EXISTS `TopicTrees` (
  `treeID` int(10) unsigned NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeCategoryNodes`
--

CREATE TABLE IF NOT EXISTS `TreeCategoryNodes` (
`treeNodeID` int(10) unsigned NOT NULL,
  `treeNodeCategoryName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeGroupNodes`
--

CREATE TABLE IF NOT EXISTS `TreeGroupNodes` (
`treeNodeID` int(10) unsigned NOT NULL,
  `gID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `TreeGroupNodes`
--

INSERT INTO `TreeGroupNodes` (`treeNodeID`, `gID`) VALUES
(2, 1),
(3, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeNodePermissionAssignments`
--

CREATE TABLE IF NOT EXISTS `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `pkID` int(10) unsigned NOT NULL DEFAULT '0',
  `paID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `TreeNodePermissionAssignments`
--

INSERT INTO `TreeNodePermissionAssignments` (`treeNodeID`, `pkID`, `paID`) VALUES
(1, 81, 60),
(1, 82, 61),
(1, 83, 62),
(1, 84, 63),
(1, 85, 64);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeNodes`
--

CREATE TABLE IF NOT EXISTS `TreeNodes` (
`treeNodeID` int(10) unsigned NOT NULL,
  `treeNodeTypeID` int(10) unsigned DEFAULT '0',
  `treeID` int(10) unsigned DEFAULT '0',
  `treeNodeParentID` int(10) unsigned DEFAULT '0',
  `treeNodeDisplayOrder` int(10) unsigned DEFAULT '0',
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Gegevens worden geëxporteerd voor tabel `TreeNodes`
--

INSERT INTO `TreeNodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
(1, 1, 1, 0, 0, 1, 1),
(2, 1, 1, 1, 0, 0, 1),
(3, 1, 1, 1, 1, 0, 1),
(4, 1, 1, 1, 2, 0, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeNodeTypes`
--

CREATE TABLE IF NOT EXISTS `TreeNodeTypes` (
`treeNodeTypeID` int(10) unsigned NOT NULL,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `TreeNodeTypes`
--

INSERT INTO `TreeNodeTypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'topic_category', 0),
(3, 'topic', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Trees`
--

CREATE TABLE IF NOT EXISTS `Trees` (
`treeID` int(10) unsigned NOT NULL,
  `treeTypeID` int(10) unsigned DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `Trees`
--

INSERT INTO `Trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1, 1, '2015-05-11 11:47:55', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeTopicNodes`
--

CREATE TABLE IF NOT EXISTS `TreeTopicNodes` (
`treeNodeID` int(10) unsigned NOT NULL,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeTypes`
--

CREATE TABLE IF NOT EXISTS `TreeTypes` (
`treeTypeID` int(10) unsigned NOT NULL,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Gegevens worden geëxporteerd voor tabel `TreeTypes`
--

INSERT INTO `TreeTypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'topic', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserAttributeKeys`
--

CREATE TABLE IF NOT EXISTS `UserAttributeKeys` (
  `akID` int(10) unsigned NOT NULL,
  `uakProfileDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakMemberListDisplay` tinyint(1) NOT NULL DEFAULT '0',
  `uakProfileEdit` tinyint(1) NOT NULL DEFAULT '1',
  `uakProfileEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEdit` tinyint(1) NOT NULL DEFAULT '0',
  `uakRegisterEditRequired` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0',
  `uakIsActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `UserAttributeKeys`
--

INSERT INTO `UserAttributeKeys` (`akID`, `uakProfileDisplay`, `uakMemberListDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `displayOrder`, `uakIsActive`) VALUES
(12, 0, 0, 1, 0, 1, 0, 1, 1),
(13, 0, 0, 1, 0, 1, 0, 2, 1),
(16, 0, 0, 0, 0, 0, 0, 3, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserAttributeValues`
--

CREATE TABLE IF NOT EXISTS `UserAttributeValues` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0',
  `avID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserBannedIPs`
--

CREATE TABLE IF NOT EXISTS `UserBannedIPs` (
`id` int(10) unsigned NOT NULL,
  `ipFrom` tinyblob,
  `ipTo` tinyblob,
  `banCode` tinyint(1) NOT NULL DEFAULT '1',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isManual` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserGroups`
--

CREATE TABLE IF NOT EXISTS `UserGroups` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `gID` int(10) unsigned NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserPermissionEditPropertyAccessList`
--

CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserPermissionEditPropertyAttributeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserPermissionViewAttributeAccessList`
--

CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserPermissionViewAttributeAccessListCustom`
--

CREATE TABLE IF NOT EXISTS `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `akID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserPointActions`
--

CREATE TABLE IF NOT EXISTS `UserPointActions` (
`upaID` int(11) NOT NULL,
  `upaHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `UserPointActions`
--

INSERT INTO `UserPointActions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
(1, 'won_badge', 'Won a Badge', 5, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserPointHistory`
--

CREATE TABLE IF NOT EXISTS `UserPointHistory` (
`upID` int(11) NOT NULL,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserPrivateMessages`
--

CREATE TABLE IF NOT EXISTS `UserPrivateMessages` (
`msgID` int(10) unsigned NOT NULL,
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8_unicode_ci,
  `uToID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserPrivateMessagesTo`
--

CREATE TABLE IF NOT EXISTS `UserPrivateMessagesTo` (
  `msgID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `uAuthorID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
`uID` int(10) unsigned NOT NULL,
  `uName` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uIsActive` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uIsFullRecord` tinyint(1) NOT NULL DEFAULT '1',
  `uDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uLastPasswordChange` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uHasAvatar` tinyint(1) NOT NULL DEFAULT '0',
  `uLastOnline` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastLogin` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastIP` tinyblob,
  `uPreviousLogin` int(10) unsigned DEFAULT '0',
  `uNumLogins` int(10) unsigned NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) unsigned NOT NULL DEFAULT '0',
  `uTimezone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `Users`
--

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'glenlauwers@hotmail.com', '$2a$12$UORy4JhqbjSeYxe59cgjWeNPLhzT2A3vIA9QmD8jAoBC.KZG9FsrO', '1', -1, 1, '2015-05-11 11:47:55', '2015-05-11 11:47:55', 0, 1431545383, 1431545068, 0x3766303030303031, 1431544888, 13, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserSearchIndexAttributes`
--

CREATE TABLE IF NOT EXISTS `UserSearchIndexAttributes` (
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `UserValidationHashes`
--

CREATE TABLE IF NOT EXISTS `UserValidationHashes` (
`uvhID` int(10) unsigned NOT NULL,
  `uID` int(10) unsigned DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) unsigned NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `WorkflowProgress`
--

CREATE TABLE IF NOT EXISTS `WorkflowProgress` (
`wpID` int(10) unsigned NOT NULL,
  `wpCategoryID` int(10) unsigned DEFAULT NULL,
  `wfID` int(10) unsigned NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `WorkflowProgressCategories`
--

CREATE TABLE IF NOT EXISTS `WorkflowProgressCategories` (
`wpCategoryID` int(10) unsigned NOT NULL,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Gegevens worden geëxporteerd voor tabel `WorkflowProgressCategories`
--

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `WorkflowProgressHistory`
--

CREATE TABLE IF NOT EXISTS `WorkflowProgressHistory` (
`wphID` int(10) unsigned NOT NULL,
  `wpID` int(10) unsigned NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=127 ;

--
-- Gegevens worden geëxporteerd voor tabel `WorkflowProgressHistory`
--

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2015-05-11 11:33:08', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"1";}'),
(2, 2, '2015-05-11 11:43:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"2";}'),
(3, 3, '2015-05-11 12:04:03', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"4";s:4:"wrID";s:1:"3";}'),
(4, 4, '2015-05-11 12:06:52', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"5";s:4:"wrID";s:1:"4";}'),
(5, 5, '2015-05-11 12:14:53', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"6";s:4:"wrID";s:1:"5";}'),
(6, 6, '2015-05-11 12:20:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"7";s:4:"wrID";s:1:"6";}'),
(7, 7, '2015-05-11 12:49:37', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"8";s:4:"wrID";s:1:"7";}'),
(8, 8, '2015-05-11 12:53:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"9";s:4:"wrID";s:1:"8";}'),
(9, 9, '2015-05-11 13:04:45', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"1";s:4:"wrID";s:1:"9";}'),
(10, 10, '2015-05-11 13:09:19', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"10";}'),
(11, 11, '2015-05-11 13:24:49', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"11";}'),
(12, 12, '2015-05-11 13:31:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"157";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"12";}'),
(13, 13, '2015-05-11 13:33:28', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"157";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"13";}'),
(14, 14, '2015-05-11 13:43:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"157";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"14";}'),
(15, 15, '2015-05-11 13:52:14', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"10";s:4:"wrID";s:2:"15";}'),
(16, 16, '2015-05-11 13:54:58', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"11";s:4:"wrID";s:2:"16";}'),
(17, 17, '2015-05-11 13:56:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"12";s:4:"wrID";s:2:"17";}'),
(18, 18, '2015-05-11 14:00:46', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"18";}'),
(19, 19, '2015-05-11 14:03:15', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"19";}'),
(20, 20, '2015-05-11 14:03:58', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"153";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"20";}'),
(21, 21, '2015-05-11 14:04:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"153";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"21";}'),
(22, 22, '2015-05-11 15:49:42', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"153";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"22";}'),
(23, 23, '2015-05-11 15:53:08', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"23";}'),
(24, 24, '2015-05-11 15:54:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"24";}'),
(25, 25, '2015-05-11 16:06:46', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"13";s:4:"wrID";s:2:"25";}'),
(26, 26, '2015-05-11 16:17:45', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"14";s:4:"wrID";s:2:"26";}'),
(27, 27, '2015-05-11 16:36:38', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"15";s:4:"wrID";s:2:"27";}'),
(28, 28, '2015-05-11 16:38:04', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"15";s:4:"wrID";s:2:"28";}'),
(29, 29, '2015-05-11 18:19:32', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"16";s:4:"wrID";s:2:"29";}'),
(30, 30, '2015-05-12 07:34:08', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"17";s:4:"wrID";s:2:"30";}'),
(31, 31, '2015-05-12 07:34:47', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"18";s:4:"wrID";s:2:"31";}'),
(32, 32, '2015-05-12 07:35:56', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"19";s:4:"wrID";s:2:"32";}'),
(33, 33, '2015-05-12 07:40:51', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"20";s:4:"wrID";s:2:"33";}'),
(34, 34, '2015-05-12 07:42:28', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"21";s:4:"wrID";s:2:"34";}'),
(35, 35, '2015-05-12 07:51:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"22";s:4:"wrID";s:2:"35";}'),
(36, 36, '2015-05-12 07:52:34', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"23";s:4:"wrID";s:2:"36";}'),
(37, 37, '2015-05-12 07:56:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"25";s:4:"wrID";s:2:"37";}'),
(38, 38, '2015-05-12 08:04:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"26";s:4:"wrID";s:2:"38";}'),
(39, 39, '2015-05-12 08:04:32', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"27";s:4:"wrID";s:2:"39";}'),
(40, 40, '2015-05-12 08:05:09', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"28";s:4:"wrID";s:2:"40";}'),
(41, 41, '2015-05-12 08:05:24', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"29";s:4:"wrID";s:2:"41";}'),
(42, 42, '2015-05-12 08:07:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"30";s:4:"wrID";s:2:"42";}'),
(43, 43, '2015-05-12 08:07:59', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"31";s:4:"wrID";s:2:"43";}'),
(44, 44, '2015-05-12 08:09:55', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"32";s:4:"wrID";s:2:"44";}'),
(45, 45, '2015-05-12 08:10:58', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"33";s:4:"wrID";s:2:"45";}'),
(46, 46, '2015-05-12 08:12:24', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"34";s:4:"wrID";s:2:"46";}'),
(47, 47, '2015-05-12 08:13:28', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"35";s:4:"wrID";s:2:"47";}'),
(48, 48, '2015-05-12 08:16:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"36";s:4:"wrID";s:2:"48";}'),
(49, 49, '2015-05-12 08:17:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"38";s:4:"wrID";s:2:"49";}'),
(50, 50, '2015-05-12 08:27:09', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"39";s:4:"wrID";s:2:"50";}'),
(51, 51, '2015-05-12 08:28:43', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"40";s:4:"wrID";s:2:"51";}'),
(52, 52, '2015-05-12 08:49:48', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"41";s:4:"wrID";s:2:"52";}'),
(53, 53, '2015-05-12 08:51:31', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"42";s:4:"wrID";s:2:"53";}'),
(54, 54, '2015-05-12 09:23:59', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"54";}'),
(55, 55, '2015-05-12 09:29:41', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"152";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"55";}'),
(56, 56, '2015-05-12 09:31:10', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"152";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"56";}'),
(57, 57, '2015-05-12 09:31:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"57";}'),
(58, 58, '2015-05-12 09:32:04', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"163";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"58";}'),
(59, 59, '2015-05-12 09:32:27', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"163";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"59";}'),
(60, 60, '2015-05-12 09:32:41', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"60";}'),
(61, 61, '2015-05-12 09:33:03', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"61";}'),
(62, 62, '2015-05-12 09:33:49', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"62";}'),
(63, 63, '2015-05-12 09:37:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"63";}'),
(64, 64, '2015-05-12 09:38:53', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"7";s:4:"wrID";s:2:"64";}'),
(65, 65, '2015-05-12 09:42:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"8";s:4:"wrID";s:2:"65";}'),
(66, 66, '2015-05-12 10:00:35', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"152";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"66";}'),
(67, 67, '2015-05-12 10:05:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"152";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"67";}'),
(68, 68, '2015-05-12 15:47:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"68";}'),
(69, 69, '2015-05-12 15:48:57', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"69";}'),
(70, 70, '2015-05-12 15:49:58', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"70";}'),
(71, 71, '2015-05-12 15:52:57', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"71";}'),
(72, 72, '2015-05-12 15:59:23', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"163";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"72";}'),
(73, 73, '2015-05-12 16:02:53', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"153";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"73";}'),
(74, 74, '2015-05-12 16:05:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"164";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"74";}'),
(75, 75, '2015-05-12 16:05:59', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"165";s:4:"cvID";s:1:"1";s:4:"wrID";s:2:"75";}'),
(76, 76, '2015-05-12 16:07:08', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"153";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"76";}'),
(77, 77, '2015-05-12 16:08:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"153";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"77";}'),
(78, 78, '2015-05-12 16:24:27', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"78";}'),
(79, 79, '2015-05-12 16:30:58', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:1:"9";s:4:"wrID";s:2:"79";}'),
(80, 80, '2015-05-12 16:31:45', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"153";s:4:"cvID";s:1:"7";s:4:"wrID";s:2:"80";}'),
(81, 81, '2015-05-12 16:34:01', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"81";}'),
(82, 82, '2015-05-12 16:36:59', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"6";s:4:"wrID";s:2:"82";}'),
(83, 83, '2015-05-12 16:39:38', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"7";s:4:"wrID";s:2:"83";}'),
(84, 84, '2015-05-12 16:50:20', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"8";s:4:"wrID";s:2:"84";}'),
(85, 85, '2015-05-12 16:51:30', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:1:"9";s:4:"wrID";s:2:"85";}'),
(86, 86, '2015-05-12 16:54:08', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:2:"10";s:4:"wrID";s:2:"86";}'),
(87, 87, '2015-05-12 16:55:48', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:2:"11";s:4:"wrID";s:2:"87";}'),
(88, 88, '2015-05-12 16:57:40', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:2:"12";s:4:"wrID";s:2:"88";}'),
(89, 89, '2015-05-12 17:07:31', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:2:"13";s:4:"wrID";s:2:"89";}'),
(90, 90, '2015-05-12 17:09:20', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:2:"14";s:4:"wrID";s:2:"90";}'),
(91, 91, '2015-05-12 17:10:30', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:2:"15";s:4:"wrID";s:2:"91";}'),
(92, 92, '2015-05-12 17:17:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"164";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"92";}'),
(93, 93, '2015-05-12 17:17:57', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"164";s:4:"cvID";s:1:"3";s:4:"wrID";s:2:"93";}'),
(94, 94, '2015-05-12 17:19:09', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"164";s:4:"cvID";s:1:"4";s:4:"wrID";s:2:"94";}'),
(95, 95, '2015-05-12 17:19:38', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:2:"16";s:4:"wrID";s:2:"95";}'),
(96, 96, '2015-05-12 17:22:35', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"165";s:4:"cvID";s:1:"2";s:4:"wrID";s:2:"96";}'),
(97, 97, '2015-05-12 17:25:36', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:2:"17";s:4:"wrID";s:2:"97";}'),
(98, 98, '2015-05-12 17:28:31', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"154";s:4:"cvID";s:2:"18";s:4:"wrID";s:2:"98";}'),
(99, 99, '2015-05-12 17:30:47', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"164";s:4:"cvID";s:1:"5";s:4:"wrID";s:2:"99";}'),
(100, 100, '2015-05-12 17:31:22', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"165";s:4:"cvID";s:1:"3";s:4:"wrID";s:3:"100";}'),
(101, 101, '2015-05-12 18:37:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"157";s:4:"cvID";s:1:"4";s:4:"wrID";s:3:"101";}'),
(102, 102, '2015-05-12 18:38:50', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"157";s:4:"cvID";s:1:"5";s:4:"wrID";s:3:"102";}'),
(103, 103, '2015-05-12 18:40:45', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"157";s:4:"cvID";s:1:"6";s:4:"wrID";s:3:"103";}'),
(104, 104, '2015-05-12 18:41:50', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"157";s:4:"cvID";s:1:"7";s:4:"wrID";s:3:"104";}'),
(105, 105, '2015-05-12 18:44:31', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"157";s:4:"cvID";s:1:"8";s:4:"wrID";s:3:"105";}'),
(106, 106, '2015-05-12 18:47:10', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"43";s:4:"wrID";s:3:"106";}'),
(107, 107, '2015-05-12 18:49:49', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"44";s:4:"wrID";s:3:"107";}'),
(108, 108, '2015-05-12 18:50:56', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"45";s:4:"wrID";s:3:"108";}'),
(109, 109, '2015-05-12 18:54:06', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"46";s:4:"wrID";s:3:"109";}'),
(110, 110, '2015-05-12 18:56:24', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"47";s:4:"wrID";s:3:"110";}'),
(111, 111, '2015-05-12 18:56:47', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"48";s:4:"wrID";s:3:"111";}'),
(112, 112, '2015-05-12 18:57:17', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"49";s:4:"wrID";s:3:"112";}'),
(113, 113, '2015-05-12 19:04:21', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"4";s:4:"wrID";s:3:"113";}'),
(114, 114, '2015-05-12 19:05:21', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"5";s:4:"wrID";s:3:"114";}'),
(115, 115, '2015-05-12 19:05:37', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"6";s:4:"wrID";s:3:"115";}'),
(116, 116, '2015-05-12 19:06:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"7";s:4:"wrID";s:3:"116";}'),
(117, 117, '2015-05-12 19:06:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"8";s:4:"wrID";s:3:"117";}'),
(118, 118, '2015-05-12 19:08:34', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"155";s:4:"cvID";s:1:"9";s:4:"wrID";s:3:"118";}'),
(119, 1, '2015-05-13 19:22:24', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"159";s:4:"cvID";s:2:"10";s:4:"wrID";s:1:"1";}'),
(120, 2, '2015-05-13 19:24:59', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:1:"7";s:4:"wrID";s:1:"2";}'),
(121, 3, '2015-05-13 19:27:25', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:1:"8";s:4:"wrID";s:1:"3";}'),
(122, 4, '2015-05-13 19:28:43', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:1:"9";s:4:"wrID";s:1:"4";}'),
(123, 5, '2015-05-13 19:29:34', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:2:"10";s:4:"wrID";s:1:"5";}'),
(124, 6, '2015-05-13 19:29:56', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:2:"11";s:4:"wrID";s:1:"6";}'),
(125, 7, '2015-05-13 19:30:31', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:2:"12";s:4:"wrID";s:1:"7";}'),
(126, 8, '2015-05-13 19:31:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:3:"151";s:4:"cvID";s:2:"13";s:4:"wrID";s:1:"8";}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `WorkflowRequestObjects`
--

CREATE TABLE IF NOT EXISTS `WorkflowRequestObjects` (
`wrID` int(10) unsigned NOT NULL,
  `wrObject` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Workflows`
--

CREATE TABLE IF NOT EXISTS `Workflows` (
`wfID` int(10) unsigned NOT NULL,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `WorkflowTypes`
--

CREATE TABLE IF NOT EXISTS `WorkflowTypes` (
`wftID` int(10) unsigned NOT NULL,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Gegevens worden geëxporteerd voor tabel `WorkflowTypes`
--

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
 ADD PRIMARY KEY (`arLayoutColumnID`), ADD KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`), ADD KEY `arID` (`arID`), ADD KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`);

--
-- Indexen voor tabel `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
 ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexen voor tabel `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
 ADD PRIMARY KEY (`arLayoutPresetID`), ADD KEY `arLayoutID` (`arLayoutID`), ADD KEY `arLayoutPresetName` (`arLayoutPresetName`);

--
-- Indexen voor tabel `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
 ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexen voor tabel `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
 ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexen voor tabel `AreaPermissionAssignments`
--
ALTER TABLE `AreaPermissionAssignments`
 ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`), ADD KEY `paID` (`paID`), ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `AreaPermissionBlockTypeAccessList`
--
ALTER TABLE `AreaPermissionBlockTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `AreaPermissionBlockTypeAccessListCustom`
--
ALTER TABLE `AreaPermissionBlockTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`btID`), ADD KEY `peID` (`peID`), ADD KEY `btID` (`btID`);

--
-- Indexen voor tabel `Areas`
--
ALTER TABLE `Areas`
 ADD PRIMARY KEY (`arID`), ADD KEY `arIsGlobal` (`arIsGlobal`), ADD KEY `cID` (`cID`), ADD KEY `arHandle` (`arHandle`), ADD KEY `arParentID` (`arParentID`);

--
-- Indexen voor tabel `atAddress`
--
ALTER TABLE `atAddress`
 ADD PRIMARY KEY (`avID`);

--
-- Indexen voor tabel `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
 ADD PRIMARY KEY (`atAddressCustomCountryID`), ADD KEY `akID` (`akID`);

--
-- Indexen voor tabel `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexen voor tabel `atBoolean`
--
ALTER TABLE `atBoolean`
 ADD PRIMARY KEY (`avID`);

--
-- Indexen voor tabel `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexen voor tabel `atDateTime`
--
ALTER TABLE `atDateTime`
 ADD PRIMARY KEY (`avID`);

--
-- Indexen voor tabel `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexen voor tabel `atDefault`
--
ALTER TABLE `atDefault`
 ADD PRIMARY KEY (`avID`);

--
-- Indexen voor tabel `atFile`
--
ALTER TABLE `atFile`
 ADD PRIMARY KEY (`avID`), ADD KEY `fID` (`fID`);

--
-- Indexen voor tabel `atNumber`
--
ALTER TABLE `atNumber`
 ADD PRIMARY KEY (`avID`);

--
-- Indexen voor tabel `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
 ADD PRIMARY KEY (`avID`,`TopicNodeID`), ADD KEY `TopicNodeID` (`TopicNodeID`);

--
-- Indexen voor tabel `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
 ADD PRIMARY KEY (`ID`), ADD KEY `akID` (`akID`,`displayOrder`), ADD KEY `value` (`value`);

--
-- Indexen voor tabel `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
 ADD PRIMARY KEY (`avID`,`atSelectOptionID`), ADD KEY `atSelectOptionID` (`atSelectOptionID`);

--
-- Indexen voor tabel `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexen voor tabel `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
 ADD PRIMARY KEY (`avsID`), ADD KEY `avID` (`avID`,`avsID`);

--
-- Indexen voor tabel `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
 ADD PRIMARY KEY (`akID`);

--
-- Indexen voor tabel `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
 ADD PRIMARY KEY (`akID`), ADD KEY `akTopicTreeID` (`akTopicTreeID`);

--
-- Indexen voor tabel `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
 ADD PRIMARY KEY (`akCategoryID`), ADD KEY `akCategoryHandle` (`akCategoryHandle`), ADD KEY `pkgID` (`pkgID`,`akCategoryID`);

--
-- Indexen voor tabel `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
 ADD PRIMARY KEY (`akID`), ADD UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`), ADD KEY `akCategoryID` (`akCategoryID`), ADD KEY `atID` (`atID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
 ADD PRIMARY KEY (`akID`,`asID`), ADD KEY `asID` (`asID`,`displayOrder`);

--
-- Indexen voor tabel `AttributeSets`
--
ALTER TABLE `AttributeSets`
 ADD PRIMARY KEY (`asID`), ADD UNIQUE KEY `asHandle` (`asHandle`), ADD KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`), ADD KEY `pkgID` (`pkgID`,`asID`);

--
-- Indexen voor tabel `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
 ADD PRIMARY KEY (`atID`,`akCategoryID`), ADD KEY `akCategoryID` (`akCategoryID`);

--
-- Indexen voor tabel `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
 ADD PRIMARY KEY (`atID`), ADD UNIQUE KEY `atHandle` (`atHandle`), ADD KEY `pkgID` (`pkgID`,`atID`);

--
-- Indexen voor tabel `AttributeValues`
--
ALTER TABLE `AttributeValues`
 ADD PRIMARY KEY (`avID`), ADD KEY `akID` (`akID`), ADD KEY `uID` (`uID`), ADD KEY `atID` (`atID`);

--
-- Indexen voor tabel `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
 ADD PRIMARY KEY (`authTypeID`), ADD UNIQUE KEY `authTypeHandle` (`authTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `token` (`token`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `BannedWords`
--
ALTER TABLE `BannedWords`
 ADD PRIMARY KEY (`bwID`);

--
-- Indexen voor tabel `BasicWorkflowPermissionAssignments`
--
ALTER TABLE `BasicWorkflowPermissionAssignments`
 ADD PRIMARY KEY (`wfID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `BasicWorkflowProgressData`
--
ALTER TABLE `BasicWorkflowProgressData`
 ADD PRIMARY KEY (`wpID`), ADD KEY `uIDStarted` (`uIDStarted`), ADD KEY `uIDCompleted` (`uIDCompleted`);

--
-- Indexen voor tabel `BlockFeatureAssignments`
--
ALTER TABLE `BlockFeatureAssignments`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`), ADD KEY `faID` (`faID`,`cID`,`cvID`), ADD KEY `bID` (`bID`);

--
-- Indexen voor tabel `BlockPermissionAssignments`
--
ALTER TABLE `BlockPermissionAssignments`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`), ADD KEY `bID` (`bID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `BlockRelations`
--
ALTER TABLE `BlockRelations`
 ADD PRIMARY KEY (`brID`), ADD KEY `bID` (`bID`), ADD KEY `originalBID` (`originalBID`);

--
-- Indexen voor tabel `Blocks`
--
ALTER TABLE `Blocks`
 ADD PRIMARY KEY (`bID`), ADD KEY `btID` (`btID`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `BlockTypePermissionBlockTypeAccessList`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `BlockTypePermissionBlockTypeAccessListCustom`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`btID`), ADD KEY `peID` (`peID`), ADD KEY `btID` (`btID`);

--
-- Indexen voor tabel `BlockTypes`
--
ALTER TABLE `BlockTypes`
 ADD PRIMARY KEY (`btID`), ADD UNIQUE KEY `btHandle` (`btHandle`), ADD KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `BlockTypeSetBlockTypes`
--
ALTER TABLE `BlockTypeSetBlockTypes`
 ADD PRIMARY KEY (`btID`,`btsID`), ADD KEY `btsID` (`btsID`,`displayOrder`);

--
-- Indexen voor tabel `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
 ADD PRIMARY KEY (`btsID`), ADD UNIQUE KEY `btsHandle` (`btsHandle`), ADD KEY `btsDisplayOrder` (`btsDisplayOrder`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `btContentFile`
--
ALTER TABLE `btContentFile`
 ADD PRIMARY KEY (`bID`), ADD KEY `fID` (`fID`);

--
-- Indexen voor tabel `btContentImage`
--
ALTER TABLE `btContentImage`
 ADD PRIMARY KEY (`bID`), ADD KEY `fID` (`fID`);

--
-- Indexen voor tabel `btContentLocal`
--
ALTER TABLE `btContentLocal`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btCoreAreaLayout`
--
ALTER TABLE `btCoreAreaLayout`
 ADD PRIMARY KEY (`bID`), ADD KEY `arLayoutID` (`arLayoutID`);

--
-- Indexen voor tabel `btCoreConversation`
--
ALTER TABLE `btCoreConversation`
 ADD PRIMARY KEY (`bID`), ADD KEY `cnvID` (`cnvID`);

--
-- Indexen voor tabel `btCorePageTypeComposerControlOutput`
--
ALTER TABLE `btCorePageTypeComposerControlOutput`
 ADD PRIMARY KEY (`bID`), ADD KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`);

--
-- Indexen voor tabel `btCoreScrapbookDisplay`
--
ALTER TABLE `btCoreScrapbookDisplay`
 ADD PRIMARY KEY (`bID`), ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indexen voor tabel `btCoreStackDisplay`
--
ALTER TABLE `btCoreStackDisplay`
 ADD PRIMARY KEY (`bID`), ADD KEY `stID` (`stID`);

--
-- Indexen voor tabel `btDashboardNewsflowLatest`
--
ALTER TABLE `btDashboardNewsflowLatest`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btDateNavigation`
--
ALTER TABLE `btDateNavigation`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btExternalForm`
--
ALTER TABLE `btExternalForm`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btFaq`
--
ALTER TABLE `btFaq`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
 ADD PRIMARY KEY (`id`), ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Indexen voor tabel `btFeature`
--
ALTER TABLE `btFeature`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btForm`
--
ALTER TABLE `btForm`
 ADD PRIMARY KEY (`bID`), ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indexen voor tabel `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
 ADD PRIMARY KEY (`aID`), ADD KEY `asID` (`asID`), ADD KEY `msqID` (`msqID`);

--
-- Indexen voor tabel `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
 ADD PRIMARY KEY (`asID`), ADD KEY `questionSetId` (`questionSetId`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
 ADD PRIMARY KEY (`qID`), ADD KEY `questionSetId` (`questionSetId`), ADD KEY `msqID` (`msqID`), ADD KEY `bID` (`bID`,`questionSetId`);

--
-- Indexen voor tabel `btGoogleMap`
--
ALTER TABLE `btGoogleMap`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btImageSlider`
--
ALTER TABLE `btImageSlider`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
 ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `btNavigation`
--
ALTER TABLE `btNavigation`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btNextPrevious`
--
ALTER TABLE `btNextPrevious`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btPageAttributeDisplay`
--
ALTER TABLE `btPageAttributeDisplay`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btPageList`
--
ALTER TABLE `btPageList`
 ADD PRIMARY KEY (`bID`), ADD KEY `ptID` (`ptID`);

--
-- Indexen voor tabel `btPageTitle`
--
ALTER TABLE `btPageTitle`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btRssDisplay`
--
ALTER TABLE `btRssDisplay`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btSearch`
--
ALTER TABLE `btSearch`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
 ADD PRIMARY KEY (`btShareThisPageID`);

--
-- Indexen voor tabel `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
 ADD PRIMARY KEY (`btSocialLinkID`), ADD KEY `bID` (`bID`,`displayOrder`), ADD KEY `slID` (`slID`);

--
-- Indexen voor tabel `btSurvey`
--
ALTER TABLE `btSurvey`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
 ADD PRIMARY KEY (`optionID`), ADD KEY `bID` (`bID`,`displayOrder`);

--
-- Indexen voor tabel `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
 ADD PRIMARY KEY (`resultID`), ADD KEY `optionID` (`optionID`), ADD KEY `cID` (`cID`,`optionID`,`bID`), ADD KEY `bID` (`bID`,`cID`,`uID`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `btSwitchLanguage`
--
ALTER TABLE `btSwitchLanguage`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btTags`
--
ALTER TABLE `btTags`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btTestimonial`
--
ALTER TABLE `btTestimonial`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btTopicList`
--
ALTER TABLE `btTopicList`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btVideo`
--
ALTER TABLE `btVideo`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btYouTube`
--
ALTER TABLE `btYouTube`
 ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
 ADD PRIMARY KEY (`cID`,`cvID`,`akID`), ADD KEY `akID` (`akID`), ADD KEY `avID` (`avID`);

--
-- Indexen voor tabel `Collections`
--
ALTER TABLE `Collections`
 ADD PRIMARY KEY (`cID`), ADD KEY `cIDDateModified` (`cID`,`cDateModified`), ADD KEY `cDateModified` (`cDateModified`), ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indexen voor tabel `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
 ADD PRIMARY KEY (`cID`);

--
-- Indexen voor tabel `CollectionVersionAreaStyles`
--
ALTER TABLE `CollectionVersionAreaStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`), ADD KEY `issID` (`issID`);

--
-- Indexen voor tabel `CollectionVersionBlocks`
--
ALTER TABLE `CollectionVersionBlocks`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `bID` (`bID`,`cID`);

--
-- Indexen voor tabel `CollectionVersionBlocksCacheSettings`
--
ALTER TABLE `CollectionVersionBlocksCacheSettings`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexen voor tabel `CollectionVersionBlocksOutputCache`
--
ALTER TABLE `CollectionVersionBlocksOutputCache`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexen voor tabel `CollectionVersionBlockStyles`
--
ALTER TABLE `CollectionVersionBlockStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`), ADD KEY `bID` (`bID`,`issID`), ADD KEY `issID` (`issID`);

--
-- Indexen voor tabel `CollectionVersionFeatureAssignments`
--
ALTER TABLE `CollectionVersionFeatureAssignments`
 ADD PRIMARY KEY (`cID`,`cvID`,`faID`), ADD KEY `faID` (`faID`);

--
-- Indexen voor tabel `CollectionVersionRelatedEdits`
--
ALTER TABLE `CollectionVersionRelatedEdits`
 ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indexen voor tabel `CollectionVersions`
--
ALTER TABLE `CollectionVersions`
 ADD PRIMARY KEY (`cID`,`cvID`), ADD KEY `cvIsApproved` (`cvIsApproved`), ADD KEY `cvAuthorUID` (`cvAuthorUID`), ADD KEY `cvApproverUID` (`cvApproverUID`), ADD KEY `pThemeID` (`pThemeID`), ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexen voor tabel `CollectionVersionThemeCustomStyles`
--
ALTER TABLE `CollectionVersionThemeCustomStyles`
 ADD PRIMARY KEY (`cID`,`cvID`,`pThemeID`), ADD KEY `pThemeID` (`pThemeID`), ADD KEY `scvlID` (`scvlID`), ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexen voor tabel `Config`
--
ALTER TABLE `Config`
 ADD PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`), ADD KEY `configGroup` (`configGroup`);

--
-- Indexen voor tabel `ConfigStore`
--
ALTER TABLE `ConfigStore`
 ADD PRIMARY KEY (`cfKey`,`uID`), ADD KEY `uID` (`uID`,`cfKey`), ADD KEY `pkgID` (`pkgID`,`cfKey`);

--
-- Indexen voor tabel `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
 ADD PRIMARY KEY (`cnvDiscussionID`), ADD KEY `cID` (`cID`);

--
-- Indexen voor tabel `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
 ADD PRIMARY KEY (`cnvEditorID`), ADD KEY `pkgID` (`pkgID`,`cnvEditorHandle`);

--
-- Indexen voor tabel `ConversationFeatureDetailAssignments`
--
ALTER TABLE `ConversationFeatureDetailAssignments`
 ADD PRIMARY KEY (`faID`), ADD KEY `cnvID` (`cnvID`);

--
-- Indexen voor tabel `ConversationFlaggedMessages`
--
ALTER TABLE `ConversationFlaggedMessages`
 ADD PRIMARY KEY (`cnvMessageID`), ADD KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`);

--
-- Indexen voor tabel `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
 ADD PRIMARY KEY (`cnvMessageFlagTypeID`), ADD UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`);

--
-- Indexen voor tabel `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
 ADD PRIMARY KEY (`cnvMessageAttachmentID`), ADD KEY `cnvMessageID` (`cnvMessageID`), ADD KEY `fID` (`fID`);

--
-- Indexen voor tabel `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
 ADD PRIMARY KEY (`cnvMessageRatingID`), ADD KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`), ADD KEY `cnvRatingTypeID` (`cnvRatingTypeID`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
 ADD PRIMARY KEY (`cnvMessageID`), ADD KEY `cnvID` (`cnvID`), ADD KEY `cnvMessageParentID` (`cnvMessageParentID`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `ConversationPermissionAssignments`
--
ALTER TABLE `ConversationPermissionAssignments`
 ADD PRIMARY KEY (`cnvID`,`pkID`,`paID`), ADD KEY `paID` (`paID`), ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
 ADD PRIMARY KEY (`cnvRatingTypeID`), ADD UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`), ADD KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`);

--
-- Indexen voor tabel `Conversations`
--
ALTER TABLE `Conversations`
 ADD PRIMARY KEY (`cnvID`), ADD KEY `cID` (`cID`), ADD KEY `cnvParentMessageID` (`cnvParentMessageID`);

--
-- Indexen voor tabel `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
 ADD PRIMARY KEY (`dsID`), ADD KEY `fID` (`fID`,`timestamp`), ADD KEY `fvID` (`fID`,`fvID`), ADD KEY `uID` (`uID`), ADD KEY `rcID` (`rcID`), ADD KEY `timestamp` (`timestamp`);

--
-- Indexen voor tabel `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
 ADD PRIMARY KEY (`faID`), ADD KEY `feID` (`feID`), ADD KEY `fcID` (`fcID`);

--
-- Indexen voor tabel `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
 ADD PRIMARY KEY (`fcID`), ADD UNIQUE KEY `fcHandle` (`fcHandle`), ADD KEY `pkgID` (`pkgID`,`fcID`);

--
-- Indexen voor tabel `Features`
--
ALTER TABLE `Features`
 ADD PRIMARY KEY (`feID`), ADD UNIQUE KEY `feHandle` (`feHandle`), ADD KEY `pkgID` (`pkgID`,`feID`);

--
-- Indexen voor tabel `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
 ADD PRIMARY KEY (`fID`,`fvID`,`akID`), ADD KEY `akID` (`akID`), ADD KEY `avID` (`avID`);

--
-- Indexen voor tabel `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
 ADD PRIMARY KEY (`ftTypeID`);

--
-- Indexen voor tabel `FilePermissionAssignments`
--
ALTER TABLE `FilePermissionAssignments`
 ADD PRIMARY KEY (`fID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `FilePermissionFileTypes`
--
ALTER TABLE `FilePermissionFileTypes`
 ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`), ADD KEY `gID` (`gID`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `Files`
--
ALTER TABLE `Files`
 ADD PRIMARY KEY (`fID`,`uID`,`fslID`), ADD KEY `uID` (`uID`), ADD KEY `fslID` (`fslID`), ADD KEY `ocID` (`ocID`), ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indexen voor tabel `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
 ADD PRIMARY KEY (`fID`);

--
-- Indexen voor tabel `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
 ADD PRIMARY KEY (`fsfID`), ADD KEY `fID` (`fID`), ADD KEY `fsID` (`fsID`);

--
-- Indexen voor tabel `FileSetPermissionAssignments`
--
ALTER TABLE `FileSetPermissionAssignments`
 ADD PRIMARY KEY (`fsID`,`pkID`,`paID`), ADD KEY `paID` (`paID`), ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `FileSetPermissionFileTypeAccessList`
--
ALTER TABLE `FileSetPermissionFileTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `FileSetPermissionFileTypeAccessListCustom`
--
ALTER TABLE `FileSetPermissionFileTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`extension`), ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `FileSets`
--
ALTER TABLE `FileSets`
 ADD PRIMARY KEY (`fsID`), ADD KEY `uID` (`uID`,`fsType`,`fsName`), ADD KEY `fsName` (`fsName`), ADD KEY `fsType` (`fsType`);

--
-- Indexen voor tabel `FileSetSavedSearches`
--
ALTER TABLE `FileSetSavedSearches`
 ADD PRIMARY KEY (`fsID`);

--
-- Indexen voor tabel `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
 ADD PRIMARY KEY (`fslID`);

--
-- Indexen voor tabel `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
 ADD PRIMARY KEY (`fslTypeID`), ADD UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
 ADD PRIMARY KEY (`fvlID`), ADD KEY `fvID` (`fID`,`fvID`,`fvlID`);

--
-- Indexen voor tabel `FileVersions`
--
ALTER TABLE `FileVersions`
 ADD PRIMARY KEY (`fID`,`fvID`), ADD KEY `fvExtension` (`fvExtension`), ADD KEY `fvType` (`fvType`), ADD KEY `fvFilename` (`fvFilename`);

--
-- Indexen voor tabel `gaPage`
--
ALTER TABLE `gaPage`
 ADD PRIMARY KEY (`gaiID`), ADD KEY `cID` (`cID`);

--
-- Indexen voor tabel `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
 ADD PRIMARY KEY (`gcsID`), ADD KEY `gaID` (`gaID`), ADD KEY `gasID` (`gasID`);

--
-- Indexen voor tabel `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
 ADD PRIMARY KEY (`gasID`), ADD UNIQUE KEY `gasHandle` (`gasHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
 ADD PRIMARY KEY (`gafaID`), ADD KEY `gaiID` (`gaiID`,`faID`), ADD KEY `faID` (`faID`);

--
-- Indexen voor tabel `GatheringItems`
--
ALTER TABLE `GatheringItems`
 ADD PRIMARY KEY (`gaiID`), ADD UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`), ADD KEY `gaID` (`gaID`,`gaiBatchTimestamp`), ADD KEY `gasID` (`gasID`);

--
-- Indexen voor tabel `GatheringItemSelectedTemplates`
--
ALTER TABLE `GatheringItemSelectedTemplates`
 ADD PRIMARY KEY (`gaiID`,`gatID`), ADD UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`), ADD KEY `gatTypeID` (`gatTypeID`), ADD KEY `gatID` (`gatID`);

--
-- Indexen voor tabel `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
 ADD PRIMARY KEY (`gfeID`), ADD KEY `gatID` (`gatID`), ADD KEY `feID` (`feID`,`gatID`);

--
-- Indexen voor tabel `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
 ADD PRIMARY KEY (`gatID`), ADD UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`), ADD KEY `gatTypeID` (`gatTypeID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
 ADD PRIMARY KEY (`gatTypeID`), ADD UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `GatheringPermissionAssignments`
--
ALTER TABLE `GatheringPermissionAssignments`
 ADD PRIMARY KEY (`gaID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `Gatherings`
--
ALTER TABLE `Gatherings`
 ADD PRIMARY KEY (`gaID`), ADD KEY `gaDateLastUpdated` (`gaDateLastUpdated`);

--
-- Indexen voor tabel `Groups`
--
ALTER TABLE `Groups`
 ADD PRIMARY KEY (`gID`), ADD KEY `gName` (`gName`), ADD KEY `gBadgeFID` (`gBadgeFID`), ADD KEY `pkgID` (`pkgID`), ADD KEY `gPath` (`gPath`(255));

--
-- Indexen voor tabel `GroupSetGroups`
--
ALTER TABLE `GroupSetGroups`
 ADD PRIMARY KEY (`gID`,`gsID`), ADD KEY `gsID` (`gsID`);

--
-- Indexen voor tabel `GroupSets`
--
ALTER TABLE `GroupSets`
 ADD PRIMARY KEY (`gsID`), ADD KEY `gsName` (`gsName`), ADD KEY `pkgID` (`pkgID`,`gsID`);

--
-- Indexen voor tabel `Jobs`
--
ALTER TABLE `Jobs`
 ADD PRIMARY KEY (`jID`), ADD UNIQUE KEY `jHandle` (`jHandle`), ADD KEY `pkgID` (`pkgID`), ADD KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`), ADD KEY `jDateLastRun` (`jDateLastRun`,`jID`);

--
-- Indexen voor tabel `JobSetJobs`
--
ALTER TABLE `JobSetJobs`
 ADD PRIMARY KEY (`jsID`,`jID`), ADD KEY `jID` (`jID`);

--
-- Indexen voor tabel `JobSets`
--
ALTER TABLE `JobSets`
 ADD PRIMARY KEY (`jsID`), ADD KEY `pkgID` (`pkgID`), ADD KEY `jsName` (`jsName`);

--
-- Indexen voor tabel `JobsLog`
--
ALTER TABLE `JobsLog`
 ADD PRIMARY KEY (`jlID`), ADD KEY `jID` (`jID`);

--
-- Indexen voor tabel `Logs`
--
ALTER TABLE `Logs`
 ADD PRIMARY KEY (`logID`), ADD KEY `channel` (`channel`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `MailImporters`
--
ALTER TABLE `MailImporters`
 ADD PRIMARY KEY (`miID`), ADD UNIQUE KEY `miHandle` (`miHandle`), ADD KEY `pkgID` (`pkgID`,`miID`);

--
-- Indexen voor tabel `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
 ADD PRIMARY KEY (`mvhID`), ADD UNIQUE KEY `mHash` (`mHash`), ADD KEY `miID` (`miID`);

--
-- Indexen voor tabel `MultilingualPageRelations`
--
ALTER TABLE `MultilingualPageRelations`
 ADD PRIMARY KEY (`mpRelationID`,`cID`,`mpLocale`);

--
-- Indexen voor tabel `MultilingualSections`
--
ALTER TABLE `MultilingualSections`
 ADD PRIMARY KEY (`cID`);

--
-- Indexen voor tabel `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
 ADD PRIMARY KEY (`mtID`);

--
-- Indexen voor tabel `OauthUserMap`
--
ALTER TABLE `OauthUserMap`
 ADD PRIMARY KEY (`user_id`,`namespace`), ADD UNIQUE KEY `oauth_binding` (`binding`,`namespace`);

--
-- Indexen voor tabel `Packages`
--
ALTER TABLE `Packages`
 ADD PRIMARY KEY (`pkgID`), ADD UNIQUE KEY `pkgHandle` (`pkgHandle`);

--
-- Indexen voor tabel `PageFeeds`
--
ALTER TABLE `PageFeeds`
 ADD PRIMARY KEY (`pfID`), ADD UNIQUE KEY `pfHandle` (`pfHandle`);

--
-- Indexen voor tabel `PagePaths`
--
ALTER TABLE `PagePaths`
 ADD PRIMARY KEY (`ppID`), ADD KEY `cID` (`cID`), ADD KEY `ppIsCanonical` (`ppIsCanonical`), ADD KEY `cPath` (`cPath`(255));

--
-- Indexen voor tabel `PagePermissionAssignments`
--
ALTER TABLE `PagePermissionAssignments`
 ADD PRIMARY KEY (`cID`,`pkID`,`paID`), ADD KEY `paID` (`paID`,`pkID`), ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `PagePermissionPageTypeAccessList`
--
ALTER TABLE `PagePermissionPageTypeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `PagePermissionPageTypeAccessListCustom`
--
ALTER TABLE `PagePermissionPageTypeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`ptID`), ADD KEY `peID` (`peID`), ADD KEY `ptID` (`ptID`);

--
-- Indexen voor tabel `PagePermissionPropertyAccessList`
--
ALTER TABLE `PagePermissionPropertyAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `PagePermissionPropertyAttributeAccessListCustom`
--
ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`), ADD KEY `peID` (`peID`), ADD KEY `akID` (`akID`);

--
-- Indexen voor tabel `PagePermissionThemeAccessList`
--
ALTER TABLE `PagePermissionThemeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `PagePermissionThemeAccessListCustom`
--
ALTER TABLE `PagePermissionThemeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`pThemeID`), ADD KEY `peID` (`peID`), ADD KEY `pThemeID` (`pThemeID`);

--
-- Indexen voor tabel `Pages`
--
ALTER TABLE `Pages`
 ADD PRIMARY KEY (`cID`,`ptID`), ADD KEY `cParentID` (`cParentID`), ADD KEY `cIsActive` (`cID`,`cIsActive`), ADD KEY `cCheckedOutUID` (`cCheckedOutUID`), ADD KEY `uID` (`uID`,`cPointerID`), ADD KEY `cPointerID` (`cPointerID`,`cDisplayOrder`), ADD KEY `cIsTemplate` (`cID`,`cIsTemplate`), ADD KEY `cIsSystemPage` (`cID`,`cIsSystemPage`), ADD KEY `pkgID` (`pkgID`), ADD KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`);

--
-- Indexen voor tabel `PageSearchIndex`
--
ALTER TABLE `PageSearchIndex`
 ADD PRIMARY KEY (`cID`), ADD KEY `cDateLastIndexed` (`cDateLastIndexed`), ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`), ADD KEY `cRequiresReindex` (`cRequiresReindex`), ADD FULLTEXT KEY `cName` (`cName`), ADD FULLTEXT KEY `cDescription` (`cDescription`), ADD FULLTEXT KEY `content` (`content`), ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indexen voor tabel `PageStatistics`
--
ALTER TABLE `PageStatistics`
 ADD PRIMARY KEY (`pstID`), ADD KEY `cID` (`cID`), ADD KEY `date` (`date`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `PageTemplates`
--
ALTER TABLE `PageTemplates`
 ADD PRIMARY KEY (`pTemplateID`), ADD UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PageThemeCustomStyles`
--
ALTER TABLE `PageThemeCustomStyles`
 ADD PRIMARY KEY (`pThemeID`), ADD KEY `scvlID` (`scvlID`), ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexen voor tabel `PageThemes`
--
ALTER TABLE `PageThemes`
 ADD PRIMARY KEY (`pThemeID`), ADD UNIQUE KEY `ptHandle` (`pThemeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
 ADD PRIMARY KEY (`ptComposerControlTypeID`), ADD UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
 ADD PRIMARY KEY (`ptComposerFormLayoutSetControlID`), ADD KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`);

--
-- Indexen voor tabel `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
 ADD PRIMARY KEY (`ptComposerFormLayoutSetID`), ADD KEY `ptID` (`ptID`);

--
-- Indexen voor tabel `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
 ADD PRIMARY KEY (`ptComposerOutputBlockID`), ADD KEY `cID` (`cID`), ADD KEY `bID` (`bID`,`cID`), ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexen voor tabel `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
 ADD PRIMARY KEY (`ptComposerOutputControlID`), ADD KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`), ADD KEY `ptID` (`ptID`), ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexen voor tabel `PageTypePageTemplateDefaultPages`
--
ALTER TABLE `PageTypePageTemplateDefaultPages`
 ADD PRIMARY KEY (`pTemplateID`,`ptID`), ADD KEY `ptID` (`ptID`), ADD KEY `cID` (`cID`);

--
-- Indexen voor tabel `PageTypePageTemplates`
--
ALTER TABLE `PageTypePageTemplates`
 ADD PRIMARY KEY (`ptID`,`pTemplateID`), ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexen voor tabel `PageTypePermissionAssignments`
--
ALTER TABLE `PageTypePermissionAssignments`
 ADD PRIMARY KEY (`ptID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `ptID` (`ptID`);

--
-- Indexen voor tabel `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
 ADD PRIMARY KEY (`ptPublishTargetTypeID`), ADD KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PageTypes`
--
ALTER TABLE `PageTypes`
 ADD PRIMARY KEY (`ptID`), ADD UNIQUE KEY `ptHandle` (`ptHandle`), ADD KEY `pkgID` (`pkgID`,`ptID`);

--
-- Indexen voor tabel `PageWorkflowProgress`
--
ALTER TABLE `PageWorkflowProgress`
 ADD PRIMARY KEY (`cID`,`wpID`), ADD KEY `wpID` (`wpID`);

--
-- Indexen voor tabel `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
 ADD PRIMARY KEY (`paID`);

--
-- Indexen voor tabel `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
 ADD PRIMARY KEY (`peID`), ADD KEY `petID` (`petID`);

--
-- Indexen voor tabel `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
 ADD PRIMARY KEY (`pegID`), ADD KEY `peID` (`peID`), ADD KEY `gID` (`gID`);

--
-- Indexen voor tabel `PermissionAccessEntityGroupSets`
--
ALTER TABLE `PermissionAccessEntityGroupSets`
 ADD PRIMARY KEY (`peID`,`gsID`), ADD KEY `gsID` (`gsID`);

--
-- Indexen voor tabel `PermissionAccessEntityTypeCategories`
--
ALTER TABLE `PermissionAccessEntityTypeCategories`
 ADD PRIMARY KEY (`petID`,`pkCategoryID`), ADD KEY `pkCategoryID` (`pkCategoryID`);

--
-- Indexen voor tabel `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
 ADD PRIMARY KEY (`petID`), ADD UNIQUE KEY `petHandle` (`petHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PermissionAccessEntityUsers`
--
ALTER TABLE `PermissionAccessEntityUsers`
 ADD PRIMARY KEY (`peID`,`uID`), ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `PermissionAccessList`
--
ALTER TABLE `PermissionAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `accessType` (`accessType`), ADD KEY `peID` (`peID`), ADD KEY `peID_accessType` (`peID`,`accessType`), ADD KEY `pdID` (`pdID`), ADD KEY `permissionAccessDuration` (`paID`,`pdID`);

--
-- Indexen voor tabel `PermissionAccessWorkflows`
--
ALTER TABLE `PermissionAccessWorkflows`
 ADD PRIMARY KEY (`paID`,`wfID`), ADD KEY `wfID` (`wfID`);

--
-- Indexen voor tabel `PermissionAssignments`
--
ALTER TABLE `PermissionAssignments`
 ADD PRIMARY KEY (`paID`,`pkID`), ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
 ADD PRIMARY KEY (`pdID`);

--
-- Indexen voor tabel `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
 ADD PRIMARY KEY (`pkCategoryID`), ADD UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
 ADD PRIMARY KEY (`pkID`), ADD UNIQUE KEY `akHandle` (`pkHandle`), ADD KEY `pkCategoryID` (`pkCategoryID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PileContents`
--
ALTER TABLE `PileContents`
 ADD PRIMARY KEY (`pcID`), ADD KEY `pID` (`pID`,`displayOrder`), ADD KEY `itemID` (`itemID`), ADD KEY `itemType` (`itemType`,`itemID`,`pID`);

--
-- Indexen voor tabel `Piles`
--
ALTER TABLE `Piles`
 ADD PRIMARY KEY (`pID`), ADD KEY `uID` (`uID`,`name`);

--
-- Indexen voor tabel `QueueMessages`
--
ALTER TABLE `QueueMessages`
 ADD PRIMARY KEY (`message_id`), ADD UNIQUE KEY `message_handle` (`handle`), ADD KEY `message_queueid` (`queue_id`);

--
-- Indexen voor tabel `QueuePageDuplicationRelations`
--
ALTER TABLE `QueuePageDuplicationRelations`
 ADD PRIMARY KEY (`cID`,`originalCID`), ADD KEY `originalCID` (`originalCID`,`queue_name`);

--
-- Indexen voor tabel `Queues`
--
ALTER TABLE `Queues`
 ADD PRIMARY KEY (`queue_id`), ADD KEY `queue_name` (`queue_name`);

--
-- Indexen voor tabel `Sessions`
--
ALTER TABLE `Sessions`
 ADD PRIMARY KEY (`sessionID`);

--
-- Indexen voor tabel `SignupRequests`
--
ALTER TABLE `SignupRequests`
 ADD PRIMARY KEY (`id`), ADD KEY `ipFrom` (`ipFrom`(32));

--
-- Indexen voor tabel `SocialLinks`
--
ALTER TABLE `SocialLinks`
 ADD PRIMARY KEY (`slID`), ADD UNIQUE KEY `ssHandle` (`ssHandle`);

--
-- Indexen voor tabel `Stacks`
--
ALTER TABLE `Stacks`
 ADD PRIMARY KEY (`stID`), ADD KEY `stType` (`stType`), ADD KEY `stName` (`stName`), ADD KEY `cID` (`cID`);

--
-- Indexen voor tabel `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
 ADD PRIMARY KEY (`sccRecordID`);

--
-- Indexen voor tabel `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
 ADD PRIMARY KEY (`pssPresetID`), ADD KEY `issID` (`issID`);

--
-- Indexen voor tabel `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
 ADD PRIMARY KEY (`issID`);

--
-- Indexen voor tabel `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
 ADD PRIMARY KEY (`scvlID`);

--
-- Indexen voor tabel `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
 ADD PRIMARY KEY (`scvID`), ADD KEY `scvlID` (`scvlID`);

--
-- Indexen voor tabel `SystemAntispamLibraries`
--
ALTER TABLE `SystemAntispamLibraries`
 ADD PRIMARY KEY (`saslHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemCaptchaLibraries`
--
ALTER TABLE `SystemCaptchaLibraries`
 ADD PRIMARY KEY (`sclHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemContentEditorSnippets`
--
ALTER TABLE `SystemContentEditorSnippets`
 ADD PRIMARY KEY (`scsHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemDatabaseMigrations`
--
ALTER TABLE `SystemDatabaseMigrations`
 ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `SystemImageEditorComponents`
--
ALTER TABLE `SystemImageEditorComponents`
 ADD PRIMARY KEY (`scsID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemImageEditorControlSets`
--
ALTER TABLE `SystemImageEditorControlSets`
 ADD PRIMARY KEY (`scsID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemImageEditorFilters`
--
ALTER TABLE `SystemImageEditorFilters`
 ADD PRIMARY KEY (`scsID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemImageEditorShapes`
--
ALTER TABLE `SystemImageEditorShapes`
 ADD PRIMARY KEY (`scsID`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `TopicTrees`
--
ALTER TABLE `TopicTrees`
 ADD PRIMARY KEY (`treeID`);

--
-- Indexen voor tabel `TreeCategoryNodes`
--
ALTER TABLE `TreeCategoryNodes`
 ADD PRIMARY KEY (`treeNodeID`);

--
-- Indexen voor tabel `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
 ADD PRIMARY KEY (`treeNodeID`), ADD KEY `gID` (`gID`);

--
-- Indexen voor tabel `TreeNodePermissionAssignments`
--
ALTER TABLE `TreeNodePermissionAssignments`
 ADD PRIMARY KEY (`treeNodeID`,`pkID`,`paID`), ADD KEY `pkID` (`pkID`), ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `TreeNodes`
--
ALTER TABLE `TreeNodes`
 ADD PRIMARY KEY (`treeNodeID`), ADD KEY `treeNodeParentID` (`treeNodeParentID`), ADD KEY `treeNodeTypeID` (`treeNodeTypeID`), ADD KEY `treeID` (`treeID`), ADD KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`);

--
-- Indexen voor tabel `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
 ADD PRIMARY KEY (`treeNodeTypeID`), ADD UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `Trees`
--
ALTER TABLE `Trees`
 ADD PRIMARY KEY (`treeID`), ADD KEY `treeTypeID` (`treeTypeID`);

--
-- Indexen voor tabel `TreeTopicNodes`
--
ALTER TABLE `TreeTopicNodes`
 ADD PRIMARY KEY (`treeNodeID`);

--
-- Indexen voor tabel `TreeTypes`
--
ALTER TABLE `TreeTypes`
 ADD PRIMARY KEY (`treeTypeID`), ADD UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
 ADD PRIMARY KEY (`akID`);

--
-- Indexen voor tabel `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
 ADD PRIMARY KEY (`uID`,`akID`), ADD KEY `akID` (`akID`), ADD KEY `avID` (`avID`);

--
-- Indexen voor tabel `UserBannedIPs`
--
ALTER TABLE `UserBannedIPs`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32));

--
-- Indexen voor tabel `UserGroups`
--
ALTER TABLE `UserGroups`
 ADD PRIMARY KEY (`uID`,`gID`), ADD KEY `uID` (`uID`), ADD KEY `gID` (`gID`);

--
-- Indexen voor tabel `UserPermissionEditPropertyAccessList`
--
ALTER TABLE `UserPermissionEditPropertyAccessList`
 ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexen voor tabel `UserPermissionEditPropertyAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`), ADD KEY `peID` (`peID`), ADD KEY `akID` (`akID`);

--
-- Indexen voor tabel `UserPermissionViewAttributeAccessList`
--
ALTER TABLE `UserPermissionViewAttributeAccessList`
 ADD PRIMARY KEY (`paID`,`peID`), ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `UserPermissionViewAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionViewAttributeAccessListCustom`
 ADD PRIMARY KEY (`paID`,`peID`,`akID`), ADD KEY `peID` (`peID`), ADD KEY `akID` (`akID`);

--
-- Indexen voor tabel `UserPointActions`
--
ALTER TABLE `UserPointActions`
 ADD PRIMARY KEY (`upaID`), ADD UNIQUE KEY `upaHandle` (`upaHandle`), ADD KEY `pkgID` (`pkgID`), ADD KEY `gBBadgeID` (`gBadgeID`);

--
-- Indexen voor tabel `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
 ADD PRIMARY KEY (`upID`), ADD KEY `upuID` (`upuID`), ADD KEY `upaID` (`upaID`);

--
-- Indexen voor tabel `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
 ADD PRIMARY KEY (`msgID`), ADD KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`);

--
-- Indexen voor tabel `UserPrivateMessagesTo`
--
ALTER TABLE `UserPrivateMessagesTo`
 ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`), ADD KEY `uID` (`uID`), ADD KEY `uAuthorID` (`uAuthorID`), ADD KEY `msgFolderID` (`msgMailboxID`), ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indexen voor tabel `Users`
--
ALTER TABLE `Users`
 ADD PRIMARY KEY (`uID`), ADD UNIQUE KEY `uName` (`uName`), ADD KEY `uEmail` (`uEmail`);

--
-- Indexen voor tabel `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
 ADD PRIMARY KEY (`uID`);

--
-- Indexen voor tabel `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
 ADD PRIMARY KEY (`uvhID`), ADD KEY `uID` (`uID`,`type`), ADD KEY `uHash` (`uHash`,`type`), ADD KEY `uDateGenerated` (`uDateGenerated`,`type`);

--
-- Indexen voor tabel `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
 ADD PRIMARY KEY (`wpID`), ADD KEY `wpCategoryID` (`wpCategoryID`), ADD KEY `wfID` (`wfID`), ADD KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`);

--
-- Indexen voor tabel `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
 ADD PRIMARY KEY (`wpCategoryID`), ADD UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
 ADD PRIMARY KEY (`wphID`), ADD KEY `wpID` (`wpID`,`timestamp`);

--
-- Indexen voor tabel `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
 ADD PRIMARY KEY (`wrID`);

--
-- Indexen voor tabel `Workflows`
--
ALTER TABLE `Workflows`
 ADD PRIMARY KEY (`wfID`), ADD UNIQUE KEY `wfName` (`wfName`), ADD KEY `wftID` (`wftID`,`wfID`);

--
-- Indexen voor tabel `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
 ADD PRIMARY KEY (`wftID`), ADD UNIQUE KEY `wftHandle` (`wftHandle`), ADD KEY `pkgID` (`pkgID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
MODIFY `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
MODIFY `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
MODIFY `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
MODIFY `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
MODIFY `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Areas`
--
ALTER TABLE `Areas`
MODIFY `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=388;
--
-- AUTO_INCREMENT voor een tabel `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
MODIFY `atAddressCustomCountryID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
MODIFY `avsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
MODIFY `akCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
MODIFY `akID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT voor een tabel `AttributeSets`
--
ALTER TABLE `AttributeSets`
MODIFY `asID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
MODIFY `atID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT voor een tabel `AttributeValues`
--
ALTER TABLE `AttributeValues`
MODIFY `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT voor een tabel `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
MODIFY `authTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `BannedWords`
--
ALTER TABLE `BannedWords`
MODIFY `bwID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `BlockRelations`
--
ALTER TABLE `BlockRelations`
MODIFY `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT voor een tabel `Blocks`
--
ALTER TABLE `Blocks`
MODIFY `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT voor een tabel `BlockTypes`
--
ALTER TABLE `BlockTypes`
MODIFY `btID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT voor een tabel `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
MODIFY `btsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
MODIFY `aID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
MODIFY `asID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
MODIFY `qID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
MODIFY `btShareThisPageID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
MODIFY `btSocialLinkID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
MODIFY `optionID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
MODIFY `resultID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Collections`
--
ALTER TABLE `Collections`
MODIFY `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT voor een tabel `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
MODIFY `cnvDiscussionID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
MODIFY `cnvEditorID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
MODIFY `cnvMessageFlagTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
MODIFY `cnvMessageAttachmentID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
MODIFY `cnvMessageRatingID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
MODIFY `cnvMessageID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
MODIFY `cnvRatingTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `Conversations`
--
ALTER TABLE `Conversations`
MODIFY `cnvID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
MODIFY `dsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
MODIFY `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT voor een tabel `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
MODIFY `fcID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `Features`
--
ALTER TABLE `Features`
MODIFY `feID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT voor een tabel `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
MODIFY `ftTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `Files`
--
ALTER TABLE `Files`
MODIFY `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT voor een tabel `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
MODIFY `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `FileSets`
--
ALTER TABLE `FileSets`
MODIFY `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
MODIFY `fslID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
MODIFY `fslTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
MODIFY `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT voor een tabel `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
MODIFY `gcsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
MODIFY `gasID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
MODIFY `gafaID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `GatheringItems`
--
ALTER TABLE `GatheringItems`
MODIFY `gaiID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
MODIFY `gfeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT voor een tabel `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
MODIFY `gatID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT voor een tabel `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
MODIFY `gatTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `Gatherings`
--
ALTER TABLE `Gatherings`
MODIFY `gaID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Groups`
--
ALTER TABLE `Groups`
MODIFY `gID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `GroupSets`
--
ALTER TABLE `GroupSets`
MODIFY `gsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Jobs`
--
ALTER TABLE `Jobs`
MODIFY `jID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT voor een tabel `JobSets`
--
ALTER TABLE `JobSets`
MODIFY `jsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `JobsLog`
--
ALTER TABLE `JobsLog`
MODIFY `jlID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Logs`
--
ALTER TABLE `Logs`
MODIFY `logID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `MailImporters`
--
ALTER TABLE `MailImporters`
MODIFY `miID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
MODIFY `mvhID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
MODIFY `mtID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Packages`
--
ALTER TABLE `Packages`
MODIFY `pkgID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `PageFeeds`
--
ALTER TABLE `PageFeeds`
MODIFY `pfID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `PagePaths`
--
ALTER TABLE `PagePaths`
MODIFY `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT voor een tabel `PageStatistics`
--
ALTER TABLE `PageStatistics`
MODIFY `pstID` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `PageTemplates`
--
ALTER TABLE `PageTemplates`
MODIFY `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT voor een tabel `PageThemes`
--
ALTER TABLE `PageThemes`
MODIFY `pThemeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
MODIFY `ptComposerControlTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
MODIFY `ptComposerFormLayoutSetControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
MODIFY `ptComposerFormLayoutSetID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
MODIFY `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT voor een tabel `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
MODIFY `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
MODIFY `ptPublishTargetTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `PageTypes`
--
ALTER TABLE `PageTypes`
MODIFY `ptID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
MODIFY `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT voor een tabel `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
MODIFY `peID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
MODIFY `pegID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
MODIFY `petID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT voor een tabel `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
MODIFY `pdID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
MODIFY `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT voor een tabel `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
MODIFY `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT voor een tabel `PileContents`
--
ALTER TABLE `PileContents`
MODIFY `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `Piles`
--
ALTER TABLE `Piles`
MODIFY `pID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `QueueMessages`
--
ALTER TABLE `QueueMessages`
MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Queues`
--
ALTER TABLE `Queues`
MODIFY `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `SignupRequests`
--
ALTER TABLE `SignupRequests`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `SocialLinks`
--
ALTER TABLE `SocialLinks`
MODIFY `slID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Stacks`
--
ALTER TABLE `Stacks`
MODIFY `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT voor een tabel `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
MODIFY `sccRecordID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
MODIFY `pssPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
MODIFY `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
MODIFY `scvlID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
MODIFY `scvID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `SystemImageEditorComponents`
--
ALTER TABLE `SystemImageEditorComponents`
MODIFY `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `SystemImageEditorControlSets`
--
ALTER TABLE `SystemImageEditorControlSets`
MODIFY `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `SystemImageEditorFilters`
--
ALTER TABLE `SystemImageEditorFilters`
MODIFY `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `SystemImageEditorShapes`
--
ALTER TABLE `SystemImageEditorShapes`
MODIFY `scsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `TreeCategoryNodes`
--
ALTER TABLE `TreeCategoryNodes`
MODIFY `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
MODIFY `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `TreeNodes`
--
ALTER TABLE `TreeNodes`
MODIFY `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT voor een tabel `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
MODIFY `treeNodeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `Trees`
--
ALTER TABLE `Trees`
MODIFY `treeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `TreeTopicNodes`
--
ALTER TABLE `TreeTopicNodes`
MODIFY `treeNodeID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `TreeTypes`
--
ALTER TABLE `TreeTypes`
MODIFY `treeTypeID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `UserBannedIPs`
--
ALTER TABLE `UserBannedIPs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `UserPointActions`
--
ALTER TABLE `UserPointActions`
MODIFY `upaID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
MODIFY `msgID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Users`
--
ALTER TABLE `Users`
MODIFY `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
MODIFY `uvhID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
MODIFY `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
MODIFY `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
MODIFY `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT voor een tabel `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
MODIFY `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Workflows`
--
ALTER TABLE `Workflows`
MODIFY `wfID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
MODIFY `wftID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `QueueMessages`
--
ALTER TABLE `QueueMessages`
ADD CONSTRAINT `queuemessages_ibfk_1` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
