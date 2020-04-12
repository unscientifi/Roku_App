-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 12, 2020 at 02:21 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

CREATE TABLE `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio`
--

CREATE TABLE `tbl_audio` (
  `audio_id` int(11) NOT NULL,
  `audio_name` varchar(150) NOT NULL,
  `audio_artist` varchar(125) NOT NULL,
  `audio_year` varchar(10) NOT NULL,
  `audio_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `audio_source` varchar(100) NOT NULL DEFAULT 'trailer_default.jpg',
  `audio_rating` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audio`
--

INSERT INTO `tbl_audio` (`audio_id`, `audio_name`, `audio_artist`, `audio_year`, `audio_cover`, `audio_source`, `audio_rating`) VALUES
(1, 'Don\'t Be Cruel', 'Elvis Presley', '1956', '50_elvis.png', 'elvis.mp3', 'Kid Friendly'),
(2, 'Wake Up, Little Susie', 'The Everly Brothers', '1957', '50_everlybrothers.png', 'everly.mp3', 'Kid Friendly'),
(3, 'How High the Moon', 'Les Paul & Mary Ford', '1953', '50_paulmary.png', 'paulmary.mp3', 'Restricted'),
(4, 'Smoke Gets in Your Eyes', 'The Platters', '1959', '50_platters.png', 'platters.mp3', 'Restricted'),
(5, 'The House of the Rising Sun', 'The Animals', '1964', '60_animals.png', 'animals.mp3', 'Kid Friendly'),
(6, 'She Loves You', 'The Beatles', '1963', '60_beatles.png', 'beatles.mp3', 'Kid Friendly'),
(7, 'Please Mr. Postman', 'The Marvelettes', '1961', '60_marvelettes.png', 'marvelettes.mp3', 'Kid Friendly'),
(8, 'I Got You Babe', 'Sonny & Cher', '1965', '60_sonnycher.png', 'sonnycher.mp3', 'Kid Friendly'),
(9, 'Let\'s Stay Together', 'Al Green', '1971', '70_algreen.png', 'algreen.mp3', 'Restricted'),
(10, 'Stairway to Heaven', 'Led Zeppelin', '1971', '70_ledzeppelin.png', 'ledzep.mp3', 'Kid Friendly'),
(11, 'Don\'t Stop \'Til You Get Enough', 'Michael Jackson', '1979', '70_mj.png', 'dontstop.mp3', 'Kid Friendly'),
(12, 'My Sharona', 'The Knack', '1979', '70_theknack.png', 'knack.mp3', 'Restricted'),
(13, 'All Night Long (All Night)', 'Lionel Richie', '1983', '80_allnightlong.png', 'lionel.mp3', 'Restricted'),
(14, 'Livin\' on a Prayer', 'Bon Jovi', '1986', '80_bonjovi.png', 'bonjovi.mp3', 'Kid Friendly'),
(15, 'Don\'t You (Forget About Me)', 'Simple Minds', '1985', '80_simpleminds.png', 'simpleminds.mp3', 'Kid Friendly'),
(16, 'Every Breath you Take', 'The Police', '1983', '80_thepolice.png', 'police.mp3', 'Kid Friendly'),
(17, 'Genie in a Bottle', 'Christina Aguilera', '1999', '90_christina.png', 'genie.mp3', 'Kid Friendly'),
(18, 'Creep', 'Radiohead', '1992', '90_radiohead.png', 'creep.mp3', 'Restricted'),
(19, 'Wannabe', 'The Spice Girls', '1996', '90_spicegirls.png', 'spicegirls.mp3', 'Kid Friendly'),
(20, 'I Will Always Love You', 'Whitney Houston', '1992', '90_whitney.png', 'whitney.mp3', 'Kid Friendly');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_audio_year`
--

CREATE TABLE `tbl_audio_year` (
  `audio_year_id` smallint(6) NOT NULL,
  `audio_id` smallint(6) NOT NULL,
  `year_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_audio_year`
--

INSERT INTO `tbl_audio_year` (`audio_year_id`, `audio_id`, `year_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 4),
(14, 14, 4),
(15, 15, 4),
(16, 16, 4),
(17, 17, 5),
(18, 18, 5),
(19, 19, 5),
(20, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cast`
--

CREATE TABLE `tbl_cast` (
  `cast_id` mediumint(8) UNSIGNED NOT NULL,
  `cast_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cast`
--

INSERT INTO `tbl_cast` (`cast_id`, `cast_name`) VALUES
(36, 'Amy Adams'),
(26, 'Andrew Garfield'),
(8, 'Aneurin Barnard'),
(42, 'Anna Kendrick'),
(14, 'Boyd Holbrook'),
(5, 'Bradley Cooper'),
(1, 'Chris Pratt'),
(19, 'Colm Hill'),
(13, 'Dafne Keen'),
(7, 'Damien Bonnard'),
(22, 'Dan Stevens'),
(30, 'Darcy Bryce'),
(3, 'Dave Bautista'),
(33, 'Ed Skrein'),
(21, 'Emma Watson'),
(6, 'Fionn Whitehead'),
(38, 'Forest Whitaker'),
(46, 'Harrison Ford'),
(11, 'Hugh Jackman'),
(28, 'Jacob Warner'),
(10, 'James Bloor'),
(37, 'Jeremy Renner'),
(45, 'Joseph Gordon-Levitt'),
(24, 'Josh Gad'),
(32, 'Karan Soni'),
(20, 'Kathryn Kirkpatrick'),
(25, 'Kevin Kline'),
(9, 'Lee Armstrong'),
(43, 'Leonardo DiCaprio'),
(23, 'Luke Evans'),
(40, 'Mark OBrien'),
(34, 'Michael Benyaer'),
(18, 'Michael Mitton'),
(39, 'Michael Stuhlbarg'),
(47, 'Miles Teller'),
(29, 'Milo Gibson'),
(12, 'Patrick Stewart'),
(27, 'Richard Pyros'),
(31, 'Ryan Reynolds'),
(52, 'Sandra Bullock'),
(44, 'Saoirse Ronan'),
(17, 'Sheena Kamal'),
(35, 'Stefan Kapicic'),
(15, 'Stephen Merchant'),
(53, 'Suraj Sharma'),
(16, 'Tilda Swinton'),
(41, 'Tom Costello'),
(4, 'Vin Diesel'),
(2, 'Zoe Saldana');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comments_id` mediumint(8) UNSIGNED NOT NULL,
  `comments_auth` varchar(125) NOT NULL,
  `comments_copy` text NOT NULL,
  `comments_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `country_id` smallint(3) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `country_name`) VALUES
(1, 'Albania'),
(2, 'Algeria'),
(3, 'Andorra'),
(4, 'Angola'),
(5, 'Anguilla'),
(6, 'Antarctica'),
(7, 'Antigua'),
(8, 'Antilles'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Aruba'),
(12, 'Australia'),
(13, 'Austria'),
(14, 'Azerbaijan'),
(15, 'Bahamas'),
(16, 'Bangladesh'),
(17, 'Barbados'),
(18, 'Belarus'),
(19, 'Belgium'),
(20, 'Belize'),
(21, 'Benin'),
(22, 'Bermuda'),
(23, 'Bhutan'),
(24, 'Bolivia'),
(25, 'Bosnia'),
(26, 'Botswana'),
(27, 'Brazil'),
(28, 'Brunei'),
(29, 'Bulgaria'),
(30, 'Burkina Faso'),
(31, 'Burundi'),
(32, 'Cambodia'),
(33, 'Cameroon'),
(34, 'Canada'),
(35, 'Cape Verde'),
(36, 'Cayman Islands'),
(37, 'Central Africa'),
(38, 'Chad'),
(39, 'Chile'),
(40, 'China'),
(41, 'Colombia'),
(42, 'Comoros'),
(43, 'Congo'),
(44, 'Cook Islands'),
(45, 'Costa Rica'),
(46, 'Cote D\'Ivoire'),
(47, 'Croatia'),
(48, 'Cuba'),
(49, 'Cyprus'),
(50, 'Czech Republic'),
(51, 'Denmark'),
(52, 'Djibouti'),
(53, 'Dominica'),
(54, 'Dominican Rep.'),
(55, 'Ecuador'),
(56, 'Egypt'),
(57, 'El Salvador'),
(58, 'Eritrea'),
(59, 'Estonia'),
(60, 'Ethiopia'),
(61, 'Fiji'),
(62, 'Finland'),
(63, 'Falkland Islands'),
(64, 'France'),
(65, 'Gabon'),
(66, 'Gambia'),
(67, 'Georgia'),
(68, 'Germany'),
(69, 'Ghana'),
(70, 'Gibraltar'),
(71, 'Greece'),
(72, 'Greenland'),
(73, 'Grenada'),
(74, 'Guam'),
(75, 'Guatemala'),
(76, 'Guiana'),
(77, 'Guinea'),
(78, 'Guyana'),
(79, 'Haiti'),
(80, 'Hondoras'),
(81, 'Hong Kong'),
(82, 'Hungary'),
(83, 'Iceland'),
(84, 'India'),
(85, 'Indonesia'),
(86, 'Iran'),
(87, 'Iraq'),
(88, 'Ireland'),
(89, 'Israel'),
(90, 'Italy'),
(91, 'Jamaica'),
(92, 'Japan'),
(93, 'Jordan'),
(94, 'Kazakhstan'),
(95, 'Kenya'),
(96, 'Kiribati'),
(97, 'Korea'),
(98, 'Kyrgyzstan'),
(99, 'Lao'),
(100, 'Latvia'),
(101, 'Lesotho'),
(102, 'Liberia'),
(103, 'Liechtenstein'),
(104, 'Lithuania'),
(105, 'Luxembourg'),
(106, 'Macau'),
(107, 'Macedonia'),
(108, 'Madagascar'),
(109, 'Malawi'),
(110, 'Malaysia'),
(111, 'Maldives'),
(112, 'Mali'),
(113, 'Malta'),
(114, 'Marshal Islands'),
(115, 'Martinique'),
(116, 'Mauritania'),
(117, 'Mauritius'),
(118, 'Mayotte'),
(119, 'Mexico'),
(120, 'Micronesia'),
(121, 'Moldova'),
(122, 'Monaco'),
(123, 'Mongolia'),
(124, 'Montserrat'),
(125, 'Morocco'),
(126, 'Mozambique'),
(127, 'Myanmar'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Netherlands'),
(132, 'New Caledonia'),
(133, 'New Guinea'),
(134, 'New Zealand'),
(135, 'Nicaragua'),
(136, 'Nigeria'),
(137, 'Niue'),
(138, 'Norfolk Island'),
(139, 'Norway'),
(140, 'Palau'),
(141, 'Panama'),
(142, 'Paraguay'),
(143, 'Peru'),
(144, 'Puerto'),
(145, 'Philippines'),
(146, 'Poland'),
(147, 'Polynesia'),
(148, 'Portugal'),
(149, 'Romania'),
(150, 'Russia'),
(151, 'Rwanda'),
(152, 'Saint Lucia'),
(153, 'Samoa'),
(154, 'San Marino'),
(155, 'Senegal'),
(156, 'Seychelles'),
(157, 'Sierra Leone'),
(158, 'Singapore'),
(159, 'Slovakia'),
(160, 'Slovenia'),
(161, 'Somalia'),
(162, 'South Africa'),
(163, 'Spain'),
(164, 'Sri Lanka'),
(165, 'St. Helena'),
(166, 'Sudan'),
(167, 'Suriname'),
(168, 'Swaziland'),
(169, 'Sweden'),
(170, 'Switzerland'),
(171, 'Taiwan'),
(172, 'Tajikistan'),
(173, 'Tanzania'),
(174, 'Thailand'),
(175, 'Togo'),
(176, 'Tokelau'),
(177, 'Tonga'),
(178, 'Trinidad'),
(179, 'Tunisia'),
(180, 'Turkey'),
(181, 'Uganda'),
(182, 'Ukraine'),
(183, 'United Kingdom'),
(184, 'United States'),
(185, 'Uruguay'),
(186, 'Uzbekistan'),
(187, 'Vanuatu'),
(188, 'Venezuela'),
(189, 'Vietnam'),
(190, 'Virgin Islands'),
(191, 'Yugoslavia'),
(192, 'Zaire'),
(193, 'Zambia'),
(194, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

CREATE TABLE `tbl_director` (
  `director_id` smallint(5) UNSIGNED NOT NULL,
  `director_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`director_id`, `director_name`) VALUES
(1, 'James Gunn'),
(2, 'Christopher Nolan'),
(3, 'James Mangold'),
(4, 'Joon-ho Bong'),
(5, 'Bill Condon'),
(6, 'Mel Gibson'),
(7, 'Tim Miller'),
(8, 'Denis Villeneuve '),
(9, 'Dexter Fletcher'),
(10, 'Mike Mitchell'),
(11, 'Walt Dohrn'),
(12, 'Alejandro Gonzalez Inarritu'),
(13, 'John Crowley '),
(14, 'Robert Zemeckis'),
(15, 'Florian Gallenberger '),
(16, 'J.J. Abrams'),
(17, 'Damien Chazelle'),
(18, 'Joseph Gordon-Levitt '),
(19, 'Alfonso Cuaron'),
(20, 'Ang Lee'),
(21, 'David O. Russell');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `lang_id` smallint(5) UNSIGNED NOT NULL,
  `lang_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`lang_id`, `lang_name`) VALUES
(1, 'Abkhaz'),
(2, 'Afar'),
(3, 'Afrikaans'),
(4, 'Akan'),
(5, 'Albanian'),
(6, 'Amharic'),
(7, 'Arabic'),
(8, 'Aragonese'),
(9, 'Armenian'),
(10, 'Assamese'),
(11, 'Avaric'),
(12, 'Avestan'),
(13, 'Aymara'),
(14, 'Azerbaijani'),
(15, 'Bambara'),
(16, 'Bashkir'),
(17, 'Basque'),
(18, 'Belarusian'),
(19, 'Bengali'),
(20, 'Bihari'),
(21, 'Bislama'),
(22, 'Bosnian'),
(23, 'Breton'),
(24, 'Bulgarian'),
(25, 'Burmese'),
(26, 'Catalan'),
(27, 'Valencian'),
(28, 'Chamorro'),
(29, 'Chechen'),
(30, 'Chichewa'),
(31, 'Chewa'),
(32, 'Nyanja'),
(33, 'Chinese'),
(34, 'Chuvash'),
(35, 'Cornish'),
(36, 'Corsican'),
(37, 'Cree'),
(38, 'Croatian'),
(39, 'Czech'),
(40, 'Danish'),
(41, 'Divehi'),
(42, 'Dhivehi'),
(43, 'Maldivian'),
(44, 'Dutch'),
(45, 'English'),
(46, 'Esperanto'),
(47, 'Estonian'),
(48, 'Ewe'),
(49, 'Faroese'),
(50, 'Fijian'),
(51, 'Finnish'),
(52, 'French'),
(53, 'Fula'),
(54, 'Fulah'),
(55, 'Pulaar'),
(56, 'Pular'),
(57, 'Galician'),
(58, 'Georgian'),
(59, 'German'),
(60, 'Greek'),
(61, 'Guaraní'),
(62, 'Gujarati'),
(63, 'Haitian'),
(64, 'Haitian Creole'),
(65, 'Hausa'),
(66, 'Hebrew'),
(67, 'Herero'),
(68, 'Hindi'),
(69, 'Hiri Motu'),
(70, 'Hungarian'),
(71, 'Interlingua'),
(72, 'Indonesian'),
(73, 'Interlingue'),
(74, 'Irish'),
(75, 'Igbo'),
(76, 'Inupiaq'),
(77, 'Ido'),
(78, 'Icelandic'),
(79, 'Italian'),
(80, 'Inuktitut'),
(81, 'Japanese'),
(82, 'Javanese'),
(83, 'Kalaallisut'),
(84, 'Greenlandic'),
(85, 'Kannada'),
(86, 'Kanuri'),
(87, 'Kashmiri'),
(88, 'Kazakh'),
(89, 'Khmer'),
(90, 'Kikuyu'),
(91, 'Gikuyu'),
(92, 'Kinyarwanda'),
(93, 'Kirghiz'),
(94, 'Kyrgyz'),
(95, 'Komi'),
(96, 'Kongo'),
(97, 'Korean'),
(98, 'Kurdish'),
(99, 'Kwanyama'),
(100, 'Kuanyama'),
(101, 'Latin'),
(102, 'Luxembourgish'),
(103, 'Letzeburgesch'),
(104, 'Luganda'),
(105, 'Limburgish'),
(106, 'Limburgan'),
(107, 'Limburger'),
(108, 'Lingala'),
(109, 'Lao'),
(110, 'Lithuanian'),
(111, 'Luba-Katanga'),
(112, 'Latvian'),
(113, 'Manx'),
(114, 'Macedonian'),
(115, 'Malagasy'),
(116, 'Malay'),
(117, 'Malayalam'),
(118, 'Maltese'),
(119, 'Maori'),
(120, 'Marathi'),
(121, 'Marshallese'),
(122, 'Mongolian'),
(123, 'Nauru'),
(124, 'Navajo'),
(125, 'Navaho'),
(126, 'Norwegian Bokmal'),
(127, 'North Ndebele'),
(128, 'Nepali'),
(129, 'Ndonga'),
(130, 'Norwegian Nynorsk'),
(131, 'Norwegian'),
(132, 'Nuosu'),
(133, 'South Ndebele'),
(134, 'Occitan'),
(135, 'Ojibwe'),
(136, 'Ojibwa'),
(137, 'Old Church Slavonic'),
(138, 'Church Slavic'),
(139, 'Church Slavonic'),
(140, 'Old Bulgarian'),
(141, 'Old Slavonic'),
(142, 'Oromo'),
(143, 'Oriya'),
(144, 'Ossetian'),
(145, 'Ossetic'),
(146, 'Panjabi'),
(147, 'Punjabi'),
(148, 'Pali'),
(149, 'Persian'),
(150, 'Polish'),
(151, 'Pashto'),
(152, 'Pushto'),
(153, 'Portuguese'),
(154, 'Quechua'),
(155, 'Romansh'),
(156, 'Kirundi'),
(157, 'Romanian'),
(158, 'Moldavian'),
(159, 'Moldovan'),
(160, 'Russian'),
(161, 'Sanskrit'),
(162, 'Sardinian'),
(163, 'Sindhi'),
(164, 'Northern Sami'),
(165, 'Samoan'),
(166, 'Sango'),
(167, 'Serbian'),
(168, 'Scottish Gaelic'),
(169, 'Gaelic'),
(170, 'Shona'),
(171, 'Sinhala'),
(172, 'Sinhalese'),
(173, 'Slovak'),
(174, 'Slovene'),
(175, 'Somali'),
(176, 'Southern Sotho'),
(177, 'Spanish'),
(178, 'Castilian'),
(179, 'Sundanese'),
(180, 'Swahili'),
(181, 'Swati'),
(182, 'Swedish'),
(183, 'Tamil'),
(184, 'Telugu'),
(185, 'Tajik'),
(186, 'Thai'),
(187, 'Tigrinya'),
(188, 'Tibetan Standard'),
(189, 'Tibetan'),
(190, 'Turkmen'),
(191, 'Tagalog'),
(192, 'Tswana'),
(193, 'Tonga'),
(194, 'Turkish'),
(195, 'Tsonga'),
(196, 'Tatar'),
(197, 'Twi'),
(198, 'Tahitian'),
(199, 'Uighur'),
(200, 'Uyghur'),
(201, 'Ukrainian'),
(202, 'Urdu'),
(203, 'Uzbek'),
(204, 'Venda'),
(205, 'Vietnamese'),
(206, 'Volapuk'),
(207, 'Walloon'),
(208, 'Welsh'),
(209, 'Wolof'),
(210, 'Western Frisian'),
(211, 'Xhosa'),
(212, 'Yiddish'),
(213, 'Yoruba'),
(214, 'Zhuang'),
(215, 'Chuang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_rating` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_storyline`, `movies_trailer`, `movies_rating`) VALUES
(1, '50_rearwindow.jpg', 'Rear Window', '1954', 'A wheelchair bound photographer (James Stewart) spies on his neighbours from his apartment window and becomes convinced one of them has committed murder.', 'https://www.youtube.com/embed/m01YktiEZCw', 'PG'),
(2, '50_singinrain.jpg', 'Singin\' in the Rain', '1952', '1927 Hollywood. Monumental Pictures\' biggest stars, glamorous on-screen couple Lina Lamont and Don Lockwood, are also an off-screen couple if the trade papers and gossip columns are to be believed. Both perpetuate the public perception if only to please their adoring fans and bring people into the movie theaters.', 'https://www.youtube.com/embed/5_EVHeNEIJY', 'Family'),
(3, '50_vertigo.jpg', 'Vertigo', '1958', 'A San Francisco detective (James Stewart) suffering from acrophobia investigates the strange activities of an old friend\'s wife, all the while becoming dangerously obsessed with her.', 'https://www.youtube.com/embed/Z5jvQwwHQNY', 'PG'),
(4, '60_breakfast.jpg', 'Breakfast at Tiffany\'s', '1961', 'Fred (George Peppard) hears Holly (Audrey Hepburn) singing on the fire escape below his apartment and goes out to listen.', 'https://www.youtube.com/embed/uirBWk-qd9A', 'Not Rated'),
(5, '50_rashomon.jpg', 'Rashomon', '1950', 'Brimming with action while incisively examining the nature of truth, \"Rashomon\" is perhaps the finest film ever to investigate the philosophy of justice. Through an ingenious use of camera and flashbacks, Kurosawa reveals the complexities of human nature as four people recount different versions of the story of a man\'s murder and the rape of his wife.', 'https://www.youtube.com/embed/Zqoyl2p8_lw', 'Not Rated'),
(6, '60_drstrangelove.jpg', 'Dr. Strange Love', '1964', 'An insane general triggers a path to nuclear holocaust that a war room full of politicians and generals frantically tries to stop.', 'https://www.youtube.com/embed/jPU1AYTxwg4', 'PG'),
(7, '60_psycho.jpg', 'Psycho', '1960', 'A Phoenix secretary steals $40,000 from her employer\'s client, goes on the run and checks into a remote motel run by a young man under the domination of his mother.', 'https://www.youtube.com/embed/DTJQfFQ40lI', 'R'),
(8, '60_rosemary.jpg', 'Rosemary\'s Baby', '1968', 'A young couple moves in to an apartment only to be surrounded by peculiar neighbors and occurrences. When the wife becomes mysteriously pregnant, paranoia over the safety of her unborn child begins to control her life.', 'https://www.youtube.com/embed/BjpA6IH_Skc', 'R'),
(9, '70_closeencounters.jpg', 'Close Encounters of the Third Kind', '1977', 'After an accidental encounter with otherworldly vessels, an ordinary man follows a series of psychic clues to the first scheduled meeting between representatives of Earth and visitors from the cosmos.', 'https://www.youtube.com/embed/XrgC0ut2De0', 'PG'),
(10, '70_frenchconnection.jpg', 'The French Connection', '1971', 'A pair of NYC cops in the Narcotics Bureau stumble onto a drug smuggling job with a French connection.', 'https://www.youtube.com/embed/ncWxtpXn3gA', 'R'),
(11, '70_jaws.jpg', 'Jaws', '1975', 'Directed by Steven Spielberg and starring Roy Scheider Robert Shaw Richard Dreyfuss Lorraine Gary and Murray Hamilton An insatiable great white shark terrorizes the townspeople of Amity Island, The police chief, an oceanographer and a grizzled shark hunter seek to destroy the bloodthirsty beast.', 'https://www.youtube.com/embed/U1fu_sA7XhE', 'PG'),
(12, '70_taxi.jpg', 'Taxi Driver', '1976', 'Paul Schrader\'s gritty screenplay depicts the ever-deepening alienation of Vietnam Veteran Travis Bickle (Robert De Niro in a tour-de-force performance), a psychotic cab driver who obsessively cruises the mean streets of Manhattan.', 'https://www.youtube.com/embed/UUxD4-dEzn0', 'R'),
(13, '80_back2future.jpg', 'Back to the Future', '1985', 'A teenager is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.', 'https://www.youtube.com/embed/qvsgGtivCgs', 'Family'),
(14, '80_et.jpg', 'E.T. the Extra-Terrestrial', '1982', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home-world.', 'https://www.youtube.com/embed/qYAETtIIClk', 'Family'),
(15, '80_ghostbusters.jpg', 'Ghostbusters', '1984', 'Three former parapsychology professors set up shop as a unique ghost removal service.', 'https://www.youtube.com/embed/6hDkhw5Wkas', 'PG'),
(16, '80_princessbride.jpg', 'The Princess Bride', '1987', 'In this enchantingly cracked fairy tale, the beautiful Princess Buttercup and the dashing Westley must overcome staggering odds to find happiness amid six-fingered swordsmen, murderous princes, Sicilians and rodents of unusual size. But even death can\'t stop these true lovebirds from triumphing.', 'https://www.youtube.com/embed/O3CIXEAjcc8', 'Family'),
(17, '90_homealone.jpg', 'Home Alone', '1990', 'When bratty 8-year-old Kevin McCallister (Macaulay Culkin) acts out the night before a family trip to Paris, his mother (Catherine O\'Hara) makes him sleep in the attic. After the McCallisters mistakenly leave for the airport without Kevin, he awakens to an empty house and assumes his wish to have no family has come true.', 'https://www.youtube.com/embed/jEDaVHmw7r4', 'Family'),
(18, '90_pulpfiction.jpg', 'Pulp Fiction', '1994', 'Hit men, gangsters and robbers converge in Quentin Tarantino\'s violent tale of revenge. Stars John Travolta Samuel L. Jackson Bruce Willis and Uma Thurman', 'https://www.youtube.com/embed/s7EdQ4FqbhY', 'R'),
(19, '90_silencelambs.jpg', 'The Silence of the Lambs', '1991', 'FBI trainee Clarice Starling ventures into a maximum-security asylum to pick the diseased brain of Hannibal Lecter, a psychiatrist turned homicidal cannibal', 'https://www.youtube.com/embed/W6Mm8Sbe__o', 'R'),
(20, '90_titanic.jpg', 'Titanic', '1997', 'Leonardo DiCaprio and Oscar-nominatee Kate Winslet light up the screen as Jack and Rose, the young lovers who find one another on the maiden voyage of the \"unsinkable\" R.M.S. Titanic.', 'https://www.youtube.com/embed/2e-eXJ6HgkQ', 'PG-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_cast`
--

CREATE TABLE `tbl_mov_cast` (
  `mov_cast_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `cast_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_cast`
--

INSERT INTO `tbl_mov_cast` (`mov_cast_id`, `movies_id`, `cast_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35),
(36, 8, 36),
(37, 8, 37),
(38, 8, 38),
(39, 8, 39),
(40, 8, 40),
(41, 9, 41),
(42, 10, 42),
(43, 11, 43),
(44, 12, 44),
(45, 13, 45),
(46, 14, 21),
(47, 15, 46),
(48, 16, 47),
(49, 17, 1),
(50, 18, 45),
(51, 19, 52),
(52, 20, 53),
(53, 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_country`
--

CREATE TABLE `tbl_mov_country` (
  `mov_country_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `country_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_country`
--

INSERT INTO `tbl_mov_country` (`mov_country_id`, `movies_id`, `country_id`) VALUES
(1, 1, 34),
(2, 1, 134),
(3, 1, 184),
(4, 2, 184),
(5, 2, 183),
(6, 2, 131),
(7, 2, 64),
(8, 3, 12),
(9, 3, 34),
(10, 3, 184),
(11, 4, 184),
(12, 4, 97),
(13, 5, 183),
(14, 5, 184),
(15, 6, 184),
(16, 6, 12),
(17, 7, 184),
(18, 8, 184),
(19, 9, 183),
(20, 9, 184),
(21, 9, 68),
(22, 10, 184),
(23, 11, 184),
(24, 11, 81),
(25, 11, 171);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_director`
--

CREATE TABLE `tbl_mov_director` (
  `mov_director_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `director_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_director`
--

INSERT INTO `tbl_mov_director` (`mov_director_id`, `movies_id`, `director_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 10, 11),
(12, 11, 12),
(13, 12, 13),
(14, 13, 14),
(15, 14, 15),
(16, 15, 16),
(17, 16, 17),
(18, 17, 1),
(19, 18, 19),
(20, 19, 20),
(21, 20, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_lang`
--

CREATE TABLE `tbl_mov_lang` (
  `mov_lang_id` smallint(5) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `language_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_lang`
--

INSERT INTO `tbl_mov_lang` (`mov_lang_id`, `movies_id`, `language_id`) VALUES
(1, 1, 45),
(2, 2, 45),
(3, 2, 52),
(4, 2, 59),
(5, 3, 45),
(6, 3, 177),
(7, 4, 45),
(8, 4, 177),
(9, 4, 97),
(10, 5, 45),
(11, 6, 45),
(12, 6, 81),
(13, 7, 45),
(14, 8, 45),
(15, 8, 33),
(16, 8, 160),
(17, 9, 45),
(18, 9, 126),
(19, 9, 59),
(20, 10, 45),
(21, 11, 45),
(22, 11, 52);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_studio`
--

CREATE TABLE `tbl_mov_studio` (
  `mov_studio_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `studio_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_studio`
--

INSERT INTO `tbl_mov_studio` (`mov_studio_id`, `movies_id`, `studio_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 1),
(18, 18, 17),
(19, 19, 18),
(20, 20, 19),
(21, 21, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_year`
--

CREATE TABLE `tbl_mov_year` (
  `movie_year_id` smallint(6) NOT NULL,
  `movies_id` smallint(6) NOT NULL,
  `year_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_year`
--

INSERT INTO `tbl_mov_year` (`movie_year_id`, `movies_id`, `year_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 4),
(14, 14, 4),
(15, 15, 4),
(16, 16, 4),
(17, 17, 5),
(18, 18, 5),
(19, 19, 5),
(20, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_studio`
--

CREATE TABLE `tbl_studio` (
  `studio_id` smallint(5) UNSIGNED NOT NULL,
  `studio_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_studio`
--

INSERT INTO `tbl_studio` (`studio_id`, `studio_name`) VALUES
(1, 'Marvel Studios'),
(2, 'Syncopy'),
(3, 'Donners Company'),
(4, 'Kate Street Picture Company'),
(5, 'Mandeville Films'),
(6, 'Cross Creek Pictures'),
(7, 'Twentieth Century Fox Film Corporation'),
(8, 'Lava Bear Films'),
(9, 'Hurwitz Creative'),
(10, 'DreamWorks Animation'),
(11, 'Regency Enterprises'),
(12, 'Wildgaze Films'),
(13, 'Sony Pictures Entertainment (SPE)'),
(14, 'Majestic Filmproduktion'),
(15, 'Lucasfilm'),
(16, 'Bold Films'),
(17, 'Voltage Pictures'),
(18, 'Warner Bros.'),
(19, 'Fox 2000 Pictures'),
(20, 'Weinstein Company');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` int(11) NOT NULL,
  `tv_name` varchar(100) NOT NULL,
  `tv_year` varchar(10) NOT NULL,
  `tv_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `tv_storyline` text NOT NULL,
  `tv_trailer` varchar(150) NOT NULL DEFAULT 'trailer_default.jpg',
  `tv_rating` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_name`, `tv_year`, `tv_cover`, `tv_storyline`, `tv_trailer`, `tv_rating`) VALUES
(1, 'Leave it to Beaver', '1957', '50_beaver.jpg', 'Theodore, a young and inquisitive boy, lives with his parents June and Ward Cleaver and brother Wally. His father gives him advice when he gets into trouble at school, home and in the neighbourhood.', 'https://www.youtube.com/embed/sgtiPOk83Ek', 'Family'),
(2, 'I Love Lucy', '1951', '50_lucy.jpg', 'Naive and ambitious but lacking the skill, Lucy\'s relentless efforts to get into showbiz often lands herself and her husband into trouble.Her neighbours and friends also get entangled in her antics.', 'https://www.youtube.com/embed/M9NKtX0Z-zs', 'Family'),
(3, 'The Twilight Zone', '1959', '50_twilight.jpg', 'The Twilight Zone (marketed as Twilight Zone for its final two seasons) is an American anthology television series created and presented by Rod Serling, which ran for five seasons on CBS from 1959 to 1964.', 'https://www.youtube.com/embed/5ymjp2uIBws', 'TV-PG'),
(4, 'Wagon Train', '1957', '50_wagontrain.jpg', 'Major Seth Adams and his scout Flint McCullough embark on several adventures as they navigate the Wild West on a wagon train.', 'https://www.youtube.com/embed/SIVmPaXitlQ', 'TV-PG'),
(5, 'Batman', '1966', '60_batman.jpg', 'The series focuses on Batman and Robin as they defend Gotham City from its various criminals. Although the lives of their alter-egos, millionaire Bruce Wayne and his ward Dick Grayson are frequently shown, it is usually only briefly, in the context of their being called away on superhero business or in circumstances where they need to employ their public identities to assist in their crime-fighting.', 'https://www.youtube.com/embed/vvY5MgOgDUw', 'TV-PG'),
(6, 'Bewitched', '1964', '60_bewitched.jpg', 'Only Joan (Phyllis Thaxter) knows the real reason she fainted at her engagement party and suddenly deserts her fiancé, Bob (Henry H. Daniels, Jr.). It\'s the command of the sinister, vengeful \"Karen,\" a terrifying alternate personality raging inside Joan who will ultimately direct her to kill.', 'https://www.youtube.com/embed/0oT208N0Xd4', 'Family'),
(7, 'I Dream of Jeannie', '1964', '60_jeannie.jpg', 'I Dream of Jeannie is an American sitcom with a fantasy premise. The show starred Barbara Eden as a 2,000-year-old genie, and Larry Hagman as an astronaut who becomes her master, with whom she falls in love and eventually marries. ', 'https://www.youtube.com/embed/ND1MXF-svtQ', 'Family'),
(8, 'Star Trek: The Original Series', '1966', '60_startrek.jpg', 'James T Kirk, who is the captain of the Starship Enterprise, explores the whole galaxy with his crew and goes on several adventures as they fight evil forces together.', 'https://www.youtube.com/embed/nPDb5wX4H7I', 'TV-PG'),
(9, 'The Brady Bunch', '1970', '70_bradybunch.jpg', 'Mike, an architect with three sons, and Carol, a homemaker with three daughters, get married but their children struggle to bond with each other, leading to a challenging life for the family.', 'https://www.youtube.com/embed/he4WPvKGGR0', 'TV-PG'),
(10, 'Charlie\'s Angels', '1976', '70_charliesangels.jpg', 'The show that ushered in the phrase \"jiggle TV\" features three beautiful police academy-trained private detectives whose cases always seem to require that they don bikinis, evening gowns or other sexy clothing. The unseen Charlie relays instructions via speakerphone.', 'https://www.youtube.com/embed/hUQJFplxkq0', 'TV-PG'),
(11, 'Happy Days', '1974', '70_happydays.jpg', 'Set in 1950s and 1960s Milwaukee, this series tells the story of the Cunningham family -- father Howard, mother Marion, son Richie and daughter Joanie.', 'https://www.youtube.com/embed/xgh44J2c83o', 'Family'),
(12, 'The Jeffersons', '1975', '70_jeffersons.jpg', 'George and Louise Jefferson, an African-American couple, moves from Queens to Manhattan in New York, after tasting success in their dry-cleaning business.', 'https://www.youtube.com/embed/5DfmvJ6bDAM', 'TV-PG'),
(13, 'The Cosby Show', '1984', '80_cosby.jpg', '\"The Cosby Show\" centers on the lives of the Huxtables: obstetrician Cliff and his lawyer wife Claire, their daughters Sondra, Denise, Vanessa and Rudy, and son Theo. Based on the standup comedy of Bill Cosby, the show focused on his observations of family life.', 'https://www.youtube.com/embed/ubkpnXTamI0', 'Family'),
(14, 'The Golden Girls', '1985', '80_goldengirls.jpg', 'Girls from different parts of the country participate in a series of contests and demonstrate their unique skills and talent to win the coveted title.', 'https://www.youtube.com/embed/1O7ZCFME2Z4', 'TV-PG'),
(15, 'M*A*S*H', '1983', '80_mash.jpg', 'The series is centered upon the interrelationships, stress and trauma involved in being a part of Mobile Army Surgical Hospital. They survive insuperable odds with the help of practical jokes and fun.', 'https://www.youtube.com/embed/QGHFJVJTjkI', 'TV-PG'),
(16, 'Miami Vice', '1984', '80_miamivice.jpg', 'This series is largely remembered for the stylish clothes Detectives Sonny Crockett and Ricardo Tubbs wore, the soundtrack, and its distinct visuals. But beneath the veneer is a surprisingly dark cop show. The cocaine boom of the 1980s framed many stories about drugs and murder, with Crockett and Tubbs often resorting to violence in the course of their work.', 'https://www.youtube.com/embed/b6OymLS64Jo', 'TV-14'),
(17, 'Boy Meets World', '1993', '90_boymeetsworld.jpg', 'With the help of true love Topanga, best friend Shawn and teacher Mr. Feeny, Cory Matthews juggles school, friends and romance. The series, a popular Friday night staple on ABC for seven seasons, began with Cory in the sixth grade and follows him and his entourage through their college years.', 'https://www.youtube.com/embed/Be3ql9bLV34', 'Family'),
(18, 'Full House', '1990', '90_fullhouse.jpg', 'Danny is a widower who is raising his three little girls after the death of his wife. But he has help from his musician brother-in-law, Jesse Katsopolis, and his best friend, comedian Joey Gladstone.', 'https://www.youtube.com/embed/SDP7__2F1YE', 'Family'),
(19, 'Seinfeld', '1990', '90_seinfeld.jpg', 'Stand-up comedian Jerry Seinfeld wrestles with life\'s most perplexing yet trivial questions with his eccentric friends George, Elaine and Kramer.', 'https://www.youtube.com/embed/SOsbYJ4CfTA', 'TV-PG'),
(20, 'The X-Files', '1993', '90_xfiles.jpg', 'Conspiracy theorist Fox Mulder and realist Dana Scully pull out all the stops as FBI special agents to investigate and get to the bottom of inexplicable paranormal cases.', 'https://www.youtube.com/embed/Xcf44Nit7_A', 'TV-14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv_year`
--

CREATE TABLE `tbl_tv_year` (
  `tv_year_id` smallint(6) NOT NULL,
  `tv_id` smallint(6) NOT NULL,
  `year_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv_year`
--

INSERT INTO `tbl_tv_year` (`tv_year_id`, `tv_id`, `year_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 2),
(6, 6, 2),
(7, 7, 2),
(8, 8, 2),
(9, 9, 3),
(10, 10, 3),
(11, 11, 3),
(12, 12, 3),
(13, 13, 4),
(14, 14, 4),
(15, 15, 4),
(16, 16, 4),
(17, 17, 5),
(18, 18, 5),
(19, 19, 5),
(20, 20, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_urating`
--

CREATE TABLE `tbl_urating` (
  `rating_id` tinyint(3) UNSIGNED NOT NULL,
  `rating_number` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_firstlogin` varchar(10) NOT NULL DEFAULT '',
  `user_avatar` varchar(20) DEFAULT NULL,
  `user_isadmin` int(11) NOT NULL,
  `user_permissions` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_firstlogin`, `user_avatar`, `user_isadmin`, `user_permissions`) VALUES
(1, 'Sun', 'Ryan', '123', 'asun29@uwo.ca', '2020-02-03 19:25:41', '::1', '0', 'user1.jpg', 1, 5),
(2, 'PAN', 'PAN', '123', 'pan@fanshawe.ca', '2020-02-11 05:00:00', '::1', '0', 'user2.jpg', 2, 3),
(3, 'RRR', 'RRR', '111', '111@gmail.com', '2020-02-24 21:26:31', '::1', '0', 'user3.jpg', 1, 5),
(7, 'kid', 'KID', '111', '', '2020-03-09 18:41:17', 'no', '', 'user4.jpg', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_year`
--

CREATE TABLE `tbl_year` (
  `year_id` int(11) NOT NULL,
  `year_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_year`
--

INSERT INTO `tbl_year` (`year_id`, `year_name`) VALUES
(1, '1950'),
(2, '1960'),
(3, '1970'),
(4, '1980'),
(5, '1990');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  ADD PRIMARY KEY (`arating_id`);

--
-- Indexes for table `tbl_audio`
--
ALTER TABLE `tbl_audio`
  ADD PRIMARY KEY (`audio_id`);

--
-- Indexes for table `tbl_audio_year`
--
ALTER TABLE `tbl_audio_year`
  ADD PRIMARY KEY (`audio_year_id`);

--
-- Indexes for table `tbl_cast`
--
ALTER TABLE `tbl_cast`
  ADD PRIMARY KEY (`cast_id`),
  ADD UNIQUE KEY `cast_name` (`cast_name`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comments_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_director`
--
ALTER TABLE `tbl_director`
  ADD PRIMARY KEY (`director_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_cast`
--
ALTER TABLE `tbl_mov_cast`
  ADD PRIMARY KEY (`mov_cast_id`);

--
-- Indexes for table `tbl_mov_country`
--
ALTER TABLE `tbl_mov_country`
  ADD PRIMARY KEY (`mov_country_id`);

--
-- Indexes for table `tbl_mov_director`
--
ALTER TABLE `tbl_mov_director`
  ADD PRIMARY KEY (`mov_director_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_mov_lang`
--
ALTER TABLE `tbl_mov_lang`
  ADD PRIMARY KEY (`mov_lang_id`);

--
-- Indexes for table `tbl_mov_studio`
--
ALTER TABLE `tbl_mov_studio`
  ADD PRIMARY KEY (`mov_studio_id`);

--
-- Indexes for table `tbl_mov_year`
--
ALTER TABLE `tbl_mov_year`
  ADD PRIMARY KEY (`movie_year_id`);

--
-- Indexes for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  ADD PRIMARY KEY (`studio_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_tv_year`
--
ALTER TABLE `tbl_tv_year`
  ADD PRIMARY KEY (`tv_year_id`);

--
-- Indexes for table `tbl_urating`
--
ALTER TABLE `tbl_urating`
  ADD PRIMARY KEY (`rating_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_year`
--
ALTER TABLE `tbl_year`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  MODIFY `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_audio`
--
ALTER TABLE `tbl_audio`
  MODIFY `audio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_audio_year`
--
ALTER TABLE `tbl_audio_year`
  MODIFY `audio_year_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_cast`
--
ALTER TABLE `tbl_cast`
  MODIFY `cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comments_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `country_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `tbl_director`
--
ALTER TABLE `tbl_director`
  MODIFY `director_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_mov_cast`
--
ALTER TABLE `tbl_mov_cast`
  MODIFY `mov_cast_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_mov_country`
--
ALTER TABLE `tbl_mov_country`
  MODIFY `mov_country_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tbl_mov_director`
--
ALTER TABLE `tbl_mov_director`
  MODIFY `mov_director_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_mov_lang`
--
ALTER TABLE `tbl_mov_lang`
  MODIFY `mov_lang_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_mov_studio`
--
ALTER TABLE `tbl_mov_studio`
  MODIFY `mov_studio_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_mov_year`
--
ALTER TABLE `tbl_mov_year`
  MODIFY `movie_year_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_studio`
--
ALTER TABLE `tbl_studio`
  MODIFY `studio_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_tv_year`
--
ALTER TABLE `tbl_tv_year`
  MODIFY `tv_year_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_urating`
--
ALTER TABLE `tbl_urating`
  MODIFY `rating_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_year`
--
ALTER TABLE `tbl_year`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
