-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2019 at 03:00 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_komputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-11-14 01:02:49', '2019-11-14 01:02:49', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 10, 'ActionScheduler', '', '', '', '2019-11-14 01:10:53', '2019-11-14 01:10:53', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 11, 'ActionScheduler', '', '', '', '2019-11-14 01:10:54', '2019-11-14 01:10:54', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 12, 'ActionScheduler', '', '', '', '2019-11-14 01:10:54', '2019-11-14 01:10:54', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 10, 'ActionScheduler', '', '', '', '2019-11-14 01:11:39', '2019-11-14 01:11:39', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(6, 10, 'ActionScheduler', '', '', '', '2019-11-14 01:11:40', '2019-11-14 01:11:40', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 11, 'ActionScheduler', '', '', '', '2019-11-14 01:11:40', '2019-11-14 01:11:40', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(8, 11, 'ActionScheduler', '', '', '', '2019-11-14 01:11:41', '2019-11-14 01:11:41', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(9, 12, 'ActionScheduler', '', '', '', '2019-11-14 01:11:41', '2019-11-14 01:11:41', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(10, 12, 'ActionScheduler', '', '', '', '2019-11-14 01:11:41', '2019-11-14 01:11:41', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(11, 13, 'ActionScheduler', '', '', '', '2019-11-14 01:11:41', '2019-11-14 01:11:41', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(12, 15, 'ActionScheduler', '', '', '', '2019-11-14 01:11:58', '2019-11-14 01:11:58', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(13, 15, 'ActionScheduler', '', '', '', '2019-11-14 01:12:03', '2019-11-14 01:12:03', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(14, 15, 'ActionScheduler', '', '', '', '2019-11-14 01:12:04', '2019-11-14 01:12:04', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(15, 13, 'ActionScheduler', '', '', '', '2019-11-14 02:13:36', '2019-11-14 02:13:36', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(16, 13, 'ActionScheduler', '', '', '', '2019-11-14 02:13:36', '2019-11-14 02:13:36', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(17, 67, 'ActionScheduler', '', '', '', '2019-11-14 02:13:37', '2019-11-14 02:13:37', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(18, 67, 'ActionScheduler', '', '', '', '2019-11-21 01:24:37', '2019-11-21 01:24:37', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(19, 67, 'ActionScheduler', '', '', '', '2019-11-21 01:24:37', '2019-11-21 01:24:37', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(20, 72, 'ActionScheduler', '', '', '', '2019-11-21 01:24:39', '2019-11-21 01:24:39', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(21, 73, 'ActionScheduler', '', '', '', '2019-11-21 01:32:06', '2019-11-21 01:32:06', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(22, 73, 'ActionScheduler', '', '', '', '2019-11-21 01:33:11', '2019-11-21 01:33:11', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(23, 73, 'ActionScheduler', '', '', '', '2019-11-21 01:33:12', '2019-11-21 01:33:12', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(24, 72, 'ActionScheduler', '', '', '', '2019-11-21 02:29:19', '2019-11-21 02:29:19', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(25, 72, 'ActionScheduler', '', '', '', '2019-11-21 02:29:19', '2019-11-21 02:29:19', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(26, 78, 'ActionScheduler', '', '', '', '2019-11-21 02:29:20', '2019-11-21 02:29:20', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(27, 78, 'ActionScheduler', '', '', '', '2019-11-21 03:30:05', '2019-11-21 03:30:05', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(28, 78, 'ActionScheduler', '', '', '', '2019-11-21 03:30:05', '2019-11-21 03:30:05', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(29, 90, 'ActionScheduler', '', '', '', '2019-11-21 03:30:05', '2019-11-21 03:30:05', 'There was a failure fetching this action', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(30, 90, 'ActionScheduler', '', '', '', '2019-11-21 03:30:06', '2019-11-21 03:30:06', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(31, 91, 'ActionScheduler', '', '', '', '2019-11-21 03:30:07', '2019-11-21 03:30:07', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(32, 91, 'ActionScheduler', '', '', '', '2019-11-21 03:30:07', '2019-11-21 03:30:07', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(33, 91, 'ActionScheduler', '', '', '', '2019-11-21 03:30:07', '2019-11-21 03:30:07', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(34, 92, 'ActionScheduler', '', '', '', '2019-11-21 03:30:07', '2019-11-21 03:30:07', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mailchimp_jobs`
--

CREATE TABLE `wp_mailchimp_jobs` (
  `id` bigint(20) NOT NULL,
  `obj_id` text COLLATE utf8mb4_unicode_ci,
  `job` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/commerce', 'yes'),
(2, 'home', 'http://localhost/commerce', 'yes'),
(3, 'blogname', 'Blizzard', 'yes'),
(4, 'blogdescription', 'Toko Komputer Terlengkap', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'adam.shufflers1@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=31&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";i:1;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:2;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:63:\"D:\\xampp\\htdocs\\commerce/wp-content/themes/storefront/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'shopical', 'yes'),
(41, 'stylesheet', 'shopage', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '30', 'yes'),
(84, 'page_on_front', '31', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:17:{i:1574309281;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1574309442;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1574310604;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1574312571;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1574319958;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1574341371;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1574380800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574384570;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574384589;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574384590;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574384593;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574384758;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574384768;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574385052;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574395558;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1575331200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'recovery_keys', 'a:0:{}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1574300419;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}', 'no'),
(115, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1573693713;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(127, 'can_compress_scripts', '1', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(150, 'woocommerce_store_address', 'Jalan Araya', 'yes'),
(151, 'woocommerce_store_address_2', '', 'yes'),
(152, 'woocommerce_store_city', 'Malang', 'yes'),
(153, 'woocommerce_default_country', 'ID:JI', 'yes'),
(154, 'woocommerce_store_postcode', '65141', 'yes'),
(155, 'woocommerce_allowed_countries', 'all', 'yes'),
(156, 'woocommerce_all_except_countries', '', 'yes'),
(157, 'woocommerce_specific_allowed_countries', '', 'yes'),
(158, 'woocommerce_ship_to_countries', '', 'yes'),
(159, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(160, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(161, 'woocommerce_calc_taxes', 'no', 'yes'),
(162, 'woocommerce_enable_coupons', 'yes', 'yes'),
(163, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(164, 'woocommerce_currency', 'IDR', 'yes'),
(165, 'woocommerce_currency_pos', 'left', 'yes'),
(166, 'woocommerce_price_thousand_sep', ',', 'yes'),
(167, 'woocommerce_price_decimal_sep', '.', 'yes'),
(168, 'woocommerce_price_num_decimals', '2', 'yes'),
(169, 'woocommerce_shop_page_id', '6', 'yes'),
(170, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(171, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(172, 'woocommerce_placeholder_image', '5', 'yes'),
(173, 'woocommerce_weight_unit', 'kg', 'yes'),
(174, 'woocommerce_dimension_unit', 'cm', 'yes'),
(175, 'woocommerce_enable_reviews', 'yes', 'yes'),
(176, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(177, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(178, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(179, 'woocommerce_review_rating_required', 'yes', 'no'),
(180, 'woocommerce_manage_stock', 'yes', 'yes'),
(181, 'woocommerce_hold_stock_minutes', '60', 'no'),
(182, 'woocommerce_notify_low_stock', 'yes', 'no'),
(183, 'woocommerce_notify_no_stock', 'yes', 'no'),
(184, 'woocommerce_stock_email_recipient', 'adam.shufflers1@gmail.com', 'no'),
(185, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(186, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(187, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(188, 'woocommerce_stock_format', '', 'yes'),
(189, 'woocommerce_file_download_method', 'force', 'no'),
(190, 'woocommerce_downloads_require_login', 'no', 'no'),
(191, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(192, 'woocommerce_prices_include_tax', 'no', 'yes'),
(193, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(194, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(195, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(196, 'woocommerce_tax_classes', '', 'yes'),
(197, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(198, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(199, 'woocommerce_price_display_suffix', '', 'yes'),
(200, 'woocommerce_tax_total_display', 'itemized', 'no'),
(201, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(202, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(203, 'woocommerce_ship_to_destination', 'billing', 'no'),
(204, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(205, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(206, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(207, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(208, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(209, 'woocommerce_registration_generate_username', 'yes', 'no'),
(210, 'woocommerce_registration_generate_password', 'yes', 'no'),
(211, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(212, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(213, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(214, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(215, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(216, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(217, 'woocommerce_trash_pending_orders', '', 'no'),
(218, 'woocommerce_trash_failed_orders', '', 'no'),
(219, 'woocommerce_trash_cancelled_orders', '', 'no'),
(220, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(221, 'woocommerce_email_from_name', 'Blizzard', 'no'),
(222, 'woocommerce_email_from_address', 'adam.shufflers1@gmail.com', 'no'),
(223, 'woocommerce_email_header_image', '', 'no'),
(224, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(225, 'woocommerce_email_base_color', '#96588a', 'no'),
(226, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(227, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(228, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(229, 'woocommerce_cart_page_id', '7', 'no'),
(230, 'woocommerce_checkout_page_id', '8', 'no'),
(231, 'woocommerce_myaccount_page_id', '9', 'no'),
(232, 'woocommerce_terms_page_id', '', 'no'),
(233, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(234, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(235, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(236, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(237, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(238, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(239, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(240, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(241, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(242, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(243, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(244, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(245, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(246, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(247, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(248, 'woocommerce_api_enabled', 'no', 'yes'),
(249, 'woocommerce_allow_tracking', 'no', 'no'),
(250, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(251, 'woocommerce_single_image_width', '600', 'yes'),
(252, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(253, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(254, 'woocommerce_demo_store', 'no', 'no'),
(255, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(256, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(257, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(258, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(260, 'default_product_cat', '18', 'yes'),
(263, 'woocommerce_version', '3.8.0', 'yes'),
(264, 'woocommerce_db_version', '3.8.0', 'yes'),
(265, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(266, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(267, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(272, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(273, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(275, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(276, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(277, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(278, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(283, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(289, 'woocommerce_product_type', 'both', 'yes'),
(290, 'woocommerce_sell_in_person', '1', 'yes'),
(291, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(292, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(293, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(295, '_transient_shipping-transient-version', '1573693686', 'yes'),
(296, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(305, 'current_theme', 'Shopage', 'yes'),
(306, 'theme_mods_storefront', 'a:12:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:69:\"http://localhost/commerce/wp-content/uploads/2019/11/cropped-hero.jpg\";s:16:\"background_image\";s:0:\"\";s:21:\"background_position_x\";s:6:\"center\";s:21:\"background_position_y\";s:6:\"center\";s:15:\"background_size\";s:5:\"cover\";s:28:\"storefront_header_text_color\";s:7:\"#257500\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:43;s:3:\"url\";s:69:\"http://localhost/commerce/wp-content/uploads/2019/11/cropped-hero.jpg\";s:13:\"thumbnail_url\";s:69:\"http://localhost/commerce/wp-content/uploads/2019/11/cropped-hero.jpg\";s:6:\"height\";i:499;s:5:\"width\";i:1950;}s:16:\"background_color\";s:6:\"ffffff\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1574303363;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(307, 'theme_switched', '', 'yes'),
(308, 'mailchimp_woocommerce_version', '2.3', 'no'),
(309, 'mailchimp-woocommerce', 'a:2:{s:33:\"woocommerce_settings_save_general\";b:1;s:19:\"store_currency_code\";s:3:\"IDR\";}', 'yes'),
(311, 'mailchimp-woocommerce-store_id', '5dcca9184f6c8', 'yes'),
(313, 'woocommerce_catalog_rows', '4', 'yes'),
(314, 'woocommerce_catalog_columns', '3', 'yes'),
(315, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(317, 'storefront_nux_fresh_site', '0', 'yes'),
(319, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(320, 'mailchimp-woocommerce_cart_table_add_index_update', '1', 'yes'),
(326, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(330, '_transient_product_query-transient-version', '1574309244', 'yes'),
(331, 'wc_admin_install_timestamp', '1573693854', 'yes'),
(332, 'wc_admin_last_orders_milestone', '0', 'yes'),
(345, 'wc_admin_version', '0.22.0', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(351, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:117:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:114:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:98:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:119:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:111:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:103:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:105:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:100:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:107:\"https://woocommerce.com/wp-content/plugins/wccom-plugins//marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1574299991;}', 'no'),
(363, 'storefront_nux_guided_tour', '1', 'yes'),
(367, '_transient_woocommerce_reports-transient-version', '1573694043', 'yes'),
(398, '_transient_product-transient-version', '1574309244', 'yes'),
(449, 'storefront_nux_dismissed', '1', 'yes'),
(451, '_transient_timeout_wc_block_d7e9c0cb6b4995c59f0581d00c0ee91a', '1576897833', 'no'),
(452, '_transient_wc_block_d7e9c0cb6b4995c59f0581d00c0ee91a', 'a:2:{s:7:\"version\";s:10:\"1574305655\";s:5:\"value\";a:4:{i:0;i:84;i:1;i:77;i:2;i:65;i:3;i:62;}}', 'no'),
(453, '_transient_timeout_wc_block_b6cfe88d423580edebe474f79181b982', '1576892329', 'no'),
(454, '_transient_wc_block_b6cfe88d423580edebe474f79181b982', 'a:2:{s:7:\"version\";s:10:\"1574300292\";s:5:\"value\";a:4:{i:0;i:77;i:1;i:65;i:2;i:62;i:3;i:60;}}', 'no'),
(457, '_transient_timeout_wc_block_8fbe7d288cc8c2bbf27a55f0ee68ed9b', '1576287758', 'no'),
(458, '_transient_wc_block_8fbe7d288cc8c2bbf27a55f0ee68ed9b', 'a:2:{s:7:\"version\";s:10:\"1573695663\";s:5:\"value\";a:1:{i:0;i:26;}}', 'no'),
(459, '_transient_timeout_wc_block_b40c45da5377e7dcb83f026c6784146f', '1576892329', 'no'),
(460, '_transient_wc_block_b40c45da5377e7dcb83f026c6784146f', 'a:2:{s:7:\"version\";s:10:\"1574300292\";s:5:\"value\";a:4:{i:0;i:77;i:1;i:65;i:2;i:62;i:3;i:60;}}', 'no'),
(485, '_transient_timeout_wc_block_a6ccd56373cdbdbc106bc2daf13caef9', '1576288447', 'no'),
(486, '_transient_wc_block_a6ccd56373cdbdbc106bc2daf13caef9', 'a:2:{s:7:\"version\";s:10:\"1573696442\";s:5:\"value\";a:2:{i:0;i:26;i:1;i:17;}}', 'no'),
(516, '_transient_timeout_wc_block_0fb9e806931ec943f0687fa1fab0426b', '1576289032', 'no'),
(517, '_transient_wc_block_0fb9e806931ec943f0687fa1fab0426b', 'a:2:{s:7:\"version\";s:10:\"1573697010\";s:5:\"value\";a:4:{i:0;i:60;i:1;i:54;i:2;i:26;i:3;i:17;}}', 'no'),
(527, '_transient_timeout_wc_block_53aab9099fd63e206a9282ba38154cec', '1576289352', 'no'),
(528, '_transient_wc_block_53aab9099fd63e206a9282ba38154cec', 'a:2:{s:7:\"version\";s:10:\"1573697348\";s:5:\"value\";a:4:{i:0;i:62;i:1;i:60;i:2;i:54;i:3;i:26;}}', 'no'),
(549, '_transient_timeout_wc_block_10bfcb46880d58e4a99dd21c0dfef6da', '1576892329', 'no'),
(550, '_transient_wc_block_10bfcb46880d58e4a99dd21c0dfef6da', 'a:2:{s:7:\"version\";s:10:\"1574300292\";s:5:\"value\";a:4:{i:0;i:65;i:1;i:62;i:2;i:60;i:3;i:54;}}', 'no'),
(566, '_transient_timeout_wc_shipping_method_count_legacy', '1576289870', 'no'),
(567, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1573693686\";s:5:\"value\";i:0;}', 'no'),
(601, 'core_updater.lock', '1573699092', 'no'),
(602, '_transient_timeout_external_ip_address_127.0.0.1', '1574904276', 'no'),
(603, '_transient_external_ip_address_127.0.0.1', '114.6.31.174', 'no'),
(605, '_transient_timeout_external_ip_address_::1', '1574904280', 'no'),
(606, '_transient_external_ip_address_::1', '114.6.31.174', 'no'),
(612, '_transient_timeout__woocommerce_helper_updates', '1574342682', 'no'),
(613, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"358c40eaa335ac0d027f3e9faa3c726e\";s:7:\"updated\";i:1574299482;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(614, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1574300445;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/facebook-for-woocommerce\";s:4:\"slug\";s:24:\"facebook-for-woocommerce\";s:6:\"plugin\";s:53:\"facebook-for-woocommerce/facebook-for-woocommerce.php\";s:11:\"new_version\";s:6:\"1.9.15\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/facebook-for-woocommerce/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/facebook-for-woocommerce.1.9.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/facebook-for-woocommerce/assets/icon-256x256.png?rev=2040223\";s:2:\"1x\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";s:3:\"svg\";s:69:\"https://ps.w.org/facebook-for-woocommerce/assets/icon.svg?rev=2040223\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.8.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"woocommerce-admin/woocommerce-admin.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/woocommerce-admin\";s:4:\"slug\";s:17:\"woocommerce-admin\";s:6:\"plugin\";s:39:\"woocommerce-admin/woocommerce-admin.php\";s:11:\"new_version\";s:6:\"0.22.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woocommerce-admin/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce-admin.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-256x256.jpg?rev=2057866\";s:2:\"1x\";s:70:\"https://ps.w.org/woocommerce-admin/assets/icon-128x128.jpg?rev=2057866\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-admin/assets/banner-1544x500.jpg?rev=2057866\";s:2:\"1x\";s:72:\"https://ps.w.org/woocommerce-admin/assets/banner-772x250.jpg?rev=2057866\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(642, '_transient_timeout_wc_related_77', '1574391796', 'no'),
(643, '_transient_wc_related_77', 'a:2:{s:50:\"limit=3&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=77\";a:0:{}s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=77\";a:1:{i:0;s:2:\"84\";}}', 'no'),
(652, 'widget_shopical_categorised_product_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(653, 'widget_shopical_product_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(654, 'widget_shopical_product_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(655, 'widget_shopical_posts_carousel', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(656, 'widget_product_posts_latest', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(657, 'widget_shopical_author_info', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(658, 'widget_shopical_store_call_to_action', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(659, 'widget_shopical_store_features', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(660, 'widget_shopical_store_offers', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(661, 'widget_shopical_social_contacts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(662, 'theme_mods_shopage', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:71:\"http://localhost/commerce/wp-content/uploads/2019/11/cropped-124364.jpg\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:82;s:3:\"url\";s:71:\"http://localhost/commerce/wp-content/uploads/2019/11/cropped-124364.jpg\";s:13:\"thumbnail_url\";s:71:\"http://localhost/commerce/wp-content/uploads/2019/11/cropped-124364.jpg\";s:6:\"height\";i:175;s:5:\"width\";i:1500;}}', 'yes'),
(686, 'theme_switch_menu_locations', 'a:0:{}', 'yes'),
(687, 'theme_switched_via_customizer', '', 'yes'),
(688, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(755, '_site_transient_timeout_theme_roots', '1574307026', 'no'),
(756, '_site_transient_theme_roots', 'a:6:{s:7:\"shopage\";s:7:\"/themes\";s:8:\"shopical\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(759, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1574305227;s:7:\"checked\";a:6:{s:7:\"shopage\";s:5:\"1.0.0\";s:8:\"shopical\";s:5:\"1.0.7\";s:10:\"storefront\";s:5:\"2.5.3\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(765, '_transient_timeout_wc_related_84', '1574391800', 'no'),
(766, '_transient_wc_related_84', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=84\";a:1:{i:0;s:2:\"77\";}}', 'no'),
(798, 'product_cat_children', 'a:3:{i:15;a:3:{i:0;i:19;i:1;i:20;i:2;i:21;}i:18;a:4:{i:0;i:22;i:1;i:23;i:2;i:24;i:3;i:25;}i:26;a:8:{i:0;i:27;i:1;i:29;i:2;i:30;i:3;i:31;i:4;i:32;i:5;i:33;i:6;i:34;i:7;i:35;}}', 'yes'),
(801, '_transient_timeout_wc_admin_unsnooze_admin_notes_checked', '1574310607', 'no'),
(802, '_transient_wc_admin_unsnooze_admin_notes_checked', 'yes', 'no'),
(806, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(807, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(827, '_transient_timeout_wc_related_94', '1574394977', 'no'),
(828, '_transient_wc_related_94', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=94\";a:2:{i:0;s:2:\"77\";i:1;s:2:\"84\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', 'woocommerce-placeholder.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 10, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1573693853;}'),
(6, 11, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1573693854;}'),
(7, 12, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1573693854;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(8, 13, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1573697501;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(9, 15, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1573693918;}'),
(10, 16, '_edit_last', '1'),
(11, 16, '_edit_lock', '1573694092:1'),
(12, 17, '_edit_last', '1'),
(13, 17, 'total_sales', '0'),
(14, 17, '_tax_status', 'taxable'),
(15, 17, '_tax_class', ''),
(16, 17, '_manage_stock', 'no'),
(17, 17, '_backorders', 'no'),
(18, 17, '_sold_individually', 'no'),
(19, 17, '_virtual', 'no'),
(20, 17, '_downloadable', 'no'),
(21, 17, '_download_limit', '-1'),
(22, 17, '_download_expiry', '-1'),
(23, 17, '_stock', NULL),
(24, 17, '_stock_status', 'instock'),
(25, 17, '_wc_average_rating', '0'),
(26, 17, '_wc_review_count', '0'),
(27, 17, '_product_version', '3.8.0'),
(28, 17, '_edit_lock', '1573698910:1'),
(29, 18, '_wp_attached_file', '2019/11/laptop.png'),
(30, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:18:\"2019/11/laptop.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"laptop-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"laptop-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"laptop-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"laptop-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"laptop-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"laptop-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"laptop-416x416.png\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"laptop-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 19, '_wp_attached_file', '2019/11/mouse.png'),
(32, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:920;s:6:\"height\";i:1060;s:4:\"file\";s:17:\"2019/11/mouse.png\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"mouse-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"mouse-600x691.png\";s:5:\"width\";i:600;s:6:\"height\";i:691;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"mouse-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"mouse-260x300.png\";s:5:\"width\";i:260;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"mouse-768x885.png\";s:5:\"width\";i:768;s:6:\"height\";i:885;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"mouse-889x1024.png\";s:5:\"width\";i:889;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"mouse-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"mouse-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"mouse-600x691.png\";s:5:\"width\";i:600;s:6:\"height\";i:691;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"mouse-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 20, '_wp_attached_file', '2019/11/legion-Y.jpeg'),
(34, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:450;s:6:\"height\";i:450;s:4:\"file\";s:21:\"2019/11/legion-Y.jpeg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"legion-Y-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"legion-Y-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"legion-Y-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"legion-Y-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"legion-Y-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"legion-Y-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"legion-Y-416x416.jpeg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"legion-Y-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 21, '_wp_attached_file', '2019/11/asus-aura-sync.jpg'),
(36, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:2400;s:4:\"file\";s:26:\"2019/11/asus-aura-sync.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"asus-aura-sync-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"asus-aura-sync-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"asus-aura-sync-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"asus-aura-sync-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"asus-aura-sync-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"asus-aura-sync-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"asus-aura-sync-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"asus-aura-sync-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"asus-aura-sync-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"asus-aura-sync-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 22, '_wp_attached_file', '2019/11/a4tech-x7-xl-747h.jpg'),
(38, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:308;s:4:\"file\";s:29:\"2019/11/a4tech-x7-xl-747h.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"a4tech-x7-xl-747h-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"a4tech-x7-xl-747h-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"a4tech-x7-xl-747h-300x231.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:231;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"a4tech-x7-xl-747h-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"a4tech-x7-xl-747h-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"a4tech-x7-xl-747h-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 27, '_wp_attached_file', '2019/11/rog-gladius-ii.jpg'),
(42, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:26:\"2019/11/rog-gladius-ii.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"rog-gladius-ii-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"rog-gladius-ii-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"rog-gladius-ii-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"rog-gladius-ii-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"rog-gladius-ii-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"rog-gladius-ii-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"rog-gladius-ii-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"rog-gladius-ii-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 26, '_edit_last', '1'),
(44, 26, '_regular_price', '1215000'),
(45, 26, '_sale_price', '1200000'),
(46, 26, 'total_sales', '0'),
(47, 26, '_tax_status', 'taxable'),
(48, 26, '_tax_class', ''),
(49, 26, '_manage_stock', 'no'),
(50, 26, '_backorders', 'no'),
(51, 26, '_sold_individually', 'no'),
(52, 26, '_virtual', 'no'),
(53, 26, '_downloadable', 'no'),
(54, 26, '_download_limit', '-1'),
(55, 26, '_download_expiry', '-1'),
(56, 26, '_stock', NULL),
(57, 26, '_stock_status', 'instock'),
(58, 26, '_wc_average_rating', '0'),
(59, 26, '_wc_review_count', '0'),
(60, 26, '_product_version', '3.8.0'),
(61, 26, '_price', '1200000'),
(62, 26, '_edit_lock', '1573698886:1'),
(63, 27, '_wp_attachment_image_alt', 'rog-gladius-ii'),
(64, 27, '_wp_old_slug', 'rog-gladius-ii'),
(65, 26, '_thumbnail_id', '27'),
(66, 29, '_wp_attached_file', '2019/11/hero.jpg'),
(67, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:16:\"2019/11/hero.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"hero-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"hero-600x372.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:372;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 29, '_starter_content_theme', 'storefront'),
(71, 30, '_customize_changeset_uuid', '6fb65fae-e874-4e0a-885f-c529c16bc887'),
(72, 31, '_wp_page_template', 'template-fullwidth.php'),
(74, 31, '_customize_changeset_uuid', '6fb65fae-e874-4e0a-885f-c529c16bc887'),
(75, 33, '_wp_attached_file', '2019/11/blizzard_logo_mg.gif'),
(76, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:300;s:4:\"file\";s:28:\"2019/11/blizzard_logo_mg.gif\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"blizzard_logo_mg-300x300.gif\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"blizzard_logo_mg-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"blizzard_logo_mg-300x225.gif\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/gif\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"blizzard_logo_mg-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"blizzard_logo_mg-300x300.gif\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/gif\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"blizzard_logo_mg-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 34, '_wp_attached_file', '2019/11/cropped-blizzard_logo_mg.gif'),
(78, 34, '_wp_attachment_context', 'custom-header'),
(79, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:149;s:4:\"file\";s:36:\"2019/11/cropped-blizzard_logo_mg.gif\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"cropped-blizzard_logo_mg-300x149.gif\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/gif\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-blizzard_logo_mg-150x149.gif\";s:5:\"width\";i:150;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/gif\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"cropped-blizzard_logo_mg-300x112.gif\";s:5:\"width\";i:300;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/gif\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-blizzard_logo_mg-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:36:\"cropped-blizzard_logo_mg-300x149.gif\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:9:\"image/gif\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"cropped-blizzard_logo_mg-100x100.gif\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/gif\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 34, '_wp_attachment_custom_header_last_used_storefront', '1573695861'),
(81, 34, '_wp_attachment_is_custom_header', 'storefront'),
(82, 32, '_wp_trash_meta_status', 'publish'),
(83, 32, '_wp_trash_meta_time', '1573695882'),
(84, 37, '_wp_attached_file', '2019/11/bg.png'),
(85, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:14:\"2019/11/bg.png\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"bg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"bg-600x338.png\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"bg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"bg-600x338.png\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 37, '_wp_attachment_is_custom_background', 'storefront'),
(87, 38, '_edit_lock', '1573696092:1'),
(88, 39, '_wp_attached_file', '2019/11/bg.jpg'),
(89, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:14:\"2019/11/bg.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"bg-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:14:\"bg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"bg-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(90, 39, '_wp_attachment_is_custom_background', 'storefront'),
(91, 38, '_wp_trash_meta_status', 'publish'),
(92, 38, '_wp_trash_meta_time', '1573696103'),
(93, 40, '_edit_lock', '1573696116:1'),
(94, 40, '_wp_trash_meta_status', 'publish'),
(95, 40, '_wp_trash_meta_time', '1573696117'),
(96, 41, '_edit_lock', '1573696134:1'),
(97, 41, '_wp_trash_meta_status', 'publish'),
(98, 41, '_wp_trash_meta_time', '1573696136'),
(99, 42, '_edit_lock', '1573696178:1'),
(100, 42, '_wp_trash_meta_status', 'publish'),
(101, 42, '_wp_trash_meta_time', '1573696187'),
(102, 43, '_wp_attached_file', '2019/11/cropped-hero.jpg'),
(103, 43, '_wp_attachment_context', 'custom-header'),
(104, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1950;s:6:\"height\";i:499;s:4:\"file\";s:24:\"2019/11/cropped-hero.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"cropped-hero-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"cropped-hero-600x154.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"cropped-hero-300x77.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:77;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"cropped-hero-768x197.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:197;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"cropped-hero-1024x262.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:262;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-hero-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"cropped-hero-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"cropped-hero-600x154.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-hero-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 43, '_wp_attachment_custom_header_last_used_storefront', '1573696324'),
(106, 43, '_wp_attachment_is_custom_header', 'storefront'),
(107, 44, '_edit_lock', '1573696276:1'),
(108, 45, '_wp_attached_file', '2019/11/bgblack.jpg'),
(109, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:720;s:4:\"file\";s:19:\"2019/11/bgblack.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"bgblack-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"bgblack-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bgblack-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bgblack-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"bgblack-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"bgblack-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"bgblack-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"bgblack-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"bgblack-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"bgblack-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 45, '_wp_attachment_is_custom_background', 'storefront'),
(111, 46, '_wp_attached_file', '2019/11/toscabg.jpg'),
(112, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2019/11/toscabg.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"toscabg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"toscabg-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"toscabg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"toscabg-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"toscabg-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"toscabg-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"toscabg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"toscabg-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"toscabg-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"toscabg-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 46, '_wp_attachment_is_custom_background', 'storefront'),
(114, 44, '_wp_trash_meta_status', 'publish'),
(115, 44, '_wp_trash_meta_time', '1573696324'),
(116, 48, '_wp_attached_file', '2019/11/rog-gladius.png'),
(117, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:187;s:6:\"height\";i:187;s:4:\"file\";s:23:\"2019/11/rog-gladius.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"rog-gladius-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"rog-gladius-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"rog-gladius-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 17, '_thumbnail_id', '48'),
(119, 17, '_regular_price', '850000'),
(120, 17, '_sale_price', '835000'),
(121, 17, '_price', '835000'),
(122, 51, '_wp_attached_file', '2019/11/asus-sica-strix.jpg'),
(123, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:466;s:6:\"height\";i:466;s:4:\"file\";s:27:\"2019/11/asus-sica-strix.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"asus-sica-strix-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"asus-sica-strix-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"asus-sica-strix-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"asus-sica-strix-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"asus-sica-strix-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:27:\"asus-sica-strix-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"asus-sica-strix-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"asus-sica-strix-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 52, '_wp_attached_file', '2019/11/ergonomics_a.png'),
(125, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:586;s:4:\"file\";s:24:\"2019/11/ergonomics_a.png\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"ergonomics_a-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"ergonomics_a-600x414.png\";s:5:\"width\";i:600;s:6:\"height\";i:414;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ergonomics_a-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ergonomics_a-300x207.png\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"ergonomics_a-768x529.png\";s:5:\"width\";i:768;s:6:\"height\";i:529;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"ergonomics_a-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"ergonomics_a-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"ergonomics_a-600x414.png\";s:5:\"width\";i:600;s:6:\"height\";i:414;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"ergonomics_a-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 54, '_edit_last', '1'),
(127, 54, '_edit_lock', '1573698871:1'),
(130, 54, '_thumbnail_id', '20'),
(131, 54, '_regular_price', '850000'),
(132, 54, '_sale_price', '799000'),
(133, 54, 'total_sales', '0'),
(134, 54, '_tax_status', 'taxable'),
(135, 54, '_tax_class', ''),
(136, 54, '_manage_stock', 'no'),
(137, 54, '_backorders', 'no'),
(138, 54, '_sold_individually', 'no'),
(139, 54, '_virtual', 'no'),
(140, 54, '_downloadable', 'no'),
(141, 54, '_download_limit', '-1'),
(142, 54, '_download_expiry', '-1'),
(143, 54, '_stock', NULL),
(144, 54, '_stock_status', 'instock'),
(145, 54, '_wc_average_rating', '0'),
(146, 54, '_wc_review_count', '0'),
(147, 54, '_product_version', '3.8.0'),
(148, 54, '_price', '799000'),
(149, 56, '_edit_last', '1'),
(150, 56, '_edit_lock', '1573698857:1'),
(151, 57, '_wp_attached_file', '2019/11/m200.png'),
(152, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:489;s:6:\"height\";i:500;s:4:\"file\";s:16:\"2019/11/m200.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"m200-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"m200-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"m200-293x300.png\";s:5:\"width\";i:293;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"m200-416x425.png\";s:5:\"width\";i:416;s:6:\"height\";i:425;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"m200-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:16:\"m200-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"m200-416x425.png\";s:5:\"width\";i:416;s:6:\"height\";i:425;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"m200-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 56, '_thumbnail_id', '57'),
(154, 56, 'total_sales', '0'),
(155, 56, '_tax_status', 'taxable'),
(156, 56, '_tax_class', ''),
(157, 56, '_manage_stock', 'no'),
(158, 56, '_backorders', 'no'),
(159, 56, '_sold_individually', 'no'),
(160, 56, '_virtual', 'no'),
(161, 56, '_downloadable', 'no'),
(162, 56, '_download_limit', '-1'),
(163, 56, '_download_expiry', '-1'),
(164, 56, '_stock', NULL),
(165, 56, '_stock_status', 'instock'),
(166, 56, '_wc_average_rating', '0'),
(167, 56, '_wc_review_count', '0'),
(168, 56, '_product_version', '3.8.0'),
(169, 58, '_wp_trash_meta_status', 'publish'),
(170, 58, '_wp_trash_meta_time', '1573696918'),
(171, 59, '_edit_lock', '1573696947:1'),
(172, 59, '_wp_trash_meta_status', 'publish'),
(173, 59, '_wp_trash_meta_time', '1573696952'),
(174, 60, '_edit_last', '1'),
(175, 60, '_edit_lock', '1573698846:1'),
(176, 60, '_thumbnail_id', '22'),
(177, 60, '_regular_price', '350000'),
(178, 60, '_sale_price', '330000'),
(179, 60, 'total_sales', '0'),
(180, 60, '_tax_status', 'taxable'),
(181, 60, '_tax_class', ''),
(182, 60, '_manage_stock', 'no'),
(183, 60, '_backorders', 'no'),
(184, 60, '_sold_individually', 'no'),
(185, 60, '_virtual', 'no'),
(186, 60, '_downloadable', 'no'),
(187, 60, '_download_limit', '-1'),
(188, 60, '_download_expiry', '-1'),
(189, 60, '_stock', NULL),
(190, 60, '_stock_status', 'instock'),
(191, 60, '_wc_average_rating', '0'),
(192, 60, '_wc_review_count', '0'),
(193, 60, '_product_version', '3.8.0'),
(194, 60, '_price', '330000'),
(195, 62, '_edit_last', '1'),
(196, 62, '_edit_lock', '1573698835:1'),
(197, 63, '_wp_attached_file', '2019/11/gl63-8rc.jpg'),
(198, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:20:\"2019/11/gl63-8rc.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gl63-8rc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"gl63-8rc-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"gl63-8rc-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 62, '_thumbnail_id', '63'),
(200, 62, '_regular_price', '13000000'),
(201, 62, '_sale_price', '12500000'),
(202, 62, 'total_sales', '0'),
(203, 62, '_tax_status', 'taxable'),
(204, 62, '_tax_class', ''),
(205, 62, '_manage_stock', 'no'),
(206, 62, '_backorders', 'no'),
(207, 62, '_sold_individually', 'no'),
(208, 62, '_virtual', 'no'),
(209, 62, '_downloadable', 'no'),
(210, 62, '_download_limit', '-1'),
(211, 62, '_download_expiry', '-1'),
(212, 62, '_stock', NULL),
(213, 62, '_stock_status', 'instock'),
(214, 62, '_wc_average_rating', '0'),
(215, 62, '_wc_review_count', '0'),
(216, 62, '_product_version', '3.8.0'),
(217, 62, '_price', '12500000'),
(218, 65, '_edit_last', '1'),
(219, 65, '_edit_lock', '1574306048:1'),
(220, 66, '_wp_attached_file', '2019/11/gl62-6qf.jpg'),
(221, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:20:\"2019/11/gl62-6qf.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"gl62-6qf-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"gl62-6qf-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"gl62-6qf-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(222, 65, '_thumbnail_id', '66'),
(223, 65, 'total_sales', '0'),
(224, 65, '_tax_status', 'taxable'),
(225, 65, '_tax_class', ''),
(226, 65, '_manage_stock', 'no'),
(227, 65, '_backorders', 'no'),
(228, 65, '_sold_individually', 'no'),
(229, 65, '_virtual', 'no'),
(230, 65, '_downloadable', 'no'),
(231, 65, '_download_limit', '-1'),
(232, 65, '_download_expiry', '-1'),
(233, 65, '_stock', NULL),
(234, 65, '_stock_status', 'instock'),
(235, 65, '_wc_average_rating', '0'),
(236, 65, '_wc_review_count', '0'),
(237, 65, '_product_version', '3.8.0'),
(238, 65, '_regular_price', '11000000'),
(239, 65, '_sale_price', '10499000'),
(240, 65, '_price', '10499000'),
(241, 67, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1573701216;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(242, 68, '_wp_attached_file', '2019/11/img.jpg'),
(243, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1380;s:4:\"file\";s:15:\"2019/11/img.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"img-600x345.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:345;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"img-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"img-300x173.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"img-768x442.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:442;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"img-1024x589.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:589;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:15:\"img-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"img-600x345.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:345;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"img-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 69, '_wp_attached_file', '2019/11/Asus_Grey.jpg'),
(245, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1536;s:6:\"height\";i:900;s:4:\"file\";s:21:\"2019/11/Asus_Grey.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Asus_Grey-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"Asus_Grey-600x352.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:352;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Asus_Grey-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Asus_Grey-300x176.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"Asus_Grey-768x450.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"Asus_Grey-1024x600.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Asus_Grey-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"Asus_Grey-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"Asus_Grey-600x352.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:352;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Asus_Grey-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 70, '_wp_attached_file', '2019/11/6208228_rd.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(247, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1806;s:6:\"height\";i:953;s:4:\"file\";s:22:\"2019/11/6208228_rd.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"6208228_rd-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"6208228_rd-600x317.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:317;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"6208228_rd-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"6208228_rd-300x158.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:158;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"6208228_rd-768x405.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:405;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"6208228_rd-1024x540.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:540;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"6208228_rd-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:22:\"6208228_rd-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"6208228_rd-600x317.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:317;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"6208228_rd-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(248, 72, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1574303078;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(249, 73, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1574299926;}'),
(250, 76, '_wp_attached_file', '2019/11/DS502.jpg'),
(251, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:17:\"2019/11/DS502.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"DS502-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"DS502-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"DS502-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"DS502-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"DS502-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"DS502-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"DS502-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"DS502-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(252, 77, '_edit_last', '1'),
(253, 77, '_edit_lock', '1574305083:1'),
(254, 77, '_thumbnail_id', '76'),
(255, 77, '_regular_price', '750000'),
(256, 77, 'total_sales', '0'),
(257, 77, '_tax_status', 'taxable'),
(258, 77, '_tax_class', ''),
(259, 77, '_manage_stock', 'no'),
(260, 77, '_backorders', 'no'),
(261, 77, '_sold_individually', 'no'),
(262, 77, '_virtual', 'no'),
(263, 77, '_downloadable', 'no'),
(264, 77, '_download_limit', '-1'),
(265, 77, '_download_expiry', '-1'),
(266, 77, '_stock', NULL),
(267, 77, '_stock_status', 'instock'),
(268, 77, '_wc_average_rating', '0'),
(269, 77, '_wc_review_count', '0'),
(270, 77, '_product_version', '3.8.0'),
(271, 77, '_price', '750000'),
(272, 78, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1574306959;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(273, 79, '_wp_trash_meta_status', 'publish'),
(274, 79, '_wp_trash_meta_time', '1574303365'),
(275, 80, '_wp_trash_meta_status', 'publish'),
(276, 80, '_wp_trash_meta_time', '1574303425'),
(277, 81, '_wp_attached_file', '2019/11/124364.jpg'),
(278, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2019/11/124364.jpg\";s:5:\"sizes\";a:15:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"124364-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"124364-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"124364-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"124364-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"shopical-slider-full\";a:4:{s:4:\"file\";s:19:\"124364-1024x550.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"shopical-featured\";a:4:{s:4:\"file\";s:19:\"124364-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"shopical-medium-center\";a:4:{s:4:\"file\";s:18:\"124364-936x897.jpg\";s:5:\"width\";i:936;s:6:\"height\";i:897;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"shopical-medium-slider\";a:4:{s:4:\"file\";s:18:\"124364-720x450.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"shopical-thumbnail\";a:4:{s:4:\"file\";s:18:\"124364-450x410.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"124364-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"124364-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"124364-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"124364-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"124364-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"124364-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(279, 82, '_wp_attached_file', '2019/11/cropped-124364.jpg'),
(280, 82, '_wp_attachment_context', 'custom-header'),
(281, 82, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1500;s:6:\"height\";i:175;s:4:\"file\";s:26:\"2019/11/cropped-124364.jpg\";s:5:\"sizes\";a:15:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-124364-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"cropped-124364-300x35.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"cropped-124364-768x90.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"cropped-124364-1024x119.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"shopical-slider-full\";a:4:{s:4:\"file\";s:27:\"cropped-124364-1024x175.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"shopical-featured\";a:4:{s:4:\"file\";s:27:\"cropped-124364-1024x119.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"shopical-medium-center\";a:4:{s:4:\"file\";s:26:\"cropped-124364-936x175.jpg\";s:5:\"width\";i:936;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"shopical-medium-slider\";a:4:{s:4:\"file\";s:26:\"cropped-124364-720x175.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"shopical-thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-124364-450x175.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-124364-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"cropped-124364-600x70.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-124364-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"cropped-124364-300x175.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:175;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"cropped-124364-600x70.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-124364-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:81;}'),
(282, 82, '_wp_attachment_custom_header_last_used_shopage', '1574303502'),
(283, 82, '_wp_attachment_is_custom_header', 'shopage'),
(284, 83, '_wp_trash_meta_status', 'publish'),
(285, 83, '_wp_trash_meta_time', '1574303502'),
(286, 84, '_edit_last', '1'),
(287, 84, '_edit_lock', '1574305287:1'),
(288, 85, '_wp_attached_file', '2019/11/Immerse-gh70rgb.jpg'),
(289, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:900;s:6:\"height\";i:727;s:4:\"file\";s:27:\"2019/11/Immerse-gh70rgb.jpg\";s:5:\"sizes\";a:12:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-300x242.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:242;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-768x620.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:620;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"shopical-slider-full\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-900x550.jpg\";s:5:\"width\";i:900;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"shopical-medium-slider\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-720x450.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"shopical-thumbnail\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-450x410.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"Immerse-gh70rgb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-600x485.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:485;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-600x485.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:485;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"Immerse-gh70rgb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(290, 84, '_thumbnail_id', '85'),
(291, 84, '_regular_price', '1300000'),
(292, 84, 'total_sales', '0'),
(293, 84, '_tax_status', 'taxable'),
(294, 84, '_tax_class', ''),
(295, 84, '_manage_stock', 'no'),
(296, 84, '_backorders', 'no'),
(297, 84, '_sold_individually', 'no'),
(298, 84, '_virtual', 'no'),
(299, 84, '_downloadable', 'no'),
(300, 84, '_download_limit', '-1'),
(301, 84, '_download_expiry', '-1'),
(302, 84, '_stock', NULL),
(303, 84, '_stock_status', 'instock'),
(304, 84, '_wc_average_rating', '0'),
(305, 84, '_wc_review_count', '0'),
(306, 84, '_product_version', '3.8.0'),
(307, 84, '_price', '1300000'),
(308, 89, '_wp_attached_file', '2019/11/Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail.jpg'),
(309, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:468;s:4:\"file\";s:84:\"2019/11/Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail.jpg\";s:5:\"sizes\";a:11:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-300x176.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-768x449.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:449;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:22:\"shopical-medium-slider\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-720x450.jpg\";s:5:\"width\";i:720;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"shopical-thumbnail\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-450x410.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:410;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-600x351.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-600x351.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:351;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:84:\"Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 90, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1574310605;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(311, 91, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1574307006;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(312, 92, '_action_manager_schedule', 'O:32:\"ActionScheduler_IntervalSchedule\":2:{s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1574310607;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}'),
(313, 94, '_edit_last', '1'),
(314, 94, '_edit_lock', '1574308757:1'),
(317, 96, '_wp_attached_file', '2019/11/a1-1.png'),
(318, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:466;s:6:\"height\";i:311;s:4:\"file\";s:16:\"2019/11/a1-1.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"a1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"a1-1-300x200.png\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"shopical-thumbnail\";a:4:{s:4:\"file\";s:16:\"a1-1-450x311.png\";s:5:\"width\";i:450;s:6:\"height\";i:311;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"a1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"a1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"a1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"a1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 94, '_thumbnail_id', '96'),
(320, 94, '_regular_price', '3850000'),
(321, 94, 'total_sales', '0'),
(322, 94, '_tax_status', 'taxable'),
(323, 94, '_tax_class', ''),
(324, 94, '_manage_stock', 'no'),
(325, 94, '_backorders', 'no'),
(326, 94, '_sold_individually', 'no'),
(327, 94, '_virtual', 'no'),
(328, 94, '_downloadable', 'no'),
(329, 94, '_download_limit', '-1'),
(330, 94, '_download_expiry', '-1'),
(331, 94, '_stock', NULL),
(332, 94, '_stock_status', 'instock'),
(333, 94, '_wc_average_rating', '0'),
(334, 94, '_wc_review_count', '0'),
(335, 94, '_product_version', '3.8.0'),
(336, 94, '_price', '3850000'),
(337, 97, '_edit_last', '1'),
(338, 97, '_edit_lock', '1574309104:1'),
(339, 98, '_wp_attached_file', '2019/11/a1.png'),
(340, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:355;s:6:\"height\";i:355;s:4:\"file\";s:14:\"2019/11/a1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"a1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"a1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"a1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"a1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(341, 97, '_thumbnail_id', '98'),
(342, 97, '_regular_price', '159000'),
(343, 97, 'total_sales', '0'),
(344, 97, '_tax_status', 'taxable'),
(345, 97, '_tax_class', ''),
(346, 97, '_manage_stock', 'no'),
(347, 97, '_backorders', 'no'),
(348, 97, '_sold_individually', 'no'),
(349, 97, '_virtual', 'no'),
(350, 97, '_downloadable', 'no'),
(351, 97, '_download_limit', '-1'),
(352, 97, '_download_expiry', '-1'),
(353, 97, '_stock', NULL),
(354, 97, '_stock_status', 'instock'),
(355, 97, '_wc_average_rating', '0'),
(356, 97, '_wc_review_count', '0'),
(357, 97, '_product_version', '3.8.0'),
(358, 97, '_price', '159000');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-11-14 01:02:49', '2019-11-14 01:02:49', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-11-14 01:02:49', '2019-11-14 01:02:49', '', 0, 'http://localhost/commerce/?p=1', 0, 'post', '', 1),
(2, 1, '2019-11-14 01:02:49', '2019-11-14 01:02:49', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/commerce/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-11-14 01:02:49', '2019-11-14 01:02:49', '', 0, 'http://localhost/commerce/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-11-14 01:02:49', '2019-11-14 01:02:49', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/commerce.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-11-14 01:02:49', '2019-11-14 01:02:49', '', 0, 'http://localhost/commerce/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-11-14 01:05:58', '2019-11-14 01:05:58', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-11-14 01:05:58', '2019-11-14 01:05:58', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2019-11-14 01:07:12', '2019-11-14 01:07:12', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-11-14 01:07:12', '2019-11-14 01:07:12', '', 0, 'http://localhost/commerce/shop/', 0, 'page', '', 0),
(7, 1, '2019-11-14 01:07:13', '2019-11-14 01:07:13', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-11-14 01:07:13', '2019-11-14 01:07:13', '', 0, 'http://localhost/commerce/cart/', 0, 'page', '', 0),
(8, 1, '2019-11-14 01:07:13', '2019-11-14 01:07:13', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-11-14 01:07:13', '2019-11-14 01:07:13', '', 0, 'http://localhost/commerce/checkout/', 0, 'page', '', 0),
(9, 1, '2019-11-14 01:07:13', '2019-11-14 01:07:13', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-11-14 01:07:13', '2019-11-14 01:07:13', '', 0, 'http://localhost/commerce/my-account/', 0, 'page', '', 0),
(10, 0, '2019-11-14 01:10:53', '2019-11-14 01:10:53', '[\"wc_admin_update_0201_order_status_index\"]', 'woocommerce_run_update_callback', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dcca9ccabc630.18540810-pQhvmfySOQKO2QmC0cbzjmUKnrR4ZSjQ', '', '', '2019-11-14 01:11:40', '2019-11-14 01:11:40', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=10', 0, 'scheduled-action', '', 3),
(11, 0, '2019-11-14 01:10:54', '2019-11-14 01:10:54', '[\"wc_admin_update_0201_db_version\"]', 'woocommerce_run_update_callback', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dcca9cd0cb303.97462980-DYJCBdmeir3f0VI3Hpu81VeavxOWK66d', '', '', '2019-11-14 01:11:41', '2019-11-14 01:11:41', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=11', 0, 'scheduled-action', '', 3),
(12, 0, '2019-11-14 01:10:54', '2019-11-14 01:10:54', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dcca9cd5e2e07.59898853-BqfdSavrMYocY24rxrK8uEr7Vrymb574', '', '', '2019-11-14 01:11:41', '2019-11-14 01:11:41', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=12', 0, 'scheduled-action', '', 3),
(13, 0, '2019-11-14 02:11:41', '2019-11-14 02:11:41', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dccb850830009.55885509-EVRxmytxqzrwDT3AFi7xJg7NCMaInyXj', '', '', '2019-11-14 02:13:36', '2019-11-14 02:13:36', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=13', 0, 'scheduled-action', '', 3),
(15, 0, '2019-11-14 01:11:58', '2019-11-14 01:11:58', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dcca9e46644d0.51368229-2EKV5Jvztgt2mJX0s04U3O77OJTj7gbB', '', '', '2019-11-14 01:12:04', '2019-11-14 01:12:04', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=15', 0, 'scheduled-action', '', 3),
(16, 1, '2019-11-14 01:12:21', '0000-00-00 00:00:00', '', 'Komputer', '', 'draft', 'open', 'closed', '', '', '', '', '2019-11-14 01:12:21', '2019-11-14 01:12:21', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=16', 0, 'product', '', 0),
(17, 1, '2019-11-14 01:15:28', '2019-11-14 01:15:28', '', 'ROG Gladius', '', 'publish', 'open', 'closed', '', 'mouse', '', '', '2019-11-14 02:37:20', '2019-11-14 02:37:20', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=17', 0, 'product', '', 0),
(18, 1, '2019-11-14 01:18:20', '2019-11-14 01:18:20', '', 'laptop', '', 'inherit', 'open', 'closed', '', 'laptop', '', '', '2019-11-14 01:18:20', '2019-11-14 01:18:20', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/laptop.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2019-11-14 01:20:03', '2019-11-14 01:20:03', '', 'mouse', '', 'inherit', 'open', 'closed', '', 'mouse-2', '', '', '2019-11-14 01:20:03', '2019-11-14 01:20:03', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/mouse.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2019-11-14 01:26:29', '2019-11-14 01:26:29', '', 'legion-Y', '', 'inherit', 'open', 'closed', '', 'legion-y', '', '', '2019-11-14 01:26:29', '2019-11-14 01:26:29', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/legion-Y.jpeg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-11-14 01:30:03', '2019-11-14 01:30:03', '', 'asus-aura-sync', '', 'inherit', 'open', 'closed', '', 'asus-aura-sync', '', '', '2019-11-14 01:30:03', '2019-11-14 01:30:03', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/asus-aura-sync.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2019-11-14 01:31:52', '2019-11-14 01:31:52', '', 'a4tech-x7-xl-747h', '', 'inherit', 'open', 'closed', '', 'a4tech-x7-xl-747h', '', '', '2019-11-14 01:31:52', '2019-11-14 01:31:52', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/a4tech-x7-xl-747h.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2019-11-14 01:38:05', '2019-11-14 01:38:05', '', 'ROG Gladius II', '', 'publish', 'open', 'closed', '', 'rog-gladius-ii', '', '', '2019-11-14 02:37:06', '2019-11-14 02:37:06', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=26', 0, 'product', '', 0),
(27, 1, '2019-11-14 01:36:32', '2019-11-14 01:36:32', '', 'rog-gladius-ii', '', 'inherit', 'open', 'closed', '', 'rog-gladius-ii-2', '', '', '2019-11-14 01:40:13', '2019-11-14 01:40:13', '', 26, 'http://localhost/commerce/wp-content/uploads/2019/11/rog-gladius-ii.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-11-14 01:44:41', '2019-11-14 01:44:41', '', 'Hero', '', 'inherit', 'open', 'closed', '', 'hero-image', '', '', '2019-11-14 01:44:41', '2019-11-14 01:44:41', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-11-14 01:44:41', '2019-11-14 01:44:41', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-11-14 01:44:41', '2019-11-14 01:44:41', '', 0, 'http://localhost/commerce/?page_id=30', 0, 'page', '', 0),
(31, 1, '2019-11-14 01:44:41', '2019-11-14 01:44:41', '\n					<!-- wp:cover {\"url\":\"http://localhost/commerce/wp-content/uploads/2019/11/hero.jpg\",\"id\":29,\"dimRatio\":0,\"customOverlayColor\":\"#ffffff\",\"align\":\"full\"} -->\n					<div class=\"wp-block-cover alignfull\" style=\"background-image:url(http://localhost/commerce/wp-content/uploads/2019/11/hero.jpg);background-color:#ffffff\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"level\":1,\"align\":\"center\"} -->\n					<h1 style=\"text-align:center\">Welcome</h1>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#000000\"} -->\n					<p style=\"color:#000000;text-align:center\" class=\"has-text-color\">This is your homepage which is what most visitors will see when they first visit your shop.</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#000000\"} -->\n					<p style=\"color:#000000;text-align:center\" class=\"has-text-color\">You can change this text by editing the \"Welcome\" page via the \"Pages\" menu in your dashboard.</p>\n					<!-- /wp:paragraph --></div></div>\n					<!-- /wp:cover -->\n				\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Shop by Category</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:shortcode -->\n				[product_categories limit=\"3\" columns=\"3\" orderby=\"menu_order\"]\n				<!-- /wp:shortcode -->\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">New In</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:woocommerce/product-new {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-new\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\"]</div>\n				<!-- /wp:woocommerce/product-new -->\n\n				\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Fan Favorites</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:woocommerce/product-top-rated {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-top-rated\">[products limit=\"4\" columns=\"4\" orderby=\"rating\"]</div>\n				<!-- /wp:woocommerce/product-top-rated -->\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">On Sale</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n				<!-- /wp:woocommerce/product-on-sale -->\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Best Sellers</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:woocommerce/product-best-sellers {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-best-sellers\">[products limit=\"4\" columns=\"4\" best_selling=\"1\"]</div>\n				<!-- /wp:woocommerce/product-best-sellers -->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2019-11-14 01:44:41', '2019-11-14 01:44:41', '', 0, 'http://localhost/commerce/?page_id=31', 0, 'page', '', 0),
(32, 1, '2019-11-14 01:44:41', '2019-11-14 01:44:41', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            29,\n            30,\n            31\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:44:41\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:42:35\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 31,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:42:35\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 30,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:42:35\"\n    },\n    \"storefront::header_image\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:44:41\"\n    },\n    \"storefront::header_image_data\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:44:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6fb65fae-e874-4e0a-885f-c529c16bc887', '', '', '2019-11-14 01:44:41', '2019-11-14 01:44:41', '', 0, 'http://localhost/commerce/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2019-11-14 01:44:05', '2019-11-14 01:44:05', '', 'blizzard_logo_mg', '', 'inherit', 'open', 'closed', '', 'blizzard_logo_mg', '', '', '2019-11-14 01:44:05', '2019-11-14 01:44:05', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/blizzard_logo_mg.gif', 0, 'attachment', 'image/gif', 0),
(34, 1, '2019-11-14 01:44:20', '2019-11-14 01:44:20', '', 'cropped-blizzard_logo_mg.gif', '', 'inherit', 'open', 'closed', '', 'cropped-blizzard_logo_mg-gif', '', '', '2019-11-14 01:44:20', '2019-11-14 01:44:20', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/cropped-blizzard_logo_mg.gif', 0, 'attachment', 'image/gif', 0),
(35, 1, '2019-11-14 01:44:41', '2019-11-14 01:44:41', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-11-14 01:44:41', '2019-11-14 01:44:41', '', 30, 'http://localhost/commerce/2019/11/14/30-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-11-14 01:44:41', '2019-11-14 01:44:41', '\n					<!-- wp:cover {\"url\":\"http://localhost/commerce/wp-content/uploads/2019/11/hero.jpg\",\"id\":29,\"dimRatio\":0,\"customOverlayColor\":\"#ffffff\",\"align\":\"full\"} -->\n					<div class=\"wp-block-cover alignfull\" style=\"background-image:url(http://localhost/commerce/wp-content/uploads/2019/11/hero.jpg);background-color:#ffffff\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"level\":1,\"align\":\"center\"} -->\n					<h1 style=\"text-align:center\">Welcome</h1>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#000000\"} -->\n					<p style=\"color:#000000;text-align:center\" class=\"has-text-color\">This is your homepage which is what most visitors will see when they first visit your shop.</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:paragraph {\"align\":\"center\",\"customTextColor\":\"#000000\"} -->\n					<p style=\"color:#000000;text-align:center\" class=\"has-text-color\">You can change this text by editing the \"Welcome\" page via the \"Pages\" menu in your dashboard.</p>\n					<!-- /wp:paragraph --></div></div>\n					<!-- /wp:cover -->\n				\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Shop by Category</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:shortcode -->\n				[product_categories limit=\"3\" columns=\"3\" orderby=\"menu_order\"]\n				<!-- /wp:shortcode -->\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">New In</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:woocommerce/product-new {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-new\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\"]</div>\n				<!-- /wp:woocommerce/product-new -->\n\n				\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Fan Favorites</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:woocommerce/product-top-rated {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-top-rated\">[products limit=\"4\" columns=\"4\" orderby=\"rating\"]</div>\n				<!-- /wp:woocommerce/product-top-rated -->\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">On Sale</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n				<!-- /wp:woocommerce/product-on-sale -->\n\n				<!-- wp:heading {\"align\":\"center\"} -->\n				<h2 style=\"text-align:center\">Best Sellers</h2>\n				<!-- /wp:heading -->\n\n				<!-- wp:woocommerce/product-best-sellers {\"columns\":4} -->\n				<div class=\"wp-block-woocommerce-product-best-sellers\">[products limit=\"4\" columns=\"4\" best_selling=\"1\"]</div>\n				<!-- /wp:woocommerce/product-best-sellers -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-11-14 01:44:41', '2019-11-14 01:44:41', '', 31, 'http://localhost/commerce/2019/11/14/31-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2019-11-14 01:47:11', '2019-11-14 01:47:11', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2019-11-14 01:47:11', '2019-11-14 01:47:11', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/bg.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2019-11-14 01:48:23', '2019-11-14 01:48:23', '{\n    \"storefront::background_image\": {\n        \"value\": \"http://localhost/commerce/wp-content/uploads/2019/11/bg.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:48:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bb2496d2-8e7b-467a-b6c5-44985650c74c', '', '', '2019-11-14 01:48:23', '2019-11-14 01:48:23', '', 0, 'http://localhost/commerce/?p=38', 0, 'customize_changeset', '', 0),
(39, 1, '2019-11-14 01:47:56', '2019-11-14 01:47:56', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg-2', '', '', '2019-11-14 01:47:56', '2019-11-14 01:47:56', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-11-14 01:48:37', '2019-11-14 01:48:37', '{\n    \"storefront::background_position_x\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:48:36\"\n    },\n    \"storefront::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:48:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd2b7519d-01cb-4b8c-9375-6f46c43ca050', '', '', '2019-11-14 01:48:37', '2019-11-14 01:48:37', '', 0, 'http://localhost/commerce/?p=40', 0, 'customize_changeset', '', 0),
(41, 1, '2019-11-14 01:48:55', '2019-11-14 01:48:55', '{\n    \"storefront::background_size\": {\n        \"value\": \"cover\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:48:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bccc75bf-daa4-4b6b-b418-f9549d1eefc4', '', '', '2019-11-14 01:48:55', '2019-11-14 01:48:55', '', 0, 'http://localhost/commerce/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2019-11-14 01:49:46', '2019-11-14 01:49:46', '{\n    \"storefront::storefront_header_text_color\": {\n        \"value\": \"#257500\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:49:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0932b273-b216-469e-b3f8-d99a5c4b1004', '', '', '2019-11-14 01:49:46', '2019-11-14 01:49:46', '', 0, 'http://localhost/commerce/?p=42', 0, 'customize_changeset', '', 0),
(43, 1, '2019-11-14 01:50:09', '2019-11-14 01:50:09', '', 'cropped-hero.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-hero-jpg', '', '', '2019-11-14 01:50:09', '2019-11-14 01:50:09', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/cropped-hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2019-11-14 01:52:04', '2019-11-14 01:52:04', '{\n    \"storefront::header_image\": {\n        \"value\": \"http://localhost/commerce/wp-content/uploads/2019/11/cropped-hero.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:50:19\"\n    },\n    \"storefront::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/commerce/wp-content/uploads/2019/11/cropped-hero.jpg\",\n            \"thumbnail_url\": \"http://localhost/commerce/wp-content/uploads/2019/11/cropped-hero.jpg\",\n            \"timestamp\": 1573696209958,\n            \"attachment_id\": 43,\n            \"width\": 1950,\n            \"height\": 499\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:50:19\"\n    },\n    \"storefront::background_image\": {\n        \"value\": \"http://localhost/commerce/wp-content/uploads/2019/11/toscabg.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 01:52:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '36b5bf8b-9a5b-4585-afeb-32564b2641a5', '', '', '2019-11-14 01:52:04', '2019-11-14 01:52:04', '', 0, 'http://localhost/commerce/?p=44', 0, 'customize_changeset', '', 0),
(45, 1, '2019-11-14 01:51:00', '2019-11-14 01:51:00', '', 'bgblack', '', 'inherit', 'open', 'closed', '', 'bgblack', '', '', '2019-11-14 01:51:00', '2019-11-14 01:51:00', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/bgblack.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-11-14 01:51:56', '2019-11-14 01:51:56', '', 'toscabg', '', 'inherit', 'open', 'closed', '', 'toscabg', '', '', '2019-11-14 01:51:56', '2019-11-14 01:51:56', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/toscabg.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2019-11-14 01:53:40', '2019-11-14 01:53:40', '', 'ROG Gladius', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2019-11-14 01:53:40', '2019-11-14 01:53:40', '', 17, 'http://localhost/commerce/2019/11/14/17-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2019-11-14 01:53:52', '2019-11-14 01:53:52', '', 'rog-gladius', '', 'inherit', 'open', 'closed', '', 'rog-gladius', '', '', '2019-11-14 01:53:52', '2019-11-14 01:53:52', '', 17, 'http://localhost/commerce/wp-content/uploads/2019/11/rog-gladius.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2019-11-14 01:56:44', '2019-11-14 01:56:44', '', 'asus-sica-strix', '', 'inherit', 'open', 'closed', '', 'asus-sica-strix', '', '', '2019-11-14 01:56:44', '2019-11-14 01:56:44', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/asus-sica-strix.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-11-14 01:58:10', '2019-11-14 01:58:10', '', 'ergonomics_a', '', 'inherit', 'open', 'closed', '', 'ergonomics_a', '', '', '2019-11-14 01:58:10', '2019-11-14 01:58:10', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/ergonomics_a.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2019-11-14 01:59:58', '2019-11-14 01:59:58', '', 'Legion Y', '', 'publish', 'open', 'closed', '', 'legion-y', '', '', '2019-11-14 02:36:49', '2019-11-14 02:36:49', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=54', 0, 'product', '', 0),
(56, 1, '2019-11-14 02:01:38', '2019-11-14 02:01:38', '', 'Legion M200', '', 'publish', 'open', 'closed', '', 'legion-m200', '', '', '2019-11-14 02:36:39', '2019-11-14 02:36:39', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2019-11-14 02:01:33', '2019-11-14 02:01:33', '', 'm200', '', 'inherit', 'open', 'closed', '', 'm200', '', '', '2019-11-14 02:01:33', '2019-11-14 02:01:33', '', 56, 'http://localhost/commerce/wp-content/uploads/2019/11/m200.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2019-11-14 02:01:57', '2019-11-14 02:01:57', '{\n    \"storefront::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 02:01:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eea24f0f-2c75-4e46-be3b-42fa68a94dce', '', '', '2019-11-14 02:01:57', '2019-11-14 02:01:57', '', 0, 'http://localhost/commerce/2019/11/14/eea24f0f-2c75-4e46-be3b-42fa68a94dce/', 0, 'customize_changeset', '', 0),
(59, 1, '2019-11-14 02:02:32', '2019-11-14 02:02:32', '{\n    \"storefront::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-14 02:02:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '22efd409-7a4e-4cbb-9980-589be5243b76', '', '', '2019-11-14 02:02:32', '2019-11-14 02:02:32', '', 0, 'http://localhost/commerce/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2019-11-14 02:03:29', '2019-11-14 02:03:29', '', 'A4Tech X7', '', 'publish', 'open', 'closed', '', 'a4tech-x7', '', '', '2019-11-14 02:36:28', '2019-11-14 02:36:28', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=60', 0, 'product', '', 0),
(62, 1, '2019-11-14 02:06:23', '2019-11-14 02:06:23', '', 'MSI GL63-8RC', '', 'publish', 'open', 'closed', '', 'msi-gl63-8rc', '', '', '2019-11-14 02:36:17', '2019-11-14 02:36:17', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=62', 0, 'product', '', 0),
(63, 1, '2019-11-14 02:06:06', '2019-11-14 02:06:06', '', 'gl63-8rc', '', 'inherit', 'open', 'closed', '', 'gl63-8rc', '', '', '2019-11-14 02:06:06', '2019-11-14 02:06:06', '', 62, 'http://localhost/commerce/wp-content/uploads/2019/11/gl63-8rc.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-11-14 02:09:07', '2019-11-14 02:09:07', '<strong>GL62M-7RDX-2082/ 2635 </strong>\r\n\r\n- Intel Kaby Lake 7th Quad Core i7 7700HQ 2.8GHz up to 3.8GHz (6MB Cache)\r\n\r\n- 8GB RAM DDR4 (Max. 32GB), 1TB HDD 5400RPM (M.2 SSD Slot Available)\r\n\r\n- Intel HD Graphics 630 / nVidia GeForce GTX1050 2GB DDR5\r\n\r\n- DOS/ No OS\r\n\r\n- No DVD\r\n\r\n- 15.6\"inch FHD WVA Matte LED Display\r\n\r\n- 4 x 2W Speaker with Nahimic Sound Enhancer\r\n\r\n- Audio Boost\r\n\r\n- Steelseries Backlit Keyboard\r\n\r\n- HD Webcam\r\n\r\n- 1x Type-C USB 3.1, 2x Type-A USB 3.0, 1x Type-A USB 2.0, 1x RJ45 Gigabit LAN\r\n\r\n- 1x SD Card Reader (XC/HC), 1x HDMI v1.4, 1x Mini Display Port, 1x Mic In\r\n\r\n- 1x Headphone Out (SPDIF), Integrated WiFi 802.11ac + Bluetooth v4.2 - 2.2kg included 6 cells battery', 'MSI-GL62-6QF', '', 'publish', 'open', 'closed', '', 'msi-gl62-6qf', '', '', '2019-11-21 03:07:35', '2019-11-21 03:07:35', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=65', 0, 'product', '', 0),
(66, 1, '2019-11-14 02:09:03', '2019-11-14 02:09:03', '', 'gl62-6qf', '', 'inherit', 'open', 'closed', '', 'gl62-6qf', '', '', '2019-11-14 02:09:03', '2019-11-14 02:09:03', '', 65, 'http://localhost/commerce/wp-content/uploads/2019/11/gl62-6qf.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 0, '2019-11-14 03:13:36', '2019-11-14 03:13:36', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dd5e75615f4b8.99754645-4dEvAIeg7g4oTRw2K9QtNya5MeMWg4cG', '', '', '2019-11-21 01:24:38', '2019-11-21 01:24:38', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=67', 0, 'scheduled-action', '', 3),
(68, 1, '2019-11-14 02:32:21', '2019-11-14 02:32:21', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2019-11-14 02:32:21', '2019-11-14 02:32:21', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/img.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2019-11-14 02:33:19', '2019-11-14 02:33:19', '', 'Asus_Grey', '', 'inherit', 'open', 'closed', '', 'asus_grey', '', '', '2019-11-14 02:33:19', '2019-11-14 02:33:19', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/Asus_Grey.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2019-11-14 02:34:54', '2019-11-14 02:34:54', '', '6208228_rd', '', 'inherit', 'open', 'closed', '', '6208228_rd', '', '', '2019-11-14 02:34:54', '2019-11-14 02:34:54', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/6208228_rd.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 0, '2019-11-21 02:24:38', '2019-11-21 02:24:38', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dd5f67f7c6378.09886612-T72KODzXjoJmt8sDOiMHqYYRnRZNmGhF', '', '', '2019-11-21 02:29:19', '2019-11-21 02:29:19', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=72', 0, 'scheduled-action', '', 3),
(73, 0, '2019-11-21 01:32:06', '2019-11-21 01:32:06', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dd5e9580acee1.74245533-eSc4ewUOaUqFGikVlymMr2xnTNUfYJCO', '', '', '2019-11-21 01:33:12', '2019-11-21 01:33:12', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=73', 0, 'scheduled-action', '', 3),
(74, 1, '2019-11-21 01:33:42', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-11-21 01:33:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/commerce/?post_type=product&p=74', 0, 'product', '', 0),
(75, 1, '2019-11-21 01:33:48', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-11-21 01:33:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/commerce/?post_type=product&p=75', 0, 'product', '', 0),
(76, 1, '2019-11-21 01:35:47', '2019-11-21 01:35:47', '', 'DS502', '', 'inherit', 'open', 'closed', '', 'ds502', '', '', '2019-11-21 01:35:47', '2019-11-21 01:35:47', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/DS502.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-11-21 01:38:10', '2019-11-21 01:38:10', '', 'Headset MSI-DS502', 'Gaming headset,\r\n\r\nFrequency: 20Hz-20KHz,\r\n\r\nImpedance: ≤2.2kΩ,\r\n\r\nSensitivity: 105±3dB,\r\n\r\nCable length: 2 m,\r\n\r\nOmnidirectional', 'publish', 'open', 'closed', '', 'headset-msi-ds502', '', '', '2019-11-21 01:38:12', '2019-11-21 01:38:12', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=77', 0, 'product', '', 0),
(78, 0, '2019-11-21 03:29:19', '2019-11-21 03:29:19', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dd604bd53f8a4.60975750-GtTD2yEKsTtVtdAuQZigUZ4bx3maCz1z', '', '', '2019-11-21 03:30:05', '2019-11-21 03:30:05', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=78', 0, 'scheduled-action', '', 3),
(79, 1, '2019-11-21 02:29:23', '2019-11-21 02:29:23', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"header-1\": [],\n            \"footer-1\": [],\n            \"footer-2\": [],\n            \"footer-3\": [],\n            \"footer-4\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-21 02:29:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '848c9411-02a5-4c46-a933-c4d4d6a31de6', '', '', '2019-11-21 02:29:23', '2019-11-21 02:29:23', '', 0, 'http://localhost/commerce/2019/11/21/848c9411-02a5-4c46-a933-c4d4d6a31de6/', 0, 'customize_changeset', '', 0),
(80, 1, '2019-11-21 02:30:24', '2019-11-21 02:30:24', '{\n    \"blogdescription\": {\n        \"value\": \"Toko Komputer Terlengkap\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-21 02:30:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8f489b58-7408-49c2-80a3-4fa0562eeb4b', '', '', '2019-11-21 02:30:24', '2019-11-21 02:30:24', '', 0, 'http://localhost/commerce/2019/11/21/8f489b58-7408-49c2-80a3-4fa0562eeb4b/', 0, 'customize_changeset', '', 0),
(81, 1, '2019-11-21 02:31:29', '2019-11-21 02:31:29', '', '124364', '', 'inherit', 'open', 'closed', '', '124364', '', '', '2019-11-21 02:31:29', '2019-11-21 02:31:29', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/124364.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2019-11-21 02:31:37', '2019-11-21 02:31:37', '', 'cropped-124364.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-124364-jpg', '', '', '2019-11-21 02:31:37', '2019-11-21 02:31:37', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/cropped-124364.jpg', 0, 'attachment', 'image/jpeg', 0),
(83, 1, '2019-11-21 02:31:42', '2019-11-21 02:31:42', '{\n    \"shopage::header_image\": {\n        \"value\": \"http://localhost/commerce/wp-content/uploads/2019/11/cropped-124364.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-21 02:31:42\"\n    },\n    \"shopage::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/commerce/wp-content/uploads/2019/11/cropped-124364.jpg\",\n            \"thumbnail_url\": \"http://localhost/commerce/wp-content/uploads/2019/11/cropped-124364.jpg\",\n            \"timestamp\": 1574303498484,\n            \"attachment_id\": 82,\n            \"width\": 1500,\n            \"height\": 175\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-11-21 02:31:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1a3fd1fe-f747-4798-82bb-e331e3553a5c', '', '', '2019-11-21 02:31:42', '2019-11-21 02:31:42', '', 0, 'http://localhost/commerce/2019/11/21/1a3fd1fe-f747-4798-82bb-e331e3553a5c/', 0, 'customize_changeset', '', 0),
(84, 1, '2019-11-21 03:03:05', '2019-11-21 03:03:05', '', 'Immerse GH-70 RGB', '<ul>\r\n 	<li>Hi-Res certification guarantees the highest sound quality</li>\r\n 	<li>Enhanced Virtual 7.1 Surround Sound</li>\r\n 	<li>Amazing LED Light Effect</li>\r\n 	<li>Smart Audio Controller</li>\r\n 	<li>Choose from millions of colors with RGB Mystic Light</li>\r\n 	<li>Fine-tune detailed settings with Gaming Center</li>\r\n 	<li>Comes fully geared up with all accessories and carry pouch in the box</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'immerse-gh-70-rgb', '', '', '2019-11-21 03:03:08', '2019-11-21 03:03:08', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2019-11-21 03:02:19', '2019-11-21 03:02:19', '', 'Immerse-gh70rgb', '', 'inherit', 'open', 'closed', '', 'immerse-gh70rgb', '', '', '2019-11-21 03:02:19', '2019-11-21 03:02:19', '', 84, 'http://localhost/commerce/wp-content/uploads/2019/11/Immerse-gh70rgb.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2019-11-21 03:03:11', '2019-11-21 03:03:11', '', 'Immerse GH-70 RGB', '<ul>\n 	<li>Hi-Res certification guarantees the highest sound quality</li>\n 	<li>Enhanced Virtual 7.1 Surround Sound</li>\n 	<li>Amazing LED Light Effect</li>\n 	<li>Smart Audio Controller</li>\n 	<li>Choose from millions of colors with RGB Mystic Light</li>\n 	<li>Fine-tune detailed settings with Gaming Center</li>\n 	<li>Comes fully geared up with all accessories and carry pouch in the box</li>\n</ul>', 'inherit', 'closed', 'closed', '', '84-autosave-v1', '', '', '2019-11-21 03:03:11', '2019-11-21 03:03:11', '', 84, 'http://localhost/commerce/2019/11/21/84-autosave-v1/', 0, 'revision', '', 0),
(87, 1, '2019-11-21 03:16:32', '2019-11-21 03:16:32', '<strong>GL62M-7RDX-2082/ 2635 </strong>\n\n- Intel Kaby Lake 7th Quad Core i7 7700HQ 2.8GHz up to 3.8GHz (6MB Cache)\n\n- 8GB RAM DDR4 (Max. 32GB), 1TB HDD 5400RPM (M.2 SSD Slot Available)\n\n- Intel HD Graphics 630 / nVidia GeForce GTX1050 2GB DDR5\n\n- DOS/ No OS\n\n- No DVD\n\n- 15.6\"inch FHD WVA Matte LED Display\n\n- 4 x 2W Speaker with Nahimic Sound Enhancer\n\n- Audio Boost\n\n- Steelseries Backlit Keyboard\n\n- HD Webcam\n\n- 1x Type-C USB 3.1, 2x Type-A USB 3.0, 1x Type-A USB 2.0, 1x RJ45 Gigabit LAN\n\n- 1x SD Card Reader (XC/HC), 1x HDMI v1.4, 1x Mini Display Port, 1x Mic In\n\n- 1x Headphone Out (SPDIF), Integrated WiFi 802.11ac + Bluetooth v4.2 - 2.2kg included 6 cells battery', 'MSI-GL62-6QF', '<p><br data-mce-bogus=\"1\"></p>', 'inherit', 'closed', 'closed', '', '65-autosave-v1', '', '', '2019-11-21 03:16:32', '2019-11-21 03:16:32', '', 65, 'http://localhost/commerce/2019/11/21/65-autosave-v1/', 0, 'revision', '', 0),
(88, 1, '2019-11-21 03:16:32', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-11-21 03:16:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/commerce/?post_type=product&p=88', 0, 'product', '', 0),
(89, 1, '2019-11-21 03:21:32', '2019-11-21 03:21:32', '', 'Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail', '', 'inherit', 'open', 'closed', '', 'cooler-master-rgb-hard-gaming-black-gaming-mouse-pad-726951-gal-1-detail', '', '', '2019-11-21 03:21:32', '2019-11-21 03:21:32', '', 0, 'http://localhost/commerce/wp-content/uploads/2019/11/Cooler-Master-RGB-Hard-Gaming-Black-Gaming-mouse-pad-726951-Gal-1-Detail.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 0, '2019-11-21 04:30:05', '2019-11-21 04:30:05', '[]', 'wc_admin_unsnooze_admin_notes', '', 'pending', 'open', 'closed', '', '', '', '', '2019-11-21 04:30:05', '2019-11-21 04:30:05', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&p=90', 0, 'scheduled-action', '', 2),
(91, 0, '2019-11-21 03:30:06', '2019-11-21 03:30:06', '[]', 'wc_admin_unsnooze_admin_notes', '', 'publish', 'open', 'closed', '', 'scheduled-action-5dd604bf6bb903.02133067-iSnsdbSy8Im3C6uz8Gz9ccSMIyMVZ07j', '', '', '2019-11-21 03:30:07', '2019-11-21 03:30:07', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&#038;p=91', 0, 'scheduled-action', '', 3),
(92, 0, '2019-11-21 04:30:07', '2019-11-21 04:30:07', '[]', 'wc_admin_unsnooze_admin_notes', '', 'pending', 'open', 'closed', '', '', '', '', '2019-11-21 04:30:07', '2019-11-21 04:30:07', '', 0, 'http://localhost/commerce/?post_type=scheduled-action&p=92', 0, 'scheduled-action', '', 1),
(93, 1, '2019-11-21 03:33:06', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2019-11-21 03:33:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/commerce/?post_type=product&p=93', 0, 'product', '', 0),
(94, 1, '2019-11-21 03:55:38', '2019-11-21 03:55:38', 'Specification:\r\nWireless Headset:\r\nCircumaural Design with 50mm Driver Units providing crystal clear audio\r\nLeatherette Ear Cushions for maximum comfort\r\nVolume &amp; Mic Control Buttons on the Headset\r\nRetractable Boom Mic\r\nComes with headset stand &amp; base station\r\nDimensions of headset: 196mm(W) * 214mm(H) * 104.8mm(D)\r\nDimensions of headphone stand: 143mm * 243mm * 125.2mm\r\nDimensions of audio hub: 115mm * 36.5mm * 122mm\r\nApproximate Weight of headset: 408g / 0.89lbs', 'Razer Thresher Ultimate Wireless Gaming Headset', '', 'publish', 'open', 'closed', '', 'razer-thresher-ultimate-wireless-gaming-headset', '', '', '2019-11-21 03:55:41', '2019-11-21 03:55:41', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=94', 0, 'product', '', 0),
(96, 1, '2019-11-21 03:52:36', '2019-11-21 03:52:36', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-2', '', '', '2019-11-21 03:52:36', '2019-11-21 03:52:36', '', 94, 'http://localhost/commerce/wp-content/uploads/2019/11/a1-1.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2019-11-21 04:07:22', '2019-11-21 04:07:22', 'Product Description:\r\n\r\nName: KZ ZST\r\n\r\nShell: Smooth Type: In Ear\r\n\r\nDriver: Hybrid Sensitivty: 106dB ± 3dB\r\n\r\nImpendence: 18ohm\r\n\r\nFrequency response: 20 Hz - 20000 Hz\r\n\r\nCable Length: 1.2m\r\n\r\nPlug Type: L\r\n\r\nBending Color: black/purple\r\n\r\nWhether with mic: Optional\r\n\r\nMaterial of product: Plastic\r\n\r\nWhether can replacement cable: Yes\r\n\r\nColor:Purple ,Black', 'KZ ZST Colorful Hybrid Balance Armature with Dynamic In-ear Earphone 1BA+1DD Hifi Headset', '', 'publish', 'open', 'closed', '', 'kz-zst-colorful-hybrid-balance-armature-with-dynamic-in-ear-earphone-1ba1dd-hifi-headset', '', '', '2019-11-21 04:07:24', '2019-11-21 04:07:24', '', 0, 'http://localhost/commerce/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2019-11-21 04:05:33', '2019-11-21 04:05:33', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1', '', '', '2019-11-21 04:05:33', '2019-11-21 04:05:33', '', 97, 'http://localhost/commerce/wp-content/uploads/2019/11/a1.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '5'),
(2, 18, 'order', '0'),
(3, 18, 'display_type', ''),
(4, 18, 'thumbnail_id', '70'),
(5, 15, 'display_type', ''),
(6, 15, 'thumbnail_id', '52'),
(7, 19, 'order', '0'),
(8, 19, 'display_type', 'subcategories'),
(9, 19, 'thumbnail_id', '20'),
(10, 20, 'order', '0'),
(11, 20, 'display_type', 'subcategories'),
(12, 20, 'thumbnail_id', '21'),
(13, 21, 'order', '0'),
(14, 21, 'display_type', 'subcategories'),
(15, 21, 'thumbnail_id', '22'),
(16, 18, 'product_count_product_cat', '2'),
(17, 22, 'order', '0'),
(18, 22, 'display_type', 'subcategories'),
(19, 22, 'thumbnail_id', '66'),
(20, 23, 'order', '0'),
(21, 23, 'display_type', 'subcategories'),
(22, 23, 'thumbnail_id', '68'),
(23, 24, 'order', '0'),
(24, 24, 'display_type', 'subcategories'),
(25, 24, 'thumbnail_id', '69'),
(26, 25, 'order', '0'),
(27, 25, 'display_type', 'subcategories'),
(28, 25, 'thumbnail_id', '70'),
(29, 22, 'product_count_product_cat', '2'),
(30, 21, 'product_count_product_cat', '1'),
(31, 19, 'product_count_product_cat', '2'),
(32, 20, 'product_count_product_cat', '2'),
(33, 26, 'order', '0'),
(34, 26, 'display_type', ''),
(35, 26, 'thumbnail_id', '76'),
(36, 27, 'order', '0'),
(37, 27, 'display_type', 'subcategories'),
(38, 27, 'thumbnail_id', '0'),
(39, 26, 'product_count_product_cat', '4'),
(40, 27, 'product_count_product_cat', '2'),
(41, 28, 'order', '0'),
(42, 28, 'display_type', ''),
(43, 28, 'thumbnail_id', '89'),
(44, 29, 'order', '0'),
(45, 29, 'display_type', 'subcategories'),
(46, 29, 'thumbnail_id', '0'),
(47, 30, 'order', '0'),
(48, 30, 'display_type', 'subcategories'),
(49, 30, 'thumbnail_id', '0'),
(50, 31, 'order', '0'),
(51, 31, 'display_type', 'subcategories'),
(52, 31, 'thumbnail_id', '0'),
(53, 32, 'order', '0'),
(54, 32, 'display_type', 'subcategories'),
(55, 32, 'thumbnail_id', '0'),
(56, 33, 'order', '0'),
(57, 33, 'display_type', 'subcategories'),
(58, 33, 'thumbnail_id', '0'),
(59, 34, 'order', '0'),
(60, 34, 'display_type', 'subcategories'),
(61, 34, 'thumbnail_id', '0'),
(62, 35, 'order', '0'),
(63, 35, 'display_type', 'subcategories'),
(64, 35, 'thumbnail_id', '0'),
(65, 33, 'product_count_product_cat', '1'),
(66, 34, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Mouse', 'mouse', 0),
(16, 'woocommerce-db-updates', 'woocommerce-db-updates', 0),
(17, 'wc-admin-notes', 'wc-admin-notes', 0),
(18, 'Laptop', 'laptop', 0),
(19, 'Legion', 'legion', 0),
(20, 'ROG', 'rog', 0),
(21, 'A4Tech', 'a4tech', 0),
(22, 'MSI', 'msi', 0),
(23, 'Asus ROG', 'asusrog', 0),
(24, 'Asus', 'asus', 0),
(25, 'Dell', 'dell', 0),
(26, 'Headset', 'headset', 0),
(27, 'MSI', 'hsmsi', 0),
(28, 'Mousepad', 'mousepad', 0),
(29, 'ROG', 'hsrog', 0),
(30, 'Hyper X', 'hshyperx', 0),
(31, 'SteelSeries', 'hssteelseries', 0),
(32, 'Digital Alliance', 'hsda', 0),
(33, 'Razer', 'hsrazer', 0),
(34, 'KZ ZS', 'hskzzs', 0),
(35, 'Logitech', 'hslogitech', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 16, 0),
(11, 16, 0),
(12, 17, 0),
(13, 17, 0),
(17, 2, 0),
(17, 15, 0),
(17, 20, 0),
(26, 2, 0),
(26, 15, 0),
(26, 20, 0),
(54, 2, 0),
(54, 15, 0),
(54, 19, 0),
(56, 2, 0),
(56, 15, 0),
(56, 19, 0),
(60, 2, 0),
(60, 15, 0),
(60, 21, 0),
(62, 2, 0),
(62, 18, 0),
(62, 22, 0),
(65, 2, 0),
(65, 18, 0),
(65, 22, 0),
(67, 17, 0),
(72, 17, 0),
(77, 2, 0),
(77, 26, 0),
(77, 27, 0),
(78, 17, 0),
(84, 2, 0),
(84, 26, 0),
(84, 27, 0),
(90, 17, 0),
(91, 17, 0),
(92, 17, 0),
(94, 2, 0),
(94, 26, 0),
(94, 33, 0),
(97, 2, 0),
(97, 26, 0),
(97, 34, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 11),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', 'All type all of mouse', 0, 5),
(16, 16, 'action-group', '', 0, 2),
(17, 17, 'action-group', '', 0, 6),
(18, 18, 'product_cat', 'Laptop', 0, 2),
(19, 19, 'product_cat', 'All Legion Mouse Only', 15, 2),
(20, 20, 'product_cat', 'All mouse ROG are here', 15, 2),
(21, 21, 'product_cat', 'All Mouse A4Tech are here', 15, 1),
(22, 22, 'product_cat', 'All Type of MSI Laptop are here', 18, 2),
(23, 23, 'product_cat', 'All Asus ROG Laptop are here', 18, 0),
(24, 24, 'product_cat', 'All kind of Asus Laptop are here', 18, 0),
(25, 25, 'product_cat', 'All Dell Laptops are here', 18, 0),
(26, 26, 'product_cat', 'All headset are here', 0, 4),
(27, 27, 'product_cat', 'All Msi headset are here', 26, 2),
(28, 28, 'product_cat', 'All mousepad are here', 0, 0),
(29, 29, 'product_cat', 'All headsetROG are here', 26, 0),
(30, 30, 'product_cat', 'All Hyper X Headset are here', 26, 0),
(31, 31, 'product_cat', 'All Steel Series Headset are here', 26, 0),
(32, 32, 'product_cat', 'All Digital Alliance headset are here', 26, 0),
(33, 33, 'product_cat', 'All Razer Headset are here', 26, 1),
(34, 34, 'product_cat', 'All KZ ZS Headset are here', 26, 1),
(35, 35, 'product_cat', 'All Logitech Headset are here', 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admkrnia'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"c988dd50690632a4f45733d6e7fd093f2a39f0bd636e2b366567c17126cb2dd2\";a:4:{s:10:\"expiration\";i:1574472725;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36\";s:5:\"login\";i:1574299925;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:kYLLriJk1TImIwV2sBkIMwc+'),
(19, 1, 'wc_last_active', '1574294400'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'wp_user-settings-time', '1573695735'),
(22, 1, 'closedpostboxes_product', 'a:0:{}'),
(23, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(24, 1, '_order_count', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admkrnia', '$P$B4aJigu1kiFn9BkicOikY4diG2I/oH/', 'admkrnia', 'adam.shufflers1@gmail.com', '', '2019-11-14 01:02:48', '', 0, 'admkrnia');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2019-11-14 01:10:53', NULL, 0),
(2, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2019-11-14 01:10:54', NULL, 0),
(3, 'wc-admin-add-first-product', 'info', 'en_US', 'Add your first product', 'Grow your revenue by adding products to your store. Add products manually, import from a sheet, or migrate from another platform.', 'product', '{}', 'unactioned', 'woocommerce-admin', '2019-11-14 01:11:39', NULL, 0),
(4, 'wc-admin-store-notice-giving-feedback', 'info', 'en_US', 'Review your experience', 'If you like WooCommerce Admin please leave us a 5 star rating. A huge thanks in advance!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2019-11-21 01:24:51', NULL, 0),
(5, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', 'phone', '{}', 'unactioned', 'woocommerce-admin', '2019-11-21 01:24:51', NULL, 0),
(6, 'wc-admin-facebook-extension', 'info', 'en_US', 'Market on Facebook', 'Grow your business by targeting the right people and driving sales with Facebook. You can install this free extension now.', 'thumbs-up', '{}', 'actioned', 'woocommerce-admin', '2019-11-21 01:24:51', NULL, 0),
(7, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://localhost/commerce/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Read more</a> about what data we collect.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2019-11-21 01:24:51', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(2, 2, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0),
(3, 3, 'add-a-product', 'Add a product', 'http://localhost/commerce/wp-admin/post-new.php?post_type=product', 'actioned', 1),
(4, 4, 'share-feedback', 'Review', 'https://wordpress.org/support/plugin/woocommerce-admin/reviews/?rate=5#new-post', 'actioned', 0),
(5, 5, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0),
(6, 6, 'learn-more', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 0),
(7, 6, 'install-now', 'Install now', '', 'unactioned', 1),
(8, 7, 'tracking-dismiss', 'Dismiss', '', 'actioned', 0),
(9, 7, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `gross_total` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(17, '', 0, 0, '835000.00', '835000.00', 1, NULL, 'instock', 0, '0.00', 0),
(26, '', 0, 0, '1200000.00', '1200000.00', 1, NULL, 'instock', 0, '0.00', 0),
(54, '', 0, 0, '799000.00', '799000.00', 1, NULL, 'instock', 0, '0.00', 0),
(56, '', 0, 0, '0.00', '0.00', 0, NULL, 'instock', 0, '0.00', 0),
(60, '', 0, 0, '330000.00', '330000.00', 1, NULL, 'instock', 0, '0.00', 0),
(62, '', 0, 0, '12500000.00', '12500000.00', 1, NULL, 'instock', 0, '0.00', 0),
(65, '', 0, 0, '10499000.00', '10499000.00', 1, NULL, 'instock', 0, '0.00', 0),
(77, '', 0, 0, '750000.00', '750000.00', 0, NULL, 'instock', 0, '0.00', 0),
(84, '', 0, 0, '1300000.00', '1300000.00', 0, NULL, 'instock', 0, '0.00', 0),
(94, '', 0, 0, '3850000.00', '3850000.00', 0, NULL, 'instock', 0, '0.00', 0),
(97, '', 0, 0, '159000.00', '159000.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(2, '1', 'a:9:{s:22:\"mailchimp_landing_site\";s:58:\"http://localhost/commerce/commerce/wp-admin/admin-ajax.php\";s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:713:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:25:\"adam.shufflers1@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;}', 1574478722);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Indonesia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'ID', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mailchimp_carts`
--
ALTER TABLE `wp_mailchimp_carts`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_mailchimp_jobs`
--
ALTER TABLE `wp_mailchimp_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=829;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=359;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
