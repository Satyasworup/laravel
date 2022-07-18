-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2022 at 10:11 AM
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
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_change_password` int(11) DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `parent_id`, `type`, `name`, `email`, `company`, `country_id`, `logo`, `temp_password`, `force_change_password`, `password`, `domain`, `slug`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'satya', 'satya@rixosys.com', 'rixosys', NULL, NULL, NULL, NULL, '$2y$10$fJlh.aOr20fKwxzJIP0GQOV5uI8K7SbUKlgwxetCgj0RTGUDWI12e', 'rixosys', 'rixosys', 'ACTIVE', NULL, '2022-05-18 07:23:48', '2022-05-18 07:23:48'),
(2, NULL, NULL, 'admin', 'admin@gmail.com', 'rixosys', NULL, NULL, NULL, NULL, '$2y$10$mExxmTZA2qxmrKOd7nDnJeKDmoOvdmUZlVQdbzWaUNAsQJDY6iT6G', 'rixosys', 'rixosys1', 'ACTIVE', NULL, '2022-05-18 19:42:01', '2022-05-18 19:42:01'),
(3, 2, 'employee', 'aaa', 'aaa@gmail.com', NULL, NULL, NULL, 'TEnyDHjI', NULL, '$2y$10$VVlctxgHkJhKGJb4fQzooOBx/8ALwDMtfitnjQs.7.7GsNGfWciSO', NULL, NULL, 'ACTIVE', NULL, '2022-05-19 12:09:38', '2022-05-19 12:09:38'),
(4, 2, 'employee', 'emp1', 'emp@gmail.com', NULL, NULL, NULL, 'uROeTFuB', NULL, '$2y$10$FhkcK836MnMnm9bSdUMEhObuocw914N/tmG1bPGgYHcTUghEXRSbS', NULL, NULL, 'ACTIVE', NULL, '2022-05-19 12:41:10', '2022-06-01 09:45:59');

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
-- Table structure for table `admin_permission_groups`
--

CREATE TABLE `admin_permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permission_groups`
--

INSERT INTO `admin_permission_groups` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'lead', 'lead', '2022-05-19 01:13:56', '2022-05-19 01:13:56'),
(2, 'customer', 'customer', '2022-05-21 07:23:21', '2022-05-21 07:23:21'),
(3, 'projects', 'projects', '2022-05-21 07:24:58', '2022-05-21 07:24:58'),
(4, 'tickets', 'tickets', '2022-05-21 11:04:12', '2022-05-21 11:04:12'),
(5, 'tasks', 'tasks', '2022-05-21 11:56:31', '2022-05-21 11:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_to_staff` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `show_to_client` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `show_my_name` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_client` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `related` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `admin_id`, `creator_id`, `related`, `related_id`, `file`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'lead', 10, NULL, '2022-07-07 07:35:41', '2022-07-07 07:35:41'),
(2, 2, 2, 'lead', 10, NULL, '2022-07-07 07:35:44', '2022-07-07 07:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `buckets`
--

CREATE TABLE `buckets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bucket_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_common` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_branches`
--

CREATE TABLE `company_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_branches`
--

INSERT INTO `company_branches` (`id`, `admin_id`, `creator_id`, `name`, `has_default`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'branch 1', 'NO', '2022-05-19 12:45:00', '2022-05-19 12:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `company_employees`
--

CREATE TABLE `company_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `join_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `office_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_pro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_pro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_pro` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` int(11) DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inactivereason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_employees`
--

INSERT INTO `company_employees` (`id`, `admin_id`, `join_date`, `first_name`, `middle_name`, `last_name`, `dob`, `gender`, `personal_email`, `office_email`, `primary_phone`, `secondary_phone`, `whatsapp1`, `whatsapp2`, `instagram_pro`, `facebook_pro`, `linkedin_pro`, `address1`, `address2`, `login_email`, `password`, `position`, `department`, `branch`, `permission`, `status`, `inactivereason`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, NULL, NULL, NULL, NULL, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'aaa@gmail.com', NULL, NULL, NULL, NULL, NULL, 'active', NULL, '2022-05-19 12:09:38', '2022-05-19 12:09:38'),
(2, 4, '19 May, 2022', 'emp1', 'sss', 'ddd', '22 December, 2021', 'male', 'emp@gmail.com', 'emp@gmail.com', '65484968', '4968498', '49848', '498', '4', '498', '984', '984', '984', 'emp@gmail.com', NULL, NULL, NULL, NULL, NULL, 'active', NULL, '2022-05-19 12:41:10', '2022-06-01 09:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `company_tables`
--

CREATE TABLE `company_tables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sortname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phonecode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `admin_id`, `creator_id`, `currency_code`, `name`, `has_default`, `created_at`, `updated_at`) VALUES
(1, 2, 2, NULL, 'Currency 1', 'YES', '2022-05-19 12:44:23', '2022-07-07 06:53:10'),
(2, 2, 2, NULL, 'currency 2', 'NO', '2022-07-07 06:52:55', '2022-07-07 06:53:10');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `assign_id` int(11) DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('INACTIVE','ACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `admin_id`, `creator_id`, `assign_id`, `position`, `name`, `city`, `website`, `phone`, `address`, `email`, `state`, `country_id`, `zipcode`, `language_id`, `company`, `description`, `source`, `assigned`, `tags`, `currency_id`, `groups`, `vat_number`, `status`, `created_at`, `updated_at`) VALUES
(4, 2, 2, 4, NULL, 'admin customer', 'BBSR', 'www.hr.com', '7878787878', 'address 1', 'customer01@gmail.com', NULL, NULL, '751010', '1', 'Rixosys', NULL, NULL, NULL, NULL, '1', NULL, '9999', 'ACTIVE', '2022-05-21 09:40:48', '2022-05-23 07:55:56'),
(5, 2, 2, 4, NULL, 'emp customer', 'few', 'cwe', 'weffcfw', 'edwe', 'edv@ef.er', NULL, NULL, 'ewfew', '1', 'dd', NULL, NULL, NULL, NULL, '1', NULL, 'wefwe', 'ACTIVE', '2022-05-21 09:41:32', '2022-05-21 09:41:32'),
(6, 2, 4, 2, NULL, 'employee', NULL, NULL, NULL, NULL, 'empo@ef.rf3ef', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', '2022-05-21 09:42:19', '2022-05-21 09:42:19'),
(7, 2, 4, 2, NULL, 'efew', 'uh', 'uh', 'hu', 'huhu', 'hued@er.tg', NULL, NULL, 'u', NULL, 'uhu', NULL, NULL, NULL, NULL, NULL, NULL, 'hu', 'ACTIVE', '2022-05-21 11:29:45', '2022-05-21 11:29:45'),
(8, 2, 4, 2, NULL, 'efedce', NULL, NULL, NULL, NULL, 'fefcw@r.trh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', '2022-05-21 11:32:15', '2022-05-21 11:32:15'),
(9, 2, 4, 2, NULL, 'new emp cust', 'BBSR', 'www.hr.com', '7878787878', 'wacsse', 'cust@fg.rt', NULL, NULL, '751010', '1', 'Rixosys', NULL, NULL, NULL, NULL, '1', NULL, '415', 'INACTIVE', '2022-05-23 06:17:58', '2022-05-23 06:18:12'),
(10, 2, 2, 4, NULL, 'ex cust', 'BBSR', 'www.hr.com', '7878787878', 'efwef', 'ecust@gmail.com', 'Odisha', NULL, '751010', '1', 'rfre', NULL, NULL, NULL, NULL, '1', NULL, '9999', 'ACTIVE', '2022-05-23 08:18:54', '2022-05-23 08:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `customer_billings`
--

CREATE TABLE `customer_billings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_billings`
--

INSERT INTO `customer_billings` (`id`, `customer_id`, `street`, `city`, `state`, `zipcode`, `country_id`, `created_at`, `updated_at`) VALUES
(1, '2', NULL, NULL, NULL, NULL, NULL, '2022-05-21 06:50:06', '2022-05-21 06:50:06'),
(2, '3', NULL, NULL, NULL, NULL, NULL, '2022-05-21 08:24:01', '2022-05-21 08:24:01'),
(3, '4', NULL, NULL, NULL, NULL, NULL, '2022-05-21 09:40:48', '2022-05-21 09:40:48'),
(4, '4', NULL, NULL, NULL, NULL, NULL, '2022-05-21 09:41:33', '2022-05-23 07:56:27'),
(5, '6', NULL, NULL, NULL, NULL, NULL, '2022-05-21 09:42:19', '2022-05-21 09:42:19'),
(6, '7', NULL, NULL, NULL, NULL, NULL, '2022-05-21 11:29:45', '2022-05-21 11:29:45'),
(7, '8', NULL, NULL, NULL, NULL, NULL, '2022-05-21 11:32:15', '2022-05-21 11:32:15'),
(8, '9', NULL, NULL, NULL, NULL, NULL, '2022-05-23 06:17:58', '2022-05-23 06:17:58'),
(9, '10', NULL, NULL, NULL, NULL, NULL, '2022-05-23 08:18:54', '2022-05-23 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `customer_shippings`
--

CREATE TABLE `customer_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `different_shipping_address` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'YES',
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_shippings`
--

INSERT INTO `customer_shippings` (`id`, `customer_id`, `different_shipping_address`, `street`, `city`, `state`, `zipcode`, `country_id`, `created_at`, `updated_at`) VALUES
(1, '2', 'NO', NULL, NULL, NULL, NULL, NULL, '2022-05-21 06:50:06', '2022-05-21 06:50:06'),
(2, '3', 'NO', NULL, NULL, NULL, NULL, NULL, '2022-05-21 08:24:01', '2022-05-21 08:24:01'),
(3, '4', 'NO', NULL, NULL, NULL, NULL, NULL, '2022-05-21 09:40:48', '2022-05-21 09:40:48'),
(4, '4', 'NO', NULL, NULL, NULL, NULL, NULL, '2022-05-21 09:41:33', '2022-05-23 07:56:27'),
(5, '6', 'NO', NULL, NULL, NULL, NULL, NULL, '2022-05-21 09:42:19', '2022-05-21 09:42:19'),
(6, '7', 'NO', NULL, NULL, NULL, NULL, NULL, '2022-05-21 11:29:45', '2022-05-21 11:29:45'),
(7, '8', 'NO', NULL, NULL, NULL, NULL, NULL, '2022-05-21 11:32:15', '2022-05-21 11:32:15'),
(8, '9', 'NO', NULL, NULL, NULL, NULL, NULL, '2022-05-23 06:17:58', '2022-05-23 06:17:58'),
(9, '10', 'NO', NULL, NULL, NULL, NULL, NULL, '2022-05-23 08:18:54', '2022-05-23 08:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `emailsettings`
--

CREATE TABLE `emailsettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_suspended` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `to_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_assets`
--

CREATE TABLE `employee_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `emp_id` bigint(20) DEFAULT NULL,
  `assets` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset_status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_branches`
--

CREATE TABLE `employee_branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_contracts`
--

CREATE TABLE `employee_contracts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `contract` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_departments`
--

CREATE TABLE `employee_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_departments`
--

INSERT INTO `employee_departments` (`id`, `admin_id`, `creator_id`, `name`, `has_default`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'dept 1', 'NO', '2022-05-19 12:44:41', '2022-05-19 12:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `employee_password_resets`
--

CREATE TABLE `employee_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_positions`
--

CREATE TABLE `employee_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_positions`
--

INSERT INTO `employee_positions` (`id`, `admin_id`, `creator_id`, `name`, `has_default`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'md', 'NO', '2022-05-19 12:44:33', '2022-05-19 12:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `employee__leaves`
--

CREATE TABLE `employee__leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(255) DEFAULT NULL,
  `emp_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `approve_by` bigint(20) DEFAULT NULL,
  `leave_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `half_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `no_of_days` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_halfdays` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repeat_every` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` enum('bank','stripe') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PAID','UNPAID','CANCEL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'UNPAID',
  `recurring_invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurring_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recurringvalue` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nxt_recurring` datetime DEFAULT NULL,
  `admin_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_discountform` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_discountamt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_adjustamt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `admin_id`, `creator_id`, `customer_id`, `invoice_no`, `invoice_date`, `due_date`, `payment_mode`, `currency_id`, `discount_type`, `status`, `recurring_invoice`, `recurring_type`, `recurringvalue`, `nxt_recurring`, `admin_note`, `client_note`, `invoice_subtotal`, `invoice_discountform`, `invoice_discountamt`, `invoice_adjustamt`, `invoice_total`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '10', NULL, '', '', NULL, '1', NULL, 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 07:48:06', '2022-07-07 07:48:06'),
(2, 2, 2, '10', NULL, '', '', NULL, '1', NULL, 'UNPAID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 07:49:05', '2022-07-07 07:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_senderid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_type`, `invoice_id`, `invoice_senderid`, `item_name`, `description`, `qty`, `rate`, `tax`, `amount`, `created_at`, `updated_at`) VALUES
(1, NULL, '1', NULL, NULL, NULL, '1', '0', '0', '0', '2022-07-07 07:48:06', '2022-07-07 07:48:06'),
(2, NULL, '2', NULL, NULL, NULL, '1', '0', '0', '0', '2022-07-07 07:49:05', '2022-07-07 07:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `admin_id`, `creator_id`, `name`, `has_default`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Language 1', 'NO', '2022-05-19 12:44:16', '2022-05-19 12:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `leadreminders`
--

CREATE TABLE `leadreminders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) NOT NULL,
  `days_after` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_contacted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('INACTIVE','ACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `has_deleted` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `admin_id`, `creator_id`, `position`, `name`, `city`, `website`, `phone`, `whatsapp`, `address`, `email`, `state`, `country_id`, `zipcode`, `lead_value`, `language_id`, `company`, `description`, `product_id`, `date_contacted`, `lead_status`, `source`, `converted`, `source_link`, `assigned`, `tags`, `currency_id`, `groups`, `vat_number`, `status`, `has_deleted`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Position 1', 'lead 1', 'BBSR', 'www.hr.com', '7878787878', '9348349097', NULL, 'lead@gmail.com', 'Odisha', NULL, '751010', '1000', '1', 'Rixosys', '<p>sss</p>', '1', NULL, '1', '1', NULL, 'link 1', '2', NULL, '1', NULL, NULL, 'INACTIVE', 'NO', '2022-05-19 12:45:58', '2022-05-19 12:46:34'),
(2, 2, 2, 'Position 1', 'lead 1', 'BBSR', 'www.hr.com', '7878787878', '9348349097', NULL, 'lead@gmail.com', 'Odisha', NULL, '751010', '1000', '1', 'Rixosys', '<p>sss</p>', '1', NULL, '1', '1', NULL, 'link 1', '2', NULL, '1', NULL, NULL, 'ACTIVE', 'NO', '2022-05-19 12:46:21', '2022-05-19 12:46:21'),
(3, 2, 2, NULL, 'satya', NULL, NULL, NULL, NULL, NULL, 'lead02@gmail.com', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, '1', '1', NULL, 'lead 2 admin', '4', NULL, '1', NULL, NULL, 'INACTIVE', 'NO', '2022-05-20 12:21:12', '2022-05-20 13:04:10'),
(4, 2, 2, NULL, 'satya', NULL, NULL, NULL, NULL, NULL, 'lead02@gmail.com', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, '1', '1', NULL, 'lead 2 admin', '4', NULL, '1', NULL, NULL, 'INACTIVE', 'NO', '2022-05-20 12:21:39', '2022-05-20 13:04:08'),
(5, 2, 2, NULL, 'satya', NULL, NULL, NULL, NULL, NULL, 'lead02@gmail.com', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, '1', '1', NULL, 'lead 2 admin', '4', NULL, '1', NULL, NULL, 'INACTIVE', 'NO', '2022-05-20 12:24:07', '2022-05-20 13:04:05'),
(6, 2, 2, NULL, 'satya', NULL, NULL, NULL, NULL, NULL, 'lead02@gmail.com', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, '1', '1', NULL, 'lead 2 admin', '4', NULL, '1', NULL, NULL, 'INACTIVE', 'NO', '2022-05-20 12:46:58', '2022-05-20 13:04:01'),
(7, 2, 2, NULL, 'emp lead', NULL, NULL, NULL, NULL, NULL, 'emplead@gmail.com', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, '1', '1', NULL, NULL, '4', NULL, '1', NULL, NULL, 'ACTIVE', 'NO', '2022-05-21 06:13:46', '2022-05-21 06:13:46'),
(8, 2, 4, NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, 'aaa@gffg.fd', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, '1', '1', NULL, NULL, '2', NULL, '1', NULL, NULL, 'ACTIVE', 'NO', '2022-05-21 11:25:37', '2022-05-21 11:25:37'),
(9, 2, 4, NULL, 'sss', NULL, NULL, NULL, NULL, NULL, 'sss@gm.trh', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, '1', '1', NULL, NULL, '4', NULL, '1', NULL, NULL, 'ACTIVE', 'NO', '2022-05-21 11:26:38', '2022-05-21 11:26:38'),
(10, 2, 2, NULL, 'ee', NULL, NULL, NULL, NULL, NULL, 'ee@rg.trh', NULL, NULL, NULL, NULL, '1', NULL, NULL, '1', NULL, '1', '1', NULL, NULL, '4', NULL, '1', NULL, NULL, 'ACTIVE', 'NO', '2022-05-21 11:26:54', '2022-05-23 07:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `admin_id`, `creator_id`, `name`, `has_default`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'type 1', 'NO', '2022-05-19 12:45:13', '2022-05-19 12:45:13');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_10_26_054957_create_admins_table', 1),
(4, '2021_10_26_054958_create_admin_password_resets_table', 1),
(5, '2021_10_27_080728_create_statuses_table', 1),
(6, '2021_10_27_080854_create_sources_table', 1),
(7, '2021_10_27_100341_create_countries_table', 1),
(8, '2021_10_27_100542_create_languages_table', 1),
(9, '2021_10_27_103400_create_leads_table', 1),
(10, '2021_11_09_062437_create_customers_table', 1),
(11, '2021_11_09_062957_create_customer_billings_table', 1),
(12, '2021_11_09_063323_create_customer_shippings_table', 1),
(13, '2021_11_09_070205_create_currencies_table', 1),
(14, '2021_11_09_073329_create_groups_table', 1),
(15, '2021_11_16_070419_create_products_table', 1),
(16, '2021_11_16_113249_create_proposals_table', 1),
(17, '2021_11_17_114404_create_proposal_items_table', 1),
(18, '2021_11_18_080542_create_tasks_table', 1),
(19, '2021_11_18_081512_create_notes_table', 1),
(20, '2021_11_18_082003_create_attachments_table', 1),
(21, '2021_12_14_112951_create_employees_table', 1),
(22, '2021_12_14_112952_create_employee_password_resets_table', 1),
(23, '2021_12_14_115133_create_employee__leaves_table', 1),
(24, '2021_12_14_115149_create_employee_assets_table', 1),
(25, '2021_12_31_060245_create_invoices_table', 1),
(26, '2021_12_31_060319_create_invoice_items_table', 1),
(27, '2022_01_11_131136_create_superadmins_table', 1),
(28, '2022_01_11_131137_create_superadmin_password_resets_table', 1),
(29, '2022_01_24_095258_create_projects_table', 1),
(30, '2022_02_03_115312_create_remainders_table', 1),
(31, '2022_02_07_135016_create_todolists_table', 1),
(32, '2022_02_08_055247_create_company_employees_table', 1),
(33, '2022_02_08_131922_create_expenses_table', 1),
(34, '2022_02_09_112903_create_milestones_table', 1),
(35, '2022_02_10_110111_create_employee_positions_table', 1),
(36, '2022_02_10_110132_create_project_statuses_table', 1),
(37, '2022_02_10_110151_create_expense_categories_table', 1),
(38, '2022_02_10_134315_create_employee_departments_table', 1),
(39, '2022_02_10_134412_create_employee_branches_table', 1),
(40, '2022_02_13_160614_create_company_branches_table', 1),
(41, '2022_02_14_152114_create_employee_contracts_table', 1),
(42, '2022_02_21_083118_create_buckets_table', 1),
(43, '2022_02_25_083320_create_tickets_table', 1),
(44, '2022_02_25_083606_create_ticket_notes_table', 1),
(45, '2022_02_25_094338_create_company_tables_table', 1),
(46, '2022_03_09_092224_create_announcements_table', 1),
(47, '2022_03_16_075817_create_emailsettings_table', 1),
(48, '2022_03_18_055550_create_leadreminders_table', 1),
(49, '2022_03_22_123344_create_permission_tables', 1),
(50, '2022_03_22_125510_create_admin_permission_groups_table', 1),
(51, '2022_03_30_093935_create_payment_gateways_table', 1),
(52, '2022_04_07_044049_create_leave_types_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `milestones`
--

CREATE TABLE `milestones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_customer` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'App\\Admin', 2),
(2, 'App\\Admin', 3),
(2, 'App\\Admin', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `related` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_private` enum('PRIVATE','NOTPRIVATE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NOTPRIVATE',
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
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `gateway_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sandbox` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_group_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission_group_id`, `name`, `slug`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, '1', 'lead_own', 'View Own', 'admin', '2022-05-19 01:13:56', '2022-05-19 01:13:56'),
(2, '1', 'lead_global', 'View Global', 'admin', '2022-05-19 01:13:56', '2022-05-19 01:13:56'),
(3, '1', 'lead_create', 'Create', 'admin', '2022-05-19 01:13:56', '2022-05-19 01:13:56'),
(4, '1', 'lead_update', 'Update', 'admin', '2022-05-19 01:13:56', '2022-05-19 01:13:56'),
(5, '1', 'lead_delete', 'Delete', 'admin', '2022-05-19 01:13:56', '2022-05-19 01:13:56'),
(6, '2', 'customer_own', 'View Own', 'admin', '2022-05-21 07:23:21', '2022-05-21 07:23:21'),
(7, '2', 'customer_global', 'View Global', 'admin', '2022-05-21 07:23:21', '2022-05-21 07:23:21'),
(8, '2', 'customer_create', 'Create', 'admin', '2022-05-21 07:23:21', '2022-05-21 07:23:21'),
(9, '2', 'customer_update', 'Update', 'admin', '2022-05-21 07:23:21', '2022-05-21 07:23:21'),
(10, '2', 'customer_delete', 'Delete', 'admin', '2022-05-21 07:23:21', '2022-05-21 07:23:21'),
(11, '3', 'projects_own', 'View Own', 'admin', '2022-05-21 07:24:58', '2022-05-21 07:24:58'),
(12, '3', 'projects_global', 'View Global', 'admin', '2022-05-21 07:24:58', '2022-05-21 07:24:58'),
(13, '3', 'projects_create', 'Create', 'admin', '2022-05-21 07:24:58', '2022-05-21 07:24:58'),
(14, '3', 'projects_update', 'Update', 'admin', '2022-05-21 07:24:58', '2022-05-21 07:24:58'),
(15, '3', 'projects_delete', 'Delete', 'admin', '2022-05-21 07:24:58', '2022-05-21 07:24:58'),
(16, '4', 'tickets_own', 'View Own', 'admin', '2022-05-21 11:04:12', '2022-05-21 11:04:12'),
(17, '4', 'tickets_global', 'View Global', 'admin', '2022-05-21 11:04:12', '2022-05-21 11:04:12'),
(18, '4', 'tickets_create', 'Create', 'admin', '2022-05-21 11:04:12', '2022-05-21 11:04:12'),
(19, '4', 'tickets_update', 'Update', 'admin', '2022-05-21 11:04:12', '2022-05-21 11:04:12'),
(20, '4', 'tickets_delete', 'Delete', 'admin', '2022-05-21 11:04:12', '2022-05-21 11:04:12'),
(21, '5', 'tasks_own', 'View Own', 'admin', '2022-05-21 11:56:31', '2022-05-21 11:56:31'),
(22, '5', 'tasks_global', 'View Global', 'admin', '2022-05-21 11:56:31', '2022-05-21 11:56:31'),
(23, '5', 'tasks_create', 'Create', 'admin', '2022-05-21 11:56:31', '2022-05-21 11:56:31'),
(24, '5', 'tasks_update', 'Update', 'admin', '2022-05-21 11:56:31', '2022-05-21 11:56:31'),
(25, '5', 'tasks_delete', 'Delete', 'admin', '2022-05-21 11:56:31', '2022-05-21 11:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `admin_id`, `creator_id`, `name`, `has_default`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Product 1', 'NO', NULL, '2022-05-19 12:44:07', '2022-05-19 12:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_manager` bigint(20) DEFAULT NULL,
  `account_manager` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` bigint(20) DEFAULT NULL,
  `estimated_hours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status` enum('REQUESTED','APPROVED') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'REQUESTED',
  `has_active` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `admin_id`, `created_by`, `customer_id`, `employee_id`, `project_manager`, `account_manager`, `name`, `billing_type`, `status`, `rate`, `currency_id`, `estimated_hours`, `start_date`, `deadline`, `description`, `project_status`, `has_active`, `created_at`, `updated_at`) VALUES
(11, 2, '4', 4, '', NULL, NULL, 'ede', NULL, '1', NULL, 1, '4', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-05-21 11:49:26', '2022-05-21 11:49:26'),
(12, 2, '4', 4, '2', NULL, NULL, 'eecs', NULL, '1', NULL, 1, '3', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-05-21 11:50:02', '2022-05-21 11:50:02'),
(13, 2, '4', 4, '4', NULL, NULL, 'e3e3', NULL, '1', NULL, 1, '3', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-05-21 11:50:12', '2022-05-21 11:50:12'),
(14, 2, '2', 4, '', NULL, NULL, 'evvr', NULL, '1', NULL, 1, '2', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-05-21 11:50:32', '2022-05-21 11:50:32'),
(15, 2, '2', 4, '4', NULL, NULL, 'eee', NULL, '1', NULL, 1, '1', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-05-21 11:50:52', '2022-05-21 11:50:52'),
(16, 2, '2', 4, '', NULL, NULL, '111', NULL, '1', NULL, 1, '1', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-05-21 11:51:11', '2022-05-21 11:51:11'),
(17, 2, '2', 4, '2', NULL, NULL, '222', NULL, '1', NULL, 1, '2', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-05-21 11:51:27', '2022-05-21 11:51:27'),
(18, 2, '2', 4, '4', NULL, NULL, '333', NULL, '1', NULL, 1, '3', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-05-21 11:52:00', '2022-05-21 11:52:00'),
(19, 2, '3', 4, '', NULL, NULL, 'a1 project', NULL, '1', NULL, 1, '3', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-06-01 07:36:20', '2022-06-01 07:36:20'),
(20, 2, '2', 4, '3', NULL, NULL, 'a11 project', NULL, '1', NULL, 1, '5', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-06-01 07:37:20', '2022-06-01 07:37:20'),
(21, 2, '2', 4, '3', NULL, NULL, 'a111', NULL, '1', NULL, 1, '3', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-06-01 07:39:38', '2022-06-01 07:39:38'),
(22, 2, '2', 4, '', NULL, NULL, 'cust project', NULL, '1', NULL, 1, '2', NULL, NULL, NULL, 'REQUESTED', 'Yes', '2022-06-01 07:52:22', '2022-06-01 07:52:22'),
(23, 2, '2', 10, '3', NULL, NULL, 'testproject', NULL, '1', NULL, 1, '3', '2 July, 2022', '15 June, 2022', 'description test', 'REQUESTED', 'Yes', '2022-06-01 09:52:45', '2022-06-01 09:52:45'),
(24, 2, '2', 4, '4', NULL, NULL, 'projectest2', 'ProjectHours', 'On Hold', '45', 1, '56', '17 June, 2022', '29 June, 2022', 'description test56', 'REQUESTED', 'Yes', '2022-06-01 10:20:06', '2022-06-01 10:20:06'),
(25, 2, '2', 10, '2,4', 2, 2, 'ex project name', 'ProjectHours', 'On Hold', '67', 1, NULL, '23 June, 2022', '2 July, 2022', 'description67', 'REQUESTED', 'Yes', '2022-06-06 12:59:10', '2022-06-06 12:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `project_statuses`
--

CREATE TABLE `project_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_statuses`
--

INSERT INTO `project_statuses` (`id`, `admin_id`, `creator_id`, `name`, `has_default`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'done', 'NO', '2022-05-19 12:44:49', '2022-05-19 12:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposal_subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposal_discountamt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_form` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposal_adjustamt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposal_total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `admin_id`, `creator_id`, `subject`, `related`, `related_id`, `start_date`, `end_date`, `currency_id`, `discount`, `status`, `assigned`, `to_name`, `company`, `address`, `document`, `city`, `state`, `country`, `email`, `zipcode`, `phone`, `discount_type`, `proposal_subtotal`, `proposal_discountamt`, `discount_form`, `proposal_adjustamt`, `proposal_total`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'test proposal', 'lead', 10, '2022-07-07T00:00:00.000Z', '2022-07-30T00:00:00.000Z', NULL, NULL, 'open', '2', 'proposal@gmail.com', NULL, 'test address', NULL, 'bbsr', 'odisha', NULL, 'proposal@gmail.com', '751910', NULL, NULL, '105000', '2100.00', '2', '2', '102902.00', '2022-07-07 06:43:38', '2022-07-07 06:43:38'),
(2, 2, 2, 'bhbhj', 'lead', 10, '2022-07-01T00:00:00.000Z', '2022-07-07T00:00:00.000Z', NULL, NULL, 'open', '3', 'test@gmail.com', NULL, 'bbsr', NULL, 'bbsr', 'odisha', NULL, 'test@gmail.com', '751010', NULL, NULL, '1050000', '52500.00', '5', '2', '997502.00', '2022-07-07 06:46:41', '2022-07-07 06:46:41'),
(3, 2, 2, 'bjhbnjkbnk', NULL, 10, '2022-07-06T00:00:00.000Z', '2022-07-15T00:00:00.000Z', '1', NULL, 'open', '4', 'aaa@gmail.com', NULL, 'aaa', NULL, 'aaa', 'sss', NULL, 'aaa@gmail.com', '787878', NULL, NULL, '12832.05', '128.32', '1', '2', '12705.73', '2022-07-07 07:55:03', '2022-07-07 07:55:03'),
(4, 2, 2, NULL, 'customer', 10, NULL, NULL, NULL, NULL, 'Draft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 07:55:22', '2022-07-07 07:55:22'),
(5, 2, 2, 'dsds', 'lead', 10, NULL, NULL, NULL, NULL, 'Draft', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 07:57:15', '2022-07-07 07:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `proposal_items`
--

CREATE TABLE `proposal_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `related` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposal_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposal_items`
--

INSERT INTO `proposal_items` (`id`, `related`, `proposal_id`, `related_id`, `item_name`, `description`, `qty`, `rate`, `tax`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'lead', '1', 10, 'item 1', 'item1 desc', '10', '10000', '5', '105000', '2022-07-07 06:43:38', '2022-07-07 06:43:38'),
(2, 'lead', '2', 10, 'item 1', 'item 1 desc', '100', '10000', '5', '1050000', '2022-07-07 06:46:41', '2022-07-07 06:46:41'),
(3, NULL, '3', 10, 'aaa', 'aaa', '11', '1111', '5', '12832.05', '2022-07-07 07:55:03', '2022-07-07 07:55:03'),
(4, 'customer', '4', 10, NULL, NULL, '1', NULL, '0', '0', '2022-07-07 07:55:22', '2022-07-07 07:55:22'),
(5, 'lead', '5', 10, NULL, NULL, '1', NULL, '0', '0', '2022-07-07 07:57:15', '2022-07-07 07:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `remainders`
--

CREATE TABLE `remainders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `related_id` bigint(20) DEFAULT NULL,
  `related` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remainder_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remainder_date` datetime DEFAULT NULL,
  `remainder_sentbeforedate` datetime DEFAULT NULL,
  `remainder_before` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PENDING','SENT','NOTSENT') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NOTSENT',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `admin_id`, `name`, `alias_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 2, 'rixosys1_admin', NULL, 'admin', '2022-05-18 19:42:01', '2022-05-18 19:42:01'),
(2, 2, 'manager', NULL, 'admin', '2022-05-19 01:17:50', '2022-05-19 01:17:50'),
(3, 2, '_admin', NULL, 'admin', '2022-05-20 12:24:07', '2022-05-20 12:24:07'),
(4, 2, '_admin', NULL, 'admin', '2022-05-20 12:46:58', '2022-05-20 12:46:58');

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
(3, 2),
(5, 2),
(6, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(13, 2),
(15, 2),
(16, 2),
(18, 2),
(21, 2),
(23, 2),
(24, 2),
(25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sources`
--

CREATE TABLE `sources` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sources`
--

INSERT INTO `sources` (`id`, `admin_id`, `creator_id`, `name`, `has_default`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'Source 1', 'NO', '2022-05-19 12:43:58', '2022-05-19 12:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `has_default` enum('YES','NO') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NO',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `admin_id`, `creator_id`, `name`, `has_default`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'status 1', 'NO', '2022-05-19 12:43:46', '2022-05-19 12:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `superadmins`
--

CREATE TABLE `superadmins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `superadmin_password_resets`
--

CREATE TABLE `superadmin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_for_and_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `milestone` bigint(20) DEFAULT NULL,
  `hour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `repeat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `related_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `followers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_startdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_enddate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_startdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assign_enddate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `admin_id`, `creator_id`, `task_type`, `task_for_and_by`, `subject`, `milestone`, `hour`, `start_date`, `end_date`, `priority`, `currency_id`, `repeat`, `lead`, `related`, `related_id`, `assigned`, `followers`, `description`, `project_startdate`, `project_enddate`, `assign_startdate`, `assign_enddate`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'eee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVE', NULL, NULL),
(2, 2, '2', NULL, NULL, NULL, NULL, NULL, '1970-01-01', '1970-01-01', NULL, NULL, NULL, NULL, 'lead', '10', NULL, NULL, NULL, '1970-01-01', '1970-01-01', '1970-01-01', '1970-01-01', 'ACTIVE', '2022-07-07 07:33:53', '2022-07-07 07:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `assign_id` int(255) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `admin_id`, `creator_id`, `customer_id`, `assign_id`, `title`, `description`, `images`, `app`, `status`, `priority`, `type`, `created_at`, `updated_at`) VALUES
(21, 2, 2, 4, 4, NULL, NULL, NULL, 'Website', 'Open', 'normal', 'Issue', '2022-05-21 11:47:13', '2022-05-21 11:47:13'),
(22, 2, 2, 4, 2, NULL, NULL, NULL, 'Website', 'Open', 'normal', 'Issue', '2022-05-21 11:47:33', '2022-05-21 11:47:33'),
(23, 2, 2, 4, 4, 'defe', 'wsd', NULL, 'Website', 'Open', 'normal', 'Issue', '2022-05-21 11:48:35', '2022-05-21 11:48:35'),
(24, 2, 4, 4, 2, 'es', NULL, NULL, 'Website', 'Open', 'critical', 'Issue', '2022-05-21 11:48:43', '2022-05-23 08:16:00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_notes`
--

CREATE TABLE `ticket_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `has_internal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todolists`
--

CREATE TABLE `todolists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `creator_id` bigint(20) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `temp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_change_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin_id`, `name`, `customer_id`, `email`, `email_verified_at`, `password`, `temp_password`, `force_change_password`, `profile_pic`, `facebook`, `twitter`, `instagram`, `linkedin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 'customer 1', '2', 'customer1@gmail.com', NULL, '$2y$10$9dzhgtWeau6GKU488aLTFuRpWYcTxxml0NVsJqvDSsGAau1gvTee.', 'YINMaMAr', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 06:50:06', '2022-05-21 06:50:06'),
(2, 2, 'hhuiui', '3', 'uihih@uhui.iji', NULL, '$2y$10$GjWcsxwRIcatG8bw679sn.ksb/kxZBzHBio/SYk0GdsJpo/eZ0K3e', 'nonZl1bd', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 08:24:01', '2022-05-21 08:24:01'),
(3, 2, 'admin customer', '4', 'customer01@gmail.com', NULL, '$2y$10$7.IaPiWmDMiJpasuZLHL/e/YWPneYOQphy2.g/PyHEPG9pfkH8ZMu', '4Qw7EiFz', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 09:40:48', '2022-05-21 09:40:48'),
(4, 2, 'emp customer', '5', 'edv@ef.er', NULL, '$2y$10$lVLo2KajRS53KWzRl7RWZ.4kTprCg0N5i5uPVSONyD9/SEkkNJk0e', 'LzC6ZCaW', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 09:41:33', '2022-05-21 09:41:33'),
(5, 2, 'employee', '6', 'empo@ef.rf3ef', NULL, '$2y$10$PxpadgqIxB9AMUHSfJVjrOET4NVA992xWdb20EkagzYHABQDpLyxq', 'DbE1pJyU', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 09:42:19', '2022-05-21 09:42:19'),
(6, 2, 'efew', '7', 'hued@er.tg', NULL, '$2y$10$sHyCiS3w.0z96y8nlqGDduXKw.3P.HcOJ9NR/7eCzSaLD5wesDL5y', '4HmlchEZ', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 11:29:45', '2022-05-21 11:29:45'),
(7, 2, 'efedce', '8', 'fefcw@r.trh', NULL, '$2y$10$1XRnfdOZAEk/W0fUcWoS4eOjyV47YEnPbMTZD6iKJzcNkw.bJpGEe', 'vcHHRW4u', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-21 11:32:15', '2022-05-21 11:32:15'),
(8, 2, 'new emp cust', '9', 'cust@fg.rt', NULL, '$2y$10$tPVRUo7ZQKGSAT4m0m7o2eiodSlfLBf7sBKhhLN07PIG/CmBculh2', '1MAwNly3', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 06:17:58', '2022-05-23 06:17:58'),
(9, 2, 'ex cust', '10', 'ecust@gmail.com', NULL, '$2y$10$jmZ4T/93Pi3zc.uc6ZCb6ezsqeL3aAL95UPMg8Ujpn/mK0I58u9Ea', 'Bd20ATZ6', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-23 08:18:54', '2022-05-23 08:18:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `admin_permission_groups`
--
ALTER TABLE `admin_permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buckets`
--
ALTER TABLE `buckets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_branches`
--
ALTER TABLE `company_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_employees`
--
ALTER TABLE `company_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_tables`
--
ALTER TABLE `company_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_billings`
--
ALTER TABLE `customer_billings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_shippings`
--
ALTER TABLE `customer_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailsettings`
--
ALTER TABLE `emailsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_assets`
--
ALTER TABLE `employee_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_branches`
--
ALTER TABLE `employee_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_contracts`
--
ALTER TABLE `employee_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_departments`
--
ALTER TABLE `employee_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_password_resets`
--
ALTER TABLE `employee_password_resets`
  ADD KEY `employee_password_resets_email_index` (`email`),
  ADD KEY `employee_password_resets_token_index` (`token`);

--
-- Indexes for table `employee_positions`
--
ALTER TABLE `employee_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee__leaves`
--
ALTER TABLE `employee__leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leadreminders`
--
ALTER TABLE `leadreminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `milestones`
--
ALTER TABLE `milestones`
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
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_statuses`
--
ALTER TABLE `project_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposal_items`
--
ALTER TABLE `proposal_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remainders`
--
ALTER TABLE `remainders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sources`
--
ALTER TABLE `sources`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superadmins`
--
ALTER TABLE `superadmins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superadmin_password_resets`
--
ALTER TABLE `superadmin_password_resets`
  ADD KEY `superadmin_password_resets_email_index` (`email`),
  ADD KEY `superadmin_password_resets_token_index` (`token`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_notes`
--
ALTER TABLE `ticket_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todolists`
--
ALTER TABLE `todolists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_permission_groups`
--
ALTER TABLE `admin_permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buckets`
--
ALTER TABLE `buckets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_branches`
--
ALTER TABLE `company_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_employees`
--
ALTER TABLE `company_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_tables`
--
ALTER TABLE `company_tables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer_billings`
--
ALTER TABLE `customer_billings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customer_shippings`
--
ALTER TABLE `customer_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emailsettings`
--
ALTER TABLE `emailsettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_assets`
--
ALTER TABLE `employee_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_branches`
--
ALTER TABLE `employee_branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_contracts`
--
ALTER TABLE `employee_contracts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_departments`
--
ALTER TABLE `employee_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_positions`
--
ALTER TABLE `employee_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee__leaves`
--
ALTER TABLE `employee__leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `leadreminders`
--
ALTER TABLE `leadreminders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `milestones`
--
ALTER TABLE `milestones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `project_statuses`
--
ALTER TABLE `project_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `proposal_items`
--
ALTER TABLE `proposal_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `remainders`
--
ALTER TABLE `remainders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sources`
--
ALTER TABLE `sources`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `superadmins`
--
ALTER TABLE `superadmins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ticket_notes`
--
ALTER TABLE `ticket_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todolists`
--
ALTER TABLE `todolists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
