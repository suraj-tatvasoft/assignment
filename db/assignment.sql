-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2020 at 10:11 AM
-- Server version: 5.6.17-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `as_commentmeta`
--

CREATE TABLE IF NOT EXISTS `as_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `as_comments`
--

CREATE TABLE IF NOT EXISTS `as_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `as_comments`
--

INSERT INTO `as_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-07-22 09:47:33', '2020-07-22 09:47:33', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `as_links`
--

CREATE TABLE IF NOT EXISTS `as_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `as_options`
--

CREATE TABLE IF NOT EXISTS `as_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=197 ;

--
-- Dumping data for table `as_options`
--

INSERT INTO `as_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://192.168.11.141/assignment', 'yes'),
(2, 'home', 'http://192.168.11.141/assignment', 'yes'),
(3, 'blogname', 'Assignment', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@assignment.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:33:"classic-editor/classic-editor.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:70:"D:\\Projects\\wamp\\www\\assignment/wp-content/themes/assignment/style.css";i:1;s:0:"";}', 'no'),
(40, 'template', 'assignment', 'yes'),
(41, 'stylesheet', 'assignment', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:"classic-editor/classic-editor.php";a:2:{i:0;s:14:"Classic_Editor";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1610963250', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'as_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:17:"footer-navigation";a:1:{i:0;s:13:"custom_html-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:8:{i:1595500713;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"1aee8163cf336b6de8481860de53f230";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:29;}}}}i:1595500956;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1595501255;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1595540855;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1595584054;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1595584108;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1596102454;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:2:{i:2;a:2:{s:5:"title";s:11:"I Want to :";s:7:"content";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(115, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"5.4.2";s:12:"last_checked";i:1595497757;}', 'no'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1595414374;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";}s:9:"sidebar-2";a:3:{i:0;s:10:"archives-2";i:1;s:12:"categories-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(121, 'can_compress_scripts', '1', 'no'),
(125, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1595497798;}', 'no'),
(128, 'current_theme', 'assignment', 'yes'),
(129, 'theme_mods_assignment', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(130, 'theme_switched', '', 'yes'),
(143, 'category_children', 'a:0:{}', 'yes'),
(150, 'recently_activated', 'a:1:{s:38:"post-duplicator/m4c-postduplicator.php";i:1595496268;}', 'yes'),
(151, 'acf_version', '5.8.12', 'yes'),
(164, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(174, 'mtphr_post_duplicator_settings', '', 'yes'),
(175, '_site_transient_update_plugins', 'O:8:"stdClass":2:{s:12:"last_checked";i:1595497778;s:8:"response";N;}', 'no'),
(192, '_site_transient_timeout_theme_roots', '1595499551', 'no'),
(193, '_site_transient_theme_roots', 'a:1:{s:10:"assignment";s:7:"/themes";}', 'no'),
(194, '_transient_health-check-site-status-result', '{"good":"9","recommended":"8","critical":"0"}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `as_postmeta`
--

CREATE TABLE IF NOT EXISTS `as_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=199 ;

--
-- Dumping data for table `as_postmeta`
--

INSERT INTO `as_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_wp_trash_meta_status', 'publish'),
(4, 2, '_wp_trash_meta_time', '1595414552'),
(5, 2, '_wp_desired_post_slug', 'sample-page'),
(6, 6, '_edit_lock', '1595481635:1'),
(7, 6, '_wp_page_template', 'front-page.php'),
(8, 6, '_edit_last', '1'),
(11, 3, '_wp_trash_meta_status', 'draft'),
(12, 3, '_wp_trash_meta_time', '1595481640'),
(13, 3, '_wp_desired_post_slug', 'privacy-policy'),
(14, 10, '_edit_last', '1'),
(15, 10, '_edit_lock', '1595493260:1'),
(16, 1, '_edit_lock', '1595494288:1'),
(18, 1, '_edit_last', '1'),
(20, 1, 'category_selection', 'consumer'),
(21, 1, '_category_selection', 'field_5f191e4fd5b6d'),
(24, 13, '_wp_attached_file', '2020/07/press-release-post-image.png'),
(25, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1558;s:6:"height";i:600;s:4:"file";s:36:"2020/07/press-release-post-image.png";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:36:"press-release-post-image-300x116.png";s:5:"width";i:300;s:6:"height";i:116;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:37:"press-release-post-image-1024x394.png";s:5:"width";i:1024;s:6:"height";i:394;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:36:"press-release-post-image-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:36:"press-release-post-image-768x296.png";s:5:"width";i:768;s:6:"height";i:296;s:9:"mime-type";s:9:"image/png";}s:9:"1536x1536";a:4:{s:4:"file";s:37:"press-release-post-image-1536x592.png";s:5:"width";i:1536;s:6:"height";i:592;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(26, 14, '_wp_attached_file', '2020/07/press-release-post-image-2.jpg'),
(27, 14, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:202;s:6:"height";i:129;s:4:"file";s:38:"2020/07/press-release-post-image-2.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"press-release-post-image-2-150x129.jpg";s:5:"width";i:150;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 15, '_wp_attached_file', '2020/07/press_release_article_img.png'),
(29, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:456;s:6:"height";i:293;s:4:"file";s:37:"2020/07/press_release_article_img.png";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:37:"press_release_article_img-300x193.png";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:37:"press_release_article_img-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(30, 16, '_wp_attached_file', '2020/07/press_release_header_bg.png'),
(31, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1366;s:6:"height";i:335;s:4:"file";s:35:"2020/07/press_release_header_bg.png";s:5:"sizes";a:4:{s:6:"medium";a:4:{s:4:"file";s:34:"press_release_header_bg-300x74.png";s:5:"width";i:300;s:6:"height";i:74;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:36:"press_release_header_bg-1024x251.png";s:5:"width";i:1024;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"press_release_header_bg-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"press_release_header_bg-768x188.png";s:5:"width";i:768;s:6:"height";i:188;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 1, '_thumbnail_id', '15'),
(34, 1, '_wp_old_slug', 'hello-world'),
(35, 18, '_edit_last', '1'),
(36, 18, '_edit_lock', '1595494283:1'),
(38, 18, 'category_selection', 'corporate'),
(39, 18, '_category_selection', 'field_5f191e4fd5b6d'),
(40, 19, '_edit_last', '1'),
(41, 19, '_edit_lock', '1595494291:1'),
(42, 20, '_wp_attached_file', '2020/07/sample-image.jpg'),
(43, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:456;s:6:"height";i:293;s:4:"file";s:24:"2020/07/sample-image.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:24:"sample-image-300x193.jpg";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"sample-image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(44, 19, '_thumbnail_id', '20'),
(46, 19, 'category_selection', 'corporate'),
(47, 19, '_category_selection', 'field_5f191e4fd5b6d'),
(48, 18, '_thumbnail_id', '20'),
(59, 22, '_menu_item_type', 'custom'),
(60, 22, '_menu_item_menu_item_parent', '0'),
(61, 22, '_menu_item_object_id', '22'),
(62, 22, '_menu_item_object', 'custom'),
(63, 22, '_menu_item_target', ''),
(64, 22, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 22, '_menu_item_xfn', ''),
(66, 22, '_menu_item_url', '#'),
(68, 23, '_menu_item_type', 'custom'),
(69, 23, '_menu_item_menu_item_parent', '0'),
(70, 23, '_menu_item_object_id', '23'),
(71, 23, '_menu_item_object', 'custom'),
(72, 23, '_menu_item_target', ''),
(73, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 23, '_menu_item_xfn', ''),
(75, 23, '_menu_item_url', '#'),
(77, 24, '_menu_item_type', 'custom'),
(78, 24, '_menu_item_menu_item_parent', '0'),
(79, 24, '_menu_item_object_id', '24'),
(80, 24, '_menu_item_object', 'custom'),
(81, 24, '_menu_item_target', ''),
(82, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 24, '_menu_item_xfn', ''),
(84, 24, '_menu_item_url', '#'),
(86, 25, '_menu_item_type', 'custom'),
(87, 25, '_menu_item_menu_item_parent', '0'),
(88, 25, '_menu_item_object_id', '25'),
(89, 25, '_menu_item_object', 'custom'),
(90, 25, '_menu_item_target', ''),
(91, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 25, '_menu_item_xfn', ''),
(93, 25, '_menu_item_url', '#'),
(95, 26, '_menu_item_type', 'custom'),
(96, 26, '_menu_item_menu_item_parent', '0'),
(97, 26, '_menu_item_object_id', '26'),
(98, 26, '_menu_item_object', 'custom'),
(99, 26, '_menu_item_target', ''),
(100, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 26, '_menu_item_xfn', ''),
(102, 26, '_menu_item_url', '#'),
(104, 27, '_menu_item_type', 'custom'),
(105, 27, '_menu_item_menu_item_parent', '0'),
(106, 27, '_menu_item_object_id', '27'),
(107, 27, '_menu_item_object', 'custom'),
(108, 27, '_menu_item_target', ''),
(109, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(110, 27, '_menu_item_xfn', ''),
(111, 27, '_menu_item_url', '#'),
(113, 28, '_menu_item_type', 'custom'),
(114, 28, '_menu_item_menu_item_parent', '0'),
(115, 28, '_menu_item_object_id', '28'),
(116, 28, '_menu_item_object', 'custom'),
(117, 28, '_menu_item_target', ''),
(118, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(119, 28, '_menu_item_xfn', ''),
(120, 28, '_menu_item_url', '#'),
(126, 30, '_edit_last', '1'),
(127, 30, '_edit_lock', '1595494298:1'),
(128, 30, '_thumbnail_id', '20'),
(129, 30, 'category_selection', 'business'),
(130, 30, '_category_selection', 'field_5f191e4fd5b6d'),
(132, 31, '_edit_last', '1'),
(133, 31, '_edit_lock', '1595494162:1'),
(134, 31, 'category_selection', 'corporate'),
(135, 31, '_category_selection', 'field_5f191e4fd5b6d'),
(136, 31, '_thumbnail_id', '20'),
(138, 32, '_edit_lock', '1595493592:1'),
(139, 32, '_edit_last', '1'),
(140, 32, 'category_selection', 'business'),
(141, 32, '_category_selection', 'field_5f191e4fd5b6d'),
(142, 32, '_thumbnail_id', '15'),
(143, 32, '_wp_old_slug', 'hello-world'),
(145, 33, '_edit_last', '1'),
(146, 33, '_edit_lock', '1595494164:1'),
(147, 33, '_thumbnail_id', '20'),
(148, 33, 'category_selection', 'business'),
(149, 33, '_category_selection', 'field_5f191e4fd5b6d'),
(151, 34, '_edit_last', '1'),
(152, 34, '_edit_lock', '1595493540:1'),
(153, 34, 'category_selection', 'consumer'),
(154, 34, '_category_selection', 'field_5f191e4fd5b6d'),
(155, 34, '_thumbnail_id', '20'),
(157, 35, '_edit_lock', '1595493537:1'),
(158, 35, '_edit_last', '1'),
(159, 35, 'category_selection', 'corporate'),
(160, 35, '_category_selection', 'field_5f191e4fd5b6d'),
(161, 35, '_thumbnail_id', '15'),
(162, 35, '_wp_old_slug', 'hello-world'),
(164, 36, '_edit_lock', '1595498582:1'),
(165, 36, '_edit_last', '1'),
(166, 36, 'category_selection', 'business'),
(167, 36, '_category_selection', 'field_5f191e4fd5b6d'),
(168, 36, '_thumbnail_id', '15'),
(169, 36, '_wp_old_slug', 'hello-world'),
(180, 36, '_wp_old_slug', 'ooredoo-announces-partnership-with-al-khalij-commercial-bank-al-khaliji-to-enable-online-banking-payments-copy-copy'),
(182, 35, '_wp_old_slug', 'ooredoo-announces-partnership-with-al-khalij-commercial-bank-al-khaliji-to-enable-online-banking-payments-copy-2'),
(184, 34, '_wp_old_slug', 'ooredoo-announces-partnership-with-al-khalij-commercial-bank-copy-2'),
(186, 33, '_wp_old_slug', 'lorem-ipsum-partnership-copy-2'),
(188, 32, '_wp_old_slug', 'ooredoo-announces-partnership-with-al-khalij-commercial-bank-al-khaliji-to-enable-online-banking-payments-copy'),
(190, 31, '_wp_old_slug', 'ooredoo-announces-partnership-with-al-khalij-commercial-bank-copy'),
(192, 31, '_wp_old_slug', 'ooredoo-announces-partnership-with-al-khalij-bank-2'),
(194, 30, '_wp_old_slug', 'lorem-ipsum-partnership-copy'),
(196, 19, '_wp_old_slug', 'lorem-ipsum-partnership');

-- --------------------------------------------------------

--
-- Table structure for table `as_posts`
--

CREATE TABLE IF NOT EXISTS `as_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `as_posts`
--

INSERT INTO `as_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-07-22 09:47:33', '2020-07-22 09:47:33', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ooredoo Announces Partnership with Al Khalij Commercial Bank (al Khaliji) to Enable Online Banking Payments', '', 'publish', 'closed', 'closed', '', 'ooredoo-announces-partnership-with-al-khalij-commercial-bank-al-khaliji-to-enable-online-banking-payments', '', '', '2020-07-23 05:34:08', '2020-07-23 05:34:08', '', 0, 'http://localhost/assignment/?p=1', 0, 'post', '', 1),
(2, 1, '2020-07-22 09:47:33', '2020-07-22 09:47:33', '<!-- wp:paragraph -->\n<p>This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/assignment/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-07-22 10:42:32', '2020-07-22 10:42:32', '', 0, 'http://localhost/assignment/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-07-22 09:47:33', '2020-07-22 09:47:33', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/assignment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-07-23 05:20:40', '2020-07-23 05:20:40', '', 0, 'http://localhost/assignment/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-07-22 09:48:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-22 09:48:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/assignment/?p=4', 0, 'post', '', 0),
(5, 1, '2020-07-22 10:42:32', '2020-07-22 10:42:32', '<!-- wp:paragraph -->\n<p>This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost/assignment/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-07-22 10:42:32', '2020-07-22 10:42:32', '', 2, 'http://localhost/assignment/2020/07/22/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2020-07-22 10:43:40', '2020-07-22 10:43:40', '', 'Landing', '', 'publish', 'closed', 'closed', '', 'landing', '', '', '2020-07-23 05:20:35', '2020-07-23 05:20:35', '', 0, 'http://localhost/assignment/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-07-22 10:43:40', '2020-07-22 10:43:40', '', 'Landing', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-07-22 10:43:40', '2020-07-22 10:43:40', '', 6, 'http://localhost/assignment/2020/07/22/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-07-23 05:25:11', '2020-07-23 05:25:11', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Category Type', 'category-type', 'publish', 'closed', 'closed', '', 'group_5f191e39714fc', '', '', '2020-07-23 05:25:11', '2020-07-23 05:25:11', '', 0, 'http://localhost/assignment/?post_type=acf-field-group&#038;p=10', 0, 'acf-field-group', '', 0),
(11, 1, '2020-07-23 05:25:11', '2020-07-23 05:25:11', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:3:{s:9:"corporate";s:9:"Corporate";s:8:"consumer";s:8:"Consumer";s:8:"business";s:8:"Business";}s:13:"default_value";b:0;s:10:"allow_null";i:1;s:8:"multiple";i:0;s:2:"ui";i:0;s:13:"return_format";s:5:"value";s:4:"ajax";i:0;s:11:"placeholder";s:0:"";}', 'Category Selection', 'category_selection', 'publish', 'closed', 'closed', '', 'field_5f191e4fd5b6d', '', '', '2020-07-23 05:25:11', '2020-07-23 05:25:11', '', 10, 'http://localhost/assignment/?post_type=acf-field&p=11', 0, 'acf-field', '', 0),
(13, 1, '2020-07-23 05:32:52', '2020-07-23 05:32:52', '', 'press-release-post-image', '', 'inherit', 'closed', 'closed', '', 'press-release-post-image', '', '', '2020-07-23 05:32:52', '2020-07-23 05:32:52', '', 1, 'http://localhost/assignment/wp-content/uploads/2020/07/press-release-post-image.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-07-23 05:32:54', '2020-07-23 05:32:54', '', 'press-release-post-image-2', '', 'inherit', 'closed', 'closed', '', 'press-release-post-image-2', '', '', '2020-07-23 05:32:54', '2020-07-23 05:32:54', '', 1, 'http://localhost/assignment/wp-content/uploads/2020/07/press-release-post-image-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2020-07-23 05:32:54', '2020-07-23 05:32:54', '', 'press_release_article_img', '', 'inherit', 'closed', 'closed', '', 'press_release_article_img', '', '', '2020-07-23 05:32:54', '2020-07-23 05:32:54', '', 1, 'http://localhost/assignment/wp-content/uploads/2020/07/press_release_article_img.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2020-07-23 05:32:55', '2020-07-23 05:32:55', '', 'press_release_header_bg', '', 'inherit', 'closed', 'closed', '', 'press_release_header_bg', '', '', '2020-07-23 05:32:55', '2020-07-23 05:32:55', '', 1, 'http://localhost/assignment/wp-content/uploads/2020/07/press_release_header_bg.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2020-07-23 05:33:55', '2020-07-23 05:33:55', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ooredoo Announces Partnership with Al Khalij Commercial Bank (al Khaliji) to Enable Online Banking Payments', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2020-07-23 05:33:55', '2020-07-23 05:33:55', '', 1, 'http://localhost/assignment/1-autosave-v1/', 0, 'revision', '', 0),
(18, 1, '2020-07-23 05:34:43', '2020-07-23 05:34:43', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ooredoo Announces Partnership with Al Khalij Commercial Bank', '', 'publish', 'closed', 'closed', '', 'ooredoo-announces-partnership-with-al-khalij-commercial-bank', '', '', '2020-07-23 07:25:20', '2020-07-23 07:25:20', '', 0, 'http://localhost/assignment/?p=18', 0, 'post', '', 0),
(19, 1, '2020-07-23 05:38:35', '2020-07-23 05:38:35', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ipsum Partnership', '', 'publish', 'closed', 'closed', '', 'ipsum-partnership', '', '', '2020-07-23 08:53:44', '2020-07-23 08:53:44', '', 0, 'http://localhost/assignment/?p=19', 0, 'post', '', 0),
(20, 1, '2020-07-23 05:38:28', '2020-07-23 05:38:28', '', 'sample-image', '', 'inherit', 'closed', 'closed', '', 'sample-image', '', '', '2020-07-23 05:38:28', '2020-07-23 05:38:28', '', 19, 'http://localhost/assignment/wp-content/uploads/2020/07/sample-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2020-07-23 05:44:28', '2020-07-23 05:44:28', '', 'Hala Plans (Pre-paid)', '', 'publish', 'closed', 'closed', '', 'hala-plans-pre-paid', '', '', '2020-07-23 05:51:54', '2020-07-23 05:51:54', '', 0, 'http://localhost/assignment/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2020-07-23 05:44:28', '2020-07-23 05:44:28', '', 'Hala Plans (Pre-paid)', '', 'publish', 'closed', 'closed', '', 'hala-plans-pre-paid-2', '', '', '2020-07-23 05:51:54', '2020-07-23 05:51:54', '', 0, 'http://localhost/assignment/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2020-07-23 05:44:28', '2020-07-23 05:44:28', '', 'Internet', '', 'publish', 'closed', 'closed', '', 'internet', '', '', '2020-07-23 05:51:54', '2020-07-23 05:51:54', '', 0, 'http://localhost/assignment/?p=24', 3, 'nav_menu_item', '', 0),
(25, 1, '2020-07-23 05:44:29', '2020-07-23 05:44:29', '', 'Mobile Money', '', 'publish', 'closed', 'closed', '', 'mobile-money', '', '', '2020-07-23 05:51:54', '2020-07-23 05:51:54', '', 0, 'http://localhost/assignment/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2020-07-23 05:44:29', '2020-07-23 05:44:29', '', 'Ooredoo App', '', 'publish', 'closed', 'closed', '', 'ooredoo-app', '', '', '2020-07-23 05:51:55', '2020-07-23 05:51:55', '', 0, 'http://localhost/assignment/?p=26', 5, 'nav_menu_item', '', 0),
(27, 1, '2020-07-23 05:44:29', '2020-07-23 05:44:29', '', 'Thuraya Service', '', 'publish', 'closed', 'closed', '', 'thuraya-service', '', '', '2020-07-23 05:51:55', '2020-07-23 05:51:55', '', 0, 'http://localhost/assignment/?p=27', 6, 'nav_menu_item', '', 0),
(28, 1, '2020-07-23 05:44:29', '2020-07-23 05:44:29', '', 'Community', '', 'publish', 'closed', 'closed', '', 'community', '', '', '2020-07-23 05:51:55', '2020-07-23 05:51:55', '', 0, 'http://localhost/assignment/?p=28', 7, 'nav_menu_item', '', 0),
(30, 1, '2020-07-23 08:39:12', '2020-07-23 08:39:12', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Partnership', '', 'publish', 'closed', 'closed', '', 'lorem-partnership', '', '', '2020-07-23 08:53:31', '2020-07-23 08:53:31', '', 0, 'http://localhost/assignment/lorem-ipsum-partnership-copy/', 0, 'post', '', 0),
(31, 1, '2020-07-23 08:39:13', '2020-07-23 08:39:13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Announces Partnership with Al Khalij Bank', '', 'publish', 'closed', 'closed', '', 'announces-partnership-with-al-khalij-bank', '', '', '2020-07-23 08:43:05', '2020-07-23 08:43:05', '', 0, 'http://localhost/assignment/ooredoo-announces-partnership-with-al-khalij-commercial-bank-copy/', 0, 'post', '', 0),
(32, 1, '2020-07-23 08:39:14', '2020-07-23 08:39:14', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Al Khalij Commercial Bank (al Khaliji)', '', 'publish', 'closed', 'closed', '', 'al-khalij-commercial-bank-al-khaliji', '', '', '2020-07-23 08:42:10', '2020-07-23 08:42:10', '', 0, 'http://localhost/assignment/ooredoo-announces-partnership-with-al-khalij-commercial-bank-al-khaliji-to-enable-online-banking-payments-copy/', 0, 'post', '', 0),
(33, 1, '2020-07-23 08:39:19', '2020-07-23 08:39:19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum Partner ship', '', 'publish', 'closed', 'closed', '', 'lorem-ipsum-partner-ship', '', '', '2020-07-23 08:41:45', '2020-07-23 08:41:45', '', 0, 'http://localhost/assignment/lorem-ipsum-partnership-copy-2/', 0, 'post', '', 0),
(34, 1, '2020-07-23 08:39:20', '2020-07-23 08:39:20', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ooredoo Announces Partnership with Al Khalij Bank', '', 'publish', 'closed', 'closed', '', 'ooredoo-announces-partnership-with-al-khalij-bank', '', '', '2020-07-23 08:41:20', '2020-07-23 08:41:20', '', 0, 'http://localhost/assignment/ooredoo-announces-partnership-with-al-khalij-commercial-bank-copy-2/', 0, 'post', '', 0),
(35, 1, '2020-07-23 08:39:21', '2020-07-23 08:39:21', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ooredoo Announces Partnership', '', 'publish', 'closed', 'closed', '', 'ooredoo-announces-partnership', '', '', '2020-07-23 08:40:55', '2020-07-23 08:40:55', '', 0, 'http://localhost/assignment/ooredoo-announces-partnership-with-al-khalij-commercial-bank-al-khaliji-to-enable-online-banking-payments-copy-2/', 0, 'post', '', 0),
(36, 1, '2020-07-23 08:39:26', '2020-07-23 08:39:26', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ooredoo Announces Partnership with Al Khalij Commercial Bank (al Khaliji) to Enable Online Banking', '', 'publish', 'closed', 'closed', '', 'ooredoo-announces-partnership-with-al-khalij-commercial-bank-al-khaliji-to-enable-online-banking', '', '', '2020-07-23 10:03:01', '2020-07-23 10:03:01', '', 0, 'http://localhost/assignment/ooredoo-announces-partnership-with-al-khalij-commercial-bank-al-khaliji-to-enable-online-banking-payments-copy-copy/', 0, 'post', '', 0),
(38, 1, '2020-07-23 08:41:06', '2020-07-23 08:41:06', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ooredoo Announces Partnership with Al Khalij Bank', '', 'inherit', 'closed', 'closed', '', '34-autosave-v1', '', '', '2020-07-23 08:41:06', '2020-07-23 08:41:06', '', 34, 'http://localhost/assignment/34-autosave-v1/', 0, 'revision', '', 0),
(39, 1, '2020-07-23 08:42:33', '2020-07-23 08:42:33', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Ooredoo Announces Partnership with Al Khalij Bank', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2020-07-23 08:42:33', '2020-07-23 08:42:33', '', 31, 'http://localhost/assignment/31-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `as_termmeta`
--

CREATE TABLE IF NOT EXISTS `as_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `as_terms`
--

CREATE TABLE IF NOT EXISTS `as_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `as_terms`
--

INSERT INTO `as_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'tag 1', 'tag-1', 0),
(3, 'tag2', 'tag2', 0),
(4, 'tag 3', 'tag-3', 0),
(5, 'tag 4', 'tag-4', 0),
(6, 'Tag 5', 'tag-5', 0),
(7, 'tag 6', 'tag-6', 0),
(8, 'explore', 'explore', 0),
(9, 'Ooredoo', 'ooredoo', 0),
(10, 'Bank', 'bank', 0);

-- --------------------------------------------------------

--
-- Table structure for table `as_term_relationships`
--

CREATE TABLE IF NOT EXISTS `as_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `as_term_relationships`
--

INSERT INTO `as_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(18, 1, 0),
(18, 4, 0),
(18, 5, 0),
(19, 1, 0),
(19, 6, 0),
(19, 7, 0),
(22, 8, 0),
(23, 8, 0),
(24, 8, 0),
(25, 8, 0),
(26, 8, 0),
(27, 8, 0),
(28, 8, 0),
(30, 1, 0),
(30, 6, 0),
(30, 7, 0),
(31, 1, 0),
(31, 4, 0),
(31, 5, 0),
(32, 1, 0),
(32, 2, 0),
(32, 3, 0),
(33, 1, 0),
(33, 6, 0),
(33, 7, 0),
(34, 1, 0),
(34, 4, 0),
(34, 5, 0),
(34, 10, 0),
(35, 1, 0),
(35, 9, 0),
(36, 1, 0),
(36, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `as_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `as_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `as_term_taxonomy`
--

INSERT INTO `as_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 10),
(2, 2, 'post_tag', '', 0, 2),
(3, 3, 'post_tag', '', 0, 3),
(4, 4, 'post_tag', '', 0, 3),
(5, 5, 'post_tag', '', 0, 3),
(6, 6, 'post_tag', '', 0, 3),
(7, 7, 'post_tag', '', 0, 3),
(8, 8, 'nav_menu', '', 0, 7),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `as_usermeta`
--

CREATE TABLE IF NOT EXISTS `as_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `as_usermeta`
--

INSERT INTO `as_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'as_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'as_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:"7a5d7ccd5f1e915b15ae9add9d4aecd46dcf0501ab02358ceeaf6a3b5b6e3214";a:4:{s:10:"expiration";i:1595584068;s:2:"ip";s:3:"::1";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36";s:5:"login";i:1595411268;}s:64:"ea70708ffd9e3a67e3b31a6f66d315d8d80191630a706c11aa9b566d4e063b56";a:4:{s:10:"expiration";i:1595671332;s:2:"ip";s:14:"192.168.11.141";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36";s:5:"login";i:1595498532;}}'),
(17, 1, 'as_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:21:"dashboard_site_health";i:1;s:19:"dashboard_right_now";i:2;s:18:"dashboard_activity";i:3;s:21:"dashboard_quick_press";i:4;s:17:"dashboard_primary";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'meta-box-order_dashboard', 'a:4:{s:6:"normal";s:41:"dashboard_site_health,dashboard_right_now";s:4:"side";s:21:"dashboard_quick_press";s:7:"column3";s:36:"dashboard_activity,dashboard_primary";s:7:"column4";s:0:"";}'),
(21, 1, 'as_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'as_user-settings-time', '1595482433'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Table structure for table `as_users`
--

CREATE TABLE IF NOT EXISTS `as_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `as_users`
--

INSERT INTO `as_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BoltWDVtUyoAheMnThMZqK.QJavlsB1', 'admin', 'info@assignment.com', 'http://localhost/assignment', '2020-07-22 09:47:33', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
