-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2022 at 09:10 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `astrology`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$5E/1uGc1E61CI5fKxiKYD.DlxO6ma5NcLrUVvZ/mDe21wLU8AqnD.', NULL, '2022-06-29 04:10:43', '2022-06-29 04:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expert_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `author_id`, `short_content`, `description`, `tag`, `comment`, `language`, `slug`, `category`, `created_at`, `updated_at`) VALUES
(1, 'TEST7', '2', 'UGUITUI', '<p>RTTFGG</p>', NULL, NULL, '3', 'test5-1', 3, '2022-06-08 04:49:10', '2022-06-15 06:08:42'),
(2, 'TEST5', '1', 'HJGUYTI', '<p>JHGIUTG</p>', NULL, NULL, '3', 'test5-2', 2, '2022-06-08 04:49:37', '2022-06-08 04:49:37'),
(4, 'dwewfgh', '1', 'dfgh', '<p>sdf</p>', NULL, NULL, '1', 'dwewfgh-4', 2, '2022-06-08 06:45:03', '2022-06-08 06:45:03'),
(5, 'Poor focus & narrative, CM Patnaik’s touch — why BJP got swept by BJD in Odisha rural polls', '1', 'BJD won 90% seats while BJP got reduced to 42 seats from 297 in 2017. BJD\'s ground coverage & welfare measures bore fruit, while absence of top leaders from campaign hurt BJP.', '<p><img alt=\"A file photo of Odisha CM Naveen Patnaik | Ravi Choudhary/PTI\" src=\"https://static.theprint.in/wp-content/uploads/2019/01/Naveen-Patnaik.jpg?compress=true&amp;quality=80&amp;w=800&amp;dpr=1.3\" /></p>\r\n\r\n<p><strong>New Delhi:&nbsp;</strong>The Biju Janata Dal&rsquo;s massive victory in Odisha&rsquo;s rural body polls is being seen as a victory for the party&rsquo;s comprehensive ground coverage, a slew of welfare measures and the personal involvement of Odisha CM and party chief Naveen Patnaik.</p>\r\n\r\n<p>The ruling party swept its closest challenger BJP, and the latter&rsquo;s defeat&nbsp;is being attributed to poor focus and coordination, absence of top leaders in campaigning, and the want of a convincing issue-based narrative, the party&rsquo;s senior state leaders are now saying. Even its personal attacks on CM Patnaik rang hollow, they add.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The BJD won&nbsp;766 out of 853 seats &mdash; a strike rate of 90 per cent and an increase of 290 seats from the 2017 polls &mdash; while the BJP fell to just&nbsp;42 zilla parishad seats this time, from the 297 seats it won in 2017. This figure is similar to its tally of 36 in 2012. The Congress, which got 60 zilla parishad seats in 2017, got just 37 seats this time.</p>\r\n\r\n<p>The rural polls are regarded as a crucial test before the all-important national and state elections in 2024, and the BJP&rsquo;s hope for a breakthrough in Odisha has suffered a bitter blow.&nbsp;</p>\r\n\r\n<p>In 2017, the BJP formed the zilla parishad in eight districts, whereas this time, it has failed to form a single one. Indeed, in 10 districts of Odisha, the BJP has not won any seat at all. The BJD, meanwhile, is set to form&nbsp;zilla parishads in all 30 districts of the state &mdash; an unprecedented electoral feat before the 2024 assembly and Lok Sabha polls.</p>\r\n\r\n<p>Play</p>\r\n\r\n<p>Unmute</p>\r\n\r\n<p>Loaded:&nbsp;0.20%</p>\r\n\r\n<p>Fullscreen<a href=\"https://vdo.ai/?utm_medium=video&amp;utm_term=theprint.in&amp;utm_source=vdoai_logo\" target=\"_blank\"><img alt=\"VDO.AI\" src=\"https://a.vdo.ai/core/assets/img/logo.svg\" /></a></p>\r\n\r\n<p>In all, the BJD received 52.73 per cent of the votes, while BJP got 30.07 per cent and the Congress 13.57 per cent.&nbsp;</p>\r\n\r\n<p>The results show that the BJD&rsquo;s appeal to voters under Naveen Patnaik, who is serving his fifth term as chief minister, remains undiminished.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<hr />\r\n<p><em><strong>Also read:</strong>&nbsp;<a href=\"https://theprint.in/politics/why-odisha-wants-more-and-more-of-naveen-patnaik-its-4-time-chief-minister/227566/\" target=\"_blank\">Why Odisha wants more and more of Naveen Patnaik, it&rsquo;s 4-time chief minister</a></em></p>\r\n\r\n<hr />\r\n<h3><strong>BJP wiped out in senior leaders&rsquo; home districts</strong></h3>\r\n\r\n<p>The districts where the BJP could not win any zilla parishad seats were Bhadrak, Deogarh, Jagatsinghpur, Jajpur, Jharsuguda, Koraput, Malkangiri, Mayurbhanj, Nabarangapur and Rayagada.&nbsp;</p>\r\n\r\n<p>Moreover, the BJP got a drubbing in its bastion of western Odisha. Top BJP leaders from the state, like Union minister Bishweswar Tudu (from the northern part of the state), and Mayurbhanj BJP strongman Basant Panda and BJP&rsquo;s biggest leader in Odisha, Union minister Dharmendra Pradhan (both from the western part of the state), could not stop the heavy defeat.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The BJP won 49 seats out of 56 seats in Mayurbhanj in 2017, but fell to zero in 2022. The party was banking on Union minister Tudu for improving its tally in the district. One of the reasons for the first-time MP&rsquo;s induction into the Union cabinet, say political experts, was to strengthen the party&rsquo;s footprint in this region.&nbsp;</p>\r\n\r\n<p>However, the BJD&rsquo;s deployment of party general secretary Pranab Prakash Das in Mayurbhanj proved more effective. The party presented the flagship Biju Swasthya Kalyan Yojana (BSKY) smart health cards, which found ready resonance with voters.&nbsp;</p>\r\n\r\n<p>In Kalahandi, the BJP is down to four zilla parishad seats from 33.&nbsp;</p>\r\n\r\n<p>In Angul, the home district of Union minister Dharmendra Pradhan, the BJP got just one out of 28 zilla parishad seats.</p>\r\n\r\n<h3><strong>Infighting, lack of focus plague BJP</strong></h3>\r\n\r\n<p>Compared to the BJD, whose door-to-door campaign covered the ground exhaustively, the BJP campaign was seen as ill-coordinated and running from the camp of only a few leaders.</p>\r\n\r\n<p>That strategy paid off in the assembly and Lok Sabha elections in 2019 when, riding on the &lsquo;Modi wave&rsquo;, the BJP won eight Lok Sabha seats in Odisha, including five in western Odisha and the Mayurbhanj seat in northern Odisha.</p>\r\n\r\n<p>Before 2019, however, the BJP challenged BJD hegemony in the panchayat (rural body) polls in 2017, winning 297 seats. This&nbsp;laid the ground for an impressive Lok Sabha poll results, where the BJP won a 38.4 per cent vote share.&nbsp;</p>\r\n\r\n<p>In addition to this, it got a 32.5 per cent vote share in the assembly polls and bagged 23 assembly seats.&nbsp;</p>\r\n\r\n<p>However, party leaders say that unlike the 2017 panchayat polls, the party&rsquo;s campaign was not focused in these rural body polls.</p>\r\n\r\n<p>Dharmendra Pradhan was mostly away in Uttar Pradesh, busy with the assembly polls there, while national spokesperson Sambit Patra was involved in campaigning in Manipur. Bhubaneswar MP Aparajita Sarangi, meanwhile, did not take part in campaigning due to local infighting, party sources said.&nbsp;</p>\r\n\r\n<p>BJP&rsquo;s Odisha state executive member Pratima Mishra told ThePrint, &ldquo;Our leaders were absent from ground, no big leader came to campaign here, unlike Patnaik who called on panchayat leaders and asked about their grievances. If anyone told him about the non-delivery of ration or health card, he instructed officials to deliver the same, even to BJP workers.&rdquo;&nbsp;</p>\r\n\r\n<p>&ldquo;Unlike in 2017, when the BJP formed a narrative around the issues of maladministration and corruption, farmers&rsquo; discontent in western Odisha, starvation deaths of children and lack of action on chit fund cases, this time it was fighting without any big causes. Patnaik&rsquo;s pitch was similar to that of Modi&rsquo;s &mdash; a variety of benefits that touched the poor,&rdquo; she added.</p>\r\n\r\n<p>Another leader told ThePrint that &ldquo;confusion of the central leadership about Odisha is also a factor, and the bonhomie between the BJP high command and Naveen Patnaik confused voters&rdquo;.&nbsp;</p>\r\n\r\n<p>While delivering his speech in the Rajya Sabha in reply to the President&rsquo;s address, PM Modi had praised the Odisha chief minister.</p>\r\n\r\n<p>Clearly, cooperation at the central level and opposition at the local level confused cadre and voters.</p>\r\n\r\n<p>Another senior BJP leader from Odisha, Bijoy Mohapatra, told ThePrint that the party&rsquo;s campaign was &ldquo;without focus&rdquo;, and its leaders were &ldquo;not united&rdquo;.</p>\r\n\r\n<p>One senior BJP leader from Odisha pointed out that &ldquo;after the 2017 panchayat poll, it was thought that the party would field Dharmendra Pradhan as its CM face for the assembly polls against Patnaik, but at the last moment, it decided not to. So, for many, it looked as if the party was only interested in a friendly fight in the assembly polls&rdquo;.</p>\r\n\r\n<h3><strong>Win for Naveen Patnaik&rsquo;s welfare model&nbsp;</strong></h3>\r\n\r\n<p>CM Patnaik, meanwhile, learnt his lesson from the 2017 panchayat results. Unlike then, when he did not campaign in person, this time, he took a special effort to do so.&nbsp;</p>\r\n\r\n<p>Apart from the BSKY health insurance cards, other government schemes the BJD played up included help for construction and repair of homes, raising the upper age limit for government jobs to 38 years, and a 50 per cent increase in salary of junior teachers. All this cemented Patnaik&rsquo;s image as a CM who works for the welfare of the poor.&nbsp;</p>\r\n\r\n<p>&ldquo;The entire BJP campaign was against Naveen Patnaik, but it had no substance. But the Patnaik welfare model of governance touched people&rsquo;s lives. The welfare measures strengthened cadre at Mayurbhanj and the western region, and helped to counter BJP gains there in 2017,&rdquo; a BJD leader who didn&rsquo;t want to be named told ThePrint.</p>\r\n\r\n<p>Around 3.5 crore people were meant to get the BSKY health cards, with Patnaik himself visiting different districts to distribute health cards in person or through video conferencing.&nbsp;</p>\r\n\r\n<p>Also, the Odisha government&rsquo;s package of Rs 1,414 crore for the house repair scheme helped to counter the BJP&rsquo;s charges of corruption in the distribution of money under the PM Awas Yojana.&nbsp;</p>\r\n\r\n<p>(Edited by Saikat Niyogi)</p>\r\n\r\n<hr />\r\n<p><em><strong>Also read:</strong>&nbsp;<a href=\"https://theprint.in/india/odisha-is-on-temple-renovation-drive-experts-say-its-naveen-patnaiks-answer-to-bjps-rise/785322/\" target=\"_blank\">Odisha is on temple renovation drive, experts say it&rsquo;s Naveen Patnaik&rsquo;s answer to BJP&rsquo;s rise</a></em></p>\r\n\r\n<hr />\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://theprint.in/politics/poor-focus-narrative-cm-patnaiks-touch-why-bjp-got-swept-by-bjd-in-odisha-rural-polls/854932/#\">Show Full Article&nbsp;</a></p>', 'bjd, congresh', NULL, '2', 'poor-focus-narrative-cm-patnaik’s-touch-—-why-bjp-got-swept-by-bjd-in-odisha-rural-polls-5', 4, '2022-06-10 03:12:31', '2022-06-10 03:12:31'),
(6, 'ABOUTRixosys', '1', 'Rixosys is a professional software development company based in India that endeavour on highly proficient, timely delivered, and cost-effective software and website development services.', '<p>Rixosys is a professional software development company based in India that endeavour on highly proficient, timely delivered, and cost-effective software and website development services. We are highly experienced in offering offshore software development and project management. Some of our services include Strategic Technology Consulting, System Integration &amp; Software Development, Enterprise Resource Planning (ERP), Client server application, E-commerce software development, Content management development, E-governance software, Web application development, E- Commerce development, Database application development.</p>\r\n\r\n<p>With years of experience under our belt, we promise integrity, creativity and quality</p>\r\n\r\n<p>One of our key offerings is OTT, video and audioand Live streaming platformdevelopment. Original content producers, content license holders, independent film makers, tutors, corporates can create their own streaming platform instantly using Rixosys&rsquo;s Orocast platform. Orocast takes care the entire IT infrastructure required to launch and manage their own branded platform including customer management, analytics. Rixosys can also help clients to build their own OTT/streaming platform from scratch as per their requirements. Our experts can help in creating front end content delivery apps for web, Android phone, iPhone, Android TV, Roku, Fire TV and custom apps for Set-top-boxes.</p>\r\n\r\n<p><img src=\"https://www.rixosys.com/wp-content/themes/rixosysnew/assets/images/about-img-2.png\" /></p>\r\n\r\n<p><em><strong>jswbew</strong></em></p>', 'html', NULL, '2', 'aboutrixosys-6', 3, '2022-06-10 05:52:19', '2022-06-10 05:52:19'),
(7, 'jk pvt.ltd', '1', 'hdiuowhdfwedfyewfewcf2', '<p>J & K Engineering Limited is a Public incorporated on 14 August 2006. It is classified as Non-govt company and is registered at Registrar of Companies, Jammu. Its authorized share capital is Rs. 10,000,000 and its paid up capital is Rs. 10,000,000. It is inolved in Building of complete constructions or parts thereof; civil engineering\r\n\r\nJ & K Engineering Limited\'s Annual General Meeting (AGM) was last held on 04 December 2020 and as per records from Ministry of Corporate Affairs (MCA), its balance sheet was last filed on 31 March 2020.</p>', 'hhoihih', NULL, '1', 'jk-pvtltd-7', 3, '2022-06-10 06:14:52', '2022-06-13 00:17:38'),
(8, 'testuhiudw8888', '1', 'klncdklndkldcndc1', '<p>eflewfelkfneflkenfkelfmnel</p>', 'fgfrgtrg', NULL, '4', 'testuhiudw8888-8', 1, '2022-06-13 11:04:14', '2022-06-13 11:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `blogs_comments`
--

CREATE TABLE `blogs_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `Comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs_comments`
--

INSERT INTO `blogs_comments` (`id`, `blog_id`, `user_id`, `Comments`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'why not? nice step..', '2022-05-17 07:29:32', '2022-05-17 07:29:32'),
(2, 1, 1, NULL, '2022-05-20 05:25:55', '2022-05-20 05:25:55'),
(3, 1, 1, 'hii test chinmay', '2022-05-20 06:34:46', '2022-05-20 06:34:46'),
(4, 1, 1, NULL, '2022-06-10 02:53:43', '2022-06-10 02:53:43'),
(5, 1, 1, 'jkg', '2022-06-10 02:53:53', '2022-06-10 02:53:53'),
(7, 1, 1, 'test', '2022-06-10 02:56:17', '2022-06-10 02:56:17'),
(8, 5, 1, 'amara vai nabeen vai', '2022-06-10 03:15:34', '2022-06-10 03:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `blog_banners`
--

CREATE TABLE `blog_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Admin_id` bigint(20) DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_banners`
--

INSERT INTO `blog_banners` (`id`, `Admin_id`, `images`, `url`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'http://127.0.0.1:8000/uploads/image/1655278991.jpg', 'www.facebook.com', 'facebook', '2022-06-08 01:40:07', '2022-06-15 02:13:11'),
(2, 1, 'http://127.0.0.1:8000/uploads/image/1654673649.jpg', 'www.google.com', 'google', '2022-06-08 02:04:09', '2022-06-09 02:34:24'),
(3, 1, 'http://127.0.0.1:8000/uploads/image/1654761837.jpg', 'www.rixosys.com', 'rixosys', '2022-06-09 02:33:57', '2022-06-09 02:33:57'),
(4, 1, 'http://127.0.0.1:8000/uploads/image/1655113352.jpg', 'www.astrology.com', 'cartoon network 1', '2022-06-13 04:12:32', '2022-06-13 04:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `blog_images`
--

CREATE TABLE `blog_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_images`
--

INSERT INTO `blog_images` (`id`, `blog_id`, `images`, `created_at`, `updated_at`) VALUES
(1, 1, 'images.jpg', '2022-05-17 07:28:23', '2022-05-17 07:28:23'),
(2, 2, '1653053424155.jpg', '2022-05-20 08:00:24', '2022-05-20 08:00:24'),
(4, 17, '1654668793422.jpg', '2022-06-08 00:43:13', '2022-06-08 00:43:13'),
(5, 7, '1654861492387.jpg', '2022-06-10 06:14:52', '2022-06-10 06:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `blog_replies`
--

CREATE TABLE `blog_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `reply` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_replies`
--

INSERT INTO `blog_replies` (`id`, `answer_id`, `user_id`, `reply`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'good step', '2022-05-23 06:44:05', '2022-05-23 06:44:05'),
(2, 2, 1, 'answer de', '2022-05-23 07:00:01', '2022-05-23 07:00:01'),
(3, 1, 1, 'kxnvkdsnv', '2022-05-23 07:04:04', '2022-05-23 07:04:04'),
(4, 1, 1, 'iugig', '2022-06-10 01:58:49', '2022-06-10 01:58:49'),
(5, 8, 1, 'har har modi ,ghhar ghhar modi', '2022-06-10 03:16:05', '2022-06-10 03:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `blog_reports`
--

CREATE TABLE `blog_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_reports`
--

INSERT INTO `blog_reports` (`id`, `user_id`, `blog_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'very bad', '2022-06-09 23:51:58', '2022-06-09 23:51:58'),
(2, 1, 4, 'test bad', '2022-06-09 23:52:54', '2022-06-09 23:52:54'),
(3, 1, 3, 'test chinmay 123', '2022-06-10 03:01:43', '2022-06-10 03:01:43');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_images`
--

CREATE TABLE `book_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_videos`
--

CREATE TABLE `book_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `videos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'music', '2022-05-12 23:59:42', '2022-05-12 23:59:42'),
(2, 'music', '2022-05-13 00:00:33', '2022-05-13 00:00:33'),
(3, 'technology', '2022-05-13 00:03:19', '2022-05-13 00:03:19'),
(4, 'social', '2022-05-17 07:26:09', '2022-05-17 07:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapter_documents`
--

CREATE TABLE `chapter_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapter_images`
--

CREATE TABLE `chapter_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chapter_videos`
--

CREATE TABLE `chapter_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) DEFAULT NULL,
  `videos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experts`
--

CREATE TABLE `experts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expertise` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonials` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratings` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experts_certificates`
--

CREATE TABLE `experts_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expert_id` bigint(20) DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_answers`
--

CREATE TABLE `forum_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_answers`
--

INSERT INTO `forum_answers` (`id`, `question_id`, `user_id`, `answer`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'kjhfwfoi', '2022-05-13 06:39:15', '2022-05-13 06:39:15'),
(2, 6, 1, 'hockey', '2022-05-21 02:55:58', '2022-05-21 02:55:58'),
(3, 6, 1, 'footrball', '2022-05-21 03:00:23', '2022-05-21 03:00:23'),
(4, 6, 1, 'cricket', '2022-05-21 04:17:54', '2022-05-21 04:17:54'),
(5, 6, 1, 'why cricket', '2022-05-21 05:21:28', '2022-05-21 05:21:28'),
(6, 6, 1, 'iodsncoidshncvkjs', '2022-05-21 05:35:03', '2022-05-21 05:35:03'),
(7, 6, 1, 'iodsncoidshncvkjs', '2022-05-21 05:35:26', '2022-05-21 05:35:26'),
(8, 2, 1, 'technolgy is nothing', '2022-05-23 01:16:12', '2022-05-23 01:16:12'),
(9, 10, 1, 'kuiguigfi', '2022-05-23 02:15:48', '2022-05-23 02:15:48'),
(10, 5, 1, 'science is a mountain', '2022-05-23 04:49:03', '2022-05-23 04:49:03'),
(11, 9, 1, 'dscdsvdsv', '2022-05-23 05:14:20', '2022-05-23 05:14:20'),
(12, 14, 6, 'tetst', '2022-06-08 08:40:54', '2022-06-08 08:40:54'),
(13, 6, 1, 'test', '2022-06-13 00:58:15', '2022-06-13 00:58:15'),
(14, 2, 1, 'testing dipanita', '2022-06-13 01:37:41', '2022-06-13 01:37:41');

-- --------------------------------------------------------

--
-- Table structure for table `forum_categories`
--

CREATE TABLE `forum_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_categories`
--

INSERT INTO `forum_categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'music', '2022-06-07 04:03:15', '2022-06-07 04:03:15'),
(2, 'social', '2022-06-07 04:03:30', '2022-06-07 04:03:30'),
(3, 'technology', '2022-06-07 04:03:56', '2022-06-07 04:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `forum_comments`
--

CREATE TABLE `forum_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `answer_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `Comments` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_comments`
--

INSERT INTO `forum_comments` (`id`, `answer_id`, `user_id`, `Comments`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'kjbvkjdsvsd', '2022-05-21 05:36:56', '2022-05-21 05:36:56'),
(2, 2, 1, 'chinmay', '2022-05-23 01:16:49', '2022-05-23 01:16:49'),
(3, 6, 1, 'no never', '2022-05-23 02:38:34', '2022-05-23 02:38:34'),
(4, 6, 1, 'dsklhvdkcvh', '2022-05-23 02:41:00', '2022-05-23 02:41:00'),
(5, 5, 1, 'not a mountain', '2022-05-23 04:49:30', '2022-05-23 04:49:30'),
(6, NULL, 1, 'cscwecew', '2022-05-23 04:52:17', '2022-05-23 04:52:17'),
(7, NULL, 1, 'dwvcecvewvc', '2022-05-23 04:54:23', '2022-05-23 04:54:23'),
(8, 5, 1, 'dwvcecvewvc', '2022-05-23 04:54:38', '2022-05-23 04:54:38'),
(9, 5, 1, 'dwvcecvewvc', '2022-05-23 04:55:48', '2022-05-23 04:55:48'),
(10, 5, 1, 'dwvcecvewvc', '2022-05-23 04:57:41', '2022-05-23 04:57:41'),
(11, NULL, 1, 'dwvcecvewvc', '2022-05-23 04:58:39', '2022-05-23 04:58:39'),
(12, 5, 1, 'dwvcecvewvc', '2022-05-23 05:00:32', '2022-05-23 05:00:32'),
(13, 5, 1, 'dwvcecvewvc', '2022-05-23 05:01:45', '2022-05-23 05:01:45'),
(14, NULL, 1, 'dwvcecvewvc', '2022-05-23 05:01:55', '2022-05-23 05:01:55'),
(15, NULL, 1, 'dwvcecvewvc', '2022-05-23 05:04:27', '2022-05-23 05:04:27'),
(16, NULL, 1, 'dwvcecvewvc', '2022-05-23 05:04:43', '2022-05-23 05:04:43'),
(17, 5, 1, 'dwvcecvewvc', '2022-05-23 05:06:36', '2022-05-23 05:06:36'),
(18, 5, 1, 'dwvcecvewvc', '2022-05-23 05:09:19', '2022-05-23 05:09:19'),
(19, 5, 1, 'dwvcecvewvc', '2022-05-23 05:10:19', '2022-05-23 05:10:19'),
(20, 5, 1, 'dwvcecvewvc', '2022-05-23 05:11:06', '2022-05-23 05:11:06'),
(21, 5, 1, 'dwvcecvewvc', '2022-05-23 05:12:54', '2022-05-23 05:12:54'),
(22, 9, 1, 'dcvdscvdscv', '2022-05-23 05:13:13', '2022-05-23 05:13:13'),
(23, 5, 1, 'dwvcecvewvc', '2022-05-23 05:13:33', '2022-05-23 05:13:33'),
(24, 9, 1, 'dcvdscvdscv', '2022-05-23 05:13:59', '2022-05-23 05:13:59'),
(25, 10, 1, 'no matter', '2022-05-23 05:14:58', '2022-05-23 05:14:58'),
(26, 9, 1, 'hiii', '2022-05-23 05:18:20', '2022-05-23 05:18:20'),
(27, 11, 1, 'dwqdd', '2022-05-23 05:18:49', '2022-05-23 05:18:49'),
(28, 10, 1, 'cewfcewf', '2022-05-23 05:19:02', '2022-05-23 05:19:02'),
(29, 10, 1, 'yewss matter depends', '2022-05-23 05:19:44', '2022-05-23 05:19:44'),
(30, 10, 1, 'chinmay', '2022-05-23 05:21:03', '2022-05-23 05:21:03'),
(31, 10, 1, 'chinmay', '2022-05-23 05:21:34', '2022-05-23 05:21:34'),
(32, 10, 1, 'chinmay', '2022-05-23 05:22:10', '2022-05-23 05:22:10'),
(33, 9, 1, 'cat', '2022-05-23 05:22:51', '2022-05-23 05:22:51'),
(34, 8, 1, 'technology is everything', '2022-05-23 05:29:02', '2022-05-23 05:29:02'),
(35, 1, 1, NULL, '2022-05-23 06:34:51', '2022-05-23 06:34:51'),
(36, 9, 4, 'chinmay', '2022-05-23 23:36:54', '2022-05-23 23:36:54'),
(37, 9, 4, 'tisjat', '2022-05-23 23:40:39', '2022-05-23 23:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `forum_languages`
--

CREATE TABLE `forum_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_languages`
--

INSERT INTO `forum_languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'odia', '2022-06-07 04:03:23', '2022-06-07 04:03:23'),
(2, 'hindi', '2022-06-07 04:03:36', '2022-06-07 04:03:36'),
(3, 'english', '2022-06-07 04:03:47', '2022-06-07 04:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `forum_questions`
--

CREATE TABLE `forum_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_questions`
--

INSERT INTO `forum_questions` (`id`, `user_id`, `description`, `question`, `tags`, `category`, `language`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'hofhihof', 'ewfewfewfewf', NULL, NULL, NULL, '2022-05-13 05:02:27', '2022-05-13 05:02:27'),
(2, 1, NULL, 'what is technlogy?', 'html css', '3', '1', 'technology', '2022-05-13 05:07:51', '2022-05-13 05:07:51'),
(3, 1, NULL, 'wqdqhiohio', 'hdeqwhioiho', NULL, NULL, NULL, '2022-05-13 05:10:06', '2022-05-13 05:10:06'),
(4, 1, NULL, 'hjhvjgdkkbj', 'guicsahooh', 'music', 'odia', NULL, '2022-05-13 05:12:53', '2022-05-13 05:12:53'),
(5, 1, NULL, 'what is science?', 'biology', 'technology', 'hindi', 'science', '2022-05-20 05:13:02', '2022-05-20 05:13:02'),
(6, 1, NULL, 'what is the national game of india', 'game,national', 'Entertainment', 'hindi', 'game', '2022-05-21 02:27:58', '2022-05-21 02:27:58'),
(7, 1, NULL, 'kjbkjvbekvjcer', 'html css', 'social', '2', NULL, '2022-05-23 01:01:40', '2022-05-23 01:01:40'),
(8, 1, NULL, 'cji3r3ihh', 'jkvnrkjjvnrv', 'social', 'Tamil', NULL, '2022-05-23 01:05:14', '2022-05-23 01:05:14'),
(9, 1, NULL, 'jkrbkjrbrjkgvtr', '', '3', 'hindi', NULL, '2022-05-23 01:10:00', '2022-05-23 01:10:00'),
(10, 1, NULL, 'jkrbkjrbrjkgvtr', '', '3', 'hindi', NULL, '2022-05-23 01:10:17', '2022-05-23 01:10:17'),
(11, 1, NULL, 'what is your name', 'family', '1', 'english', 'what-is-your-name', '2022-06-08 01:21:45', '2022-06-08 01:21:45'),
(12, 1, 'test is best', 'test', 'tetsts', '1', 'odia', 'test', '2022-06-08 06:01:37', '2022-06-08 06:01:37'),
(13, 1, 'dvfevev', 'testyy', 'dvdsvsv', '2', 'hindi', 'testyy', '2022-06-08 06:19:43', '2022-06-08 06:19:43'),
(14, 6, 'test image', 'testimage', 'weweds', '1', 'english', 'testimage', '2022-06-08 08:38:55', '2022-06-08 08:38:55');

-- --------------------------------------------------------

--
-- Table structure for table `forum_reports`
--

CREATE TABLE `forum_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forum_reports`
--

INSERT INTO `forum_reports` (`id`, `user_id`, `question_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 9, 9, 'very bad', '2022-06-07 05:07:58', '2022-06-07 05:07:58'),
(2, 8, 2, 'very bad question', '2022-06-07 05:11:58', '2022-06-07 05:11:58'),
(3, 1, 2, 'test', '2022-06-07 05:13:40', '2022-06-07 05:13:40'),
(4, 2, 1, 'never end', '2022-06-07 05:16:14', '2022-06-07 05:16:14'),
(5, 1, 11, 'very bad', '2022-06-08 01:34:36', '2022-06-08 01:34:36'),
(6, 1, 2, 'very bad', '2022-06-09 23:42:54', '2022-06-09 23:42:54'),
(7, 1, 2, 'test bad performance', '2022-06-09 23:44:05', '2022-06-09 23:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'hindi', '2022-05-13 00:01:48', '2022-05-13 00:01:48'),
(2, 'odia', '2022-05-13 00:03:42', '2022-05-13 00:03:42'),
(3, 'Tamil', '2022-05-21 00:37:23', '2022-05-21 00:37:23'),
(4, 'tamil', '2022-06-13 11:03:36', '2022-06-13 11:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `like_dislikes`
--

CREATE TABLE `like_dislikes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `status` enum('Like','Dislike') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `like_dislikes`
--

INSERT INTO `like_dislikes` (`id`, `user_id`, `type`, `type_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'comment', 34, 'Dislike', '2022-06-13 02:37:09', '2022-06-15 06:54:45'),
(3, 1, 'answer', 14, 'Dislike', '2022-06-13 02:37:21', '2022-06-15 06:56:32'),
(4, 1, 'answer', 8, 'Dislike', '2022-06-15 06:30:51', '2022-06-16 01:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(136, '2014_10_12_000000_create_users_table', 1),
(137, '2014_10_12_100000_create_password_resets_table', 1),
(138, '2022_04_14_065712_create_admins_table', 1),
(139, '2022_04_14_065713_create_admin_password_resets_table', 1),
(140, '2022_04_14_105541_create_books_table', 1),
(141, '2022_04_14_105809_create_book_images_table', 1),
(142, '2022_04_14_105833_create_book_videos_table', 1),
(143, '2022_04_14_125630_create_chapters_table', 1),
(144, '2022_04_14_131020_create_chapter_images_table', 1),
(145, '2022_04_14_131040_create_chapter_videos_table', 1),
(146, '2022_04_14_134837_create_chapter_documents_table', 1),
(147, '2022_04_15_062648_create_wikis_table', 1),
(148, '2022_04_15_062839_create_wiki_images_table', 1),
(149, '2022_04_15_062859_create_wiki_videos_table', 1),
(150, '2022_04_15_062920_create_wiki_documents_table', 1),
(151, '2022_04_15_100954_create_pages_table', 1),
(152, '2022_04_18_051730_create_blogs_table', 1),
(153, '2022_04_18_052020_create_blog_images_table', 1),
(154, '2022_04_18_101825_create_experts_table', 1),
(155, '2022_04_18_111851_create_experts_certificates_table', 1),
(156, '2022_04_28_100342_create_forum_questions_table', 1),
(157, '2022_04_28_100538_create_forum_answers_table', 1),
(158, '2022_04_29_093739_create_blogs_comments_table', 1),
(159, '2022_05_03_052916_create_appointments_table', 1),
(160, '2022_05_04_060550_create_ratings_table', 1),
(161, '2022_05_12_095303_create_permission_tables', 1),
(162, '2022_05_13_051644_create_categories_table', 2),
(163, '2022_05_13_052028_create_languages_table', 3),
(164, '2022_05_21_104359_create_forum_comments_table', 4),
(165, '2022_05_23_115659_create_blog_replies_table', 5),
(166, '2022_06_06_122655_create_forum_categories_table', 6),
(167, '2022_06_06_123021_create_forum_languages_table', 6),
(168, '2022_06_07_102346_create_forum_reports_table', 7),
(169, '2022_06_07_103550_create_blog_banners_table', 8),
(170, '2022_06_10_051437_create_blog_reports_table', 9),
(171, '2022_06_10_094541_create_like_dislikes_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Admin', 1),
(2, 'App\\Admin', 2),
(3, 'App\\Admin', 3),
(5, 'App\\Admin', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chapter_id` bigint(20) DEFAULT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'forum', 'admin', '2022-05-12 06:29:27', '2022-05-12 06:29:27'),
(2, 'books', 'admin', '2022-05-12 06:29:27', '2022-05-12 06:29:27'),
(3, 'appointment', 'admin', '2022-05-12 06:29:27', '2022-05-12 06:29:27'),
(4, 'wiki', 'admin', '2022-05-12 06:29:27', '2022-05-12 06:29:27'),
(5, 'blog', 'admin', '2022-05-12 06:29:27', '2022-05-12 06:29:27'),
(6, 'consultation', 'admin', '2022-05-12 06:29:27', '2022-05-12 06:29:27'),
(7, 'settings', 'admin', '2022-05-12 06:29:27', '2022-05-12 06:29:27'),
(8, 'roles', 'admin', '2022-05-12 06:29:27', '2022-05-12 06:29:27'),
(9, 'team', 'admin', '2022-05-12 06:29:27', '2022-05-12 06:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `expert_id` bigint(20) NOT NULL,
  `ratings` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `admin_id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 1, '1_admin', 'admin', '2022-06-29 04:10:43', '2022-06-29 04:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(3, 3),
(4, 2),
(5, 2),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `image`, `designation`, `forum_category`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'chinmay', 'user@gmail.com', NULL, '$2y$10$ePS9IT4rMlEijxNuUJJ9Z.k31/C8t/B.6U6sokhtubFd3oQrRJzGm', 'http://127.0.0.1:8000/uploads/image/1654695403.jpg', 'author', '1,3', NULL, '2022-05-12 07:19:06', '2022-06-10 06:05:12'),
(2, 'laymail', 'user1@gmail.com', NULL, '$2y$10$LvGCeHwCkpka4lez9FYTv.oAGyHO6lXwcCdsu64keHuyxtSBEJgwC', NULL, NULL, NULL, NULL, '2022-05-12 07:56:06', '2022-05-12 07:56:06'),
(3, 'chinmay mohanty', 'chinmay@rixosys.com', NULL, '$2y$10$4yEkU8U9fQkm3yFTBSv98eHK98dSEP//8D9zTEGDchJb2jGB.kTO6', NULL, NULL, NULL, NULL, '2022-05-12 08:13:52', '2022-05-12 08:13:52'),
(4, 'tushar', 'tushar@gmail.com', NULL, '$2y$10$nFrKUsncXuoVfhUAgZLY9ebwJAR84Wy0gE1fwUoJgy.KkxT8wMHhe', NULL, 'developer', NULL, NULL, '2022-05-12 23:19:53', '2022-05-12 23:19:53'),
(6, 'michel', 'chinmay45@rixosys.com', NULL, '$2y$10$9D.LuKp4jnB8eTquIewx3.zEtDZeluXdDXTTJjxGIDnDa2e4vXKPK', 'http://127.0.0.1:8000/uploads/image/1654695403.jpg', 'story maker', '1,3', NULL, '2022-06-08 08:06:43', '2022-06-08 08:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `wikis`
--

CREATE TABLE `wikis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlighted_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `references` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `links` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tables` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wiki_documents`
--

CREATE TABLE `wiki_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wiki_id` bigint(20) DEFAULT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wiki_images`
--

CREATE TABLE `wiki_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wiki_id` bigint(20) DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wiki_videos`
--

CREATE TABLE `wiki_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `wiki_id` bigint(20) DEFAULT NULL,
  `videos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs_comments`
--
ALTER TABLE `blogs_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_banners`
--
ALTER TABLE `blog_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_images`
--
ALTER TABLE `blog_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_replies`
--
ALTER TABLE `blog_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_reports`
--
ALTER TABLE `blog_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_images`
--
ALTER TABLE `book_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_videos`
--
ALTER TABLE `book_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter_documents`
--
ALTER TABLE `chapter_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter_images`
--
ALTER TABLE `chapter_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapter_videos`
--
ALTER TABLE `chapter_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experts`
--
ALTER TABLE `experts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experts_certificates`
--
ALTER TABLE `experts_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_answers`
--
ALTER TABLE `forum_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_categories`
--
ALTER TABLE `forum_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_comments`
--
ALTER TABLE `forum_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_languages`
--
ALTER TABLE `forum_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_questions`
--
ALTER TABLE `forum_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_reports`
--
ALTER TABLE `forum_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_dislikes`
--
ALTER TABLE `like_dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wikis`
--
ALTER TABLE `wikis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wiki_documents`
--
ALTER TABLE `wiki_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wiki_images`
--
ALTER TABLE `wiki_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wiki_videos`
--
ALTER TABLE `wiki_videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogs_comments`
--
ALTER TABLE `blogs_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_banners`
--
ALTER TABLE `blog_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog_images`
--
ALTER TABLE `blog_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_replies`
--
ALTER TABLE `blog_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog_reports`
--
ALTER TABLE `blog_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_images`
--
ALTER TABLE `book_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_videos`
--
ALTER TABLE `book_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapter_documents`
--
ALTER TABLE `chapter_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapter_images`
--
ALTER TABLE `chapter_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chapter_videos`
--
ALTER TABLE `chapter_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experts`
--
ALTER TABLE `experts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experts_certificates`
--
ALTER TABLE `experts_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_answers`
--
ALTER TABLE `forum_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forum_categories`
--
ALTER TABLE `forum_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forum_comments`
--
ALTER TABLE `forum_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `forum_languages`
--
ALTER TABLE `forum_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forum_questions`
--
ALTER TABLE `forum_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `forum_reports`
--
ALTER TABLE `forum_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `like_dislikes`
--
ALTER TABLE `like_dislikes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wikis`
--
ALTER TABLE `wikis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wiki_documents`
--
ALTER TABLE `wiki_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wiki_images`
--
ALTER TABLE `wiki_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wiki_videos`
--
ALTER TABLE `wiki_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
