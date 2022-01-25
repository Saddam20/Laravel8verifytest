-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 06:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verifytest`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `ban_id` bigint(20) UNSIGNED NOT NULL,
  `ban_title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ban_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sallary` int(11) DEFAULT NULL,
  `ban_btn` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_url` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_creator` int(11) NOT NULL,
  `ban_slug` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ban_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`ban_id`, `ban_title`, `ban_subtitle`, `sallary`, `ban_btn`, `ban_url`, `ban_creator`, `ban_slug`, `ban_status`, `created_at`, `updated_at`) VALUES
(1, 'Allah know the best', 'Allah see all', NULL, 'Read More', '####', 1, 'B61e61fd13e1e7', 1, '2022-01-18 02:02:57', '2022-01-18 03:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `basics`
--

CREATE TABLE `basics` (
  `basic_id` bigint(20) UNSIGNED NOT NULL,
  `basic_title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_flogo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basics`
--

INSERT INTO `basics` (`basic_id`, `basic_title`, `basic_subtitle`, `basic_details`, `basic_logo`, `basic_favicon`, `basic_flogo`, `basic_status`, `created_at`, `updated_at`) VALUES
(1, 'Creative Shaper.', 'Software it company', 'Good good', 'logo.png', 'favicon_1642847872_5421802.jpg', 'flogo.png', 1, '2022-01-22 03:21:42', '2022-01-22 10:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `contactuses`
--

CREATE TABLE `contactuses` (
  `conus_id` bigint(20) UNSIGNED NOT NULL,
  `conus_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conus_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conus_email` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conus_sub` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conus_mess` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conus_slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conus_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contactuses`
--

INSERT INTO `contactuses` (`conus_id`, `conus_name`, `conus_phone`, `conus_email`, `conus_sub`, `conus_mess`, `conus_slug`, `conus_status`, `created_at`, `updated_at`) VALUES
(1, 'saddam', '01405498258', 'iamsaddam2020@gmail.com', 'Easy installation via Composer\r\nIntervention Image doesn\'t require Laravel or any other framework at all. If you want to use it as is, you just have to require the composer autoload file to instatiate image objects as shown in the following example.\r\n\r\n', 'Intervention Image doesn\'t require Laravel or any other framework at all. If you want to use it as is, you just have to require the composer autoload file to instatiate image objects as shown in the following example.\r\n\r\n', 'CR5824686136', 1, '2022-01-24 03:31:58', '2022-01-24 06:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `contact_information`
--

CREATE TABLE `contact_information` (
  `cont_id` bigint(20) UNSIGNED NOT NULL,
  `cont_phone1` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_phone2` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_phone3` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_phone4` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_email1` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_email2` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_email3` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_email4` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_add1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_add2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_add3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_add4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cont_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_information`
--

INSERT INTO `contact_information` (`cont_id`, `cont_phone1`, `cont_phone2`, `cont_phone3`, `cont_phone4`, `cont_email1`, `cont_email2`, `cont_email3`, `cont_email4`, `cont_add1`, `cont_add2`, `cont_add3`, `cont_add4`, `cont_status`, `created_at`, `updated_at`) VALUES
(1, '01405498258', '01771015649', '01405498258', '01405498258', 'iamsaddam2020@gmail.com', 'iamsaddam2020@gmail.com', 'iamsaddam2020@gmail.com', 'iamsaddam2020@gmail.com', 'The next step is to decide, if you want to integrate Intervention Image into the Laravel framework. If you want to use the library with Laravel, just skip the following step and continue with the description of Laravel Integration.\r\n\r\n', 'The next step is to decide, if you want to integrate Intervention Image into the Laravel framework. If you want to use the library with Laravel, just skip the following step and continue with the description of Laravel Integration.\r\n\r\n', 'The next step is to decide, if you want to integrate Intervention Image into the Laravel framework. If you want to use the library with Laravel, just skip the following step and continue with the description of Laravel Integration.\r\n\r\n', 'The next step is to decide, if you want to integrate Intervention Image into the Laravel framework. If you want to use the library with Laravel, just skip the following step and continue with the description of Laravel Integration.\r\n\r\n', 1, '2022-01-24 03:20:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_15_051057_create_banners_table', 1),
(6, '2022_01_17_100738_create_roles_table', 1),
(7, '2022_01_22_153723_create_basics_table', 2),
(8, '2022_01_23_093737_create_social_media_table', 3),
(9, '2022_01_23_095213_create_contact_information_table', 4),
(10, '2022_01_24_111841_create_contactuses_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `role_slug`, `role_status`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'UR56423158', 1, '2022-01-19 19:20:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `sm_id` bigint(20) UNSIGNED NOT NULL,
  `sm_facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_pinterest` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_skype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_behance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_dribbble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sm_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`sm_id`, `sm_facebook`, `sm_twitter`, `sm_linkedin`, `sm_instagram`, `sm_pinterest`, `sm_google`, `sm_youtube`, `sm_skype`, `sm_behance`, `sm_dribbble`, `sm_status`, `created_at`, `updated_at`) VALUES
(5, 'facebook.com', 'twitter.com', 'linkedin.com', 'instagram.com', 'pinterest', 'google.com', 'youtube.com', NULL, 'behance', 'dribble', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `role_id`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Saddam', NULL, 'iamsaddam2020@gmail.com', NULL, '$2y$10$J6zCCDslXYS3hdzGqNVEhOatDMrKgCTg6/o7huDZcZyk7jhxIy2a6', 1, NULL, NULL, '2022-01-18 02:01:57', '2022-01-18 02:01:57'),
(2, 'Rakib hasan', '01405498258', 'rakibhasan@gmail.com', NULL, '$2y$10$qDusIYH5EqTek5GluFVeEOSa8JvNHVV6Q4Ynu8DL6QzR9w3OZnNBO', 1, '', NULL, '2022-01-22 04:41:58', NULL),
(3, 'Lepon2', '01771015649', 'iamsaddam20@gmail.com', NULL, '$2y$10$0302D0H7twpi/tz3nDu9h.c/msTKCWcNWOYxggy.Xiszsi0QjOzfG', 1, '', NULL, '2022-01-22 04:51:07', NULL),
(4, 'Lepon2', '01771015649', 'iamsaddam@gmail.com', NULL, '$2y$10$T7hgrO0/Q7MXwbvGR/GckOASXch0rRqr0H3zIt66CSTWxUwbClaxW', 1, '', NULL, '2022-01-22 04:55:14', NULL),
(5, 'Lepon2', '01771015649', 'lepon2saddam@gmail.com', NULL, '$2y$10$ulhnxFl/FkeB2RFxWKxYYOsen/jJ39nEyIvlIqRXqP..6WKuYlyZ.', 1, 'user_5_1642827982_7536612.jpg', NULL, '2022-01-22 05:06:22', '2022-01-22 05:06:23'),
(6, 'zahid', '1771015649', 'zahid@gmail.com', NULL, '$2y$10$KJ4EdaQ9mrjlQmxQRbMZKOuEOeR0UH3lmVi4z9B/FLyY6Sp1OfNlq', 1, 'user_6_1642828436_2365054.jpg', NULL, '2022-01-22 05:13:56', '2022-01-22 05:13:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `basics`
--
ALTER TABLE `basics`
  ADD PRIMARY KEY (`basic_id`);

--
-- Indexes for table `contactuses`
--
ALTER TABLE `contactuses`
  ADD PRIMARY KEY (`conus_id`);

--
-- Indexes for table `contact_information`
--
ALTER TABLE `contact_information`
  ADD PRIMARY KEY (`cont_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `roles_role_name_unique` (`role_name`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`sm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `ban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `basics`
--
ALTER TABLE `basics`
  MODIFY `basic_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactuses`
--
ALTER TABLE `contactuses`
  MODIFY `conus_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_information`
--
ALTER TABLE `contact_information`
  MODIFY `cont_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `sm_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
