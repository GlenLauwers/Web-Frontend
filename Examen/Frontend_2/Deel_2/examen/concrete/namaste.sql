-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 19 mei 2015 om 14:02
-- Serverversie: 5.6.24
-- PHP-versie: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `namaste`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaLayoutCustomColumns`
--

CREATE TABLE IF NOT EXISTS `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaLayoutPresets`
--

CREATE TABLE IF NOT EXISTS `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) unsigned NOT NULL,
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `AreaLayoutThemeGridColumns`
--

CREATE TABLE IF NOT EXISTS `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) unsigned NOT NULL,
  `arLayoutColumnSpan` int(10) unsigned DEFAULT '0',
  `arLayoutColumnOffset` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Areas`
--

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1, 125, 'Main', 0, 0, 0, 0),
(2, 126, 'Primary', 0, 0, 0, 0),
(3, 126, 'Secondary 1', 0, 0, 0, 0),
(4, 126, 'Secondary 2', 0, 0, 0, 0),
(5, 126, 'Secondary 3', 0, 0, 0, 0),
(6, 126, 'Secondary 4', 0, 0, 0, 0),
(7, 126, 'Secondary 5', 0, 0, 0, 0),
(8, 143, 'Main', 0, 0, 0, 0),
(9, 144, 'Main', 0, 0, 0, 0),
(10, 1, 'Header Site Title', 0, 0, 1, 0),
(11, 145, 'Main', 0, 0, 0, 0),
(12, 1, 'Header Navigation', 0, 0, 1, 0),
(13, 1, 'Main', 0, 0, 0, 0),
(14, 1, 'Page Footer', 0, 0, 0, 0),
(15, 146, 'Main', 0, 0, 0, 0),
(16, 1, 'Footer Legal', 0, 0, 1, 0),
(17, 147, 'Main', 0, 0, 0, 0),
(18, 1, 'Footer Navigation', 0, 0, 1, 0),
(19, 148, 'Main', 0, 0, 0, 0),
(20, 1, 'Footer Contact', 0, 0, 1, 0),
(21, 149, 'Main', 0, 0, 0, 0),
(22, 150, 'Main', 0, 0, 0, 0),
(23, 1, 'Site_Logo', 0, 0, 1, 0),
(24, 151, 'Main', 0, 0, 0, 0),
(25, 1, 'menu', 0, 0, 1, 0),
(26, 152, 'Main', 0, 0, 0, 0),
(27, 1, 'logo', 0, 0, 1, 0),
(28, 153, 'Main', 0, 0, 0, 0),
(29, 1, 'titel1', 0, 0, 1, 0),
(30, 154, 'Main', 0, 0, 0, 0),
(31, 1, 'ondertitel1', 0, 0, 1, 0),
(32, 155, 'Main', 0, 0, 0, 0),
(33, 1, 'tekst1', 0, 0, 1, 0),
(34, 156, 'Main', 0, 0, 0, 0),
(35, 1, 'titel2', 0, 0, 1, 0),
(36, 157, 'Main', 0, 0, 0, 0),
(37, 1, 'tekst2', 0, 0, 1, 0),
(38, 158, 'Main', 0, 0, 0, 0),
(39, 1, 'foto2', 0, 0, 1, 0),
(40, 159, 'Main', 0, 0, 0, 0),
(41, 1, 'titel3', 0, 0, 1, 0),
(42, 160, 'Main', 0, 0, 0, 0),
(43, 1, 'tekst3', 0, 0, 1, 0),
(44, 161, 'Main', 0, 0, 0, 0),
(45, 1, 'titel4', 0, 0, 1, 0),
(46, 162, 'Main', 0, 0, 0, 0),
(47, 1, 'tekst4', 0, 0, 1, 0),
(48, 163, 'Main', 0, 0, 0, 0),
(49, 1, 'titel5', 0, 0, 1, 0),
(50, 164, 'Main', 0, 0, 0, 0),
(51, 1, 'tekst5', 0, 0, 1, 0),
(52, 165, 'Main', 0, 0, 0, 0),
(53, 1, 'titel6', 0, 0, 1, 0),
(54, 166, 'Main', 0, 0, 0, 0),
(55, 1, 'ondertitel6', 0, 0, 1, 0),
(56, 167, 'Main', 0, 0, 0, 0),
(57, 1, 'tekst6', 0, 0, 1, 0),
(58, 168, 'Main', 0, 0, 0, 0),
(59, 1, 'foto7', 0, 0, 1, 0),
(60, 169, 'Main', 0, 0, 0, 0),
(61, 1, 'ondertitel7', 0, 0, 1, 0),
(62, 170, 'Main', 0, 0, 0, 0),
(63, 1, 'tekst7', 0, 0, 1, 0),
(64, 171, 'Main', 0, 0, 0, 0),
(65, 1, 'foto7.1', 0, 0, 1, 0),
(66, 172, 'Main', 0, 0, 0, 0),
(67, 1, 'bijschrift7', 0, 0, 1, 0),
(68, 173, 'Main', 0, 0, 0, 0),
(69, 1, 'titel7', 0, 0, 1, 0),
(70, 174, 'Main', 0, 0, 0, 0),
(71, 1, 'titel8', 0, 0, 1, 0),
(72, 175, 'Main', 0, 0, 0, 0),
(73, 1, 'tekst8', 0, 0, 1, 0),
(74, 176, 'Main', 0, 0, 0, 0),
(75, 1, 'titel9', 0, 0, 1, 0),
(76, 177, 'Main', 0, 0, 0, 0),
(77, 1, 'tekst9', 0, 0, 1, 0),
(78, 178, 'Main', 0, 0, 0, 0),
(79, 1, 'titel10', 0, 0, 1, 0),
(80, 179, 'Main', 0, 0, 0, 0),
(81, 1, 'tekst10', 0, 0, 1, 0),
(82, 180, 'Main', 0, 0, 0, 0),
(83, 1, 'info', 0, 0, 1, 0),
(84, 181, 'Main', 0, 0, 0, 0),
(85, 1, 'titel11', 0, 0, 1, 0),
(86, 182, 'Main', 0, 0, 0, 0),
(87, 1, 'ondertitel11', 0, 0, 1, 0),
(88, 183, 'Main', 0, 0, 0, 0),
(89, 1, 'tekst11', 0, 0, 1, 0),
(90, 184, 'Main', 0, 0, 0, 0),
(91, 1, 'foto12', 0, 0, 1, 0),
(92, 185, 'Main', 0, 0, 0, 0),
(93, 1, 'titel12', 0, 0, 1, 0),
(94, 186, 'Main', 0, 0, 0, 0),
(95, 1, 'tekst12', 0, 0, 1, 0),
(96, 187, 'Main', 0, 0, 0, 0),
(97, 1, 'datum12', 0, 0, 1, 0),
(98, 188, 'Main', 0, 0, 0, 0),
(99, 1, 'pijl12', 0, 0, 1, 0),
(100, 189, 'Main', 0, 0, 0, 0),
(101, 1, 'pijl', 0, 0, 1, 0),
(102, 190, 'Main', 0, 0, 0, 0),
(103, 1, 'foto13', 0, 0, 1, 0),
(104, 191, 'Main', 0, 0, 0, 0),
(105, 1, 'titel13', 0, 0, 1, 0),
(106, 192, 'Main', 0, 0, 0, 0),
(107, 1, 'tekst13', 0, 0, 1, 0),
(108, 193, 'Main', 0, 0, 0, 0),
(109, 1, 'datum13', 0, 0, 1, 0),
(110, 194, 'Main', 0, 0, 0, 0),
(111, 1, 'foto14', 0, 0, 1, 0),
(112, 195, 'Main', 0, 0, 0, 0),
(113, 1, 'titel14', 0, 0, 1, 0),
(114, 196, 'Main', 0, 0, 0, 0),
(115, 1, 'tekst14', 0, 0, 1, 0),
(116, 197, 'Main', 0, 0, 0, 0),
(117, 1, 'datum14', 0, 0, 1, 0),
(118, 198, 'Main', 0, 0, 0, 0),
(119, 1, 'foto15', 0, 0, 1, 0),
(120, 199, 'Main', 0, 0, 0, 0),
(121, 1, 'titel15', 0, 0, 1, 0),
(122, 200, 'Main', 0, 0, 0, 0),
(123, 1, 'tekst15', 0, 0, 1, 0),
(124, 201, 'Main', 0, 0, 0, 0),
(125, 1, 'datum15', 0, 0, 1, 0),
(126, 202, 'Main', 0, 0, 0, 0),
(127, 1, 'tekst16', 0, 0, 1, 0),
(128, 203, 'Main', 0, 0, 0, 0),
(129, 1, 'copy', 0, 0, 1, 0),
(130, 204, 'Main', 0, 0, 0, 0),
(131, 1, 'contact', 0, 0, 1, 0),
(132, 205, 'Main', 0, 0, 0, 0),
(133, 1, 'pagina1', 0, 0, 1, 0),
(134, 206, 'Main', 0, 0, 0, 0),
(135, 1, 'pagina2', 0, 0, 1, 0),
(136, 207, 'Main', 0, 0, 0, 0),
(137, 1, 'social', 0, 0, 1, 0),
(138, 208, 'Main', 0, 0, 0, 0),
(139, 1, 'pijl_gallery', 0, 0, 1, 0),
(140, 209, 'Main', 0, 0, 0, 0),
(141, 1, 'foto8', 0, 0, 1, 0),
(142, 210, 'Main', 0, 0, 0, 0),
(143, 1, 'foto9', 0, 0, 1, 0),
(144, 211, 'Main', 0, 0, 0, 0),
(145, 1, 'foto10', 0, 0, 1, 0),
(146, 212, 'Main', 0, 0, 0, 0),
(147, 1, 'foto3', 0, 0, 1, 0),
(148, 213, 'Main', 0, 0, 0, 0),
(149, 1, 'foto4', 0, 0, 1, 0),
(150, 214, 'Main', 0, 0, 0, 0),
(151, 1, 'foto5', 0, 0, 1, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(106, 1),
(107, 1),
(108, 1);

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
(63, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view'),
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
(103, 'database, entities, doctrine, orm'),
(104, 'export, backup, database, sql, mysql, encryption, restore'),
(105, 'upgrade, new version, update'),
(109, 'fa fa-edit'),
(110, 'fa fa-trash-o'),
(111, 'fa fa-th'),
(112, 'fa fa-briefcase');

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
(113, '48.0000'),
(114, '48.0000'),
(115, '300.0000'),
(116, '151.0000'),
(117, '478.0000'),
(118, '199.0000'),
(119, '300.0000'),
(120, '538.0000'),
(121, '300.0000'),
(122, '200.0000'),
(123, '19.0000'),
(124, '15.0000'),
(125, '300.0000'),
(126, '200.0000'),
(127, '300.0000'),
(128, '200.0000'),
(129, '300.0000'),
(130, '200.0000'),
(131, '68.0000'),
(132, '69.0000'),
(133, '300.0000'),
(134, '538.0000'),
(135, '300.0000'),
(136, '538.0000'),
(137, '300.0000'),
(138, '538.0000');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `AttributeValues`
--

INSERT INTO `AttributeValues` (`avID`, `akID`, `avDateAdded`, `uID`, `atID`) VALUES
(1, 4, '2015-05-19 09:57:36', 1, 2),
(2, 3, '2015-05-19 09:57:36', 1, 2),
(3, 3, '2015-05-19 09:57:36', 1, 2),
(4, 3, '2015-05-19 09:57:36', 1, 2),
(5, 3, '2015-05-19 09:57:36', 1, 2),
(6, 3, '2015-05-19 09:57:36', 1, 2),
(7, 3, '2015-05-19 09:57:36', 1, 2),
(8, 3, '2015-05-19 09:57:36', 1, 2),
(9, 5, '2015-05-19 09:57:36', 1, 3),
(10, 3, '2015-05-19 09:57:36', 1, 2),
(11, 3, '2015-05-19 09:57:36', 1, 2),
(12, 3, '2015-05-19 09:57:36', 1, 2),
(13, 3, '2015-05-19 09:57:36', 1, 2),
(14, 3, '2015-05-19 09:57:36', 1, 2),
(15, 3, '2015-05-19 09:57:36', 1, 2),
(16, 5, '2015-05-19 09:57:36', 1, 3),
(17, 3, '2015-05-19 09:57:36', 1, 2),
(18, 5, '2015-05-19 09:57:36', 1, 3),
(19, 3, '2015-05-19 09:57:36', 1, 2),
(20, 3, '2015-05-19 09:57:36', 1, 2),
(21, 3, '2015-05-19 09:57:36', 1, 2),
(22, 3, '2015-05-19 09:57:36', 1, 2),
(23, 3, '2015-05-19 09:57:36', 1, 2),
(24, 3, '2015-05-19 09:57:36', 1, 2),
(25, 3, '2015-05-19 09:57:36', 1, 2),
(26, 3, '2015-05-19 09:57:36', 1, 2),
(27, 3, '2015-05-19 09:57:36', 1, 2),
(28, 5, '2015-05-19 09:57:36', 1, 3),
(29, 5, '2015-05-19 09:57:36', 1, 3),
(30, 5, '2015-05-19 09:57:36', 1, 3),
(31, 5, '2015-05-19 09:57:36', 1, 3),
(32, 5, '2015-05-19 09:57:36', 1, 3),
(33, 5, '2015-05-19 09:57:36', 1, 3),
(34, 5, '2015-05-19 09:57:36', 1, 3),
(35, 5, '2015-05-19 09:57:36', 1, 3),
(36, 3, '2015-05-19 09:57:36', 1, 2),
(37, 3, '2015-05-19 09:57:36', 1, 2),
(38, 3, '2015-05-19 09:57:36', 1, 2),
(39, 4, '2015-05-19 09:57:36', 1, 2),
(40, 3, '2015-05-19 09:57:36', 1, 2),
(41, 3, '2015-05-19 09:57:36', 1, 2),
(42, 5, '2015-05-19 09:57:36', 1, 3),
(43, 10, '2015-05-19 09:57:36', 1, 3),
(44, 3, '2015-05-19 09:57:36', 1, 2),
(45, 3, '2015-05-19 09:57:36', 1, 2),
(46, 3, '2015-05-19 09:57:36', 1, 2),
(47, 5, '2015-05-19 09:57:36', 1, 3),
(48, 3, '2015-05-19 09:57:36', 1, 2),
(49, 3, '2015-05-19 09:57:37', 1, 2),
(50, 3, '2015-05-19 09:57:37', 1, 2),
(51, 5, '2015-05-19 09:57:37', 1, 3),
(52, 3, '2015-05-19 09:57:37', 1, 2),
(53, 3, '2015-05-19 09:57:37', 1, 2),
(54, 3, '2015-05-19 09:57:37', 1, 2),
(55, 3, '2015-05-19 09:57:37', 1, 2),
(56, 3, '2015-05-19 09:57:37', 1, 2),
(57, 3, '2015-05-19 09:57:37', 1, 2),
(58, 3, '2015-05-19 09:57:37', 1, 2),
(59, 3, '2015-05-19 09:57:37', 1, 2),
(60, 3, '2015-05-19 09:57:37', 1, 2),
(61, 3, '2015-05-19 09:57:37', 1, 2),
(62, 3, '2015-05-19 09:57:37', 1, 2),
(63, 3, '2015-05-19 09:57:37', 1, 2),
(64, 3, '2015-05-19 09:57:37', 1, 2),
(65, 3, '2015-05-19 09:57:37', 1, 2),
(66, 3, '2015-05-19 09:57:37', 1, 2),
(67, 3, '2015-05-19 09:57:37', 1, 2),
(68, 3, '2015-05-19 09:57:37', 1, 2),
(69, 3, '2015-05-19 09:57:37', 1, 2),
(70, 3, '2015-05-19 09:57:37', 1, 2),
(71, 3, '2015-05-19 09:57:37', 1, 2),
(72, 3, '2015-05-19 09:57:37', 1, 2),
(73, 3, '2015-05-19 09:57:37', 1, 2),
(74, 3, '2015-05-19 09:57:37', 1, 2),
(75, 3, '2015-05-19 09:57:37', 1, 2),
(76, 3, '2015-05-19 09:57:37', 1, 2),
(77, 3, '2015-05-19 09:57:37', 1, 2),
(78, 3, '2015-05-19 09:57:37', 1, 2),
(79, 3, '2015-05-19 09:57:37', 1, 2),
(80, 3, '2015-05-19 09:57:37', 1, 2),
(81, 3, '2015-05-19 09:57:37', 1, 2),
(82, 3, '2015-05-19 09:57:37', 1, 2),
(83, 3, '2015-05-19 09:57:37', 1, 2),
(84, 3, '2015-05-19 09:57:37', 1, 2),
(85, 3, '2015-05-19 09:57:37', 1, 2),
(86, 3, '2015-05-19 09:57:37', 1, 2),
(87, 3, '2015-05-19 09:57:37', 1, 2),
(88, 3, '2015-05-19 09:57:37', 1, 2),
(89, 3, '2015-05-19 09:57:37', 1, 2),
(90, 3, '2015-05-19 09:57:37', 1, 2),
(91, 3, '2015-05-19 09:57:37', 1, 2),
(92, 3, '2015-05-19 09:57:37', 1, 2),
(93, 3, '2015-05-19 09:57:37', 1, 2),
(94, 3, '2015-05-19 09:57:37', 1, 2),
(95, 3, '2015-05-19 09:57:37', 1, 2),
(96, 3, '2015-05-19 09:57:37', 1, 2),
(97, 3, '2015-05-19 09:57:37', 1, 2),
(98, 10, '2015-05-19 09:57:37', 1, 3),
(99, 3, '2015-05-19 09:57:37', 1, 2),
(100, 3, '2015-05-19 09:57:37', 1, 2),
(101, 3, '2015-05-19 09:57:37', 1, 2),
(102, 3, '2015-05-19 09:57:37', 1, 2),
(103, 3, '2015-05-19 09:57:37', 1, 2),
(104, 3, '2015-05-19 09:57:37', 1, 2),
(105, 3, '2015-05-19 09:57:37', 1, 2),
(106, 5, '2015-05-19 09:57:37', 1, 3),
(107, 5, '2015-05-19 09:57:37', 1, 3),
(108, 10, '2015-05-19 09:57:38', 1, 3),
(109, 4, '2015-05-19 09:57:38', 1, 2),
(110, 4, '2015-05-19 09:57:38', 1, 2),
(111, 4, '2015-05-19 09:57:38', 1, 2),
(112, 4, '2015-05-19 09:57:38', 1, 2),
(113, 14, '2015-05-19 10:22:27', 1, 6),
(114, 15, '2015-05-19 10:22:27', 1, 6),
(115, 14, '2015-05-19 10:30:24', 1, 6),
(116, 15, '2015-05-19 10:30:24', 1, 6),
(117, 14, '2015-05-19 10:41:49', 1, 6),
(118, 15, '2015-05-19 10:41:49', 1, 6),
(119, 14, '2015-05-19 10:57:43', 1, 6),
(120, 15, '2015-05-19 10:57:43', 1, 6),
(121, 14, '2015-05-19 11:25:26', 1, 6),
(122, 15, '2015-05-19 11:25:26', 1, 6),
(123, 14, '2015-05-19 11:31:59', 1, 6),
(124, 15, '2015-05-19 11:31:59', 1, 6),
(125, 14, '2015-05-19 11:38:44', 1, 6),
(126, 15, '2015-05-19 11:38:44', 1, 6),
(127, 14, '2015-05-19 11:41:50', 1, 6),
(128, 15, '2015-05-19 11:41:50', 1, 6),
(129, 14, '2015-05-19 11:42:24', 1, 6),
(130, 15, '2015-05-19 11:42:24', 1, 6),
(131, 14, '2015-05-19 12:04:43', 1, 6),
(132, 15, '2015-05-19 12:04:43', 1, 6),
(133, 14, '2015-05-19 12:15:07', 1, 6),
(134, 15, '2015-05-19 12:15:07', 1, 6),
(135, 14, '2015-05-19 12:47:15', 1, 6),
(136, 15, '2015-05-19 12:47:15', 1, 6),
(137, 14, '2015-05-19 12:47:33', 1, 6),
(138, 15, '2015-05-19 12:47:33', 1, 6);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `BannedWords`
--

CREATE TABLE IF NOT EXISTS `BannedWords` (
  `bwID` int(10) unsigned NOT NULL,
  `bannedWord` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(150, 2, 11, 1),
(150, 3, 12, 2),
(152, 2, 14, 3),
(158, 2, 20, 4),
(168, 2, 30, 5),
(168, 3, 31, 6),
(184, 2, 42, 7),
(189, 2, 47, 8),
(184, 3, 50, 9),
(190, 2, 51, 10),
(194, 2, 64, 11),
(198, 2, 65, 12),
(208, 2, 79, 13),
(168, 5, 80, 14),
(209, 2, 81, 15),
(210, 2, 84, 16),
(211, 2, 85, 17);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `BlockRelations`
--

INSERT INTO `BlockRelations` (`brID`, `bID`, `originalBID`, `relationType`) VALUES
(1, 12, 11, 'DUPLICATE'),
(2, 31, 30, 'DUPLICATE'),
(3, 35, 33, 'DUPLICATE'),
(4, 37, 36, 'DUPLICATE'),
(5, 45, 44, 'DUPLICATE'),
(6, 49, 48, 'DUPLICATE'),
(7, 50, 42, 'DUPLICATE'),
(8, 52, 45, 'DUPLICATE'),
(9, 56, 46, 'DUPLICATE'),
(10, 60, 49, 'DUPLICATE'),
(11, 67, 66, 'DUPLICATE'),
(12, 69, 68, 'DUPLICATE'),
(13, 71, 70, 'DUPLICATE'),
(14, 72, 71, 'DUPLICATE'),
(15, 75, 74, 'DUPLICATE');

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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Blocks`
--

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2015-05-19 09:57:37', '2015-05-19 09:57:37', NULL, '0', 12, 1, NULL),
(2, '', '2015-05-19 09:57:37', '2015-05-19 09:57:37', NULL, '0', 9, 1, NULL),
(3, '', '2015-05-19 09:57:37', '2015-05-19 09:57:37', NULL, '0', 10, 1, NULL),
(4, '', '2015-05-19 09:57:37', '2015-05-19 09:57:37', NULL, '0', 8, 1, NULL),
(5, '', '2015-05-19 09:57:37', '2015-05-19 09:57:37', NULL, '0', 8, 1, NULL),
(6, '', '2015-05-19 09:57:37', '2015-05-19 09:57:37', NULL, '0', 7, 1, NULL),
(7, '', '2015-05-19 09:57:37', '2015-05-19 09:57:37', NULL, '0', 6, 1, NULL),
(8, '', '2015-05-19 09:57:37', '2015-05-19 09:57:37', NULL, '0', 8, 1, NULL),
(9, '', '2015-05-19 09:57:39', '2015-05-19 09:57:39', NULL, '0', 2, 1, NULL),
(10, '', '2015-05-19 10:02:08', '2015-05-19 10:02:08', NULL, '0', 12, 1, NULL),
(11, '', '2015-05-19 10:22:35', '2015-05-19 10:22:35', NULL, '0', 27, 1, NULL),
(12, '', '2015-05-19 10:23:29', '2015-05-19 10:23:29', NULL, '1', 27, 1, NULL),
(13, '', '2015-05-19 10:25:30', '2015-05-19 10:25:30', NULL, '0', 11, 1, NULL),
(14, '', '2015-05-19 10:30:30', '2015-05-19 10:30:30', NULL, '0', 27, 1, NULL),
(15, '', '2015-05-19 10:35:58', '2015-05-19 10:35:58', NULL, '0', 12, 1, NULL),
(16, '', '2015-05-19 10:36:12', '2015-05-19 10:36:12', NULL, '0', 12, 1, NULL),
(17, '', '2015-05-19 10:36:31', '2015-05-19 10:36:31', NULL, '0', 12, 1, NULL),
(18, '', '2015-05-19 10:39:05', '2015-05-19 10:39:05', NULL, '0', 12, 1, NULL),
(19, '', '2015-05-19 10:39:18', '2015-05-19 10:39:18', NULL, '0', 12, 1, NULL),
(20, '', '2015-05-19 10:42:08', '2015-05-19 10:42:08', NULL, '0', 27, 1, NULL),
(21, '', '2015-05-19 10:44:11', '2015-05-19 10:44:11', NULL, '0', 12, 1, NULL),
(22, '', '2015-05-19 10:44:24', '2015-05-19 10:44:24', NULL, '0', 12, 1, NULL),
(23, '', '2015-05-19 10:44:35', '2015-05-19 10:44:35', NULL, '0', 12, 1, NULL),
(24, '', '2015-05-19 10:44:47', '2015-05-19 10:44:47', NULL, '0', 12, 1, NULL),
(25, '', '2015-05-19 10:44:58', '2015-05-19 10:44:58', NULL, '0', 12, 1, NULL),
(26, '', '2015-05-19 10:45:10', '2015-05-19 10:45:10', NULL, '0', 12, 1, NULL),
(27, '', '2015-05-19 10:47:34', '2015-05-19 10:47:34', NULL, '0', 12, 1, NULL),
(28, '', '2015-05-19 10:47:43', '2015-05-19 10:47:43', NULL, '0', 12, 1, NULL),
(29, '', '2015-05-19 10:47:53', '2015-05-19 10:47:53', NULL, '0', 12, 1, NULL),
(30, '', '2015-05-19 10:57:48', '2015-05-19 10:57:48', NULL, '0', 27, 1, NULL),
(31, '', '2015-05-19 11:03:06', '2015-05-19 11:03:06', NULL, '1', 27, 1, NULL),
(32, '', '2015-05-19 11:07:44', '2015-05-19 11:07:44', NULL, '0', 12, 1, NULL),
(33, '', '2015-05-19 11:09:05', '2015-05-19 11:09:05', NULL, '0', 12, 1, NULL),
(34, '', '2015-05-19 11:09:18', '2015-05-19 11:09:18', NULL, '0', 12, 1, NULL),
(35, '', '2015-05-19 11:09:37', '2015-05-19 11:09:37', NULL, '1', 12, 1, NULL),
(36, '', '2015-05-19 11:10:14', '2015-05-19 11:10:14', NULL, '0', 12, 1, NULL),
(37, '', '2015-05-19 11:11:54', '2015-05-19 11:11:54', NULL, '1', 12, 1, NULL),
(38, '', '2015-05-19 11:13:29', '2015-05-19 11:13:29', NULL, '0', 12, 1, NULL),
(39, '', '2015-05-19 11:21:55', '2015-05-19 11:21:55', NULL, '0', 12, 1, NULL),
(40, '', '2015-05-19 11:23:03', '2015-05-19 11:23:03', NULL, '0', 12, 1, NULL),
(41, '', '2015-05-19 11:23:12', '2015-05-19 11:23:12', NULL, '0', 12, 1, NULL),
(42, '', '2015-05-19 11:25:32', '2015-05-19 11:25:32', NULL, '0', 27, 1, NULL),
(43, '', '2015-05-19 11:26:47', '2015-05-19 11:26:47', NULL, '0', 12, 1, NULL),
(44, '', '2015-05-19 11:29:01', '2015-05-19 11:29:01', NULL, '0', 12, 1, NULL),
(45, '', '2015-05-19 11:29:12', '2015-05-19 11:29:12', NULL, '1', 12, 1, NULL),
(46, '', '2015-05-19 11:30:10', '2015-05-19 11:30:10', NULL, '0', 12, 1, NULL),
(47, '', '2015-05-19 11:32:04', '2015-05-19 11:32:04', NULL, '0', 27, 1, NULL),
(48, '', '2015-05-19 11:32:50', '2015-05-19 11:32:50', NULL, '0', 12, 1, NULL),
(49, '', '2015-05-19 11:33:59', '2015-05-19 11:33:59', NULL, '1', 12, 1, NULL),
(50, '', '2015-05-19 11:35:40', '2015-05-19 11:35:40', NULL, '1', 27, 1, NULL),
(51, '', '2015-05-19 11:38:50', '2015-05-19 11:38:50', NULL, '0', 27, 1, NULL),
(52, '', '2015-05-19 11:39:33', '2015-05-19 11:39:33', NULL, '1', 12, 1, NULL),
(53, '', '2015-05-19 11:39:40', '2015-05-19 11:39:40', NULL, '0', 12, 1, NULL),
(54, '', '2015-05-19 11:39:49', '2015-05-19 11:39:49', NULL, '0', 12, 1, NULL),
(55, '', '2015-05-19 11:39:58', '2015-05-19 11:39:58', NULL, '0', 12, 1, NULL),
(56, '', '2015-05-19 11:40:09', '2015-05-19 11:40:09', NULL, '1', 12, 1, NULL),
(57, '', '2015-05-19 11:40:17', '2015-05-19 11:40:17', NULL, '0', 12, 1, NULL),
(58, '', '2015-05-19 11:40:25', '2015-05-19 11:40:25', NULL, '0', 12, 1, NULL),
(59, '', '2015-05-19 11:40:34', '2015-05-19 11:40:34', NULL, '0', 12, 1, NULL),
(60, '', '2015-05-19 11:40:46', '2015-05-19 11:40:46', NULL, '1', 12, 1, NULL),
(61, '', '2015-05-19 11:40:52', '2015-05-19 11:40:52', NULL, '0', 12, 1, NULL),
(62, '', '2015-05-19 11:41:24', '2015-05-19 11:41:24', NULL, '0', 12, 1, NULL),
(63, '', '2015-05-19 11:41:38', '2015-05-19 11:41:38', NULL, '0', 12, 1, NULL),
(64, '', '2015-05-19 11:41:55', '2015-05-19 11:41:55', NULL, '0', 27, 1, NULL),
(65, '', '2015-05-19 11:42:29', '2015-05-19 11:42:29', NULL, '0', 27, 1, NULL),
(66, '', '2015-05-19 11:43:51', '2015-05-19 11:43:51', NULL, '0', 12, 1, NULL),
(67, '', '2015-05-19 11:44:10', '2015-05-19 11:44:10', NULL, '1', 12, 1, NULL),
(68, '', '2015-05-19 11:47:02', '2015-05-19 11:47:02', NULL, '0', 12, 1, NULL),
(69, '', '2015-05-19 11:47:22', '2015-05-19 11:47:22', NULL, '1', 12, 1, NULL),
(70, '', '2015-05-19 11:49:33', '2015-05-19 11:49:33', NULL, '0', 12, 1, NULL),
(71, '', '2015-05-19 11:50:22', '2015-05-19 11:50:22', NULL, '1', 12, 1, NULL),
(72, '', '2015-05-19 11:51:12', '2015-05-19 11:51:12', NULL, '1', 12, 1, NULL),
(74, '', '2015-05-19 11:52:45', '2015-05-19 11:52:45', NULL, '0', 11, 1, NULL),
(75, '', '2015-05-19 11:52:53', '2015-05-19 11:52:53', NULL, '1', 11, 1, NULL),
(76, '', '2015-05-19 11:54:08', '2015-05-19 11:54:08', NULL, '0', 12, 1, NULL),
(77, '', '2015-05-19 11:55:03', '2015-05-19 11:55:03', NULL, '0', 12, 1, NULL),
(78, '', '2015-05-19 11:58:19', '2015-05-19 11:58:19', NULL, '0', 12, 1, NULL),
(79, '', '2015-05-19 12:04:47', '2015-05-19 12:04:47', NULL, '0', 27, 1, NULL),
(80, '', '2015-05-19 12:07:26', '2015-05-19 12:07:26', NULL, '0', 27, 1, NULL),
(81, '', '2015-05-19 12:15:13', '2015-05-19 12:15:13', NULL, '0', 27, 1, NULL),
(82, '', '2015-05-19 12:16:04', '2015-05-19 12:16:04', NULL, '0', 12, 1, NULL),
(83, '', '2015-05-19 12:16:22', '2015-05-19 12:16:22', NULL, '0', 12, 1, NULL),
(84, '', '2015-05-19 12:47:20', '2015-05-19 12:47:20', NULL, '0', 27, 1, NULL),
(85, '', '2015-05-19 12:47:38', '2015-05-19 12:47:38', NULL, '0', 27, 1, NULL),
(86, '', '2015-05-19 12:48:15', '2015-05-19 12:48:15', NULL, '0', 12, 1, NULL),
(87, '', '2015-05-19 12:48:32', '2015-05-19 12:48:32', NULL, '0', 12, 1, NULL),
(88, '', '2015-05-19 12:48:47', '2015-05-19 12:48:47', NULL, '0', 12, 1, NULL),
(89, '', '2015-05-19 12:49:01', '2015-05-19 12:49:01', NULL, '0', 12, 1, NULL),
(90, '', '2015-05-19 13:06:20', '2015-05-19 13:06:20', NULL, '0', 12, 1, NULL),
(91, '', '2015-05-19 13:09:58', '2015-05-19 13:09:58', NULL, '0', 12, 1, NULL),
(92, '', '2015-05-19 13:11:54', '2015-05-19 13:11:54', NULL, '0', 12, 1, NULL),
(93, '', '2015-05-19 13:12:32', '2015-05-19 13:12:32', NULL, '0', 12, 1, NULL),
(94, '', '2015-05-19 13:12:54', '2015-05-19 13:12:54', NULL, '0', 12, 1, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(18, 'page_title', 'Page Title', 'Displays a Page''s Title', 0, 0, 0, 0, 0, 0, 0, 400, 400, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(11, 1, 0, 0, 0, '', 0, '', ''),
(12, 1, 0, 0, 0, '', 1, 'logo', ''),
(14, 2, 0, 0, 0, '', 0, '', ''),
(20, 3, 0, 0, 0, '', 0, '', ''),
(30, 4, 0, 0, 0, '', 0, '', ''),
(31, 4, 4, 0, 0, '', 0, '', ''),
(42, 5, 0, 0, 0, '', 0, '', ''),
(47, 6, 0, 0, 0, '', 0, '', ''),
(50, 5, 0, 0, 0, '', 1, '', ''),
(51, 7, 0, 0, 0, '', 0, '', ''),
(64, 8, 0, 0, 0, '', 0, '', ''),
(65, 9, 0, 0, 0, '', 0, '', ''),
(79, 10, 0, 0, 0, '', 0, '', ''),
(80, 4, 0, 0, 0, '', 0, '', ''),
(81, 11, 0, 0, 0, '', 0, '', ''),
(84, 12, 0, 0, 0, '', 0, '', ''),
(85, 13, 0, 0, 0, '', 0, '', '');

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
(10, ''),
(15, '<h3>Who We Are</h3>'),
(16, '<h1>Hello &amp; Namaste</h1>'),
(17, '<p>We do not build websites but user experiences. We judge our performance according to the impact it makes</p>'),
(18, '<h4>Web Design</h4>'),
(19, '<p>Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis. </p>'),
(21, '<h4>Development</h4>'),
(22, '<h4>Graphics</h4>'),
(23, '<h4>Illustrations</h4>'),
(24, '<p>Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.</p>'),
(25, '<p>Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis. </p>'),
(26, '<p>Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis. </p>'),
(27, '<h3>What We Do</h3>'),
(28, '<h2>Our Works</h2>'),
(29, '<p>Suspendisse ultrices eu massa non interdum. Cras eros nisi, pulvinar quis sem et, pellentesque blandit lacus.</p>'),
(32, '<p>King author</p>'),
(33, '<p>Photography</p>'),
(34, '<p>Photography<br></p>'),
(35, '<p>Photography</p>'),
(36, '<p>King Author</p>'),
(37, '<p>King Author  </p>'),
(38, '<h3>King Author</h3>'),
(39, '<h3>Our Recent Posts</h3>'),
(40, '<h4>Recent Blog</h4>'),
(41, '<p>We do not build websites but user experiences. We judge our performance according to the impact it makes</p>'),
(43, '<p>People in our country love chaos</p>'),
(44, '<h3>People in our country love chaos</h3>'),
(45, '<h3>People in our country love chaos</h3>'),
(46, '<p>Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis. </p>'),
(48, '<p>23rd march 2015</p>'),
(49, '<h4>23rd march 2015  </h4>'),
(52, '<h3>People in our country love chaos</h3>'),
(53, '<h3>People in our country love chaos</h3>'),
(54, '<h3>People in our country love chaos</h3>'),
(55, '<h3>People in our country love chaos</h3>'),
(56, '<p>Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.  </p>'),
(57, '<p>Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.  </p>'),
(58, '<p>Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.  </p>'),
(59, '<p>Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.  </p>'),
(60, '<h4>23rd march 2015</h4>'),
(61, '<h4>23rd march 2015</h4>'),
(62, '<h4>23rd march 2015</h4>'),
(63, '<h4>23rd march 2015</h4>'),
(66, '<h3>Sed ut perspiciatis unde omnis iste natus</h3>'),
(67, '<h3>Sed ut perspiciatis unde omnis iste natus</h3>'),
(68, '© 2015 All Rights Reseverd Template by <a href="http://w3layouts.com/">W3layouts</a>'),
(69, '<p>© 2015 All Rights Reseverd Template by <a href="http://w3layouts.com/">W3layouts</a>  </p>'),
(70, '<p>2147-5487-368  </p>  <p><span><a href="mailto:info@mycompany.com">info(at)mycompany.com</a></span></p>  <p>On the other hand, denounce righteous</p>'),
(71, '<p>2147-5487-368  </p>  <p><a href="mailto:info@mycompany.com">info@mycompany.com</a></p>  <p>On the other hand, denounce righteous</p>'),
(72, '		  <p>2147-5487-368</p>  		  <p><span><a href="mailto:info@mycompany.com">info(at)mycompany.com</a></span></p>  		  <p>On the other hand, denounce righteous</p>'),
(76, '<ul class="list_1">  				<li><a href="#">Home</a></li>  				<li><a href="#">About Us</a></li>  				<li><a href="#">Blog</a></li>  				<li><a href="#">Contact</a></li>  				<li><a href="#">Disclaimer</a></li>  			</ul>'),
(77, '<ul class="list_1">  				<li><a href="#">Blog</a></li>  				<li><a href="#">Photography</a></li>  				<li><a href="#">Freebies</a></li>  				<li><a href="#">Journal</a></li>  				<li><a href="#">News</a></li>  			</ul>'),
(78, '<ul class="social">  			  <li><a href="#"> <i class="fb"> </i> </a></li>  			  <li><a href="#"> <i class="tw"> </i> </a></li>  			  <li><a href="#"> <i class="github"> </i> </a></li>  			  <li><a href="#"> <i class="linked"> </i> </a></li>  			  <li><a href="#"> <i class="google"> </i> </a></li>  		  </ul>'),
(82, '<h3>King Author</h3>'),
(83, '<p>Photography</p>'),
(86, '<h3>King Author</h3>'),
(87, '<p>Photography</p>'),
(88, '<h3>King Author</h3>'),
(89, '<p>Photography</p>'),
(90, '<p>photography</p>'),
(91, '<span class="top-icon2"> </span>'),
(92, '<span class="top-icon1"> </span>'),
(93, '<span class="top-icon3"> </span>'),
(94, '<span class="top-icon4"> </span>');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btCoreAreaLayout`
--

CREATE TABLE IF NOT EXISTS `btCoreAreaLayout` (
  `bID` int(10) unsigned NOT NULL DEFAULT '0',
  `arLayoutID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `customDateFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btForm`
--

CREATE TABLE IF NOT EXISTS `btForm` (
  `bID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Submit',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btFormAnswerSet`
--

CREATE TABLE IF NOT EXISTS `btFormAnswerSet` (
  `asID` int(10) unsigned NOT NULL,
  `questionSetId` int(10) unsigned DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `defaultDate` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btImageSlider`
--

CREATE TABLE IF NOT EXISTS `btImageSlider` (
  `bID` int(10) unsigned NOT NULL,
  `navigationType` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(13, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(74, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0),
(75, 'display_asc', 'top', 0, 0, 'none', 'enough', 0, 0);

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
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) unsigned NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
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
  `titleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `btSocialLinks`
--

CREATE TABLE IF NOT EXISTS `btSocialLinks` (
  `btSocialLinkID` int(10) unsigned NOT NULL,
  `bID` int(10) unsigned DEFAULT '0',
  `slID` int(10) unsigned DEFAULT '0',
  `displayOrder` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(122, 1, 3, 104),
(124, 1, 3, 105),
(125, 1, 5, 106),
(126, 1, 5, 107),
(126, 1, 10, 108),
(127, 1, 4, 109),
(128, 1, 4, 110),
(129, 1, 4, 111),
(132, 1, 4, 112);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Collections`
--

CREATE TABLE IF NOT EXISTS `Collections` (
  `cID` int(10) unsigned NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Collections`
--

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2015-05-19 09:57:30', '2015-05-19 13:14:05', 'home'),
(2, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'dashboard'),
(3, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'sitemap'),
(4, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'full'),
(5, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'explore'),
(6, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'search'),
(7, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'files'),
(8, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'search'),
(9, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'attributes'),
(10, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'sets'),
(11, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'add_set'),
(12, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'users'),
(13, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'search'),
(14, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'groups'),
(15, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'attributes'),
(16, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'add'),
(17, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'add_group'),
(18, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'bulkupdate'),
(19, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'group_sets'),
(20, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'points'),
(21, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'assign'),
(22, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'actions'),
(23, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'reports'),
(24, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'forms'),
(25, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'surveys'),
(26, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'logs'),
(27, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'pages'),
(28, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'themes'),
(29, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'inspect'),
(30, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'types'),
(31, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'organize'),
(32, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'add'),
(33, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'form'),
(34, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'output'),
(35, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'attributes'),
(36, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'permissions'),
(37, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'templates'),
(38, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'add'),
(39, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'attributes'),
(40, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'single'),
(41, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'feeds'),
(42, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'conversations'),
(43, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'messages'),
(44, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'workflow'),
(45, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'workflows'),
(46, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'me'),
(47, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'blocks'),
(48, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'stacks'),
(49, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'permissions'),
(50, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'list'),
(51, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'types'),
(52, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'extend'),
(53, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'news'),
(54, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'install'),
(55, '2015-05-19 09:57:34', '2015-05-19 09:57:35', 'update'),
(56, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'connect'),
(57, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'themes'),
(58, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'addons'),
(59, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'system'),
(60, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'basics'),
(61, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'name'),
(62, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'accessibility'),
(63, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'social'),
(64, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'icons'),
(65, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'editor'),
(66, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'multilingual'),
(67, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'timezone'),
(68, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'multilingual'),
(69, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'setup'),
(70, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'page_report'),
(71, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'translate_interface'),
(72, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'seo'),
(73, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'urls'),
(74, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'bulk'),
(75, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'codes'),
(76, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'excluded'),
(77, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'searchindex'),
(78, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'files'),
(79, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'permissions'),
(80, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'filetypes'),
(81, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'thumbnails'),
(82, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'storage'),
(83, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'optimization'),
(84, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'cache'),
(85, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'clearcache'),
(86, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'jobs'),
(87, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'query_log'),
(88, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'permissions'),
(89, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'site'),
(90, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'tasks'),
(91, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'users'),
(92, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'advanced'),
(93, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'blacklist'),
(94, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'captcha'),
(95, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'antispam'),
(96, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'maintenance'),
(97, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'registration'),
(98, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'postlogin'),
(99, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'profiles'),
(100, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'open'),
(101, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'authentication'),
(102, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'mail'),
(103, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'method'),
(104, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'test'),
(105, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'importers'),
(106, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'conversations'),
(107, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'settings'),
(108, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'points'),
(109, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'bannedwords'),
(110, '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'permissions'),
(111, '2015-05-19 09:57:35', '2015-05-19 09:57:36', 'attributes'),
(112, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'sets'),
(113, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'types'),
(114, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'topics'),
(115, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'add'),
(116, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'environment'),
(117, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'info'),
(118, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'debug'),
(119, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'logging'),
(120, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'proxy'),
(121, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'entities'),
(122, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'backup'),
(123, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'backup'),
(124, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'update'),
(125, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'welcome'),
(126, '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'home'),
(127, '2015-05-19 09:57:38', '2015-05-19 09:57:38', '!drafts'),
(128, '2015-05-19 09:57:38', '2015-05-19 09:57:38', '!trash'),
(129, '2015-05-19 09:57:38', '2015-05-19 09:57:38', '!stacks'),
(130, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'login'),
(131, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'register'),
(132, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'account'),
(133, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'edit_profile'),
(134, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'avatar'),
(135, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'messages'),
(136, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'inbox'),
(137, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'members'),
(138, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'profile'),
(139, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'directory'),
(140, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'page_not_found'),
(141, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'page_forbidden'),
(142, '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'download_file'),
(143, '2015-05-19 09:57:39', '2015-05-19 09:57:39', NULL),
(144, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'header-site-title'),
(145, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'header-navigation'),
(146, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'footer-legal'),
(147, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'footer-navigation'),
(148, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'footer-contact'),
(149, '2015-05-19 10:02:08', '2015-05-19 10:02:08', ''),
(150, '2015-05-19 10:21:47', '2015-05-19 10:23:33', 'site-logo'),
(151, '2015-05-19 10:24:58', '2015-05-19 10:25:39', 'menu'),
(152, '2015-05-19 10:29:44', '2015-05-19 10:30:34', 'logo'),
(153, '2015-05-19 10:35:27', '2015-05-19 10:36:51', 'titel1'),
(154, '2015-05-19 10:35:27', '2015-05-19 10:36:51', 'ondertitel1'),
(155, '2015-05-19 10:35:27', '2015-05-19 10:36:51', 'tekst1'),
(156, '2015-05-19 10:38:36', '2015-05-19 10:39:22', 'titel2'),
(157, '2015-05-19 10:38:36', '2015-05-19 10:39:22', 'tekst2'),
(158, '2015-05-19 10:39:56', '2015-05-19 13:14:05', 'foto2'),
(159, '2015-05-19 10:43:56', '2015-05-19 10:45:14', 'titel3'),
(160, '2015-05-19 10:43:56', '2015-05-19 10:45:14', 'tekst3'),
(161, '2015-05-19 10:43:56', '2015-05-19 10:45:14', 'titel4'),
(162, '2015-05-19 10:43:56', '2015-05-19 10:45:14', 'tekst4'),
(163, '2015-05-19 10:43:56', '2015-05-19 10:45:14', 'titel5'),
(164, '2015-05-19 10:43:56', '2015-05-19 10:45:14', 'tekst5'),
(165, '2015-05-19 10:47:09', '2015-05-19 10:47:56', 'titel6'),
(166, '2015-05-19 10:47:09', '2015-05-19 10:47:56', 'ondertitel6'),
(167, '2015-05-19 10:47:09', '2015-05-19 10:47:56', 'tekst6'),
(168, '2015-05-19 10:53:06', '2015-05-19 12:49:05', 'foto7'),
(169, '2015-05-19 10:53:06', '2015-05-19 10:53:06', 'ondertitel7'),
(170, '2015-05-19 10:53:06', '2015-05-19 11:10:17', 'tekst7'),
(171, '2015-05-19 11:02:31', '2015-05-19 11:02:31', 'foto71'),
(172, '2015-05-19 11:07:15', '2015-05-19 11:10:17', 'bijschrift7'),
(173, '2015-05-19 11:08:29', '2015-05-19 11:13:33', 'titel7'),
(174, '2015-05-19 11:14:20', '2015-05-19 12:49:05', 'titel8'),
(175, '2015-05-19 11:14:20', '2015-05-19 12:49:05', 'tekst8'),
(176, '2015-05-19 11:14:20', '2015-05-19 12:49:05', 'titel9'),
(177, '2015-05-19 11:14:20', '2015-05-19 12:49:05', 'tekst9'),
(178, '2015-05-19 11:14:20', '2015-05-19 13:06:29', 'titel10'),
(179, '2015-05-19 11:14:20', '2015-05-19 13:06:29', 'tekst10'),
(180, '2015-05-19 11:15:58', '2015-05-19 11:15:58', 'info'),
(181, '2015-05-19 11:20:35', '2015-05-19 11:23:18', 'titel11'),
(182, '2015-05-19 11:20:35', '2015-05-19 11:23:18', 'ondertitel11'),
(183, '2015-05-19 11:20:35', '2015-05-19 11:23:18', 'tekst11'),
(184, '2015-05-19 11:24:08', '2015-05-19 11:35:49', 'foto12'),
(185, '2015-05-19 11:26:09', '2015-05-19 11:41:06', 'titel12'),
(186, '2015-05-19 11:29:38', '2015-05-19 11:41:06', 'tekst12'),
(187, '2015-05-19 11:31:03', '2015-05-19 11:41:06', 'datum12'),
(188, '2015-05-19 11:31:03', '2015-05-19 11:31:03', 'pijl12'),
(189, '2015-05-19 11:31:10', '2015-05-19 11:32:54', 'pijl'),
(190, '2015-05-19 11:38:26', '2015-05-19 11:39:16', 'foto13'),
(191, '2015-05-19 11:38:26', '2015-05-19 11:41:06', 'titel13'),
(192, '2015-05-19 11:38:26', '2015-05-19 11:41:06', 'tekst13'),
(193, '2015-05-19 11:38:26', '2015-05-19 11:41:06', 'datum13'),
(194, '2015-05-19 11:38:26', '2015-05-19 11:42:34', 'foto14'),
(195, '2015-05-19 11:38:26', '2015-05-19 11:41:07', 'titel14'),
(196, '2015-05-19 11:38:26', '2015-05-19 11:41:07', 'tekst14'),
(197, '2015-05-19 11:38:26', '2015-05-19 11:42:34', 'datum14'),
(198, '2015-05-19 11:38:26', '2015-05-19 11:42:34', 'foto15'),
(199, '2015-05-19 11:38:26', '2015-05-19 11:41:07', 'titel15'),
(200, '2015-05-19 11:38:26', '2015-05-19 11:41:07', 'tekst15'),
(201, '2015-05-19 11:38:26', '2015-05-19 11:42:34', 'datum15'),
(202, '2015-05-19 11:43:32', '2015-05-19 11:47:31', 'tekst16'),
(203, '2015-05-19 11:45:59', '2015-05-19 11:47:31', 'copy'),
(204, '2015-05-19 11:48:35', '2015-05-19 11:51:16', 'contact'),
(205, '2015-05-19 11:52:05', '2015-05-19 11:55:08', 'pagina1'),
(206, '2015-05-19 11:52:05', '2015-05-19 11:55:08', 'pagina2'),
(207, '2015-05-19 11:58:08', '2015-05-19 11:59:02', 'social'),
(208, '2015-05-19 12:03:57', '2015-05-19 12:49:05', 'pijl-gallery'),
(209, '2015-05-19 12:09:37', '2015-05-19 12:49:05', 'foto8'),
(210, '2015-05-19 12:09:37', '2015-05-19 12:49:05', 'foto9'),
(211, '2015-05-19 12:09:38', '2015-05-19 12:49:05', 'foto10'),
(212, '2015-05-19 13:09:41', '2015-05-19 13:10:52', 'foto3'),
(213, '2015-05-19 13:10:45', '2015-05-19 13:14:05', 'foto4'),
(214, '2015-05-19 13:10:45', '2015-05-19 13:14:05', 'foto5');

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
(73, NULL, NULL, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', NULL, 0, 0, NULL, NULL, 0, 0, 0),
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
(121, NULL, NULL, 'database, entities, doctrine, orm', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(122, NULL, NULL, 'export, backup, database, sql, mysql, encryption, restore', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(124, NULL, NULL, 'upgrade, new version, update', NULL, 0, 0, NULL, NULL, 0, 0, 0),
(125, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0),
(126, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 1, 0),
(127, NULL, NULL, NULL, 'fa fa-edit', 0, 0, NULL, NULL, 0, 0, 0),
(128, NULL, NULL, NULL, 'fa fa-trash-o', 0, 0, NULL, NULL, 0, 0, 0),
(129, NULL, NULL, NULL, 'fa fa-th', 0, 0, NULL, NULL, 0, 0, 0),
(132, NULL, NULL, NULL, 'fa fa-briefcase', 0, 0, NULL, NULL, 0, 0, 0),
(150, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(151, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(152, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(153, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(154, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(155, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(156, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(157, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(158, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(159, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(160, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(161, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(162, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(163, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(164, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(165, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(166, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(167, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(168, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(170, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(172, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(173, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(174, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(175, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(176, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(177, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(178, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(179, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(181, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(182, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(183, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(184, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(185, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(186, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(187, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(189, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(190, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(191, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(192, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(193, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(194, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(195, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(196, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(197, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(198, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(199, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(200, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(201, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(202, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(203, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(204, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(205, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(206, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(207, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(208, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(209, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(210, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(211, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(212, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(213, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0),
(214, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0);

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

--
-- Gegevens worden geëxporteerd voor tabel `CollectionVersionAreaStyles`
--

INSERT INTO `CollectionVersionAreaStyles` (`cID`, `cvID`, `arHandle`, `issID`) VALUES
(1, 28, 'foto7', 1),
(1, 29, 'foto7', 1),
(1, 30, 'foto7', 1),
(1, 31, 'foto7', 1);

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
(125, 1, 1, 'Main', 0, 1, 0, 0, 0),
(126, 1, 2, 'Primary', 0, 1, 0, 0, 0),
(126, 1, 3, 'Primary', 1, 1, 0, 0, 0),
(126, 1, 4, 'Secondary 1', 0, 1, 0, 0, 0),
(126, 1, 5, 'Secondary 2', 0, 1, 0, 0, 0),
(126, 1, 6, 'Secondary 3', 0, 1, 0, 0, 0),
(126, 1, 7, 'Secondary 4', 0, 1, 0, 0, 0),
(126, 1, 8, 'Secondary 5', 0, 1, 0, 0, 0),
(143, 1, 9, 'Main', 0, 1, 0, 0, 0),
(149, 1, 10, 'Main', 0, 1, 0, 0, 0),
(150, 2, 11, 'Main', 0, 1, 0, 0, 0),
(150, 3, 12, 'Main', 0, 1, 0, 0, 0),
(151, 2, 13, 'Main', 0, 1, 0, 0, 0),
(152, 2, 14, 'Main', 0, 1, 0, 0, 0),
(153, 2, 15, 'Main', 0, 1, 0, 0, 0),
(154, 2, 16, 'Main', 0, 1, 0, 0, 0),
(155, 2, 17, 'Main', 0, 1, 0, 0, 0),
(156, 2, 18, 'Main', 0, 1, 0, 0, 0),
(157, 2, 19, 'Main', 0, 1, 0, 0, 0),
(158, 2, 20, 'Main', 0, 1, 0, 0, 0),
(158, 4, 92, 'Main', 0, 1, 0, 0, 0),
(159, 2, 21, 'Main', 0, 1, 0, 0, 0),
(160, 2, 24, 'Main', 0, 1, 0, 0, 0),
(161, 2, 22, 'Main', 0, 1, 0, 0, 0),
(162, 2, 25, 'Main', 0, 1, 0, 0, 0),
(163, 2, 23, 'Main', 0, 1, 0, 0, 0),
(164, 2, 26, 'Main', 0, 1, 0, 0, 0),
(165, 2, 27, 'Main', 0, 1, 0, 0, 0),
(166, 2, 28, 'Main', 0, 1, 0, 0, 0),
(167, 2, 29, 'Main', 0, 1, 0, 0, 0),
(168, 2, 30, 'Main', 0, 1, 0, 0, 0),
(168, 3, 31, 'Main', 0, 1, 0, 0, 0),
(168, 5, 80, 'Main', 0, 1, 0, 0, 0),
(170, 2, 34, 'Main', 0, 1, 0, 0, 0),
(172, 2, 32, 'Main', 0, 1, 0, 0, 0),
(173, 2, 33, 'Main', 0, 1, 0, 0, 0),
(173, 3, 35, 'Main', 0, 1, 0, 0, 0),
(173, 5, 36, 'Main', 0, 1, 0, 0, 0),
(173, 6, 37, 'Main', 0, 1, 0, 0, 0),
(173, 8, 38, 'Main', 0, 1, 0, 0, 0),
(174, 2, 82, 'Main', 0, 1, 0, 0, 0),
(175, 2, 83, 'Main', 0, 1, 0, 0, 0),
(176, 2, 86, 'Main', 0, 1, 0, 0, 0),
(177, 2, 87, 'Main', 0, 1, 0, 0, 0),
(178, 2, 88, 'Main', 0, 1, 0, 0, 0),
(178, 3, 88, 'Main', 0, 0, 0, 0, 0),
(178, 3, 89, 'Main', 1, 1, 0, 0, 0),
(178, 4, 88, 'Main', 0, 0, 0, 0, 0),
(179, 2, 90, 'Main', 0, 1, 0, 0, 0),
(181, 2, 39, 'Main', 0, 1, 0, 0, 0),
(182, 2, 40, 'Main', 0, 1, 0, 0, 0),
(183, 2, 41, 'Main', 0, 1, 0, 0, 0),
(184, 2, 42, 'Main', 0, 1, 0, 0, 0),
(184, 3, 50, 'Main', 0, 1, 0, 0, 0),
(185, 2, 43, 'Main', 0, 1, 0, 0, 0),
(185, 4, 44, 'Main', 0, 1, 0, 0, 0),
(185, 5, 45, 'Main', 0, 1, 0, 0, 0),
(185, 6, 52, 'Main', 0, 1, 0, 0, 0),
(186, 2, 46, 'Main', 0, 1, 0, 0, 0),
(186, 3, 56, 'Main', 0, 1, 0, 0, 0),
(187, 2, 48, 'Main', 0, 1, 0, 0, 0),
(187, 3, 49, 'Main', 0, 1, 0, 0, 0),
(187, 4, 60, 'Main', 0, 1, 0, 0, 0),
(189, 2, 47, 'Main', 0, 1, 0, 0, 0),
(190, 2, 51, 'Main', 0, 1, 0, 0, 0),
(191, 2, 53, 'Main', 0, 1, 0, 0, 0),
(192, 2, 57, 'Main', 0, 1, 0, 0, 0),
(193, 2, 61, 'Main', 0, 1, 0, 0, 0),
(194, 2, 64, 'Main', 0, 1, 0, 0, 0),
(195, 2, 54, 'Main', 0, 1, 0, 0, 0),
(196, 2, 58, 'Main', 0, 1, 0, 0, 0),
(197, 2, 62, 'Main', 0, 1, 0, 0, 0),
(198, 2, 65, 'Main', 0, 1, 0, 0, 0),
(199, 2, 55, 'Main', 0, 1, 0, 0, 0),
(200, 2, 59, 'Main', 0, 1, 0, 0, 0),
(201, 2, 63, 'Main', 0, 1, 0, 0, 0),
(202, 2, 66, 'Main', 0, 1, 0, 0, 0),
(202, 3, 67, 'Main', 0, 1, 0, 0, 0),
(203, 2, 68, 'Main', 0, 1, 0, 0, 0),
(203, 3, 69, 'Main', 0, 1, 0, 0, 0),
(204, 2, 70, 'Main', 0, 1, 0, 0, 0),
(204, 3, 71, 'Main', 0, 1, 0, 0, 0),
(204, 4, 72, 'Main', 0, 1, 0, 0, 0),
(205, 2, 74, 'Main', 0, 1, 0, 0, 0),
(205, 3, 75, 'Main', 0, 1, 0, 0, 0),
(205, 5, 76, 'Main', 0, 1, 0, 0, 0),
(206, 2, 77, 'Main', 0, 1, 0, 0, 0),
(207, 2, 78, 'Main', 0, 1, 0, 0, 0),
(208, 2, 79, 'Main', 0, 1, 0, 0, 0),
(209, 2, 81, 'Main', 0, 1, 0, 0, 0),
(210, 2, 84, 'Main', 0, 1, 0, 0, 0),
(211, 2, 85, 'Main', 0, 1, 0, 0, 0),
(212, 2, 91, 'Main', 0, 1, 0, 0, 0),
(213, 2, 93, 'Main', 0, 1, 0, 0, 0),
(214, 2, 94, 'Main', 0, 1, 0, 0, 0);

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
(150, 2, 1),
(150, 3, 2),
(152, 2, 3),
(158, 2, 4),
(168, 2, 5),
(168, 3, 6),
(184, 2, 7),
(189, 2, 8),
(184, 3, 9),
(190, 2, 10),
(194, 2, 11),
(198, 2, 12),
(208, 2, 13),
(168, 5, 14),
(209, 2, 15),
(210, 2, 16),
(211, 2, 17);

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
(1, 1, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 09:57:30', 'Initial Version', 0, 0, 1, NULL, 2, 5, NULL),
(1, 2, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 10:22:35', 'Version 2', 0, 0, 1, 1, 2, 5, NULL),
(1, 3, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 10:23:29', 'Version 3', 0, 0, 1, 1, 2, 5, NULL),
(1, 4, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 10:25:30', 'Version 4', 0, 0, 1, 1, 2, 5, NULL),
(1, 5, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 10:30:30', 'Version 5', 0, 0, 1, 1, 2, 5, NULL),
(1, 6, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 10:35:58', 'Version 6', 0, 0, 1, 1, 2, 5, NULL),
(1, 7, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 10:39:05', 'Version 7', 0, 0, 1, 1, 2, 5, NULL),
(1, 8, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 10:42:08', 'Version 8', 0, 0, 1, 1, 2, 5, NULL),
(1, 9, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 10:47:34', 'Version 9', 0, 0, 1, 1, 2, 5, NULL),
(1, 10, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 10:57:48', 'Version 10', 0, 0, 1, 1, 2, 5, NULL),
(1, 11, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:03:06', 'Version 11', 0, 0, 1, 1, 2, 5, NULL),
(1, 12, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:11:54', 'Version 12', 0, 0, 1, 1, 2, 5, NULL),
(1, 13, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:21:55', 'Version 13', 0, 0, 1, 1, 2, 5, NULL),
(1, 14, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:25:32', 'Version 14', 0, 0, 1, 1, 2, 5, NULL),
(1, 15, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:28:39', 'Version 15', 0, 0, 1, 1, 2, 5, NULL),
(1, 16, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:33:59', 'Version 16', 0, 0, 1, 1, 2, 5, NULL),
(1, 17, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:35:40', 'Version 17', 0, 0, 1, 1, 2, 5, NULL),
(1, 18, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:38:50', 'Version 18', 0, 0, 1, 1, 2, 5, NULL),
(1, 19, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:39:33', 'Version 19', 0, 0, 1, 1, 2, 5, NULL),
(1, 20, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:41:24', 'Version 20', 0, 0, 1, 1, 2, 5, NULL),
(1, 21, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:43:51', 'Version 21', 0, 0, 1, 1, 2, 5, NULL),
(1, 22, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:49:33', 'Version 22', 0, 0, 1, 1, 2, 5, NULL),
(1, 23, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:50:22', 'Version 23', 0, 0, 1, 1, 2, 5, NULL),
(1, 24, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:51:12', 'Version 24', 0, 0, 1, 1, 2, 5, NULL),
(1, 25, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:52:45', 'Version 25', 0, 0, 1, 1, 2, 5, NULL),
(1, 26, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:53:17', 'Version 26', 0, 0, 1, 1, 2, 5, NULL),
(1, 27, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 11:58:19', 'Version 27', 0, 0, 1, 1, 2, 5, NULL),
(1, 28, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 12:04:48', 'Version 28', 0, 0, 1, 1, 2, 5, NULL),
(1, 29, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 13:05:58', 'Version 29', 0, 0, 1, 1, 2, 5, NULL),
(1, 30, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 13:09:58', 'Version 30', 0, 0, 1, 1, 2, 5, NULL),
(1, 31, 'Home', 'home', '', '2015-05-19 09:57:30', '2015-05-19 13:11:12', 'Version 31', 1, 0, 1, 1, 2, 5, NULL),
(2, 1, 'Dashboard', 'dashboard', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(3, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(4, 1, 'Full Sitemap', 'full', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(5, 1, 'Flat View', 'explore', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(6, 1, 'Page Search', 'search', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(7, 1, 'Files', 'files', 'All documents and images.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(8, 1, 'File Manager', 'search', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(9, 1, 'Attributes', 'attributes', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(10, 1, 'File Sets', 'sets', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(11, 1, 'Add File Set', 'add_set', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(12, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(13, 1, 'Search Users', 'search', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(14, 1, 'User Groups', 'groups', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(15, 1, 'Attributes', 'attributes', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(16, 1, 'Add User', 'add', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(17, 1, 'Add Group', 'add_group', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(18, 1, 'Move Multiple Groups', 'bulkupdate', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(19, 1, 'Group Sets', 'group_sets', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(20, 1, 'Community Points', 'points', NULL, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(21, 1, 'Assign Points', 'assign', NULL, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(22, 1, 'Actions', 'actions', NULL, '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(23, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(24, 1, 'Form Results', 'forms', 'Get submission data.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(25, 1, 'Surveys', 'surveys', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(26, 1, 'Logs', 'logs', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(27, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(28, 1, 'Themes', 'themes', 'Reskin your site.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(29, 1, 'Inspect', 'inspect', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(30, 1, 'Page Types', 'types', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(31, 1, 'Organize Page Type Order', 'organize', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(32, 1, 'Add Page Type', 'add', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(33, 1, 'Compose Form', 'form', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(34, 1, 'Defaults and Output', 'output', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(35, 1, 'Page Type Attributes', 'attributes', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(36, 1, 'Page Type Permissions', 'permissions', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(37, 1, 'Page Templates', 'templates', 'Form factors for pages in your site.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(38, 1, 'Add Page Template', 'add', 'Add page templates to your site.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(39, 1, 'Attributes', 'attributes', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(40, 1, 'Single Pages', 'single', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(41, 1, 'RSS Feeds', 'feeds', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(42, 1, 'Conversations', 'conversations', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(43, 1, 'Messages', 'messages', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(44, 1, 'Workflow', 'workflow', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(45, 1, 'Workflow List', 'workflows', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(46, 1, 'Waiting for Me', 'me', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(47, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(48, 1, 'Stacks', 'stacks', 'Share content across your site.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(49, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(50, 1, 'Stack List', 'list', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(51, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(52, 1, 'Extend concrete5', 'extend', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(53, 1, 'Dashboard', 'news', '', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(54, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(55, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2015-05-19 09:57:34', '2015-05-19 09:57:34', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(56, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(57, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(58, 1, 'Get More Add-Ons', 'addons', 'Download add-ons from concrete5.org.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(59, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(60, 1, 'Basics', 'basics', 'Basic information about your website.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(61, 1, 'Site Name', 'name', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(62, 1, 'Accessibility', 'accessibility', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(63, 1, 'Social Links', 'social', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(64, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(65, 1, 'Rich Text Editor', 'editor', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(66, 1, 'Languages', 'multilingual', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(67, 1, 'Time Zone', 'timezone', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(68, 1, 'Multilingual', 'multilingual', 'Run your site in multiple languages.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(69, 1, 'Multilingual Setup', 'setup', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(70, 1, 'Page Report', 'page_report', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(71, 1, 'Translate Site Interface', 'translate_interface', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(72, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs and tracking codes.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(73, 1, 'URLs and Redirection', 'urls', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(74, 1, 'Bulk SEO Updater', 'bulk', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(75, 1, 'Tracking Codes', 'codes', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(76, 1, 'Excluded URL Word List', 'excluded', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(77, 1, 'Search Index', 'searchindex', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(78, 1, 'Files', 'files', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(79, 1, 'File Manager Permissions', 'permissions', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(80, 1, 'Allowed File Types', 'filetypes', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(81, 1, 'Thumbnails', 'thumbnails', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(82, 1, 'File Storage Locations', 'storage', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(83, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(84, 1, 'Cache & Speed Settings', 'cache', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(85, 1, 'Clear Cache', 'clearcache', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(86, 1, 'Automated Jobs', 'jobs', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(87, 1, 'Database Query Log', 'query_log', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(88, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(89, 1, 'Site Access', 'site', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(90, 1, 'Task Permissions', 'tasks', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(91, 1, 'User Permissions', 'users', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(92, 1, 'Advanced Permissions', 'advanced', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(93, 1, 'IP Blacklist', 'blacklist', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(94, 1, 'Captcha Setup', 'captcha', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(95, 1, 'Spam Control', 'antispam', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(96, 1, 'Maintenance Mode', 'maintenance', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(97, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(98, 1, 'Login Destination', 'postlogin', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(99, 1, 'Public Profiles', 'profiles', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(100, 1, 'Public Registration', 'open', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(101, 1, 'Authentication Types', 'authentication', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(102, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(103, 1, 'SMTP Method', 'method', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(104, 1, 'Test Mail Settings', 'test', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(105, 1, 'Email Importers', 'importers', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(106, 1, 'Conversations', 'conversations', 'Manage your conversations settings', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(107, 1, 'Settings', 'settings', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(108, 1, 'Community Points', 'points', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(109, 1, 'Banned Words', 'bannedwords', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(110, 1, 'Conversation Permissions', 'permissions', '', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(111, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2015-05-19 09:57:35', '2015-05-19 09:57:35', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(112, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(113, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(114, 1, 'Topics', 'topics', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(115, 1, 'Add Topic Tree', 'add', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(116, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(117, 1, 'Environment Information', 'info', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(118, 1, 'Debug Settings', 'debug', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(119, 1, 'Logging Settings', 'logging', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(120, 1, 'Proxy Server', 'proxy', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(121, 1, 'Database Entities', 'entities', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(122, 1, 'Backup & Restore', 'backup', 'Backup or restore your website.', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(123, 1, 'Backup Database', 'backup', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(124, 1, 'Update concrete5', 'update', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(125, 1, 'Welcome to concrete5', 'welcome', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 4, NULL),
(126, 1, 'Customize Dashboard Home', 'home', '', '2015-05-19 09:57:36', '2015-05-19 09:57:36', 'Initial Version', 1, 0, 1, NULL, 2, 2, NULL),
(127, 1, 'Drafts', '!drafts', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(128, 1, 'Trash', '!trash', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(129, 1, 'Stacks', '!stacks', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(130, 1, 'Login', 'login', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(131, 1, 'Register', 'register', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(132, 1, 'My Account', 'account', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(133, 1, 'Edit Profile', 'edit_profile', 'Edit your user profile and change password.', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(134, 1, 'Profile Picture', 'avatar', 'Specify a new image attached to posts or edits.', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(135, 1, 'Messages', 'messages', 'Inbox for site-specific messages.', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(136, 1, 'Inbox', 'inbox', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(137, 1, 'Members', 'members', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(138, 1, 'View Profile', 'profile', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(139, 1, 'Directory', 'directory', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(140, 1, 'Page Not Found', 'page_not_found', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(141, 1, 'Page Forbidden', 'page_forbidden', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(142, 1, 'Download File', 'download_file', '', '2015-05-19 09:57:38', '2015-05-19 09:57:38', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(143, 1, '', NULL, NULL, '2015-05-19 09:57:39', '2015-05-19 09:57:39', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL),
(144, 1, 'Header Site Title', 'header-site-title', NULL, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(145, 1, 'Header Navigation', 'header-navigation', NULL, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(146, 1, 'Footer Legal', 'footer-legal', NULL, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(147, 1, 'Footer Navigation', 'footer-navigation', NULL, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(148, 1, 'Footer Contact', 'footer-contact', NULL, '2015-05-19 09:57:44', '2015-05-19 09:57:44', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(149, 1, '', '', NULL, '2015-05-19 10:02:08', '2015-05-19 10:02:08', 'Initial Version', 0, 1, 1, NULL, 2, 5, NULL),
(150, 1, 'Site_Logo', 'site-logo', NULL, '2015-05-19 10:21:47', '2015-05-19 10:21:47', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(150, 2, 'Site_Logo', 'site-logo', NULL, '2015-05-19 10:21:47', '2015-05-19 10:22:35', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(150, 3, 'Site_Logo', 'site-logo', NULL, '2015-05-19 10:21:47', '2015-05-19 10:23:29', 'Nieuwe Versie 3', 1, 0, 1, 1, 2, 0, NULL),
(151, 1, 'menu', 'menu', NULL, '2015-05-19 10:24:58', '2015-05-19 10:24:58', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(151, 2, 'menu', 'menu', NULL, '2015-05-19 10:24:58', '2015-05-19 10:25:30', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(152, 1, 'logo', 'logo', NULL, '2015-05-19 10:29:44', '2015-05-19 10:29:44', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(152, 2, 'logo', 'logo', NULL, '2015-05-19 10:29:44', '2015-05-19 10:30:30', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(153, 1, 'titel1', 'titel1', NULL, '2015-05-19 10:35:27', '2015-05-19 10:35:27', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(153, 2, 'titel1', 'titel1', NULL, '2015-05-19 10:35:27', '2015-05-19 10:35:58', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(154, 1, 'ondertitel1', 'ondertitel1', NULL, '2015-05-19 10:35:27', '2015-05-19 10:35:27', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(154, 2, 'ondertitel1', 'ondertitel1', NULL, '2015-05-19 10:35:27', '2015-05-19 10:36:12', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(155, 1, 'tekst1', 'tekst1', NULL, '2015-05-19 10:35:27', '2015-05-19 10:35:27', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(155, 2, 'tekst1', 'tekst1', NULL, '2015-05-19 10:35:27', '2015-05-19 10:36:31', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(156, 1, 'titel2', 'titel2', NULL, '2015-05-19 10:38:36', '2015-05-19 10:38:36', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(156, 2, 'titel2', 'titel2', NULL, '2015-05-19 10:38:36', '2015-05-19 10:39:05', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(157, 1, 'tekst2', 'tekst2', NULL, '2015-05-19 10:38:36', '2015-05-19 10:38:36', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(157, 2, 'tekst2', 'tekst2', NULL, '2015-05-19 10:38:36', '2015-05-19 10:39:18', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(158, 1, 'foto2', 'foto2', NULL, '2015-05-19 10:39:56', '2015-05-19 10:39:56', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(158, 2, 'foto2', 'foto2', NULL, '2015-05-19 10:39:56', '2015-05-19 10:42:08', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(158, 3, 'foto2', 'foto2', NULL, '2015-05-19 10:39:56', '2015-05-19 13:11:12', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 0, NULL),
(158, 4, 'foto2', 'foto2', NULL, '2015-05-19 10:39:56', '2015-05-19 13:11:54', 'Nieuwe Versie 4', 1, 0, 1, 1, 2, 0, NULL),
(159, 1, 'titel3', 'titel3', NULL, '2015-05-19 10:43:56', '2015-05-19 10:43:56', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(159, 2, 'titel3', 'titel3', NULL, '2015-05-19 10:43:56', '2015-05-19 10:44:11', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(160, 1, 'tekst3', 'tekst3', NULL, '2015-05-19 10:43:56', '2015-05-19 10:43:56', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(160, 2, 'tekst3', 'tekst3', NULL, '2015-05-19 10:43:56', '2015-05-19 10:44:47', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(161, 1, 'titel4', 'titel4', NULL, '2015-05-19 10:43:56', '2015-05-19 10:43:56', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(161, 2, 'titel4', 'titel4', NULL, '2015-05-19 10:43:56', '2015-05-19 10:44:24', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(162, 1, 'tekst4', 'tekst4', NULL, '2015-05-19 10:43:56', '2015-05-19 10:43:56', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(162, 2, 'tekst4', 'tekst4', NULL, '2015-05-19 10:43:56', '2015-05-19 10:44:58', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(163, 1, 'titel5', 'titel5', NULL, '2015-05-19 10:43:56', '2015-05-19 10:43:56', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(163, 2, 'titel5', 'titel5', NULL, '2015-05-19 10:43:56', '2015-05-19 10:44:35', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(164, 1, 'tekst5', 'tekst5', NULL, '2015-05-19 10:43:56', '2015-05-19 10:43:56', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(164, 2, 'tekst5', 'tekst5', NULL, '2015-05-19 10:43:56', '2015-05-19 10:45:10', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(165, 1, 'titel6', 'titel6', NULL, '2015-05-19 10:47:09', '2015-05-19 10:47:09', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(165, 2, 'titel6', 'titel6', NULL, '2015-05-19 10:47:09', '2015-05-19 10:47:34', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(166, 1, 'ondertitel6', 'ondertitel6', NULL, '2015-05-19 10:47:09', '2015-05-19 10:47:09', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(166, 2, 'ondertitel6', 'ondertitel6', NULL, '2015-05-19 10:47:09', '2015-05-19 10:47:43', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(167, 1, 'tekst6', 'tekst6', NULL, '2015-05-19 10:47:09', '2015-05-19 10:47:09', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(167, 2, 'tekst6', 'tekst6', NULL, '2015-05-19 10:47:09', '2015-05-19 10:47:53', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(168, 1, 'foto7', 'foto7', NULL, '2015-05-19 10:53:06', '2015-05-19 10:53:06', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(168, 2, 'foto7', 'foto7', NULL, '2015-05-19 10:53:06', '2015-05-19 10:57:48', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(168, 3, 'foto7', 'foto7', NULL, '2015-05-19 10:53:06', '2015-05-19 11:03:06', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 0, NULL),
(168, 4, 'foto7', 'foto7', NULL, '2015-05-19 10:53:06', '2015-05-19 12:06:43', 'Nieuwe Versie 4', 0, 0, 1, 1, 2, 0, NULL),
(168, 5, 'foto7', 'foto7', NULL, '2015-05-19 10:53:06', '2015-05-19 12:07:26', 'Nieuwe Versie 5', 1, 0, 1, 1, 2, 0, NULL),
(169, 1, 'ondertitel7', 'ondertitel7', NULL, '2015-05-19 10:53:06', '2015-05-19 10:53:06', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(170, 1, 'tekst7', 'tekst7', NULL, '2015-05-19 10:53:06', '2015-05-19 10:53:06', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(170, 2, 'tekst7', 'tekst7', NULL, '2015-05-19 10:53:06', '2015-05-19 11:09:18', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(171, 1, 'foto7.1', 'foto71', NULL, '2015-05-19 11:02:31', '2015-05-19 11:02:31', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(172, 1, 'bijschrift7', 'bijschrift7', NULL, '2015-05-19 11:07:15', '2015-05-19 11:07:15', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(172, 2, 'bijschrift7', 'bijschrift7', NULL, '2015-05-19 11:07:15', '2015-05-19 11:07:44', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(173, 1, 'titel7', 'titel7', NULL, '2015-05-19 11:08:29', '2015-05-19 11:08:29', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(173, 2, 'titel7', 'titel7', NULL, '2015-05-19 11:08:29', '2015-05-19 11:09:05', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(173, 3, 'titel7', 'titel7', NULL, '2015-05-19 11:08:29', '2015-05-19 11:09:37', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 0, NULL),
(173, 4, 'titel7', 'titel7', NULL, '2015-05-19 11:08:29', '2015-05-19 11:10:00', 'Nieuwe Versie 4', 0, 0, 1, 1, 2, 0, NULL),
(173, 5, 'titel7', 'titel7', NULL, '2015-05-19 11:08:29', '2015-05-19 11:10:14', 'Nieuwe Versie 5', 0, 0, 1, 1, 2, 0, NULL),
(173, 6, 'titel7', 'titel7', NULL, '2015-05-19 11:08:29', '2015-05-19 11:11:54', 'Nieuwe Versie 6', 0, 0, 1, 1, 2, 0, NULL),
(173, 7, 'titel7', 'titel7', NULL, '2015-05-19 11:08:29', '2015-05-19 11:13:01', 'Nieuwe Versie 7', 0, 0, 1, 1, 2, 0, NULL),
(173, 8, 'titel7', 'titel7', NULL, '2015-05-19 11:08:29', '2015-05-19 11:13:29', 'Nieuwe Versie 8', 1, 0, 1, 1, 2, 0, NULL),
(174, 1, 'titel8', 'titel8', NULL, '2015-05-19 11:14:20', '2015-05-19 11:14:20', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(174, 2, 'titel8', 'titel8', NULL, '2015-05-19 11:14:20', '2015-05-19 12:16:04', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(175, 1, 'tekst8', 'tekst8', NULL, '2015-05-19 11:14:20', '2015-05-19 11:14:20', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(175, 2, 'tekst8', 'tekst8', NULL, '2015-05-19 11:14:20', '2015-05-19 12:16:22', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(176, 1, 'titel9', 'titel9', NULL, '2015-05-19 11:14:20', '2015-05-19 11:14:20', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(176, 2, 'titel9', 'titel9', NULL, '2015-05-19 11:14:20', '2015-05-19 12:48:15', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(177, 1, 'tekst9', 'tekst9', NULL, '2015-05-19 11:14:20', '2015-05-19 11:14:20', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(177, 2, 'tekst9', 'tekst9', NULL, '2015-05-19 11:14:20', '2015-05-19 12:48:32', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(178, 1, 'titel10', 'titel10', NULL, '2015-05-19 11:14:20', '2015-05-19 11:14:20', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(178, 2, 'titel10', 'titel10', NULL, '2015-05-19 11:14:20', '2015-05-19 12:48:47', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(178, 3, 'titel10', 'titel10', NULL, '2015-05-19 11:14:20', '2015-05-19 12:49:01', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 0, NULL),
(178, 4, 'titel10', 'titel10', NULL, '2015-05-19 11:14:20', '2015-05-19 13:05:58', 'Nieuwe Versie 4', 1, 0, 1, 1, 2, 0, NULL),
(179, 1, 'tekst10', 'tekst10', NULL, '2015-05-19 11:14:20', '2015-05-19 11:14:20', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(179, 2, 'tekst10', 'tekst10', NULL, '2015-05-19 11:14:20', '2015-05-19 13:06:20', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(180, 1, 'info', 'info', NULL, '2015-05-19 11:15:58', '2015-05-19 11:15:58', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(181, 1, 'titel11', 'titel11', NULL, '2015-05-19 11:20:35', '2015-05-19 11:20:35', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(181, 2, 'titel11', 'titel11', NULL, '2015-05-19 11:20:35', '2015-05-19 11:21:55', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(182, 1, 'ondertitel11', 'ondertitel11', NULL, '2015-05-19 11:20:35', '2015-05-19 11:20:35', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(182, 2, 'ondertitel11', 'ondertitel11', NULL, '2015-05-19 11:20:35', '2015-05-19 11:23:03', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(183, 1, 'tekst11', 'tekst11', NULL, '2015-05-19 11:20:35', '2015-05-19 11:20:35', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(183, 2, 'tekst11', 'tekst11', NULL, '2015-05-19 11:20:35', '2015-05-19 11:23:12', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(184, 1, 'foto12', 'foto12', NULL, '2015-05-19 11:24:08', '2015-05-19 11:24:08', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(184, 2, 'foto12', 'foto12', NULL, '2015-05-19 11:24:08', '2015-05-19 11:25:32', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(184, 3, 'foto12', 'foto12', NULL, '2015-05-19 11:24:08', '2015-05-19 11:35:40', 'Nieuwe Versie 3', 1, 0, 1, 1, 2, 0, NULL),
(185, 1, 'titel12', 'titel12', NULL, '2015-05-19 11:26:09', '2015-05-19 11:26:09', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(185, 2, 'titel12', 'titel12', NULL, '2015-05-19 11:26:09', '2015-05-19 11:26:47', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(185, 3, 'titel12', 'titel12', NULL, '2015-05-19 11:26:09', '2015-05-19 11:28:39', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 0, NULL),
(185, 4, 'titel12', 'titel12', NULL, '2015-05-19 11:26:09', '2015-05-19 11:29:01', 'Nieuwe Versie 4', 0, 0, 1, 1, 2, 0, NULL),
(185, 5, 'titel12', 'titel12', NULL, '2015-05-19 11:26:09', '2015-05-19 11:29:12', 'Nieuwe Versie 5', 0, 0, 1, 1, 2, 0, NULL),
(185, 6, 'titel12', 'titel12', NULL, '2015-05-19 11:26:09', '2015-05-19 11:39:33', 'Nieuwe Versie 6', 1, 0, 1, 1, 2, 0, NULL),
(186, 1, 'tekst12', 'tekst12', NULL, '2015-05-19 11:29:38', '2015-05-19 11:29:38', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(186, 2, 'tekst12', 'tekst12', NULL, '2015-05-19 11:29:38', '2015-05-19 11:30:10', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(186, 3, 'tekst12', 'tekst12', NULL, '2015-05-19 11:29:38', '2015-05-19 11:40:09', 'Nieuwe Versie 3', 1, 0, 1, 1, 2, 0, NULL),
(187, 1, 'datum12', 'datum12', NULL, '2015-05-19 11:31:03', '2015-05-19 11:31:03', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(187, 2, 'datum12', 'datum12', NULL, '2015-05-19 11:31:03', '2015-05-19 11:32:50', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(187, 3, 'datum12', 'datum12', NULL, '2015-05-19 11:31:03', '2015-05-19 11:33:59', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 0, NULL),
(187, 4, 'datum12', 'datum12', NULL, '2015-05-19 11:31:03', '2015-05-19 11:40:46', 'Nieuwe Versie 4', 1, 0, 1, 1, 2, 0, NULL),
(188, 1, 'pijl12', 'pijl12', NULL, '2015-05-19 11:31:03', '2015-05-19 11:31:03', 'Initial Version', 1, 0, 1, NULL, 2, 0, NULL),
(189, 1, 'pijl', 'pijl', NULL, '2015-05-19 11:31:10', '2015-05-19 11:31:10', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(189, 2, 'pijl', 'pijl', NULL, '2015-05-19 11:31:10', '2015-05-19 11:32:04', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(190, 1, 'foto13', 'foto13', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(190, 2, 'foto13', 'foto13', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:50', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(191, 1, 'titel13', 'titel13', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(191, 2, 'titel13', 'titel13', NULL, '2015-05-19 11:38:26', '2015-05-19 11:39:40', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(192, 1, 'tekst13', 'tekst13', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(192, 2, 'tekst13', 'tekst13', NULL, '2015-05-19 11:38:26', '2015-05-19 11:40:17', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(193, 1, 'datum13', 'datum13', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(193, 2, 'datum13', 'datum13', NULL, '2015-05-19 11:38:26', '2015-05-19 11:40:52', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(194, 1, 'foto14', 'foto14', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(194, 2, 'foto14', 'foto14', NULL, '2015-05-19 11:38:26', '2015-05-19 11:41:55', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(195, 1, 'titel14', 'titel14', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(195, 2, 'titel14', 'titel14', NULL, '2015-05-19 11:38:26', '2015-05-19 11:39:49', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(196, 1, 'tekst14', 'tekst14', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(196, 2, 'tekst14', 'tekst14', NULL, '2015-05-19 11:38:26', '2015-05-19 11:40:25', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(197, 1, 'datum14', 'datum14', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(197, 2, 'datum14', 'datum14', NULL, '2015-05-19 11:38:26', '2015-05-19 11:41:24', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(198, 1, 'foto15', 'foto15', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(198, 2, 'foto15', 'foto15', NULL, '2015-05-19 11:38:26', '2015-05-19 11:42:29', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(199, 1, 'titel15', 'titel15', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(199, 2, 'titel15', 'titel15', NULL, '2015-05-19 11:38:26', '2015-05-19 11:39:58', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(200, 1, 'tekst15', 'tekst15', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(200, 2, 'tekst15', 'tekst15', NULL, '2015-05-19 11:38:26', '2015-05-19 11:40:34', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(201, 1, 'datum15', 'datum15', NULL, '2015-05-19 11:38:26', '2015-05-19 11:38:26', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(201, 2, 'datum15', 'datum15', NULL, '2015-05-19 11:38:26', '2015-05-19 11:41:38', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(202, 1, 'tekst16', 'tekst16', NULL, '2015-05-19 11:43:32', '2015-05-19 11:43:32', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(202, 2, 'tekst16', 'tekst16', NULL, '2015-05-19 11:43:32', '2015-05-19 11:43:51', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(202, 3, 'tekst16', 'tekst16', NULL, '2015-05-19 11:43:32', '2015-05-19 11:44:10', 'Nieuwe Versie 3', 1, 0, 1, 1, 2, 0, NULL),
(203, 1, 'copy', 'copy', NULL, '2015-05-19 11:45:59', '2015-05-19 11:45:59', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(203, 2, 'copy', 'copy', NULL, '2015-05-19 11:45:59', '2015-05-19 11:47:02', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(203, 3, 'copy', 'copy', NULL, '2015-05-19 11:45:59', '2015-05-19 11:47:22', 'Nieuwe Versie 3', 1, 0, 1, 1, 2, 0, NULL),
(204, 1, 'contact', 'contact', NULL, '2015-05-19 11:48:35', '2015-05-19 11:48:35', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(204, 2, 'contact', 'contact', NULL, '2015-05-19 11:48:35', '2015-05-19 11:49:33', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(204, 3, 'contact', 'contact', NULL, '2015-05-19 11:48:35', '2015-05-19 11:50:22', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 0, NULL),
(204, 4, 'contact', 'contact', NULL, '2015-05-19 11:48:35', '2015-05-19 11:51:12', 'Nieuwe Versie 4', 1, 0, 1, 1, 2, 0, NULL),
(205, 1, 'pagina1', 'pagina1', NULL, '2015-05-19 11:52:05', '2015-05-19 11:52:05', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(205, 2, 'pagina1', 'pagina1', NULL, '2015-05-19 11:52:05', '2015-05-19 11:52:45', 'Nieuwe Versie 2', 0, 0, 1, 1, 2, 0, NULL),
(205, 3, 'pagina1', 'pagina1', NULL, '2015-05-19 11:52:05', '2015-05-19 11:52:53', 'Nieuwe Versie 3', 0, 0, 1, 1, 2, 0, NULL),
(205, 4, 'pagina1', 'pagina1', NULL, '2015-05-19 11:52:05', '2015-05-19 11:53:17', 'Nieuwe Versie 4', 0, 0, 1, 1, 2, 0, NULL),
(205, 5, 'pagina1', 'pagina1', NULL, '2015-05-19 11:52:05', '2015-05-19 11:54:08', 'Nieuwe Versie 5', 1, 0, 1, 1, 2, 0, NULL),
(206, 1, 'pagina2', 'pagina2', NULL, '2015-05-19 11:52:05', '2015-05-19 11:52:05', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(206, 2, 'pagina2', 'pagina2', NULL, '2015-05-19 11:52:05', '2015-05-19 11:55:03', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(207, 1, 'social', 'social', NULL, '2015-05-19 11:58:08', '2015-05-19 11:58:08', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(207, 2, 'social', 'social', NULL, '2015-05-19 11:58:08', '2015-05-19 11:58:19', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(208, 1, 'pijl_gallery', 'pijl-gallery', NULL, '2015-05-19 12:03:57', '2015-05-19 12:03:57', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(208, 2, 'pijl_gallery', 'pijl-gallery', NULL, '2015-05-19 12:03:57', '2015-05-19 12:04:47', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(209, 1, 'foto8', 'foto8', NULL, '2015-05-19 12:09:37', '2015-05-19 12:09:37', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(209, 2, 'foto8', 'foto8', NULL, '2015-05-19 12:09:37', '2015-05-19 12:15:13', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(210, 1, 'foto9', 'foto9', NULL, '2015-05-19 12:09:37', '2015-05-19 12:09:37', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(210, 2, 'foto9', 'foto9', NULL, '2015-05-19 12:09:37', '2015-05-19 12:47:20', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(211, 1, 'foto10', 'foto10', NULL, '2015-05-19 12:09:38', '2015-05-19 12:09:38', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(211, 2, 'foto10', 'foto10', NULL, '2015-05-19 12:09:38', '2015-05-19 12:47:38', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(212, 1, 'foto3', 'foto3', NULL, '2015-05-19 13:09:41', '2015-05-19 13:09:41', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(212, 2, 'foto3', 'foto3', NULL, '2015-05-19 13:09:41', '2015-05-19 13:09:58', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(213, 1, 'foto4', 'foto4', NULL, '2015-05-19 13:10:45', '2015-05-19 13:10:45', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(213, 2, 'foto4', 'foto4', NULL, '2015-05-19 13:10:45', '2015-05-19 13:12:32', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL),
(214, 1, 'foto5', 'foto5', NULL, '2015-05-19 13:10:45', '2015-05-19 13:10:45', 'Initial Version', 0, 0, 1, NULL, 2, 0, NULL),
(214, 2, 'foto5', 'foto5', NULL, '2015-05-19 13:10:45', '2015-05-19 13:12:54', 'Nieuwe Versie 2', 1, 0, 1, 1, 2, 0, NULL);

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
('', 'concrete', 'marketplace.token', '4O18Lqvh2RluHee02sCDgcB3FsuS6XPGQV3xM0okGq1iTxjg4z1b3fy1NPjapvGo'),
('', 'concrete', 'marketplace.url_token', 'sxtrbcbp9sbxjz3injflxtf3'),
('', 'concrete', 'security.token.encryption', 'gafaQYKgJlIwpckFY2peYRmrEvBLy0uVtWZALPQnyCNOoyhfHF0fcWiOQUIg28oZ'),
('', 'concrete', 'security.token.jobs', 'G5uPtmobGKrf1gCXY0niTc9Mqlk24iPFicIyJn7QVWVP4G4jHKUh64EKXNA07tpg'),
('', 'concrete', 'security.token.validation', 'sOeqH1snNhi72lRcJJzKz2h960LEe68p0W3svLDKkMAipag2rFgC66hTX02n5Lsu');

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
('MAIN_HELP_LAST_VIEWED', '2015-05-19 07:57:44', '1432022264', 1, 0),
('NEWSFLOW_LAST_VIEWED', '2015-05-19 07:57:39', 'FIRSTRUN', 1, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationDiscussions`
--

CREATE TABLE IF NOT EXISTS `ConversationDiscussions` (
  `cnvDiscussionID` int(10) unsigned NOT NULL,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ConversationEditors`
--

INSERT INTO `ConversationEditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1, 'plain_text', 'Plain Text', 1, 0),
(2, 'markdown', 'Markdown', 0, 0),
(3, 'redactor', 'Redactor', 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationMessages`
--

CREATE TABLE IF NOT EXISTS `ConversationMessages` (
  `cnvMessageID` int(10) unsigned NOT NULL,
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) unsigned NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationPermissionAddMessageAccessList`
--

CREATE TABLE IF NOT EXISTS `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) unsigned NOT NULL DEFAULT '0',
  `peID` int(10) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(0, 66, 89),
(0, 67, 90),
(0, 70, 91),
(0, 69, 92),
(0, 71, 93),
(0, 68, 94),
(0, 72, 95),
(0, 73, 96);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ConversationSubscriptions`
--

CREATE TABLE IF NOT EXISTS `ConversationSubscriptions` (
  `cnvID` int(10) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `ConversationSubscriptions`
--

INSERT INTO `ConversationSubscriptions` (`cnvID`, `uID`, `type`) VALUES
(0, 1, 'S');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FeatureAssignments`
--

CREATE TABLE IF NOT EXISTS `FeatureAssignments` (
  `faID` int(10) unsigned NOT NULL,
  `feID` int(10) unsigned DEFAULT NULL,
  `fcID` int(10) unsigned DEFAULT NULL,
  `fdObject` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `FeatureAssignments`
--

INSERT INTO `FeatureAssignments` (`faID`, `feID`, `fcID`, `fdObject`) VALUES
(1, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:89:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/4914/3202/3746/logo_small.png";s:8:"\0*\0width";d:48;s:9:"\0*\0height";d:48;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(2, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:89:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/4914/3202/3746/logo_small.png";s:8:"\0*\0width";d:48;s:9:"\0*\0height";d:48;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(3, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:83:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/9814/3202/4224/logo.png";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:151;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(4, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:88:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/1614/3202/4909/top_icons.png";s:8:"\0*\0width";d:478;s:9:"\0*\0height";d:199;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(5, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:83:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/6614/3202/5862/pic1.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:538;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(6, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:83:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/6614/3202/5862/pic1.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:538;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(7, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:81:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/2514/3202/7526/b1.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:200;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(8, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:85:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/7414/3202/7919/arrow1.png";s:8:"\0*\0width";d:19;s:9:"\0*\0height";d:15;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(9, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:81:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/2514/3202/7526/b1.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:200;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(10, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:81:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/5114/3202/8324/b2.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:200;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(11, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:81:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/2614/3202/8510/b3.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:200;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(12, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:81:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/8514/3202/8544/b1.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:200;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(13, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:84:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/2914/3202/9882/arrow.png";s:8:"\0*\0width";d:68;s:9:"\0*\0height";d:69;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(14, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:83:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/6614/3202/5862/pic1.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:538;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(15, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:83:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/8214/3203/0507/pic2.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:538;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(16, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:83:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/3314/3203/2435/pic3.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:538;s:7:"\0*\0item";N;s:5:"error";s:0:"";}'),
(17, 5, 1, 'O:40:"Concrete\\Core\\Feature\\Detail\\ImageDetail":5:{s:6:"\0*\0src";s:83:"/Examen/Frontend_2/Deel_2/examen/concrete/application/files/1514/3203/2453/pic4.jpg";s:8:"\0*\0width";d:300;s:9:"\0*\0height";d:538;s:7:"\0*\0item";N;s:5:"error";s:0:"";}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `FeatureCategories`
--

CREATE TABLE IF NOT EXISTS `FeatureCategories` (
  `fcID` int(10) unsigned NOT NULL,
  `fcHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 1, 14, 113),
(1, 1, 15, 114),
(2, 1, 14, 115),
(2, 1, 15, 116),
(3, 1, 14, 117),
(3, 1, 15, 118),
(4, 1, 14, 119),
(4, 1, 15, 120),
(5, 1, 14, 121),
(5, 1, 15, 122),
(6, 1, 14, 123),
(6, 1, 15, 124),
(7, 1, 14, 125),
(7, 1, 15, 126),
(8, 1, 14, 127),
(8, 1, 15, 128),
(9, 1, 14, 129),
(9, 1, 15, 130),
(10, 1, 14, 131),
(10, 1, 15, 132),
(11, 1, 14, 133),
(11, 1, 15, 134),
(12, 1, 14, 135),
(12, 1, 15, 136),
(13, 1, 14, 137),
(13, 1, 15, 138);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Files`
--

INSERT INTO `Files` (`fID`, `fDateAdded`, `uID`, `fslID`, `ocID`, `fOverrideSetPermissions`, `fPassword`) VALUES
(1, '2015-05-19 10:22:26', 1, 1, 0, 0, NULL),
(2, '2015-05-19 10:30:24', 1, 1, 0, 0, NULL),
(3, '2015-05-19 10:41:49', 1, 1, 0, 0, NULL),
(4, '2015-05-19 10:57:42', 1, 1, 0, 0, NULL),
(5, '2015-05-19 11:25:26', 1, 1, 0, 0, NULL),
(6, '2015-05-19 11:31:59', 1, 1, 0, 0, NULL),
(7, '2015-05-19 11:38:44', 1, 1, 0, 0, NULL),
(8, '2015-05-19 11:41:50', 1, 1, 0, 0, NULL),
(9, '2015-05-19 11:42:24', 1, 1, 0, 0, NULL),
(10, '2015-05-19 12:04:42', 1, 1, 0, 0, NULL),
(11, '2015-05-19 12:15:07', 1, 1, 0, 0, NULL),
(12, '2015-05-19 12:47:15', 1, 1, 0, 0, NULL),
(13, '2015-05-19 12:47:33', 1, 1, 0, 0, NULL);

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
(1, '48.0000', '48.0000', '0.0000'),
(2, '300.0000', '151.0000', '0.0000'),
(3, '478.0000', '199.0000', '0.0000'),
(4, '300.0000', '538.0000', '0.0000'),
(5, '300.0000', '200.0000', '0.0000'),
(6, '19.0000', '15.0000', '0.0000'),
(7, '300.0000', '200.0000', '0.0000'),
(8, '300.0000', '200.0000', '0.0000'),
(9, '300.0000', '200.0000', '0.0000'),
(10, '68.0000', '69.0000', '0.0000'),
(11, '300.0000', '538.0000', '0.0000'),
(12, '300.0000', '538.0000', '0.0000'),
(13, '300.0000', '538.0000', '0.0000');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(0, 39, 32),
(0, 40, 33),
(0, 41, 34),
(0, 42, 35),
(0, 43, 36),
(0, 44, 37),
(0, 46, 38),
(0, 45, 39),
(0, 47, 40);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(11, 6, 1, 5, 14),
(12, 6, 1, 5, 15),
(13, 7, 1, 5, 14),
(14, 7, 1, 5, 15),
(15, 8, 1, 5, 14),
(16, 8, 1, 5, 15),
(17, 9, 1, 5, 14),
(18, 9, 1, 5, 15),
(19, 10, 1, 5, 14),
(20, 10, 1, 5, 15),
(21, 11, 1, 5, 14),
(22, 11, 1, 5, 15),
(23, 12, 1, 5, 14),
(24, 12, 1, 5, 15),
(25, 13, 1, 5, 14),
(26, 13, 1, 5, 15);

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
(1, 1, 'logo_small.png', '491432023746', 0, 3796, 'logo_small.png', '', '', 1, '2015-05-19 10:22:26', 1, 1, '2015-05-19 10:22:26', 0, 0, 'png', 1),
(2, 1, 'logo.png', '981432024224', 0, 7464, 'logo.png', '', '', 1, '2015-05-19 10:30:24', 1, 1, '2015-05-19 10:30:24', 1, 0, 'png', 1),
(3, 1, 'top_icons.png', '161432024909', 0, 12664, 'top_icons.png', '', '', 1, '2015-05-19 10:41:49', 1, 1, '2015-05-19 10:41:49', 1, 1, 'png', 1),
(4, 1, 'pic1.jpg', '661432025862', 0, 27936, 'pic1.jpg', '', '', 1, '2015-05-19 10:57:43', 1, 1, '2015-05-19 10:57:43', 1, 0, 'jpg', 1),
(5, 1, 'b1.jpg', '251432027526', 0, 8441, 'b1.jpg', '', '', 1, '2015-05-19 11:25:26', 1, 1, '2015-05-19 11:25:26', 1, 0, 'jpg', 1),
(6, 1, 'arrow1.png', '741432027919', 0, 2989, 'arrow1.png', '', '', 1, '2015-05-19 11:31:59', 1, 1, '2015-05-19 11:31:59', 0, 0, 'png', 1),
(7, 1, 'b2.jpg', '511432028324', 0, 10410, 'b2.jpg', '', '', 1, '2015-05-19 11:38:44', 1, 1, '2015-05-19 11:38:44', 1, 0, 'jpg', 1),
(8, 1, 'b3.jpg', '261432028510', 0, 6541, 'b3.jpg', '', '', 1, '2015-05-19 11:41:50', 1, 1, '2015-05-19 11:41:50', 1, 0, 'jpg', 1),
(9, 1, 'b1.jpg', '851432028544', 0, 8441, 'b1.jpg', '', '', 1, '2015-05-19 11:42:24', 1, 1, '2015-05-19 11:42:24', 1, 0, 'jpg', 1),
(10, 1, 'arrow.png', '291432029882', 0, 4463, 'arrow.png', '', '', 1, '2015-05-19 12:04:42', 1, 1, '2015-05-19 12:04:42', 1, 0, 'png', 1),
(11, 1, 'pic2.jpg', '821432030507', 0, 16491, 'pic2.jpg', '', '', 1, '2015-05-19 12:15:07', 1, 1, '2015-05-19 12:15:07', 1, 0, 'jpg', 1),
(12, 1, 'pic3.jpg', '331432032435', 0, 30720, 'pic3.jpg', '', '', 1, '2015-05-19 12:47:15', 1, 1, '2015-05-19 12:47:15', 1, 0, 'jpg', 1),
(13, 1, 'pic4.jpg', '151432032453', 0, 12621, 'pic4.jpg', '', '', 1, '2015-05-19 12:47:33', 1, 1, '2015-05-19 12:47:33', 1, 0, 'jpg', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Jobs`
--

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately. Only reindexes pages that have changed since last indexing.', '2015-05-19 09:57:33', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2015-05-19 09:57:33', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Check Automated Groups', 'Automatically add users to groups and assign badges.', '2015-05-19 09:57:33', NULL, 0, NULL, 0, 'ENABLED', 'check_automated_groups', 0, 0, 'days', 0),
(4, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2015-05-19 09:57:33', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(5, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2015-05-19 09:57:33', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(6, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2015-05-19 09:57:33', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0),
(7, 'Update Gatherings', 'Loads new items into gatherings.', '2015-05-19 09:57:33', NULL, 0, NULL, 0, 'ENABLED', 'update_gatherings', 0, 0, 'days', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `msCountry` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `msNumPlurals` int(11) NOT NULL DEFAULT '2',
  `msPluralRule` varchar(400) COLLATE utf8_unicode_ci NOT NULL DEFAULT '(n != 1)',
  `msPluralCases` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `MultilingualTranslations`
--

CREATE TABLE IF NOT EXISTS `MultilingualTranslations` (
  `mtID` int(10) unsigned NOT NULL,
  `mtSectionID` int(10) unsigned NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8_unicode_ci,
  `msgstr` text COLLATE utf8_unicode_ci,
  `msgstrPlurals` text COLLATE utf8_unicode_ci,
  `context` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `flags` text COLLATE utf8_unicode_ci,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PagePaths`
--

CREATE TABLE IF NOT EXISTS `PagePaths` (
  `ppID` int(10) unsigned NOT NULL,
  `cID` int(10) unsigned DEFAULT '0',
  `cPath` text COLLATE utf8_unicode_ci NOT NULL,
  `ppIsCanonical` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PagePaths`
--

INSERT INTO `PagePaths` (`ppID`, `cID`, `cPath`, `ppIsCanonical`, `ppGeneratedFromURLSlugs`) VALUES
(1, 2, '/dashboard', '1', 1),
(2, 3, '/dashboard/sitemap', '1', 1),
(3, 4, '/dashboard/sitemap/full', '1', 1),
(4, 5, '/dashboard/sitemap/explore', '1', 1),
(5, 6, '/dashboard/sitemap/search', '1', 1),
(6, 7, '/dashboard/files', '1', 1),
(7, 8, '/dashboard/files/search', '1', 1),
(8, 9, '/dashboard/files/attributes', '1', 1),
(9, 10, '/dashboard/files/sets', '1', 1),
(10, 11, '/dashboard/files/add_set', '1', 1),
(11, 12, '/dashboard/users', '1', 1),
(12, 13, '/dashboard/users/search', '1', 1),
(13, 14, '/dashboard/users/groups', '1', 1),
(14, 15, '/dashboard/users/attributes', '1', 1),
(15, 16, '/dashboard/users/add', '1', 1),
(16, 17, '/dashboard/users/add_group', '1', 1),
(17, 18, '/dashboard/users/groups/bulkupdate', '1', 1),
(18, 19, '/dashboard/users/group_sets', '1', 1),
(19, 20, '/dashboard/users/points', '1', 1),
(20, 21, '/dashboard/users/points/assign', '1', 1),
(21, 22, '/dashboard/users/points/actions', '1', 1),
(22, 23, '/dashboard/reports', '1', 1),
(23, 24, '/dashboard/reports/forms', '1', 1),
(24, 25, '/dashboard/reports/surveys', '1', 1),
(25, 26, '/dashboard/reports/logs', '1', 1),
(26, 27, '/dashboard/pages', '1', 1),
(27, 28, '/dashboard/pages/themes', '1', 1),
(28, 29, '/dashboard/pages/themes/inspect', '1', 1),
(29, 30, '/dashboard/pages/types', '1', 1),
(30, 31, '/dashboard/pages/types/organize', '1', 1),
(31, 32, '/dashboard/pages/types/add', '1', 1),
(32, 33, '/dashboard/pages/types/form', '1', 1),
(33, 34, '/dashboard/pages/types/output', '1', 1),
(34, 35, '/dashboard/pages/types/attributes', '1', 1),
(35, 36, '/dashboard/pages/types/permissions', '1', 1),
(36, 37, '/dashboard/pages/templates', '1', 1),
(37, 38, '/dashboard/pages/templates/add', '1', 1),
(38, 39, '/dashboard/pages/attributes', '1', 1),
(39, 40, '/dashboard/pages/single', '1', 1),
(40, 41, '/dashboard/pages/feeds', '1', 1),
(41, 42, '/dashboard/conversations', '1', 1),
(42, 43, '/dashboard/conversations/messages', '1', 1),
(43, 44, '/dashboard/workflow', '1', 1),
(44, 45, '/dashboard/workflow/workflows', '1', 1),
(45, 46, '/dashboard/workflow/me', '1', 1),
(46, 47, '/dashboard/blocks', '1', 1),
(47, 48, '/dashboard/blocks/stacks', '1', 1),
(48, 49, '/dashboard/blocks/permissions', '1', 1),
(49, 50, '/dashboard/blocks/stacks/list', '1', 1),
(50, 51, '/dashboard/blocks/types', '1', 1),
(51, 52, '/dashboard/extend', '1', 1),
(52, 53, '/dashboard/news', '1', 1),
(53, 54, '/dashboard/extend/install', '1', 1),
(54, 55, '/dashboard/extend/update', '1', 1),
(55, 56, '/dashboard/extend/connect', '1', 1),
(56, 57, '/dashboard/extend/themes', '1', 1),
(57, 58, '/dashboard/extend/addons', '1', 1),
(58, 59, '/dashboard/system', '1', 1),
(59, 60, '/dashboard/system/basics', '1', 1),
(60, 61, '/dashboard/system/basics/name', '1', 1),
(61, 62, '/dashboard/system/basics/accessibility', '1', 1),
(62, 63, '/dashboard/system/basics/social', '1', 1),
(63, 64, '/dashboard/system/basics/icons', '1', 1),
(64, 65, '/dashboard/system/basics/editor', '1', 1),
(65, 66, '/dashboard/system/basics/multilingual', '1', 1),
(66, 67, '/dashboard/system/basics/timezone', '1', 1),
(67, 68, '/dashboard/system/multilingual', '1', 1),
(68, 69, '/dashboard/system/multilingual/setup', '1', 1),
(69, 70, '/dashboard/system/multilingual/page_report', '1', 1),
(70, 71, '/dashboard/system/multilingual/translate_interface', '1', 1),
(71, 72, '/dashboard/system/seo', '1', 1),
(72, 73, '/dashboard/system/seo/urls', '1', 1),
(73, 74, '/dashboard/system/seo/bulk', '1', 1),
(74, 75, '/dashboard/system/seo/codes', '1', 1),
(75, 76, '/dashboard/system/seo/excluded', '1', 1),
(76, 77, '/dashboard/system/seo/searchindex', '1', 1),
(77, 78, '/dashboard/system/files', '1', 1),
(78, 79, '/dashboard/system/files/permissions', '1', 1),
(79, 80, '/dashboard/system/files/filetypes', '1', 1),
(80, 81, '/dashboard/system/files/thumbnails', '1', 1),
(81, 82, '/dashboard/system/files/storage', '1', 1),
(82, 83, '/dashboard/system/optimization', '1', 1),
(83, 84, '/dashboard/system/optimization/cache', '1', 1),
(84, 85, '/dashboard/system/optimization/clearcache', '1', 1),
(85, 86, '/dashboard/system/optimization/jobs', '1', 1),
(86, 87, '/dashboard/system/optimization/query_log', '1', 1),
(87, 88, '/dashboard/system/permissions', '1', 1),
(88, 89, '/dashboard/system/permissions/site', '1', 1),
(89, 90, '/dashboard/system/permissions/tasks', '1', 1),
(90, 91, '/dashboard/system/permissions/users', '1', 1),
(91, 92, '/dashboard/system/permissions/advanced', '1', 1),
(92, 93, '/dashboard/system/permissions/blacklist', '1', 1),
(93, 94, '/dashboard/system/permissions/captcha', '1', 1),
(94, 95, '/dashboard/system/permissions/antispam', '1', 1),
(95, 96, '/dashboard/system/permissions/maintenance', '1', 1),
(96, 97, '/dashboard/system/registration', '1', 1),
(97, 98, '/dashboard/system/registration/postlogin', '1', 1),
(98, 99, '/dashboard/system/registration/profiles', '1', 1),
(99, 100, '/dashboard/system/registration/open', '1', 1),
(100, 101, '/dashboard/system/registration/authentication', '1', 1),
(101, 102, '/dashboard/system/mail', '1', 1),
(102, 103, '/dashboard/system/mail/method', '1', 1),
(103, 104, '/dashboard/system/mail/method/test', '1', 1),
(104, 105, '/dashboard/system/mail/importers', '1', 1),
(105, 106, '/dashboard/system/conversations', '1', 1),
(106, 107, '/dashboard/system/conversations/settings', '1', 1),
(107, 108, '/dashboard/system/conversations/points', '1', 1),
(108, 109, '/dashboard/system/conversations/bannedwords', '1', 1),
(109, 110, '/dashboard/system/conversations/permissions', '1', 1),
(110, 111, '/dashboard/system/attributes', '1', 1),
(111, 112, '/dashboard/system/attributes/sets', '1', 1),
(112, 113, '/dashboard/system/attributes/types', '1', 1),
(113, 114, '/dashboard/system/attributes/topics', '1', 1),
(114, 115, '/dashboard/system/attributes/topics/add', '1', 1),
(115, 116, '/dashboard/system/environment', '1', 1),
(116, 117, '/dashboard/system/environment/info', '1', 1),
(117, 118, '/dashboard/system/environment/debug', '1', 1),
(118, 119, '/dashboard/system/environment/logging', '1', 1),
(119, 120, '/dashboard/system/environment/proxy', '1', 1),
(120, 121, '/dashboard/system/environment/entities', '1', 1),
(121, 122, '/dashboard/system/backup', '1', 1),
(122, 123, '/dashboard/system/backup/backup', '1', 1),
(123, 124, '/dashboard/system/backup/update', '1', 1),
(124, 125, '/dashboard/welcome', '1', 1),
(125, 126, '/dashboard/home', '1', 1),
(126, 127, '/!drafts', '1', 1),
(127, 128, '/!trash', '1', 1),
(128, 129, '/!stacks', '1', 1),
(129, 130, '/login', '1', 1),
(130, 131, '/register', '1', 1),
(131, 132, '/account', '1', 1),
(132, 133, '/account/edit_profile', '1', 1),
(133, 134, '/account/avatar', '1', 1),
(134, 135, '/account/messages', '1', 1),
(135, 136, '/account/messages/inbox', '1', 1),
(136, 137, '/members', '1', 1),
(137, 138, '/members/profile', '1', 1),
(138, 139, '/members/directory', '1', 1),
(139, 140, '/page_not_found', '1', 1),
(140, 141, '/page_forbidden', '1', 1),
(141, 142, '/download_file', '1', 1),
(142, 144, '/!stacks/header-site-title', '1', 1),
(143, 145, '/!stacks/header-navigation', '1', 1),
(144, 146, '/!stacks/footer-legal', '1', 1),
(145, 147, '/!stacks/footer-navigation', '1', 1),
(146, 148, '/!stacks/footer-contact', '1', 1),
(147, 149, '/!drafts/149', '1', 1),
(148, 150, '/!stacks/site-logo', '1', 1),
(149, 151, '/!stacks/menu', '1', 1),
(150, 152, '/!stacks/logo', '1', 1),
(151, 153, '/!stacks/titel1', '1', 1),
(152, 154, '/!stacks/ondertitel1', '1', 1),
(153, 155, '/!stacks/tekst1', '1', 1),
(154, 156, '/!stacks/titel2', '1', 1),
(155, 157, '/!stacks/tekst2', '1', 1),
(156, 158, '/!stacks/foto2', '1', 1),
(157, 159, '/!stacks/titel3', '1', 1),
(158, 160, '/!stacks/tekst3', '1', 1),
(159, 161, '/!stacks/titel4', '1', 1),
(160, 162, '/!stacks/tekst4', '1', 1),
(161, 163, '/!stacks/titel5', '1', 1),
(162, 164, '/!stacks/tekst5', '1', 1),
(163, 165, '/!stacks/titel6', '1', 1),
(164, 166, '/!stacks/ondertitel6', '1', 1),
(165, 167, '/!stacks/tekst6', '1', 1),
(166, 168, '/!stacks/foto7', '1', 1),
(167, 169, '/!stacks/ondertitel7', '1', 1),
(168, 170, '/!stacks/tekst7', '1', 1),
(169, 171, '/!stacks/foto71', '1', 1),
(170, 172, '/!stacks/bijschrift7', '1', 1),
(171, 173, '/!stacks/titel7', '1', 1),
(172, 174, '/!stacks/titel8', '1', 1),
(173, 175, '/!stacks/tekst8', '1', 1),
(174, 176, '/!stacks/titel9', '1', 1),
(175, 177, '/!stacks/tekst9', '1', 1),
(176, 178, '/!stacks/titel10', '1', 1),
(177, 179, '/!stacks/tekst10', '1', 1),
(178, 180, '/!stacks/info', '1', 1),
(179, 181, '/!stacks/titel11', '1', 1),
(180, 182, '/!stacks/ondertitel11', '1', 1),
(181, 183, '/!stacks/tekst11', '1', 1),
(182, 184, '/!stacks/foto12', '1', 1),
(183, 185, '/!stacks/titel12', '1', 1),
(184, 186, '/!stacks/tekst12', '1', 1),
(185, 187, '/!stacks/datum12', '1', 1),
(186, 188, '/!stacks/pijl12', '1', 1),
(187, 189, '/!stacks/pijl', '1', 1),
(188, 190, '/!stacks/foto13', '1', 1),
(189, 191, '/!stacks/titel13', '1', 1),
(190, 192, '/!stacks/tekst13', '1', 1),
(191, 193, '/!stacks/datum13', '1', 1),
(192, 194, '/!stacks/foto14', '1', 1),
(193, 195, '/!stacks/titel14', '1', 1),
(194, 196, '/!stacks/tekst14', '1', 1),
(195, 197, '/!stacks/datum14', '1', 1),
(196, 198, '/!stacks/foto15', '1', 1),
(197, 199, '/!stacks/titel15', '1', 1),
(198, 200, '/!stacks/tekst15', '1', 1),
(199, 201, '/!stacks/datum15', '1', 1),
(200, 202, '/!stacks/tekst16', '1', 1),
(201, 203, '/!stacks/copy', '1', 1),
(202, 204, '/!stacks/contact', '1', 1),
(203, 205, '/!stacks/pagina1', '1', 1),
(204, 206, '/!stacks/pagina2', '1', 1),
(205, 207, '/!stacks/social', '1', 1),
(206, 208, '/!stacks/pijl-gallery', '1', 1),
(207, 209, '/!stacks/foto8', '1', 1),
(208, 210, '/!stacks/foto9', '1', 1),
(209, 211, '/!stacks/foto10', '1', 1),
(210, 212, '/!stacks/foto3', '1', 1),
(211, 213, '/!stacks/foto4', '1', 1),
(212, 214, '/!stacks/foto5', '1', 1);

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
(1, 1, 41),
(2, 1, 60),
(127, 1, 61),
(130, 1, 58),
(131, 1, 59),
(1, 2, 42),
(127, 2, 77),
(1, 3, 43),
(127, 3, 63),
(1, 4, 44),
(127, 4, 64),
(1, 5, 45),
(127, 5, 78),
(1, 6, 46),
(127, 6, 79),
(1, 7, 47),
(127, 7, 67),
(1, 8, 49),
(127, 8, 68),
(1, 9, 50),
(127, 9, 80),
(1, 11, 51),
(127, 11, 70),
(1, 12, 52),
(127, 12, 81),
(1, 13, 53),
(127, 13, 82),
(1, 14, 54),
(127, 14, 83),
(1, 15, 55),
(127, 15, 74),
(1, 16, 56),
(127, 16, 75),
(1, 17, 57),
(127, 17, 76),
(1, 18, 48);

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
(1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 11, 0, 0, 0, 0, -1, '0', 0, 0),
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
(116, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 5, 10, 59, 0, 0, -1, '0', 0, 1),
(117, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 116, 0, 0, -1, '0', 0, 1),
(118, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 116, 0, 0, -1, '0', 0, 1),
(119, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 116, 0, 0, -1, '0', 0, 1),
(120, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 3, 116, 0, 0, -1, '0', 0, 1),
(121, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/environment/entities.php', 0, NULL, 0, 1, 0, 4, 116, 0, 0, -1, '0', 0, 1),
(122, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/view.php', 0, NULL, 0, 1, 2, 11, 59, 0, 0, -1, '0', 0, 1),
(123, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/backup.php', 0, NULL, 0, 1, 0, 0, 122, 0, 0, -1, '0', 0, 1),
(124, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/backup/update.php', 0, NULL, 0, 1, 0, 1, 122, 0, 0, -1, '0', 0, 1),
(125, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 2, 0, 0, -1, '0', 0, 1),
(126, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 2, 0, 0, -1, '0', 0, 1),
(127, 0, 0, 1, 0, NULL, NULL, NULL, 1, 127, 'OVERRIDE', '/!drafts/view.php', 0, NULL, 0, 1, 1, 0, 0, 0, 0, -1, '0', 0, 1),
(128, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(129, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!stacks/view.php', 0, NULL, 0, 1, 70, 0, 0, 0, 0, -1, '0', 0, 1),
(130, 0, 0, 1, 0, NULL, NULL, NULL, 1, 130, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(131, 0, 0, 1, 0, NULL, NULL, NULL, 1, 131, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(132, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, 0, -1, '0', 0, 1),
(133, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/edit_profile.php', 0, NULL, 0, 1, 0, 0, 132, 0, 0, -1, '0', 0, 1),
(134, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/avatar.php', 0, NULL, 0, 1, 0, 1, 132, 0, 0, -1, '0', 0, 1),
(135, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/view.php', 0, NULL, 0, 1, 1, 2, 132, 0, 0, -1, '0', 0, 1),
(136, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/messages/inbox.php', 0, NULL, 0, 1, 0, 0, 135, 0, 0, -1, '0', 0, 1),
(137, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/view.php', 0, NULL, 0, 1, 2, 0, 1, 0, 0, -1, '0', 0, 1),
(138, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/profile.php', 0, NULL, 0, 1, 0, 0, 137, 0, 0, -1, '0', 0, 1),
(139, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/members/directory.php', 0, NULL, 0, 1, 0, 1, 137, 0, 0, -1, '0', 0, 1),
(140, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_not_found.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
(141, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/page_forbidden.php', 0, NULL, 0, 1, 0, 1, 0, 0, 0, -1, '0', 0, 1),
(142, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 1, 1, 0, 0, -1, '0', 0, 1),
(143, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 143, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(144, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 129, 0, 0, -1, '0', 0, 1),
(145, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 129, 0, 0, -1, '0', 0, 1),
(146, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 129, 0, 0, -1, '0', 0, 1),
(147, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 129, 0, 0, -1, '0', 0, 1),
(148, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 129, 0, 0, -1, '0', 0, 1),
(149, 5, 0, 1, 0, NULL, NULL, NULL, 1, 127, 'PARENT', NULL, 0, NULL, 0, 0, 0, 0, 127, 0, 0, -1, '0', 0, 1),
(150, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 129, 0, 0, -1, '0', 0, 1),
(151, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 129, 0, 0, -1, '0', 0, 1),
(152, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 129, 0, 0, -1, '0', 0, 1),
(153, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 129, 0, 0, -1, '0', 0, 1),
(154, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 9, 129, 0, 0, -1, '0', 0, 1),
(155, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 10, 129, 0, 0, -1, '0', 0, 1),
(156, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 11, 129, 0, 0, -1, '0', 0, 1),
(157, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 12, 129, 0, 0, -1, '0', 0, 1),
(158, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 13, 129, 0, 0, -1, '0', 0, 1),
(159, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 14, 129, 0, 0, -1, '0', 0, 1),
(160, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 15, 129, 0, 0, -1, '0', 0, 1),
(161, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 16, 129, 0, 0, -1, '0', 0, 1),
(162, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 17, 129, 0, 0, -1, '0', 0, 1),
(163, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 18, 129, 0, 0, -1, '0', 0, 1),
(164, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 19, 129, 0, 0, -1, '0', 0, 1),
(165, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 20, 129, 0, 0, -1, '0', 0, 1),
(166, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 21, 129, 0, 0, -1, '0', 0, 1),
(167, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 22, 129, 0, 0, -1, '0', 0, 1),
(168, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 23, 129, 0, 0, -1, '0', 0, 1),
(169, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 24, 129, 0, 0, -1, '0', 0, 1),
(170, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 25, 129, 0, 0, -1, '0', 0, 1),
(171, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 26, 129, 0, 0, -1, '0', 0, 1),
(172, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 27, 129, 0, 0, -1, '0', 0, 1),
(173, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 28, 129, 0, 0, -1, '0', 0, 1),
(174, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 29, 129, 0, 0, -1, '0', 0, 1),
(175, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 30, 129, 0, 0, -1, '0', 0, 1),
(176, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 31, 129, 0, 0, -1, '0', 0, 1),
(177, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 32, 129, 0, 0, -1, '0', 0, 1),
(178, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 33, 129, 0, 0, -1, '0', 0, 1),
(179, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 34, 129, 0, 0, -1, '0', 0, 1),
(180, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 35, 129, 0, 0, -1, '0', 0, 1),
(181, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 36, 129, 0, 0, -1, '0', 0, 1),
(182, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 37, 129, 0, 0, -1, '0', 0, 1),
(183, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 38, 129, 0, 0, -1, '0', 0, 1),
(184, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 39, 129, 0, 0, -1, '0', 0, 1),
(185, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 40, 129, 0, 0, -1, '0', 0, 1),
(186, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 41, 129, 0, 0, -1, '0', 0, 1),
(187, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 42, 129, 0, 0, -1, '0', 0, 1),
(188, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 43, 129, 0, 0, -1, '0', 0, 1),
(189, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 44, 129, 0, 0, -1, '0', 0, 1),
(190, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 45, 129, 0, 0, -1, '0', 0, 1),
(191, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 46, 129, 0, 0, -1, '0', 0, 1),
(192, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 47, 129, 0, 0, -1, '0', 0, 1),
(193, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 48, 129, 0, 0, -1, '0', 0, 1),
(194, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 49, 129, 0, 0, -1, '0', 0, 1),
(195, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 50, 129, 0, 0, -1, '0', 0, 1),
(196, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 51, 129, 0, 0, -1, '0', 0, 1),
(197, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 52, 129, 0, 0, -1, '0', 0, 1),
(198, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 53, 129, 0, 0, -1, '0', 0, 1),
(199, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 54, 129, 0, 0, -1, '0', 0, 1),
(200, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 55, 129, 0, 0, -1, '0', 0, 1),
(201, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 56, 129, 0, 0, -1, '0', 0, 1),
(202, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 57, 129, 0, 0, -1, '0', 0, 1),
(203, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 58, 129, 0, 0, -1, '0', 0, 1),
(204, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 59, 129, 0, 0, -1, '0', 0, 1),
(205, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 60, 129, 0, 0, -1, '0', 0, 1),
(206, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 61, 129, 0, 0, -1, '0', 0, 1),
(207, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 62, 129, 0, 0, -1, '0', 0, 1),
(208, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 63, 129, 0, 0, -1, '0', 0, 1),
(209, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 64, 129, 0, 0, -1, '0', 0, 1),
(210, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 65, 129, 0, 0, -1, '0', 0, 1),
(211, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 66, 129, 0, 0, -1, '0', 0, 1),
(212, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 67, 129, 0, 0, -1, '0', 0, 1),
(213, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 68, 129, 0, 0, -1, '0', 0, 1),
(214, 1, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', NULL, 0, NULL, 0, 1, 0, 69, 129, 0, 0, -1, '0', 0, 1);

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
(2, '', 'Dashboard', '', '/dashboard', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(3, '', 'Sitemap', 'Whole world at a glance.', '/dashboard/sitemap', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(4, '', 'Full Sitemap', '', '/dashboard/sitemap/full', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(5, '', 'Flat View', '', '/dashboard/sitemap/explore', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(6, '', 'Page Search', '', '/dashboard/sitemap/search', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(8, '', 'File Manager', '', '/dashboard/files/search', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(9, '', 'Attributes', '', '/dashboard/files/attributes', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(10, '', 'File Sets', '', '/dashboard/files/sets', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(11, '', 'Add File Set', '', '/dashboard/files/add_set', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(12, '', 'Members', 'Add and manage the user accounts and groups on your website.', '/dashboard/users', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(13, '', 'Search Users', '', '/dashboard/users/search', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(14, '', 'User Groups', '', '/dashboard/users/groups', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(15, '', 'Attributes', '', '/dashboard/users/attributes', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(16, '', 'Add User', '', '/dashboard/users/add', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(17, '', 'Add Group', '', '/dashboard/users/add_group', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(19, '', 'Group Sets', '', '/dashboard/users/group_sets', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(20, '', 'Community Points', NULL, '/dashboard/users/points', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(22, '', 'Actions', NULL, '/dashboard/users/points/actions', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(23, '', 'Reports', 'Get data from forms and logs.', '/dashboard/reports', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(24, '', 'Form Results', 'Get submission data.', '/dashboard/reports/forms', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(25, '', 'Surveys', '', '/dashboard/reports/surveys', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(26, '', 'Logs', '', '/dashboard/reports/logs', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(28, '', 'Themes', 'Reskin your site.', '/dashboard/pages/themes', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(29, '', 'Inspect', '', '/dashboard/pages/themes/inspect', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(31, '', 'Organize Page Type Order', '', '/dashboard/pages/types/organize', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(32, '', 'Add Page Type', '', '/dashboard/pages/types/add', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(33, '', 'Compose Form', '', '/dashboard/pages/types/form', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(34, '', 'Defaults and Output', '', '/dashboard/pages/types/output', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(35, '', 'Page Type Attributes', '', '/dashboard/pages/types/attributes', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(36, '', 'Page Type Permissions', '', '/dashboard/pages/types/permissions', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(38, '', 'Add Page Template', 'Add page templates to your site.', '/dashboard/pages/templates/add', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(39, '', 'Attributes', '', '/dashboard/pages/attributes', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(40, '', 'Single Pages', '', '/dashboard/pages/single', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(41, '', 'RSS Feeds', '', '/dashboard/pages/feeds', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(43, '', 'Messages', '', '/dashboard/conversations/messages', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(44, '', 'Workflow', '', '/dashboard/workflow', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(48, '', 'Stacks', 'Share content across your site.', '/dashboard/blocks/stacks', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(50, '', 'Stack List', '', '/dashboard/blocks/stacks/list', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(51, '', 'Block Types', 'Manage the installed block types in your site.', '/dashboard/blocks/types', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(52, '', 'Extend concrete5', '', '/dashboard/extend', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(53, '', 'Dashboard', '', '/dashboard/news', '2015-05-19 09:57:34', '2015-05-19 09:57:36', NULL, 0),
(54, '', 'Add Functionality', 'Install add-ons & themes.', '/dashboard/extend/install', '2015-05-19 09:57:34', '2015-05-19 09:57:37', NULL, 0),
(55, '', 'Update Add-Ons', 'Update your installed packages.', '/dashboard/extend/update', '2015-05-19 09:57:34', '2015-05-19 09:57:37', NULL, 0),
(56, '', 'Connect to the Community', 'Connect to the concrete5 community.', '/dashboard/extend/connect', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(57, '', 'Get More Themes', 'Download themes from concrete5.org.', '/dashboard/extend/themes', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(58, '', 'Get More Add-Ons', 'Download add-ons from concrete5.org.', '/dashboard/extend/addons', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(59, '', 'System & Settings', 'Secure and setup your site.', '/dashboard/system', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(61, '', 'Site Name', '', '/dashboard/system/basics/name', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(62, '', 'Accessibility', '', '/dashboard/system/basics/accessibility', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(63, '', 'Social Links', '', '/dashboard/system/basics/social', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(64, '', 'Bookmark Icons', 'Bookmark icon and mobile home screen icon setup.', '/dashboard/system/basics/icons', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(65, '', 'Rich Text Editor', '', '/dashboard/system/basics/editor', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(66, '', 'Languages', '', '/dashboard/system/basics/multilingual', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(67, '', 'Time Zone', '', '/dashboard/system/basics/timezone', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(68, '', 'Multilingual', 'Run your site in multiple languages.', '/dashboard/system/multilingual', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(73, '', 'URLs and Redirection', '', '/dashboard/system/seo/urls', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(74, '', 'Bulk SEO Updater', '', '/dashboard/system/seo/bulk', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(75, '', 'Tracking Codes', '', '/dashboard/system/seo/codes', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(76, '', 'Excluded URL Word List', '', '/dashboard/system/seo/excluded', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(77, '', 'Search Index', '', '/dashboard/system/seo/searchindex', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(79, '', 'File Manager Permissions', '', '/dashboard/system/files/permissions', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(80, '', 'Allowed File Types', '', '/dashboard/system/files/filetypes', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(81, '', 'Thumbnails', '', '/dashboard/system/files/thumbnails', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(82, '', 'File Storage Locations', '', '/dashboard/system/files/storage', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(84, '', 'Cache & Speed Settings', '', '/dashboard/system/optimization/cache', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(85, '', 'Clear Cache', '', '/dashboard/system/optimization/clearcache', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(86, '', 'Automated Jobs', '', '/dashboard/system/optimization/jobs', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(87, '', 'Database Query Log', '', '/dashboard/system/optimization/query_log', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(89, '', 'Site Access', '', '/dashboard/system/permissions/site', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(90, '', 'Task Permissions', '', '/dashboard/system/permissions/tasks', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(93, '', 'IP Blacklist', '', '/dashboard/system/permissions/blacklist', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(94, '', 'Captcha Setup', '', '/dashboard/system/permissions/captcha', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(95, '', 'Spam Control', '', '/dashboard/system/permissions/antispam', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(96, '', 'Maintenance Mode', '', '/dashboard/system/permissions/maintenance', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(98, '', 'Login Destination', '', '/dashboard/system/registration/postlogin', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(99, '', 'Public Profiles', '', '/dashboard/system/registration/profiles', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(100, '', 'Public Registration', '', '/dashboard/system/registration/open', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(101, '', 'Authentication Types', '', '/dashboard/system/registration/authentication', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(102, '', 'Email', 'Control how your site send and processes mail.', '/dashboard/system/mail', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(103, '', 'SMTP Method', '', '/dashboard/system/mail/method', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(104, '', 'Test Mail Settings', '', '/dashboard/system/mail/method/test', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(105, '', 'Email Importers', '', '/dashboard/system/mail/importers', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(106, '', 'Conversations', 'Manage your conversations settings', '/dashboard/system/conversations', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(107, '', 'Settings', '', '/dashboard/system/conversations/settings', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(108, '', 'Community Points', '', '/dashboard/system/conversations/points', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(109, '', 'Banned Words', '', '/dashboard/system/conversations/bannedwords', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(111, '', 'Attributes', 'Setup attributes for pages, users, files and more.', '/dashboard/system/attributes', '2015-05-19 09:57:35', '2015-05-19 09:57:37', NULL, 0),
(112, '', 'Sets', 'Group attributes into sets for easier organization', '/dashboard/system/attributes/sets', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(113, '', 'Types', 'Choose which attribute types are available for different items.', '/dashboard/system/attributes/types', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(114, '', 'Topics', '', '/dashboard/system/attributes/topics', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(117, '', 'Environment Information', '', '/dashboard/system/environment/info', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(118, '', 'Debug Settings', '', '/dashboard/system/environment/debug', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(119, '', 'Logging Settings', '', '/dashboard/system/environment/logging', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(120, '', 'Proxy Server', '', '/dashboard/system/environment/proxy', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(121, '', 'Database Entities', '', '/dashboard/system/environment/entities', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(122, '', 'Backup & Restore', 'Backup or restore your website.', '/dashboard/system/backup', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(124, '', 'Update concrete5', '', '/dashboard/system/backup/update', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(125, '                                        ', 'Welcome to concrete5', 'Learn about how to use concrete5, how to develop for concrete5, and get general help.', '/dashboard/welcome', '2015-05-19 09:57:36', '2015-05-19 09:57:37', NULL, 0),
(126, '', 'Customize Dashboard Home', '', '/dashboard/home', '2015-05-19 09:57:36', '2015-05-19 09:57:38', NULL, 0),
(127, '', 'Drafts', '', '/!drafts', '2015-05-19 09:57:38', '2015-05-19 09:57:38', NULL, 0),
(128, '', 'Trash', '', '/!trash', '2015-05-19 09:57:38', '2015-05-19 09:57:38', NULL, 0),
(129, '', 'Stacks', '', '/!stacks', '2015-05-19 09:57:38', '2015-05-19 09:57:38', NULL, 0),
(132, '', 'My Account', '', '/account', '2015-05-19 09:57:38', '2015-05-19 09:57:38', NULL, 0),
(1, '', 'Home', '', NULL, '2015-05-19 09:57:30', '2015-05-19 13:14:11', NULL, 0),
(150, '', 'Site_Logo', NULL, '/!stacks/site-logo', '2015-05-19 10:21:47', '2015-05-19 10:23:33', NULL, 0),
(151, '', 'menu', NULL, '/!stacks/menu', '2015-05-19 10:24:58', '2015-05-19 10:25:40', NULL, 0),
(152, '', 'logo', NULL, '/!stacks/logo', '2015-05-19 10:29:44', '2015-05-19 10:30:34', NULL, 0),
(153, 'Who We Are ', 'titel1', NULL, '/!stacks/titel1', '2015-05-19 10:35:27', '2015-05-19 10:36:51', NULL, 0),
(154, 'Hello & Namaste ', 'ondertitel1', NULL, '/!stacks/ondertitel1', '2015-05-19 10:35:27', '2015-05-19 10:36:51', NULL, 0),
(155, ' We do not build websites but user experiences. We judge our performance according to the impact it makes  ', 'tekst1', NULL, '/!stacks/tekst1', '2015-05-19 10:35:27', '2015-05-19 10:36:51', NULL, 0),
(156, 'Web Design ', 'titel2', NULL, '/!stacks/titel2', '2015-05-19 10:38:36', '2015-05-19 10:39:22', NULL, 0),
(157, ' Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.   ', 'tekst2', NULL, '/!stacks/tekst2', '2015-05-19 10:38:36', '2015-05-19 10:39:22', NULL, 0),
(158, '  ', 'foto2', NULL, '/!stacks/foto2', '2015-05-19 10:39:56', '2015-05-19 13:14:05', NULL, 0),
(159, 'Development ', 'titel3', NULL, '/!stacks/titel3', '2015-05-19 10:43:56', '2015-05-19 10:45:14', NULL, 0),
(160, ' Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.  ', 'tekst3', NULL, '/!stacks/tekst3', '2015-05-19 10:43:56', '2015-05-19 10:45:14', NULL, 0),
(161, 'Graphics ', 'titel4', NULL, '/!stacks/titel4', '2015-05-19 10:43:56', '2015-05-19 10:45:14', NULL, 0),
(162, ' Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.   ', 'tekst4', NULL, '/!stacks/tekst4', '2015-05-19 10:43:56', '2015-05-19 10:45:14', NULL, 0),
(163, 'Illustrations ', 'titel5', NULL, '/!stacks/titel5', '2015-05-19 10:43:56', '2015-05-19 10:45:14', NULL, 0),
(164, ' Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.   ', 'tekst5', NULL, '/!stacks/tekst5', '2015-05-19 10:43:56', '2015-05-19 10:45:14', NULL, 0),
(165, 'What We Do ', 'titel6', NULL, '/!stacks/titel6', '2015-05-19 10:47:09', '2015-05-19 10:47:56', NULL, 0),
(166, 'Our Works ', 'ondertitel6', NULL, '/!stacks/ondertitel6', '2015-05-19 10:47:09', '2015-05-19 10:47:56', NULL, 0),
(167, ' Suspendisse ultrices eu massa non interdum. Cras eros nisi, pulvinar quis sem et, pellentesque blandit lacus.  ', 'tekst6', NULL, '/!stacks/tekst6', '2015-05-19 10:47:09', '2015-05-19 10:47:56', NULL, 0),
(168, '', 'foto7', NULL, '/!stacks/foto7', '2015-05-19 10:53:06', '2015-05-19 12:49:05', NULL, 0),
(170, ' Photography   ', 'tekst7', NULL, '/!stacks/tekst7', '2015-05-19 10:53:06', '2015-05-19 11:10:17', NULL, 0),
(172, ' King author  ', 'bijschrift7', NULL, '/!stacks/bijschrift7', '2015-05-19 11:07:15', '2015-05-19 11:10:17', NULL, 0),
(173, 'King Author ', 'titel7', NULL, '/!stacks/titel7', '2015-05-19 11:08:29', '2015-05-19 11:13:33', NULL, 0),
(181, 'Our Recent Posts ', 'titel11', NULL, '/!stacks/titel11', '2015-05-19 11:20:35', '2015-05-19 11:23:18', NULL, 0),
(182, 'Recent Blog ', 'ondertitel11', NULL, '/!stacks/ondertitel11', '2015-05-19 11:20:35', '2015-05-19 11:23:18', NULL, 0),
(183, ' We do not build websites but user experiences. We judge our performance according to the impact it makes  ', 'tekst11', NULL, '/!stacks/tekst11', '2015-05-19 11:20:35', '2015-05-19 11:23:18', NULL, 0),
(184, '', 'foto12', NULL, '/!stacks/foto12', '2015-05-19 11:24:08', '2015-05-19 11:35:49', NULL, 0),
(185, 'People in our country love chaos ', 'titel12', NULL, '/!stacks/titel12', '2015-05-19 11:26:09', '2015-05-19 11:41:06', NULL, 0),
(186, ' Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.    ', 'tekst12', NULL, '/!stacks/tekst12', '2015-05-19 11:29:38', '2015-05-19 11:41:06', NULL, 0),
(187, '23rd march 2015 ', 'datum12', NULL, '/!stacks/datum12', '2015-05-19 11:31:03', '2015-05-19 11:41:06', NULL, 0),
(189, '', 'pijl', NULL, '/!stacks/pijl', '2015-05-19 11:31:10', '2015-05-19 11:32:54', NULL, 0),
(190, '', 'foto13', NULL, '/!stacks/foto13', '2015-05-19 11:38:26', '2015-05-19 11:39:16', NULL, 0),
(191, 'People in our country love chaos ', 'titel13', NULL, '/!stacks/titel13', '2015-05-19 11:38:26', '2015-05-19 11:41:06', NULL, 0),
(192, ' Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.    ', 'tekst13', NULL, '/!stacks/tekst13', '2015-05-19 11:38:26', '2015-05-19 11:41:06', NULL, 0),
(193, '23rd march 2015 ', 'datum13', NULL, '/!stacks/datum13', '2015-05-19 11:38:26', '2015-05-19 11:41:06', NULL, 0),
(195, 'People in our country love chaos ', 'titel14', NULL, '/!stacks/titel14', '2015-05-19 11:38:26', '2015-05-19 11:41:07', NULL, 0),
(196, ' Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.    ', 'tekst14', NULL, '/!stacks/tekst14', '2015-05-19 11:38:26', '2015-05-19 11:41:07', NULL, 0),
(199, 'People in our country love chaos ', 'titel15', NULL, '/!stacks/titel15', '2015-05-19 11:38:26', '2015-05-19 11:41:07', NULL, 0),
(200, ' Fresh, lively and informative content, is key to any successful website, so take a look at your website''s content on a regular basis.    ', 'tekst15', NULL, '/!stacks/tekst15', '2015-05-19 11:38:26', '2015-05-19 11:41:07', NULL, 0),
(194, '', 'foto14', NULL, '/!stacks/foto14', '2015-05-19 11:38:26', '2015-05-19 11:42:34', NULL, 0),
(197, '23rd march 2015 ', 'datum14', NULL, '/!stacks/datum14', '2015-05-19 11:38:26', '2015-05-19 11:42:34', NULL, 0),
(198, '', 'foto15', NULL, '/!stacks/foto15', '2015-05-19 11:38:26', '2015-05-19 11:42:34', NULL, 0),
(201, '23rd march 2015 ', 'datum15', NULL, '/!stacks/datum15', '2015-05-19 11:38:26', '2015-05-19 11:42:34', NULL, 0),
(202, 'Sed ut perspiciatis unde omnis iste natus ', 'tekst16', NULL, '/!stacks/tekst16', '2015-05-19 11:43:32', '2015-05-19 11:47:31', NULL, 0),
(203, ' © 2015 All Rights Reseverd Template by W3layouts    ', 'copy', NULL, '/!stacks/copy', '2015-05-19 11:45:59', '2015-05-19 11:47:31', NULL, 0),
(204, '		   2147-5487-368   		   info(at)mycompany.com   		   On the other hand, denounce righteous  ', 'contact', NULL, '/!stacks/contact', '2015-05-19 11:48:35', '2015-05-19 11:51:16', NULL, 0),
(205, '  				Home  				About Us  				Blog  				Contact  				Disclaimer  			 ', 'pagina1', NULL, '/!stacks/pagina1', '2015-05-19 11:52:05', '2015-05-19 11:55:08', NULL, 0),
(206, '  				Blog  				Photography  				Freebies  				Journal  				News  			 ', 'pagina2', NULL, '/!stacks/pagina2', '2015-05-19 11:52:05', '2015-05-19 11:55:08', NULL, 0),
(207, '  			       			       			       			       			       		   ', 'social', NULL, '/!stacks/social', '2015-05-19 11:58:08', '2015-05-19 11:59:02', NULL, 0),
(174, 'King Author ', 'titel8', NULL, '/!stacks/titel8', '2015-05-19 11:14:20', '2015-05-19 12:49:05', NULL, 0),
(175, ' Photography  ', 'tekst8', NULL, '/!stacks/tekst8', '2015-05-19 11:14:20', '2015-05-19 12:49:05', NULL, 0),
(176, 'King Author ', 'titel9', NULL, '/!stacks/titel9', '2015-05-19 11:14:20', '2015-05-19 12:49:05', NULL, 0),
(177, ' Photography  ', 'tekst9', NULL, '/!stacks/tekst9', '2015-05-19 11:14:20', '2015-05-19 12:49:05', NULL, 0),
(178, 'King Author ', 'titel10', NULL, '/!stacks/titel10', '2015-05-19 11:14:20', '2015-05-19 13:06:29', NULL, 0),
(208, '', 'pijl_gallery', NULL, '/!stacks/pijl-gallery', '2015-05-19 12:03:57', '2015-05-19 12:49:05', NULL, 0),
(209, '', 'foto8', NULL, '/!stacks/foto8', '2015-05-19 12:09:37', '2015-05-19 12:49:05', NULL, 0),
(210, '', 'foto9', NULL, '/!stacks/foto9', '2015-05-19 12:09:37', '2015-05-19 12:49:05', NULL, 0),
(211, '', 'foto10', NULL, '/!stacks/foto10', '2015-05-19 12:09:38', '2015-05-19 12:49:05', NULL, 0),
(179, ' photography  ', 'tekst10', NULL, '/!stacks/tekst10', '2015-05-19 11:14:20', '2015-05-19 13:06:29', NULL, 0),
(212, '  ', 'foto3', NULL, '/!stacks/foto3', '2015-05-19 13:09:41', '2015-05-19 13:10:52', NULL, 0),
(213, '  ', 'foto4', NULL, '/!stacks/foto4', '2015-05-19 13:10:45', '2015-05-19 13:14:05', NULL, 0),
(214, '  ', 'foto5', NULL, '/!stacks/foto5', '2015-05-19 13:10:45', '2015-05-19 13:14:05', NULL, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PageTemplates`
--

INSERT INTO `PageTemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1, 'core_stack', '', 'Stack', 1, 0),
(2, 'dashboard_primary_five', '', 'Dashboard Primary + Five', 1, 0),
(3, 'dashboard_header_four_col', '', 'Dashboard Header + Four Column', 1, 0),
(4, 'dashboard_full', '', 'Dashboard Full', 1, 0),
(5, 'full', 'full.png', 'Full', 0, 0),
(6, 'index', 'blank.png', 'Index', 0, 0),
(7, 'home', 'blank.png', 'home', 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PageThemes`
--

INSERT INTO `PageThemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(1, 'elemental', 'Elemental', 'Elegant, spacious theme with support for blogs, portfolios, layouts and more.', 0, 1),
(2, 'namaste', 'Namaste', 'Opmaak van de pagina Namaste (Examen Frontend 2 Deel 2)', 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypeComposerControlTypes`
--

CREATE TABLE IF NOT EXISTS `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) unsigned NOT NULL,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypeComposerFormLayoutSetControls`
--

INSERT INTO `PageTypeComposerFormLayoutSetControls` (`ptComposerFormLayoutSetControlID`, `ptComposerFormLayoutSetID`, `ptComposerControlTypeID`, `ptComposerControlObject`, `ptComposerFormLayoutSetControlDisplayOrder`, `ptComposerFormLayoutSetControlCustomLabel`, `ptComposerFormLayoutSetControlCustomTemplate`, `ptComposerFormLayoutSetControlDescription`, `ptComposerFormLayoutSetControlRequired`) VALUES
(1, 1, 1, 'O:78:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\NameCorePageProperty":9:{s:37:"\0*\0ptComposerControlRequiredByDefault";b:1;s:17:"\0*\0propertyHandle";s:4:"name";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:4:"name";s:24:"\0*\0ptComposerControlName";s:9:"Page Name";s:27:"\0*\0ptComposerControlIconSRC";s:75:"/Examen/Frontend_2/Deel_2/examen/concrete/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, 'Page Name', NULL, NULL, 1),
(2, 1, 1, 'O:85:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\DescriptionCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:11:"description";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:11:"description";s:24:"\0*\0ptComposerControlName";s:11:"Description";s:27:"\0*\0ptComposerControlIconSRC";s:79:"/Examen/Frontend_2/Deel_2/examen/concrete/concrete/attributes/textarea/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 1, NULL, NULL, NULL, 0),
(3, 1, 1, 'O:81:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\UrlSlugCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:8:"url_slug";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:8:"url_slug";s:24:"\0*\0ptComposerControlName";s:8:"URL Slug";s:27:"\0*\0ptComposerControlIconSRC";s:75:"/Examen/Frontend_2/Deel_2/examen/concrete/concrete/attributes/text/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 2, NULL, NULL, NULL, 0),
(4, 1, 1, 'O:86:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PageTemplateCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:13:"page_template";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:13:"page_template";s:24:"\0*\0ptComposerControlName";s:13:"Page Template";s:27:"\0*\0ptComposerControlIconSRC";s:77:"/Examen/Frontend_2/Deel_2/examen/concrete/concrete/attributes/select/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 3, NULL, NULL, NULL, 0),
(5, 1, 1, 'O:87:"Concrete\\Core\\Page\\Type\\Composer\\Control\\CorePageProperty\\PublishTargetCorePageProperty":9:{s:17:"\0*\0propertyHandle";s:14:"publish_target";s:30:"\0*\0ptComposerControlTypeHandle";s:18:"core_page_property";s:30:"\0*\0ptComposerControlIdentifier";s:14:"publish_target";s:24:"\0*\0ptComposerControlName";s:13:"Page Location";s:27:"\0*\0ptComposerControlIconSRC";s:81:"/Examen/Frontend_2/Deel_2/examen/concrete/concrete/attributes/image_file/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 4, NULL, NULL, NULL, 0),
(6, 2, 3, 'O:53:"Concrete\\Core\\Page\\Type\\Composer\\Control\\BlockControl":12:{s:7:"\0*\0btID";i:12;s:30:"\0*\0ptComposerControlTypeHandle";s:5:"block";s:5:"\0*\0bt";b:0;s:4:"\0*\0b";b:0;s:13:"\0*\0controller";N;s:30:"\0*\0ptComposerControlIdentifier";i:12;s:24:"\0*\0ptComposerControlName";s:7:"Content";s:27:"\0*\0ptComposerControlIconSRC";s:74:"/Examen/Frontend_2/Deel_2/examen/concrete/concrete/blocks/content/icon.png";s:20:"\0*\0ptComposerControl";N;s:37:"\0*\0ptComposerControlRequiredByDefault";b:0;s:41:"\0*\0ptComposerControlRequiredOnThisRequest";b:0;s:5:"error";s:0:"";}', 0, 'Body', NULL, NULL, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypeComposerOutputBlocks`
--

INSERT INTO `PageTypeComposerOutputBlocks` (`ptComposerOutputBlockID`, `cID`, `arHandle`, `cbDisplayOrder`, `ptComposerFormLayoutSetControlID`, `bID`) VALUES
(1, 149, 'Main', 0, 6, 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypeComposerOutputControls`
--

CREATE TABLE IF NOT EXISTS `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) unsigned NOT NULL,
  `pTemplateID` int(10) unsigned DEFAULT '0',
  `ptID` int(10) unsigned DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypeComposerOutputControls`
--

INSERT INTO `PageTypeComposerOutputControls` (`ptComposerOutputControlID`, `pTemplateID`, `ptID`, `ptComposerFormLayoutSetControlID`) VALUES
(1, 5, 5, 6),
(2, 6, 5, 6),
(3, 7, 5, 6);

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
(5, 5, 143);

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
(1, 63, 26),
(2, 63, 27),
(3, 63, 28),
(4, 63, 29),
(5, 63, 30);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PageTypePublishTargetTypes`
--

CREATE TABLE IF NOT EXISTS `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) unsigned NOT NULL,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `PageTypes`
--

INSERT INTO `PageTypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`) VALUES
(1, 'Stack', 'core_stack', 3, 0, 'A', 1, 0, 0, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":4:{s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
(2, 'Dashboard Primary + Five', 'dashboard_primary_five', 3, 0, 'A', 1, 0, 1, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":4:{s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
(3, 'Dashboard Header + Four Column', 'dashboard_header_four_col', 3, 0, 'A', 1, 0, 2, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":4:{s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
(4, 'Dashboard Full', 'dashboard_full', 3, 0, 'A', 1, 0, 3, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":4:{s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}'),
(5, 'Page', 'page', 3, 5, 'A', 0, 1, 0, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":4:{s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;}');

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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessEntities`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntities` (
  `peID` int(10) unsigned NOT NULL,
  `petID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(7, 20),
(1, 21),
(2, 21),
(4, 21);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionAccessEntityTypes`
--

CREATE TABLE IF NOT EXISTS `PermissionAccessEntityTypes` (
  `petID` int(10) unsigned NOT NULL,
  `petHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(25, 1, 0, 10),
(26, 2, 0, 10),
(27, 2, 0, 10),
(28, 2, 0, 10),
(29, 2, 0, 10),
(30, 2, 0, 10),
(31, 3, 0, 10),
(32, 1, 0, 10),
(32, 3, 0, 10),
(33, 1, 0, 10),
(34, 1, 0, 10),
(35, 1, 0, 10),
(36, 1, 0, 10),
(37, 1, 0, 10),
(38, 1, 0, 10),
(39, 1, 0, 10),
(40, 1, 0, 10),
(41, 3, 0, 10),
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
(57, 1, 0, 10),
(58, 3, 0, 10),
(59, 3, 0, 10),
(60, 1, 0, 10),
(61, 3, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 1, 0, 10),
(66, 1, 0, 10),
(67, 1, 0, 10),
(68, 1, 0, 10),
(69, 1, 0, 10),
(70, 1, 0, 10),
(71, 1, 0, 10),
(72, 1, 0, 10),
(73, 1, 0, 10),
(74, 1, 0, 10),
(75, 1, 0, 10),
(76, 1, 0, 10),
(77, 1, 0, 10),
(77, 2, 0, 10),
(78, 1, 0, 10),
(78, 2, 0, 10),
(79, 1, 0, 10),
(79, 2, 0, 10),
(80, 1, 0, 10),
(80, 2, 0, 10),
(81, 1, 0, 10),
(81, 2, 0, 10),
(82, 1, 0, 10),
(82, 2, 0, 10),
(83, 1, 0, 10),
(83, 2, 0, 10),
(84, 1, 0, 10),
(85, 1, 0, 10),
(86, 1, 0, 10),
(87, 1, 0, 10),
(88, 1, 0, 10),
(89, 3, 0, 10),
(90, 3, 0, 10),
(91, 1, 0, 10),
(91, 4, 0, 10),
(92, 1, 0, 10),
(92, 4, 0, 10),
(93, 1, 0, 10),
(93, 5, 0, 10),
(94, 1, 0, 10),
(95, 1, 0, 10),
(96, 1, 0, 10);

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
(1, 19),
(2, 20),
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
(24, 102),
(25, 103);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionDurationObjects`
--

CREATE TABLE IF NOT EXISTS `PermissionDurationObjects` (
  `pdID` int(10) unsigned NOT NULL,
  `pdObject` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `PermissionKeyCategories`
--

CREATE TABLE IF NOT EXISTS `PermissionKeyCategories` (
  `pkCategoryID` int(10) unsigned NOT NULL,
  `pkCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(20, 'conversation_message', NULL),
(21, 'multilingual_section', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(66, 'add_conversation_message', 'Add Message to Conversation', 0, 1, '', 19, 0),
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
(96, 'view_in_maintenance_mode', 'View Site in Maintenance Mode', 0, 0, 'Ability to see and use the website when concrete5 is in maintenance mode.', 10, 0),
(97, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 12, 0),
(98, 'install_packages', 'Install Packages', 0, 0, NULL, 12, 0),
(99, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 12, 0),
(100, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 4, 0),
(101, 'access_user_search', 'Access User Search', 0, 0, 'Controls whether a user can view the search user interface.', 4, 0),
(102, 'edit_gatherings', 'Edit Gatherings', 0, 0, 'Can edit the footprint and items in all gatherings.', 10, 0),
(103, 'edit_gathering_items', 'Edit Gathering Items', 0, 0, '', 15, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Piles`
--

INSERT INTO `Piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1, 1, 1, '2015-05-19 08:19:05', NULL, 'READY');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `QueueMessages`
--

CREATE TABLE IF NOT EXISTS `QueueMessages` (
  `message_id` int(10) unsigned NOT NULL,
  `queue_id` int(10) unsigned NOT NULL,
  `handle` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `SocialLinks`
--

CREATE TABLE IF NOT EXISTS `SocialLinks` (
  `slID` int(10) unsigned NOT NULL,
  `ssHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Stacks`
--

CREATE TABLE IF NOT EXISTS `Stacks` (
  `stID` int(10) unsigned NOT NULL,
  `stName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stType` int(10) unsigned NOT NULL DEFAULT '0',
  `cID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Stacks`
--

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`) VALUES
(1, 'Header Site Title', 20, 144),
(2, 'Header Navigation', 20, 145),
(3, 'Footer Legal', 20, 146),
(4, 'Footer Navigation', 20, 147),
(5, 'Footer Contact', 20, 148),
(6, 'Site_Logo', 20, 150),
(7, 'menu', 20, 151),
(8, 'logo', 20, 152),
(9, 'titel1', 20, 153),
(10, 'ondertitel1', 20, 154),
(11, 'tekst1', 20, 155),
(12, 'titel2', 20, 156),
(13, 'tekst2', 20, 157),
(14, 'foto2', 20, 158),
(15, 'titel3', 20, 159),
(16, 'tekst3', 20, 160),
(17, 'titel4', 20, 161),
(18, 'tekst4', 20, 162),
(19, 'titel5', 20, 163),
(20, 'tekst5', 20, 164),
(21, 'titel6', 20, 165),
(22, 'ondertitel6', 20, 166),
(23, 'tekst6', 20, 167),
(24, 'foto7', 20, 168),
(25, 'ondertitel7', 20, 169),
(26, 'tekst7', 20, 170),
(27, 'foto7.1', 20, 171),
(28, 'bijschrift7', 20, 172),
(29, 'titel7', 20, 173),
(30, 'titel8', 20, 174),
(31, 'tekst8', 20, 175),
(32, 'titel9', 20, 176),
(33, 'tekst9', 20, 177),
(34, 'titel10', 20, 178),
(35, 'tekst10', 20, 179),
(36, 'info', 20, 180),
(37, 'titel11', 20, 181),
(38, 'ondertitel11', 20, 182),
(39, 'tekst11', 20, 183),
(40, 'foto12', 20, 184),
(41, 'titel12', 20, 185),
(42, 'tekst12', 20, 186),
(43, 'datum12', 20, 187),
(44, 'pijl12', 20, 188),
(45, 'pijl', 20, 189),
(46, 'foto13', 20, 190),
(47, 'titel13', 20, 191),
(48, 'tekst13', 20, 192),
(49, 'datum13', 20, 193),
(50, 'foto14', 20, 194),
(51, 'titel14', 20, 195),
(52, 'tekst14', 20, 196),
(53, 'datum14', 20, 197),
(54, 'foto15', 20, 198),
(55, 'titel15', 20, 199),
(56, 'tekst15', 20, 200),
(57, 'datum15', 20, 201),
(58, 'tekst16', 20, 202),
(59, 'copy', 20, 203),
(60, 'contact', 20, 204),
(61, 'pagina1', 20, 205),
(62, 'pagina2', 20, 206),
(63, 'social', 20, 207),
(64, 'pijl_gallery', 20, 208),
(65, 'foto8', 20, 209),
(66, 'foto9', 20, 210),
(67, 'foto10', 20, 211),
(68, 'foto3', 20, 212),
(69, 'foto4', 20, 213),
(70, 'foto5', 20, 214);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `StyleCustomizerCustomCssRecords`
--

CREATE TABLE IF NOT EXISTS `StyleCustomizerCustomCssRecords` (
  `sccRecordID` int(10) unsigned NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `StyleCustomizerInlineStylePresets`
--

CREATE TABLE IF NOT EXISTS `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) unsigned NOT NULL,
  `pssPresetName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `issID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `StyleCustomizerInlineStyleSets`
--

INSERT INTO `StyleCustomizerInlineStyleSets` (`issID`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `borderWidth`, `borderColor`, `borderStyle`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `customClass`) VALUES
(1, '', 0, 'no-repeat', NULL, '', '', NULL, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `StyleCustomizerValueLists`
--

CREATE TABLE IF NOT EXISTS `StyleCustomizerValueLists` (
  `scvlID` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `StyleCustomizerValues`
--

CREATE TABLE IF NOT EXISTS `StyleCustomizerValues` (
  `scvID` int(10) unsigned NOT NULL,
  `scvlID` int(10) unsigned DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('20150504000000');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeGroupNodes`
--

CREATE TABLE IF NOT EXISTS `TreeGroupNodes` (
  `treeNodeID` int(10) unsigned NOT NULL,
  `gID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(1, 81, 84),
(1, 82, 85),
(1, 83, 86),
(1, 84, 87),
(1, 85, 88);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Trees`
--

INSERT INTO `Trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1, 1, '2015-05-19 09:57:30', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeTopicNodes`
--

CREATE TABLE IF NOT EXISTS `TreeTopicNodes` (
  `treeNodeID` int(10) unsigned NOT NULL,
  `treeNodeTopicName` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `TreeTypes`
--

CREATE TABLE IF NOT EXISTS `TreeTypes` (
  `treeTypeID` int(10) unsigned NOT NULL,
  `treeTypeHandle` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `pkgID` int(10) unsigned DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `Users`
--

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsValidated`, `uIsFullRecord`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uLastIP`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uTimezone`, `uDefaultLanguage`) VALUES
(1, 'admin', 'glenlauwers@hotmail.com', '$2a$12$.9nTNIpM82gisi/Zq3Yf.evQMR7jFL77QoU/9WkEMy.BJwLZUduqC', '1', -1, 1, '2015-05-19 09:57:30', '2015-05-19 09:57:30', 0, 1432036869, 1432022250, 0x3766303030303031, 0, 1, 0, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `WorkflowProgressCategories`
--

CREATE TABLE IF NOT EXISTS `WorkflowProgressCategories` (
  `wpCategoryID` int(10) unsigned NOT NULL,
  `wpCategoryHandle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `WorkflowProgressHistory`
--

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2015-05-19 08:22:46', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"2";s:4:"wrID";s:1:"1";}'),
(2, 2, '2015-05-19 08:23:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"3";s:4:"wrID";s:1:"2";}'),
(3, 3, '2015-05-19 08:25:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"4";s:4:"wrID";s:1:"3";}'),
(4, 4, '2015-05-19 08:30:34', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"5";s:4:"wrID";s:1:"4";}'),
(5, 5, '2015-05-19 08:36:51', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"6";s:4:"wrID";s:1:"5";}'),
(6, 6, '2015-05-19 08:39:22', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"7";s:4:"wrID";s:1:"6";}'),
(7, 7, '2015-05-19 08:45:13', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"8";s:4:"wrID";s:1:"7";}'),
(8, 8, '2015-05-19 08:47:56', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:1:"9";s:4:"wrID";s:1:"8";}'),
(9, 9, '2015-05-19 08:57:53', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"10";s:4:"wrID";s:1:"9";}'),
(10, 10, '2015-05-19 09:10:17', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"11";s:4:"wrID";s:2:"10";}'),
(11, 11, '2015-05-19 09:13:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"12";s:4:"wrID";s:2:"11";}'),
(12, 12, '2015-05-19 09:23:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"13";s:4:"wrID";s:2:"12";}'),
(13, 13, '2015-05-19 09:26:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"14";s:4:"wrID";s:2:"13";}'),
(14, 14, '2015-05-19 09:32:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"15";s:4:"wrID";s:2:"14";}'),
(15, 15, '2015-05-19 09:34:04', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"16";s:4:"wrID";s:2:"15";}'),
(16, 16, '2015-05-19 09:35:49', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"17";s:4:"wrID";s:2:"16";}'),
(17, 17, '2015-05-19 09:39:16', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"18";s:4:"wrID";s:2:"17";}'),
(18, 18, '2015-05-19 09:41:06', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"19";s:4:"wrID";s:2:"18";}'),
(19, 19, '2015-05-19 09:42:34', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"20";s:4:"wrID";s:2:"19";}'),
(20, 20, '2015-05-19 09:47:31', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"21";s:4:"wrID";s:2:"20";}'),
(21, 21, '2015-05-19 09:49:47', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"22";s:4:"wrID";s:2:"21";}'),
(22, 22, '2015-05-19 09:50:26', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"23";s:4:"wrID";s:2:"22";}'),
(23, 23, '2015-05-19 09:51:16', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"24";s:4:"wrID";s:2:"23";}'),
(24, 24, '2015-05-19 09:52:58', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"25";s:4:"wrID";s:2:"24";}'),
(25, 25, '2015-05-19 09:55:07', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"26";s:4:"wrID";s:2:"25";}'),
(26, 26, '2015-05-19 09:59:02', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"27";s:4:"wrID";s:2:"26";}'),
(27, 27, '2015-05-19 10:49:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"28";s:4:"wrID";s:2:"27";}'),
(28, 28, '2015-05-19 11:06:28', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"29";s:4:"wrID";s:2:"28";}'),
(29, 29, '2015-05-19 11:10:52', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"30";s:4:"wrID";s:2:"29";}'),
(30, 30, '2015-05-19 11:14:05', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";s:2:"14";s:3:"cID";s:1:"1";s:4:"cvID";s:2:"31";s:4:"wrID";s:2:"30";}');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `WorkflowRequestObjects`
--

CREATE TABLE IF NOT EXISTS `WorkflowRequestObjects` (
  `wrID` int(10) unsigned NOT NULL,
  `wrObject` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Workflows`
--

CREATE TABLE IF NOT EXISTS `Workflows` (
  `wfID` int(10) unsigned NOT NULL,
  `wfName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wftID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `WorkflowTypes`
--

CREATE TABLE IF NOT EXISTS `WorkflowTypes` (
  `wftID` int(10) unsigned NOT NULL,
  `wftHandle` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `pkgID` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  ADD PRIMARY KEY (`arLayoutColumnID`),
  ADD KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  ADD KEY `arID` (`arID`),
  ADD KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`);

--
-- Indexen voor tabel `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexen voor tabel `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  ADD PRIMARY KEY (`arLayoutPresetID`),
  ADD KEY `arLayoutID` (`arLayoutID`),
  ADD KEY `arLayoutPresetName` (`arLayoutPresetName`);

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
  ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `AreaPermissionBlockTypeAccessList`
--
ALTER TABLE `AreaPermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `AreaPermissionBlockTypeAccessListCustom`
--
ALTER TABLE `AreaPermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexen voor tabel `Areas`
--
ALTER TABLE `Areas`
  ADD PRIMARY KEY (`arID`),
  ADD KEY `arIsGlobal` (`arIsGlobal`),
  ADD KEY `cID` (`cID`),
  ADD KEY `arHandle` (`arHandle`),
  ADD KEY `arParentID` (`arParentID`);

--
-- Indexen voor tabel `atAddress`
--
ALTER TABLE `atAddress`
  ADD PRIMARY KEY (`avID`);

--
-- Indexen voor tabel `atAddressCustomCountries`
--
ALTER TABLE `atAddressCustomCountries`
  ADD PRIMARY KEY (`atAddressCustomCountryID`),
  ADD KEY `akID` (`akID`);

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
  ADD PRIMARY KEY (`avID`),
  ADD KEY `fID` (`fID`);

--
-- Indexen voor tabel `atNumber`
--
ALTER TABLE `atNumber`
  ADD PRIMARY KEY (`avID`);

--
-- Indexen voor tabel `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  ADD PRIMARY KEY (`avID`,`TopicNodeID`),
  ADD KEY `TopicNodeID` (`TopicNodeID`);

--
-- Indexen voor tabel `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `akID` (`akID`,`displayOrder`),
  ADD KEY `value` (`value`);

--
-- Indexen voor tabel `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
  ADD PRIMARY KEY (`avID`,`atSelectOptionID`),
  ADD KEY `atSelectOptionID` (`atSelectOptionID`);

--
-- Indexen voor tabel `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexen voor tabel `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
  ADD PRIMARY KEY (`avsID`),
  ADD KEY `avID` (`avID`,`avsID`);

--
-- Indexen voor tabel `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexen voor tabel `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `akTopicTreeID` (`akTopicTreeID`);

--
-- Indexen voor tabel `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  ADD PRIMARY KEY (`akCategoryID`),
  ADD KEY `akCategoryHandle` (`akCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`,`akCategoryID`);

--
-- Indexen voor tabel `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  ADD PRIMARY KEY (`akID`),
  ADD UNIQUE KEY `akHandle` (`akHandle`,`akCategoryID`),
  ADD KEY `akCategoryID` (`akCategoryID`),
  ADD KEY `atID` (`atID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
  ADD PRIMARY KEY (`akID`,`asID`),
  ADD KEY `asID` (`asID`,`displayOrder`);

--
-- Indexen voor tabel `AttributeSets`
--
ALTER TABLE `AttributeSets`
  ADD PRIMARY KEY (`asID`),
  ADD UNIQUE KEY `asHandle` (`asHandle`),
  ADD KEY `akCategoryID` (`akCategoryID`,`asDisplayOrder`),
  ADD KEY `pkgID` (`pkgID`,`asID`);

--
-- Indexen voor tabel `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
  ADD PRIMARY KEY (`atID`,`akCategoryID`),
  ADD KEY `akCategoryID` (`akCategoryID`);

--
-- Indexen voor tabel `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  ADD PRIMARY KEY (`atID`),
  ADD UNIQUE KEY `atHandle` (`atHandle`),
  ADD KEY `pkgID` (`pkgID`,`atID`);

--
-- Indexen voor tabel `AttributeValues`
--
ALTER TABLE `AttributeValues`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `akID` (`akID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `atID` (`atID`);

--
-- Indexen voor tabel `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
  ADD PRIMARY KEY (`authTypeID`),
  ADD UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `BannedWords`
--
ALTER TABLE `BannedWords`
  ADD PRIMARY KEY (`bwID`);

--
-- Indexen voor tabel `BasicWorkflowPermissionAssignments`
--
ALTER TABLE `BasicWorkflowPermissionAssignments`
  ADD PRIMARY KEY (`wfID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `BasicWorkflowProgressData`
--
ALTER TABLE `BasicWorkflowProgressData`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `uIDStarted` (`uIDStarted`),
  ADD KEY `uIDCompleted` (`uIDCompleted`);

--
-- Indexen voor tabel `BlockFeatureAssignments`
--
ALTER TABLE `BlockFeatureAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  ADD KEY `faID` (`faID`,`cID`,`cvID`),
  ADD KEY `bID` (`bID`);

--
-- Indexen voor tabel `BlockPermissionAssignments`
--
ALTER TABLE `BlockPermissionAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  ADD KEY `bID` (`bID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `BlockRelations`
--
ALTER TABLE `BlockRelations`
  ADD PRIMARY KEY (`brID`),
  ADD KEY `bID` (`bID`),
  ADD KEY `originalBID` (`originalBID`);

--
-- Indexen voor tabel `Blocks`
--
ALTER TABLE `Blocks`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `btID` (`btID`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `BlockTypePermissionBlockTypeAccessList`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `BlockTypePermissionBlockTypeAccessListCustom`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexen voor tabel `BlockTypes`
--
ALTER TABLE `BlockTypes`
  ADD PRIMARY KEY (`btID`),
  ADD UNIQUE KEY `btHandle` (`btHandle`),
  ADD KEY `btDisplayOrder` (`btDisplayOrder`,`btName`,`btID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `BlockTypeSetBlockTypes`
--
ALTER TABLE `BlockTypeSetBlockTypes`
  ADD PRIMARY KEY (`btID`,`btsID`),
  ADD KEY `btsID` (`btsID`,`displayOrder`);

--
-- Indexen voor tabel `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
  ADD PRIMARY KEY (`btsID`),
  ADD UNIQUE KEY `btsHandle` (`btsHandle`),
  ADD KEY `btsDisplayOrder` (`btsDisplayOrder`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `btContentFile`
--
ALTER TABLE `btContentFile`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexen voor tabel `btContentImage`
--
ALTER TABLE `btContentImage`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexen voor tabel `btContentLocal`
--
ALTER TABLE `btContentLocal`
  ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btCoreAreaLayout`
--
ALTER TABLE `btCoreAreaLayout`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `arLayoutID` (`arLayoutID`);

--
-- Indexen voor tabel `btCoreConversation`
--
ALTER TABLE `btCoreConversation`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexen voor tabel `btCorePageTypeComposerControlOutput`
--
ALTER TABLE `btCorePageTypeComposerControlOutput`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`);

--
-- Indexen voor tabel `btCoreScrapbookDisplay`
--
ALTER TABLE `btCoreScrapbookDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indexen voor tabel `btCoreStackDisplay`
--
ALTER TABLE `btCoreStackDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `stID` (`stID`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Indexen voor tabel `btFeature`
--
ALTER TABLE `btFeature`
  ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btForm`
--
ALTER TABLE `btForm`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indexen voor tabel `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
  ADD PRIMARY KEY (`aID`),
  ADD KEY `asID` (`asID`),
  ADD KEY `msqID` (`msqID`);

--
-- Indexen voor tabel `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
  ADD PRIMARY KEY (`qID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `msqID` (`msqID`),
  ADD KEY `bID` (`bID`,`questionSetId`);

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
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptID` (`ptID`);

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
  ADD PRIMARY KEY (`btSocialLinkID`),
  ADD KEY `bID` (`bID`,`displayOrder`),
  ADD KEY `slID` (`slID`);

--
-- Indexen voor tabel `btSurvey`
--
ALTER TABLE `btSurvey`
  ADD PRIMARY KEY (`bID`);

--
-- Indexen voor tabel `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
  ADD PRIMARY KEY (`optionID`),
  ADD KEY `bID` (`bID`,`displayOrder`);

--
-- Indexen voor tabel `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `cID` (`cID`,`optionID`,`bID`),
  ADD KEY `bID` (`bID`,`cID`,`uID`),
  ADD KEY `uID` (`uID`);

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
  ADD PRIMARY KEY (`cID`,`cvID`,`akID`),
  ADD KEY `akID` (`akID`),
  ADD KEY `avID` (`avID`);

--
-- Indexen voor tabel `Collections`
--
ALTER TABLE `Collections`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cIDDateModified` (`cID`,`cDateModified`),
  ADD KEY `cDateModified` (`cDateModified`),
  ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indexen voor tabel `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
  ADD PRIMARY KEY (`cID`);

--
-- Indexen voor tabel `CollectionVersionAreaStyles`
--
ALTER TABLE `CollectionVersionAreaStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  ADD KEY `issID` (`issID`);

--
-- Indexen voor tabel `CollectionVersionBlocks`
--
ALTER TABLE `CollectionVersionBlocks`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`);

--
-- Indexen voor tabel `CollectionVersionBlocksCacheSettings`
--
ALTER TABLE `CollectionVersionBlocksCacheSettings`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexen voor tabel `CollectionVersionBlocksOutputCache`
--
ALTER TABLE `CollectionVersionBlocksOutputCache`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexen voor tabel `CollectionVersionBlockStyles`
--
ALTER TABLE `CollectionVersionBlockStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`issID`),
  ADD KEY `issID` (`issID`);

--
-- Indexen voor tabel `CollectionVersionFeatureAssignments`
--
ALTER TABLE `CollectionVersionFeatureAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indexen voor tabel `CollectionVersionRelatedEdits`
--
ALTER TABLE `CollectionVersionRelatedEdits`
  ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indexen voor tabel `CollectionVersions`
--
ALTER TABLE `CollectionVersions`
  ADD PRIMARY KEY (`cID`,`cvID`),
  ADD KEY `cvIsApproved` (`cvIsApproved`),
  ADD KEY `cvAuthorUID` (`cvAuthorUID`),
  ADD KEY `cvApproverUID` (`cvApproverUID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexen voor tabel `CollectionVersionThemeCustomStyles`
--
ALTER TABLE `CollectionVersionThemeCustomStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexen voor tabel `Config`
--
ALTER TABLE `Config`
  ADD PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  ADD KEY `configGroup` (`configGroup`);

--
-- Indexen voor tabel `ConfigStore`
--
ALTER TABLE `ConfigStore`
  ADD PRIMARY KEY (`cfKey`,`uID`),
  ADD KEY `uID` (`uID`,`cfKey`),
  ADD KEY `pkgID` (`pkgID`,`cfKey`);

--
-- Indexen voor tabel `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
  ADD PRIMARY KEY (`cnvDiscussionID`),
  ADD KEY `cID` (`cID`);

--
-- Indexen voor tabel `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
  ADD PRIMARY KEY (`cnvEditorID`),
  ADD KEY `pkgID` (`pkgID`,`cnvEditorHandle`);

--
-- Indexen voor tabel `ConversationFeatureDetailAssignments`
--
ALTER TABLE `ConversationFeatureDetailAssignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexen voor tabel `ConversationFlaggedMessages`
--
ALTER TABLE `ConversationFlaggedMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`);

--
-- Indexen voor tabel `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
  ADD PRIMARY KEY (`cnvMessageFlagTypeID`),
  ADD UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`);

--
-- Indexen voor tabel `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
  ADD PRIMARY KEY (`cnvMessageAttachmentID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`),
  ADD KEY `fID` (`fID`);

--
-- Indexen voor tabel `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
  ADD PRIMARY KEY (`cnvMessageRatingID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  ADD KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `cnvMessageParentID` (`cnvMessageParentID`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `ConversationPermissionAddMessageAccessList`
--
ALTER TABLE `ConversationPermissionAddMessageAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `ConversationPermissionAssignments`
--
ALTER TABLE `ConversationPermissionAssignments`
  ADD PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
  ADD PRIMARY KEY (`cnvRatingTypeID`),
  ADD UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  ADD KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`);

--
-- Indexen voor tabel `Conversations`
--
ALTER TABLE `Conversations`
  ADD PRIMARY KEY (`cnvID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `cnvParentMessageID` (`cnvParentMessageID`);

--
-- Indexen voor tabel `ConversationSubscriptions`
--
ALTER TABLE `ConversationSubscriptions`
  ADD PRIMARY KEY (`cnvID`,`uID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  ADD PRIMARY KEY (`dsID`),
  ADD KEY `fID` (`fID`,`timestamp`),
  ADD KEY `fvID` (`fID`,`fvID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `rcID` (`rcID`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexen voor tabel `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `feID` (`feID`),
  ADD KEY `fcID` (`fcID`);

--
-- Indexen voor tabel `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
  ADD PRIMARY KEY (`fcID`),
  ADD UNIQUE KEY `fcHandle` (`fcHandle`),
  ADD KEY `pkgID` (`pkgID`,`fcID`);

--
-- Indexen voor tabel `Features`
--
ALTER TABLE `Features`
  ADD PRIMARY KEY (`feID`),
  ADD UNIQUE KEY `feHandle` (`feHandle`),
  ADD KEY `pkgID` (`pkgID`,`feID`);

--
-- Indexen voor tabel `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
  ADD PRIMARY KEY (`fID`,`fvID`,`akID`),
  ADD KEY `akID` (`akID`),
  ADD KEY `avID` (`avID`);

--
-- Indexen voor tabel `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
  ADD PRIMARY KEY (`ftTypeID`);

--
-- Indexen voor tabel `FilePermissionAssignments`
--
ALTER TABLE `FilePermissionAssignments`
  ADD PRIMARY KEY (`fID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `FilePermissionFileTypes`
--
ALTER TABLE `FilePermissionFileTypes`
  ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  ADD KEY `gID` (`gID`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `Files`
--
ALTER TABLE `Files`
  ADD PRIMARY KEY (`fID`,`uID`,`fslID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `fslID` (`fslID`),
  ADD KEY `ocID` (`ocID`),
  ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indexen voor tabel `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
  ADD PRIMARY KEY (`fID`);

--
-- Indexen voor tabel `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  ADD PRIMARY KEY (`fsfID`),
  ADD KEY `fID` (`fID`),
  ADD KEY `fsID` (`fsID`);

--
-- Indexen voor tabel `FileSetPermissionAssignments`
--
ALTER TABLE `FileSetPermissionAssignments`
  ADD PRIMARY KEY (`fsID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `FileSetPermissionFileTypeAccessList`
--
ALTER TABLE `FileSetPermissionFileTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `FileSetPermissionFileTypeAccessListCustom`
--
ALTER TABLE `FileSetPermissionFileTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`extension`),
  ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `FileSets`
--
ALTER TABLE `FileSets`
  ADD PRIMARY KEY (`fsID`),
  ADD KEY `uID` (`uID`,`fsType`,`fsName`),
  ADD KEY `fsName` (`fsName`),
  ADD KEY `fsType` (`fsType`);

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
  ADD PRIMARY KEY (`fslTypeID`),
  ADD UNIQUE KEY `fslTypeHandle` (`fslTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
  ADD PRIMARY KEY (`fvlID`),
  ADD KEY `fvID` (`fID`,`fvID`,`fvlID`);

--
-- Indexen voor tabel `FileVersions`
--
ALTER TABLE `FileVersions`
  ADD PRIMARY KEY (`fID`,`fvID`),
  ADD KEY `fvExtension` (`fvExtension`),
  ADD KEY `fvType` (`fvType`),
  ADD KEY `fvFilename` (`fvFilename`);

--
-- Indexen voor tabel `gaPage`
--
ALTER TABLE `gaPage`
  ADD PRIMARY KEY (`gaiID`),
  ADD KEY `cID` (`cID`);

--
-- Indexen voor tabel `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
  ADD PRIMARY KEY (`gcsID`),
  ADD KEY `gaID` (`gaID`),
  ADD KEY `gasID` (`gasID`);

--
-- Indexen voor tabel `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
  ADD PRIMARY KEY (`gasID`),
  ADD UNIQUE KEY `gasHandle` (`gasHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
  ADD PRIMARY KEY (`gafaID`),
  ADD KEY `gaiID` (`gaiID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indexen voor tabel `GatheringItems`
--
ALTER TABLE `GatheringItems`
  ADD PRIMARY KEY (`gaiID`),
  ADD UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  ADD KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  ADD KEY `gasID` (`gasID`);

--
-- Indexen voor tabel `GatheringItemSelectedTemplates`
--
ALTER TABLE `GatheringItemSelectedTemplates`
  ADD PRIMARY KEY (`gaiID`,`gatID`),
  ADD UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `gatID` (`gatID`);

--
-- Indexen voor tabel `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
  ADD PRIMARY KEY (`gfeID`),
  ADD KEY `gatID` (`gatID`),
  ADD KEY `feID` (`feID`,`gatID`);

--
-- Indexen voor tabel `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
  ADD PRIMARY KEY (`gatID`),
  ADD UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
  ADD PRIMARY KEY (`gatTypeID`),
  ADD UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `GatheringPermissionAssignments`
--
ALTER TABLE `GatheringPermissionAssignments`
  ADD PRIMARY KEY (`gaID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `Gatherings`
--
ALTER TABLE `Gatherings`
  ADD PRIMARY KEY (`gaID`),
  ADD KEY `gaDateLastUpdated` (`gaDateLastUpdated`);

--
-- Indexen voor tabel `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`gID`),
  ADD KEY `gName` (`gName`),
  ADD KEY `gBadgeFID` (`gBadgeFID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gPath` (`gPath`(255));

--
-- Indexen voor tabel `GroupSetGroups`
--
ALTER TABLE `GroupSetGroups`
  ADD PRIMARY KEY (`gID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexen voor tabel `GroupSets`
--
ALTER TABLE `GroupSets`
  ADD PRIMARY KEY (`gsID`),
  ADD KEY `gsName` (`gsName`),
  ADD KEY `pkgID` (`pkgID`,`gsID`);

--
-- Indexen voor tabel `Jobs`
--
ALTER TABLE `Jobs`
  ADD PRIMARY KEY (`jID`),
  ADD UNIQUE KEY `jHandle` (`jHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  ADD KEY `jDateLastRun` (`jDateLastRun`,`jID`);

--
-- Indexen voor tabel `JobSetJobs`
--
ALTER TABLE `JobSetJobs`
  ADD PRIMARY KEY (`jsID`,`jID`),
  ADD KEY `jID` (`jID`);

--
-- Indexen voor tabel `JobSets`
--
ALTER TABLE `JobSets`
  ADD PRIMARY KEY (`jsID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `jsName` (`jsName`);

--
-- Indexen voor tabel `JobsLog`
--
ALTER TABLE `JobsLog`
  ADD PRIMARY KEY (`jlID`),
  ADD KEY `jID` (`jID`);

--
-- Indexen voor tabel `Logs`
--
ALTER TABLE `Logs`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `channel` (`channel`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `MailImporters`
--
ALTER TABLE `MailImporters`
  ADD PRIMARY KEY (`miID`),
  ADD UNIQUE KEY `miHandle` (`miHandle`),
  ADD KEY `pkgID` (`pkgID`,`miID`);

--
-- Indexen voor tabel `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
  ADD PRIMARY KEY (`mvhID`),
  ADD UNIQUE KEY `mHash` (`mHash`),
  ADD KEY `miID` (`miID`);

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
  ADD PRIMARY KEY (`user_id`,`namespace`),
  ADD UNIQUE KEY `oauth_binding` (`binding`,`namespace`);

--
-- Indexen voor tabel `Packages`
--
ALTER TABLE `Packages`
  ADD PRIMARY KEY (`pkgID`),
  ADD UNIQUE KEY `pkgHandle` (`pkgHandle`);

--
-- Indexen voor tabel `PageFeeds`
--
ALTER TABLE `PageFeeds`
  ADD PRIMARY KEY (`pfID`),
  ADD UNIQUE KEY `pfHandle` (`pfHandle`);

--
-- Indexen voor tabel `PagePaths`
--
ALTER TABLE `PagePaths`
  ADD PRIMARY KEY (`ppID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `ppIsCanonical` (`ppIsCanonical`),
  ADD KEY `cPath` (`cPath`(255));

--
-- Indexen voor tabel `PagePermissionAssignments`
--
ALTER TABLE `PagePermissionAssignments`
  ADD PRIMARY KEY (`cID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `PagePermissionPageTypeAccessList`
--
ALTER TABLE `PagePermissionPageTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `PagePermissionPageTypeAccessListCustom`
--
ALTER TABLE `PagePermissionPageTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`ptID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexen voor tabel `PagePermissionPropertyAccessList`
--
ALTER TABLE `PagePermissionPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `PagePermissionPropertyAttributeAccessListCustom`
--
ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexen voor tabel `PagePermissionThemeAccessList`
--
ALTER TABLE `PagePermissionThemeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `PagePermissionThemeAccessListCustom`
--
ALTER TABLE `PagePermissionThemeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `pThemeID` (`pThemeID`);

--
-- Indexen voor tabel `Pages`
--
ALTER TABLE `Pages`
  ADD PRIMARY KEY (`cID`,`ptID`),
  ADD KEY `cParentID` (`cParentID`),
  ADD KEY `cIsActive` (`cID`,`cIsActive`),
  ADD KEY `cCheckedOutUID` (`cCheckedOutUID`),
  ADD KEY `uID` (`uID`,`cPointerID`),
  ADD KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  ADD KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  ADD KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`);

--
-- Indexen voor tabel `PageSearchIndex`
--
ALTER TABLE `PageSearchIndex`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cDateLastIndexed` (`cDateLastIndexed`),
  ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  ADD KEY `cRequiresReindex` (`cRequiresReindex`),
  ADD FULLTEXT KEY `cName` (`cName`);
ALTER TABLE `PageSearchIndex`
  ADD FULLTEXT KEY `cDescription` (`cDescription`);
ALTER TABLE `PageSearchIndex`
  ADD FULLTEXT KEY `content` (`content`);
ALTER TABLE `PageSearchIndex`
  ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indexen voor tabel `PageTemplates`
--
ALTER TABLE `PageTemplates`
  ADD PRIMARY KEY (`pTemplateID`),
  ADD UNIQUE KEY `pTemplateHandle` (`pTemplateHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PageThemeCustomStyles`
--
ALTER TABLE `PageThemeCustomStyles`
  ADD PRIMARY KEY (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexen voor tabel `PageThemes`
--
ALTER TABLE `PageThemes`
  ADD PRIMARY KEY (`pThemeID`),
  ADD UNIQUE KEY `ptHandle` (`pThemeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
  ADD PRIMARY KEY (`ptComposerControlTypeID`),
  ADD UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`);

--
-- Indexen voor tabel `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexen voor tabel `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
  ADD PRIMARY KEY (`ptComposerOutputBlockID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexen voor tabel `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  ADD PRIMARY KEY (`ptComposerOutputControlID`),
  ADD KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexen voor tabel `PageTypePageTemplateDefaultPages`
--
ALTER TABLE `PageTypePageTemplateDefaultPages`
  ADD PRIMARY KEY (`pTemplateID`,`ptID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `cID` (`cID`);

--
-- Indexen voor tabel `PageTypePageTemplates`
--
ALTER TABLE `PageTypePageTemplates`
  ADD PRIMARY KEY (`ptID`,`pTemplateID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexen voor tabel `PageTypePermissionAssignments`
--
ALTER TABLE `PageTypePermissionAssignments`
  ADD PRIMARY KEY (`ptID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexen voor tabel `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
  ADD PRIMARY KEY (`ptPublishTargetTypeID`),
  ADD KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PageTypes`
--
ALTER TABLE `PageTypes`
  ADD PRIMARY KEY (`ptID`),
  ADD UNIQUE KEY `ptHandle` (`ptHandle`),
  ADD KEY `pkgID` (`pkgID`,`ptID`);

--
-- Indexen voor tabel `PageWorkflowProgress`
--
ALTER TABLE `PageWorkflowProgress`
  ADD PRIMARY KEY (`cID`,`wpID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indexen voor tabel `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
  ADD PRIMARY KEY (`paID`);

--
-- Indexen voor tabel `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
  ADD PRIMARY KEY (`peID`),
  ADD KEY `petID` (`petID`);

--
-- Indexen voor tabel `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
  ADD PRIMARY KEY (`pegID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `gID` (`gID`);

--
-- Indexen voor tabel `PermissionAccessEntityGroupSets`
--
ALTER TABLE `PermissionAccessEntityGroupSets`
  ADD PRIMARY KEY (`peID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexen voor tabel `PermissionAccessEntityTypeCategories`
--
ALTER TABLE `PermissionAccessEntityTypeCategories`
  ADD PRIMARY KEY (`petID`,`pkCategoryID`),
  ADD KEY `pkCategoryID` (`pkCategoryID`);

--
-- Indexen voor tabel `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
  ADD PRIMARY KEY (`petID`),
  ADD UNIQUE KEY `petHandle` (`petHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PermissionAccessEntityUsers`
--
ALTER TABLE `PermissionAccessEntityUsers`
  ADD PRIMARY KEY (`peID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indexen voor tabel `PermissionAccessList`
--
ALTER TABLE `PermissionAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `accessType` (`accessType`),
  ADD KEY `peID` (`peID`),
  ADD KEY `peID_accessType` (`peID`,`accessType`),
  ADD KEY `pdID` (`pdID`),
  ADD KEY `permissionAccessDuration` (`paID`,`pdID`);

--
-- Indexen voor tabel `PermissionAccessWorkflows`
--
ALTER TABLE `PermissionAccessWorkflows`
  ADD PRIMARY KEY (`paID`,`wfID`),
  ADD KEY `wfID` (`wfID`);

--
-- Indexen voor tabel `PermissionAssignments`
--
ALTER TABLE `PermissionAssignments`
  ADD PRIMARY KEY (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexen voor tabel `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
  ADD PRIMARY KEY (`pdID`);

--
-- Indexen voor tabel `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
  ADD PRIMARY KEY (`pkCategoryID`),
  ADD UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  ADD PRIMARY KEY (`pkID`),
  ADD UNIQUE KEY `akHandle` (`pkHandle`),
  ADD KEY `pkCategoryID` (`pkCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `PileContents`
--
ALTER TABLE `PileContents`
  ADD PRIMARY KEY (`pcID`),
  ADD KEY `pID` (`pID`,`displayOrder`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `itemType` (`itemType`,`itemID`,`pID`);

--
-- Indexen voor tabel `Piles`
--
ALTER TABLE `Piles`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `uID` (`uID`,`name`);

--
-- Indexen voor tabel `QueueMessages`
--
ALTER TABLE `QueueMessages`
  ADD PRIMARY KEY (`message_id`),
  ADD UNIQUE KEY `message_handle` (`handle`),
  ADD KEY `message_queueid` (`queue_id`);

--
-- Indexen voor tabel `QueuePageDuplicationRelations`
--
ALTER TABLE `QueuePageDuplicationRelations`
  ADD PRIMARY KEY (`cID`,`originalCID`),
  ADD KEY `originalCID` (`originalCID`,`queue_name`);

--
-- Indexen voor tabel `Queues`
--
ALTER TABLE `Queues`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `queue_name` (`queue_name`);

--
-- Indexen voor tabel `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`sessionID`);

--
-- Indexen voor tabel `SignupRequests`
--
ALTER TABLE `SignupRequests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ipFrom` (`ipFrom`(32));

--
-- Indexen voor tabel `SocialLinks`
--
ALTER TABLE `SocialLinks`
  ADD PRIMARY KEY (`slID`),
  ADD UNIQUE KEY `ssHandle` (`ssHandle`);

--
-- Indexen voor tabel `Stacks`
--
ALTER TABLE `Stacks`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `stType` (`stType`),
  ADD KEY `stName` (`stName`),
  ADD KEY `cID` (`cID`);

--
-- Indexen voor tabel `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
  ADD PRIMARY KEY (`sccRecordID`);

--
-- Indexen voor tabel `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
  ADD PRIMARY KEY (`pssPresetID`),
  ADD KEY `issID` (`issID`);

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
  ADD PRIMARY KEY (`scvID`),
  ADD KEY `scvlID` (`scvlID`);

--
-- Indexen voor tabel `SystemAntispamLibraries`
--
ALTER TABLE `SystemAntispamLibraries`
  ADD PRIMARY KEY (`saslHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemCaptchaLibraries`
--
ALTER TABLE `SystemCaptchaLibraries`
  ADD PRIMARY KEY (`sclHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemContentEditorSnippets`
--
ALTER TABLE `SystemContentEditorSnippets`
  ADD PRIMARY KEY (`scsHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemDatabaseMigrations`
--
ALTER TABLE `SystemDatabaseMigrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexen voor tabel `SystemImageEditorComponents`
--
ALTER TABLE `SystemImageEditorComponents`
  ADD PRIMARY KEY (`scsID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemImageEditorControlSets`
--
ALTER TABLE `SystemImageEditorControlSets`
  ADD PRIMARY KEY (`scsID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemImageEditorFilters`
--
ALTER TABLE `SystemImageEditorFilters`
  ADD PRIMARY KEY (`scsID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `SystemImageEditorShapes`
--
ALTER TABLE `SystemImageEditorShapes`
  ADD PRIMARY KEY (`scsID`),
  ADD KEY `pkgID` (`pkgID`);

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
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `gID` (`gID`);

--
-- Indexen voor tabel `TreeNodePermissionAssignments`
--
ALTER TABLE `TreeNodePermissionAssignments`
  ADD PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexen voor tabel `TreeNodes`
--
ALTER TABLE `TreeNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `treeNodeParentID` (`treeNodeParentID`),
  ADD KEY `treeNodeTypeID` (`treeNodeTypeID`),
  ADD KEY `treeID` (`treeID`),
  ADD KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`);

--
-- Indexen voor tabel `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
  ADD PRIMARY KEY (`treeNodeTypeID`),
  ADD UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `Trees`
--
ALTER TABLE `Trees`
  ADD PRIMARY KEY (`treeID`),
  ADD KEY `treeTypeID` (`treeTypeID`);

--
-- Indexen voor tabel `TreeTopicNodes`
--
ALTER TABLE `TreeTopicNodes`
  ADD PRIMARY KEY (`treeNodeID`);

--
-- Indexen voor tabel `TreeTypes`
--
ALTER TABLE `TreeTypes`
  ADD PRIMARY KEY (`treeTypeID`),
  ADD UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexen voor tabel `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
  ADD PRIMARY KEY (`uID`,`akID`),
  ADD KEY `akID` (`akID`),
  ADD KEY `avID` (`avID`);

--
-- Indexen voor tabel `UserBannedIPs`
--
ALTER TABLE `UserBannedIPs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ipFrom` (`ipFrom`(32),`ipTo`(32));

--
-- Indexen voor tabel `UserGroups`
--
ALTER TABLE `UserGroups`
  ADD PRIMARY KEY (`uID`,`gID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `gID` (`gID`);

--
-- Indexen voor tabel `UserPermissionEditPropertyAccessList`
--
ALTER TABLE `UserPermissionEditPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexen voor tabel `UserPermissionEditPropertyAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexen voor tabel `UserPermissionViewAttributeAccessList`
--
ALTER TABLE `UserPermissionViewAttributeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexen voor tabel `UserPermissionViewAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionViewAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexen voor tabel `UserPointActions`
--
ALTER TABLE `UserPointActions`
  ADD PRIMARY KEY (`upaID`),
  ADD UNIQUE KEY `upaHandle` (`upaHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gBBadgeID` (`gBadgeID`);

--
-- Indexen voor tabel `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
  ADD PRIMARY KEY (`upID`),
  ADD KEY `upuID` (`upuID`),
  ADD KEY `upaID` (`upaID`);

--
-- Indexen voor tabel `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`);

--
-- Indexen voor tabel `UserPrivateMessagesTo`
--
ALTER TABLE `UserPrivateMessagesTo`
  ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `uAuthorID` (`uAuthorID`),
  ADD KEY `msgFolderID` (`msgMailboxID`),
  ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indexen voor tabel `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`uID`),
  ADD UNIQUE KEY `uName` (`uName`),
  ADD KEY `uEmail` (`uEmail`);

--
-- Indexen voor tabel `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
  ADD PRIMARY KEY (`uID`);

--
-- Indexen voor tabel `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
  ADD PRIMARY KEY (`uvhID`),
  ADD KEY `uID` (`uID`,`type`),
  ADD KEY `uHash` (`uHash`,`type`),
  ADD KEY `uDateGenerated` (`uDateGenerated`,`type`);

--
-- Indexen voor tabel `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `wpCategoryID` (`wpCategoryID`),
  ADD KEY `wfID` (`wfID`),
  ADD KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`);

--
-- Indexen voor tabel `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  ADD PRIMARY KEY (`wpCategoryID`),
  ADD UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexen voor tabel `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  ADD PRIMARY KEY (`wphID`),
  ADD KEY `wpID` (`wpID`,`timestamp`);

--
-- Indexen voor tabel `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  ADD PRIMARY KEY (`wrID`);

--
-- Indexen voor tabel `Workflows`
--
ALTER TABLE `Workflows`
  ADD PRIMARY KEY (`wfID`),
  ADD UNIQUE KEY `wfName` (`wfName`),
  ADD KEY `wftID` (`wftID`,`wfID`);

--
-- Indexen voor tabel `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
  ADD PRIMARY KEY (`wftID`),
  ADD UNIQUE KEY `wftHandle` (`wftHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
  MODIFY `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  MODIFY `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  MODIFY `arLayoutPresetID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
  MODIFY `arLayoutID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
  MODIFY `arLayoutColumnID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `Areas`
--
ALTER TABLE `Areas`
  MODIFY `arID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=152;
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
  MODIFY `avID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=139;
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
  MODIFY `brID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT voor een tabel `Blocks`
--
ALTER TABLE `Blocks`
  MODIFY `bID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
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
  MODIFY `cID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=215;
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
  MODIFY `faID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
  MODIFY `fID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT voor een tabel `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  MODIFY `fsfID` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `FileSets`
--
ALTER TABLE `FileSets`
  MODIFY `fsID` int(10) unsigned NOT NULL AUTO_INCREMENT;
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
  MODIFY `fvlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
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
  MODIFY `ppID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT voor een tabel `PageTemplates`
--
ALTER TABLE `PageTemplates`
  MODIFY `pTemplateID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `ptComposerOutputBlockID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  MODIFY `ptComposerOutputControlID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `paID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
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
  MODIFY `pkCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT voor een tabel `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  MODIFY `pkID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=104;
--
-- AUTO_INCREMENT voor een tabel `PileContents`
--
ALTER TABLE `PileContents`
  MODIFY `pcID` int(10) unsigned NOT NULL AUTO_INCREMENT;
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
  MODIFY `stID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=71;
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
  MODIFY `issID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `wpID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT voor een tabel `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  MODIFY `wpCategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT voor een tabel `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  MODIFY `wphID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT voor een tabel `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  MODIFY `wrID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
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
