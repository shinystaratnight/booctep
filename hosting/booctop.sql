-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 06:24 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booctop`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'student'),
(3, 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add User', 1, 'add_user'),
(2, 'Can change User', 1, 'change_user'),
(3, 'Can delete User', 1, 'delete_user'),
(4, 'Can view User', 1, 'view_user'),
(5, 'Can add user_become', 2, 'add_user_become'),
(6, 'Can change user_become', 2, 'change_user_become'),
(7, 'Can delete user_become', 2, 'delete_user_become'),
(8, 'Can view user_become', 2, 'view_user_become'),
(9, 'Can add user_profile', 3, 'add_user_profile'),
(10, 'Can change user_profile', 3, 'change_user_profile'),
(11, 'Can delete user_profile', 3, 'delete_user_profile'),
(12, 'Can view user_profile', 3, 'view_user_profile'),
(13, 'Can add user_categories', 4, 'add_user_categories'),
(14, 'Can change user_categories', 4, 'change_user_categories'),
(15, 'Can delete user_categories', 4, 'delete_user_categories'),
(16, 'Can view user_categories', 4, 'view_user_categories'),
(17, 'Can add user_activation', 5, 'add_user_activation'),
(18, 'Can change user_activation', 5, 'change_user_activation'),
(19, 'Can delete user_activation', 5, 'delete_user_activation'),
(20, 'Can view user_activation', 5, 'view_user_activation'),
(21, 'Can add notifications', 6, 'add_notifications'),
(22, 'Can change notifications', 6, 'change_notifications'),
(23, 'Can delete notifications', 6, 'delete_notifications'),
(24, 'Can view notifications', 6, 'view_notifications'),
(25, 'Can add log entry', 7, 'add_logentry'),
(26, 'Can change log entry', 7, 'change_logentry'),
(27, 'Can delete log entry', 7, 'delete_logentry'),
(28, 'Can view log entry', 7, 'view_logentry'),
(29, 'Can add permission', 8, 'add_permission'),
(30, 'Can change permission', 8, 'change_permission'),
(31, 'Can delete permission', 8, 'delete_permission'),
(32, 'Can view permission', 8, 'view_permission'),
(33, 'Can add group', 9, 'add_group'),
(34, 'Can change group', 9, 'change_group'),
(35, 'Can delete group', 9, 'delete_group'),
(36, 'Can view group', 9, 'view_group'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session'),
(45, 'Can add categories', 12, 'add_categories'),
(46, 'Can change categories', 12, 'change_categories'),
(47, 'Can delete categories', 12, 'delete_categories'),
(48, 'Can view categories', 12, 'view_categories'),
(49, 'Can add courses', 13, 'add_courses'),
(50, 'Can change courses', 13, 'change_courses'),
(51, 'Can delete courses', 13, 'delete_courses'),
(52, 'Can view courses', 13, 'view_courses'),
(53, 'Can add questions', 14, 'add_questions'),
(54, 'Can change questions', 14, 'change_questions'),
(55, 'Can delete questions', 14, 'delete_questions'),
(56, 'Can view questions', 14, 'view_questions'),
(57, 'Can add questions1', 15, 'add_questions1'),
(58, 'Can change questions1', 15, 'change_questions1'),
(59, 'Can delete questions1', 15, 'delete_questions1'),
(60, 'Can view questions1', 15, 'view_questions1'),
(61, 'Can add sections', 16, 'add_sections'),
(62, 'Can change sections', 16, 'change_sections'),
(63, 'Can delete sections', 16, 'delete_sections'),
(64, 'Can view sections', 16, 'view_sections'),
(65, 'Can add student_mark', 17, 'add_student_mark'),
(66, 'Can change student_mark', 17, 'change_student_mark'),
(67, 'Can delete student_mark', 17, 'delete_student_mark'),
(68, 'Can view student_mark', 17, 'view_student_mark'),
(69, 'Can add todo', 18, 'add_todo'),
(70, 'Can change todo', 18, 'change_todo'),
(71, 'Can delete todo', 18, 'delete_todo'),
(72, 'Can view todo', 18, 'view_todo'),
(73, 'Can add transactions', 19, 'add_transactions'),
(74, 'Can change transactions', 19, 'change_transactions'),
(75, 'Can delete transactions', 19, 'delete_transactions'),
(76, 'Can view transactions', 19, 'view_transactions'),
(77, 'Can add video uploads', 20, 'add_videouploads'),
(78, 'Can change video uploads', 20, 'change_videouploads'),
(79, 'Can delete video uploads', 20, 'delete_videouploads'),
(80, 'Can view video uploads', 20, 'view_videouploads'),
(81, 'Can add subcategories', 21, 'add_subcategories'),
(82, 'Can change subcategories', 21, 'change_subcategories'),
(83, 'Can delete subcategories', 21, 'delete_subcategories'),
(84, 'Can view subcategories', 21, 'view_subcategories'),
(85, 'Can add answers', 22, 'add_answers'),
(86, 'Can change answers', 22, 'change_answers'),
(87, 'Can delete answers', 22, 'delete_answers'),
(88, 'Can view answers', 22, 'view_answers'),
(89, 'Can add student_certificate', 23, 'add_student_certificate'),
(90, 'Can change student_certificate', 23, 'change_student_certificate'),
(91, 'Can delete student_certificate', 23, 'delete_student_certificate'),
(92, 'Can view student_certificate', 23, 'view_student_certificate'),
(93, 'Can add student_register_courses', 24, 'add_student_register_courses'),
(94, 'Can change student_register_courses', 24, 'change_student_register_courses'),
(95, 'Can delete student_register_courses', 24, 'delete_student_register_courses'),
(96, 'Can view student_register_courses', 24, 'view_student_register_courses'),
(97, 'Can add student_rating_courses', 25, 'add_student_rating_courses'),
(98, 'Can change student_rating_courses', 25, 'change_student_rating_courses'),
(99, 'Can delete student_rating_courses', 25, 'delete_student_rating_courses'),
(100, 'Can view student_rating_courses', 25, 'view_student_rating_courses'),
(101, 'Can add student_performance', 26, 'add_student_performance'),
(102, 'Can change student_performance', 26, 'change_student_performance'),
(103, 'Can delete student_performance', 26, 'delete_student_performance'),
(104, 'Can view student_performance', 26, 'view_student_performance'),
(105, 'Can add student_favourite_courses', 27, 'add_student_favourite_courses'),
(106, 'Can change student_favourite_courses', 27, 'change_student_favourite_courses'),
(107, 'Can delete student_favourite_courses', 27, 'delete_student_favourite_courses'),
(108, 'Can view student_favourite_courses', 27, 'view_student_favourite_courses'),
(109, 'Can add student_cart_courses', 28, 'add_student_cart_courses'),
(110, 'Can change student_cart_courses', 28, 'change_student_cart_courses'),
(111, 'Can delete student_cart_courses', 28, 'delete_student_cart_courses'),
(112, 'Can view student_cart_courses', 28, 'view_student_cart_courses'),
(113, 'Can add payment', 29, 'add_payment'),
(114, 'Can change payment', 29, 'change_payment'),
(115, 'Can delete payment', 29, 'delete_payment'),
(116, 'Can view payment', 29, 'view_payment'),
(117, 'Can add course_comments', 30, 'add_course_comments'),
(118, 'Can change course_comments', 30, 'change_course_comments'),
(119, 'Can delete course_comments', 30, 'delete_course_comments'),
(120, 'Can view course_comments', 30, 'view_course_comments'),
(121, 'Can add association', 31, 'add_association'),
(122, 'Can change association', 31, 'change_association'),
(123, 'Can delete association', 31, 'delete_association'),
(124, 'Can view association', 31, 'view_association'),
(125, 'Can add code', 32, 'add_code'),
(126, 'Can change code', 32, 'change_code'),
(127, 'Can delete code', 32, 'delete_code'),
(128, 'Can view code', 32, 'view_code'),
(129, 'Can add nonce', 33, 'add_nonce'),
(130, 'Can change nonce', 33, 'change_nonce'),
(131, 'Can delete nonce', 33, 'delete_nonce'),
(132, 'Can view nonce', 33, 'view_nonce'),
(133, 'Can add user social auth', 34, 'add_usersocialauth'),
(134, 'Can change user social auth', 34, 'change_usersocialauth'),
(135, 'Can delete user social auth', 34, 'delete_usersocialauth'),
(136, 'Can view user social auth', 34, 'view_usersocialauth'),
(137, 'Can add partial', 35, 'add_partial'),
(138, 'Can change partial', 35, 'change_partial'),
(139, 'Can delete partial', 35, 'delete_partial'),
(140, 'Can view partial', 35, 'view_partial'),
(141, 'Can add discount', 36, 'add_discount'),
(142, 'Can change discount', 36, 'change_discount'),
(143, 'Can delete discount', 36, 'delete_discount'),
(144, 'Can view discount', 36, 'view_discount'),
(145, 'Can add PayPal IPN', 37, 'add_paypalipn'),
(146, 'Can change PayPal IPN', 37, 'change_paypalipn'),
(147, 'Can delete PayPal IPN', 37, 'delete_paypalipn'),
(148, 'Can view PayPal IPN', 37, 'view_paypalipn'),
(149, 'Can add user', 38, 'add_user'),
(150, 'Can change user', 38, 'change_user'),
(151, 'Can delete user', 38, 'delete_user'),
(152, 'Can view user', 38, 'view_user'),
(153, 'Can add admin', 39, 'add_admin'),
(154, 'Can change admin', 39, 'change_admin'),
(155, 'Can delete admin', 39, 'delete_admin'),
(156, 'Can view admin', 39, 'view_admin'),
(157, 'Can add test video', 40, 'add_testvideo'),
(158, 'Can change test video', 40, 'change_testvideo'),
(159, 'Can delete test video', 40, 'delete_testvideo'),
(160, 'Can view test video', 40, 'view_testvideo'),
(161, 'Can add position', 41, 'add_position'),
(162, 'Can change position', 41, 'change_position'),
(163, 'Can delete position', 41, 'delete_position'),
(164, 'Can view position', 41, 'view_position');

-- --------------------------------------------------------

--
-- Table structure for table `discount_discount`
--

CREATE TABLE `discount_discount` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `promo_code` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `discount_percent` int(11) NOT NULL DEFAULT '0',
  `expire` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `days` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_discount`
--

INSERT INTO `discount_discount` (`id`, `course_id`, `promo_code`, `discount_percent`, `expire`, `days`) VALUES
(3, 30, 'first coupon', 20, '2021-08-15', 60),
(5, 29, 'name', 56, '2021-08-22', 56);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci,
  `object_repr` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-02-14 13:11:26.498851', '1', 'discount object (1)', 1, '[{\"added\": {}}]', 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'admin', 'logentry'),
(9, 'auth', 'group'),
(8, 'auth', 'permission'),
(38, 'auth', 'user'),
(10, 'contenttypes', 'contenttype'),
(36, 'discount', 'discount'),
(39, 'home', 'admin'),
(6, 'home', 'notifications'),
(41, 'home', 'position'),
(1, 'home', 'user'),
(5, 'home', 'user_activation'),
(2, 'home', 'user_become'),
(4, 'home', 'user_categories'),
(3, 'home', 'user_profile'),
(37, 'ipn', 'paypalipn'),
(11, 'sessions', 'session'),
(31, 'social_django', 'association'),
(32, 'social_django', 'code'),
(33, 'social_django', 'nonce'),
(35, 'social_django', 'partial'),
(34, 'social_django', 'usersocialauth'),
(30, 'student', 'course_comments'),
(29, 'student', 'payment'),
(28, 'student', 'student_cart_courses'),
(23, 'student', 'student_certificate'),
(27, 'student', 'student_favourite_courses'),
(26, 'student', 'student_performance'),
(25, 'student', 'student_rating_courses'),
(24, 'student', 'student_register_courses'),
(22, 'teacher', 'answers'),
(12, 'teacher', 'categories'),
(13, 'teacher', 'courses'),
(14, 'teacher', 'questions'),
(15, 'teacher', 'questions1'),
(16, 'teacher', 'sections'),
(17, 'teacher', 'student_mark'),
(21, 'teacher', 'subcategories'),
(40, 'teacher', 'testvideo'),
(18, 'teacher', 'todo'),
(19, 'teacher', 'transactions'),
(20, 'teacher', 'videouploads');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'teacher', '0001_initial', '2021-02-14 11:01:01.970745'),
(2, 'contenttypes', '0001_initial', '2021-02-14 11:01:08.937304'),
(3, 'contenttypes', '0002_remove_content_type_name', '2021-02-14 11:01:13.404350'),
(4, 'auth', '0001_initial', '2021-02-14 11:01:16.896812'),
(5, 'auth', '0002_alter_permission_name_max_length', '2021-02-14 11:01:33.452890'),
(6, 'auth', '0003_alter_user_email_max_length', '2021-02-14 11:01:33.629935'),
(7, 'auth', '0004_alter_user_username_opts', '2021-02-14 11:01:33.780075'),
(8, 'auth', '0005_alter_user_last_login_null', '2021-02-14 11:01:33.884148'),
(9, 'auth', '0006_require_contenttypes_0002', '2021-02-14 11:01:33.998589'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2021-02-14 11:01:34.165520'),
(11, 'auth', '0008_alter_user_username_max_length', '2021-02-14 11:01:34.242484'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2021-02-14 11:01:34.343493'),
(13, 'auth', '0010_alter_group_name_max_length', '2021-02-14 11:01:34.613355'),
(14, 'auth', '0011_update_proxy_permissions', '2021-02-14 11:01:34.776053'),
(15, 'auth', '0012_alter_user_first_name_max_length', '2021-02-14 11:01:34.899018'),
(16, 'home', '0001_initial', '2021-02-14 11:01:39.153555'),
(17, 'admin', '0001_initial', '2021-02-14 11:01:55.744870'),
(18, 'admin', '0002_logentry_remove_auto_add', '2021-02-14 11:02:02.291772'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-14 11:02:02.538149'),
(20, 'discount', '0001_initial', '2021-02-14 11:02:04.021183'),
(21, 'sessions', '0001_initial', '2021-02-14 11:02:05.575941'),
(22, 'default', '0001_initial', '2021-02-14 11:02:11.051271'),
(23, 'social_auth', '0001_initial', '2021-02-14 11:02:11.217591'),
(24, 'default', '0002_add_related_name', '2021-02-14 11:02:19.754114'),
(25, 'social_auth', '0002_add_related_name', '2021-02-14 11:02:19.836753'),
(26, 'default', '0003_alter_email_max_length', '2021-02-14 11:02:20.285116'),
(27, 'social_auth', '0003_alter_email_max_length', '2021-02-14 11:02:20.493346'),
(28, 'default', '0004_auto_20160423_0400', '2021-02-14 11:02:20.587883'),
(29, 'social_auth', '0004_auto_20160423_0400', '2021-02-14 11:02:20.815405'),
(30, 'social_auth', '0005_auto_20160727_2333', '2021-02-14 11:02:22.856046'),
(31, 'social_django', '0006_partial', '2021-02-14 11:02:24.459448'),
(32, 'social_django', '0007_code_timestamp', '2021-02-14 11:02:26.300358'),
(33, 'social_django', '0008_partial_timestamp', '2021-02-14 11:02:27.589318'),
(34, 'social_django', '0009_auto_20191118_0520', '2021-02-14 11:02:29.774932'),
(35, 'social_django', '0010_uid_db_index', '2021-02-14 11:02:30.593661'),
(36, 'student', '0001_initial', '2021-02-14 11:02:36.921225'),
(37, 'social_django', '0004_auto_20160423_0400', '2021-02-14 11:03:14.260482'),
(38, 'social_django', '0005_auto_20160727_2333', '2021-02-14 11:03:14.346250'),
(39, 'social_django', '0001_initial', '2021-02-14 11:03:14.457266'),
(40, 'social_django', '0003_alter_email_max_length', '2021-02-14 11:03:14.557725'),
(41, 'social_django', '0002_add_related_name', '2021-02-14 11:03:14.802327'),
(42, 'student', '0002_course_comments_approved_by_teacher', '2021-02-18 12:20:11.952303'),
(43, 'student', '0003_student_register_courses_last_completed_section_id', '2021-02-19 12:09:00.110377'),
(44, 'student', '0004_auto_20210219_2024', '2021-02-19 20:24:58.909836'),
(45, 'student', '0005_auto_20210219_2026', '2021-02-19 20:26:51.809321'),
(46, 'student', '0006_student_register_courses_date_created', '2021-02-19 21:41:33.536319'),
(47, 'home', '0002_user_receive_notifications', '2021-02-20 07:47:49.617470'),
(48, 'home', '0003_notifications_created_at', '2021-02-20 10:50:36.588353'),
(49, 'ipn', '0001_initial', '2021-02-23 10:42:52.678857'),
(50, 'ipn', '0002_paypalipn_mp_id', '2021-02-23 10:42:57.342433'),
(51, 'ipn', '0003_auto_20141117_1647', '2021-02-23 10:43:04.229203'),
(52, 'ipn', '0004_auto_20150612_1826', '2021-02-23 10:44:27.680915'),
(53, 'ipn', '0005_auto_20151217_0948', '2021-02-23 10:44:29.489624'),
(54, 'ipn', '0006_auto_20160108_1112', '2021-02-23 10:44:34.464788'),
(55, 'ipn', '0007_auto_20160219_1135', '2021-02-23 10:44:34.748533'),
(56, 'ipn', '0008_auto_20181128_1032', '2021-02-23 10:44:34.914062');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0axbsjnyz84nvfcm98ryep0zyufvqbng', '.eJxVjssKwjAURP8l61Iaax51Kbj0G8q9edhoTUrSICr-uylU0eXMnBnmSXrI89DnZGLvNNkRSqpfD0FdjF8CfQZ_CrUKfo4O6wWp1zTVx6DNuF_Zv4EB0lDaDbYIUjENRnLZmqYzLefQSUSupVDUCjCF4ExoprjagkVtW9xwi8ikKKPfj7QiE6R0C3H5dRgfGcFF-kHm-2SKn_JUBOir8-T1BhzZTi8:1mAUT7:qCUiw5OnM9Z9cIWDQ7KeImf01BBcRe_E4muolEpF7MY', '2026-08-01 09:42:45.734492'),
('11jkpidua4kngd4ig7imzdqu4hvpmtlh', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1m0tew:NELZYbV-g1HJ-chDaKas4ltbRUx4qs17tlP04UmJN9c', '2026-07-05 22:35:18.238023'),
('1eai4tdy0rf5mvanta26tvjrsuaev693', 'NTdhZjM4YThiMzk4NjAyYzViMmVkMzNmZDkyYTc4YmM4MGY3NzMwNTp7IjEyNy4wLjAuMSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIiLCJfYXV0aF91c2VyX2lkIjoiNDAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImVjYzQ0NWM1ZTUwN2MwMjhlNmE3MDU4YmU3YWRjMjJhNTZjMjY5MjciLCJ1c2VyX2lkIjoiNDAiLCJwYXNzd29yZCI6IkVsenViYWlyMSIsInJlbWVtYmVyIjoidHJ1ZSIsInVzZXJfdHlwZSI6InRlYWNoZXIifQ==', '2026-06-19 01:27:19.519495'),
('2ows05f0bk1qredwkck6c8b148i3ufds', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lw3HG:ysFiFLWJ9oDCLW0D34q0UUQpeW1330DiCpoBWDmjkWI', '2026-06-22 13:50:50.242649'),
('2tdyae4iu4n4gk8aa8ojlb3pmwazhg6d', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lyKN9:1y4F5NsBxr9k627aGTuYlxSV__M39No8RrtoBjbyh2s', '2026-06-28 20:30:19.273380'),
('4svokgch1aocz9j5zxt30ghdnq6ks5rm', '.eJyrVjI0MtczAEJDJSulxCLdnMz0jBIlHaX4nMS89NLE9FSwMFAgLTE5NSk_Pzu-uCSxBCSa6phYXBjk5JVXWOzplRpYWlnhHOHlnhdVmJ1RGJZUZQnUk56fn56TqpufWFqSYQTXaBThZ-Tn7RQYnGpempvqkeGcFVBe5uYR4pYalZFpZOmsVAsAIAUxSQ:1lvGsK:FJPyyp-rkTDs_ncuVi4qUnNmeT7HcTOWSLnNzuri61s', '2026-06-20 10:09:52.468632'),
('5lw0di4wo4djz2cvayfyna50qmjavz31', '.eJxdj80OgjAQhN-lZ21K6VbwaOLRZyDbHyhKgLQlRo3vbku4YPa038xsdj6k4CfK0hTkTNAfh75zkRxIM-DYLdjZFWeAS3TNEqxvepOgYHuoUD_smBVzT9GJ6mmMvlc0W-imBnqbjB0um3d3wGFwKa1sXQoOCJXAFjSYVjLgXAKXNSu0Ykq01ggtOVaGn6AtZSk1sFpApSTDdPTvyXWNrzlXiRa1s7nPjCE8J59d1-G9KOx9Qb4_J9FWRw:1m4L16:iijvrBKKNywiIvECSCeVlD3sqvv09GcUOpnylNY0YPU', '2026-07-15 10:24:24.891914'),
('68clgz0glvwqklj5g23odlhv6qeu7vbw', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lv5Cl:44Ud4jY-7ra0U_HeEQl1-3HyC3ljcP0wXZjfVrQDsDw', '2026-06-19 21:42:11.606511'),
('6vk9mzdactrby3vyrx1eu84duito9ii1', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvLLs:fOGQnSmlIR5YOC5ISWBjiXMRavB79gl6scB_5gwdfSk', '2026-06-20 14:56:40.798265'),
('6zv2oqxhexq72j41gzreptbl2j6392kv', 'MjQ3MzIwNzBlNjdjNzJlMDg5MDhlNzBkODljYTdiOTUyMjg5ODUyOTp7IjEyNy4wLjAuMSI6ImFyLWxpZ2h0IiwiX2xhbmd1YWdlIjoiYXIiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZWNjNDQ1YzVlNTA3YzAyOGU2YTcwNThiZTdhZGMyMmE1NmMyNjkyNyIsInVzZXJfaWQiOiIyIiwidXNlcl90eXBlIjoic3R1ZGVudCIsInBhc3N3b3JkIjoiRWx6dWJhaXIxIn0=', '2026-06-19 02:25:35.385921'),
('748fl1mtr50ddfd55hewtsrbuucb1728', '.eJxVjssKwjAURP8l61Iaax51Kbj0G8q9edhoTUrSICr-uylU0eXMnBnmSXrI89DnZGLvNNkRSqpfD0FdjF8CfQZ_CrUKfo4O6wWp1zTVx6DNuF_Zv4EB0lDaDbYIUjENRnLZmqYzLefQSUSupVDUCjCF4ExoprjagkVtW9xwi8ikKKPfj7QiE6R0C3H5dRgfGcFF-kHm-2SKn_JUBOir8-T1BhzZTi8:1mAB6D:Y0kR_e7O1iOE1lIKIvqNUg3EeIvJr-hpnmIn3bGZWAo', '2026-07-31 13:01:49.748398'),
('8liwx3c87t1z45rlurfe39rfcwbjyf6i', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m1Jgu:j7IBGld43FufT6irbASjc6N8aN0esDdiPq9cOWYI5B4', '2026-07-07 02:23:04.921437'),
('8yaf64o6nm5d4amjme3v0npsjgh02goz', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lzpxS:chCWrkhwsPpsaJhOmK9EKlASgOZZmS-NF_Ok0S5RsVg', '2026-07-03 00:26:02.978590'),
('9g9vi5esx1svaqw08rh6xhihf0e9w9s9', '.eJxdj90OgjAMhd9l17owtol4aeKlz0A62gFKgOwnRo3v7ka8UNurfj09OX2yBmLom-jJNQOyA1OSbb6hgfZKU97gBaZu5u08BTcYniX8s_X8PCONx4_2x6AH36drUIVUxmgBYAURSpJWGw22roTVVJRY4h7qUtmC1K5CretUEvdWSKFbSqZ_Idcx3BdKwIeINIVEF_D-NrusOo2PaGBwImFRVrxILXIUtx2Hrs_qZkw_Rehoxez1BllVV3I:1lyLoh:GFulexhTF3YsX6ZF9lT339Vaom17_nea-UDzNUIAZus', '2026-06-28 22:02:51.503561'),
('9qixdc3q53vzy19lg6j823g8jkb2oku7', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lyL1X:YPVImu0147VRJnwJvyRCjSvgSPQ7Nvq9Vf-2v6Cl_X4', '2026-06-28 21:12:03.475081'),
('9xzwqts6fm369kg5meue9h43pb7qtmvz', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvJsL:za8c7cLfH7n-nBCabKNwX7M45vES4UV7KLWWTkO4ix0', '2026-06-20 13:22:05.128899'),
('a8s84nb8kmwq7grzcdkzbm2qjijvb2yn', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m5isL:DOqGKYBc4acFzigiEx9BiNt3PvN82Ge7gtDiIEtzIts', '2026-07-19 06:05:05.704808'),
('bodev055n0a9gtcknwdmkt0e7ow9rwfk', '.eJxdj0tuwzAMRO-idSro40RylwW67BkMSqQtt44d6IMiCXL3SkUKNAFXfDNDDK9sgJLDUBLFYUb2yjrBdv-hA_9Fa1PwE9Zp435bc5wdbxZ-VxP_2JCWt7v34UCAFGp67K3RPbleInRGkexQoVfS2FEJtBpRqIPckzloO3pjDcJeSe2UVgIQTT36VPIEKX1vse3vy6U4mKOsONKRjo5ixTkW-svl84kaIvChijsmleGijqwU4ssyTyG35kv9ssBEv5jdfgA-G1x7:1mAB6I:ywIkLyAuR0fwCqZzHG-x4afWczHu9IpWHAWA0QJZVrg', '2026-07-31 13:01:54.918276'),
('cf03t6vto8opqy2usulx9ygy35b7e6my', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvvX3:yTRhpEtri4MH_i4eLAnIvnDad-cQcu7IHfsWRIZEQhg', '2026-06-22 05:34:37.977122'),
('do6xjjhte7cgwtw8s3lelols3dxt0p7m', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luvX2:ACybVkX0ixGIsI75jXJVT1JFi6wBGQJ16BrxG2qzAKA', '2026-06-19 11:22:28.719858'),
('ed8yeminp8a04n0jtxpx5xgbs49zrbjc', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvPMV:5zcAQTNyXi33CSi1U2nODSROm8bdYWUPBEvfXVcBENE', '2026-06-20 19:13:35.606719'),
('eugl71483azz6agcr5t1ehyjll9cqfle', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m1zDb:S-ZjZBTxdjO0X8YfZUZqwkGj0EUqh63dIT3PV9tdbxI', '2026-07-08 22:43:35.053984'),
('fqxos6s9cc856gv22o8aql3zaxz5ipg0', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m0nyD:79xJoE2v1QrTt47vZPDJz5sMApGnyswczkZQuADPRXM', '2026-07-05 16:30:49.967867'),
('fvr23vqukoq8h6nky6j74cd5lmgtaegf', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lycgE:Abgt1kLa_2WTc4FyKf1TbL3zI5dC-7SKcXnyaSr5cL8', '2026-06-29 16:03:14.320509'),
('g485srz0ax6f5unhpp6wjjt040ft8ynz', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lwNr2:OvmdoY0eCxouOHSizvO5FGhZxKy_IrAd3Kx9IIG4EAo', '2026-06-23 11:49:08.309168'),
('h6fjrci1utbuv0xs5bez2kuczia38rz6', '.eJxdj80OgjAQhN-lZ21K6VbwaOLRZyDbHyhKgLQlRo3vbku4YPa038xsdj6k4CfK0hTkTNAfh75zkRxIM-DYLdjZFWeAS3TNEqxvepOgYHuoUD_smBVzT9GJ6mmMvlc0W-imBnqbjB0um3d3wGFwKa1sXQoOCJXAFjSYVjLgXAKXNSu0Ykq01ggtOVaGn6AtZSk1sFpApSTDdPTvyXWNrzlXiRa1s7nPjCE8J59d1-G9KOx9Qb4_J9FWRw:1lzmHS:eb2VD4M2eDYnYqfwVPxbA8HKnR1EDczUjT9m2hw_oaI', '2026-07-02 20:30:26.807931'),
('hizm72ha74ro54mhbdn87yfb8nwurxm0', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lx3Ci:wLO84r6DKkAk_Cfm_KCs2mCkq3KoDacMG9Nzo65NlTM', '2026-06-25 07:58:16.008675'),
('hy2mgsuaf9odqa2rfonvjl4hd0tsm3ww', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwHm:ZwT5pgPjItMmrM9Ft8MlqrqI0tYnBvCxzp7i5FGN-Us', '2026-06-19 12:10:46.837996'),
('i4l02bfdronexymq1cqb2vxgftubtmq9', '.eJxdjsFuwyAQRP-Fc4pgcQLuMVKP_QZrYdfGrWVHgFW1Vf49EKVSW-1pZt6O5ltosFLV0-JZYHpa5ikWcRDDguu048R3uxp75jTMVGWnfmT5vLS8MIbIDRpwL3H4h_4yPYZ3XltCb7V_k2FbS5q9bIh8pFm-bsTL-cH-KYiYY_0ee2dNz77XhJ0F1h0BBdDWjaDIGSIFJ31kezJuDNZZwiNo48GAQiJbSy-Y88eW2paX5Wv3OCctrjc-GlZ-:1m9lQt:cYAYQVWBwLQmbHhmD8AFp5BH8EFlnk0AdpeBQ2b0kGs', '2026-07-30 09:37:27.617005'),
('iogp86n6p902ebtsk2vk2idqp7gma1nn', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1m0nht:Pij_HrMlH6zn8rm3BSMLXi3iRpt4o8e_fUwpIEIhkiI', '2026-07-05 16:13:57.859692'),
('ko7vtmm1y8v91o23erjuje0l3pwj593e', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lyKCL:YWKhSN1fVGxnavEkYui2aTRUT-qO-H9JSIYESJQ59Fo', '2026-06-28 20:19:09.668074'),
('kougvw1sazf8h6h08x0zuzphj526s7n3', '.eJxVjssKwjAURP8l61Iaax51Kbj0G8q9edhoTUrSICr-uylU0eXMnBnmSXrI89DnZGLvNNkRSqpfD0FdjF8CfQZ_CrUKfo4O6wWp1zTVx6DNuF_Zv4EB0lDaDbYIUjENRnLZmqYzLefQSUSupVDUCjCF4ExoprjagkVtW9xwi8ikKKPfj7QiE6R0C3H5dRgfGcFF-kHm-2SKn_JUBOir8-T1BhzZTi8:1mAGOK:oFtXU8oY206pB3vnS8ddxycLoQb_B4ZZz9tSXzSVuBY', '2026-07-31 18:40:52.707280'),
('l4rl98wheovsyq0lfei6fc59b2a6fqhl', '.eJxdj90OgjAMhd9l17owtol4aeKlz0A62gFKgOwnRo3v7ka8UNurfj09OX2yBmLom-jJNQOyA1OSbb6hgfZKU97gBaZu5u08BTcYniX8s_X8PCONx4_2x6AH36drUIVUxmgBYAURSpJWGw22roTVVJRY4h7qUtmC1K5CretUEvdWSKFbSqZ_Idcx3BdKwIeINIVEF_D-NrusOo2PaGBwImFRVrxILXIUtx2Hrs_qZkw_Rehoxez1BllVV3I:1lyy1j:7LSeOF97IEGvQXSxBWhGdlFWWK1Dhwlon9BjaV2IzmI', '2026-06-30 14:50:51.869488'),
('mdedkkuyqa3zbe1qfjv6xon6gjfkizw4', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvK3S:tHcKYdCnRpfrbFK6gT_XGMPmYmS9_-1VmsR52uO4_q0', '2026-06-20 13:33:34.648764'),
('nzrodz3z9q82zp6t468645clrkecl26u', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lyUIj:KwK1WdfTZ7ANDteAu4VrfpyCvT-1SD5y_7I2-r9FlWw', '2026-06-29 07:06:25.877519'),
('ovfj67at3jyypubbgq8lqgpxgsyzbhqx', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvIge:BRTQGzdNO1hyY-A1K0urvWzi1B4rgV1876-xBmlDZcM', '2026-06-20 12:05:56.292649'),
('ow956dfip84eg6uit8vkjvni4vfwn2x3', '.eJxdj8FuwyAQRP-Fc4pgcQLuMVKP_QZrYdfGrWVHgFW1Vf49EOWSaE_7Zma18y80WKnqaPEuML0t8xSLOIhhwXXaceI7bgD3Eoc9cxpmqrBTz9Bj-Oa1KfRVo5sM21rS7GWzyIea5edGvJwf3qcDEXOs6bF31vTse03YWWDdEVAAbd0IipwhUnDSR7Yn48ZgnSU8gjYeDCgksvXoy5P3tfxeWpXCGCK3PhfM-WdLzfWx_O0e56TF9QY4dFZ-:1mAaAg:twaQRuctD_omBDWVTROKQjGzyw8503q81MTL6mhVsMA', '2026-08-01 15:48:06.082911'),
('p1uox8f5iw5eannqzy6a5r4aa0vnyfyi', '.eJxdj80OgjAQhN-lZ21K6VbwaOLRZyDbHyhKgLQlRo3vbku4YPa038xsdj6k4CfK0hTkTNAfh75zkRxIM-DYLdjZFWeAS3TNEqxvepOgYHuoUD_smBVzT9GJ6mmMvlc0W-imBnqbjB0um3d3wGFwKa1sXQoOCJXAFjSYVjLgXAKXNSu0Ykq01ggtOVaGn6AtZSk1sFpApSTDdPTvyXWNrzlXiRa1s7nPjCE8J59d1-G9KOx9Qb4_J9FWRw:1m0YYq:kF6GFgwcmL6Jei1-ArAzLbgUS-B56pS5upf1D5z0p3o', '2026-07-05 00:03:36.044840'),
('pa47emq6qnsw6sompxbb0kru66bm1uvr', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwOl:4XGzAG4ahneSR969Z7tDAsKvNMYwxuD-wnfiPYjgtmg', '2026-06-19 12:17:59.851850'),
('plbdo77sjw9nl0293jngoxuk7ye1gp7g', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lx4AK:J3rnuTHXS-VCvMF2D8Tu8VW6qcboAqdtxsmYi8DJT_g', '2026-06-25 08:59:52.223277'),
('pnjsusihb260qwemoyj8m9mrhtqqqds9', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwqZ:iTPBRPP9ZuupN6OqRVvvSH92kjQQX2pnVRne2J7cZvU', '2026-06-19 12:46:43.718339'),
('pqp51i1g9roiaeg6dxdnilyfjl3isqph', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwAO:Ozc67_EIkIKNsRsok6oyXhXOQOPRCatAkPhyWTdM3e0', '2026-06-19 12:03:08.188063'),
('pw6hfxlv92dmr10pwpxyrwmeecjby1i9', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwBd:yJe-o3RnnDOL9ygwFtp9A7-ZOj9mHm1gtVoPaNijq6I', '2026-06-19 12:04:25.931994'),
('qohkhv9xpkmohbz9s75h68vmc0iqvqv9', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lyMYO:vAQH8HI61sz63UV70Q-TWUWOUT5GdWJ40M6aRUhp9xw', '2026-06-28 22:50:04.597480'),
('r3ykyh47yldc3cydcfh03nmmk8zjygbx', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lx4O6:asaUlMEswFqcAtr6RvoByN553AjKOMVKAnaT2sJFZw8', '2026-06-25 09:14:06.842060'),
('r62aa949oanduubhenmhen6eqmzmye1m', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvLeX:nItAK0mgVbg7gOjM3zW4ajUdgsSk8AbBR3OLtU9mjIQ', '2026-06-20 15:15:57.294528'),
('s36ai5e4ydgqll6a9bhv39i1gcfh0wrm', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lwB4z:lrrz_PxDPq9B778g1JSj4UmmpK2fLKO1HWR5kKTv1lk', '2026-06-22 22:10:41.325751'),
('t25f61uv36jijyxn9uxxoyxmdmhn9jfd', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvLWR:V8jrttJALn9iiSQ_U7gnlQys95t2rClsDnQ4X4CApHE', '2026-06-20 15:07:35.691956'),
('tpy6pjwiekgr16gd9rdxh4wqox1dxjyv', '.eJxdj80OgjAQhN-lZ21K6VbwaOLRZyDbHyhKgLQlRo3vbku4YPa038xsdj6k4CfK0hTkTNAfh75zkRxIM-DYLdjZFWeAS3TNEqxvepOgYHuoUD_smBVzT9GJ6mmMvlc0W-imBnqbjB0um3d3wGFwKa1sXQoOCJXAFjSYVjLgXAKXNSu0Ykq01ggtOVaGn6AtZSk1sFpApSTDdPTvyXWNrzlXiRa1s7nPjCE8J59d1-G9KOx9Qb4_J9FWRw:1m1AJd:3uk_D6UeRivK8Ae04Izdcd5jBnF5OEWtizk-HTdmw8Q', '2026-07-06 16:22:25.410529'),
('uy1ixvhduz7vp26awgx7ontj39s5trk1', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lw54H:8iFGvFX-o1Ngat1bVGDkPLC42P4y16E5MqLjMtVtIZo', '2026-06-22 15:45:33.413933'),
('vn1vv53obe5mzrcw3v7v3x2xgwjzjxw9', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lw0L6:4TQP9PXwexmtwlIT1w5qAzDSI38cQSf-5Tke_z5IVpM', '2026-06-22 10:42:36.129379'),
('xrp2y3nnp1p4xntkwhds1yg8iv90o11n', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1luwnw:m_XPAAaSxDS2MBseby2f1MpPZsH6M6StreF-QRfEJXM', '2026-06-19 12:44:00.638112'),
('y7p0r1dym1zf1j2q9tyadbuc24d3koi3', '.eJxdT8sOgjAQ_JeetaG0FfFo4tFvIFt2CygB0keMGv_dlnDR3dPOzM7uvJkoK16kFuzEwO3HoesD27FmhKmL0NEKZwBi6JvoyTUDJlDJX9BAe6cpM3hLqzNv5ym4wfAs4Rvr-XVGGs-b9segB9_nY6qQyhgtAKwgQknSaqPB1pWwmooSSzxCXSpbkDpUqHWdSuLRCil0S8n078l1DM8lR_EhIk054ALeP2aXVZfxFQ0MTrDPF5VAV3I:1lyMTM:KTZdQMFXJfT2noJULWBD0s4TQQBqf-a9YYw_vpu-_EY', '2026-06-28 22:44:52.937686'),
('ykj66pu0h3dfhgamo140i6gknbrdm68j', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lwTRP:6yIu1G5LbjrjXnmRxqBupsCLMo3DX8O9XCvXZ72oQWA', '2026-06-23 17:47:03.663631'),
('ysnor0keqik3pkb0qv9y7xaw30lvtawt', 'eyIxMjcuMC4wLjEiOiJhci1saWdodCIsIl9sYW5ndWFnZSI6ImFyIn0:1lvLNP:2NEYftKwxexY-NI3Y6111kecy2ycO11oXcvU8i-n0cM', '2026-06-20 14:58:15.296764'),
('zeszfxosj3px6me4zff6n9agq5gvxk5q', '.eJxdj0kOwjAMRe-SNURNk1DKEoklZ6ic2mkLHVAGIUDcnQQhJLBXft_fw4OJsuJFSsF2DNx6HLo-sBVrRpi7CB29cQYQQ99ET64ZMEElf6GB9kxzVvCUrAtvlzm4wfDcwj-q58cFadx_en8G9OD7vEwVUhmjBYAVRChJWm002LoSVlNRYolbqEtlC1KbCrWuU0jcWiGFbikN_TvyAt5fF5frw3iPBgYnEnY00WTIJRxc_PrC7ZJ_9iEizYE9X9_dXW8:1mAa3A:zA70iTLtr2ixhjJw7FD3LEfglREx5EkXZHG0pz1Fwvs', '2026-08-01 15:40:20.322931');

-- --------------------------------------------------------

--
-- Table structure for table `home_admin`
--

CREATE TABLE `home_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_joined` datetime DEFAULT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) DEFAULT '1' COMMENT '0: admin 1: super user 2: employee',
  `address` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_id` tinyint(4) DEFAULT NULL COMMENT 'employee or superuser''s position. 0: not allocated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_admin`
--

INSERT INTO `home_admin` (`id`, `email`, `password`, `last_login`, `date_joined`, `name`, `img`, `role`, `address`, `position_id`) VALUES
(1, 'yarxalo@gmail.com', 'pbkdf2_sha256$260000$rtAg7q8C225cFbjE0Rwp5P$j3KS9Qn/sTeRBoRjGIUl78GPxAdEHTQlT82gvKygan0=', '2021-08-02 09:42:45', '2021-05-07 05:40:43', 'Yaroslav Xalabuda', '/img/user_images/72f277bb-287c-4da7-af40-b03c0b5a62fc.png', 0, 'Moscow', 1),
(4, 'ivan@gmail.com', 'pbkdf2_sha256$216000$sSQGOeaqskf7$M2wE3i4h3BkLOBtYSELPSKz5gKBD0IYDRut+tnWZweg=', '2021-05-13 10:12:07', '2021-05-07 05:40:43', 'ronaldinho', '/img/user_images/5d0c01e2-737b-43f0-8c74-3aafe3f20cdd.png', 2, 'moscow', 2),
(6, 'ronaldo@gmail.com', 'pbkdf2_sha256$260000$d4rgS6cS83isDIiyj9xpPU$7qw0dWnX7zqJj3F710beod2yh5jpNW1Prc27Xo3Cb9w=', '2021-05-06 03:34:18', '2021-05-07 05:40:43', 'Ronaldo', '', 2, 'risbon', 7),
(7, 'messi@gma.net', 'pbkdf2_sha256$260000$ePxqA57fZc8ocqGdw6BBzf$KFqygJ2m5swJTtj4NwZoHoa1DaGnQDcPfxYeWqdobOI=', '2021-05-06 03:45:08', '2021-05-07 05:40:43', 'mes', '', 1, 'madrid', 8),
(9, 'demaria@gmail.com', 'pbkdf2_sha256$260000$bGEoe1ELh6I4k2uvOKyKaN$oH3nlO9UYlda+oU2gD7mie6JkxQDTXZFjRbZvu8HcYg=', '2021-05-06 17:20:06', '2021-05-07 05:40:43', 'demaria', '', 2, '', 1),
(10, 'officialcontactservices@gmail.com', 'pbkdf2_sha256$216000$PsHgox2tqSDC$yx9k669xd+PKmyHaWbEQcwkkpVWcd2lTCTDX3H7/UCg=', '2021-05-09 09:08:54', '2021-05-09 07:49:43', 'Elzubair1', '/img/user_images/f06d78c1-dc9b-4e52-a18f-70877f0370d2.png', 2, 'KSA', 3),
(11, 'booctepdotcom2030@gmail.com', 'pbkdf2_sha256$216000$gi9Su98oGCnl$565IbwTzP6KYGLGpt6uxuR0zWzDop6kWjmzq2jIhxtM=', '2021-05-09 09:15:46', NULL, 'Ahmed', '', 1, 'London', 1),
(12, 'hilalu@gmail.com', 'pbkdf2_sha256$216000$NCqLTykPS0rC$EvN6udP7gETpMrJb0okyniXjQ7aZvU3MaqnjXLb97FI=', '2021-05-09 10:41:50', NULL, 'Khalid', '', 1, 'London', 1),
(13, 'test@gmail.com', 'pbkdf2_sha256$216000$3DTVXnq2Zp8U$ZZcSmcix8YZO21sc4GLboL2p9j1VzglkWF0TtAxh4eA=', '2021-05-09 10:41:58', NULL, 'test super user', '', 1, 'sdfsdfsdf', 4),
(14, 'ma@gmail.com', 'pbkdf2_sha256$216000$R9C7d4AAEU8Z$nvL+PJECPdhc9c4V9G5Czh9BfU9j5bNNugdvwWGj22o=', '2021-05-09 10:46:35', NULL, 'Test', '', 1, 'London', 1),
(15, 'ak@gmail.com', 'pbkdf2_sha256$216000$rUeYf1rgw6LJ$aeJcCyxYA2ykjPjD3VJOaaKYiD0aiMzwk78I440q1LM=', '2021-05-09 10:48:11', NULL, 'Another', '', 1, 'ryiadh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `home_admincontrol`
--

CREATE TABLE `home_admincontrol` (
  `id` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `student_tax` int(11) DEFAULT NULL,
  `teacher_tax` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_admincontrol`
--

INSERT INTO `home_admincontrol` (`id`, `priority`, `student_tax`, `teacher_tax`) VALUES
(1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_adminnotifications`
--

CREATE TABLE `home_adminnotifications` (
  `id` int(11) NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT '0',
  `good_bad` tinyint(4) DEFAULT NULL COMMENT '1: good 2: bad 0: all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_adminnotifications`
--

INSERT INTO `home_adminnotifications` (`id`, `title`, `content`, `sender_id`, `receiver_id`, `time`, `is_read`, `good_bad`) VALUES
(1, 'Hello ser', 'this is good news', 1, 4, '2021-05-07 06:32:05', 0, 1),
(2, 'hello teacher', 'You are successfully rgistgeed', 1, 6, '2021-05-07 11:19:13', 0, 1),
(3, 'HHH', 'wwwww', 1, 4, '2021-05-07 12:12:25', 1, 2),
(5, 'every body', 'goooddddd', 1, 4, '2021-05-07 12:12:41', 1, 1),
(6, 'every body', 'goooddddd', 1, 4, '2021-05-07 12:12:41', 1, 1),
(7, 'are you there?', 'It is not good', 1, 4, '2021-05-07 12:44:38', 1, 2),
(8, 'Change something', 'yarxalo@gmail.com', 1, 6, '2021-05-09 07:52:57', 0, 1),
(10, 'Hi', 'bad job', 1, 10, '2021-05-09 07:55:14', 1, 2),
(12, 'Change something', 'Hello', 10, 7, '2021-05-09 07:55:54', 0, 3),
(17, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 7, '2021-05-13 10:12:43', 0, 3),
(19, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 11, '2021-05-13 10:12:43', 0, 3),
(20, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 12, '2021-05-13 10:12:43', 0, 3),
(21, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 13, '2021-05-13 10:12:43', 0, 3),
(22, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 14, '2021-05-13 10:12:43', 0, 3),
(23, 'Thanks', 'ivan@gmail.com\nivan@gmail.com\nivan@gmail.com\n', 4, 15, '2021-05-13 10:12:43', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `home_admintarget`
--

CREATE TABLE `home_admintarget` (
  `id` int(11) NOT NULL,
  `sale_target` int(11) NOT NULL,
  `course_target` int(11) NOT NULL,
  `user_target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_admintarget`
--

INSERT INTO `home_admintarget` (`id`, `sale_target`, `course_target`, `user_target`) VALUES
(1, 10, 800, 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_card`
--

CREATE TABLE `home_card` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_number` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_card`
--

INSERT INTO `home_card` (`id`, `user_id`, `card_name`, `card_number`, `bank_number`) VALUES
(8, 40, 'debit card', '1234567890', '1920');

-- --------------------------------------------------------

--
-- Table structure for table `home_discount`
--

CREATE TABLE `home_discount` (
  `id` int(11) NOT NULL,
  `discount` int(3) NOT NULL DEFAULT '0',
  `not_apply_course` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `expire_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_discount`
--

INSERT INTO `home_discount` (`id`, `discount`, `not_apply_course`, `expire_date`, `description`) VALUES
(4, 30, ',29', '2021-07-16', 'this is the first discount.\nplease relax our offers');

-- --------------------------------------------------------

--
-- Table structure for table `home_expense`
--

CREATE TABLE `home_expense` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buyer` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` float NOT NULL,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_logtime`
--

CREATE TABLE `home_logtime` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `in_time` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_logtime`
--

INSERT INTO `home_logtime` (`id`, `user_id`, `in_time`, `out_time`) VALUES
(1, 1, '2021-05-09 13:09:44', ''),
(2, 1, '2021-05-09 13:18:04', ''),
(3, 1, '2021-05-09 13:19:06', ''),
(4, 1, '2021-05-09 14:10:41', ''),
(5, 1, '2021-05-09 14:15:21', ''),
(6, 1, '2021-05-11 10:01:53', ''),
(7, 1, '2021-05-11 11:46:19', ''),
(8, 1, '2021-05-11 12:10:14', ''),
(9, 4, '2021-05-11 12:14:01', ''),
(10, 1, '2021-05-11 12:16:44', ''),
(11, 4, '2021-05-11 12:18:39', ''),
(12, 1, '2021-05-11 12:29:54', ''),
(13, 1, '2021-05-11 12:51:48', ''),
(14, 1, '2021-05-11 12:57:05', ''),
(15, 4, '2021-05-11 13:09:14', ''),
(16, 4, '2021-05-11 13:26:42', ''),
(17, 4, '2021-05-11 13:29:55', '2021-05-11 14:19:09'),
(18, 1, '2021-05-11 14:19:49', '2021-05-11 14:43:20'),
(20, 4, '2021-05-11 14:44:28', ''),
(21, 1, '2021-05-11 17:50:56', ''),
(22, 4, '2021-05-11 17:57:22', ''),
(23, 1, '2021-05-12 01:54:27', ''),
(24, 1, '2021-05-12 04:46:41', ''),
(26, 4, '2021-05-12 06:15:23', '2021-05-12 06:15:58'),
(27, 1, '2021-05-12 06:16:17', '2021-05-12 06:18:19'),
(28, 4, '2021-05-12 06:18:29', '2021-05-12 06:23:55'),
(29, 1, '2021-05-12 06:24:17', '2021-05-12 06:25:16'),
(30, 4, '2021-05-12 06:25:38', ''),
(31, 1, '2021-05-12 06:33:02', ''),
(32, 4, '2021-05-12 06:34:11', ''),
(33, 4, '2021-05-12 06:36:55', '2021-05-12 07:17:54'),
(34, 1, '2021-05-12 07:19:50', '2021-05-12 07:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `home_messages`
--

CREATE TABLE `home_messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `time` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_id` int(11) DEFAULT '0' COMMENT 'who is deleted',
  `is_read` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:unread 1:read'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_messages`
--

INSERT INTO `home_messages` (`id`, `sender_id`, `receiver_id`, `course_id`, `text`, `time`, `delete_id`, `is_read`) VALUES
(15, 1, 40, 29, 'Hi', '2021-05-20 17:48:03', 40, 1),
(16, 40, 1, 29, 'Ok', '2021-05-20 19:35:35', 40, 1),
(17, 2, 40, 29, 'Hi', '2021-05-20 19:36:46', 0, 1),
(18, 2, 40, 29, 'there', '2021-05-20 19:36:49', 0, 1),
(19, 1, 40, 29, 'OK OK', '2021-05-20 19:37:45', 40, 1),
(20, 40, 1, 29, 'Hi', '2021-05-20 19:38:41', 40, 1),
(21, 40, 1, 29, 'Hi', '2021-05-20 19:38:44', 40, 1),
(22, 40, 1, 29, 'Hi', '2021-05-20 19:38:45', 40, 1),
(23, 1, 40, 29, 'Ok as', '2021-05-20 19:39:35', 40, 1),
(24, 2, 40, 29, 'Test', '2021-05-20 19:40:16', 0, 1),
(25, 40, 1, 29, 'Ok', '2021-05-20 19:41:19', 40, 1),
(26, 40, 2, 29, 'hhhhhhhhhhhh', '2021-05-20 19:41:46', 0, 1),
(27, 40, 1, 29, 'hhhhhhhhhhhh', '2021-05-20 19:41:55', 40, 1),
(28, 40, 2, 29, 'Hi', '2021-05-20 19:47:49', 0, 1),
(29, 40, 2, 29, 'OK', '2021-05-20 20:02:54', 0, 1),
(30, 40, 1, 29, 'MKL', '2021-05-20 20:02:59', 40, 1),
(31, 2, 40, 29, 'HII', '2021-05-20 20:04:36', 0, 1),
(32, 1, 40, 29, 'OKK', '2021-05-20 20:05:17', 40, 1),
(33, 40, 2, 29, 'Hi', '2021-05-20 20:09:28', 0, 1),
(34, 1, 40, 29, 'UI', '2021-05-21 06:28:23', 40, 1),
(35, 1, 40, 29, 'OK', '2021-05-21 06:30:15', 40, 1),
(36, 43, 40, 30, 'Hello', '2021-08-01 20:52:33', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_notifications`
--

CREATE TABLE `home_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `created_at` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT 'type:0  teacher -> student 1: admin -> teacher or student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_notifications`
--

INSERT INTO `home_notifications` (`id`, `user_id`, `title`, `text`, `is_read`, `course_id`, `sender_id`, `created_at`, `type`) VALUES
(9, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1),
(10, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1),
(11, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1),
(12, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1),
(13, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:53', 1),
(14, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:54', 1),
(15, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:54', 1),
(16, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:54', 1),
(17, 40, 'Why', 'NDJ', 0, 999, 17, '2021-05-24 09:28:54', 1),
(18, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:34', 1),
(19, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:36', 1),
(20, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:36', 1),
(21, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:36', 1),
(22, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1),
(23, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1),
(24, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1),
(25, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1),
(26, 40, 'test ', 'send noti to all', 0, 999, 1, '2021-05-24 10:41:37', 1),
(27, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:07:50', 1),
(28, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:08:46', 1),
(29, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:10:25', 1),
(30, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:11:21', 1),
(31, 2, 'test notification ', 'Are you there?', 0, 999, 1, '2021-06-10 22:15:10', 1),
(32, 2, 'test notification', 'hey hey', 0, 999, 1, '2021-06-10 22:22:13', 1),
(33, 2, 'test notification', 'hey hey', 0, 999, 1, '2021-06-10 22:25:56', 1),
(34, 2, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(35, 4, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(36, 5, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(37, 6, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(38, 7, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(39, 8, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(40, 35, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(41, 38, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(42, 39, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(43, 43, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(44, 46, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(45, 53, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(46, 54, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(47, 55, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(48, 56, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(49, 57, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(50, 58, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(51, 60, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(52, 61, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(53, 64, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(54, 65, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(55, 66, 'listen to me all student', 'I am admin', 0, 999, 1, '2021-06-10 22:26:15', 1),
(56, 40, 'test notification', 'thisi is test', 0, 999, 1, '2021-06-10 22:27:54', 1),
(57, 1, 'test notification', 'thisi is test', 0, 999, 1, '2021-06-10 22:28:18', 1),
(58, 40, 'hello abraham', 'there?\n', 0, 999, 1, '2021-06-10 23:23:42', 1),
(59, 40, 'hello abraham', 'there?\n', 0, 999, 1, '2021-06-11 00:41:00', 1),
(60, 40, 'hello abraham', 'there?\n', 0, 999, 1, '2021-06-11 00:43:06', 1),
(61, 1, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(62, 9, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(63, 10, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(64, 11, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(65, 12, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(66, 13, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(67, 14, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(68, 15, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(69, 17, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(70, 18, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(71, 19, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(72, 20, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(73, 23, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(74, 36, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(75, 40, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(76, 45, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(77, 47, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(78, 48, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(79, 49, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(80, 50, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(81, 51, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(82, 52, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(83, 59, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(84, 62, 'test broadcast', 'hello all teachers!!!', 0, 999, 1, '2021-06-11 00:43:34', 1),
(85, 40, 'test noti', 'hey', 0, 999, 1, '2021-06-11 01:02:55', 1),
(86, 40, 'test noti', 'hey', 0, 999, 1, '2021-06-11 01:03:30', 1),
(87, 1, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(88, 9, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(89, 10, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(90, 11, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(91, 12, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(92, 13, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(93, 14, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(94, 15, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(95, 17, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(96, 18, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(97, 19, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(98, 20, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(99, 23, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(100, 36, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(101, 40, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(102, 45, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(103, 47, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(104, 48, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(105, 49, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(106, 50, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(107, 51, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(108, 52, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(109, 59, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(110, 62, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:05:00', 1),
(111, 1, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(112, 9, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(113, 10, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(114, 11, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(115, 12, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(116, 13, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(117, 14, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(118, 15, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(119, 17, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(120, 18, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(121, 19, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(122, 20, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(123, 23, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(124, 36, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(125, 40, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(126, 45, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(127, 47, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(128, 48, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(129, 49, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(130, 50, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(131, 51, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(132, 52, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(133, 59, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1),
(134, 62, 'sdfsd', 'sdfsdfsdf', 0, 999, 1, '2021-06-11 01:07:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_position`
--

CREATE TABLE `home_position` (
  `id` bigint(20) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_position`
--

INSERT INTO `home_position` (`id`, `name`, `comment`) VALUES
(1, 'Ai Director', ''),
(2, 'Programmer', ''),
(3, 'Designer', ''),
(4, 'Course Publiser', ''),
(5, 'Photographer', ''),
(6, 'Deployer', ''),
(7, 'Dev Ops', ''),
(8, 'Manager of Finance ', '');

-- --------------------------------------------------------

--
-- Table structure for table `home_refund`
--

CREATE TABLE `home_refund` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `approval_status` int(11) DEFAULT '1',
  `date_created` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_spam`
--

CREATE TABLE `home_spam` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `approval_status` int(11) DEFAULT '1',
  `date_created` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_spam`
--

INSERT INTO `home_spam` (`id`, `teacher_id`, `student_id`, `course_id`, `title`, `content`, `approval_status`, `date_created`) VALUES
(5, 40, 2, 30, 'aaa', 'Hiee ', 1, '2021-05-24 14:17:53'),
(6, 40, 2, 29, 'aaaa', 'aaaa', 1, '2021-05-24 14:43:23'),
(7, 40, 2, 29, '', '', 2, '2021-05-26 17:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `home_task`
--

CREATE TABLE `home_task` (
  `id` int(11) NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `done_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` tinyint(4) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `file_url` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_task`
--

INSERT INTO `home_task` (`id`, `title`, `description`, `start_date`, `end_date`, `done_date`, `priority`, `sender_id`, `receiver_id`, `file_url`, `answer`) VALUES
(11, 'to check', 'to check it only', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', ''),
(12, 'new task', 'new task', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', ''),
(13, 'New Task', 'New tasks', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', ''),
(14, 'new tasks', 'new tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksnew tasksn', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', ''),
(15, 'مهمة جديدة مهمة جديدة مهمة جديدة مهمة جديدة مهمة جديدة', 'مهمة جديدة مهمة جديدة مهمة جديدة مهمة جديدة مهمة جديدة', '2021-05-12', '2021-05-13', '', 1, 1, 4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `home_user`
--

CREATE TABLE `home_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `date_joined` datetime(6) DEFAULT NULL,
  `first_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `group_id` int(11) NOT NULL,
  `receive_notifications` tinyint(1) NOT NULL,
  `receive_email` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_user`
--

INSERT INTO `home_user` (`id`, `password`, `hash`, `last_login`, `email`, `is_staff`, `is_active`, `is_superuser`, `date_joined`, `first_name`, `last_name`, `phone_number`, `image`, `group_id`, `receive_notifications`, `receive_email`) VALUES
(1, 'pbkdf2_sha256$260000$FZ3OZLjJpg90avikoxfYkh$y/CCP9gbdKU19vrtFg9Cr0YGRM6kFERqEAzVggb+omQ=', '', '2021-06-20 09:53:31.691699', 'admin@gmail.com', 1, 1, 1, '2020-06-15 04:44:35.052800', 'Parshotam', 'Kumar ', NULL, '/user_images/349b34ad-d01e-4b37-a225-80bb95b78e66.png', 2, 1, 1),
(2, 'pbkdf2_sha256$260000$1A9PzLLBxIZ9v4TyNBP8z1$6YiEufaAbnUbgmIyRq3OuAe2qk4/CRrBjTN9etRCzKg=', '', '2021-06-20 11:02:43.829138', 'test@test.com', 1, 1, 0, '2020-06-15 08:21:13.245323', 'beauty', 'beautyful', '09781804565', '/user_images/7275173f-1565-4fca-ab52-1d7b4b86ab2e.jpg', 1, 1, 1),
(4, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2021-06-11 13:53:07.662398', 'student@test.com', 0, 1, 0, '2020-06-15 12:13:43.888853', 'student', 'test', '09781804565', '/user_images/03cf48ae-eab3-48f0-b82c-5c40be57eb97.jpg', 1, 1, 0),
(5, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@1.com', 0, 0, 0, '2020-06-18 02:53:19.925709', 'test', 'test', '+123456789', '/user_images/cabe52a5-ef8e-402e-b5ab-e0252e6539a2.png', 1, 1, 0),
(6, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@2.com', 0, 0, 0, '2020-06-18 02:53:19.925709', 'test', 'test', '+12456789', '/user_images/71f4b0da-2a22-422d-9f35-609a6433c57d.png', 1, 1, 0),
(7, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@gmail.com', 0, 0, 0, '2020-06-18 05:54:53.496232', 'test', 'test', '123456789', '/user_images/9b027baa-4760-480f-9881-f22550ba2d51.png', 1, 1, 0),
(8, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@tt.com', 0, 0, 0, '2020-06-18 05:57:01.752994', 'test', 'test', '123456', '/user_images/a4104da7-0ddb-4978-bb56-3c03ba6a7268.png', 1, 1, 0),
(9, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@11.com', 0, 0, 0, '2020-06-18 05:57:01.752994', 'test', 'test', '123456', '/assets/img/man.jpg', 3, 1, 0),
(10, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@3.com', 0, 0, 0, '2020-06-18 09:27:25.940813', 'testing', 'test', '123456789', '/user_images/809a2a33-84ea-47db-846f-2a10e53f8fe7.png', 3, 1, 0),
(11, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'test@4.com', 0, 0, 0, '2020-06-18 09:27:25.940813', 'test', 'test', '123456789', '/user_images/065dc4c9-42bb-450e-91fa-300de55a6715.png', 2, 1, 0),
(12, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jackson@test.com', 0, 0, 0, '2020-06-18 09:48:00.364321', 'jackson', 'v', '123456789', '/user_images/9a070c69-f885-4314-96aa-2bbb3402de5a.png', 3, 1, 0),
(13, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-06-23 06:42:42.031176', 'jackey@test.com', 0, 1, 0, '2020-06-23 06:11:59.139771', 'Jackey', 'jenis', '123456789', '/user_images/5d7941a6-ee87-49bc-9b6b-92e64b32882a.jpg', 3, 1, 0),
(14, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-06-23 07:28:02.162262', 'test123@gmail.com', 0, 1, 0, '2020-06-23 07:14:48.212016', 'Jackey', 'John', '12345678911', '/user_images/ceb9c481-e878-41b7-929d-ebde889dfb89.jpg', 3, 1, 0),
(15, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jjj@1.com', 0, 0, 0, '2020-06-25 15:49:42.038890', 'jackey', 'jjj', 'none', '/assets/img/man.jpg', 3, 1, 0),
(17, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jjj@3.com', 0, 0, 0, '2020-06-25 15:49:42.038890', 'jjjj', 'jjjj', '123456789', '/assets/img/man.jpg', 3, 1, 0),
(18, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jjj@5.com', 0, 0, 0, '2020-06-25 15:49:42.038890', 'jjj', 'jjj', 'none', '/assets/img/man.jpg', 3, 1, 0),
(19, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'jjj@6.com', 0, 0, 0, '2020-06-25 15:49:42.038890', 'jjj', 'jjj', 'none', '/assets/img/man.jpg', 2, 1, 0),
(20, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'Hello@dd.com', 0, 1, 0, '2020-06-30 08:32:53.339761', 'sdf', 'sdf', 'none', '/user_images/7c586b74-138a-4018-86c6-9ca1edab4486.png', 3, 1, 0),
(23, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-11-25 09:33:11.163138', 'john@bool.com', 1, 1, 1, '2020-11-04 15:07:01.049878', 'john', 'bool', 'none', '/assets/img/man.jpg', 2, 1, 0),
(35, 'pbkdf2_sha256$260000$rBg6UyXZZmZr5i7NZuQoUI$dl7+enprOMA4rkyWeEz9iFI4327jAlAZzMIzs0IDS50=', '90b88405908c4009750738ac9132a3f4', '2021-08-01 17:29:25.863853', 'yarxalo@gmail.com', 0, 1, 0, '2020-11-23 08:45:55.229224', 'Yaroslav', 'Xalabuda', 'none', '/assets/img/man.jpg', 1, 1, 0),
(36, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-11-23 10:44:35.035160', 'booctepdotcom2030@gmail.com', 0, 1, 0, '2020-11-23 09:50:59.713614', 'Elzubair', 'Mohammed', 'none', '/user_images/74f15e43-e4e6-483f-94fb-466706008871.png', 2, 1, 0),
(38, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-11-23 10:07:55.718606', 'mkaaaaani@gmail.com', 0, 1, 0, '2020-11-23 10:07:14.991897', 'Elzubair ', 'Mohamed', 'none', '/assets/img/man.jpg', 1, 1, 0),
(39, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2020-11-24 20:42:17.328926', 'mkaaaani@gmail.com', 0, 1, 0, '2020-11-23 10:46:46.632032', 'Bandar', 'Emad', 'none', '/user_images/2a521e24-b318-4932-97bb-7b191e353966.png', 1, 1, 0),
(40, 'pbkdf2_sha256$260000$sGHLZqoDLZb7KxwtO3rH7R$lIISYMTKt+gBqO2/XeY1yiZ0dk7JB5gov7iNOEM7Wo0=', '2a6dde22b15108c5a99531f4c339a073', '2021-08-02 15:48:05.919681', 'officialcontactservices@gmail.com', 0, 1, 0, '2020-11-23 12:25:29.324248', 'Khaled', 'AbrahamAbrahamAbraham', 'none', '/user_images/db15f9e7-16c8-465b-9db1-784a78b983ee.png', 3, 1, 1),
(43, 'pbkdf2_sha256$260000$WQCUIrjMhJbWtc31iFINso$7yluWP72DcG4E1w8K1wH0TEBClGYEec/+Q/q6EQfIeE=', '', '2021-08-02 14:18:37.416358', 'alzober1414@gmail.com', 0, 1, 0, '2020-11-29 11:36:44.934900', 'الزبير محمد ', ' صالح جميل', 'none', '/user_images/3f2c0b2e-bf52-4ae5-a526-d179886c726a.png', 1, 0, 0),
(45, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2021-01-16 13:44:57.302180', 'hello@gmail.com', 0, 1, 0, '2021-01-16 05:44:15.261946', 'hello', 'love', 'none', '/user_images/3689cb65-0a4d-4ad2-ae14-8a70050f0155.jpg', 2, 1, 0),
(46, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'ebari2017@yandex.com', 0, 0, 0, '2021-01-20 10:38:05.351369', 'Farabi', 'Siddique', 'none', '/user_images/869d50c4-3d6a-4653-855d-3be6bbe6ce9e.png', 1, 1, 0),
(47, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'amifarabi@fara.com', 0, 0, 0, '2021-02-14 12:10:08.149865', 'Gamal', 'Naser', 'none', '/user_images/172a4f9f-727e-4e07-97c0-d615188d957a.jpg', 2, 1, 0),
(48, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'zz@zz.com', 0, 0, 0, '2021-02-14 12:13:03.573707', 'Gamal', 'Naser', 'none', '/user_images/41a8cc9a-c937-4dcf-b971-3ec078a6f0cc.jpg', 2, 1, 0),
(50, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'flsohwgjeguuwqscuo@wqcefp.com', 0, 0, 0, '2021-02-14 12:28:02.085032', 'Ka', 'Ka', 'none', '/user_images/2a0b4938-1013-4e4d-b370-6a57290f8426.jpg', 2, 1, 0),
(51, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'yuycsbecbvoicfsgcz@twzhhq.online', 0, 0, 0, '2021-02-14 12:40:09.980534', 'Ja', 'Ja', 'none', '/user_images/e9b03d36-567d-461e-bdb4-0b83dfae516b.jpg', 2, 1, 0),
(52, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'ulmzdemfetbxbnlkkp@twzhhq.com', 0, 0, 0, '2021-02-14 12:50:29.337522', 'A', 'B', 'none', '/user_images/5c0e0fef-d949-48e3-abc5-67cfa8d188ee.jpg', 2, 1, 0),
(53, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2021-02-21 03:07:40.555825', 'okw56095@zwoho.com', 0, 1, 0, '2021-02-21 02:46:45.668445', 'adsada', 'sfsfdf', 'none', '/user_images/c86ef74d-773f-468b-a234-ec7a13ea63a2.jpg', 1, 1, 0),
(54, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2021-02-21 04:13:50.235049', 'tns45086@cuoly.com', 0, 1, 0, '2021-02-21 03:57:52.065720', 'sdsdf', 'sdfdsf', 'none', '/user_images/63c24633-8ed4-4fd2-b702-eece75c815ba.jpg', 1, 1, 0),
(55, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', '2021-02-21 06:18:35.181201', 'okv26267@zwoho.com', 0, 1, 0, '2021-02-21 05:35:29.181431', 'fdf', 'fdsdf', 'none', '/user_images/33366e52-f9df-4919-b69f-3320ce77517f.jpg', 1, 1, 0),
(56, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'wyk90703@cuoly.com', 0, 1, 0, '2021-02-21 07:07:27.676765', 'fdf', 'fsdf', 'none', '/user_images/4b04dbc1-9294-49ea-a5e2-701d36aeb7c4.jpeg', 1, 1, 0),
(57, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'tjw64926@cuoly.com', 0, 1, 0, '2021-02-22 12:39:41.360226', 'bhjbhj', 'bhhkh', 'none', '/user_images/5a367837-b0bc-4624-aced-abe3870bf7ae.jpeg', 1, 1, 0),
(58, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'lyx74109@cuoly.com', 0, 1, 0, '2021-02-22 12:51:20.708227', 'ghjg', 'gjgjg', 'none', '/user_images/5a9c4e71-079f-4b91-a56e-2b22c1522a3a.jpg', 1, 1, 0),
(59, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'wwwwwww@gmail.com', 0, 0, 0, '2021-05-17 18:50:07.150784', 'test', 'sfsdf', 'none', '/assets/img/man.jpg', 2, 1, 0),
(60, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'testsese@gmail.com', 0, 0, 0, '2021-05-17 19:16:05.831839', 'liman', 'testtest', 'none', '/assets/img/man.jpg', 1, 1, 0),
(61, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'admin@hotmail.com', 0, 0, 0, '2021-05-17 19:17:19.515552', 'liman', 'wfwefwef', 'none', '/assets/img/man.jpg', 1, 1, 0),
(62, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, '555@gmail.com', 0, 0, 0, '2021-05-17 19:21:22.808380', '555', '555', 'none', '/assets/img/man.jpg', 2, 1, 0),
(64, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'sdfsdf@gmail.com', 0, 0, 0, '2021-05-18 10:54:42.450477', 'test', 'sdfsdf', 'none', '/assets/img/man.jpg', 1, 1, 0),
(65, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'sdsfdf@gmail.com', 0, 0, 0, '2021-05-18 11:05:19.641495', 'test', 'sdfsdf', 'none', '/assets/img/man.jpg', 1, 1, 0),
(66, 'pbkdf2_sha256$180000$11O3s9QkPPr4$7XiibiCfnny8rlUXK/TcA0d/f+82PpZ9wb2+/9Km0Zg=', '', NULL, 'admin@agdsf.com', 0, 0, 0, '2021-05-18 17:27:07.734215', 'sdsdf', 'sdfsdf', 'none', '/assets/img/man.jpg', 1, 1, 0),
(68, '!zMw0AERyobhtOarub7uIvmKFZFe1dc25MpLCJx5S', '', '2021-06-15 00:34:30.899370', 'ernestpapyan96@gmail.com', 0, 1, 0, NULL, 'Ernest', 'Papyan', NULL, NULL, 3, 1, 0),
(69, 'pbkdf2_sha256$260000$4U47JWqlCQdReVF46Pa0Rj$E0LCbfhvAA8hOO4jvkhhktelteBhYMHr4qPznLQcPNE=', NULL, NULL, 'dyadkovdevelasdfasdfasdfop@gmail.com', 0, 0, 0, '2021-07-28 23:27:57.265214', 'asdfasdfadsf', 'asdfadsadfas', 'none', '/assets/img/man.jpg', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_user_activation`
--

CREATE TABLE `home_user_activation` (
  `id` int(11) NOT NULL,
  `code` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_user_activation`
--

INSERT INTO `home_user_activation` (`id`, `code`, `updated_at`, `created_at`, `user_id`) VALUES
(1, '0ed5bc6b-9c0c-4bf9-bd9f-b96f57ba3521', '2020-06-15 08:22:55.262948', '2020-06-15 08:22:55.263008', 2),
(3, '6a02ed30-7687-43c2-8929-98e1d5771983', '2020-06-15 12:17:30.910789', '2020-06-15 12:15:26.767434', 4),
(4, '6519f11f-338c-4314-91eb-b2758c81a3a0', '2020-06-18 02:58:22.080473', '2020-06-18 02:58:22.080473', 5),
(5, 'a47e6f99-dc04-433c-876c-9a22268b224d', '2020-06-18 03:34:35.476094', '2020-06-18 03:34:35.476094', 6),
(6, '497847f5-b774-4362-a7db-80be33938c53', '2020-06-18 05:55:56.402675', '2020-06-18 05:55:56.402675', 7),
(7, '5e19049e-f111-4fa0-b447-6cbfc4494da9', '2020-06-18 05:57:28.160966', '2020-06-18 05:57:28.160966', 8),
(8, '61e1ddc6-dcbb-47a1-b417-5039d6c8284f', '2020-06-18 05:58:28.488558', '2020-06-18 05:58:28.488558', 9),
(9, 'fdeae4b5-8b4f-4c72-a796-9d2aca4d6d3d', '2020-06-18 09:29:14.726907', '2020-06-18 09:29:14.726907', 10),
(10, '38f067c1-6174-42e0-9353-6316a548e978', '2020-06-18 09:30:42.403362', '2020-06-18 09:30:42.403362', 11),
(11, '0bd8bdd1-d55c-4632-acd7-55a00e60f06a', '2020-06-18 10:00:24.081245', '2020-06-18 10:00:24.081245', 12),
(12, '55e09932-79c5-4939-a768-9a0d9b9fdc5f', '2020-06-23 06:39:50.316507', '2020-06-23 06:39:50.316507', 13),
(13, '49e612ce-e895-46d3-a2a0-704dfcdab6eb', '2020-06-23 07:25:15.530899', '2020-06-23 07:25:15.530899', 14),
(14, '564c41ac-8547-44da-9280-6e7916ee6c43', '2020-06-25 16:00:49.427755', '2020-06-25 16:00:49.427755', 15),
(16, 'ebf95753-bb0d-40cb-93bd-5944aa2ce786', '2020-06-25 16:02:21.208823', '2020-06-25 16:02:21.208823', 17),
(17, 'f92449bc-b79a-4493-a72a-8059011877c0', '2020-06-25 16:03:23.786296', '2020-06-25 16:03:23.786296', 18),
(18, '6a00f9af-f72a-4769-adb0-ac3dcb2a44f2', '2020-06-25 16:04:18.375247', '2020-06-25 16:04:18.375247', 19),
(19, '59c199b4-4a1e-4e09-abe4-6448db58213d', '2020-06-30 10:01:52.805918', '2020-06-30 10:01:52.805918', 20),
(22, 'b08823d3-1ac4-4eca-a7ec-15c1f081eff4', '2020-11-04 12:07:01.316418', '2020-11-04 12:07:01.316418', 23),
(34, 'eadec692-4857-4faf-88b1-c485296e9cee', '2020-11-23 08:46:49.191199', '2020-11-23 08:45:55.271230', 35),
(35, 'b01f5b90-b815-4c97-ac49-dbc88b7e9676', '2020-11-23 09:52:03.937733', '2020-11-23 09:50:59.757005', 36),
(37, 'eacebb87-ee7b-4be3-8d02-0b4c541e515e', '2020-11-23 10:11:23.582564', '2020-11-23 10:07:15.044036', 38),
(38, '7ff316b4-1007-424a-ba9c-b47721b4ef01', '2020-11-23 10:46:46.674346', '2020-11-23 10:46:46.674379', 39),
(39, 'ec964748-a422-4880-8a20-46ef8a7719d1', '2020-11-23 12:26:19.874807', '2020-11-23 12:25:29.366042', 40),
(42, '170ee7e3-11fc-4cb2-974e-c2589a67ec21', '2020-11-29 11:36:45.118970', '2020-11-29 11:36:45.119004', 43),
(44, '86cc85b8-d9d0-45f6-9117-1915e8631b56', '2021-01-16 13:44:15.608944', '2021-01-16 13:44:15.608944', 45),
(45, '6b4be902-62e8-475d-b1bd-e70dbbbb7b1a', '2021-01-20 10:38:06.212931', '2021-01-20 10:38:06.212983', 46),
(46, '366b0534-0169-4459-9fde-5e58cea3fba2', '2021-02-14 12:10:08.757433', '2021-02-14 12:10:08.757488', 47),
(47, '5a08eba4-db72-4920-b8ab-4f5695594270', '2021-02-14 12:13:04.083305', '2021-02-14 12:13:04.083432', 48),
(49, 'bd66042e-afa0-480c-8779-439aadf24f9f', '2021-02-14 12:28:02.695259', '2021-02-14 12:28:02.695337', 50),
(50, '08c98406-8a6e-44bd-b136-41c8bfd33f2f', '2021-02-14 12:40:10.491030', '2021-02-14 12:40:10.491112', 51),
(51, '5cd5d36e-1508-4c5d-aaad-9c43514de992', '2021-02-14 12:50:30.586891', '2021-02-14 12:50:30.587029', 52),
(52, '13061214-c83c-43ab-afaa-d776c941d743', '2021-02-21 02:47:39.580106', '2021-02-21 02:46:46.219301', 53),
(53, 'aa9584da-e028-4900-b17f-20df0627e0aa', '2021-02-21 03:59:10.452802', '2021-02-21 03:57:53.276682', 54),
(54, 'c3dcf83e-1073-40da-a04d-f07441377e56', '2021-02-21 05:36:47.373094', '2021-02-21 05:35:29.819279', 55),
(55, '6fd6a455-ae1f-407e-8268-e74b464b5347', '2021-02-21 07:07:51.163219', '2021-02-21 07:07:28.490634', 56),
(56, '87a09f7c-6c5e-4408-87be-0bbbb00d1b0d', '2021-02-22 12:40:55.415532', '2021-02-22 12:39:45.674969', 57),
(57, '1ef9264d-3852-452e-aa00-aaf910f8494d', '2021-02-22 12:52:08.408516', '2021-02-22 12:51:21.526384', 58),
(58, 'a2ad2730-e5f6-4395-b7e7-2fac5176df16', '2021-05-14 16:28:34.403295', '2021-05-14 16:28:34.403337', 59),
(59, 'c71eb122-deb0-47cd-9b7d-ecf3a81b19af', '2021-05-17 16:44:00.317969', '2021-05-17 16:44:00.318036', 60),
(60, 'fa9c4168-9a5f-4be6-894b-d97f0f09e32f', '2021-05-18 14:14:08.233403', '2021-05-18 14:14:08.233448', 64),
(61, '932b2d7a-78d9-4f1b-aa12-b27364b975dc', '2021-05-18 14:49:05.610331', '2021-05-18 14:49:05.610376', 65),
(62, '1fbf9e29-401e-4ffc-a83f-6d3dd3a2e2d3', '2021-05-19 12:57:40.284124', '2021-05-19 12:56:49.564633', 66),
(63, 'bbc9dc48-766f-452c-81d3-4bacea351797', '2021-07-28 14:27:57.511257', '2021-07-28 14:27:57.511257', 69);

-- --------------------------------------------------------

--
-- Table structure for table `home_user_become`
--

CREATE TABLE `home_user_become` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `sub_catid` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_user_categories`
--

CREATE TABLE `home_user_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_user_categories`
--

INSERT INTO `home_user_categories` (`id`, `category_id`, `user_id`) VALUES
(2, 11, 48),
(4, 13, 50),
(5, 13, 51),
(6, 13, 52);

-- --------------------------------------------------------

--
-- Table structure for table `home_user_profile`
--

CREATE TABLE `home_user_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bio` longtext COLLATE utf8mb4_unicode_ci,
  `header_img` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `subcat_ids` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_url` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_user_profile`
--

INSERT INTO `home_user_profile` (`id`, `user_id`, `bio`, `header_img`, `cat_id`, `subcat_ids`, `facebook_url`, `instagram_url`, `twitter_url`, `website_url`, `notification`, `updated_at`, `created_at`) VALUES
(1, 40, 'sfasdadasdasdas', '/user_images/02af5cda-bd0d-48f2-923a-aa2b3618b869.jpeg', 8, '16', '', '', '', '', '0', '2021-07-07 19:16:29.886354', '2021-06-02 03:44:07.941802');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_ipn`
--

CREATE TABLE `paypal_ipn` (
  `id` int(11) NOT NULL,
  `business` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charset` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_version` decimal(64,2) DEFAULT NULL,
  `parent_txn_id` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `residence_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_ipn` tinyint(1) NOT NULL,
  `txn_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verify_sign` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_country` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_city` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_country_code` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_state` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_street` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_zip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_business_name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_amount` decimal(64,2) DEFAULT NULL,
  `auth_exp` varchar(28) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_id` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auth_status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(64,16) DEFAULT NULL,
  `invoice` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_name` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_number` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mc_currency` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mc_fee` decimal(64,2) DEFAULT NULL,
  `mc_gross` decimal(64,2) DEFAULT NULL,
  `mc_handling` decimal(64,2) DEFAULT NULL,
  `mc_shipping` decimal(64,2) DEFAULT NULL,
  `memo` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_cart_items` int(11) DEFAULT NULL,
  `option_name1` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_name2` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` datetime(6) DEFAULT NULL,
  `payment_gross` decimal(64,2) DEFAULT NULL,
  `payment_status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pending_reason` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `protection_eligibility` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `reason_code` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remaining_settle` decimal(64,2) DEFAULT NULL,
  `settle_amount` decimal(64,2) DEFAULT NULL,
  `settle_currency` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping` decimal(64,2) DEFAULT NULL,
  `shipping_method` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` decimal(64,2) DEFAULT NULL,
  `transaction_entity` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auction_buyer_id` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auction_closing_date` datetime(6) DEFAULT NULL,
  `auction_multi_item` int(11) DEFAULT NULL,
  `for_auction` decimal(64,2) DEFAULT NULL,
  `amount` decimal(64,2) DEFAULT NULL,
  `amount_per_cycle` decimal(64,2) DEFAULT NULL,
  `initial_payment_amount` decimal(64,2) DEFAULT NULL,
  `next_payment_date` datetime(6) DEFAULT NULL,
  `outstanding_balance` decimal(64,2) DEFAULT NULL,
  `payment_cycle` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurring_payment_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rp_invoice_id` varchar(127) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_created` datetime(6) DEFAULT NULL,
  `amount1` decimal(64,2) DEFAULT NULL,
  `amount2` decimal(64,2) DEFAULT NULL,
  `amount3` decimal(64,2) DEFAULT NULL,
  `mc_amount1` decimal(64,2) DEFAULT NULL,
  `mc_amount2` decimal(64,2) DEFAULT NULL,
  `mc_amount3` decimal(64,2) DEFAULT NULL,
  `password` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period1` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period2` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `period3` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reattempt` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recur_times` int(11) DEFAULT NULL,
  `recurring` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `retry_at` datetime(6) DEFAULT NULL,
  `subscr_date` datetime(6) DEFAULT NULL,
  `subscr_effective` datetime(6) DEFAULT NULL,
  `subscr_id` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_creation_date` datetime(6) DEFAULT NULL,
  `case_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handling_amount` decimal(64,2) DEFAULT NULL,
  `transaction_subject` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddress` char(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` tinyint(1) NOT NULL,
  `flag_code` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_info` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `response` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `from_view` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mp_id` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_selection1` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_selection2` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL,
  `backend` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_auth_usersocialauth`
--

INSERT INTO `social_auth_usersocialauth` (`id`, `provider`, `uid`, `extra_data`, `user_id`, `created`, `modified`) VALUES
(1, 'google-oauth2', 'yarxalo@gmail.com', '{\"auth_time\": 1623740669, \"expires\": 3597, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMCdGPazLzyOV9jFqIrN2KIPG2UvtfVoGKOT7sYw7ysyXnYLtHKv3dgEzRfFMXNm5ZceQJy3sqCiq6QnaqZS9gRbzhPuG6-WTWm62qMi0Mka6kIKnsUcJXnKOaxQV5qCNXBNSPdyicTYNFCgT1xFcBZ8qg\"}', 35, '2021-06-15 00:04:49.212724', '2021-06-15 07:04:29.941485'),
(2, 'google-oauth2', 'mikhaildevpay@gmail.com', '{\"auth_time\": 1623717234, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMB_jHkVdxofCVps5uHZIgJwiAA_U7erzvSgDUcIW_-DBRj87APTrmdVAHq8h0fJPOnED72msKXo6C-1HW8O-VQAWresZpZElSrhYdvH93UpYzPW6OjXsNz_lD_4AIY0pYmI84dL_loA67zaIsUoAZZc\"}', 35, '2021-06-15 00:23:09.495962', '2021-06-15 00:33:54.292076'),
(3, 'google-oauth2', 'ernestpapyan96@gmail.com', '{\"auth_time\": 1623717270, \"expires\": 3599, \"token_type\": \"Bearer\", \"access_token\": \"ya29.a0AfH6SMBr9O5cEjNpqVqW8e1AXbXWkM2ivSQlxEr1DUTSihT5A-EtrfQVkycJEWyVJ8DWu_RIb7NAz_NaaNSSzLL9Dx4HukNIhRG2gU7AxkcDfT7yzSxFZQBDNzNKglLBKeKXWPzRdRdCecvZ81TVmEAmFjpX\"}', 68, '2021-06-15 00:26:39.876997', '2021-06-15 00:34:30.748895');

-- --------------------------------------------------------

--
-- Table structure for table `student_course_comments`
--

CREATE TABLE `student_course_comments` (
  `id` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `rating` double DEFAULT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci,
  `date` datetime(6) NOT NULL,
  `date_updated` datetime(6) NOT NULL,
  `course_id_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `approved_by_teacher` tinyint(1) NOT NULL COMMENT '0: not added to profile, 1: added to profile'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_course_comments`
--

INSERT INTO `student_course_comments` (`id`, `comment`, `rating`, `reply`, `date`, `date_updated`, `course_id_id`, `user_id`, `approved_by_teacher`) VALUES
(1, 'user comment 1', 4.5, '', '2021-06-28 12:58:18.738842', '2021-06-28 12:58:18.738866', 29, 2, 0),
(4, 'user comment 2', 4.7, '', '2021-06-28 12:44:40.917868', '2021-06-28 12:44:40.917878', 29, 4, 0),
(5, 'user comment 3', 4.8, '', '2021-06-14 09:29:22.699201', '2021-06-14 09:29:22.699201', 29, 5, 0),
(8, 'user comment 4', 4.5, '', '2021-06-14 09:29:18.655050', '2021-06-14 09:29:18.655050', 29, 6, 0),
(12, 'user comment 5', 4.5, '', '2021-06-02 21:42:25.000000', '2021-06-02 21:42:30.000000', 30, 5, 1),
(13, 'user comment 6', 4.8, NULL, '2021-06-14 12:18:58.000000', '2021-06-14 12:19:08.000000', 29, 7, 1),
(14, '', 1.5, NULL, '2021-06-26 12:17:10.992298', '2021-06-26 12:17:10.992308', 30, 43, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_payment`
--

CREATE TABLE `student_payment` (
  `id` int(11) NOT NULL,
  `card_no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvv` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_payment`
--

INSERT INTO `student_payment` (`id`, `card_no`, `cvv`, `month`, `year`, `student_id`) VALUES
(1, '4520171666197100', '333', 12, 2021, 43);

-- --------------------------------------------------------

--
-- Table structure for table `student_student_cart_courses`
--

CREATE TABLE `student_student_cart_courses` (
  `id` int(11) NOT NULL,
  `course_id_id` int(11) DEFAULT NULL,
  `student_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_student_cart_courses`
--

INSERT INTO `student_student_cart_courses` (`id`, `course_id_id`, `student_id_id`) VALUES
(103, 29, 2),
(104, 30, 2),
(107, 29, 43);

-- --------------------------------------------------------

--
-- Table structure for table `student_student_certificate`
--

CREATE TABLE `student_student_certificate` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `url` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_student_certificate`
--

INSERT INTO `student_student_certificate` (`id`, `student_id`, `course_id`, `url`, `no`) VALUES
(2, 43, 29, '/certificates/beauty_beautyful_35360547.pdf', '96388838');

-- --------------------------------------------------------

--
-- Table structure for table `student_student_favourite_courses`
--

CREATE TABLE `student_student_favourite_courses` (
  `id` int(11) NOT NULL,
  `course_id_id` int(11) DEFAULT NULL,
  `student_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_student_favourite_courses`
--

INSERT INTO `student_student_favourite_courses` (`id`, `course_id_id`, `student_id_id`) VALUES
(50, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_student_performance`
--

CREATE TABLE `student_student_performance` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `total_cnt` int(11) DEFAULT NULL,
  `answer_cnt` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_student_rating_courses`
--

CREATE TABLE `student_student_rating_courses` (
  `id` int(11) NOT NULL,
  `rating` double DEFAULT NULL,
  `course_id_id` int(11) DEFAULT NULL,
  `student_id_id` int(11) DEFAULT NULL,
  `comment` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_student_rating_courses`
--

INSERT INTO `student_student_rating_courses` (`id`, `rating`, `course_id_id`, `student_id_id`, `comment`) VALUES
(1, 3, 29, 2, 'Not Good course');

-- --------------------------------------------------------

--
-- Table structure for table `student_student_register_courses`
--

CREATE TABLE `student_student_register_courses` (
  `id` int(11) NOT NULL,
  `course_id_id` int(11) DEFAULT NULL,
  `student_id_id` int(11) DEFAULT NULL,
  `last_completed_section_id` int(11) NOT NULL,
  `date_created` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0: none 1: hold 2: ready 3: done',
  `approve_date` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'time that admin approve this withdraw'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_student_register_courses`
--

INSERT INTO `student_student_register_courses` (`id`, `course_id_id`, `student_id_id`, `last_completed_section_id`, `date_created`, `withdraw`, `approve_date`) VALUES
(1, 29, 1, 0, '2021-05-10 20:52:58', 2, ''),
(8, 29, 2, 0, '2021-04-20 12:20:10', 3, '2021-06-07 22:17:02'),
(9, 30, 43, 0, '2021-04-20 12:20:10', 3, '2021-06-07 22:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_answers`
--

CREATE TABLE `teacher_answers` (
  `id` int(11) NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` int(11) NOT NULL,
  `pending` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_categories`
--

CREATE TABLE `teacher_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namear` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_categories`
--

INSERT INTO `teacher_categories` (`id`, `name`, `namear`, `image`, `updated_at`, `created_at`) VALUES
(1, 'Web Development', 'تطوير الموقع', 'assets/img/categories/single_categories/p-languages.svg', '2020-06-15 04:48:03.233279', '2020-06-15 04:45:36.220035'),
(3, 'Design', 'تصميم', 'assets/img/categories/single_categories/design.svg', '2020-06-15 04:48:28.184719', '2020-06-15 04:48:28.184776'),
(4, 'Drama & Cinema', 'الدراما والسينما', 'assets/img/categories/single_categories/drama.svg', '2020-06-15 04:48:37.472006', '2020-06-15 04:48:37.472109'),
(5, 'Mathmatics', 'الرياضيات', 'assets/img/categories/single_categories/math.svg', '2020-06-15 04:48:51.188720', '2020-06-15 04:48:51.188797'),
(6, 'Aviation', 'طيران', 'assets/img/categories/single_categories/aviation.svg', '2020-06-15 04:49:31.913913', '2020-06-15 04:49:31.913959'),
(7, 'Engineering', 'هندسة', 'assets/img/categories/single_categories/Engineer.svg', '2020-06-15 04:49:42.566084', '2020-06-15 04:49:42.566132'),
(8, 'Art', 'فن', 'assets/img/categories/single_categories/art.svg', '2020-06-15 04:50:02.291568', '2020-06-15 04:50:02.291674'),
(9, 'Food', 'طعام', 'assets/img/categories/single_categories/food.svg\r\n', '2020-06-15 04:50:19.272292', '2020-06-15 04:50:19.272474'),
(10, 'softwares Programming', 'برمجة البرامج', 'assets/img/categories/single_categories/softwares.svg\r\n', '2020-06-15 04:50:39.513182', '2020-06-15 04:50:39.513246'),
(11, 'skills', 'مهارات', 'assets/img/categories/single_categories/skills.svg\r\n', '2020-06-15 04:51:18.457590', '2020-06-15 04:51:18.457636'),
(12, 'sewiing', 'خياطة', 'assets/img/categories/single_categories/sewiing.svg\r\n', '2020-06-15 04:51:33.474797', '2020-06-15 04:51:33.474892'),
(13, 'Self Development', 'تطوير الذات', 'assets/img/categories/single_categories/self-dev.svg\r\n', '2020-06-15 04:51:55.006838', '2020-06-15 04:51:55.006895'),
(14, 'Information Technology', 'تكنولوجيا المعلومات', 'assets/img/categories/single_categories/robot.svg\r\n', '2020-06-15 04:52:12.510722', '2020-06-15 04:52:12.510774');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_courses`
--

CREATE TABLE `teacher_courses` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `requirements` longtext COLLATE utf8mb4_unicode_ci,
  `gains` longtext COLLATE utf8mb4_unicode_ci,
  `scat_id` int(11) DEFAULT NULL,
  `subcat_id` int(11) DEFAULT '0',
  `spam` int(11) DEFAULT '0',
  `price` double NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `students_admitted` int(11) NOT NULL,
  `students_passed` int(11) NOT NULL,
  `header_img` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_img` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_url` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `course_level` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0: all levels, 1: beginer, 2: immediate, 3: advanced',
  `dripping` tinyint(4) DEFAULT NULL COMMENT '0: normal 1: dripping',
  `pending` int(11) NOT NULL,
  `approval_status` tinyint(4) NOT NULL COMMENT '0: none, 1: send to admin 2: approved'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_courses`
--

INSERT INTO `teacher_courses` (`id`, `name`, `description`, `requirements`, `gains`, `scat_id`, `subcat_id`, `spam`, `price`, `user_id`, `user_name`, `type`, `students_admitted`, `students_passed`, `header_img`, `cover_img`, `course_url`, `created_at`, `course_level`, `dripping`, `pending`, `approval_status`) VALUES
(29, 'happy course 1', 'qwesdfsdfsdfsdfsdfsdfdsfsdfsdfsdfsdfsdgsdfsdgsdfsdf&lt;p&gt;qwesdfsdfsdfsdfsdfsdfdsfsdfsdfsdfsdfsdgsdfsdfsdfsdfsdfsdgsdfsdf&lt;/p&gt;', 'qwe&lt;p&gt;sdfgsdfsdsvsdvs&lt;/p&gt;', 'qwe&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 1, 1, 0, 0, 40, 'Khaled AbrahamAbrahamAbraham', 0, 0, 0, '/user_images/60dece45-923c-439f-b69e-e3be15a24267.jpg', '/user_images/8633d7d8-c081-4267-84a1-ff732c116a5b.jpg', '/course/happy course 1/Khaled_AbrahamAbrahamAbraham_0029', '2021-07-31 21:38:47.984829', 1, 0, 4, 2),
(30, 'happy course 2', '<p>sdf</p>', '<p>sdf</p>', '<p>sdf</p>', 1, 1, 0, 1000, 40, 'Khaled Saleh', 0, 1, 0, '/user_images/bd4bd246-b639-4399-9185-a5d1a138ffbe.jpg', '/user_images/bd4bd246-b639-4399-9185-a5d1a138ffbe.jpg', '/course/happy course 2/Khaled_AbrahamAbrahamAbraham_0030', '2021-08-01 19:48:01.813066', 1, 0, 4, 2),
(46, 'Learning Django', 'Learning Django Description', 'Learning Django Requirements', 'Learning Django Gains', 9, 19, 0, 0, 40, 'Khaled AbrahamAbrahamAbraham', 1, 0, 0, '/user_images/dee09277-8902-41ea-b0f2-d0ee67bf8745.png', '/user_images/76b8a9a0-0c8b-4e4d-9a9f-702f3acc9ab9.jpg', '/course/Learning Django/Khaled_AbrahamAbrahamAbraham_0046', '2021-08-01 19:45:38.813133', 0, 0, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_questions`
--

CREATE TABLE `teacher_questions` (
  `id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `answer` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_questions`
--

INSERT INTO `teacher_questions` (`id`, `section_id`, `title`, `content`, `answer`, `nos`) VALUES
(1, 4, 'HTML?', 'Hyper Text Markup Language,', 'true,', 1),
(2, 7, 'Okay?', 'ok,', 'true,', 1),
(3, 11, 'okay?', 'ok,', 'true,', 1),
(4, 15, 'Okay?', 'Ok,', 'true,', 1),
(5, 32, 'Full Meaning CCNA?', 'Cisco Certified Network Associate,', 'true,', 1),
(6, 35, 'Okay?', 'ok,', 'true,', 1),
(7, 39, 'Okay?', 'ok,', 'true,', 1),
(8, 43, 'Cool?', 'cool,', 'true,', 1),
(9, 46, 'Who was Batman\'s butler?', 'Alfred,Robin,Jhon,', 'true,false,false,', 1),
(10, 49, 'Konta?', 'Sotto,ff,ffgdfgdf,hgh,', 'true,false,false,false,', 1),
(11, 49, 'Eta?', 'eta vai,dgdg,dfgdgfd,dgdfgfdg,', 'true,false,false,false,', 2),
(12, 49, 'tarpor?', 'hmm,fgdfgfdg,dgdfgdfg,dgdfgdfg,', 'true,false,false,false,', 3),
(13, 52, 'Okay?', 'Ok,fsdf,ffsdfds,ffdsfffff,', 'true,false,false,false,', 1),
(14, 52, 'Tare nare?', 'yes,dfds,hhh,hgfdsrfe,', 'true,false,false,false,', 2),
(15, 52, 'alright?', 'dfsdfsd,yay,jks,qqq,', 'false,true,false,false,', 3),
(16, 53, 'Hmm?', 'yes,ewe,kjhf,rrwe,', 'true,false,false,false,', 4),
(17, 53, 'Will you?', 'kkg,ggdd,hmm,uio,', 'false,false,true,false,', 5),
(18, 55, 'dfdfd', 'dfdd,', 'true,', 1),
(27, 67, 'test1', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 1),
(30, 67, 'test2', 'asdfsdf,sadfasdfas,fasdfasdf,sadfasdf,', 'false,false,false,true,', 2),
(31, 67, 'test3', 'scsdcs,sgfdsfsfe,fwefwef,csdcsdc,', 'false,false,false,true,', 3),
(32, 67, 'test4', 'gfdfg,fscdsc,vgfdgdf,bdfbdfv,', 'false,false,false,true,', 4),
(33, 67, 'test5', 'asd,cascx,asdsd,dqwdqwd,', 'false,true,false,false,', 5),
(34, 68, 'test1', 'sdfsdf,sdfsdf,sdfsdf,sdfsdf,', 'false,false,false,true,', 1),
(35, 68, 'test2', 'sdfsdf,sdgsdfs,sdfsdf,sdwdwe,', 'false,false,true,false,', 2),
(36, 68, 'test3', 'xcvsddsf,vdsf,vsdvsdfs,sassad,', 'false,true,false,false,', 3),
(37, 68, 'test4', 'qwwef,gfdgf,fdgdf,sdfsdf,', 'true,false,false,false,', 4),
(38, 68, 'test5', 'sdgsdf,sdfsdf,sdfs,asdasd,', 'false,false,true,false,', 5),
(39, 79, 'question 1', 'sdfsdfsdf,sdf,sdf,sdf,', 'false,false,false,true,', 1),
(40, 79, 'question 2', 'sdfsdf,sdfsd,sdfsdf,sdfsdf,', 'false,false,true,false,', 2),
(41, 79, 'question 3', 'sgdfsdf,sdf,sdf,sdfsdf,', 'true,false,false,false,', 3),
(42, 79, 'question 4', 'sdfsdf,sdgdsf,sdgsfd,sdgsdf,', 'false,false,true,false,', 4),
(43, 79, 'question 5', 'gdfsf,dfgdfg,dfg,dfhdfgd,', 'true,false,false,false,', 5),
(44, 81, 'question 1', 'sdfsdf,sdfsdf,sdfsdf,sdfsdf,', 'false,false,false,true,', 1),
(45, 81, 'question 2', 'sgdf,dfsfsd,gfgfd,dfgdfg,', 'true,false,false,false,', 2),
(46, 81, 'question 3', 'gdsfd,sdfs,asdasd,asdasd,', 'false,false,false,true,', 3),
(47, 81, 'question 4', 'dfgdfg,sdf,sdgdfg,dfgdfg,', 'false,true,false,false,', 4),
(48, 81, 'question 5', 'dfgdfg,dfg,dfg,dfg,', 'true,false,false,false,', 5),
(49, 85, 'question 1', 'sdfsdf,sdfsdf,sdfsd,sdf,', 'false,false,false,true,', 1),
(50, 85, 'question 2', 'sdfsdf,sdfsdf,sdfsdf,sdfsdf,', 'true,false,false,false,', 2),
(51, 85, 'question 3', 'sdfsgd,sdfsdf,sdf,gfdgdfg,', 'true,false,false,false,', 3),
(52, 85, 'question 4', 'sgdsfs,sdgsdf,sdfsdf,vsdvf,', 'true,false,false,false,', 4),
(53, 85, 'question 5', 'sdfsf,sdfsd,sdf,gdfdgfg,', 'false,true,false,false,', 5),
(54, 88, 'question 1', 'sds,sdf,sdf,sdf,', 'false,false,false,true,', 1),
(55, 88, 'question 2', 'sdsd,ssd,sdf,sdf,', 'false,false,true,false,', 2),
(56, 88, 'question 3', 'sdf,sdf,sdf,sdd,', 'false,true,false,false,', 3),
(57, 88, 'question 4', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 4),
(58, 88, 'question 5', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 5),
(59, 92, 'A1', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 1),
(60, 92, 'A2', 'sd,sd,sd,sd,', 'false,false,true,false,', 2),
(61, 92, 'A3', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 3),
(62, 92, 'A4', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 4),
(63, 92, 'A5', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 5),
(64, 96, 'B1', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 1),
(65, 96, 'B2', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 2),
(66, 96, 'B3', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 3),
(67, 96, 'B4', 'sdf,sdf,sdf,sdg,', 'false,true,false,false,', 4),
(68, 96, 'B5', 'sdf,sdf,sdf,sdf,', 'false,false,false,true,', 5),
(69, 100, 'C1', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 1),
(70, 100, 'C2', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 2),
(71, 100, 'C3', 'sd,sdf,sdf,sdf,', 'false,false,false,true,', 3),
(72, 100, 'C4', 'sdf,sdf,sdf,sdf,', 'false,false,true,false,', 4),
(73, 100, 'C5', 'sdf,sdf,sdf,sdf,', 'true,false,false,false,', 5),
(74, 495, 'Where are you from?', 'Ukraine,Russia,UK,India,', 'true,false,false,false,', 1),
(75, 495, 'Who are you', 'Seller,Buyer,Teacher,developer,', 'false,false,false,true,', 2),
(76, 495, 'what is 1?', 'Character,one,first,integer,', 'false,false,false,true,', 3),
(77, 495, 'What is 1 next?', '2,second,0,nothing,', 'true,false,false,false,', 4),
(78, 495, 'What is your name?', 'I am not sure because I have nick name and full name, mid, ,Michel,Andrey,Tom,', 'true,false,false,false,', 5),
(79, 500, 'aaa', 'aaa,daf,afd,gagd,', 'true,false,false,false,', 1),
(80, 500, 'www', 'www,aweg,aewg,agsd,', 'true,false,false,false,', 2),
(81, 500, 'right', 'asdfafsd,ww,top,python,', 'false,true,false,false,', 3),
(82, 500, 'asd', 'afdsa,aaa,sadf,as,', 'true,false,false,false,', 4),
(83, 500, 'python', 'lang,lib,attr,eat,', 'true,false,false,false,', 5),
(84, 546, 'What is the Django?', 'Html ,Javascript framework,Python-based framework,Python library,', 'false,false,true,false,', 1),
(85, 546, 'You can to run Django project by below command', 'pip django 127.0.0.1:8000,python manage.py,python home.py server 8000,python manage.py runserver,', 'false,false,false,true,', 2),
(86, 546, 'You can to run the django project * .', 'only local server,only live hosting server,local and hosting server,only node environments ,', 'false,false,true,false,', 3),
(87, 546, 'Choose incorrected conditional syntax.', 'if (x == 1){\n   print \"Okay\"\n},if (x != 1){\n   print \"Okay\"\n},if x == 1\n   print \"Okay\"\n,if x == 1:\n   print \"Okay\",', 'false,false,false,true,', 4),
(88, 546, 'Where do you using \"{{ course }}\"syntax?', 'model,view,query,template,', 'false,false,false,true,', 5),
(89, 549, 'asdasdfasdf a dasdf', 'asdf asdf,asdfasdf,asdfasdfads,asdfassadf ,', 'true,false,false,false,', 1),
(90, 549, 'asdfasd', 'fasdfasd,fasdfas,assd,asdfasdf,', 'false,false,false,true,', 2),
(91, 549, 'asdsfaewf wef awe', 'sda fsdfas,fasd f sad df,sadfasdf ,asasfdas,', 'false,false,true,false,', 3),
(92, 549, 'asdf asd fasdfsdfs', 'sdafadsf, sadfasd, sdfs f ds asdfsdf,asdf asdfasdf,', 'true,false,false,false,', 4),
(93, 549, 'asdfasdf', 'asdf,asdfasdfasd,asdfasd,asdasdfd,', 'true,false,false,false,', 5),
(94, 552, 'asdfasdfasdf', 'asdfasdfas,as,asdf,asdf,', 'true,false,false,false,', 1),
(95, 552, 'asdfasdf', 'asdfasd,fasdfasd,fasdfas,fsdf,', 'true,false,false,false,', 2),
(96, 552, 'asdfasdf', 'asdfasd,fasdf,adsfasdf,asdfasdf,', 'true,false,false,false,', 3),
(97, 552, 'asdfasdf', 'asdf,asdf,asdfa,sfdf,', 'true,false,false,false,', 4),
(98, 552, 'asdfasdf', 'asdfasdf,asdfasdf,asdfadsfa,sdfasdf,', 'false,false,false,true,', 5);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_questions1`
--

CREATE TABLE `teacher_questions1` (
  `id` int(11) NOT NULL,
  `title` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `aw_1_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_1_result` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_1_data` longtext COLLATE utf8mb4_unicode_ci,
  `aw_2_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_2_result` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_2_data` longtext COLLATE utf8mb4_unicode_ci,
  `aw_3_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_3_result` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_3_data` longtext COLLATE utf8mb4_unicode_ci,
  `aw_4_type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_4_result` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aw_4_data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_sections`
--

CREATE TABLE `teacher_sections` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `type` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nos` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_sections`
--

INSERT INTO `teacher_sections` (`id`, `name`, `course_id`, `type`, `nos`) VALUES
(89, 'sec1', 29, 'video', '1'),
(90, 'sec2', 29, 'video', '2'),
(91, 'sec3', 29, 'video', '3'),
(92, 'quiz section', 29, 'question', '1'),
(93, 'sec11', 30, 'video', '1'),
(94, 'sec12', 30, 'video', '2'),
(95, 'sec13', 30, 'video', '3'),
(96, 'quiz section', 30, 'question', '1'),
(97, 'sec21', 31, 'video', '1'),
(98, 'sec22', 31, 'video', '2'),
(99, 'sec23', 31, 'video', '3'),
(100, 'quiz section', 31, 'question', '1'),
(101, 'sec1', 29, 'video', '4'),
(102, 'sec1', 29, 'video', '5'),
(103, 'sec1', 29, 'video', '6'),
(104, 'sec1', 29, 'video', '7'),
(105, 'sec1', 29, 'video', '8'),
(106, 'New Section', 36, 'video', '1'),
(107, 'New Section', 36, 'video', '1'),
(111, 'New Section', 36, 'video', '1'),
(117, 'New Section', 36, 'video', '1'),
(118, 'New Section', 36, 'video', '1'),
(122, 'New Section', 36, 'video', '1'),
(128, 'New Section', 36, 'video', '1'),
(134, 'New Section', 36, 'video', '1'),
(135, 'New Section', 36, 'video', '1'),
(136, 'New Section', 36, 'video', '2'),
(139, 'New Section', 36, 'video', '1'),
(140, 'New Section', 36, 'video', '2'),
(145, 'New Section', 36, 'video', '1'),
(146, 'New Section', 36, 'video', '2'),
(151, 'New Section', 36, 'video', '1'),
(152, 'New Section', 36, 'video', '2'),
(157, 'New Section', 36, 'video', '1'),
(158, 'New Section', 36, 'video', '1'),
(159, 'New Section', 36, 'video', '2'),
(162, 'New Section', 36, 'video', '1'),
(163, 'New Section', 36, 'video', '2'),
(168, 'New Section', 36, 'video', '1'),
(169, 'New Section', 36, 'video', '2'),
(174, 'New Section', 36, 'video', '1'),
(175, 'New Section', 36, 'video', '2'),
(180, 'New Section', 36, 'video', '1'),
(181, 'New Section', 36, 'video', '2'),
(186, 'New Section', 36, 'video', '1'),
(187, 'New Section', 36, 'video', '1'),
(188, 'New Section', 36, 'video', '2'),
(189, 'New Section', 36, 'video', '3'),
(191, 'New Section', 36, 'video', '1'),
(192, 'New Section', 36, 'video', '2'),
(193, 'New Section', 36, 'video', '3'),
(197, 'New Section', 36, 'video', '1'),
(198, 'New Section', 36, 'video', '2'),
(199, 'New Section', 36, 'video', '3'),
(203, 'New Section', 36, 'video', '1'),
(204, 'New Section', 36, 'video', '2'),
(205, 'New Section', 36, 'video', '3'),
(209, 'New Section', 36, 'video', '1'),
(210, 'New Section', 36, 'video', '2'),
(211, 'New Section', 36, 'video', '3'),
(215, 'New Section', 36, 'video', '1'),
(216, 'New Section', 36, 'video', '2'),
(217, 'New Section', 36, 'video', '3'),
(221, 'New Section', 36, 'video', '1'),
(222, 'New Section', 36, 'video', '1'),
(223, 'New Section', 36, 'video', '2'),
(224, 'New Section', 36, 'video', '3'),
(225, 'New Section', 36, 'video', '4'),
(226, 'New Section', 36, 'video', '1'),
(227, 'New Section', 36, 'video', '2'),
(228, 'New Section', 36, 'video', '3'),
(229, 'New Section', 36, 'video', '4'),
(232, 'New Section', 36, 'video', '1'),
(233, 'New Section', 36, 'video', '2'),
(234, 'New Section', 36, 'video', '3'),
(235, 'New Section', 36, 'video', '4'),
(238, 'New Section', 36, 'video', '1'),
(239, 'New Section', 36, 'video', '2'),
(240, 'New Section', 36, 'video', '3'),
(241, 'New Section', 36, 'video', '4'),
(244, 'New Section', 36, 'video', '1'),
(245, 'New Section', 36, 'video', '2'),
(246, 'New Section', 36, 'video', '3'),
(247, 'New Section', 36, 'video', '4'),
(250, 'New Section', 36, 'video', '1'),
(251, 'New Section', 36, 'video', '2'),
(252, 'New Section', 36, 'video', '3'),
(253, 'New Section', 36, 'video', '4'),
(256, 'New Section', 36, 'video', '1'),
(257, 'New Section', 36, 'video', '2'),
(258, 'New Section', 36, 'video', '3'),
(259, 'New Section', 36, 'video', '4'),
(262, 'New Section', 36, 'video', '1'),
(263, 'New Section', 36, 'video', '1'),
(264, 'New Section', 36, 'video', '2'),
(265, 'New Section', 36, 'video', '3'),
(266, 'New Section', 36, 'video', '4'),
(267, 'New Section', 36, 'video', '1'),
(268, 'New Section', 36, 'video', '2'),
(269, 'New Section', 36, 'video', '3'),
(270, 'New Section', 36, 'video', '4'),
(273, 'New Section', 36, 'video', '1'),
(274, 'New Section', 36, 'video', '2'),
(275, 'New Section', 36, 'video', '3'),
(276, 'New Section', 36, 'video', '4'),
(279, 'New Section', 36, 'video', '1'),
(280, 'New Section', 36, 'video', '2'),
(281, 'New Section', 36, 'video', '3'),
(282, 'New Section', 36, 'video', '4'),
(285, 'New Section', 36, 'video', '1'),
(286, 'New Section', 36, 'video', '2'),
(287, 'New Section', 36, 'video', '3'),
(288, 'New Section', 36, 'video', '4'),
(291, 'New Section', 36, 'video', '1'),
(292, 'New Section', 36, 'video', '2'),
(293, 'New Section', 36, 'video', '3'),
(294, 'New Section', 36, 'video', '4'),
(297, 'New Section', 36, 'video', '1'),
(298, 'New Section', 36, 'video', '2'),
(299, 'New Section', 36, 'video', '3'),
(300, 'New Section', 36, 'video', '4'),
(303, 'New Section', 36, 'video', '1'),
(304, 'New Section', 36, 'video', '2'),
(305, 'New Section', 36, 'video', '3'),
(306, 'New Section', 36, 'video', '4'),
(309, 'New Section', 36, 'video', '1'),
(310, 'New Section', 36, 'video', '1'),
(311, 'New Section', 36, 'video', '2'),
(312, 'New Section', 36, 'video', '3'),
(313, 'New Section', 36, 'video', '4'),
(314, 'New Section', 36, 'video', '1'),
(315, 'New Section', 36, 'video', '2'),
(316, 'New Section', 36, 'video', '3'),
(317, 'New Section', 36, 'video', '4'),
(318, 'New Section', 36, 'video', '5'),
(320, 'New Section', 36, 'video', '1'),
(321, 'New Section', 36, 'video', '2'),
(322, 'New Section', 36, 'video', '3'),
(323, 'New Section', 36, 'video', '4'),
(324, 'New Section', 36, 'video', '5'),
(326, 'New Section', 36, 'video', '1'),
(327, 'New Section', 36, 'video', '2'),
(328, 'New Section', 36, 'video', '3'),
(329, 'New Section', 36, 'video', '4'),
(330, 'New Section', 36, 'video', '5'),
(332, 'New Section', 36, 'video', '1'),
(333, 'New Section', 36, 'video', '2'),
(334, 'New Section', 36, 'video', '3'),
(335, 'New Section', 36, 'video', '4'),
(336, 'New Section', 36, 'video', '5'),
(338, 'New Section', 36, 'video', '1'),
(339, 'New Section', 36, 'video', '2'),
(340, 'New Section', 36, 'video', '3'),
(341, 'New Section', 36, 'video', '4'),
(342, 'New Section', 36, 'video', '5'),
(344, 'New Section', 36, 'video', '1'),
(345, 'New Section', 36, 'video', '2'),
(346, 'New Section', 36, 'video', '3'),
(347, 'New Section', 36, 'video', '4'),
(348, 'New Section', 36, 'video', '5'),
(350, 'New Section', 36, 'video', '1'),
(351, 'New Section', 36, 'video', '2'),
(352, 'New Section', 36, 'video', '3'),
(353, 'New Section', 36, 'video', '4'),
(354, 'New Section', 36, 'video', '5'),
(356, 'New Section', 36, 'video', '1'),
(357, 'New Section', 36, 'video', '2'),
(358, 'New Section', 36, 'video', '3'),
(359, 'New Section', 36, 'video', '4'),
(360, 'New Section', 36, 'video', '5'),
(362, 'New Section', 36, 'video', '1'),
(363, 'New Section', 36, 'video', '1'),
(364, 'New Section', 36, 'video', '2'),
(365, 'New Section', 36, 'video', '3'),
(366, 'New Section', 36, 'video', '4'),
(367, 'New Section', 36, 'video', '1'),
(368, 'New Section', 36, 'video', '2'),
(369, 'New Section', 36, 'video', '3'),
(370, 'New Section', 36, 'video', '4'),
(371, 'New Section', 36, 'video', '5'),
(373, 'New Section', 36, 'video', '1'),
(374, 'New Section', 36, 'video', '2'),
(375, 'New Section', 36, 'video', '3'),
(376, 'New Section', 36, 'video', '4'),
(377, 'New Section', 36, 'video', '5'),
(379, 'New Section', 36, 'video', '1'),
(380, 'New Section', 36, 'video', '2'),
(381, 'New Section', 36, 'video', '3'),
(382, 'New Section', 36, 'video', '4'),
(383, 'New Section', 36, 'video', '5'),
(385, 'New Section', 36, 'video', '1'),
(386, 'New Section', 36, 'video', '2'),
(387, 'New Section', 36, 'video', '3'),
(388, 'New Section', 36, 'video', '4'),
(389, 'New Section', 36, 'video', '5'),
(391, 'New Section', 36, 'video', '1'),
(392, 'New Section', 36, 'video', '2'),
(393, 'New Section', 36, 'video', '3'),
(394, 'New Section', 36, 'video', '4'),
(395, 'New Section', 36, 'video', '5'),
(397, 'New Section', 36, 'video', '1'),
(398, 'New Section', 36, 'video', '2'),
(399, 'New Section', 36, 'video', '3'),
(400, 'New Section', 36, 'video', '4'),
(401, 'New Section', 36, 'video', '5'),
(403, 'New Section', 36, 'video', '1'),
(404, 'New Section', 36, 'video', '2'),
(405, 'New Section', 36, 'video', '3'),
(406, 'New Section', 36, 'video', '4'),
(407, 'New Section', 36, 'video', '5'),
(409, 'New Section', 36, 'video', '1'),
(410, 'New Section', 36, 'video', '2'),
(411, 'New Section', 36, 'video', '3'),
(412, 'New Section', 36, 'video', '4'),
(413, 'New Section', 36, 'video', '5'),
(415, 'New Section', 36, 'video', '1'),
(416, 'New Section', 36, 'video', '2'),
(417, 'New Section', 36, 'video', '3'),
(418, 'New Section', 36, 'video', '4'),
(419, 'New Section', 36, 'video', '5'),
(420, 'New Section', 36, 'video', '6'),
(421, 'New Section', 36, 'video', '1'),
(422, 'New Section', 36, 'video', '1'),
(423, 'New Section', 36, 'video', '2'),
(424, 'New Section', 36, 'video', '3'),
(425, 'New Section', 36, 'video', '4'),
(426, 'New Section', 36, 'video', '1'),
(427, 'New Section', 36, 'video', '2'),
(428, 'New Section', 36, 'video', '3'),
(429, 'New Section', 36, 'video', '4'),
(430, 'New Section', 36, 'video', '5'),
(431, 'New Section', 36, 'video', '6'),
(432, 'New Section', 36, 'video', '1'),
(433, 'New Section', 36, 'video', '2'),
(434, 'New Section', 36, 'video', '3'),
(435, 'New Section', 36, 'video', '4'),
(436, 'New Section', 36, 'video', '5'),
(437, 'New Section', 36, 'video', '6'),
(438, 'New Section', 36, 'video', '1'),
(439, 'New Section', 36, 'video', '2'),
(440, 'New Section', 36, 'video', '3'),
(441, 'New Section', 36, 'video', '4'),
(442, 'New Section', 36, 'video', '5'),
(443, 'New Section', 36, 'video', '6'),
(444, 'New Section', 36, 'video', '1'),
(445, 'New Section', 36, 'video', '2'),
(446, 'New Section', 36, 'video', '3'),
(447, 'New Section', 36, 'video', '4'),
(448, 'New Section', 36, 'video', '5'),
(449, 'New Section', 36, 'video', '6'),
(450, 'New Section', 36, 'video', '1'),
(451, 'New Section', 36, 'video', '2'),
(452, 'New Section', 36, 'video', '3'),
(453, 'New Section', 36, 'video', '4'),
(454, 'New Section', 36, 'video', '5'),
(455, 'New Section', 36, 'video', '6'),
(456, 'New Section', 36, 'video', '1'),
(457, 'New Section', 36, 'video', '2'),
(458, 'New Section', 36, 'video', '3'),
(459, 'New Section', 36, 'video', '4'),
(460, 'New Section', 36, 'video', '5'),
(461, 'New Section', 36, 'video', '6'),
(462, 'New Section', 36, 'video', '1'),
(463, 'New Section', 36, 'video', '2'),
(464, 'New Section', 36, 'video', '3'),
(465, 'New Section', 36, 'video', '4'),
(466, 'New Section', 36, 'video', '5'),
(467, 'New Section', 36, 'video', '6'),
(468, 'New Section', 36, 'video', '1'),
(469, 'New Section', 36, 'video', '2'),
(470, 'New Section', 36, 'video', '3'),
(471, 'New Section', 36, 'video', '4'),
(472, 'New Section', 36, 'video', '5'),
(473, 'New Section', 36, 'video', '6'),
(474, 'New Section', 36, 'video', '1'),
(475, 'New Section', 36, 'video', '2'),
(476, 'New Section', 36, 'video', '3'),
(477, 'New Section', 36, 'video', '4'),
(478, 'New Section', 36, 'video', '5'),
(479, 'New Section', 36, 'video', '6'),
(480, 'New Section', 36, 'video', '1'),
(481, 'New Section', 36, 'video', '2'),
(482, 'New Section', 36, 'video', '3'),
(483, 'New Section', 36, 'video', '4'),
(484, 'New Section', 36, 'video', '5'),
(485, 'New Section', 36, 'video', '6'),
(544, 'New Section', 46, 'video', '1'),
(545, 'New Section', 46, 'video', '2'),
(546, 'quiz section', 46, 'question', '1'),
(550, 'New Section', 48, 'video', '1'),
(551, 'New Section', 48, 'video', '2'),
(552, 'quiz section', 48, 'question', '1');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_student_mark`
--

CREATE TABLE `teacher_student_mark` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `mark` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_student_mark`
--

INSERT INTO `teacher_student_mark` (`id`, `course_id`, `student_id`, `mark`) VALUES
(1, 1, 43, 1),
(2, 11, 43, 1),
(3, 13, 43, 0.6),
(4, 7, 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subcategories`
--

CREATE TABLE `teacher_subcategories` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namear` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `updated_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_subcategories`
--

INSERT INTO `teacher_subcategories` (`id`, `name`, `namear`, `image`, `updated_at`, `created_at`, `categories_id`) VALUES
(1, 'HTML Language', 'لغة HTML', 'assets/img/categories/p-language.svg', '2020-06-15 04:53:34.033123', '2020-06-15 04:53:34.033196', 1),
(2, 'Python Langauage', 'لغة بايثون', 'assets/img/categories/p-language.svg', '2020-06-15 04:54:01.954997', '2020-06-15 04:54:01.955099', 1),
(4, 'Figma to HTML', 'Figma إلى HTML', 'assets/img/categories/p-language.svg', '2020-06-15 06:04:24.133294', '2020-06-15 06:04:24.133341', 3),
(5, 'Bootstrap', 'Bootstrap', 'assets/img/categories/p-language.svg', '2020-06-15 06:05:07.612448', '2020-06-15 06:05:07.612495', 3),
(6, 'Drama', 'دراما', 'assets/img/categories/p-language.svg', '2020-06-15 06:05:32.872232', '2020-06-15 06:05:32.872287', 4),
(7, 'Cinema', 'سينما', 'assets/img/categories/p-language.svg', '2020-06-15 06:05:48.467563', '2020-06-15 06:05:48.467613', 4),
(8, 'Film Theory', 'نظرية الفيلم', 'assets/img/categories/p-language.svg', '2020-06-15 06:06:07.292197', '2020-06-15 06:06:07.292249', 4),
(9, 'Algebra', 'الجبر', 'assets/img/categories/p-language.svg', '2020-06-15 06:06:29.103482', '2020-06-15 06:06:29.103566', 5),
(10, 'Geometry', 'الهندسة', 'assets/img/categories/p-language.svg', '2020-06-15 06:06:42.985701', '2020-06-15 06:06:42.985749', 5),
(11, 'Flight', 'رحلة جوية', 'assets/img/categories/p-language.svg', '2020-06-15 06:06:54.468098', '2020-06-15 06:06:54.468189', 6),
(12, 'Parachute', 'المظلة', 'assets/img/categories/p-language.svg', '2020-06-15 06:07:05.942984', '2020-06-15 06:07:05.943037', 6),
(13, 'Helicopter', 'هليكوبتر', 'assets/img/categories/p-language.svg', '2020-06-15 06:07:17.965425', '2020-06-15 06:07:17.965484', 6),
(14, 'Machine', 'آلة', 'assets/img/categories/p-language.svg', '2020-06-15 06:07:35.279371', '2020-06-15 06:07:35.279450', 7),
(15, 'Force', 'فرض', 'assets/img/categories/p-language.svg', '2020-06-15 06:07:49.035951', '2020-06-15 06:07:49.036038', 7),
(16, 'Noble', 'النبيل', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:05.320043', '2020-06-15 06:08:05.320134', 8),
(17, 'Music', 'موسيقى', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:16.924817', '2020-06-15 06:08:16.924915', 8),
(18, 'Dance', 'الرقص', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:32.277649', '2020-06-15 06:08:32.277705', 8),
(19, 'Cooking', 'طبخ', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:42.709775', '2020-06-15 06:08:42.709996', 9),
(20, 'Noodle', 'المعكرونة', 'assets/img/categories/p-language.svg', '2020-06-15 06:08:53.389245', '2020-06-15 06:08:53.389363', 9),
(21, 'C++', 'C++', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:04.308025', '2020-06-15 06:09:04.308080', 10),
(22, 'Java Developing', 'تطوير جافا', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:13.934983', '2020-06-15 06:09:13.935090', 10),
(23, 'Bitcoin', 'بيتكوين', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:24.220757', '2020-06-15 06:09:24.220807', 11),
(24, 'Data mining', 'بيانات التعدين', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:34.875003', '2020-06-15 06:09:34.875052', 11),
(25, 'SEO', 'SEO', 'assets/img/categories/p-language.svg', '2020-06-15 06:09:44.929468', '2020-06-15 06:09:44.929631', 11),
(26, 'Sewing_machine', 'ماكينة الخياطة', 'assets/img/Categories/p-language.svg', '2020-06-15 06:09:55.590051', '2020-06-15 06:09:55.590096', 12),
(27, 'Good to know sewing', 'من الجيد معرفة الخياطة', 'assets/img/Categories/p-language.svg', '2020-06-15 06:10:14.454531', '2020-06-15 06:10:14.454581', 12),
(28, 'Architecturing', 'الهندسة المعمارية', 'assets/img/Categories/p-language.svg', '2020-06-15 06:10:31.983094', '2020-06-15 06:10:31.983196', 13),
(29, 'DB Structure', 'هيكل DB', 'assets/img/Categories/p-language.svg', '2020-06-15 06:10:46.728059', '2020-06-15 06:10:46.728115', 13),
(30, 'Data collecting', 'جمع البيانات', 'assets/img/Categories/p-language.svg', '2020-06-15 06:11:02.110872', '2020-06-15 06:11:02.110934', 14),
(31, 'Blockchain', 'بلوكشين', 'assets/img/Categories/p-language.svg', '2020-06-15 06:11:16.458510', '2020-06-15 06:11:16.458558', 14),
(32, 'Maintence', 'صيانة', 'assets/img/Categories/p-language.svg', '2020-06-15 06:11:28.909687', '2020-06-15 06:11:28.909750', 14),
(33, 'Testing', 'اختبارات', 'assets/img/Categories/p-language.svg', '2020-06-15 06:11:52.952747', '2020-06-15 06:11:52.952828', 10);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_testvideo`
--

CREATE TABLE `teacher_testvideo` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_testvideo`
--

INSERT INTO `teacher_testvideo` (`id`, `name`, `url`, `user_id`, `review`) VALUES
(1, 'deploy django on apache2.mp4', '/uploads/courses/videos/c71ec5ef-8b8a-4283-beba-be909747884f.mp4', 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_todo`
--

CREATE TABLE `teacher_todo` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_transactions`
--

CREATE TABLE `teacher_transactions` (
  `id` int(11) NOT NULL,
  `fees` double NOT NULL,
  `revenue` double NOT NULL,
  `course_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_videouploads`
--

CREATE TABLE `teacher_videouploads` (
  `id` int(11) NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `url` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo` int(11) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `lock` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_videouploads`
--

INSERT INTO `teacher_videouploads` (`id`, `name`, `section_id`, `url`, `promo`, `duration`, `lock`) VALUES
(174, 'kkk.mp4', 89, '/uploads/courses/videos/135402da-02d5-45ec-9b86-a3031cc53efc.mp4', 0, 6, 1),
(175, 'kkk.mp4', 89, '/uploads/courses/videos/62cfe59e-17f2-496e-864f-865417ac75b3.mp4', 0, 6, 0),
(176, 'kkk.mp4', 89, '/uploads/courses/videos/192ffdd7-20f1-4e44-b918-72de82bdf49a.mp4', 0, 6, 1),
(177, 'kkk.mp4', 89, '/uploads/courses/videos/f0d8463c-3b8c-4b70-966c-13649110420b.mp4', 0, 6, 1),
(178, 'kkk.mp4', 89, '/uploads/courses/videos/ecc7c999-33f5-490d-8bf8-d3d49625ea29.mp4', 0, 6, 0),
(179, 'kkk.mp4', 90, '/uploads/courses/videos/253e640c-923a-43d3-8d59-709bc54047dd.mp4', 0, 6, 1),
(180, 'kkk.mp4', 90, '/uploads/courses/videos/36c83e95-2c57-4fe0-b6cd-7b5eb669d70a.mp4', 1, 6, 0),
(181, 'kkk.mp4', 90, '/uploads/courses/videos/dffd8808-03e0-4969-9a17-1a2f1ad8c641.mp4', 0, 6, 0),
(182, 'kkk.mp4', 91, '/uploads/courses/videos/7ba794e2-cb7a-4897-a946-bc35673802ae.mp4', 0, 6, 0),
(183, 'kkk.mp4', 91, '/uploads/courses/videos/41a20744-f80d-433a-989f-8ceda863af44.mp4', 0, 6, 1),
(184, 'kkk.mp4', 93, '/uploads/courses/videos/73b6a8ff-d5e0-4c27-86d6-b1d826cd2ee5.mp4', 0, 6, 0),
(185, 'kkk.mp4', 93, '/uploads/courses/videos/f0e9c8c6-bf95-492c-bc59-03a8f8e0c7c0.mp4', 0, 6, 1),
(186, 'kkk.mp4', 93, '/uploads/courses/videos/6ff01687-527f-4ffd-bc18-0b9bbb52058a.mp4', 0, 6, 1),
(187, 'kkk.mp4', 93, '/uploads/courses/videos/7a79dc35-32c5-4dc0-b9d8-d48f31aeb4f1.mp4', 0, 6, 0),
(188, 'kkk.mp4', 93, '/uploads/courses/videos/5266f636-a5a8-48e3-92bc-0df3ab9c01b8.mp4', 0, 6, 1),
(189, 'kkk.mp4', 93, '/uploads/courses/videos/f52ace21-ac2b-43e7-ae58-a2e223aa9980.mp4', 0, 6, 1),
(190, 'kkk.mp4', 93, '/uploads/courses/videos/6d5c0c50-3924-48c7-a25f-bfb1994462f2.mp4', 0, 6, 0),
(191, 'kkk.mp4', 93, '/uploads/courses/videos/61e32626-977a-4d49-b821-8440234a1285.mp4', 0, 6, 1),
(192, 'kkk.mp4', 94, '/uploads/courses/videos/1cc5b710-6b83-43e7-97f4-443b859a19db.mp4', 0, 6, 0),
(193, 'kkk.mp4', 95, '/uploads/courses/videos/6f485a6c-b9f1-437f-a58a-4d6f377ca2e8.mp4', 0, 6, 0),
(194, 'kkk.mp4', 97, '/uploads/courses/videos/c64fad66-1cff-4112-bc92-fc3e80b6e6d2.mp4', 0, 6, 0),
(195, 'kkk.mp4', 97, '/uploads/courses/videos/09672bf3-48a3-49f7-855d-4e1aea9d21f3.mp4', 0, 6, 1),
(196, 'kkk.mp4', 97, '/uploads/courses/videos/0e523221-a8be-4486-ba1e-d63a2ae60b55.mp4', 0, 6, 0),
(197, 'kkk.mp4', 97, '/uploads/courses/videos/82df3e97-0a41-4420-8e34-b456993d04c3.mp4', 0, 6, 1),
(198, 'kkk.mp4', 97, '/uploads/courses/videos/c26a791a-94a1-4d2e-9d29-a085c9ccc95c.mp4', 0, 6, 1),
(199, 'kkk.mp4', 97, '/uploads/courses/videos/420a7255-e4ec-4a0c-89c9-48f44c7c4ff2.mp4', 0, 6, 1),
(200, 'kkk.mp4', 98, '/uploads/courses/videos/538fe0a4-905d-4095-a49c-3b277a2b3062.mp4', 0, 6, 0),
(201, 'kkk.mp4', 98, '/uploads/courses/videos/08ca0775-20d5-4de5-a058-d96d3444125b.mp4', 0, 6, 1),
(202, 'kkk.mp4', 99, '/uploads/courses/videos/1299c6c0-268c-4e23-98af-340ee5c635e8.mp4', 0, 6, 0),
(203, 'kkk.mp4', 99, '/uploads/courses/videos/253739aa-2f0e-455f-a1af-ec11c98b06b9.mp4', 0, 6, 0),
(204, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 106, '/uploads/courses/videos/642038dc-dc1a-4368-a5d6-65b8c7fd7956.mov', 0, 0, 1),
(205, 'shahadah.mp4', 106, '/uploads/courses/videos/78099b46-0b16-4112-bf22-3e6b26ece4b4.mp4', 0, 0, 1),
(206, 'shahadah.mp4', 106, '/uploads/courses/videos/64cd2e0d-666d-40bf-8886-53e70a5f9057.mp4', 0, 0, 1),
(207, 'Intro.mov', 106, '/uploads/courses/videos/8007736c-7665-40f8-867c-8314b1b81c8d.mov', 0, 2, 1),
(208, 'What-is-Html5.mov', 106, '/uploads/courses/videos/eed32c5a-4fd4-420b-b307-262d77f28a6b.mov', 0, 3, 1),
(209, 'Text-Editor.mov', 106, '/uploads/courses/videos/a7583e68-c618-4523-b961-2c9be0336baa.mov', 0, 3, 1),
(210, 'Semantic.mov', 106, '/uploads/courses/videos/1c27cfdc-a13a-4712-9716-89671897e5e0.mov', 0, 2, 1),
(211, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 107, '/uploads/courses/videos/37031cac-1db7-4ee1-a8a3-75e4df832f90.mov', 0, 0, 1),
(212, 'shahadah.mp4', 107, '/uploads/courses/videos/e11fa114-5a4a-4949-98f5-12e8f12915a4.mp4', 0, 0, 1),
(213, 'shahadah.mp4', 107, '/uploads/courses/videos/85241ea9-c455-465d-93b0-525257b227fd.mp4', 0, 0, 1),
(214, 'Intro.mov', 107, '/uploads/courses/videos/fb48157d-2cf6-42ef-9329-542e016b5802.mov', 0, 2, 1),
(215, 'What-is-Html5.mov', 107, '/uploads/courses/videos/acd45236-fcb2-42fb-911f-87106a6ebad6.mov', 0, 3, 1),
(216, 'Text-Editor.mov', 107, '/uploads/courses/videos/32dae5a7-d37c-407e-83e9-28ef62e3ee74.mov', 0, 3, 1),
(217, 'Semantic.mov', 107, '/uploads/courses/videos/393e9bb9-986c-4e5f-a633-ea9b51be51e3.mov', 0, 2, 1),
(222, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 111, '/uploads/courses/videos/2e42cc13-0ad9-407b-8118-6827a73e447e.mov', 0, 0, 1),
(223, 'shahadah.mp4', 111, '/uploads/courses/videos/a645d6b3-0efe-4fa2-80d2-913b90543187.mp4', 0, 0, 1),
(224, 'shahadah.mp4', 111, '/uploads/courses/videos/65caf2a8-66ad-4004-a8fc-bcdbae90456a.mp4', 0, 0, 1),
(225, 'Intro.mov', 111, '/uploads/courses/videos/9dbc20c0-2142-4d68-976d-0655512fd7ed.mov', 0, 2, 1),
(226, 'What-is-Html5.mov', 111, '/uploads/courses/videos/7f57d7fc-7b3a-4d4d-85c8-ecc7c72b60fa.mov', 0, 3, 1),
(227, 'Text-Editor.mov', 111, '/uploads/courses/videos/550bfe6b-90ce-4393-81a8-31a1ad823d55.mov', 0, 3, 1),
(228, 'Semantic.mov', 111, '/uploads/courses/videos/eebaae0b-ead9-40e7-9df3-cc05ea2dfac4.mov', 0, 2, 1),
(241, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 117, '/uploads/courses/videos/9150bce0-29e8-40ab-84b5-028c2930baf1.mov', 0, 0, 1),
(242, 'shahadah.mp4', 117, '/uploads/courses/videos/2e1e548f-8ede-4324-8528-0bf59727a37f.mp4', 0, 0, 1),
(243, 'shahadah.mp4', 117, '/uploads/courses/videos/de6b115d-51a0-4158-b3a5-aa964d99cc6e.mp4', 0, 0, 1),
(244, 'Intro.mov', 117, '/uploads/courses/videos/e5324ca2-53e2-45a0-a280-1aa2b2f26339.mov', 0, 2, 1),
(245, 'What-is-Html5.mov', 117, '/uploads/courses/videos/f64ffb0c-2cfb-4499-9902-0753425ea8af.mov', 0, 3, 1),
(246, 'Text-Editor.mov', 117, '/uploads/courses/videos/77361ae7-fd5a-404e-bec6-8697587e2029.mov', 0, 3, 1),
(247, 'Semantic.mov', 117, '/uploads/courses/videos/5304f28f-0769-4114-b5c1-5984e766a809.mov', 0, 2, 1),
(248, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 118, '/uploads/courses/videos/e3716cf2-3d6f-4ff3-bae0-237faedce61c.mov', 0, 0, 1),
(249, 'shahadah.mp4', 118, '/uploads/courses/videos/da6e47ae-4552-483b-aea1-61198d8c2b6f.mp4', 0, 0, 1),
(250, 'shahadah.mp4', 118, '/uploads/courses/videos/93034e6a-60f3-4fed-b48d-cfcf8636e723.mp4', 0, 0, 1),
(251, 'Intro.mov', 118, '/uploads/courses/videos/6d221376-aa42-4e91-89ae-2db435eeb1fa.mov', 0, 2, 1),
(252, 'What-is-Html5.mov', 118, '/uploads/courses/videos/ba0aee08-771e-444d-9c5c-40558fc72e26.mov', 0, 3, 1),
(253, 'Text-Editor.mov', 118, '/uploads/courses/videos/93dfe9e4-d989-4c56-a63e-d17c1da9da0e.mov', 0, 3, 1),
(254, 'Semantic.mov', 118, '/uploads/courses/videos/7aa92c4c-3b06-48b4-aef4-d6059c8c8793.mov', 0, 2, 1),
(259, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 122, '/uploads/courses/videos/2786231a-71e5-43de-a512-f95da40bde34.mov', 0, 0, 1),
(260, 'shahadah.mp4', 122, '/uploads/courses/videos/1808b00a-fc5e-4b7c-ae9a-5ea5559daac0.mp4', 0, 0, 1),
(261, 'shahadah.mp4', 122, '/uploads/courses/videos/74ad2533-4c96-4e3a-bd51-a5145ccb0283.mp4', 0, 0, 1),
(262, 'Intro.mov', 122, '/uploads/courses/videos/82f91a6c-f8e4-488f-956d-9af39d859730.mov', 0, 2, 1),
(263, 'What-is-Html5.mov', 122, '/uploads/courses/videos/bc7f3848-ea52-4cd0-8ec6-08c85bde7360.mov', 0, 3, 1),
(264, 'Text-Editor.mov', 122, '/uploads/courses/videos/db60403f-5581-4a30-8d68-610ef3ddf33e.mov', 0, 3, 1),
(265, 'Semantic.mov', 122, '/uploads/courses/videos/74a2ddf6-258b-44e4-84f8-4a977e7b426e.mov', 0, 2, 1),
(278, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 128, '/uploads/courses/videos/ded09b03-2c8d-4da9-9e3e-b569d9a74855.mov', 0, 0, 1),
(279, 'shahadah.mp4', 128, '/uploads/courses/videos/685218f8-f34b-46e4-8f78-6f2c980922e0.mp4', 0, 0, 1),
(280, 'shahadah.mp4', 128, '/uploads/courses/videos/325f3d2f-406c-47a5-bfb4-39f462392f31.mp4', 0, 0, 1),
(281, 'Intro.mov', 128, '/uploads/courses/videos/73a0c196-ef26-4920-b55c-afb548e5ba01.mov', 0, 2, 1),
(282, 'What-is-Html5.mov', 128, '/uploads/courses/videos/83c3302e-3839-4e2e-9b1b-39e9347dd793.mov', 0, 3, 1),
(283, 'Text-Editor.mov', 128, '/uploads/courses/videos/468ef5bf-8ed3-4c98-9131-09bd2ad31e6f.mov', 0, 3, 1),
(284, 'Semantic.mov', 128, '/uploads/courses/videos/2dcbe6ac-236c-4877-8f2e-24fe2e1cfb7d.mov', 0, 2, 1),
(297, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 134, '/uploads/courses/videos/78f753a9-53df-4db0-897b-f5d7d4fa9edf.mov', 0, 0, 1),
(298, 'shahadah.mp4', 134, '/uploads/courses/videos/a9674f16-88de-4571-b734-51b8779008bb.mp4', 0, 0, 1),
(299, 'shahadah.mp4', 134, '/uploads/courses/videos/95079bf1-a838-4707-868b-afb30ddf4953.mp4', 0, 0, 1),
(300, 'Intro.mov', 134, '/uploads/courses/videos/3b4904dc-71f5-4fcd-9e14-5afb6d6bd84e.mov', 0, 2, 1),
(301, 'What-is-Html5.mov', 134, '/uploads/courses/videos/4d1af833-1648-41e2-9dcc-54eb9c795503.mov', 0, 3, 1),
(302, 'Text-Editor.mov', 134, '/uploads/courses/videos/d1725eba-6ebb-47e2-a5a7-2b5cfeb704ff.mov', 0, 3, 1),
(303, 'Semantic.mov', 134, '/uploads/courses/videos/f81e45db-3de4-4b1c-8360-f5273b5614a0.mov', 0, 2, 1),
(304, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 135, '/uploads/courses/videos/112ad7fd-f5f0-4119-b44a-565e51d720c1.mov', 0, 0, 1),
(305, 'shahadah.mp4', 135, '/uploads/courses/videos/15ed9f14-6499-4a91-aef0-b1f41058e15a.mp4', 0, 0, 1),
(306, 'shahadah.mp4', 135, '/uploads/courses/videos/746bc654-f54f-430b-b903-ec87d925f10a.mp4', 0, 0, 1),
(307, 'Intro.mov', 135, '/uploads/courses/videos/f8322f22-f776-43e5-8bbd-65f40c6e39cc.mov', 0, 2, 1),
(308, 'What-is-Html5.mov', 135, '/uploads/courses/videos/256cd086-eb8d-43d1-ba23-8776e32416d9.mov', 0, 3, 1),
(309, 'Text-Editor.mov', 135, '/uploads/courses/videos/7b8fe3da-6530-463e-a2b3-7e78e5e7534d.mov', 0, 3, 1),
(310, 'Semantic.mov', 135, '/uploads/courses/videos/56fdfb01-f9b8-4608-bd40-54a3a297ce82.mov', 0, 2, 1),
(311, 'Semantic.mov', 136, '/uploads/courses/videos/19d4881b-3f6e-4377-84d8-80626350b3a2.mov', 0, 2, 1),
(312, 'What-is-Html5.mov', 136, '/uploads/courses/videos/e3346cbb-60f3-4d60-9c5a-832823d78cea.mov', 0, 3, 1),
(315, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 139, '/uploads/courses/videos/cf340853-c8e1-4ac1-a2e0-6ddf696a4c9f.mov', 0, 0, 1),
(316, 'shahadah.mp4', 139, '/uploads/courses/videos/158d1cd8-33eb-49b4-99be-67bef098f946.mp4', 0, 0, 1),
(317, 'shahadah.mp4', 139, '/uploads/courses/videos/d9a6b547-dd30-429e-a3fc-216a308d7b52.mp4', 0, 0, 1),
(318, 'Intro.mov', 139, '/uploads/courses/videos/601020e4-195f-45e1-8e2b-520e8730f798.mov', 0, 2, 1),
(319, 'What-is-Html5.mov', 139, '/uploads/courses/videos/bcfab51b-d6d3-4dde-a75d-31eb667bb964.mov', 0, 3, 1),
(320, 'Text-Editor.mov', 139, '/uploads/courses/videos/0c61f2b7-ab5a-467e-b21a-06da494115d6.mov', 0, 3, 1),
(321, 'Semantic.mov', 139, '/uploads/courses/videos/7e1dbe93-335b-481f-9488-c105f04bd7b0.mov', 0, 2, 1),
(322, 'Semantic.mov', 140, '/uploads/courses/videos/aab4232e-0b3e-4ce1-9715-1fff34cde349.mov', 0, 2, 1),
(323, 'What-is-Html5.mov', 140, '/uploads/courses/videos/b2620aba-772d-4ca1-93ae-3f9be7b6eea9.mov', 0, 3, 1),
(334, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 145, '/uploads/courses/videos/ced6e565-3b23-46f7-a2c8-6acf8d250001.mov', 0, 0, 1),
(335, 'shahadah.mp4', 145, '/uploads/courses/videos/42fe0081-0034-402e-8a39-5c966f8bd9ce.mp4', 0, 0, 1),
(336, 'shahadah.mp4', 145, '/uploads/courses/videos/cb013f7d-29b7-4ef6-a3f4-fc73435f2ab6.mp4', 0, 0, 1),
(337, 'Intro.mov', 145, '/uploads/courses/videos/55d0afb8-df87-411c-bbcf-879379ba0437.mov', 0, 2, 1),
(338, 'What-is-Html5.mov', 145, '/uploads/courses/videos/8f4654e7-0fd1-4190-9d85-d59dd3ef1179.mov', 0, 3, 1),
(339, 'Text-Editor.mov', 145, '/uploads/courses/videos/efca5c66-ec45-4699-a20c-0ebc96cb6e8f.mov', 0, 3, 1),
(340, 'Semantic.mov', 145, '/uploads/courses/videos/2422a6b4-fe5c-48d7-ac14-4d2c916cfad2.mov', 0, 2, 1),
(341, 'Semantic.mov', 146, '/uploads/courses/videos/f7880444-8a15-4099-815d-6cf78e79e76d.mov', 0, 2, 1),
(342, 'What-is-Html5.mov', 146, '/uploads/courses/videos/bdda16bf-cde9-48f7-9f38-b9abadab22db.mov', 0, 3, 1),
(353, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 151, '/uploads/courses/videos/ee730b1d-47b9-4cf0-aa87-2b838d747abd.mov', 0, 0, 1),
(354, 'shahadah.mp4', 151, '/uploads/courses/videos/534f02dc-f66f-408b-9f17-e3049296c22e.mp4', 0, 0, 1),
(355, 'shahadah.mp4', 151, '/uploads/courses/videos/126d4a7e-9e9a-4bd7-a591-08d356afdf85.mp4', 0, 0, 1),
(356, 'Intro.mov', 151, '/uploads/courses/videos/14b36651-99be-4f43-8d0a-49c91ea7296f.mov', 0, 2, 1),
(357, 'What-is-Html5.mov', 151, '/uploads/courses/videos/fea72af1-bbe3-4cb1-b702-b893d9a58f50.mov', 0, 3, 1),
(358, 'Text-Editor.mov', 151, '/uploads/courses/videos/e7e64e09-bc2a-4580-bdba-43e3fdf0791d.mov', 0, 3, 1),
(359, 'Semantic.mov', 151, '/uploads/courses/videos/dfeaca96-5c3f-4197-ace6-f47aec4db807.mov', 0, 2, 1),
(360, 'Semantic.mov', 152, '/uploads/courses/videos/1d226741-3582-4049-aa53-ca888f576a62.mov', 0, 2, 1),
(361, 'What-is-Html5.mov', 152, '/uploads/courses/videos/e4502e48-e008-4cbc-83f0-bc313d5aa01e.mov', 0, 3, 1),
(372, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 157, '/uploads/courses/videos/da623e8a-5c6e-45db-8c26-a517c90b8b73.mov', 0, 0, 1),
(373, 'shahadah.mp4', 157, '/uploads/courses/videos/b629a37f-333a-4402-9293-44861f454f16.mp4', 0, 0, 1),
(374, 'shahadah.mp4', 157, '/uploads/courses/videos/72fa6458-3cff-4034-b611-babe70a2152f.mp4', 0, 0, 1),
(375, 'Intro.mov', 157, '/uploads/courses/videos/7c971df0-2234-48df-91dc-645deef071b3.mov', 0, 2, 1),
(376, 'What-is-Html5.mov', 157, '/uploads/courses/videos/3c67148d-9e5c-4518-894d-0231f71cc021.mov', 0, 3, 1),
(377, 'Text-Editor.mov', 157, '/uploads/courses/videos/adfff11a-dcdc-4a6b-8360-3c1e25446faa.mov', 0, 3, 1),
(378, 'Semantic.mov', 157, '/uploads/courses/videos/00726556-d9e6-472e-a19f-d1224c80ff77.mov', 0, 2, 1),
(379, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 158, '/uploads/courses/videos/15cfe383-12b9-4e6c-9f06-d38658eeb76d.mov', 0, 0, 1),
(380, 'shahadah.mp4', 158, '/uploads/courses/videos/0510e791-e64b-4d76-9517-19e228f5e97d.mp4', 0, 0, 1),
(381, 'shahadah.mp4', 158, '/uploads/courses/videos/8f743f4e-4311-4d1c-844d-f27b3cbdf90e.mp4', 0, 0, 1),
(382, 'Intro.mov', 158, '/uploads/courses/videos/ed60de46-a60c-4b27-980e-0a7ab0347048.mov', 0, 2, 1),
(383, 'What-is-Html5.mov', 158, '/uploads/courses/videos/754e9539-d0ab-48f5-a80d-ae20717207b7.mov', 0, 3, 1),
(384, 'Text-Editor.mov', 158, '/uploads/courses/videos/d5f966da-a7c8-4220-ae01-4807d0d4d55d.mov', 0, 3, 1),
(385, 'Semantic.mov', 158, '/uploads/courses/videos/0d393128-7c74-4b34-9a25-f4973a943a90.mov', 0, 2, 1),
(386, 'Semantic.mov', 159, '/uploads/courses/videos/38d783df-9709-4a05-a427-ae4d9be71711.mov', 0, 2, 1),
(387, 'What-is-Html5.mov', 159, '/uploads/courses/videos/0fd41b46-9809-4a6e-94eb-9c46ccab87f9.mov', 0, 3, 1),
(390, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 162, '/uploads/courses/videos/4a560466-7180-44e0-ae49-087e22e85731.mov', 0, 0, 1),
(391, 'shahadah.mp4', 162, '/uploads/courses/videos/d78bbd25-977b-49d0-aa82-92f0aea9acd2.mp4', 0, 0, 1),
(392, 'shahadah.mp4', 162, '/uploads/courses/videos/f74b0b02-0cc0-4841-bc65-fe2df167779f.mp4', 0, 0, 1),
(393, 'Intro.mov', 162, '/uploads/courses/videos/a3f6d504-918f-415d-8aa9-49156a2a7801.mov', 0, 2, 1),
(394, 'What-is-Html5.mov', 162, '/uploads/courses/videos/5769ce0d-0cc1-422e-8242-71fc3cbe9454.mov', 0, 3, 1),
(395, 'Text-Editor.mov', 162, '/uploads/courses/videos/da0db38c-3e07-4007-9672-032561330853.mov', 0, 3, 1),
(396, 'Semantic.mov', 162, '/uploads/courses/videos/82e8f9e7-149c-4a15-b674-6e36bcb36356.mov', 0, 2, 1),
(397, 'Semantic.mov', 163, '/uploads/courses/videos/187e06e5-24b4-4dc8-abc1-77562928799a.mov', 0, 2, 1),
(398, 'What-is-Html5.mov', 163, '/uploads/courses/videos/34ea8f04-70e0-450e-8535-342ae2d0fb7b.mov', 0, 3, 1),
(409, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 168, '/uploads/courses/videos/3263a23d-94d3-4f76-9a32-7468999ac33d.mov', 0, 0, 1),
(410, 'shahadah.mp4', 168, '/uploads/courses/videos/c9028042-5ca0-4cf7-8ece-38dbab1c1ff4.mp4', 0, 0, 1),
(411, 'shahadah.mp4', 168, '/uploads/courses/videos/b4fd9f5c-5907-4865-a0cb-da5c342201ce.mp4', 0, 0, 1),
(412, 'Intro.mov', 168, '/uploads/courses/videos/e3d85902-e93a-4f6c-953d-c60404fd3ece.mov', 0, 2, 1),
(413, 'What-is-Html5.mov', 168, '/uploads/courses/videos/e656b3d9-f284-49e7-a305-08780fd11b10.mov', 0, 3, 1),
(414, 'Text-Editor.mov', 168, '/uploads/courses/videos/06963bfd-ffa3-4c70-8938-70da36445ba8.mov', 0, 3, 1),
(415, 'Semantic.mov', 168, '/uploads/courses/videos/b5489f53-f720-4ac4-a553-138f4a2af324.mov', 0, 2, 1),
(416, 'Semantic.mov', 169, '/uploads/courses/videos/1c5c691d-eeee-4004-bf03-fed5b98d14f4.mov', 0, 2, 1),
(417, 'What-is-Html5.mov', 169, '/uploads/courses/videos/4ca9ea25-c364-4fdc-bf90-663e675a31c1.mov', 0, 3, 1),
(428, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 174, '/uploads/courses/videos/3dd5f518-fdf0-45e4-b38c-660f1af3f60a.mov', 0, 0, 1),
(429, 'shahadah.mp4', 174, '/uploads/courses/videos/d6214d0f-6792-4e14-8699-0ccfc170b267.mp4', 0, 0, 1),
(430, 'shahadah.mp4', 174, '/uploads/courses/videos/d02e8e61-eedb-4df0-be32-ed2fdc283808.mp4', 0, 0, 1),
(431, 'Intro.mov', 174, '/uploads/courses/videos/c4fd4921-b06b-4264-afa1-c8895d4057ce.mov', 0, 2, 1),
(432, 'What-is-Html5.mov', 174, '/uploads/courses/videos/cfa67718-8edc-4ac7-81a8-e56f87823d21.mov', 0, 3, 1),
(433, 'Text-Editor.mov', 174, '/uploads/courses/videos/5005cc05-7c8d-46ca-b8e3-512e027e4d25.mov', 0, 3, 1),
(434, 'Semantic.mov', 174, '/uploads/courses/videos/f4275361-3d18-45ae-b77a-a6a73456cb48.mov', 0, 2, 1),
(435, 'Semantic.mov', 175, '/uploads/courses/videos/2381218d-1d68-43b5-9349-f262647734cc.mov', 0, 2, 1),
(436, 'What-is-Html5.mov', 175, '/uploads/courses/videos/4309de46-dc28-4672-bd2d-81e282d0ee3b.mov', 0, 3, 1),
(447, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 180, '/uploads/courses/videos/c2fae65b-a4c5-44a8-9863-34dc1073aca4.mov', 0, 0, 1),
(448, 'shahadah.mp4', 180, '/uploads/courses/videos/15f679a1-0692-4d84-81a0-c2eb978116ee.mp4', 0, 0, 1),
(449, 'shahadah.mp4', 180, '/uploads/courses/videos/e3749184-76aa-4640-b543-ac6901d96f93.mp4', 0, 0, 1),
(450, 'Intro.mov', 180, '/uploads/courses/videos/0862ab5f-a8fe-4ed9-b210-8bca08a22080.mov', 0, 2, 1),
(451, 'What-is-Html5.mov', 180, '/uploads/courses/videos/31c17aca-e00f-423a-9ad8-ae5d623cd313.mov', 0, 3, 1),
(452, 'Text-Editor.mov', 180, '/uploads/courses/videos/809560b6-76b3-4453-b1b4-a61b0632f065.mov', 0, 3, 1),
(453, 'Semantic.mov', 180, '/uploads/courses/videos/7041a8dc-58dc-4226-9c94-be22d7224c30.mov', 0, 2, 1),
(454, 'Semantic.mov', 181, '/uploads/courses/videos/27b32408-311d-404c-8c84-9ebff6821897.mov', 0, 2, 1),
(455, 'What-is-Html5.mov', 181, '/uploads/courses/videos/961d3061-c6fd-404d-83f7-3ca590492add.mov', 0, 3, 1),
(466, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 186, '/uploads/courses/videos/fecb5b43-6bd2-42d6-99f3-2009806afb5f.mov', 0, 0, 1),
(467, 'shahadah.mp4', 186, '/uploads/courses/videos/3141be47-18b8-4bcd-84b6-6fe956f5c71f.mp4', 0, 0, 1),
(468, 'shahadah.mp4', 186, '/uploads/courses/videos/f6912f00-4fa7-4cb1-9b0b-ce25ff96a614.mp4', 0, 0, 1),
(469, 'Intro.mov', 186, '/uploads/courses/videos/4ea9fba7-151d-41c9-ad20-594ddbdd26e8.mov', 0, 2, 1),
(470, 'What-is-Html5.mov', 186, '/uploads/courses/videos/a18c0377-8609-41ec-b276-11efe4637114.mov', 0, 3, 1),
(471, 'Text-Editor.mov', 186, '/uploads/courses/videos/d6a73e5b-7e78-48bb-adc2-8ab2ef5041cd.mov', 0, 3, 1),
(472, 'Semantic.mov', 186, '/uploads/courses/videos/15dd8bf6-c656-4516-a230-f4698edb85e6.mov', 0, 2, 1),
(473, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 187, '/uploads/courses/videos/87e2da71-4bda-440b-a727-ec853d3235db.mov', 0, 0, 1),
(474, 'shahadah.mp4', 187, '/uploads/courses/videos/7dde9afc-bc7a-4fae-8af5-4fc52d7c9423.mp4', 0, 0, 1),
(475, 'shahadah.mp4', 187, '/uploads/courses/videos/a909984f-64b4-4657-8f51-e823e35b46d5.mp4', 0, 0, 1),
(476, 'Intro.mov', 187, '/uploads/courses/videos/ebd99c0d-997e-4163-adf2-9cbb30772cfd.mov', 0, 2, 1),
(477, 'What-is-Html5.mov', 187, '/uploads/courses/videos/058f87e5-ecb9-4d6b-87e9-6d3e88adbeca.mov', 0, 3, 1),
(478, 'Text-Editor.mov', 187, '/uploads/courses/videos/1f479cf2-0b4a-47dd-9805-2678d2553c9f.mov', 0, 3, 1),
(479, 'Semantic.mov', 187, '/uploads/courses/videos/ea94ec5c-3d47-4ea0-b8f2-edade7acf8e9.mov', 0, 2, 1),
(480, 'Semantic.mov', 188, '/uploads/courses/videos/b140c935-6daf-4f35-960f-d83c797ccc11.mov', 0, 2, 1),
(481, 'What-is-Html5.mov', 188, '/uploads/courses/videos/ab98403e-450a-438e-997a-319b63b04393.mov', 0, 3, 1),
(482, 'Intro.mov', 189, '/uploads/courses/videos/62cd02b0-0138-4688-8fda-0cbf78cd5b0a.mov', 0, 2, 1),
(484, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 191, '/uploads/courses/videos/bc91062a-20dc-4d06-a6c2-b36577f82f8e.mov', 0, 0, 1),
(485, 'shahadah.mp4', 191, '/uploads/courses/videos/8b3db36d-c9e2-4ebd-8ab1-2db0f1ab1998.mp4', 0, 0, 1),
(486, 'shahadah.mp4', 191, '/uploads/courses/videos/a2742ef3-614f-4250-89ae-f8fb33e81821.mp4', 0, 0, 1),
(487, 'Intro.mov', 191, '/uploads/courses/videos/f7f07119-3005-494a-961a-19a121fbe3ce.mov', 0, 2, 1),
(488, 'What-is-Html5.mov', 191, '/uploads/courses/videos/8e74394b-7f01-4a59-bf2e-e62c094d5663.mov', 0, 3, 1),
(489, 'Text-Editor.mov', 191, '/uploads/courses/videos/8db062f6-056d-418b-b78e-458177956a32.mov', 0, 3, 1),
(490, 'Semantic.mov', 191, '/uploads/courses/videos/12f03bdc-0e3f-454e-90dc-3c5906064db2.mov', 0, 2, 1),
(491, 'Semantic.mov', 192, '/uploads/courses/videos/afa70c8a-cb19-4eb0-bd9c-9e070bdeadc0.mov', 0, 2, 1),
(492, 'What-is-Html5.mov', 192, '/uploads/courses/videos/75210d50-96d6-4558-92bf-621f1dff6adb.mov', 0, 3, 1),
(493, 'Intro.mov', 193, '/uploads/courses/videos/c2216671-bf0d-421e-8436-24bb946e9509.mov', 0, 2, 1),
(503, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 197, '/uploads/courses/videos/a8249f32-37a9-4ea9-b8fb-8dc0c6acd1dd.mov', 0, 0, 1),
(504, 'shahadah.mp4', 197, '/uploads/courses/videos/8e3a36d8-96e8-43c9-9054-5279d583f5e8.mp4', 0, 0, 1),
(505, 'shahadah.mp4', 197, '/uploads/courses/videos/3df09840-aeda-4659-83b2-1733bcbc8b33.mp4', 0, 0, 1),
(506, 'Intro.mov', 197, '/uploads/courses/videos/4e2153f3-9c6e-4e76-aaf9-97e6647e3776.mov', 0, 2, 1),
(507, 'What-is-Html5.mov', 197, '/uploads/courses/videos/76aef615-748c-4da7-bfa2-7168c0738d27.mov', 0, 3, 1),
(508, 'Text-Editor.mov', 197, '/uploads/courses/videos/0c377c2b-9741-40fc-850a-124caae870ec.mov', 0, 3, 1),
(509, 'Semantic.mov', 197, '/uploads/courses/videos/9d6f0090-311b-48f2-a55b-5f37abdce61a.mov', 0, 2, 1),
(510, 'Semantic.mov', 198, '/uploads/courses/videos/dbb0d7a7-79c5-438e-ab3d-f707a23fa6ef.mov', 0, 2, 1),
(511, 'What-is-Html5.mov', 198, '/uploads/courses/videos/bde7fdfd-e417-4f2d-aa3c-92d41fa931d3.mov', 0, 3, 1),
(512, 'Intro.mov', 199, '/uploads/courses/videos/75a52965-0151-43a3-bd27-9b11284bffd1.mov', 0, 2, 1),
(522, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 203, '/uploads/courses/videos/33351251-ca07-43d2-b2f1-fb18318a587d.mov', 0, 0, 1),
(523, 'shahadah.mp4', 203, '/uploads/courses/videos/7438bfa0-86de-4ae3-a12f-b6637041ced2.mp4', 0, 0, 1),
(524, 'shahadah.mp4', 203, '/uploads/courses/videos/737d23a6-c9ee-4f47-945b-870d41a39db8.mp4', 0, 0, 1),
(525, 'Intro.mov', 203, '/uploads/courses/videos/c84ec3c8-6cc4-4580-a326-9762434caf8a.mov', 0, 2, 1),
(526, 'What-is-Html5.mov', 203, '/uploads/courses/videos/9b61f7cd-f407-4bfc-b1bd-1eeee192da69.mov', 0, 3, 1),
(527, 'Text-Editor.mov', 203, '/uploads/courses/videos/7c234d4b-5f3b-4672-aa8a-d934f641e7ca.mov', 0, 3, 1),
(528, 'Semantic.mov', 203, '/uploads/courses/videos/90f44f33-e381-4ec2-a3cc-03f881b8e9eb.mov', 0, 2, 1),
(529, 'Semantic.mov', 204, '/uploads/courses/videos/e9086ab6-24ff-49a9-9c31-9784d04d750e.mov', 0, 2, 1),
(530, 'What-is-Html5.mov', 204, '/uploads/courses/videos/4156b946-f1da-4bd8-b5ac-ebc3afc1644d.mov', 0, 3, 1),
(531, 'Intro.mov', 205, '/uploads/courses/videos/566d1d4d-1cd0-4b83-835a-d58791867907.mov', 0, 2, 1),
(541, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 209, '/uploads/courses/videos/2c9411bc-f757-43a7-b775-207f9ebd1e9f.mov', 0, 0, 1),
(542, 'shahadah.mp4', 209, '/uploads/courses/videos/4d803543-c7c6-4a60-815e-8cfa8a28b51b.mp4', 0, 0, 1),
(543, 'shahadah.mp4', 209, '/uploads/courses/videos/c82d2ccb-fa78-4c4f-96f4-d0b40b063d3e.mp4', 0, 0, 1),
(544, 'Intro.mov', 209, '/uploads/courses/videos/8badee9c-21ba-4045-87f3-e445fe59a697.mov', 0, 2, 1),
(545, 'What-is-Html5.mov', 209, '/uploads/courses/videos/98b5b77a-1625-47ed-b900-d14a3fb34096.mov', 0, 3, 1),
(546, 'Text-Editor.mov', 209, '/uploads/courses/videos/778166ba-74d6-4ba7-afb8-78e6fd906772.mov', 0, 3, 1),
(547, 'Semantic.mov', 209, '/uploads/courses/videos/baa16cc1-6539-48e3-ad44-19b6316ce71f.mov', 0, 2, 1),
(548, 'Semantic.mov', 210, '/uploads/courses/videos/4a4fc946-8d46-4f83-b4e4-45947f6373b1.mov', 0, 2, 1),
(549, 'What-is-Html5.mov', 210, '/uploads/courses/videos/5bfba587-c65f-40e8-aee5-39898230a7c2.mov', 0, 3, 1),
(550, 'Intro.mov', 211, '/uploads/courses/videos/cd4681f8-64fc-4f03-acbf-c20af996ec20.mov', 0, 2, 1),
(560, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 215, '/uploads/courses/videos/fce2b619-ac1a-4417-b5d3-3f2c14b2f968.mov', 0, 0, 1),
(561, 'shahadah.mp4', 215, '/uploads/courses/videos/26cd860d-5bde-458c-95d0-6665b7d52786.mp4', 0, 0, 1),
(562, 'shahadah.mp4', 215, '/uploads/courses/videos/40352c8e-12d1-4c4d-ac80-b08d14f17efc.mp4', 0, 0, 1),
(563, 'Intro.mov', 215, '/uploads/courses/videos/1b90a370-745b-4e5b-8333-1764c3166ae2.mov', 0, 2, 1),
(564, 'What-is-Html5.mov', 215, '/uploads/courses/videos/71144bf3-43bb-4ff6-90c6-a162d808e27e.mov', 0, 3, 1),
(565, 'Text-Editor.mov', 215, '/uploads/courses/videos/48c35cb7-5d62-46d3-938e-7f3d3fcac6cc.mov', 0, 3, 1),
(566, 'Semantic.mov', 215, '/uploads/courses/videos/a5564c62-c402-4e78-a93b-be33cbf923ed.mov', 0, 2, 1),
(567, 'Semantic.mov', 216, '/uploads/courses/videos/ddac1e0c-eb57-4227-8984-2a7e2ac4e732.mov', 0, 2, 1),
(568, 'What-is-Html5.mov', 216, '/uploads/courses/videos/b756c10d-061f-48a9-95d7-849aa5e4c673.mov', 0, 3, 1),
(569, 'Intro.mov', 217, '/uploads/courses/videos/80593a07-294e-4a70-b420-b015b58f667c.mov', 0, 2, 1),
(579, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 221, '/uploads/courses/videos/2495df70-42a7-4194-88d6-6476d4191fb1.mov', 0, 0, 1),
(580, 'shahadah.mp4', 221, '/uploads/courses/videos/b06f2889-3e3f-4884-941b-d855d7516a97.mp4', 0, 0, 1),
(581, 'shahadah.mp4', 221, '/uploads/courses/videos/07409e30-f397-492a-be52-6b82c08e5cda.mp4', 0, 0, 1),
(582, 'Intro.mov', 221, '/uploads/courses/videos/94edbb45-c6cd-4a70-95e7-209e5a941c9f.mov', 0, 2, 1),
(583, 'What-is-Html5.mov', 221, '/uploads/courses/videos/f7905831-12e3-4e2a-a177-b45ed4cdec94.mov', 0, 3, 1),
(584, 'Text-Editor.mov', 221, '/uploads/courses/videos/b72d72a6-678e-4a33-8ee1-508e0448257b.mov', 0, 3, 1),
(585, 'Semantic.mov', 221, '/uploads/courses/videos/84df47f2-eff6-4eea-9b71-761b8e1d46f4.mov', 0, 2, 1),
(586, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 222, '/uploads/courses/videos/968d638c-bae8-4d49-a7c7-0ceb089c5aad.mov', 0, 0, 1),
(587, 'shahadah.mp4', 222, '/uploads/courses/videos/3100eb12-18e0-4bd8-819a-1249255d5afc.mp4', 0, 0, 1),
(588, 'shahadah.mp4', 222, '/uploads/courses/videos/19ce0d33-d64f-4990-a380-8949fa34d796.mp4', 0, 0, 1),
(589, 'Intro.mov', 222, '/uploads/courses/videos/dceec1fd-d1ce-41c2-a0c4-d5bc1fcfb61d.mov', 0, 2, 1),
(590, 'What-is-Html5.mov', 222, '/uploads/courses/videos/a0df454f-486e-4a9b-82aa-dbb3e3fda87e.mov', 0, 3, 1),
(591, 'Text-Editor.mov', 222, '/uploads/courses/videos/356e96b8-1f25-469a-9d9b-d21e247e2cad.mov', 0, 3, 1),
(592, 'Semantic.mov', 222, '/uploads/courses/videos/6037c2b8-8da5-49fc-a86c-f7176446ee5a.mov', 0, 2, 1),
(593, 'Semantic.mov', 223, '/uploads/courses/videos/ce5c06f7-d3da-4319-a565-c76d453f0bbb.mov', 0, 2, 1),
(594, 'What-is-Html5.mov', 223, '/uploads/courses/videos/d6b665ed-3c85-4593-bbb4-d3a633b17e4d.mov', 0, 3, 1),
(595, 'Intro.mov', 224, '/uploads/courses/videos/9b3df34c-6bd9-4316-a3bc-e77230d292af.mov', 0, 2, 1),
(596, 'Text-Editor.mov', 225, '/uploads/courses/videos/e990a645-fa46-4343-8066-9ff6e3b35875.mov', 0, 3, 1),
(597, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 226, '/uploads/courses/videos/7da66321-0b32-4d68-81fa-da7d424d0746.mov', 0, 0, 1),
(598, 'shahadah.mp4', 226, '/uploads/courses/videos/f49f785f-4557-4e6d-9a5d-7d5a46e88336.mp4', 0, 0, 1),
(599, 'shahadah.mp4', 226, '/uploads/courses/videos/38d331d4-3468-42b9-a8b1-d518719425bf.mp4', 0, 0, 1),
(600, 'Intro.mov', 226, '/uploads/courses/videos/fa61707a-69c6-4363-bc25-5317cd2f870e.mov', 0, 2, 1),
(601, 'What-is-Html5.mov', 226, '/uploads/courses/videos/a3a78f4b-0168-421a-81d8-35cdbad09ad0.mov', 0, 3, 1),
(602, 'Text-Editor.mov', 226, '/uploads/courses/videos/8a8fd326-2857-45b4-ae35-ef626367775a.mov', 0, 3, 1),
(603, 'Semantic.mov', 226, '/uploads/courses/videos/b5d806d7-5446-4af7-ada1-4d27174955fc.mov', 0, 2, 1),
(604, 'Semantic.mov', 227, '/uploads/courses/videos/23ed920b-8e11-4d63-a0c4-1e86b0afd131.mov', 0, 2, 1),
(605, 'What-is-Html5.mov', 227, '/uploads/courses/videos/486179d6-35c8-4f03-9267-9eb901f92f70.mov', 0, 3, 1),
(606, 'Intro.mov', 228, '/uploads/courses/videos/bedd0ef1-d9ed-4e70-9c98-a1dae0f5eb9f.mov', 0, 2, 1),
(607, 'Text-Editor.mov', 229, '/uploads/courses/videos/a54f9593-8912-472a-be96-eb91e12e68f2.mov', 0, 3, 1),
(616, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 232, '/uploads/courses/videos/36e6272d-8cf9-4750-9176-9d4fea7d5397.mov', 0, 0, 1),
(617, 'shahadah.mp4', 232, '/uploads/courses/videos/e001f8b8-bcc9-4545-b229-467326f966af.mp4', 0, 0, 1),
(618, 'shahadah.mp4', 232, '/uploads/courses/videos/fb856408-41d3-4afb-abfe-792fa05578a6.mp4', 0, 0, 1),
(619, 'Intro.mov', 232, '/uploads/courses/videos/fd2bb122-0153-4388-8877-f30e983836d2.mov', 0, 2, 1),
(620, 'What-is-Html5.mov', 232, '/uploads/courses/videos/148c77d7-f235-4dd7-86f0-b6cac3cc2555.mov', 0, 3, 1),
(621, 'Text-Editor.mov', 232, '/uploads/courses/videos/f272c96f-8603-47fc-8c18-b9d1cc9bfe55.mov', 0, 3, 1),
(622, 'Semantic.mov', 232, '/uploads/courses/videos/88928e2e-3246-4cd4-97f6-9e152619313c.mov', 0, 2, 1),
(623, 'Semantic.mov', 233, '/uploads/courses/videos/2f6d0227-27a2-42c6-95c7-7178b4921d8e.mov', 0, 2, 1),
(624, 'What-is-Html5.mov', 233, '/uploads/courses/videos/d05ed48f-af63-4401-ac9e-3d8cfe0fc53b.mov', 0, 3, 1),
(625, 'Intro.mov', 234, '/uploads/courses/videos/825de007-0bff-411e-b694-90fb303c0f9b.mov', 0, 2, 1),
(626, 'Text-Editor.mov', 235, '/uploads/courses/videos/f4c36364-5e8e-48e3-9bce-30fa474b5b09.mov', 0, 3, 1),
(635, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 238, '/uploads/courses/videos/5b962b91-79c7-4ee6-bf1e-fbdb62dd7623.mov', 0, 0, 1),
(636, 'shahadah.mp4', 238, '/uploads/courses/videos/f8630d28-04e6-410b-a1cf-97468288caa2.mp4', 0, 0, 1),
(637, 'shahadah.mp4', 238, '/uploads/courses/videos/e3af3df0-ad83-412b-8c3d-5bf292ac933c.mp4', 0, 0, 1),
(638, 'Intro.mov', 238, '/uploads/courses/videos/a5267d14-1a73-4b9a-a223-59b91c0a2278.mov', 0, 2, 1),
(639, 'What-is-Html5.mov', 238, '/uploads/courses/videos/966e9a7e-237f-47e1-9cf0-55bdf73a5d00.mov', 0, 3, 1),
(640, 'Text-Editor.mov', 238, '/uploads/courses/videos/cb2bb0f1-0b53-4a60-8406-fbb714dcb2ee.mov', 0, 3, 1),
(641, 'Semantic.mov', 238, '/uploads/courses/videos/24d82286-9cad-43f4-bbf7-305dd49649aa.mov', 0, 2, 1),
(642, 'Semantic.mov', 239, '/uploads/courses/videos/9293956a-dc29-42c8-9586-36439e96be12.mov', 0, 2, 1),
(643, 'What-is-Html5.mov', 239, '/uploads/courses/videos/bcefe471-0613-40ef-a482-61ddace7f371.mov', 0, 3, 1),
(644, 'Intro.mov', 240, '/uploads/courses/videos/b201c5f7-2c9e-4c6f-bf86-49e41e672bb0.mov', 0, 2, 1),
(645, 'Text-Editor.mov', 241, '/uploads/courses/videos/c2e43d6f-668d-4ed0-a5e1-fd6fd41da639.mov', 0, 3, 1),
(654, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 244, '/uploads/courses/videos/3f32a46a-2826-4f55-bc5f-3e7b0a9f813f.mov', 0, 0, 1),
(655, 'shahadah.mp4', 244, '/uploads/courses/videos/6adb996b-5006-4186-a4b7-e9ce76191e1a.mp4', 0, 0, 1),
(656, 'shahadah.mp4', 244, '/uploads/courses/videos/8242f1ac-e7df-41c1-950c-c6b4a42f7832.mp4', 0, 0, 1),
(657, 'Intro.mov', 244, '/uploads/courses/videos/bf436ccd-63bc-4af4-8f79-9162661ce271.mov', 0, 2, 1),
(658, 'What-is-Html5.mov', 244, '/uploads/courses/videos/fa5874c8-e32b-4cdc-abfb-65b42b17f36f.mov', 0, 3, 1),
(659, 'Text-Editor.mov', 244, '/uploads/courses/videos/081be7bb-ac3a-4ca1-8c57-eec3808c21b1.mov', 0, 3, 1),
(660, 'Semantic.mov', 244, '/uploads/courses/videos/2299e8e0-f926-4ca0-a9bb-6a88b91d7b25.mov', 0, 2, 1),
(661, 'Semantic.mov', 245, '/uploads/courses/videos/788186eb-326d-458b-ae9c-5ab38240942e.mov', 0, 2, 1),
(662, 'What-is-Html5.mov', 245, '/uploads/courses/videos/1601ecb7-49c9-4949-b35e-31d5c39794e8.mov', 0, 3, 1),
(663, 'Intro.mov', 246, '/uploads/courses/videos/fed97063-742c-4383-901e-b6dc3c5cd9b6.mov', 0, 2, 1),
(664, 'Text-Editor.mov', 247, '/uploads/courses/videos/998b5e57-6d8a-4d80-9130-fe1603b3b1d6.mov', 0, 3, 1),
(673, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 250, '/uploads/courses/videos/fa1c0860-2db0-49d6-988f-20b074e23bc7.mov', 0, 0, 1),
(674, 'shahadah.mp4', 250, '/uploads/courses/videos/7ee0fc08-ed7b-499f-b70c-369d2f365566.mp4', 0, 0, 1),
(675, 'shahadah.mp4', 250, '/uploads/courses/videos/e633af61-ed0c-4076-b89b-3b6904065843.mp4', 0, 0, 1),
(676, 'Intro.mov', 250, '/uploads/courses/videos/c610ec29-c90b-46ce-af18-9427e4bbfe3a.mov', 0, 2, 1),
(677, 'What-is-Html5.mov', 250, '/uploads/courses/videos/adc889a1-e9e8-4286-b097-733e62319974.mov', 0, 3, 1),
(678, 'Text-Editor.mov', 250, '/uploads/courses/videos/abe7a997-6dc8-49bc-9ec0-c0bde6ab9b8d.mov', 0, 3, 1),
(679, 'Semantic.mov', 250, '/uploads/courses/videos/d44e4824-1886-46fb-b07c-e084b87fb49e.mov', 0, 2, 1),
(680, 'Semantic.mov', 251, '/uploads/courses/videos/f5babdde-d184-4818-a039-5d01eb3d28b4.mov', 0, 2, 1),
(681, 'What-is-Html5.mov', 251, '/uploads/courses/videos/5508369e-a135-47a7-8904-00dcb8d972a4.mov', 0, 3, 1),
(682, 'Intro.mov', 252, '/uploads/courses/videos/624825b5-2f41-4eb6-8bc2-12d69feefa5c.mov', 0, 2, 1),
(683, 'Text-Editor.mov', 253, '/uploads/courses/videos/a6e9f619-af46-4f04-a2ff-cf8a239a4e40.mov', 0, 3, 1),
(692, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 256, '/uploads/courses/videos/17d4bb6f-ebf0-4bb2-a403-ea942d24fc56.mov', 0, 0, 1),
(693, 'shahadah.mp4', 256, '/uploads/courses/videos/490894f0-68ac-4c42-84c7-55f873cca2de.mp4', 0, 0, 1),
(694, 'shahadah.mp4', 256, '/uploads/courses/videos/ba001e44-edc5-44c1-8236-3edf595ac4fc.mp4', 0, 0, 1),
(695, 'Intro.mov', 256, '/uploads/courses/videos/a647e0e1-1250-4cd2-a381-b933463113a3.mov', 0, 2, 1),
(696, 'What-is-Html5.mov', 256, '/uploads/courses/videos/d9220f26-17cf-4633-9afc-dea1eebe78f5.mov', 0, 3, 1),
(697, 'Text-Editor.mov', 256, '/uploads/courses/videos/94713e0f-286f-4a71-b172-891e70898584.mov', 0, 3, 1),
(698, 'Semantic.mov', 256, '/uploads/courses/videos/83ba3cd7-132d-45bb-b4e4-d89ee59bfef2.mov', 0, 2, 1),
(699, 'Semantic.mov', 257, '/uploads/courses/videos/ae687900-961b-4d2c-8547-c2c57f28cc25.mov', 0, 2, 1),
(700, 'What-is-Html5.mov', 257, '/uploads/courses/videos/6a0312d4-4dbe-49ae-b022-fe806dfe742f.mov', 0, 3, 1),
(701, 'Intro.mov', 258, '/uploads/courses/videos/b3687b9d-8c94-4779-b8d5-5e171b6ae3b0.mov', 0, 2, 1),
(702, 'Text-Editor.mov', 259, '/uploads/courses/videos/c01d8768-d027-4d3c-b8cb-9be9c706e0cb.mov', 0, 3, 1),
(711, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 262, '/uploads/courses/videos/ec6f5cc9-d08f-4628-a09d-ae4686e3f500.mov', 0, 0, 1),
(712, 'shahadah.mp4', 262, '/uploads/courses/videos/76ae98db-c285-46cb-af56-c9c945e2bbf6.mp4', 0, 0, 1),
(713, 'shahadah.mp4', 262, '/uploads/courses/videos/76689650-b264-4fb7-bd49-f9e8f8472041.mp4', 0, 0, 1),
(714, 'Intro.mov', 262, '/uploads/courses/videos/bade2c00-5a3b-4cc2-83a0-4ffe08dc3d0e.mov', 0, 2, 1),
(715, 'What-is-Html5.mov', 262, '/uploads/courses/videos/ed13d474-8c85-4cc6-936f-279044106a4c.mov', 0, 3, 1),
(716, 'Text-Editor.mov', 262, '/uploads/courses/videos/310f6c1f-00bd-4e72-b835-1dcc31b211bd.mov', 0, 3, 1),
(717, 'Semantic.mov', 262, '/uploads/courses/videos/b0b726eb-69f4-4fda-abd9-248bc5a021a8.mov', 0, 2, 1),
(718, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 263, '/uploads/courses/videos/a45ad408-553c-4c03-b27f-02f96c6a10c6.mov', 0, 0, 1),
(719, 'shahadah.mp4', 263, '/uploads/courses/videos/e34e9c12-9a58-49af-b5dc-c4d5620a9def.mp4', 0, 0, 1),
(720, 'shahadah.mp4', 263, '/uploads/courses/videos/067ba994-4196-4c1b-9249-cd1fe6ecef51.mp4', 0, 0, 1),
(721, 'Intro.mov', 263, '/uploads/courses/videos/653e2074-2afa-47fd-aafd-1f57df0bcd5e.mov', 0, 2, 1),
(722, 'What-is-Html5.mov', 263, '/uploads/courses/videos/9a6c328a-4b2f-45c2-bd80-94c98ad79d87.mov', 0, 3, 1),
(723, 'Text-Editor.mov', 263, '/uploads/courses/videos/237fbda6-8da9-4c7a-b76f-343a5881c032.mov', 0, 3, 1),
(724, 'Semantic.mov', 263, '/uploads/courses/videos/805cce39-7dfa-424f-bb09-d063c9266f10.mov', 0, 2, 1),
(725, 'Semantic.mov', 264, '/uploads/courses/videos/62585544-10aa-4ec9-a53b-db987c693d4a.mov', 0, 2, 1),
(726, 'What-is-Html5.mov', 264, '/uploads/courses/videos/59e742a7-f160-4b59-844f-11ec99dba3cf.mov', 0, 3, 1),
(727, 'Intro.mov', 265, '/uploads/courses/videos/3836499d-3aeb-4baa-9312-5b7a1d237bfd.mov', 0, 2, 1),
(728, 'Text-Editor.mov', 266, '/uploads/courses/videos/d955539e-0740-4bdb-9c13-039d55c25de2.mov', 0, 3, 1),
(729, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 267, '/uploads/courses/videos/5d7a055a-ad26-43f0-94bc-50e7b0c56a4a.mov', 0, 0, 1),
(730, 'shahadah.mp4', 267, '/uploads/courses/videos/35893e94-dab8-4749-92c8-d853859fc256.mp4', 0, 0, 1),
(731, 'shahadah.mp4', 267, '/uploads/courses/videos/6789ec37-35be-4bb3-bf19-69c0579010d5.mp4', 0, 0, 1),
(732, 'Intro.mov', 267, '/uploads/courses/videos/d8512655-a9e6-4377-bf02-4ca91cbe3105.mov', 0, 2, 1),
(733, 'What-is-Html5.mov', 267, '/uploads/courses/videos/e376c6b0-ec5f-4263-bdc1-226a7b66429c.mov', 0, 3, 1),
(734, 'Text-Editor.mov', 267, '/uploads/courses/videos/d478578e-6bc3-422a-8533-b88da44d5326.mov', 0, 3, 1),
(735, 'Semantic.mov', 267, '/uploads/courses/videos/6e52e694-2010-400e-9a2a-99fb4eebe829.mov', 0, 2, 1),
(736, 'Semantic.mov', 268, '/uploads/courses/videos/46eae74a-de5f-4e8e-9b96-91fbbeea8c3f.mov', 0, 2, 1),
(737, 'What-is-Html5.mov', 268, '/uploads/courses/videos/e0fa51d7-3573-4919-8e0d-25d743b02df9.mov', 0, 3, 1),
(738, 'Intro.mov', 269, '/uploads/courses/videos/9e7337e2-0a99-4080-8668-6445469c3244.mov', 0, 2, 1),
(739, 'Text-Editor.mov', 270, '/uploads/courses/videos/beb2254b-af31-482b-a854-dfd9a81fdcf0.mov', 0, 3, 1),
(748, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 273, '/uploads/courses/videos/5aa0ba05-ab1e-4bf6-9334-255b2c66ef69.mov', 0, 0, 1),
(749, 'shahadah.mp4', 273, '/uploads/courses/videos/5b37e4e7-0ae4-4175-8b1f-78fb6dc22d72.mp4', 0, 0, 1),
(750, 'shahadah.mp4', 273, '/uploads/courses/videos/d8280663-5142-4c83-9eb9-8234597776fe.mp4', 0, 0, 1),
(751, 'Intro.mov', 273, '/uploads/courses/videos/07f2ab94-e9e6-4cf0-a059-ed3bba6798fb.mov', 0, 2, 1),
(752, 'What-is-Html5.mov', 273, '/uploads/courses/videos/aeee416d-7c46-4530-847a-12271f1ab060.mov', 0, 3, 1),
(753, 'Text-Editor.mov', 273, '/uploads/courses/videos/a517333a-07a2-4625-afb6-80fc8a79d887.mov', 0, 3, 1),
(754, 'Semantic.mov', 273, '/uploads/courses/videos/a556df26-7829-4bf4-ae2c-9522cdd87d8e.mov', 0, 2, 1),
(755, 'Semantic.mov', 274, '/uploads/courses/videos/a62b4f7b-0ee1-40b0-8ed8-311063bc624f.mov', 0, 2, 1),
(756, 'What-is-Html5.mov', 274, '/uploads/courses/videos/a8ae097f-80d7-4085-89d3-0e5234f13a63.mov', 0, 3, 1),
(757, 'Intro.mov', 275, '/uploads/courses/videos/c7e13b8e-5b39-48e1-9738-39d2681bc1cd.mov', 0, 2, 1),
(758, 'Text-Editor.mov', 276, '/uploads/courses/videos/b3ff3209-b9fc-4bfc-aa30-b16a23751d26.mov', 0, 3, 1),
(767, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 279, '/uploads/courses/videos/e373a5e9-ed32-4bf5-b14d-8f0a4b26285d.mov', 0, 0, 1),
(768, 'shahadah.mp4', 279, '/uploads/courses/videos/f339067e-66e5-4659-82f6-7926130843eb.mp4', 0, 0, 1),
(769, 'shahadah.mp4', 279, '/uploads/courses/videos/a31f23cd-e680-4e18-a00b-0ef22cc798cf.mp4', 0, 0, 1),
(770, 'Intro.mov', 279, '/uploads/courses/videos/b7a7b2ed-bd4e-4431-99f8-22d98264f303.mov', 0, 2, 1),
(771, 'What-is-Html5.mov', 279, '/uploads/courses/videos/bbf6d1f3-a9ce-47e0-b9a8-15dc8e7a9e5c.mov', 0, 3, 1),
(772, 'Text-Editor.mov', 279, '/uploads/courses/videos/bdc936f8-4d14-4758-97bb-65a09dbfa264.mov', 0, 3, 1),
(773, 'Semantic.mov', 279, '/uploads/courses/videos/e2500d82-1e38-4791-8e79-858844913753.mov', 0, 2, 1),
(774, 'Semantic.mov', 280, '/uploads/courses/videos/1695fea0-5096-4306-8e4c-50cb907cca59.mov', 0, 2, 1),
(775, 'What-is-Html5.mov', 280, '/uploads/courses/videos/1b750d9b-2a6a-4eeb-8384-432252371672.mov', 0, 3, 1),
(776, 'Intro.mov', 281, '/uploads/courses/videos/7e298062-a93e-4cf0-9953-646104d4970b.mov', 0, 2, 1),
(777, 'Text-Editor.mov', 282, '/uploads/courses/videos/ffe54fb3-e3ff-4041-b093-41f6af51e0e2.mov', 0, 3, 1),
(786, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 285, '/uploads/courses/videos/4b08d5f4-f97a-4079-8bf7-e19ed5a9c768.mov', 0, 0, 1),
(787, 'shahadah.mp4', 285, '/uploads/courses/videos/95625bc4-d368-4654-8b29-445c7cde34b7.mp4', 0, 0, 1),
(788, 'shahadah.mp4', 285, '/uploads/courses/videos/9c95febb-0299-4276-a8d6-60344d66678d.mp4', 0, 0, 1),
(789, 'Intro.mov', 285, '/uploads/courses/videos/217ddece-ece9-42d8-892b-c2fc3c335b54.mov', 0, 2, 1),
(790, 'What-is-Html5.mov', 285, '/uploads/courses/videos/03984784-2456-49e7-ad67-13495ad252b8.mov', 0, 3, 1),
(791, 'Text-Editor.mov', 285, '/uploads/courses/videos/412bf6d1-abbf-4e5c-b078-d3a428c26440.mov', 0, 3, 1),
(792, 'Semantic.mov', 285, '/uploads/courses/videos/61c7da63-8490-4c41-8710-6361250b877f.mov', 0, 2, 1),
(793, 'Semantic.mov', 286, '/uploads/courses/videos/0376a757-81ed-4d63-a708-501b80630299.mov', 0, 2, 1),
(794, 'What-is-Html5.mov', 286, '/uploads/courses/videos/506c2e85-b707-49ca-9a86-6aeea7c8c7b9.mov', 0, 3, 1),
(795, 'Intro.mov', 287, '/uploads/courses/videos/86595397-6f95-43cc-ac25-154ef0bf2c57.mov', 0, 2, 1),
(796, 'Text-Editor.mov', 288, '/uploads/courses/videos/3f214691-8597-464f-8621-26cea5c82a2b.mov', 0, 3, 1),
(805, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 291, '/uploads/courses/videos/ae780089-8707-49c2-90b0-7d53e87291bb.mov', 0, 0, 1),
(806, 'shahadah.mp4', 291, '/uploads/courses/videos/661cfa7e-ed5e-4bac-b5bb-23f3d6f4f95c.mp4', 0, 0, 1),
(807, 'shahadah.mp4', 291, '/uploads/courses/videos/230901b4-7a32-4a2e-8295-a449f95c8e0e.mp4', 0, 0, 1),
(808, 'Intro.mov', 291, '/uploads/courses/videos/db5724b2-ebd0-403f-aba7-d62cdec5aa0e.mov', 0, 2, 1),
(809, 'What-is-Html5.mov', 291, '/uploads/courses/videos/19cba9a4-dff1-40fd-9386-c19568282bcf.mov', 0, 3, 1),
(810, 'Text-Editor.mov', 291, '/uploads/courses/videos/1db62975-dd58-4996-8423-fc14a27a6981.mov', 0, 3, 1),
(811, 'Semantic.mov', 291, '/uploads/courses/videos/dcccf23c-649f-4b30-be98-ee859c3bc1e4.mov', 0, 2, 1),
(812, 'Semantic.mov', 292, '/uploads/courses/videos/69a1de38-ad8b-4a6b-8374-c8f8675d4a0b.mov', 0, 2, 1),
(813, 'What-is-Html5.mov', 292, '/uploads/courses/videos/f773252e-f78e-480c-b648-066c9a933511.mov', 0, 3, 1),
(814, 'Intro.mov', 293, '/uploads/courses/videos/911bfc76-a8e1-430a-aa09-9b3249ba676c.mov', 0, 2, 1),
(815, 'Text-Editor.mov', 294, '/uploads/courses/videos/ae7a256f-4007-460a-b8e3-8560a9107eb2.mov', 0, 3, 1),
(824, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 297, '/uploads/courses/videos/b8bf6e71-5a37-43f5-954f-d6289604cebb.mov', 0, 0, 1),
(825, 'shahadah.mp4', 297, '/uploads/courses/videos/58ee7e13-e980-4700-861f-ae54c7cfaf35.mp4', 0, 0, 1),
(826, 'shahadah.mp4', 297, '/uploads/courses/videos/888be8f9-0f26-4f7d-a2e0-6ceaa36e9dc7.mp4', 0, 0, 1),
(827, 'Intro.mov', 297, '/uploads/courses/videos/d7c034ef-dbd3-4a81-a63f-a4d9b308af01.mov', 0, 2, 1),
(828, 'What-is-Html5.mov', 297, '/uploads/courses/videos/fd2c884e-d512-4c04-bbf9-510eaf4d593f.mov', 0, 3, 1),
(829, 'Text-Editor.mov', 297, '/uploads/courses/videos/07b38599-fc83-461c-b1a4-8bdcfd0b93c1.mov', 0, 3, 1),
(830, 'Semantic.mov', 297, '/uploads/courses/videos/17eb5a7e-e4d7-41fb-aa09-5c04d56aa742.mov', 0, 2, 1),
(831, 'Semantic.mov', 298, '/uploads/courses/videos/af8c9dde-13e6-4925-acb1-1ec3392aac8a.mov', 0, 2, 1),
(832, 'What-is-Html5.mov', 298, '/uploads/courses/videos/5485f16c-c006-4067-a4f2-9d9e0709a65a.mov', 0, 3, 1),
(833, 'Intro.mov', 299, '/uploads/courses/videos/0f9dc1b1-cffd-4ac3-8b4a-7733081c71ca.mov', 0, 2, 1),
(834, 'Text-Editor.mov', 300, '/uploads/courses/videos/f1dc2c83-708d-4017-9d7d-1ac76e79420e.mov', 0, 3, 1),
(843, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 303, '/uploads/courses/videos/97b2f693-5074-4f33-87d1-847cb83c97a7.mov', 0, 0, 1),
(844, 'shahadah.mp4', 303, '/uploads/courses/videos/9e150157-8d48-4cd4-b911-5795cf050235.mp4', 0, 0, 1),
(845, 'shahadah.mp4', 303, '/uploads/courses/videos/836da5e6-a990-4097-808c-b6c21db51787.mp4', 0, 0, 1),
(846, 'Intro.mov', 303, '/uploads/courses/videos/b54784e8-f08a-47d8-b314-6880d914806a.mov', 0, 2, 1),
(847, 'What-is-Html5.mov', 303, '/uploads/courses/videos/bcb88455-ff1d-476a-976f-8481e2892556.mov', 0, 3, 1),
(848, 'Text-Editor.mov', 303, '/uploads/courses/videos/96e1fa44-5627-4c9a-9040-7b6238279086.mov', 0, 3, 1),
(849, 'Semantic.mov', 303, '/uploads/courses/videos/bbeb29b0-7acf-4de3-b4de-cb93bb8d1d91.mov', 0, 2, 1),
(850, 'Semantic.mov', 304, '/uploads/courses/videos/c536426e-1565-47b1-bf42-5dc3a29a2743.mov', 0, 2, 1),
(851, 'What-is-Html5.mov', 304, '/uploads/courses/videos/d87197fa-3941-4a05-b031-2c34d123306b.mov', 0, 3, 1),
(852, 'Intro.mov', 305, '/uploads/courses/videos/813f9433-3ba1-4f6c-bd68-4c5f9cdf8ad3.mov', 0, 2, 1),
(853, 'Text-Editor.mov', 306, '/uploads/courses/videos/53439983-2126-4eef-84eb-930e45607e67.mov', 0, 3, 1),
(862, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 309, '/uploads/courses/videos/21a2f4b4-1f12-42d3-912d-4fd4e59710cb.mov', 0, 0, 1),
(863, 'shahadah.mp4', 309, '/uploads/courses/videos/76b4c17a-98db-4d7b-914b-d7e9a1a35f7e.mp4', 0, 0, 1),
(864, 'shahadah.mp4', 309, '/uploads/courses/videos/2db89fd9-3cdf-44a3-a775-ae2f9d54196b.mp4', 0, 0, 1),
(865, 'Intro.mov', 309, '/uploads/courses/videos/f2759c2c-2303-4615-bb93-762e8d93e3e0.mov', 0, 2, 1),
(866, 'What-is-Html5.mov', 309, '/uploads/courses/videos/d6c0cfe6-82fe-4ea1-b5ab-3db7a99c7bb5.mov', 0, 3, 1),
(867, 'Text-Editor.mov', 309, '/uploads/courses/videos/ca7e8d17-6479-4249-a574-3ace6ecd0e4b.mov', 0, 3, 1),
(868, 'Semantic.mov', 309, '/uploads/courses/videos/49000635-d829-4fa1-9a5a-8aaad8f51c1d.mov', 0, 2, 1),
(869, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 310, '/uploads/courses/videos/0387db9c-5b12-4bbb-9b96-a7a0d39c2b81.mov', 0, 0, 1),
(870, 'shahadah.mp4', 310, '/uploads/courses/videos/073b0b14-7ded-4000-87c8-449d4db4d110.mp4', 0, 0, 1),
(871, 'shahadah.mp4', 310, '/uploads/courses/videos/96e44f99-4a37-4477-b867-6aea8e00a1c4.mp4', 0, 0, 1),
(872, 'Intro.mov', 310, '/uploads/courses/videos/b8c5cf28-8ae9-46b0-a222-410109f83ad6.mov', 0, 2, 1),
(873, 'What-is-Html5.mov', 310, '/uploads/courses/videos/4a364ab3-7473-4c6e-86dd-861cb99d3c42.mov', 0, 3, 1),
(874, 'Text-Editor.mov', 310, '/uploads/courses/videos/d2a70e6c-042c-41a7-897a-9b35c794dc76.mov', 0, 3, 1),
(875, 'Semantic.mov', 310, '/uploads/courses/videos/ea4b81c3-509d-4eec-88e5-377421a47e17.mov', 0, 2, 1),
(876, 'Semantic.mov', 311, '/uploads/courses/videos/c0ae2f31-0c2e-4184-8cc3-e45325f8a117.mov', 0, 2, 1),
(877, 'What-is-Html5.mov', 311, '/uploads/courses/videos/5ba79b26-b54b-4c5b-9c82-c31e6391a452.mov', 0, 3, 1),
(878, 'Intro.mov', 312, '/uploads/courses/videos/5238637c-5b44-49ba-9228-dc4bc6f6b970.mov', 0, 2, 1),
(879, 'Text-Editor.mov', 313, '/uploads/courses/videos/de807168-ef21-4d15-9aad-389fda922a4d.mov', 0, 3, 1),
(880, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 314, '/uploads/courses/videos/61e132c2-a742-4877-8c62-af4752bf33a9.mov', 0, 0, 1),
(881, 'shahadah.mp4', 314, '/uploads/courses/videos/fd3e0f28-f249-431a-b68d-7e355b44feac.mp4', 0, 0, 1),
(882, 'shahadah.mp4', 314, '/uploads/courses/videos/e6071a0e-4bf5-44a9-89da-6b07b851cc91.mp4', 0, 0, 1),
(883, 'Intro.mov', 314, '/uploads/courses/videos/b4fb0d70-2da6-407a-ad35-4018054ef8d2.mov', 0, 2, 1),
(884, 'What-is-Html5.mov', 314, '/uploads/courses/videos/d8f2fff3-e9ee-4026-a3ec-798757e53c06.mov', 0, 3, 1),
(885, 'Text-Editor.mov', 314, '/uploads/courses/videos/b081d361-9528-4a6f-8607-233d5fbfb518.mov', 0, 3, 1),
(886, 'Semantic.mov', 314, '/uploads/courses/videos/fee05412-f715-4245-a99c-bc1e4c589c21.mov', 0, 2, 1),
(887, 'Semantic.mov', 315, '/uploads/courses/videos/090a6e27-0fe8-4e0c-9ab4-53ec70513fc2.mov', 0, 2, 1),
(888, 'What-is-Html5.mov', 315, '/uploads/courses/videos/48631468-439f-4356-a9ce-e6e17378ae5d.mov', 0, 3, 1),
(889, 'Intro.mov', 316, '/uploads/courses/videos/46dc7e0f-5403-4ae6-b0ec-29962148a9bf.mov', 0, 2, 1),
(890, 'Text-Editor.mov', 317, '/uploads/courses/videos/56f331da-fc62-4aea-bead-c7031ed50b14.mov', 0, 3, 1),
(891, 'Who_created_allah?.mp4', 318, '/uploads/courses/videos/f0b1fdc5-cd70-4aee-9c35-3bb5d6c89e3b.mp4', 0, 2, 1),
(892, 'Presentation3.mp4', 318, '/uploads/courses/videos/ba910a3c-42c5-445d-899c-278ab2a2aaf8.mp4', 0, 0, 1),
(893, 'Presentation1.mp4', 318, '/uploads/courses/videos/ae6cff60-a429-4933-be17-da0d57a758c1.mp4', 0, 1, 1),
(894, 'Website_record.mp4', 318, '/uploads/courses/videos/6b075246-d39a-4ea9-9a2a-f0ef1cc7cc3d.mp4', 0, 8, 1),
(895, 'Website_record.mp4', 318, '/uploads/courses/videos/1becff78-0a32-4fa6-83b7-ced41f85f3b4.mp4', 0, 8, 1),
(899, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 320, '/uploads/courses/videos/51219edb-d864-4e09-88f9-6e312ef51af7.mov', 0, 0, 1),
(900, 'shahadah.mp4', 320, '/uploads/courses/videos/b1a2ec85-4ebc-4c60-be9f-ceb362c29b76.mp4', 0, 0, 1),
(901, 'shahadah.mp4', 320, '/uploads/courses/videos/b19a94d7-3bdb-4709-ab8d-d1543c9aacbb.mp4', 0, 0, 1),
(902, 'Intro.mov', 320, '/uploads/courses/videos/bc3d29b5-a4ce-497e-99ab-f0b5583a0e3b.mov', 0, 2, 1),
(903, 'What-is-Html5.mov', 320, '/uploads/courses/videos/10ff97a5-30dc-4ac0-baca-55b7022e2453.mov', 0, 3, 1),
(904, 'Text-Editor.mov', 320, '/uploads/courses/videos/c55594bd-bcbd-4783-aad0-bf6bf67de6a3.mov', 0, 3, 1),
(905, 'Semantic.mov', 320, '/uploads/courses/videos/1b3e9c70-01cb-40af-b6f8-11245d05b5ef.mov', 0, 2, 1),
(906, 'Semantic.mov', 321, '/uploads/courses/videos/521a9b2d-64c3-4a4b-b190-2c5227725332.mov', 0, 2, 1),
(907, 'What-is-Html5.mov', 321, '/uploads/courses/videos/2daedd05-6305-43a4-bd65-9f2563ecf38c.mov', 0, 3, 1),
(908, 'Intro.mov', 322, '/uploads/courses/videos/5e59f1e5-647f-4445-9c0c-abc3c6b35efc.mov', 0, 2, 1),
(909, 'Text-Editor.mov', 323, '/uploads/courses/videos/cd456eb5-d374-4f4d-a10e-cbe1eb1efb03.mov', 0, 3, 1),
(910, 'Who_created_allah?.mp4', 324, '/uploads/courses/videos/ba56a250-0225-4932-a6d8-99223da2017b.mp4', 0, 2, 1),
(911, 'Presentation3.mp4', 324, '/uploads/courses/videos/197de8fb-13b0-46e9-9fa9-9db7521e0541.mp4', 0, 0, 1);
INSERT INTO `teacher_videouploads` (`id`, `name`, `section_id`, `url`, `promo`, `duration`, `lock`) VALUES
(912, 'Presentation1.mp4', 324, '/uploads/courses/videos/bdc4d378-0088-46aa-9a24-dbb48e9cece1.mp4', 0, 1, 1),
(913, 'Website_record.mp4', 324, '/uploads/courses/videos/7e854483-8cf2-4ada-ab24-92e0d9664127.mp4', 0, 8, 1),
(914, 'Website_record.mp4', 324, '/uploads/courses/videos/032d7734-4b3c-40a9-a6f5-ad6c5bd3191e.mp4', 0, 8, 1),
(918, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 326, '/uploads/courses/videos/fdea334e-a10f-4e4f-96bf-335d9108f5a3.mov', 0, 0, 1),
(919, 'shahadah.mp4', 326, '/uploads/courses/videos/12d58c64-1e11-4120-9750-936fd0bd0de5.mp4', 0, 0, 1),
(920, 'shahadah.mp4', 326, '/uploads/courses/videos/7afc0ff4-2a43-4689-8d76-65e14339764e.mp4', 0, 0, 1),
(921, 'Intro.mov', 326, '/uploads/courses/videos/904564b6-b9de-4bfd-a631-5c9917239743.mov', 0, 2, 1),
(922, 'What-is-Html5.mov', 326, '/uploads/courses/videos/1fcda1a7-73ad-49c9-bf6e-552a811ff38d.mov', 0, 3, 1),
(923, 'Text-Editor.mov', 326, '/uploads/courses/videos/166b1610-c5de-448d-a3b5-9078687e75de.mov', 0, 3, 1),
(924, 'Semantic.mov', 326, '/uploads/courses/videos/682e44a0-f94e-4321-a478-5e5ce9ef9cae.mov', 0, 2, 1),
(925, 'Semantic.mov', 327, '/uploads/courses/videos/1d7d61e8-7d9e-4502-b4dc-84cbbb5af21d.mov', 0, 2, 1),
(926, 'What-is-Html5.mov', 327, '/uploads/courses/videos/605bef90-8f39-48d5-88c7-c577d0ed8a8e.mov', 0, 3, 1),
(927, 'Intro.mov', 328, '/uploads/courses/videos/41e25548-847d-42dc-9af1-9eabf9b628fe.mov', 0, 2, 1),
(928, 'Text-Editor.mov', 329, '/uploads/courses/videos/c94448c6-9398-48cd-9c6b-3da7dc2be941.mov', 0, 3, 1),
(929, 'Who_created_allah?.mp4', 330, '/uploads/courses/videos/54b59c09-983f-4030-a542-a8918fc86f74.mp4', 0, 2, 1),
(930, 'Presentation3.mp4', 330, '/uploads/courses/videos/c237bf21-ab9a-482d-8bb7-e96acca5bee6.mp4', 0, 0, 1),
(931, 'Presentation1.mp4', 330, '/uploads/courses/videos/6f85e0f9-1b49-4dd9-b4dd-5731d662287a.mp4', 0, 1, 1),
(932, 'Website_record.mp4', 330, '/uploads/courses/videos/7caf1349-e0d0-4a2c-9d6f-e5ffd4843b8c.mp4', 0, 8, 1),
(933, 'Website_record.mp4', 330, '/uploads/courses/videos/593eacf2-bfda-4589-92d9-575e6d511471.mp4', 0, 8, 1),
(937, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 332, '/uploads/courses/videos/03f62aa6-0632-4f76-969c-c5935252f7ba.mov', 0, 0, 1),
(938, 'shahadah.mp4', 332, '/uploads/courses/videos/eb62a788-8507-4898-b9b8-bb90edac5bb3.mp4', 0, 0, 1),
(939, 'shahadah.mp4', 332, '/uploads/courses/videos/a22683a3-5a0f-4cf0-a711-9aa9629465c2.mp4', 0, 0, 1),
(940, 'Intro.mov', 332, '/uploads/courses/videos/5687c3b5-02a0-42c1-b3aa-d46e30ff9997.mov', 0, 2, 1),
(941, 'What-is-Html5.mov', 332, '/uploads/courses/videos/8f15ea91-f1e4-4552-b0df-fa9f84daacab.mov', 0, 3, 1),
(942, 'Text-Editor.mov', 332, '/uploads/courses/videos/f1a87911-bf21-45e7-962b-5b719ea7252f.mov', 0, 3, 1),
(943, 'Semantic.mov', 332, '/uploads/courses/videos/dd2b97a5-2f3c-48a1-95a7-2744bd5e478e.mov', 0, 2, 1),
(944, 'Semantic.mov', 333, '/uploads/courses/videos/b582c4c6-7209-45fe-80e5-da9c7eecdc79.mov', 0, 2, 1),
(945, 'What-is-Html5.mov', 333, '/uploads/courses/videos/ffc7983b-2a35-48db-82a0-5e64cf8d3528.mov', 0, 3, 1),
(946, 'Intro.mov', 334, '/uploads/courses/videos/74db1e36-126e-4edb-8736-aaff0f67890b.mov', 0, 2, 1),
(947, 'Text-Editor.mov', 335, '/uploads/courses/videos/7978f38f-5e07-4b7e-886c-2198184f1305.mov', 0, 3, 1),
(948, 'Who_created_allah?.mp4', 336, '/uploads/courses/videos/71c147e5-05a4-4542-9db1-1dffb0b83b20.mp4', 0, 2, 1),
(949, 'Presentation3.mp4', 336, '/uploads/courses/videos/cd3dd9aa-75b4-456b-99f3-692dc22f4404.mp4', 0, 0, 1),
(950, 'Presentation1.mp4', 336, '/uploads/courses/videos/3aeeb7ea-a9f0-4f84-8353-c49c6a800a93.mp4', 0, 1, 1),
(951, 'Website_record.mp4', 336, '/uploads/courses/videos/1c1ff851-fed8-420a-a14e-6229b95f6104.mp4', 0, 8, 1),
(952, 'Website_record.mp4', 336, '/uploads/courses/videos/739a20fb-ea20-47f1-b8f8-5af9ab9002f5.mp4', 0, 8, 1),
(956, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 338, '/uploads/courses/videos/e4b0af1d-a924-468a-8b0d-8cbfab53bff7.mov', 0, 0, 1),
(957, 'shahadah.mp4', 338, '/uploads/courses/videos/f4fb1f9a-daea-400c-b73e-e99533187205.mp4', 0, 0, 1),
(958, 'shahadah.mp4', 338, '/uploads/courses/videos/f3378620-38fe-4fd5-af17-20d7fa915b4c.mp4', 0, 0, 1),
(959, 'Intro.mov', 338, '/uploads/courses/videos/ffade847-b564-4d07-8685-1dcb8fa2378d.mov', 0, 2, 1),
(960, 'What-is-Html5.mov', 338, '/uploads/courses/videos/b743f0f1-b4eb-4ca1-8cd7-1cb7cc10a725.mov', 0, 3, 1),
(961, 'Text-Editor.mov', 338, '/uploads/courses/videos/34adc10e-3640-4881-a44c-ca0f7eff6124.mov', 0, 3, 1),
(962, 'Semantic.mov', 338, '/uploads/courses/videos/0b2304ed-88e1-402e-91ee-f5de570da4fa.mov', 0, 2, 1),
(963, 'Semantic.mov', 339, '/uploads/courses/videos/7ece169e-5ad5-43a3-a0c7-4f8cfb3e2cdd.mov', 0, 2, 1),
(964, 'What-is-Html5.mov', 339, '/uploads/courses/videos/83d1d34d-a753-44d0-8cc3-76e0e6055ad6.mov', 0, 3, 1),
(965, 'Intro.mov', 340, '/uploads/courses/videos/1138ef75-c72a-405a-a58d-df02578497a0.mov', 0, 2, 1),
(966, 'Text-Editor.mov', 341, '/uploads/courses/videos/68e8023e-61fa-404c-96ef-55727cfc1194.mov', 0, 3, 1),
(967, 'Who_created_allah?.mp4', 342, '/uploads/courses/videos/170e8964-50e5-4bef-aaae-240b5e26cf47.mp4', 0, 2, 1),
(968, 'Presentation3.mp4', 342, '/uploads/courses/videos/d0681ae6-8a07-4769-8513-8a10bbf8e889.mp4', 0, 0, 1),
(969, 'Presentation1.mp4', 342, '/uploads/courses/videos/334b21b8-7ee3-4f27-8720-cacd5d1da6b5.mp4', 0, 1, 1),
(970, 'Website_record.mp4', 342, '/uploads/courses/videos/a20bb523-ed52-40a9-9358-4224fb25d888.mp4', 0, 8, 1),
(971, 'Website_record.mp4', 342, '/uploads/courses/videos/c8c00d33-ef16-4426-9178-cdc5d512d8f0.mp4', 0, 8, 1),
(975, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 344, '/uploads/courses/videos/8bd908b3-0803-4137-b48e-a4af837615f3.mov', 0, 0, 1),
(976, 'shahadah.mp4', 344, '/uploads/courses/videos/ed8696ba-a6f4-4d23-871f-041e8055b37b.mp4', 0, 0, 1),
(977, 'shahadah.mp4', 344, '/uploads/courses/videos/74dd7d26-dd03-4edc-81af-d42b37cc5e7d.mp4', 0, 0, 1),
(978, 'Intro.mov', 344, '/uploads/courses/videos/e17483fe-be51-4a6a-93b6-ab992ac711e4.mov', 0, 2, 1),
(979, 'What-is-Html5.mov', 344, '/uploads/courses/videos/211eb1e0-c175-4069-b84c-81114b16bc8c.mov', 0, 3, 1),
(980, 'Text-Editor.mov', 344, '/uploads/courses/videos/44f21901-90e0-44b8-a557-f1591aad1a91.mov', 0, 3, 1),
(981, 'Semantic.mov', 344, '/uploads/courses/videos/2f02e334-679d-43d3-9376-879901cf8fed.mov', 0, 2, 1),
(982, 'Semantic.mov', 345, '/uploads/courses/videos/d1ba72c1-e395-447d-af6c-66edf1243add.mov', 0, 2, 1),
(983, 'What-is-Html5.mov', 345, '/uploads/courses/videos/0f8d2087-49d6-4394-a57a-76b39c7b9f4a.mov', 0, 3, 1),
(984, 'Intro.mov', 346, '/uploads/courses/videos/5dcd4919-a382-45a9-a916-b49750605dd7.mov', 0, 2, 1),
(985, 'Text-Editor.mov', 347, '/uploads/courses/videos/aeed5ab7-bef2-425e-a8ea-cf93da5d2e1f.mov', 0, 3, 1),
(986, 'Who_created_allah?.mp4', 348, '/uploads/courses/videos/aeaad88e-72c5-48f6-be07-61d58ede8974.mp4', 0, 2, 1),
(987, 'Presentation3.mp4', 348, '/uploads/courses/videos/08707686-74ca-46ab-90af-307ef5267c05.mp4', 0, 0, 1),
(988, 'Presentation1.mp4', 348, '/uploads/courses/videos/ee498c7d-7a18-460f-a9bf-9d5666ddfeea.mp4', 0, 1, 1),
(989, 'Website_record.mp4', 348, '/uploads/courses/videos/ce63bcb4-08e4-48a3-b301-ee564e542e07.mp4', 0, 8, 1),
(990, 'Website_record.mp4', 348, '/uploads/courses/videos/cf65376d-1626-424a-b3c9-0746f09233ef.mp4', 0, 8, 1),
(994, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 350, '/uploads/courses/videos/7b92e448-2da0-43c9-b23a-3accd4e73ba2.mov', 0, 0, 1),
(995, 'shahadah.mp4', 350, '/uploads/courses/videos/5a7ca1d1-33f6-4e9e-82c7-a19893d0999a.mp4', 0, 0, 1),
(996, 'shahadah.mp4', 350, '/uploads/courses/videos/b4071137-b519-4de1-8d2b-90565d2616a0.mp4', 0, 0, 1),
(997, 'Intro.mov', 350, '/uploads/courses/videos/4bd12762-190c-461f-931e-69b172b870cc.mov', 0, 2, 1),
(998, 'What-is-Html5.mov', 350, '/uploads/courses/videos/1d31cacc-d265-48dd-9ab0-70fabad9a745.mov', 0, 3, 1),
(999, 'Text-Editor.mov', 350, '/uploads/courses/videos/2937c4b3-a35d-47ee-bcec-fa31fa0c2a15.mov', 0, 3, 1),
(1000, 'Semantic.mov', 350, '/uploads/courses/videos/c3e7ae71-b7b1-4a49-a2a2-9139e940a7cb.mov', 0, 2, 1),
(1001, 'Semantic.mov', 351, '/uploads/courses/videos/de7e0740-ea2e-455b-b069-ce83ce1e854b.mov', 0, 2, 1),
(1002, 'What-is-Html5.mov', 351, '/uploads/courses/videos/e68f4376-5a31-4ee4-bc73-f28716781772.mov', 0, 3, 1),
(1003, 'Intro.mov', 352, '/uploads/courses/videos/55fadaf1-0e52-4d6b-aa76-b33a355e5da4.mov', 0, 2, 1),
(1004, 'Text-Editor.mov', 353, '/uploads/courses/videos/f413ca21-93a9-4962-b146-3c8ef94a17b4.mov', 0, 3, 1),
(1005, 'Who_created_allah?.mp4', 354, '/uploads/courses/videos/7d1698a8-1567-4169-b935-1ee303f02226.mp4', 0, 2, 1),
(1006, 'Presentation3.mp4', 354, '/uploads/courses/videos/07eda669-cf9b-487f-adfe-990d1c7afd5d.mp4', 0, 0, 1),
(1007, 'Presentation1.mp4', 354, '/uploads/courses/videos/319ced5f-19e4-45f4-814f-0a3a70aa5153.mp4', 0, 1, 1),
(1008, 'Website_record.mp4', 354, '/uploads/courses/videos/51541d9c-f852-4dae-8e01-32015e023813.mp4', 0, 8, 1),
(1009, 'Website_record.mp4', 354, '/uploads/courses/videos/6d03fa67-3112-48ff-b0ff-95d52aa60673.mp4', 0, 8, 1),
(1013, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 356, '/uploads/courses/videos/fcc26a56-0028-4a1f-98d7-a3489d9c956c.mov', 0, 0, 1),
(1014, 'shahadah.mp4', 356, '/uploads/courses/videos/72cd01b1-c371-49de-9e41-c0b722e9bf5f.mp4', 0, 0, 1),
(1015, 'shahadah.mp4', 356, '/uploads/courses/videos/d8bb0eca-bfaa-4690-815a-18996aa746ee.mp4', 0, 0, 1),
(1016, 'Intro.mov', 356, '/uploads/courses/videos/3228f073-c5eb-4e13-89d8-a7da3e500959.mov', 0, 2, 1),
(1017, 'What-is-Html5.mov', 356, '/uploads/courses/videos/0348da17-1096-49e2-a328-ef066c5401ff.mov', 0, 3, 1),
(1018, 'Text-Editor.mov', 356, '/uploads/courses/videos/2bd1aac0-9d72-4f66-8c26-2bd45eecc444.mov', 0, 3, 1),
(1019, 'Semantic.mov', 356, '/uploads/courses/videos/b3b12a00-3e1d-49e3-a82f-23f69f81c992.mov', 0, 2, 1),
(1020, 'Semantic.mov', 357, '/uploads/courses/videos/915b78fe-c33b-48d1-9083-f115953af8b4.mov', 0, 2, 1),
(1021, 'What-is-Html5.mov', 357, '/uploads/courses/videos/56727928-2b77-480e-b55f-8743fc179270.mov', 0, 3, 1),
(1022, 'Intro.mov', 358, '/uploads/courses/videos/211036c8-a34c-414c-9c88-6c099acaa204.mov', 0, 2, 1),
(1023, 'Text-Editor.mov', 359, '/uploads/courses/videos/96d861df-f2b7-4cd7-98a6-80689c4b02d5.mov', 0, 3, 1),
(1024, 'Who_created_allah?.mp4', 360, '/uploads/courses/videos/21c6de53-541d-4781-81b3-67fbbd64ad92.mp4', 0, 2, 1),
(1025, 'Presentation3.mp4', 360, '/uploads/courses/videos/f3ead8e2-32b2-405d-962c-c949e3b9f8fa.mp4', 0, 0, 1),
(1026, 'Presentation1.mp4', 360, '/uploads/courses/videos/ddc2f6e0-8735-4c4e-ad86-e458e978fc2d.mp4', 0, 1, 1),
(1027, 'Website_record.mp4', 360, '/uploads/courses/videos/efe5571b-eb5a-42f8-b54f-86866d07b64c.mp4', 0, 8, 1),
(1028, 'Website_record.mp4', 360, '/uploads/courses/videos/9c08c777-d59b-45b9-bc7a-3ff01bb42c9e.mp4', 0, 8, 1),
(1032, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 362, '/uploads/courses/videos/6cd0d6f2-f610-444e-83ec-155134ceba74.mov', 0, 0, 1),
(1033, 'shahadah.mp4', 362, '/uploads/courses/videos/a84c241f-b33c-4abb-ad41-afd2c75cbcde.mp4', 0, 0, 1),
(1034, 'shahadah.mp4', 362, '/uploads/courses/videos/35d600ba-16a0-4c07-9bfa-6cbfd741be9d.mp4', 0, 0, 1),
(1035, 'Intro.mov', 362, '/uploads/courses/videos/f48a7463-0e14-4875-8fb7-c00f86386ec8.mov', 0, 2, 1),
(1036, 'What-is-Html5.mov', 362, '/uploads/courses/videos/72d0dbbf-30e0-41b7-833c-5a63ac27dc84.mov', 0, 3, 1),
(1037, 'Text-Editor.mov', 362, '/uploads/courses/videos/47b253fb-7d4b-494a-ac4a-9551dae39ac8.mov', 0, 3, 1),
(1038, 'Semantic.mov', 362, '/uploads/courses/videos/6c5a7b89-f235-4eab-8d7c-7de4dd523896.mov', 0, 2, 1),
(1039, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 363, '/uploads/courses/videos/0a83ad24-a37f-41dd-916a-8c1f1e7f7bcc.mov', 0, 0, 1),
(1040, 'shahadah.mp4', 363, '/uploads/courses/videos/74b90762-c003-4361-9daa-213636133469.mp4', 0, 0, 1),
(1041, 'shahadah.mp4', 363, '/uploads/courses/videos/500ddbf0-ce65-46ee-ad48-122af229dae5.mp4', 0, 0, 1),
(1042, 'Intro.mov', 363, '/uploads/courses/videos/f4ed0690-ecd5-42f0-9cb0-0b116e723952.mov', 0, 2, 1),
(1043, 'What-is-Html5.mov', 363, '/uploads/courses/videos/3df44021-5943-4173-8692-6d7ae5e1092c.mov', 0, 3, 1),
(1044, 'Text-Editor.mov', 363, '/uploads/courses/videos/78fa1329-cb40-4ba5-b303-94144c48511d.mov', 0, 3, 1),
(1045, 'Semantic.mov', 363, '/uploads/courses/videos/5dff8040-9f64-4526-abac-3f2de4bee994.mov', 0, 2, 1),
(1046, 'Semantic.mov', 364, '/uploads/courses/videos/25c22940-9fee-4374-b8a2-fe8306d913ab.mov', 0, 2, 1),
(1047, 'What-is-Html5.mov', 364, '/uploads/courses/videos/31c0d677-b7c4-4ed4-b11b-a38f7668119e.mov', 0, 3, 1),
(1048, 'Intro.mov', 365, '/uploads/courses/videos/43d95fd1-8002-493b-96cd-ccf3a556f7f2.mov', 0, 2, 1),
(1049, 'Text-Editor.mov', 366, '/uploads/courses/videos/61cd6107-b450-472d-b0be-aa5bdb9ac2de.mov', 0, 3, 1),
(1050, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 367, '/uploads/courses/videos/561f7418-7bdc-4d50-9362-bf039fb30e64.mov', 0, 0, 1),
(1051, 'shahadah.mp4', 367, '/uploads/courses/videos/5822a5c9-79c4-4b99-9416-ec2b247c5df4.mp4', 0, 0, 1),
(1052, 'shahadah.mp4', 367, '/uploads/courses/videos/e280d230-9d49-4507-815a-b0667241ea3e.mp4', 0, 0, 1),
(1053, 'Intro.mov', 367, '/uploads/courses/videos/0ee0e515-6429-49ef-a2ab-89453ef63b14.mov', 0, 2, 1),
(1054, 'What-is-Html5.mov', 367, '/uploads/courses/videos/d4086c57-94a9-469c-bb2a-5dd70a8d1040.mov', 0, 3, 1),
(1055, 'Text-Editor.mov', 367, '/uploads/courses/videos/f04dd76e-33d9-44f0-964c-780c446a674f.mov', 0, 3, 1),
(1056, 'Semantic.mov', 367, '/uploads/courses/videos/f62e0cc6-f4e6-45d0-a8c8-9aae0e50ee34.mov', 0, 2, 1),
(1057, 'Semantic.mov', 368, '/uploads/courses/videos/f607d2e2-a8dd-4bee-a253-1fe55924c80b.mov', 0, 2, 1),
(1058, 'What-is-Html5.mov', 368, '/uploads/courses/videos/46d67e90-79e8-4f00-8b88-d3201768221e.mov', 0, 3, 1),
(1059, 'Intro.mov', 369, '/uploads/courses/videos/52681ec8-e59a-412c-81cc-6f031ca2b682.mov', 0, 2, 1),
(1060, 'Text-Editor.mov', 370, '/uploads/courses/videos/9700fa9a-0698-455e-9439-acdf965ec55f.mov', 0, 3, 1),
(1061, 'Who_created_allah?.mp4', 371, '/uploads/courses/videos/994442cb-9391-434b-acc6-80c73ffa6ac8.mp4', 0, 2, 1),
(1062, 'Presentation3.mp4', 371, '/uploads/courses/videos/3b6d273c-29bc-4841-ac90-866c56201db8.mp4', 0, 0, 1),
(1063, 'Presentation1.mp4', 371, '/uploads/courses/videos/4cff091b-f770-4c9f-8b09-5175313e92ee.mp4', 0, 1, 1),
(1064, 'Website_record.mp4', 371, '/uploads/courses/videos/686d65cc-53d2-4ca3-b738-352c607f3caa.mp4', 0, 8, 1),
(1065, 'Website_record.mp4', 371, '/uploads/courses/videos/a5490d45-12a3-4549-beca-27223fab914e.mp4', 0, 8, 1),
(1069, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 373, '/uploads/courses/videos/abcc767e-5560-4656-80bd-e0dfba8c8b13.mov', 0, 0, 1),
(1070, 'shahadah.mp4', 373, '/uploads/courses/videos/d57857e1-f7f0-42d7-a441-5abc2337bddf.mp4', 0, 0, 1),
(1071, 'shahadah.mp4', 373, '/uploads/courses/videos/00a2f911-1817-46a9-87ea-112a65736da7.mp4', 0, 0, 1),
(1072, 'Intro.mov', 373, '/uploads/courses/videos/98583961-686e-4cde-8bb1-8f60707ac8d9.mov', 0, 2, 1),
(1073, 'What-is-Html5.mov', 373, '/uploads/courses/videos/42dd3def-7592-43ca-a0f2-4c4ae89082dc.mov', 0, 3, 1),
(1074, 'Text-Editor.mov', 373, '/uploads/courses/videos/8245b173-f15c-472a-a4d5-b528bcf468d0.mov', 0, 3, 1),
(1075, 'Semantic.mov', 373, '/uploads/courses/videos/fe57392e-b368-4f2d-8aba-a013a6c961dd.mov', 0, 2, 1),
(1076, 'Semantic.mov', 374, '/uploads/courses/videos/db2906e3-e1cc-4700-82e7-412d8df1733c.mov', 0, 2, 1),
(1077, 'What-is-Html5.mov', 374, '/uploads/courses/videos/d8f105fd-fd80-4503-8205-4485aacbc875.mov', 0, 3, 1),
(1078, 'Intro.mov', 375, '/uploads/courses/videos/f4bda802-d922-4a4b-941d-95fc47d6f02b.mov', 0, 2, 1),
(1079, 'Text-Editor.mov', 376, '/uploads/courses/videos/f6594034-38ad-4e50-b71d-dd602aad22e1.mov', 0, 3, 1),
(1080, 'Who_created_allah?.mp4', 377, '/uploads/courses/videos/1d234013-8e4a-4f5f-9fb6-6b1a5009721b.mp4', 0, 2, 1),
(1081, 'Presentation3.mp4', 377, '/uploads/courses/videos/b934c62f-4c2b-408e-bc05-49b2b8f76a6a.mp4', 0, 0, 1),
(1082, 'Presentation1.mp4', 377, '/uploads/courses/videos/83724803-5b88-4156-850e-7989dd2a24b1.mp4', 0, 1, 1),
(1083, 'Website_record.mp4', 377, '/uploads/courses/videos/4371cb07-914b-4ef6-a95c-707cb994b033.mp4', 0, 8, 1),
(1084, 'Website_record.mp4', 377, '/uploads/courses/videos/bef081c4-3a18-4e14-a25a-e28010915ea5.mp4', 0, 8, 1),
(1088, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 379, '/uploads/courses/videos/bc14e259-3546-45a9-8b7f-61230c50fae3.mov', 0, 0, 1),
(1089, 'shahadah.mp4', 379, '/uploads/courses/videos/46788a14-fb64-4ee0-9567-0cfe1ffec1aa.mp4', 0, 0, 1),
(1090, 'shahadah.mp4', 379, '/uploads/courses/videos/34eea747-9531-450c-8f3b-0b084cb7e486.mp4', 0, 0, 1),
(1091, 'Intro.mov', 379, '/uploads/courses/videos/d2cc8bb5-3991-4504-b7a0-f28c5757db17.mov', 0, 2, 1),
(1092, 'What-is-Html5.mov', 379, '/uploads/courses/videos/e699a4f8-8f3d-46c6-97ec-3acc395881da.mov', 0, 3, 1),
(1093, 'Text-Editor.mov', 379, '/uploads/courses/videos/679467ca-644f-413e-8a26-bdfef6556f74.mov', 0, 3, 1),
(1094, 'Semantic.mov', 379, '/uploads/courses/videos/1acf8692-7e3d-4519-b4ea-b638b051f121.mov', 0, 2, 1),
(1095, 'Semantic.mov', 380, '/uploads/courses/videos/62247ab1-2d67-46b3-bfbd-d57cd2f27935.mov', 0, 2, 1),
(1096, 'What-is-Html5.mov', 380, '/uploads/courses/videos/9e756bff-10ca-4d50-a899-0461198eb6a0.mov', 0, 3, 1),
(1097, 'Intro.mov', 381, '/uploads/courses/videos/c8ba3808-f83d-4c6f-8e56-3e0b1351d646.mov', 0, 2, 1),
(1098, 'Text-Editor.mov', 382, '/uploads/courses/videos/649adcb8-fded-4839-8a7e-df0f0ee90906.mov', 0, 3, 1),
(1099, 'Who_created_allah?.mp4', 383, '/uploads/courses/videos/a73edb24-a19e-4a43-9753-f28793801231.mp4', 0, 2, 1),
(1100, 'Presentation3.mp4', 383, '/uploads/courses/videos/289c8a83-26c1-4e3d-83e9-0e33d71f6a69.mp4', 0, 0, 1),
(1101, 'Presentation1.mp4', 383, '/uploads/courses/videos/e57f35a9-7a84-4529-b3bb-babae30bc309.mp4', 0, 1, 1),
(1102, 'Website_record.mp4', 383, '/uploads/courses/videos/e5c10864-13ae-4b3b-851a-34bab2ec804a.mp4', 0, 8, 1),
(1103, 'Website_record.mp4', 383, '/uploads/courses/videos/df02f4d6-8437-4b15-af9e-910d7c1bf09c.mp4', 0, 8, 1),
(1107, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 385, '/uploads/courses/videos/8cad1482-9b73-4c9b-9fc0-ea8f34941813.mov', 0, 0, 1),
(1108, 'shahadah.mp4', 385, '/uploads/courses/videos/8e33d109-3930-4126-9dfc-0595f63817ff.mp4', 0, 0, 1),
(1109, 'shahadah.mp4', 385, '/uploads/courses/videos/ea1b9afa-7ef3-4157-9bce-f6f933ba433c.mp4', 0, 0, 1),
(1110, 'Intro.mov', 385, '/uploads/courses/videos/5feaf25b-df90-4607-91d8-de964b168a6b.mov', 0, 2, 1),
(1111, 'What-is-Html5.mov', 385, '/uploads/courses/videos/2f7c4617-b2b2-467e-bbd6-3174dcb180a2.mov', 0, 3, 1),
(1112, 'Text-Editor.mov', 385, '/uploads/courses/videos/8058563d-486a-497a-82b9-eaca98fc6900.mov', 0, 3, 1),
(1113, 'Semantic.mov', 385, '/uploads/courses/videos/1640a80f-acf8-4637-8274-5f9b299d6993.mov', 0, 2, 1),
(1114, 'Semantic.mov', 386, '/uploads/courses/videos/5b6194bd-bc1d-40ce-86cd-8592263f6c2a.mov', 0, 2, 1),
(1115, 'What-is-Html5.mov', 386, '/uploads/courses/videos/bd798e99-70a6-4603-a6f3-344aa7efecfc.mov', 0, 3, 1),
(1116, 'Intro.mov', 387, '/uploads/courses/videos/63bc516e-caf4-441a-bb8f-328bd16f5318.mov', 0, 2, 1),
(1117, 'Text-Editor.mov', 388, '/uploads/courses/videos/4d0a3394-6df6-4053-a97b-b009bca692ca.mov', 0, 3, 1),
(1118, 'Who_created_allah?.mp4', 389, '/uploads/courses/videos/53055880-c2c6-42a4-ba08-d97277c70099.mp4', 0, 2, 1),
(1119, 'Presentation3.mp4', 389, '/uploads/courses/videos/ee9cd798-b802-40e2-bbd6-a6ac822f5515.mp4', 0, 0, 1),
(1120, 'Presentation1.mp4', 389, '/uploads/courses/videos/be4b3f79-4714-4352-b513-934478883fd2.mp4', 0, 1, 1),
(1121, 'Website_record.mp4', 389, '/uploads/courses/videos/5640066f-168d-4c26-9079-d53f8f6c3552.mp4', 0, 8, 1),
(1122, 'Website_record.mp4', 389, '/uploads/courses/videos/3bd5f106-0cc9-4651-b54c-f746e569812e.mp4', 0, 8, 1),
(1126, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 391, '/uploads/courses/videos/71bc7b04-e3f7-4908-a1de-63d3a6ca8ae5.mov', 0, 0, 1),
(1127, 'shahadah.mp4', 391, '/uploads/courses/videos/32074834-21c4-4f6f-bbef-cf656b936b38.mp4', 0, 0, 1),
(1128, 'shahadah.mp4', 391, '/uploads/courses/videos/d57a69ac-9494-4021-b7cd-f0b70ae15e1e.mp4', 0, 0, 1),
(1129, 'Intro.mov', 391, '/uploads/courses/videos/e22d6332-7d8e-43a4-8f88-0ef1c9c96e9f.mov', 0, 2, 1),
(1130, 'What-is-Html5.mov', 391, '/uploads/courses/videos/9be56090-744e-4c00-999a-61f2ca2b1185.mov', 0, 3, 1),
(1131, 'Text-Editor.mov', 391, '/uploads/courses/videos/c9d74c23-05dd-40ae-a949-171144ef7452.mov', 0, 3, 1),
(1132, 'Semantic.mov', 391, '/uploads/courses/videos/456c52ff-858e-45cf-a062-685eed1bdf11.mov', 0, 2, 1),
(1133, 'Semantic.mov', 392, '/uploads/courses/videos/49f77aac-0b61-4125-8c69-e8a66cc4dc23.mov', 0, 2, 1),
(1134, 'What-is-Html5.mov', 392, '/uploads/courses/videos/c36686d2-b552-4a74-be2b-3f6b6c84c6e7.mov', 0, 3, 1),
(1135, 'Intro.mov', 393, '/uploads/courses/videos/b3ee953c-9650-49b3-91d7-48fd9dc80d40.mov', 0, 2, 1),
(1136, 'Text-Editor.mov', 394, '/uploads/courses/videos/1d731240-01f0-406b-9248-1037c006ef0b.mov', 0, 3, 1),
(1137, 'Who_created_allah?.mp4', 395, '/uploads/courses/videos/7904cb41-7869-4dfe-9d9c-c68e8192c9ae.mp4', 0, 2, 1),
(1138, 'Presentation3.mp4', 395, '/uploads/courses/videos/63071f39-a54a-47c3-9541-03f17180d1cc.mp4', 0, 0, 1),
(1139, 'Presentation1.mp4', 395, '/uploads/courses/videos/97b1ce2b-7e3f-42a2-b4ab-ac70176e5925.mp4', 0, 1, 1),
(1140, 'Website_record.mp4', 395, '/uploads/courses/videos/31761249-cd96-469f-b665-620df593677e.mp4', 0, 8, 1),
(1141, 'Website_record.mp4', 395, '/uploads/courses/videos/7bb2c7bc-ff3d-45fc-b721-d5b4821477d9.mp4', 0, 8, 1),
(1145, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 397, '/uploads/courses/videos/408a274f-06ce-4b43-9927-56f7c4573310.mov', 0, 0, 1),
(1146, 'shahadah.mp4', 397, '/uploads/courses/videos/beafd8c5-032b-457d-9fef-03dabf443db7.mp4', 0, 0, 1),
(1147, 'shahadah.mp4', 397, '/uploads/courses/videos/44f127a9-bbe4-4f4e-b3a4-6573263f225c.mp4', 0, 0, 1),
(1148, 'Intro.mov', 397, '/uploads/courses/videos/7e8a791e-7d81-497c-88f8-00ded1c15aea.mov', 0, 2, 1),
(1149, 'What-is-Html5.mov', 397, '/uploads/courses/videos/118b0f9b-086a-4b06-98a3-7c9cf134c6a4.mov', 0, 3, 1),
(1150, 'Text-Editor.mov', 397, '/uploads/courses/videos/cd24b195-5c37-452c-9c02-ed17701e6d5b.mov', 0, 3, 1),
(1151, 'Semantic.mov', 397, '/uploads/courses/videos/e33de7d9-f28c-4274-9530-660bd3ff1e69.mov', 0, 2, 1),
(1152, 'Semantic.mov', 398, '/uploads/courses/videos/f315adc7-8112-4910-a687-8c72a2a2247e.mov', 0, 2, 1),
(1153, 'What-is-Html5.mov', 398, '/uploads/courses/videos/ea15835e-da18-4c68-9702-7b27303dba0f.mov', 0, 3, 1),
(1154, 'Intro.mov', 399, '/uploads/courses/videos/dc1b45b1-8c72-4046-837a-482da43b3f0d.mov', 0, 2, 1),
(1155, 'Text-Editor.mov', 400, '/uploads/courses/videos/b06985bb-cffb-46aa-b13f-03f3b723dacc.mov', 0, 3, 1),
(1156, 'Who_created_allah?.mp4', 401, '/uploads/courses/videos/afba2c37-9ea3-4c9a-8e0e-13b2ad0b015d.mp4', 0, 2, 1),
(1157, 'Presentation3.mp4', 401, '/uploads/courses/videos/a007f977-8bdf-4ee7-9153-0d97e157b643.mp4', 0, 0, 1),
(1158, 'Presentation1.mp4', 401, '/uploads/courses/videos/606e544d-2198-4c40-abb2-54226e0ed9bd.mp4', 0, 1, 1),
(1159, 'Website_record.mp4', 401, '/uploads/courses/videos/a775b1d0-21e6-4244-ae3b-c165053c118c.mp4', 0, 8, 1),
(1160, 'Website_record.mp4', 401, '/uploads/courses/videos/06047023-f35d-48f3-bfdb-b0ba9af3fed3.mp4', 0, 8, 1),
(1164, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 403, '/uploads/courses/videos/0241facd-8cae-4c72-be1f-90c6279f7dc5.mov', 0, 0, 1),
(1165, 'shahadah.mp4', 403, '/uploads/courses/videos/d4e9ecfe-ad79-4af3-84c4-5a146afd0e72.mp4', 0, 0, 1),
(1166, 'shahadah.mp4', 403, '/uploads/courses/videos/623a96c6-a333-469f-963f-623958a81c01.mp4', 0, 0, 1),
(1167, 'Intro.mov', 403, '/uploads/courses/videos/716296e1-2aaf-43d0-862d-5573a733cdea.mov', 0, 2, 1),
(1168, 'What-is-Html5.mov', 403, '/uploads/courses/videos/b3c75770-2d5b-4bb0-b154-a460e1b2beb3.mov', 0, 3, 1),
(1169, 'Text-Editor.mov', 403, '/uploads/courses/videos/620e6a59-42d1-43a8-9430-cf9671764d34.mov', 0, 3, 1),
(1170, 'Semantic.mov', 403, '/uploads/courses/videos/ff8872e3-a8d2-4f05-94b9-868241b7a1a5.mov', 0, 2, 1),
(1171, 'Semantic.mov', 404, '/uploads/courses/videos/242adf21-9b2a-4d00-8790-3b69f2738378.mov', 0, 2, 1),
(1172, 'What-is-Html5.mov', 404, '/uploads/courses/videos/c3b821fb-511c-46f9-924d-4bcf29f3e5b9.mov', 0, 3, 1),
(1173, 'Intro.mov', 405, '/uploads/courses/videos/eb4a16d0-d581-49ca-8135-03a5e2c934dd.mov', 0, 2, 1),
(1174, 'Text-Editor.mov', 406, '/uploads/courses/videos/6cda6172-4fa9-4ee9-a511-2e0d297bfa1d.mov', 0, 3, 1),
(1175, 'Who_created_allah?.mp4', 407, '/uploads/courses/videos/3db2e421-d69f-49d3-a287-be8cc07762a9.mp4', 0, 2, 1),
(1176, 'Presentation3.mp4', 407, '/uploads/courses/videos/a4758255-9f95-4c94-a955-66fe1d13030d.mp4', 0, 0, 1),
(1177, 'Presentation1.mp4', 407, '/uploads/courses/videos/9d095c73-12f9-40c2-ad62-178fa780907b.mp4', 0, 1, 1),
(1178, 'Website_record.mp4', 407, '/uploads/courses/videos/bf66c83e-077a-4aaf-860e-3e86de2f9fdb.mp4', 0, 8, 1),
(1179, 'Website_record.mp4', 407, '/uploads/courses/videos/c814774a-28b1-49d0-8efc-3dfd8798dd32.mp4', 0, 8, 1),
(1183, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 409, '/uploads/courses/videos/494f45eb-2817-4c63-b99d-9fdfe98b3b62.mov', 0, 0, 1),
(1184, 'shahadah.mp4', 409, '/uploads/courses/videos/f501e33e-cf18-4237-bdb0-cfe6b7558a4c.mp4', 0, 0, 1),
(1185, 'shahadah.mp4', 409, '/uploads/courses/videos/9a5522f5-e3b9-40f0-8e6e-917a254a0c26.mp4', 0, 0, 1),
(1186, 'Intro.mov', 409, '/uploads/courses/videos/1e4d4e1f-86cb-42bd-873a-a28cf63aa159.mov', 0, 2, 1),
(1187, 'What-is-Html5.mov', 409, '/uploads/courses/videos/1acd84d7-337a-4130-a4c8-9c45d02678ee.mov', 0, 3, 1),
(1188, 'Text-Editor.mov', 409, '/uploads/courses/videos/d622cb23-0e7a-4add-aafa-e8eea5b9052b.mov', 0, 3, 1),
(1189, 'Semantic.mov', 409, '/uploads/courses/videos/540ff41f-f550-4e1c-be4f-28d6f65cfe35.mov', 0, 2, 1),
(1190, 'Semantic.mov', 410, '/uploads/courses/videos/9d518c30-e89b-49d4-8c25-2cef95e79d81.mov', 0, 2, 1),
(1191, 'What-is-Html5.mov', 410, '/uploads/courses/videos/a84ba624-46bb-42b3-8015-3fdc73645b48.mov', 0, 3, 1),
(1192, 'Intro.mov', 411, '/uploads/courses/videos/2586f2b3-8d78-42ad-b615-3ab6cf6b6812.mov', 0, 2, 1),
(1193, 'Text-Editor.mov', 412, '/uploads/courses/videos/deee9d30-e0e4-4eab-b647-2521db2077bb.mov', 0, 3, 1),
(1194, 'Who_created_allah?.mp4', 413, '/uploads/courses/videos/26c6bad2-4a40-4010-8753-add6f9eee504.mp4', 0, 2, 1),
(1195, 'Presentation3.mp4', 413, '/uploads/courses/videos/0a66d757-3f74-4b2a-8203-3af61163108a.mp4', 0, 0, 1),
(1196, 'Presentation1.mp4', 413, '/uploads/courses/videos/1a55af10-7c59-47f8-8944-56006ac494fd.mp4', 0, 1, 1),
(1197, 'Website_record.mp4', 413, '/uploads/courses/videos/ea3b069e-b824-48a4-a2c6-fd2d0bd7ce16.mp4', 0, 8, 1),
(1198, 'Website_record.mp4', 413, '/uploads/courses/videos/2f6de831-c414-4c0a-8de8-f007a8314770.mp4', 0, 8, 1),
(1202, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 415, '/uploads/courses/videos/e91c887c-3f8f-4b74-95c7-0fd97bc1d359.mov', 0, 0, 1),
(1203, 'shahadah.mp4', 415, '/uploads/courses/videos/be5e754b-b78c-409d-a9dc-b623bab71185.mp4', 0, 0, 1),
(1204, 'shahadah.mp4', 415, '/uploads/courses/videos/f3618961-bb09-47d2-a566-2827703a3690.mp4', 0, 0, 1),
(1205, 'Intro.mov', 415, '/uploads/courses/videos/ebd94190-61eb-4118-9af6-6af923e251cb.mov', 0, 2, 1),
(1206, 'What-is-Html5.mov', 415, '/uploads/courses/videos/1b6e07ed-beca-416c-9a78-cc241da5247e.mov', 0, 3, 1),
(1207, 'Text-Editor.mov', 415, '/uploads/courses/videos/b75312de-443e-43f0-804d-403817b20199.mov', 0, 3, 1),
(1208, 'Semantic.mov', 415, '/uploads/courses/videos/7d356c87-92ff-47dd-9871-42068f166c34.mov', 0, 2, 1),
(1209, 'Semantic.mov', 416, '/uploads/courses/videos/4c182b73-a4ca-4228-9e01-4a6289e55470.mov', 0, 2, 1),
(1210, 'What-is-Html5.mov', 416, '/uploads/courses/videos/47568fa4-0de0-4850-9406-b7e869f83a97.mov', 0, 3, 1),
(1211, 'Intro.mov', 417, '/uploads/courses/videos/bd8c3ae0-8686-4691-8c99-a7170dcab5a4.mov', 0, 2, 1),
(1212, 'Text-Editor.mov', 418, '/uploads/courses/videos/ad41d11a-b6b8-44b4-8304-5a43a5905a31.mov', 0, 3, 1),
(1213, 'Who_created_allah?.mp4', 419, '/uploads/courses/videos/5783e483-4a6d-4349-9dba-f1c7832fa2c2.mp4', 0, 2, 1),
(1214, 'Presentation3.mp4', 419, '/uploads/courses/videos/c03ae7d4-2f3b-4d78-b379-720d0c6f195e.mp4', 0, 0, 1),
(1215, 'Presentation1.mp4', 419, '/uploads/courses/videos/af7ce1a5-2ddb-4947-b27b-77f356e20424.mp4', 0, 1, 1),
(1216, 'Website_record.mp4', 419, '/uploads/courses/videos/1682a58b-504d-47b1-89ab-ad6633423d24.mp4', 0, 8, 1),
(1217, 'Website_record.mp4', 419, '/uploads/courses/videos/79a697b0-3faa-4ebd-85b5-813ff6ce07c4.mp4', 0, 8, 1),
(1218, 'Website_record.mp4', 420, '/uploads/courses/videos/f1c0fc73-9147-4f3d-b374-9f7403bd7824.mp4', 0, 8, 1),
(1219, 'Website_record.mp4', 420, '/uploads/courses/videos/e72784ca-e1c0-48a9-8ce5-a3d90f71b0c4.mp4', 0, 8, 1),
(1220, 'Website_record.mp4', 420, '/uploads/courses/videos/9a7df81e-b8ea-46bb-ba19-3034645390a2.mp4', 0, 8, 1),
(1221, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 421, '/uploads/courses/videos/00a4a45e-1eeb-4e8e-a89f-fe172cc10a62.mov', 0, 0, 1),
(1222, 'shahadah.mp4', 421, '/uploads/courses/videos/7b606153-cfe4-4cbc-b90b-9e2f9b0fe81b.mp4', 0, 0, 1),
(1223, 'shahadah.mp4', 421, '/uploads/courses/videos/6d2584fd-2797-429a-b3e5-0ae4de1d5f3c.mp4', 0, 0, 1),
(1224, 'Intro.mov', 421, '/uploads/courses/videos/8e697477-62ac-4b9f-a36f-4b0f480cab03.mov', 0, 2, 1),
(1225, 'What-is-Html5.mov', 421, '/uploads/courses/videos/fdb3f760-2ca6-47ab-adde-6b836713c730.mov', 0, 3, 1),
(1226, 'Text-Editor.mov', 421, '/uploads/courses/videos/eb160079-0495-4d08-8f16-837bb2c399c1.mov', 0, 3, 1),
(1227, 'Semantic.mov', 421, '/uploads/courses/videos/220bf2ea-230e-4e3a-ba97-0c62de700904.mov', 0, 2, 1),
(1228, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 422, '/uploads/courses/videos/0f8657f0-660a-4bed-989f-c7fbfd265bf1.mov', 0, 0, 1),
(1229, 'shahadah.mp4', 422, '/uploads/courses/videos/6067e5c1-7475-448f-a6f6-dbca56df3f79.mp4', 0, 0, 1),
(1230, 'shahadah.mp4', 422, '/uploads/courses/videos/ddcf238c-b961-441b-8985-ad1446879e31.mp4', 0, 0, 1),
(1231, 'Intro.mov', 422, '/uploads/courses/videos/5c67b0b5-1f31-48f3-9b12-57d9bf895a46.mov', 0, 2, 1),
(1232, 'What-is-Html5.mov', 422, '/uploads/courses/videos/88a62094-e80a-458a-9e58-81a7063a3cd5.mov', 0, 3, 1),
(1233, 'Text-Editor.mov', 422, '/uploads/courses/videos/5add4a8a-9248-427c-8ffa-6cf681af539d.mov', 0, 3, 1),
(1234, 'Semantic.mov', 422, '/uploads/courses/videos/7e0b80e3-58d7-4b79-a8a7-4d099022c6cf.mov', 0, 2, 1),
(1235, 'Semantic.mov', 423, '/uploads/courses/videos/ac0666f5-0a5a-4b59-a115-d865bf366b44.mov', 0, 2, 1),
(1236, 'What-is-Html5.mov', 423, '/uploads/courses/videos/14ed15ad-e53a-4136-925e-3a70750d02de.mov', 0, 3, 1),
(1237, 'Intro.mov', 424, '/uploads/courses/videos/b8b65ff3-cf24-461a-aaa0-9c4174761d8d.mov', 0, 2, 1),
(1238, 'Text-Editor.mov', 425, '/uploads/courses/videos/c632a6d0-9264-42b8-a644-37888feecbe4.mov', 0, 3, 1),
(1239, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 426, '/uploads/courses/videos/2cb9323b-c7c6-4252-a8ca-c2d1138d1bf2.mov', 0, 0, 1),
(1240, 'shahadah.mp4', 426, '/uploads/courses/videos/5274dd3f-15e3-423c-a34f-a5ae106ef327.mp4', 0, 0, 1),
(1241, 'shahadah.mp4', 426, '/uploads/courses/videos/ccea09b0-19bb-4c32-9822-65a868f1dcab.mp4', 0, 0, 1),
(1242, 'Intro.mov', 426, '/uploads/courses/videos/4ee14d15-67a1-4f7b-8abb-1cdacf278261.mov', 0, 2, 1),
(1243, 'What-is-Html5.mov', 426, '/uploads/courses/videos/87b23b92-c764-4727-a57e-bd549033ec8e.mov', 0, 3, 1),
(1244, 'Text-Editor.mov', 426, '/uploads/courses/videos/c756b263-a976-4562-9392-79a594830a3a.mov', 0, 3, 1),
(1245, 'Semantic.mov', 426, '/uploads/courses/videos/39d545f9-eef7-40e2-a3a5-83ddf2be6592.mov', 0, 2, 1),
(1246, 'Semantic.mov', 427, '/uploads/courses/videos/6dc4c0cf-c492-4d92-88dd-771c0b5fcbf9.mov', 0, 2, 1),
(1247, 'What-is-Html5.mov', 427, '/uploads/courses/videos/49d43c69-c54d-46e7-a35e-7567bb1c0e7c.mov', 0, 3, 1),
(1248, 'Intro.mov', 428, '/uploads/courses/videos/1ffbcf34-0998-446f-ad19-c993713769b6.mov', 0, 2, 1),
(1249, 'Text-Editor.mov', 429, '/uploads/courses/videos/61462923-52ea-48dd-b175-27d0e3de67f1.mov', 0, 3, 1),
(1250, 'Who_created_allah?.mp4', 430, '/uploads/courses/videos/5bf2f755-6b01-4201-a12f-288d21ab4029.mp4', 0, 2, 1),
(1251, 'Presentation3.mp4', 430, '/uploads/courses/videos/e58eee94-7b7d-42d9-89c0-7b720737977c.mp4', 0, 0, 1),
(1252, 'Presentation1.mp4', 430, '/uploads/courses/videos/f8d35ddb-633e-41f7-b416-d9ccf952940e.mp4', 0, 1, 1),
(1253, 'Website_record.mp4', 430, '/uploads/courses/videos/a4d28bb3-922f-4b58-adff-b4dda180e36e.mp4', 0, 8, 1),
(1254, 'Website_record.mp4', 430, '/uploads/courses/videos/0021d6ef-0445-412f-a6b9-b85dacd72201.mp4', 0, 8, 1),
(1255, 'Website_record.mp4', 431, '/uploads/courses/videos/54edd6dc-9e37-4969-9d4e-72fb03d12194.mp4', 0, 8, 1),
(1256, 'Website_record.mp4', 431, '/uploads/courses/videos/85769933-4c29-4391-838b-4b6cec0608ce.mp4', 0, 8, 1),
(1257, 'Website_record.mp4', 431, '/uploads/courses/videos/12a5406c-bbc7-498b-93f2-a2f61ef20769.mp4', 0, 8, 1),
(1258, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 432, '/uploads/courses/videos/63085962-563f-4a64-8bb4-5307c4541458.mov', 0, 0, 1),
(1259, 'shahadah.mp4', 432, '/uploads/courses/videos/2f917243-82be-4954-a3c4-daf6a58c5eb5.mp4', 0, 0, 1),
(1260, 'shahadah.mp4', 432, '/uploads/courses/videos/665870c5-7fde-4c4e-821f-8b6630a9a638.mp4', 0, 0, 1),
(1261, 'Intro.mov', 432, '/uploads/courses/videos/1fde39b5-247a-4c20-83ad-843b65693acd.mov', 0, 2, 1),
(1262, 'What-is-Html5.mov', 432, '/uploads/courses/videos/51c6baed-e49d-4657-a507-943cbcb7d279.mov', 0, 3, 1),
(1263, 'Text-Editor.mov', 432, '/uploads/courses/videos/81069b47-396b-4bd9-80b6-194e26d2e303.mov', 0, 3, 1),
(1264, 'Semantic.mov', 432, '/uploads/courses/videos/ab81c095-d2a4-4036-92a7-c9161821094a.mov', 0, 2, 1),
(1265, 'Semantic.mov', 433, '/uploads/courses/videos/acf4bd2d-38c6-46e7-8e94-49f93d52ab05.mov', 0, 2, 1),
(1266, 'What-is-Html5.mov', 433, '/uploads/courses/videos/318a9c64-bf93-4e88-8bd9-6d30c58440ec.mov', 0, 3, 1),
(1267, 'Intro.mov', 434, '/uploads/courses/videos/cceecdfb-cbb9-4650-8b4f-c0ed230e1711.mov', 0, 2, 1),
(1268, 'Text-Editor.mov', 435, '/uploads/courses/videos/7be80628-af67-4c0f-9f78-83a9c7f9a0bb.mov', 0, 3, 1),
(1269, 'Who_created_allah?.mp4', 436, '/uploads/courses/videos/b1523089-2342-4c52-95ed-c32eb751f522.mp4', 0, 2, 1),
(1270, 'Presentation3.mp4', 436, '/uploads/courses/videos/2fe8a281-0ae3-4b16-aaa0-dc99cf1d9864.mp4', 0, 0, 1),
(1271, 'Presentation1.mp4', 436, '/uploads/courses/videos/72c7c3de-ddaa-4c1b-bc66-b1c4a202333c.mp4', 0, 1, 1),
(1272, 'Website_record.mp4', 436, '/uploads/courses/videos/7b86c457-46a4-4d82-966b-f66d5f159b56.mp4', 0, 8, 1),
(1273, 'Website_record.mp4', 436, '/uploads/courses/videos/189ee0fc-9ce6-4aa1-a50f-9546fdf374ec.mp4', 0, 8, 1),
(1274, 'Website_record.mp4', 437, '/uploads/courses/videos/1ddac91d-4915-468a-a503-43c41f6c07ef.mp4', 0, 8, 1),
(1275, 'Website_record.mp4', 437, '/uploads/courses/videos/1e0a38fb-ef03-4059-a111-da0606defdc3.mp4', 0, 8, 1),
(1276, 'Website_record.mp4', 437, '/uploads/courses/videos/82ae96d5-fee4-4514-9294-45304eb3594e.mp4', 0, 8, 1),
(1277, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 438, '/uploads/courses/videos/2568d2c9-7d37-4fda-bdff-84c0c7987874.mov', 0, 0, 1),
(1278, 'shahadah.mp4', 438, '/uploads/courses/videos/e66f1e83-3667-4d60-80e4-7299ccbe7157.mp4', 0, 0, 1),
(1279, 'shahadah.mp4', 438, '/uploads/courses/videos/67242f13-33f1-472f-9527-497bde1da78b.mp4', 0, 0, 1),
(1280, 'Intro.mov', 438, '/uploads/courses/videos/20ad2876-cbc2-4ffd-b999-dcd245627847.mov', 0, 2, 1),
(1281, 'What-is-Html5.mov', 438, '/uploads/courses/videos/3e6a600c-22da-4ec0-9fd9-32b86871704f.mov', 0, 3, 1),
(1282, 'Text-Editor.mov', 438, '/uploads/courses/videos/325945f2-726c-449c-aca9-131a75932331.mov', 0, 3, 1),
(1283, 'Semantic.mov', 438, '/uploads/courses/videos/cec45f79-8ac4-4288-9acc-98bb7ca26e52.mov', 0, 2, 1),
(1284, 'Semantic.mov', 439, '/uploads/courses/videos/992d2376-0bbb-44f0-a958-286b8366b47a.mov', 0, 2, 1),
(1285, 'What-is-Html5.mov', 439, '/uploads/courses/videos/5c0348ac-33de-4dae-a8e9-f0b6156774db.mov', 0, 3, 1),
(1286, 'Intro.mov', 440, '/uploads/courses/videos/d9fdc075-eea3-4dea-8300-6e1c4c7d4067.mov', 0, 2, 1),
(1287, 'Text-Editor.mov', 441, '/uploads/courses/videos/ae337afc-2cd3-4dbe-947f-e6acd85fc2eb.mov', 0, 3, 1),
(1288, 'Who_created_allah?.mp4', 442, '/uploads/courses/videos/607c2c5a-8f70-482c-9b21-40c67d737b1d.mp4', 0, 2, 1),
(1289, 'Presentation3.mp4', 442, '/uploads/courses/videos/edfccfc4-8436-419f-8170-41c7d1b0c224.mp4', 0, 0, 1),
(1290, 'Presentation1.mp4', 442, '/uploads/courses/videos/f7813067-d57d-431a-b547-6a7d49657eb3.mp4', 0, 1, 1),
(1291, 'Website_record.mp4', 442, '/uploads/courses/videos/db061937-5774-4bf7-b14a-ba2e0b8efbdd.mp4', 0, 8, 1),
(1292, 'Website_record.mp4', 442, '/uploads/courses/videos/1e3ee093-c445-4b18-9dea-52be0e6db7a4.mp4', 0, 8, 1),
(1293, 'Website_record.mp4', 443, '/uploads/courses/videos/e30d9d1a-9b5c-417c-ad8a-db0334992b14.mp4', 0, 8, 1),
(1294, 'Website_record.mp4', 443, '/uploads/courses/videos/fddf4924-80e9-423d-8ff1-43dba808b24a.mp4', 0, 8, 1),
(1295, 'Website_record.mp4', 443, '/uploads/courses/videos/d319d996-452c-48e9-ad02-634e202e1182.mp4', 0, 8, 1),
(1296, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 444, '/uploads/courses/videos/d7ec4ad9-43c6-4b1d-8f74-4b61f4fc4287.mov', 0, 0, 1),
(1297, 'shahadah.mp4', 444, '/uploads/courses/videos/09de9dc0-586a-49da-a1ba-fb084108c63c.mp4', 0, 0, 1),
(1298, 'shahadah.mp4', 444, '/uploads/courses/videos/6b95248b-4892-4dfd-9c97-74458d7f0236.mp4', 0, 0, 1),
(1299, 'Intro.mov', 444, '/uploads/courses/videos/3a089b9a-6c02-42e1-a659-82d4dd2d1371.mov', 0, 2, 1),
(1300, 'What-is-Html5.mov', 444, '/uploads/courses/videos/f5de9f4e-7357-4ec8-b08f-973eba234d7e.mov', 0, 3, 1),
(1301, 'Text-Editor.mov', 444, '/uploads/courses/videos/392b47e1-9948-427e-a28c-77fe780ca709.mov', 0, 3, 1),
(1302, 'Semantic.mov', 444, '/uploads/courses/videos/e84985ce-0e15-41f5-b2f7-44105597b45d.mov', 0, 2, 1),
(1303, 'Semantic.mov', 445, '/uploads/courses/videos/9904f555-6dfc-4acd-a6bb-5f95bd0dd072.mov', 0, 2, 1),
(1304, 'What-is-Html5.mov', 445, '/uploads/courses/videos/bf4ff304-a5b7-4082-b16b-30927cd1f1d4.mov', 0, 3, 1),
(1305, 'Intro.mov', 446, '/uploads/courses/videos/214bae99-bf6e-4a4e-a456-632e7d4324ca.mov', 0, 2, 1),
(1306, 'Text-Editor.mov', 447, '/uploads/courses/videos/8542cf71-73bb-4acb-8186-45d7fe214477.mov', 0, 3, 1),
(1307, 'Who_created_allah?.mp4', 448, '/uploads/courses/videos/9b90fb8f-08e5-4265-bf83-e59cd3ca174e.mp4', 0, 2, 1),
(1308, 'Presentation3.mp4', 448, '/uploads/courses/videos/3e007739-5c6a-4a80-a6d0-a5a113907959.mp4', 0, 0, 1),
(1309, 'Presentation1.mp4', 448, '/uploads/courses/videos/02a3e57e-3042-417a-b96c-389686877575.mp4', 0, 1, 1),
(1310, 'Website_record.mp4', 448, '/uploads/courses/videos/89746eae-eeee-4477-a888-e2ad78edea2c.mp4', 0, 8, 1),
(1311, 'Website_record.mp4', 448, '/uploads/courses/videos/0ab989fa-25e3-48c6-a1ae-7775f02eef5d.mp4', 0, 8, 1),
(1312, 'Website_record.mp4', 449, '/uploads/courses/videos/16f958e1-1736-421b-903d-2e15de63804b.mp4', 0, 8, 1),
(1313, 'Website_record.mp4', 449, '/uploads/courses/videos/90396f8d-3ef9-4fea-84dd-ebefd1fa2335.mp4', 0, 8, 1),
(1314, 'Website_record.mp4', 449, '/uploads/courses/videos/9af552cd-3215-4fe5-a856-d0115f2d0ef6.mp4', 0, 8, 1),
(1315, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 450, '/uploads/courses/videos/8b0ca5cb-a9bc-4514-ad40-59ce326b8de0.mov', 0, 0, 1),
(1316, 'shahadah.mp4', 450, '/uploads/courses/videos/5c184b16-c7d9-4cdf-bc24-0c8e0ca2b3b8.mp4', 0, 0, 1),
(1317, 'shahadah.mp4', 450, '/uploads/courses/videos/933a88f8-0972-4bcc-bafc-f4cc96575bb1.mp4', 0, 0, 1),
(1318, 'Intro.mov', 450, '/uploads/courses/videos/36824cf3-a688-4a8e-bcf8-9534dc8b9990.mov', 0, 2, 1),
(1319, 'What-is-Html5.mov', 450, '/uploads/courses/videos/0c531264-e414-4071-a03d-df9a7a202762.mov', 0, 3, 1),
(1320, 'Text-Editor.mov', 450, '/uploads/courses/videos/fe5e538e-9b98-41cf-96d9-e2e528d2e8e1.mov', 0, 3, 1),
(1321, 'Semantic.mov', 450, '/uploads/courses/videos/0d0987c5-17e5-43ce-a2b8-48a92d1a9a85.mov', 0, 2, 1),
(1322, 'Semantic.mov', 451, '/uploads/courses/videos/728b7f9b-a976-4b70-9bdd-288f6876573b.mov', 0, 2, 1),
(1323, 'What-is-Html5.mov', 451, '/uploads/courses/videos/651d78b2-dd43-4112-a896-50b98a59e2ab.mov', 0, 3, 1),
(1324, 'Intro.mov', 452, '/uploads/courses/videos/e6359ec0-be0f-4c8e-82ea-efcb81271916.mov', 0, 2, 1),
(1325, 'Text-Editor.mov', 453, '/uploads/courses/videos/25d20095-cd6f-4d3f-bf2f-7ad6027a8e7b.mov', 0, 3, 1),
(1326, 'Who_created_allah?.mp4', 454, '/uploads/courses/videos/93892888-cc24-40d2-b28c-8a071c773fb9.mp4', 0, 2, 1),
(1327, 'Presentation3.mp4', 454, '/uploads/courses/videos/e038ce0a-4970-4d52-bc70-56d08bbb5bf9.mp4', 0, 0, 1),
(1328, 'Presentation1.mp4', 454, '/uploads/courses/videos/4f63921f-bd19-42c5-85ac-f67264753009.mp4', 0, 1, 1),
(1329, 'Website_record.mp4', 454, '/uploads/courses/videos/af10c416-7b85-4b30-9abd-3f2bc658350f.mp4', 0, 8, 1),
(1330, 'Website_record.mp4', 454, '/uploads/courses/videos/c55eb884-f9f9-4c03-a1bb-e2f29b792932.mp4', 0, 8, 1),
(1331, 'Website_record.mp4', 455, '/uploads/courses/videos/9f327d5a-e824-4ba9-99a7-7415e1dbedb2.mp4', 0, 8, 1),
(1332, 'Website_record.mp4', 455, '/uploads/courses/videos/bd14b74e-ed87-4825-917a-603caf5e02cd.mp4', 0, 8, 1),
(1333, 'Website_record.mp4', 455, '/uploads/courses/videos/e48e7acc-2388-4ac8-865a-da60140ccff3.mp4', 0, 8, 1),
(1334, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 456, '/uploads/courses/videos/84bbc51b-6c90-4115-ba10-86e839447f32.mov', 0, 0, 1),
(1335, 'shahadah.mp4', 456, '/uploads/courses/videos/55f3fd4f-b130-414d-8ef7-2d26ad56c5c1.mp4', 0, 0, 1),
(1336, 'shahadah.mp4', 456, '/uploads/courses/videos/bc201128-18aa-4d9b-91a6-a49255cbcf35.mp4', 0, 0, 1),
(1337, 'Intro.mov', 456, '/uploads/courses/videos/89779709-6101-4906-a113-f19bde46f480.mov', 0, 2, 1),
(1338, 'What-is-Html5.mov', 456, '/uploads/courses/videos/7fd3043a-6289-4835-aa5f-27c8af63ec06.mov', 0, 3, 1),
(1339, 'Text-Editor.mov', 456, '/uploads/courses/videos/edf49700-8a91-483d-87f6-9f473fbdaf84.mov', 0, 3, 1),
(1340, 'Semantic.mov', 456, '/uploads/courses/videos/bda5fcad-0881-4d64-9aa6-0071f0fe2fac.mov', 0, 2, 1),
(1341, 'Semantic.mov', 457, '/uploads/courses/videos/2ed90c31-9f3e-48a4-88be-91642d1757a9.mov', 0, 2, 1),
(1342, 'What-is-Html5.mov', 457, '/uploads/courses/videos/dc44c19e-6232-4db9-b998-8c02db8ce3a7.mov', 0, 3, 1),
(1343, 'Intro.mov', 458, '/uploads/courses/videos/01f4afb8-1052-476b-add2-911409575769.mov', 0, 2, 1),
(1344, 'Text-Editor.mov', 459, '/uploads/courses/videos/e807379a-c8ed-4022-a772-39d788d111c8.mov', 0, 3, 1),
(1345, 'Who_created_allah?.mp4', 460, '/uploads/courses/videos/69eb4c03-fd84-4e73-b23b-89c8c48b7669.mp4', 0, 2, 1),
(1346, 'Presentation3.mp4', 460, '/uploads/courses/videos/75777cb9-4439-49e4-876a-18368236e0ea.mp4', 0, 0, 1),
(1347, 'Presentation1.mp4', 460, '/uploads/courses/videos/ed608429-448e-4133-854f-62a882eec610.mp4', 0, 1, 1),
(1348, 'Website_record.mp4', 460, '/uploads/courses/videos/2fbf0bfb-7686-4e75-ad7b-ef7f35a85278.mp4', 0, 8, 1),
(1349, 'Website_record.mp4', 460, '/uploads/courses/videos/eb0f7cf4-9380-4a52-9618-66dd38ce97fb.mp4', 0, 8, 1),
(1350, 'Website_record.mp4', 461, '/uploads/courses/videos/bde79e22-b409-45bc-9b21-15134fd2a053.mp4', 0, 8, 1),
(1351, 'Website_record.mp4', 461, '/uploads/courses/videos/6e606af0-07fc-472d-adb6-0389cc170dda.mp4', 0, 8, 1),
(1352, 'Website_record.mp4', 461, '/uploads/courses/videos/facef74e-bf0d-493a-96ff-99cb5fd1be23.mp4', 0, 8, 1),
(1353, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 462, '/uploads/courses/videos/3623375f-60f9-43eb-b408-e4750bd5de06.mov', 0, 0, 1),
(1354, 'shahadah.mp4', 462, '/uploads/courses/videos/89f74b5e-7623-4ae7-8791-ddc4f36eb743.mp4', 0, 0, 1),
(1355, 'shahadah.mp4', 462, '/uploads/courses/videos/891571ee-c4df-4a2d-b23d-0ec1c833ffdc.mp4', 0, 0, 1),
(1356, 'Intro.mov', 462, '/uploads/courses/videos/c993477f-38ce-4d8d-bc97-ce6bcd27555e.mov', 0, 2, 1),
(1357, 'What-is-Html5.mov', 462, '/uploads/courses/videos/66f35608-e5dd-4798-9b38-9faac6e20d8b.mov', 0, 3, 1),
(1358, 'Text-Editor.mov', 462, '/uploads/courses/videos/fde25ed3-a225-4f7e-930c-cf594611ff89.mov', 0, 3, 1),
(1359, 'Semantic.mov', 462, '/uploads/courses/videos/3869253a-76d6-4248-8027-7ef171161ed5.mov', 0, 2, 1),
(1360, 'Semantic.mov', 463, '/uploads/courses/videos/9946aad5-6cfe-470b-a349-c0941d25ab94.mov', 0, 2, 1),
(1361, 'What-is-Html5.mov', 463, '/uploads/courses/videos/26cd8541-4d8b-4110-9e78-08ed4678b7e0.mov', 0, 3, 1),
(1362, 'Intro.mov', 464, '/uploads/courses/videos/f5387b45-fa48-43f7-911f-661503e919c6.mov', 0, 2, 1),
(1363, 'Text-Editor.mov', 465, '/uploads/courses/videos/06abea35-a3ba-4ba6-ad3a-4c3b2adf9a84.mov', 0, 3, 1),
(1364, 'Who_created_allah?.mp4', 466, '/uploads/courses/videos/78950001-24f5-43f8-bbb4-8fac0b1453e9.mp4', 0, 2, 1),
(1365, 'Presentation3.mp4', 466, '/uploads/courses/videos/856a9dea-c439-4993-9783-9dfc7cdfe9a0.mp4', 0, 0, 1),
(1366, 'Presentation1.mp4', 466, '/uploads/courses/videos/18610e37-b73e-47de-aeb8-d9446e38637b.mp4', 0, 1, 1),
(1367, 'Website_record.mp4', 466, '/uploads/courses/videos/379c355b-491a-4b64-a6e2-3fd7d7af69b7.mp4', 0, 8, 1),
(1368, 'Website_record.mp4', 466, '/uploads/courses/videos/6a606d7a-3bd0-4b75-9e1a-4a28929ab21f.mp4', 0, 8, 1),
(1369, 'Website_record.mp4', 467, '/uploads/courses/videos/4decd366-e7af-4cd1-ac86-6470ddaf3233.mp4', 0, 8, 1),
(1370, 'Website_record.mp4', 467, '/uploads/courses/videos/0598de13-fc0c-40b4-9015-fcb57b35e4ab.mp4', 0, 8, 1),
(1371, 'Website_record.mp4', 467, '/uploads/courses/videos/df49ae53-eaa2-4ac0-926a-03f1c9c91000.mp4', 0, 8, 1),
(1372, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 468, '/uploads/courses/videos/ed30edc9-4ac8-4e12-85ce-05cdfd844fd4.mov', 0, 0, 1),
(1373, 'shahadah.mp4', 468, '/uploads/courses/videos/546d9be1-0f74-42c6-b2aa-94c24f145645.mp4', 0, 0, 1),
(1374, 'shahadah.mp4', 468, '/uploads/courses/videos/9ae0eeb0-f73b-4ebc-921d-1cc0355b8948.mp4', 0, 0, 1),
(1375, 'Intro.mov', 468, '/uploads/courses/videos/87ea68c3-f59d-4b39-9e66-5580b5ec20df.mov', 0, 2, 1),
(1376, 'What-is-Html5.mov', 468, '/uploads/courses/videos/0d45b54d-4a9a-48f2-a8d9-16f87aebec18.mov', 0, 3, 1),
(1377, 'Text-Editor.mov', 468, '/uploads/courses/videos/9148501a-f7eb-4eaa-ae3b-7567d62feadc.mov', 0, 3, 1),
(1378, 'Semantic.mov', 468, '/uploads/courses/videos/270c64ab-c060-47a1-ac9c-f7a6684f9640.mov', 0, 2, 1),
(1379, 'Semantic.mov', 469, '/uploads/courses/videos/1b96ea97-35e1-4203-bafe-85cd05f0e0ee.mov', 0, 2, 1),
(1380, 'What-is-Html5.mov', 469, '/uploads/courses/videos/4d9196de-ed82-447f-891d-c11c3432c2c2.mov', 0, 3, 1),
(1381, 'Intro.mov', 470, '/uploads/courses/videos/af7e4426-ac16-425e-b9bb-472d0d31e51e.mov', 0, 2, 1),
(1382, 'Text-Editor.mov', 471, '/uploads/courses/videos/793fed70-0912-4269-b5ab-acd762a16fe2.mov', 0, 3, 1),
(1383, 'Who_created_allah?.mp4', 472, '/uploads/courses/videos/9e15b3e3-812c-4ab6-95ae-cc6a4079026b.mp4', 0, 2, 1),
(1384, 'Presentation3.mp4', 472, '/uploads/courses/videos/7b55f1da-140f-4108-ab7f-ba6445356160.mp4', 0, 0, 1),
(1385, 'Presentation1.mp4', 472, '/uploads/courses/videos/e3e7cc1a-724b-409e-8b0d-c563ef22c0b8.mp4', 0, 1, 1),
(1386, 'Website_record.mp4', 472, '/uploads/courses/videos/27047e4e-52af-46da-b4e0-910bab301beb.mp4', 0, 8, 1),
(1387, 'Website_record.mp4', 472, '/uploads/courses/videos/024dbb4f-2360-4ce4-ae07-3e41a0fe42ec.mp4', 0, 8, 1),
(1388, 'Website_record.mp4', 473, '/uploads/courses/videos/c4d889b4-c2df-49eb-b658-71c06bb055d0.mp4', 0, 8, 1),
(1389, 'Website_record.mp4', 473, '/uploads/courses/videos/5965f273-e9b5-4990-81bc-24c1bfc70124.mp4', 0, 8, 1),
(1390, 'Website_record.mp4', 473, '/uploads/courses/videos/0e4907de-446e-45ff-95c2-8cf739bc315e.mp4', 0, 8, 1),
(1391, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 474, '/uploads/courses/videos/27e922ec-c259-4597-abc8-fb2d543de613.mov', 0, 0, 1),
(1392, 'shahadah.mp4', 474, '/uploads/courses/videos/660d47f9-fd52-40a9-8f01-bb1fa30668e2.mp4', 0, 0, 1),
(1393, 'shahadah.mp4', 474, '/uploads/courses/videos/cd35c72e-24fb-4c5a-9eb5-3b1738788270.mp4', 0, 0, 1),
(1394, 'Intro.mov', 474, '/uploads/courses/videos/fe6cd953-b82d-4877-9abd-60f5e28f00e7.mov', 0, 2, 1),
(1395, 'What-is-Html5.mov', 474, '/uploads/courses/videos/69b9d05f-cf90-42e9-b379-6606b72eb48b.mov', 0, 3, 1),
(1396, 'Text-Editor.mov', 474, '/uploads/courses/videos/872ba73c-b429-4462-9c9e-c3b244361939.mov', 0, 3, 1),
(1397, 'Semantic.mov', 474, '/uploads/courses/videos/f349390a-da65-48a0-a3fc-daf86deaa16b.mov', 0, 2, 1),
(1398, 'Semantic.mov', 475, '/uploads/courses/videos/6a044b89-05e2-4217-bf70-e7b2e40fb008.mov', 0, 2, 1),
(1399, 'What-is-Html5.mov', 475, '/uploads/courses/videos/f3c1cb44-bcaa-43c2-86d5-02ba1ad64fac.mov', 0, 3, 1),
(1400, 'Intro.mov', 476, '/uploads/courses/videos/6429e58c-0150-41a4-bba6-e5d4fe913501.mov', 0, 2, 1),
(1401, 'Text-Editor.mov', 477, '/uploads/courses/videos/6b20e390-74f5-43d2-af82-890bd28e2a2b.mov', 0, 3, 1),
(1402, 'Who_created_allah?.mp4', 478, '/uploads/courses/videos/b27bd004-5187-41d6-8b92-d188cac00eaf.mp4', 0, 2, 1),
(1403, 'Presentation3.mp4', 478, '/uploads/courses/videos/f7952d31-649c-4ca6-94db-74bb6e7e31af.mp4', 0, 0, 1),
(1404, 'Presentation1.mp4', 478, '/uploads/courses/videos/8b298244-180c-4651-8d38-056f34dc0d47.mp4', 0, 1, 1),
(1405, 'Website_record.mp4', 478, '/uploads/courses/videos/865f4550-5714-422b-b544-49f99be3fc08.mp4', 0, 8, 1),
(1406, 'Website_record.mp4', 478, '/uploads/courses/videos/d9729727-9791-4f7d-93c3-4afcfb7852b3.mp4', 0, 8, 1),
(1407, 'Website_record.mp4', 479, '/uploads/courses/videos/276007cd-90f8-463d-9675-b57c416eddbe.mp4', 0, 8, 1),
(1408, 'Website_record.mp4', 479, '/uploads/courses/videos/aab752b1-b36e-47e3-a97f-32ab57a9dce6.mp4', 0, 8, 1),
(1409, 'Website_record.mp4', 479, '/uploads/courses/videos/b0d7e82b-b7e6-4a90-bcde-d98c5b917415.mp4', 0, 8, 1),
(1410, 'Screen Recording 2021-06-11 at 7.07.59 AM.mov', 480, '/uploads/courses/videos/4df92555-2291-46b7-ae51-eaf8618a2f1d.mov', 0, 0, 1),
(1411, 'shahadah.mp4', 480, '/uploads/courses/videos/faf94ba0-0066-47a9-b7ec-06d9c378c673.mp4', 0, 0, 1),
(1412, 'shahadah.mp4', 480, '/uploads/courses/videos/4673019f-5ecb-4f8b-b9ac-351ed36e2cc6.mp4', 0, 0, 1),
(1413, 'Intro.mov', 480, '/uploads/courses/videos/1a34d322-4f90-4f1d-84c0-2dddb129d2bb.mov', 0, 2, 1),
(1414, 'What-is-Html5.mov', 480, '/uploads/courses/videos/746db560-0519-477c-8f69-787682e9b8a3.mov', 0, 3, 1),
(1415, 'Text-Editor.mov', 480, '/uploads/courses/videos/08eb8fc3-b437-4581-9284-2796316011b0.mov', 0, 3, 1);
INSERT INTO `teacher_videouploads` (`id`, `name`, `section_id`, `url`, `promo`, `duration`, `lock`) VALUES
(1416, 'Semantic.mov', 480, '/uploads/courses/videos/0efcff8e-934d-4bd0-a870-60c96f80a431.mov', 0, 2, 1),
(1417, 'Semantic.mov', 481, '/uploads/courses/videos/d2dc42c7-2d0a-41e2-b233-424438d3f22e.mov', 0, 2, 1),
(1418, 'What-is-Html5.mov', 481, '/uploads/courses/videos/62ff5a0d-60ca-44e6-9827-5b309fc4647e.mov', 0, 3, 1),
(1419, 'Intro.mov', 482, '/uploads/courses/videos/ca6d40e0-49f4-4a27-ae98-ccad6b58b89d.mov', 0, 2, 1),
(1420, 'Text-Editor.mov', 483, '/uploads/courses/videos/97d6cc74-65ea-47db-80d2-57fbafe77260.mov', 0, 3, 1),
(1421, 'Who_created_allah?.mp4', 484, '/uploads/courses/videos/f7980fbf-c9c0-449d-8eb9-11189b4d1674.mp4', 0, 2, 1),
(1422, 'Presentation3.mp4', 484, '/uploads/courses/videos/b748d08a-dce6-4ba7-acd5-e3e22fb2c745.mp4', 0, 0, 1),
(1423, 'Presentation1.mp4', 484, '/uploads/courses/videos/236cb62d-4d14-405a-8317-3035ea2a40e6.mp4', 0, 1, 1),
(1424, 'Website_record.mp4', 484, '/uploads/courses/videos/ae79b708-a5f6-46d5-9f81-6cff83c610ad.mp4', 0, 8, 1),
(1425, 'Website_record.mp4', 484, '/uploads/courses/videos/2ea44468-623d-4552-a04c-d125b62369e4.mp4', 0, 8, 1),
(1426, 'Website_record.mp4', 485, '/uploads/courses/videos/92ad13a1-cc61-4173-9816-c8693acea7d5.mp4', 0, 8, 1),
(1427, 'Website_record.mp4', 485, '/uploads/courses/videos/961807f8-57ec-439f-b180-3c1f99cfcc34.mp4', 0, 8, 1),
(1428, 'Website_record.mp4', 485, '/uploads/courses/videos/b8874d55-9fef-45e8-8eed-ef96d2535b5c.mp4', 0, 8, 1),
(1482, 'deploy django on apache2.mp4', 550, '/uploads/courses/videos/6edc65e6-4eb3-4965-a85e-46926cb8cf7f.mp4', 0, 31, 1),
(1483, 'deploy django on apache2.mp4', 544, '/uploads/courses/videos/153fcb20-0279-4003-be4f-b9606a19c47a.mp4', 0, 31, 1),
(1484, 'deploy django on apache2.mp4', 545, '/uploads/courses/videos/5ccd4b36-b9cf-40b9-8b92-2d8a4e12e845.mp4', 0, 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `video_cache`
--

CREATE TABLE `video_cache` (
  `id` int(11) NOT NULL,
  `key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cache_str` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video_cache`
--

INSERT INTO `video_cache` (`id`, `key`, `cache_str`) VALUES
(1, '2-29', '{\"checkList\":[1,1,1,1,1,1,1,1,1,1],\"cur_video\":6,\"question_no\":5}'),
(2, '2-30', '{\"checkList\":[0,0,0,0,0,0,0,0,0,0],\"cur_video\":6}'),
(3, '43-30', '{\"checkList\":[1,1,1,1,1,1,1,1,1,1],\"cur_video\":9,\"question_no\":5}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `discount_discount`
--
ALTER TABLE `discount_discount`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discount_course` (`course_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_home_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_admin`
--
ALTER TABLE `home_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_admincontrol`
--
ALTER TABLE `home_admincontrol`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_adminnotifications`
--
ALTER TABLE `home_adminnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_admintarget`
--
ALTER TABLE `home_admintarget`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_card`
--
ALTER TABLE `home_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_user` (`user_id`);

--
-- Indexes for table `home_discount`
--
ALTER TABLE `home_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_expense`
--
ALTER TABLE `home_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_logtime`
--
ALTER TABLE `home_logtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_messages`
--
ALTER TABLE `home_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_sender_user` (`sender_id`),
  ADD KEY `message_receiver_user` (`receiver_id`);

--
-- Indexes for table `home_notifications`
--
ALTER TABLE `home_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_notifications_sender_id_7936b019_fk_home_user_id` (`sender_id`);

--
-- Indexes for table `home_position`
--
ALTER TABLE `home_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_refund`
--
ALTER TABLE `home_refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_spam`
--
ALTER TABLE `home_spam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_task`
--
ALTER TABLE `home_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_user`
--
ALTER TABLE `home_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `home_user_group_id_ab9cda55_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `home_user_activation`
--
ALTER TABLE `home_user_activation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_user_activation_user_id_eb286180_fk_home_user_id` (`user_id`);

--
-- Indexes for table `home_user_become`
--
ALTER TABLE `home_user_become`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_user_categories`
--
ALTER TABLE `home_user_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_user_categories_category_id_fa0b8c7f_fk_teacher_s` (`category_id`),
  ADD KEY `home_user_categories_user_id_1fff0465_fk_home_user_id` (`user_id`);

--
-- Indexes for table `home_user_profile`
--
ALTER TABLE `home_user_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paypal_ipn_txn_id_8fa22c44` (`txn_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_home_user_id` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- Indexes for table `student_course_comments`
--
ALTER TABLE `student_course_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_course_comme_course_id_id_484b0f1c_fk_teacher_c` (`course_id_id`),
  ADD KEY `student_course_comments_user_id_ed721845_fk_home_user_id` (`user_id`);

--
-- Indexes for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_payment_student_id_50961a5c_fk_home_user_id` (`student_id`);

--
-- Indexes for table `student_student_cart_courses`
--
ALTER TABLE `student_student_cart_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_student_cart_course_id_id_529cc64c_fk_teacher_c` (`course_id_id`),
  ADD KEY `student_student_cart_student_id_id_406bf019_fk_home_user` (`student_id_id`);

--
-- Indexes for table `student_student_certificate`
--
ALTER TABLE `student_student_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_student_favourite_courses`
--
ALTER TABLE `student_student_favourite_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_student_favo_course_id_id_6184b43a_fk_teacher_c` (`course_id_id`),
  ADD KEY `student_student_favo_student_id_id_50cb2362_fk_home_user` (`student_id_id`);

--
-- Indexes for table `student_student_performance`
--
ALTER TABLE `student_student_performance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_student_performance_user_id_f15a4565_fk_home_user_id` (`user_id`);

--
-- Indexes for table `student_student_rating_courses`
--
ALTER TABLE `student_student_rating_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_student_rati_course_id_id_a636893f_fk_teacher_c` (`course_id_id`),
  ADD KEY `student_student_rati_student_id_id_d6eb3c4c_fk_home_user` (`student_id_id`);

--
-- Indexes for table `student_student_register_courses`
--
ALTER TABLE `student_student_register_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_student_regi_course_id_id_890510c7_fk_teacher_c` (`course_id_id`),
  ADD KEY `student_student_regi_student_id_id_dcba9c6f_fk_home_user` (`student_id_id`);

--
-- Indexes for table `teacher_answers`
--
ALTER TABLE `teacher_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_answers_course_id_b393bd3c_fk_teacher_courses_id` (`course_id`),
  ADD KEY `teacher_answers_question_id_b202c822_fk_teacher_questions_id` (`question_id`);

--
-- Indexes for table `teacher_categories`
--
ALTER TABLE `teacher_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_user` (`user_id`);

--
-- Indexes for table `teacher_questions`
--
ALTER TABLE `teacher_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_questions1`
--
ALTER TABLE `teacher_questions1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_sections`
--
ALTER TABLE `teacher_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_student_mark`
--
ALTER TABLE `teacher_student_mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_subcategories`
--
ALTER TABLE `teacher_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subcategorie_categories_id_36e8aa60_fk_teacher_c` (`categories_id`);

--
-- Indexes for table `teacher_testvideo`
--
ALTER TABLE `teacher_testvideo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testvideo_user` (`user_id`);

--
-- Indexes for table `teacher_todo`
--
ALTER TABLE `teacher_todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_transactions`
--
ALTER TABLE `teacher_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_videouploads`
--
ALTER TABLE `teacher_videouploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Video_section` (`section_id`);

--
-- Indexes for table `video_cache`
--
ALTER TABLE `video_cache`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `discount_discount`
--
ALTER TABLE `discount_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `home_admin`
--
ALTER TABLE `home_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `home_admincontrol`
--
ALTER TABLE `home_admincontrol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_adminnotifications`
--
ALTER TABLE `home_adminnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `home_admintarget`
--
ALTER TABLE `home_admintarget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_card`
--
ALTER TABLE `home_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `home_discount`
--
ALTER TABLE `home_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_expense`
--
ALTER TABLE `home_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_logtime`
--
ALTER TABLE `home_logtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `home_messages`
--
ALTER TABLE `home_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `home_notifications`
--
ALTER TABLE `home_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `home_position`
--
ALTER TABLE `home_position`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `home_refund`
--
ALTER TABLE `home_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_spam`
--
ALTER TABLE `home_spam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `home_task`
--
ALTER TABLE `home_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `home_user`
--
ALTER TABLE `home_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `home_user_activation`
--
ALTER TABLE `home_user_activation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `home_user_become`
--
ALTER TABLE `home_user_become`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_user_categories`
--
ALTER TABLE `home_user_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_user_profile`
--
ALTER TABLE `home_user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paypal_ipn`
--
ALTER TABLE `paypal_ipn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_course_comments`
--
ALTER TABLE `student_course_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student_payment`
--
ALTER TABLE `student_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_student_cart_courses`
--
ALTER TABLE `student_student_cart_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `student_student_certificate`
--
ALTER TABLE `student_student_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_student_favourite_courses`
--
ALTER TABLE `student_student_favourite_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `student_student_performance`
--
ALTER TABLE `student_student_performance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_student_rating_courses`
--
ALTER TABLE `student_student_rating_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_student_register_courses`
--
ALTER TABLE `student_student_register_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `teacher_answers`
--
ALTER TABLE `teacher_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_categories`
--
ALTER TABLE `teacher_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `teacher_questions`
--
ALTER TABLE `teacher_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `teacher_questions1`
--
ALTER TABLE `teacher_questions1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_sections`
--
ALTER TABLE `teacher_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `teacher_student_mark`
--
ALTER TABLE `teacher_student_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teacher_subcategories`
--
ALTER TABLE `teacher_subcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `teacher_testvideo`
--
ALTER TABLE `teacher_testvideo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher_todo`
--
ALTER TABLE `teacher_todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_transactions`
--
ALTER TABLE `teacher_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_videouploads`
--
ALTER TABLE `teacher_videouploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1485;

--
-- AUTO_INCREMENT for table `video_cache`
--
ALTER TABLE `video_cache`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `discount_discount`
--
ALTER TABLE `discount_discount`
  ADD CONSTRAINT `discount_course` FOREIGN KEY (`course_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Constraints for table `home_card`
--
ALTER TABLE `home_card`
  ADD CONSTRAINT `bank_user` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `home_messages`
--
ALTER TABLE `home_messages`
  ADD CONSTRAINT `message_receiver_user` FOREIGN KEY (`receiver_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `message_sender_user` FOREIGN KEY (`sender_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `home_notifications`
--
ALTER TABLE `home_notifications`
  ADD CONSTRAINT `home_notifications_sender_id_7936b019_fk_home_user_id` FOREIGN KEY (`sender_id`) REFERENCES `home_user` (`id`);

--
-- Constraints for table `home_user`
--
ALTER TABLE `home_user`
  ADD CONSTRAINT `home_user_group_id_ab9cda55_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `home_user_activation`
--
ALTER TABLE `home_user_activation`
  ADD CONSTRAINT `home_user_activation_user_id_eb286180_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `home_user_categories`
--
ALTER TABLE `home_user_categories`
  ADD CONSTRAINT `home_user_categories_category_id_fa0b8c7f_fk_teacher_s` FOREIGN KEY (`category_id`) REFERENCES `teacher_subcategories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `home_user_categories_user_id_1fff0465_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Constraints for table `student_course_comments`
--
ALTER TABLE `student_course_comments`
  ADD CONSTRAINT `student_course_comme_course_id_id_484b0f1c_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_course_comments_user_id_ed721845_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_payment`
--
ALTER TABLE `student_payment`
  ADD CONSTRAINT `student_payment_student_id_50961a5c_fk_home_user_id` FOREIGN KEY (`student_id`) REFERENCES `home_user` (`id`);

--
-- Constraints for table `student_student_cart_courses`
--
ALTER TABLE `student_student_cart_courses`
  ADD CONSTRAINT `student_student_cart_course_id_id_529cc64c_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_student_cart_student_id_id_406bf019_fk_home_user` FOREIGN KEY (`student_id_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_student_favourite_courses`
--
ALTER TABLE `student_student_favourite_courses`
  ADD CONSTRAINT `student_student_favo_course_id_id_6184b43a_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_student_favo_student_id_id_50cb2362_fk_home_user` FOREIGN KEY (`student_id_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_student_performance`
--
ALTER TABLE `student_student_performance`
  ADD CONSTRAINT `student_student_performance_user_id_f15a4565_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Constraints for table `student_student_rating_courses`
--
ALTER TABLE `student_student_rating_courses`
  ADD CONSTRAINT `student_student_rati_course_id_id_a636893f_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_student_rati_student_id_id_d6eb3c4c_fk_home_user` FOREIGN KEY (`student_id_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_student_register_courses`
--
ALTER TABLE `student_student_register_courses`
  ADD CONSTRAINT `student_student_regi_course_id_id_890510c7_fk_teacher_c` FOREIGN KEY (`course_id_id`) REFERENCES `teacher_courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_student_regi_student_id_id_dcba9c6f_fk_home_user` FOREIGN KEY (`student_id_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_answers`
--
ALTER TABLE `teacher_answers`
  ADD CONSTRAINT `teacher_answers_course_id_b393bd3c_fk_teacher_courses_id` FOREIGN KEY (`course_id`) REFERENCES `teacher_courses` (`id`),
  ADD CONSTRAINT `teacher_answers_question_id_b202c822_fk_teacher_questions_id` FOREIGN KEY (`question_id`) REFERENCES `teacher_questions` (`id`);

--
-- Constraints for table `teacher_courses`
--
ALTER TABLE `teacher_courses`
  ADD CONSTRAINT `course_user` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_subcategories`
--
ALTER TABLE `teacher_subcategories`
  ADD CONSTRAINT `teacher_subcategorie_categories_id_36e8aa60_fk_teacher_c` FOREIGN KEY (`categories_id`) REFERENCES `teacher_categories` (`id`);

--
-- Constraints for table `teacher_testvideo`
--
ALTER TABLE `teacher_testvideo`
  ADD CONSTRAINT `testvideo_user` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_videouploads`
--
ALTER TABLE `teacher_videouploads`
  ADD CONSTRAINT `Video_section` FOREIGN KEY (`section_id`) REFERENCES `teacher_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
