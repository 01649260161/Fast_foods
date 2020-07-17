-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 08, 2020 at 02:53 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_foods`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Minh Hiển', 'tranminhhien130398@gmail.com', NULL, '$2y$10$b6l5opOD.vUWRNkfRuLE.uJxNgCJf7mU1KeP7ZH6ahVxpwZ55uMvC', NULL, '2019-12-06 22:05:03', '2019-12-06 22:05:03'),
(5, 'test', 'test1@gmail.com', NULL, '$2y$10$X0xDrxt7huaHVpkN8vQ.Ke0RuF.tvAqvhkyQK.TmqsBsbLVMw.XNS', NULL, '2020-06-27 23:29:21', '2020-06-27 23:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `location_id`, `image`, `intro`, `desc`, `link`, `created_at`, `updated_at`) VALUES
(1, 'không có', 1, '/files/1/banner1.jpg', '<p>main banner</p>', '<p>main banner</p>', 'No link', '2019-12-07 06:59:34', '2019-12-07 06:59:34'),
(2, 'không có', 2, '/files/1/ab1.png', '<h4>TRIPLE HAMBURGER WITH CHEESE MEAL</h4>\r\n<p class="mt-2 text-left">Integer pulvinar leo id viverra feugiat.<strong class="text-capitalize"> Pellentesque libero justo, semper at tempus vel, ultrices in sed ligula. Nulla uter sollicitudin velit.</strong> Sed porttitor orci vel fermentum elit maximus. Curabitur ut turpis massa in condimentum libero. Pellentesque maximus Pellentesque libero justo Nulla uter sollicitudin velit. Sed porttitor orci vel ferm semper at vel, ultrices in ligula semper at vel.Curabitur ut turpis massa in condimentum libero.</p>', '<h4>TRIPLE HAMBURGER WITH CHEESE MEAL</h4>\r\n<p class="mt-2 text-left">Integer pulvinar leo id viverra feugiat.<strong class="text-capitalize"> Pellentesque libero justo, semper at tempus vel, ultrices in sed ligula. Nulla uter sollicitudin velit.</strong> Sed porttitor orci vel fermentum elit maximus. Curabitur ut turpis massa in condimentum libero. Pellentesque maximus Pellentesque libero justo Nulla uter sollicitudin velit. Sed porttitor orci vel ferm semper at vel, ultrices in ligula semper at vel.Curabitur ut turpis massa in condimentum libero.</p>', 'No link', '2019-12-07 07:04:52', '2019-12-07 07:05:23'),
(3, 'không có', 3, '/files/1/1.jpg', '<p>sale2</p>', '<p>sale2</p>', 'No link', '2019-12-07 07:06:01', '2019-12-07 07:06:01'),
(4, 'không có', 4, '/files/1/2.jpg', '<p>sale3</p>', '<p>sale3</p>', 'No link', '2019-12-07 07:06:23', '2019-12-07 07:06:23'),
(5, 'không có', 5, '/files/1/3.jpg', '<p>sale4</p>', '<p>sale4</p>', 'No link', '2019-12-07 07:06:56', '2019-12-07 07:15:17'),
(6, 'không có', 6, '/files/1/4.jpg', '<p>sale5</p>', '<p>sale5</p>', 'No link', '2019-12-07 07:07:18', '2019-12-07 07:15:25'),
(7, 'không có', 7, '/files/1/test1.png', '<p>sale6</p>', '<p>sale6</p>', 'No link', '2019-12-07 07:11:39', '2019-12-07 07:11:39'),
(8, 'không có', 8, '/files/1/test2.png', '<p>sale7</p>', '<p>sale7</p>', 'No link', '2019-12-07 07:11:56', '2019-12-07 07:11:56'),
(9, 'không có', 9, '/files/1/test3.png', '<p>sale8</p>', '<p>sale8</p>', 'No link', '2019-12-07 07:12:14', '2019-12-07 07:12:14'),
(10, 'không có', 10, '/files/1/test4.jpg', '<p>sale9</p>', '<p>sale9</p>', 'No link', '2019-12-07 07:12:28', '2019-12-07 07:12:28');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `value`, `default`, `created_at`, `updated_at`) VALUES
(8, 'email', 'tranminhhien130398@gmail.com', '', '2020-06-28 04:31:53', '2020-06-28 04:31:53'),
(9, 'phone', '0349260161', '', '2020-06-28 04:31:53', '2020-06-28 04:31:53'),
(10, 'address', '<p>Số 87 ng&otilde; 195 Phố Trần Cung</p>\r\n<div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;">&nbsp;</div>', '', '2020-06-28 04:31:53', '2020-06-28 04:31:53'),
(11, 'web_intro', '<p class="my-3">Donec consequat sam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus</p>\r\n<p>Id quod possimusapien ut leo cursus rhoncus. Nullam dui mi, vulputate ac metus at, semper varius orci.</p>', '', '2020-06-28 04:31:53', '2020-06-28 04:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `content_category`
--

CREATE TABLE IF NOT EXISTS `content_category` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_category`
--

INSERT INTO `content_category` (`id`, `name`, `slug`, `images`, `intro`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Đồ Ăn Nhanh', 'do-an-nhanh', '/files/1/1.jpg', '<p>Đồ Ăn Nhanh</p>', '<p>Đồ Ăn Nhanh</p>', '2019-12-08 06:07:28', '2019-12-08 06:07:28'),
(2, 'Thức uống mùa hè', 'thuc-uong-mua-he', '/files/1/ab1.png', '<p>Thức uống m&ugrave;a h&egrave;</p>', '<p>Thức uống m&ugrave;a h&egrave;</p>', '2019-12-08 06:07:54', '2019-12-08 06:07:54'),
(3, 'ẩm thực vỉa hè', 'am-thuc-via-he', '/files/1/Trangmieng/apple-hotpie.png', '<p>ẩm thực vỉa h&egrave;</p>', '<p>ẩm thực vỉa h&egrave;</p>', '2019-12-08 06:08:24', '2019-12-08 06:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `content_pages`
--

CREATE TABLE IF NOT EXISTS `content_pages` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_post`
--

CREATE TABLE IF NOT EXISTS `content_post` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_post`
--

INSERT INTO `content_post` (`id`, `name`, `slug`, `images`, `intro`, `desc`, `author_id`, `view`, `cat_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 'pizza pháp', 'pizza-phap', '/files/1/BanhBurger/images.png', '<p>Ẩm thực ng&agrave;y nay kh&aacute; đa dạng từ m&oacute;n ăn Việt, T&acirc;y, &Acirc;u, &Aacute; đ&atilde; x&acirc;m nhập v&agrave;o thị trường Việt Nam</p>', '<p>Ẩm thực ng&agrave;y nay kh&aacute; đa dạng từ m&oacute;n ăn Việt, T&acirc;y, &Acirc;u, &Aacute; đ&atilde; x&acirc;m nhập v&agrave;o thị trường Việt Nam</p>', 0, 0, 1, 0, '2019-12-08 06:10:10', '2019-12-08 06:10:10'),
(2, 'hương vị ngày tết', 'huong-vi-ngay-tet', '/files/1/4.jpg', '<p>hương vị ng&agrave;y tết</p>', '<p>hương vị ng&agrave;y tết</p>', 0, 0, 1, 0, '2019-12-08 06:11:06', '2019-12-08 06:11:06'),
(3, 'đồ uống bổ dưỡng', 'do-uong-bo-duong', '/files/1/BanhBurger/images.png', '<p>đồ uống bổ dưỡng</p>', '<p><strong>đồ uống bổ dưỡng</strong></p>', 0, 0, 2, 0, '2019-12-08 06:11:28', '2019-12-08 06:11:28'),
(4, 'xu hướng ẩm thực', 'xu-huong-am-thuc', '/files/1/Trangmieng/strawberry-mcsundae.png', '<p>xu hướng ẩm thực</p>', '<p>xu hướng ẩm thực</p>', 0, 0, 3, 0, '2019-12-08 06:11:55', '2019-12-08 06:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `content_tag`
--

CREATE TABLE IF NOT EXISTS `content_tag` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE IF NOT EXISTS `global_settings` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `name`, `value`, `default`, `created_at`, `updated_at`) VALUES
(1, 'web_name', 'TMH', '', '2019-12-07 07:17:03', '2019-12-07 07:17:03'),
(2, 'header_logo', '/files/1/capture2.PNG', '', '2019-12-07 07:17:03', '2019-12-07 07:17:03'),
(3, 'footer_logo', '/files/1/capture1.PNG', '', '2019-12-07 07:17:03', '2019-12-07 07:17:03'),
(4, 'web_intro', '<p>logo</p>', '', '2019-12-07 07:17:03', '2019-12-07 07:17:03'),
(5, 'desc', '<p>logo</p>', '', '2019-12-07 07:17:03', '2019-12-07 07:17:03');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `desc`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Header Menu', 'Header Menu', '<p>Header Menu</p>', 1, '2019-12-07 07:50:29', '2019-12-07 07:53:45');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `menu_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `name`, `type`, `params`, `link`, `icon`, `desc`, `parent_id`, `menu_id`, `sort`, `total`, `created_at`, `updated_at`) VALUES
(1, 'Menu', '7', '{"params_1":"4","params_2":"1","params_3":"","params_4":"","params_5":"","params_6":"","params_7":"Nolink"}', 'Nolink', 'fa', '<p>Header Menu</p>', 0, 1, 1, 2, '2019-12-07 07:51:45', '2019-12-08 06:13:12'),
(2, 'Category', '1', '{"params_1":"1","params_2":"1","params_3":"","params_4":"","params_5":"","params_6":"","params_7":""}', '/shop/category/1', 'fa', '<p>Category</p>', 1, 1, 1, 0, '2019-12-07 07:52:28', '2019-12-07 07:52:28'),
(3, 'New', '3', '{"params_1":"1","params_2":"1","params_3":"1","params_4":"1","params_5":"","params_6":"","params_7":""}', '/content/category/1', 'fa', '<p>New</p>', 1, 1, 1, 0, '2019-12-08 06:13:11', '2019-12-08 06:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_10_22_073943_create_admins', 1),
(4, '2019_10_22_074208_create_sellers', 1),
(5, '2019_10_22_074347_create_shippers', 1),
(6, '2019_10_22_074514_create_shop_category', 1),
(7, '2019_10_22_074625_create_shop_product', 1),
(8, '2019_10_22_074954_create_content_category', 1),
(9, '2019_10_22_075049_create_content_post', 1),
(10, '2019_10_22_075413_create_content_pages', 1),
(11, '2019_10_22_075457_create_content_tag', 1),
(12, '2019_10_22_075531_create_menus', 1),
(13, '2019_10_22_075614_create_menu_items', 1),
(14, '2019_10_22_075712_create_global_settings', 1),
(15, '2019_10_22_075754_create_shop_brands', 1),
(16, '2019_10_22_075847_create_banners', 1),
(17, '2019_10_22_075934_create_newsletters', 1),
(18, '2019_10_22_080239_create_orders', 1),
(19, '2019_10_22_080437_create_orders_detail', 1),
(22, '2020_06_28_111123_create_contacts', 3),
(24, '2020_06_28_094940_create_reviews', 4),
(25, '2020_06_28_153437_create_social_accounts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE IF NOT EXISTS `newsletters` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Trần Minh Hiển', 'tranminhhien130398@gmail.com', '2020-05-23 21:00:04', '2020-05-23 21:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_order` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shipper_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `customer_phone`, `customer_email`, `customer_note`, `customer_address`, `customer_city`, `customer_country`, `total_price`, `status`, `user_order`, `shipper_user`, `reason`, `created_at`, `updated_at`) VALUES
(1, 'Trần Minh Hiển', '0349260161', 'tranminhhien130398@gmail.com', '<p>giao nhanh</p>\r\n<div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;">&nbsp;</div>', 'Số 5D, Ngách 562/59 Thụy Khuê', 'Hà Nội', 'Việt Nam', '130000', '3', 'Trần Minh Hiển', 'Trần Minh Hiển', '', '2019-12-08 06:15:48', '2020-06-30 04:08:47'),
(2, 'Trần Minh Hiển', '0349260161', 'tranminhhien130398@gmail.com', 'Hien', 'Số 5D, Ngách 562/59 Thụy Khuê', 'Hà Nội', 'Việt Nam', '35000', '0', 'Trần Minh Hiển', '', '', '2020-05-23 20:57:48', '2020-05-23 20:57:48'),
(3, 'Trần Minh Hiển', '0349260161', 'tranminhhien130398@gmail.com', 'qweqwewq', 'Số 5D, Ngách 562/59 Thụy Khuê', 'Hà Nội', 'Việt Nam', '120000', '0', 'Trần Minh Hiển', '', '', '2020-06-27 22:02:44', '2020-06-27 22:02:44'),
(4, 'Trần Minh Hiển', '0349260161', 'tranminhhien130398@gmail.com', 'asdasds', 'Số 5D, Ngách 562/59 Thụy Khuê', 'Hà Nội', 'Việt Nam', '80000', '0', 'Trần Minh Hiển', '', '', '2020-06-30 03:50:57', '2020-06-30 03:50:57'),
(5, 'Trần Minh Hiển', '0349260161', 'tranminhhien130398@gmail.com', 'asdasdsa', 'Số 5D, Ngách 562/59 Thụy Khuê', 'Hà Nội', 'Việt Nam', '70000', '0', 'Trần Minh Hiển', '', '', '2020-06-30 03:52:18', '2020-06-30 03:52:18'),
(6, 'Trần Minh Hiển', '0349260161', 'tranminhhien130398@gmail.com', 'giao nhanh', 'Số 5D, Ngách 562/59 Thụy Khuê', 'Hà Nội', 'Việt Nam', '30000', '0', '1', '', '', '2020-07-07 08:12:06', '2020-07-07 08:12:06'),
(7, 'Trần Minh Hiển', '0349260161', 'tranminhhien130398@gmail.com', '123123', 'Số 5D, Ngách 562/59 Thụy Khuê', 'Hà Nội', 'Việt Nam', '30000', '0', '1', '', '', '2020-07-07 09:16:20', '2020-07-07 09:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id` bigint(20) unsigned NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_detail`
--

INSERT INTO `orders_detail` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `total_price`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 20000, 20000, '0', '2019-12-08 06:15:48', '2019-12-08 06:15:48'),
(2, 1, 2, 1, 10000, 10000, '0', '2019-12-08 06:15:48', '2019-12-08 06:15:48'),
(3, 1, 5, 1, 10000, 10000, '0', '2019-12-08 06:15:48', '2019-12-08 06:15:48'),
(4, 1, 6, 1, 15000, 15000, '0', '2019-12-08 06:15:48', '2019-12-08 06:15:48'),
(5, 1, 13, 1, 30000, 30000, '0', '2019-12-08 06:15:48', '2019-12-08 06:15:48'),
(6, 1, 16, 1, 45000, 45000, '0', '2019-12-08 06:15:48', '2019-12-08 06:15:48'),
(7, 2, 14, 1, 35000, 35000, '0', '2020-05-23 20:57:48', '2020-05-23 20:57:48'),
(8, 3, 1, 4, 20000, 80000, '0', '2020-06-27 22:02:44', '2020-06-27 22:02:44'),
(9, 3, 2, 4, 10000, 40000, '0', '2020-06-27 22:02:44', '2020-06-27 22:02:44'),
(10, 4, 1, 1, 20000, 20000, '0', '2020-06-30 03:50:57', '2020-06-30 03:50:57'),
(11, 4, 2, 1, 10000, 10000, '0', '2020-06-30 03:50:57', '2020-06-30 03:50:57'),
(12, 4, 12, 1, 50000, 50000, '0', '2020-06-30 03:50:57', '2020-06-30 03:50:57'),
(13, 5, 15, 2, 35000, 70000, '0', '2020-06-30 03:52:18', '2020-06-30 03:52:18'),
(14, 6, 1, 1, 20000, 20000, '0', '2020-07-07 08:12:06', '2020-07-07 08:12:06'),
(15, 6, 2, 1, 10000, 10000, '0', '2020-07-07 08:12:06', '2020-07-07 08:12:06'),
(16, 7, 1, 1, 20000, 20000, '0', '2020-07-07 09:16:20', '2020-07-07 09:16:20'),
(17, 7, 2, 1, 10000, 10000, '0', '2020-07-07 09:16:20', '2020-07-07 09:16:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tranminhhien130398@gmail.com', '$2y$10$PfGw24QjAFrSS5jm1jr2G.JjFPNS5fReSVPGR33JMBlFUsP4aR.6e', '2020-07-08 07:45:28');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `product_id`, `content`, `star`, `created_at`, `updated_at`) VALUES
(1, 'Trần Minh Hiển', 'tranminhhien130398@gmail.com', 14, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam sit omnis, numquam dolorem veniam laudantium, est ratione mollitia nesciunt necessitatibus molestias nihil harum ipsum ea enim temporibus magnam cumque a?', 0, '2020-06-28 07:08:06', '2020-06-28 07:08:06'),
(2, 'Trần Minh Hiển', 'tranminhhien130398@gmail.com', 16, 'TẠm được', 0, '2020-06-30 08:23:04', '2020-06-30 08:23:04'),
(3, 'Trần Minh Hiển', 'tranminhhien130398@gmail.com', 17, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quam sit omnis, numquam dolorem veniam laudantium, est ratione mollitia nesciunt necessitatibus molestias nihil harum ipsum ea enim temporibus magnam cumque a?', 0, '2020-06-30 08:23:59', '2020-06-30 08:23:59');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE IF NOT EXISTS `sellers` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE IF NOT EXISTS `shippers` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Minh Hiển', 'tranminhhien130398@gmail.com', NULL, '$2y$10$/NWtGBIneQTv0eM/t1x8SuFC7qFvFhMPMGYshd.l5QtDPLcRlF.46', NULL, '2019-12-08 06:15:45', '2019-12-08 06:15:45'),
(2, 'testshipper111', 'testkh@gmail.com', NULL, '$2y$10$FMLV1.6clMUlFD7g.7j7nuTZmJi.JfPLvxZ6dx2HLHpqE0VefUxO.', NULL, '2020-06-28 02:12:24', '2020-06-28 02:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `shop_brands`
--

CREATE TABLE IF NOT EXISTS `shop_brands` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE IF NOT EXISTS `shop_category` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `homepage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`id`, `name`, `slug`, `images`, `intro`, `desc`, `homepage`, `created_at`, `updated_at`) VALUES
(1, 'Tráng Miệng', 'trang-mieng', '["\\/files\\/1\\/BanhBurger\\/images.png"]', '<p>Tr&aacute;ng Miệng</p>', '<p>Tr&aacute;ng Miệng</p>', '1', '2019-12-07 07:19:34', '2019-12-07 07:20:59'),
(2, 'Đồ Uống', 'do-uong', '["\\/files\\/1\\/BanhBurger\\/images.png"]', '<p>Đồ Uống</p>', '<p>Đồ Uống</p>', '1', '2019-12-07 07:19:50', '2019-12-07 07:19:50'),
(3, 'Phần Ăn EVM', 'phan-an-evm', '["\\/files\\/1\\/BanhBurger\\/images.png"]', '<p>Phần Ăn EVM</p>', '<p>Phần Ăn EVM</p>', '1', '2019-12-07 07:20:04', '2019-12-07 07:48:15'),
(4, 'Burger', 'burger', '["\\/files\\/1\\/BanhBurger\\/images.png"]', '<p>Burger</p>', '<p>Burger</p>', '1', '2019-12-07 07:20:19', '2019-12-07 07:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE IF NOT EXISTS `shop_product` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priceCore` int(11) NOT NULL,
  `priceSale` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT '0',
  `ship_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `infomation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `help` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`id`, `name`, `slug`, `images`, `intro`, `desc`, `priceCore`, `priceSale`, `stock`, `cat_id`, `homepage`, `ship_info`, `infomation`, `review`, `help`, `created_at`, `updated_at`) VALUES
(1, 'Bánh Táo', 'banh-tao', '["\\/files\\/1\\/Trangmieng\\/apple-hotpie.png"]', '<p>B&aacute;nh T&aacute;o</p>', '<p>B&aacute;nh T&aacute;o</p>', 35000, 20000, 100, 1, 1, 'Chưa có', '<p>B&aacute;nh T&aacute;o</p>', '<p>B&aacute;nh T&aacute;o</p>', '<p>B&aacute;nh T&aacute;o</p>', '2019-12-07 07:25:38', '2019-12-07 07:25:38'),
(2, 'Kem Socola', 'kem-socola', '["\\/files\\/1\\/Trangmieng\\/hotfudge_mcsundae.png"]', '<p>Kem Socola</p>', '<p>Kem Socola</p>', 15000, 10000, 100, 1, 1, 'Chưa có', '<p>Kem Socola</p>', '<p>Kem Socola</p>', '<p>Kem Socola</p>', '2019-12-07 07:26:20', '2019-12-07 07:26:20'),
(3, 'Kem Dâu', 'kem-dau', '["\\/files\\/1\\/Trangmieng\\/strawberry-mcsundae.png"]', '<p>Kem D&acirc;u</p>', '<p>Kem D&acirc;u</p>', 25000, 15000, 100, 1, 1, 'Chưa có', '<p>Kem D&acirc;u</p>', '<p>Kem D&acirc;u</p>', '<p>Kem D&acirc;u</p>', '2019-12-07 07:38:32', '2019-12-07 07:38:32'),
(4, 'Kem tươi Vali', 'kem-tuoi-vali', '["\\/files\\/1\\/Trangmieng\\/mcdonalds_cone.png"]', '<p>Kem tươi Vali</p>', '<p>Kem tươi Vali</p>', 15000, 10000, 100, 1, 1, 'Chưa có', '<p>Kem tươi Vali</p>', '<p>Kem tươi Vali</p>', '<p>Kem tươi Vali</p>', '2019-12-07 07:39:18', '2019-12-07 07:39:18'),
(5, 'Cocacola', 'cocacola', '["\\/files\\/1\\/DRINKS\\/mcd-food-beverages-soft-drinks-coke.png"]', '<p>Cocacola</p>', '<p>Cocacola</p>', 25000, 10000, 100, 2, 1, 'Chưa có', '<p>Cocacola</p>', '<p>Cocacola</p>', '<p>Cocacola</p>', '2019-12-07 07:39:52', '2019-12-07 07:39:52'),
(6, 'Sprite', 'sprite', '["\\/files\\/1\\/DRINKS\\/Product_thumb_Sprite.png"]', '<p>Sprite</p>', '<p>Sprite</p>', 25000, 15000, 100, 2, 1, 'Chưa có', '<p>Sprite</p>', '<p>Sprite</p>', '<p>Sprite</p>', '2019-12-07 07:40:49', '2019-12-07 07:40:49'),
(7, 'Fanta', 'fanta', '["\\/files\\/1\\/DRINKS\\/hero-pdt-Fanta-201703_0.png"]', '<p>Fanta</p>', '<p>Fanta</p>', 25000, 15000, 100, 2, 1, 'Chưa có', '<p>Fanta</p>', '<p>Fanta</p>', '<p>Fanta</p>', '2019-12-07 07:41:38', '2019-12-07 07:41:38'),
(8, 'Milo', 'milo', '["\\/files\\/1\\/DRINKS\\/milo.png"]', '<p>Milo</p>', '<p>Milo</p>', 25000, 15000, 100, 2, 1, 'Chưa có', '<p>Milo</p>', '<p>Milo</p>', '<p>Milo</p>', '2019-12-07 07:42:08', '2019-12-07 07:42:08'),
(9, 'Phần Ăn EVM Bò', 'phan-an-evm-bo', '["\\/files\\/1\\/PhanAnEVM\\/EVM-05-mcchicken-1.png"]', '<p>Phần Ăn EVM B&ograve;</p>', '<p>Phần Ăn EVM B&ograve;</p>', 50000, 45000, 100, 3, 1, 'Chưa có', '<p>Phần Ăn EVM B&ograve;</p>', '<p>Phần Ăn EVM B&ograve;</p>', '<p>Phần Ăn EVM B&ograve;</p>', '2019-12-07 07:42:50', '2019-12-07 07:42:50'),
(10, 'Phần Ăn EVM Bò Miếng Lớn', 'phan-an-evm-bo-mieng-lon', '["\\/files\\/1\\/PhanAnEVM\\/EVM_04_filet-o-fish_0.png"]', '<p>Phần Ăn EVM B&ograve; Miếng Lớn</p>', '<p>Phần Ăn EVM B&ograve; Miếng Lớn</p>', 60000, 45000, 100, 0, 0, 'Chưa có', '<p>Phần Ăn EVM B&ograve; Miếng Lớn</p>', '<p>Phần Ăn EVM B&ograve; Miếng Lớn</p>', '<p>Phần Ăn EVM B&ograve; Miếng Lớn</p>', '2019-12-07 07:43:18', '2019-12-07 07:43:18'),
(11, 'Phần Ăn EVM Gà Miếng Lớn', 'phan-an-evm-ga-mieng-lon', '["\\/files\\/1\\/PhanAnEVM\\/EVM_09_mcroyal_with_cheese_0.png"]', '<p>Phần Ăn EVM G&agrave; Miếng Lớn</p>', '<p>Phần Ăn EVM G&agrave; Miếng Lớn</p>', 65000, 50000, 100, 3, 0, 'Chưa có', '<p>Phần Ăn EVM G&agrave; Miếng Lớn</p>', '<p>Phần Ăn EVM G&agrave; Miếng Lớn</p>', '<p>Phần Ăn EVM G&agrave; Miếng Lớn</p>', '2019-12-07 07:43:51', '2019-12-07 07:43:51'),
(12, 'Phần Ăn EVM Gà Phô Mai', 'phan-an-evm-ga-pho-mai', '["\\/files\\/1\\/PhanAnEVM\\/EVM_13_mcroyal_deluxe_0.png"]', '<p>Phần Ăn EVM G&agrave; Ph&ocirc; Mai</p>', '<p>Phần Ăn EVM G&agrave; Ph&ocirc; Mai</p>', 60000, 50000, 100, 3, 1, 'Chưa có', '<p>Phần Ăn EVM G&agrave; Ph&ocirc; Mai</p>', '<p>Phần Ăn EVM G&agrave; Ph&ocirc; Mai</p>', '<p>Phần Ăn EVM G&agrave; Ph&ocirc; Mai</p>', '2019-12-07 07:44:18', '2019-12-07 07:44:18'),
(13, 'Burger Gà', 'burger-ga', '["\\/files\\/1\\/BanhBurger\\/double-cheese-burger.png"]', '<p>Burger G&agrave;</p>', '<p>Burger G&agrave;</p>', 45000, 30000, 100, 4, 1, 'Chưa có', '<p>Burger G&agrave;</p>', '<p>Burger G&agrave;</p>', '<p>Burger G&agrave;</p>', '2019-12-07 07:45:48', '2019-12-07 07:45:48'),
(14, 'Burger Gà', 'burger-ga', '["\\/files\\/1\\/BanhBurger\\/mcchicken-deluxe.png"]', '<p>Burger G&agrave;</p>', '<p>Burger G&agrave;</p>', 45000, 35000, 100, 4, 1, 'Chưa có', '<p>Burger G&agrave;</p>', '<p>Burger G&agrave;</p>', '<p>Burger G&agrave;</p>', '2019-12-07 07:46:15', '2019-12-07 07:46:15'),
(15, 'Burger Bò', 'burger-bo', '["\\/files\\/1\\/BanhBurger\\/mcchicken-deluxe.png"]', '<p>Burger B&ograve;</p>', '<p>Burger B&ograve;</p>', 50000, 35000, 100, 4, 1, 'Chưa có', '<p>Burger B&ograve;</p>', '<p>Burger B&ograve;</p>', '<p>Burger B&ograve;</p>', '2019-12-07 07:46:51', '2019-12-07 07:46:51'),
(16, 'Burger Bò 2 lớp', 'burger-bo-2-lop', '["\\/files\\/1\\/BanhBurger\\/bigmac.png"]', '<p>Burger B&ograve; 2 lớp</p>', '<p>Burger B&ograve; 2 lớp</p>', 60000, 45000, 100, 4, 1, 'Chưa có', '<p>Burger B&ograve; 2 lớp</p>', '<p>Burger B&ograve; 2 lớp</p>', '<p>Burger B&ograve; 2 lớp</p>', '2019-12-07 07:47:51', '2019-12-07 07:47:51'),
(17, 'PIZZA HAI SAN', 'pizza-hai-san', '["\\/files\\/1\\/4.jpg","\\/files\\/1\\/3.jpg"]', '<p>PIZZA HAI SAN</p>', '<p>PIZZA HAI SAN</p>', 25000, 35000, 100, 4, 1, 'Chưa có', '<p>PIZZA HAI SAN</p>', '<p>PIZZA HAI SAN</p>', '<p>PIZZA HAI SAN</p>', '2019-12-08 18:44:55', '2019-12-08 18:44:55'),
(18, 'pizza pháp', 'pizza-phap', '["\\/files\\/1\\/97.jpg"]', '<p>pizza ph&aacute;p</p>\r\n<div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;">&nbsp;</div>', '<p>pizza ph&aacute;p</p>\r\n<div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;">&nbsp;</div>', 25000, 15000, 100, 3, 1, 'Chưa có', '<p>pizza ph&aacute;p</p>\r\n<div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;">&nbsp;</div>', '<p>pizza ph&aacute;p</p>\r\n<div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;">&nbsp;</div>', '<p>pizza ph&aacute;p</p>\r\n<div id="eJOY__extension_root" class="eJOY__extension_root_class" style="all: unset;">&nbsp;</div>', '2020-07-07 07:50:24', '2020-07-07 07:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE IF NOT EXISTS `social_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Minh Hiển', 'tranminhhien130398@gmail.com', NULL, '$2y$10$INDHJimXcG9W5wMnWWeDCe5k3k1eN5TV1Mi03HlNT1z2sHZ7WQOHK', NULL, '2019-12-08 06:14:18', '2020-07-07 08:54:13'),
(2, 'phung gia huy', 'phunggiahuy1503@gmail.com', NULL, '$2y$10$RMIZZExrfzp8eVM7y9RxzepYJR/baGbRADHj4bKeS3W5o5FOH6FXO', NULL, '2020-05-23 10:14:26', '2020-05-23 10:14:26'),
(4, 'testkh', 'testkh@gmail.com', NULL, '$2y$10$athY5za0lXrRtJcy2sdkLuG1EUwytCr5ihwkTu1egus7AGAB7Qi2G', NULL, '2020-06-28 00:42:59', '2020-06-28 00:42:59');

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
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_name_unique` (`name`);

--
-- Indexes for table `content_category`
--
ALTER TABLE `content_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_pages`
--
ALTER TABLE `content_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_post`
--
ALTER TABLE `content_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_tag`
--
ALTER TABLE `content_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `global_settings_name_unique` (`name`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_detail`
--
ALTER TABLE `orders_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`email`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shippers_email_unique` (`email`);

--
-- Indexes for table `shop_brands`
--
ALTER TABLE `shop_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `content_category`
--
ALTER TABLE `content_category`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `content_pages`
--
ALTER TABLE `content_pages`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content_post`
--
ALTER TABLE `content_post`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `content_tag`
--
ALTER TABLE `content_tag`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `orders_detail`
--
ALTER TABLE `orders_detail`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shop_brands`
--
ALTER TABLE `shop_brands`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
