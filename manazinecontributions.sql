-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 03:53 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `manazinecontributions`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'Coordinator'),
(4, 'Guess'),
(2, 'Manager'),
(1, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 10),
(2, 2, 2),
(3, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add contribute', 6, 'add_contribute'),
(22, 'Can change contribute', 6, 'change_contribute'),
(23, 'Can delete contribute', 6, 'delete_contribute'),
(24, 'Can view contribute', 6, 'view_contribute'),
(25, 'Can add faculty', 7, 'add_faculty'),
(26, 'Can change faculty', 7, 'change_faculty'),
(27, 'Can delete faculty', 7, 'delete_faculty'),
(28, 'Can view faculty', 7, 'view_faculty'),
(29, 'Can add term', 8, 'add_term'),
(30, 'Can change term', 8, 'change_term'),
(31, 'Can delete term', 8, 'delete_term'),
(32, 'Can view term', 8, 'view_term'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add data', 10, 'add_data'),
(38, 'Can change data', 10, 'change_data'),
(39, 'Can delete data', 10, 'delete_data'),
(40, 'Can view data', 10, 'view_data'),
(41, 'Can add comment', 11, 'add_comment'),
(42, 'Can change comment', 11, 'change_comment'),
(43, 'Can delete comment', 11, 'delete_comment'),
(44, 'Can view comment', 11, 'view_comment'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-03-14 03:39:41.602161', '1', 'Summer2021', 1, '[{\"added\": {}}]', 8, 1),
(2, '2021-03-14 03:39:50.236833', '1', 'IT', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-03-14 03:40:07.467232', '2', 'thangmanager', 1, '[{\"added\": {}}]', 9, 1),
(4, '2021-03-14 03:40:22.665459', '2', 'thangmanager', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"User permissions\", \"Last login\", \"Date joined\"]}}]', 9, 1),
(5, '2021-03-14 03:40:40.206531', '1', 'IT', 1, '[{\"added\": {}}]', 6, 1),
(6, '2021-03-14 03:40:54.937531', '1', 'IT', 2, '[{\"changed\": {\"fields\": [\"Readed\"]}}]', 6, 1),
(7, '2021-03-14 03:41:16.827178', '1', 'Data object (1)', 1, '[{\"added\": {}}]', 10, 1),
(8, '2021-03-14 03:42:13.683093', '1', 'Student', 1, '[{\"added\": {}}]', 3, 1),
(9, '2021-03-14 03:42:20.730622', '2', 'Manager', 1, '[{\"added\": {}}]', 3, 1),
(10, '2021-03-14 03:42:39.927178', '1', 'nguyenthang', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 9, 1),
(11, '2021-03-14 03:42:47.547164', '2', 'thangmanager', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 9, 1),
(12, '2021-03-14 03:43:33.024832', '2', 'Winter', 1, '[{\"added\": {}}]', 8, 1),
(13, '2021-03-14 03:44:03.033320', '3', 'Spring 2022', 1, '[{\"added\": {}}]', 8, 1),
(14, '2021-03-14 03:44:35.608170', '4', 'Spring2021', 1, '[{\"added\": {}}]', 8, 1),
(15, '2021-03-14 03:45:07.654123', '5', 'Spring2021', 1, '[{\"added\": {}}]', 8, 1),
(16, '2021-03-14 03:48:19.304244', '3', 'Coordinator', 1, '[{\"added\": {}}]', 3, 1),
(17, '2021-03-14 03:48:47.120703', '3', 'thangCoordinator', 1, '[{\"added\": {}}]', 9, 1),
(18, '2021-03-14 03:49:15.674356', '3', 'thangCoordinator', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\", \"User permissions\", \"Last login\"]}}]', 9, 1),
(19, '2021-03-15 09:10:52.875204', '4', 'thangStudent', 1, '[{\"added\": {}}]', 9, 1),
(20, '2021-03-15 09:11:20.167529', '4', 'thangStudent', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\", \"User permissions\", \"Last login\", \"Date joined\"]}}]', 9, 1),
(21, '2021-03-15 14:27:28.243436', '5', 'Kha', 1, '[{\"added\": {}}]', 9, 1),
(22, '2021-03-15 14:28:18.785384', '5', 'Kha', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\", \"Last login\", \"Date joined\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(23, '2021-03-15 14:28:28.781451', '4', 'thangStudent', 2, '[{\"changed\": {\"fields\": [\"Faculty\", \"Sex\"]}}]', 9, 1),
(24, '2021-03-15 14:28:41.457917', '3', 'thangCoordinator', 2, '[{\"changed\": {\"fields\": [\"Faculty\", \"Sex\"]}}]', 9, 1),
(25, '2021-03-15 14:28:52.020735', '1', 'nguyenthang', 2, '[{\"changed\": {\"fields\": [\"Faculty\", \"Sex\"]}}]', 9, 1),
(26, '2021-03-15 14:29:52.715242', '2', 'Bussiness', 1, '[{\"added\": {}}]', 7, 1),
(27, '2021-03-15 14:30:17.841947', '6', 'Đạt', 1, '[{\"added\": {}}]', 9, 1),
(28, '2021-03-15 14:30:48.793766', '6', 'Đạt', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\", \"Last login\", \"Date joined\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(29, '2021-03-15 14:32:48.163645', '1', 'Advance', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 6, 1),
(30, '2021-03-15 14:33:02.168466', '2', 'SDLC', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Readed\"]}}]', 6, 1),
(31, '2021-03-15 14:33:12.311764', '3', 'Web', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Readed\"]}}]', 6, 1),
(32, '2021-03-15 14:33:29.338719', '4', 'Security', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Readed\"]}}]', 6, 1),
(33, '2021-03-15 14:46:00.422158', '4', 'Security', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 6, 1),
(34, '2021-03-20 14:30:26.609557', '7', 'thangGuess', 1, '[{\"added\": {}}]', 9, 1),
(35, '2021-03-20 14:30:53.097869', '4', 'Guess', 1, '[{\"added\": {}}]', 3, 1),
(36, '2021-03-20 14:31:29.947273', '7', 'thangGuess', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\", \"Last login\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(37, '2021-03-21 01:15:30.392004', '3', 'Desgn', 1, '[{\"added\": {}}]', 7, 1),
(38, '2021-03-21 01:15:57.147234', '8', 'thangGuessBN', 1, '[{\"added\": {}}]', 9, 1),
(39, '2021-03-21 01:16:20.691555', '8', 'thangGuessBN', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\", \"Last login\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(40, '2021-03-21 01:16:42.352723', '9', 'thangGuessDE', 1, '[{\"added\": {}}]', 9, 1),
(41, '2021-03-21 01:16:58.730723', '9', 'thangGuessDE', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\", \"Last login\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(42, '2021-03-21 01:55:35.689766', '3', 'Design', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 7, 1),
(43, '2021-03-21 02:23:30.320772', '4', 'thangStudent', 2, '[{\"changed\": {\"fields\": [\"Faculty\"]}}]', 9, 1),
(44, '2021-03-22 06:39:26.794028', '5', 'BI', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 6, 1),
(45, '2021-03-22 06:40:48.012661', '6', 'Autumn', 1, '[{\"added\": {}}]', 8, 1),
(46, '2021-03-22 06:42:44.780988', '7', 'Autumn2020', 1, '[{\"added\": {}}]', 8, 1),
(47, '2021-03-22 06:43:27.648935', '8', 'Summer2022', 1, '[{\"added\": {}}]', 8, 1),
(48, '2021-03-22 09:53:53.535829', '4', 'thangStudent', 2, '[{\"changed\": {\"fields\": [\"Sex\"]}}]', 9, 1),
(49, '2021-03-23 05:55:19.316066', '9', 'Summer2023', 1, '[{\"added\": {}}]', 8, 1),
(50, '2021-03-23 09:42:19.159326', '2', 'thangmanagerIT', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Faculty\"]}}]', 9, 1),
(51, '2021-03-23 09:43:21.553773', '1', 'nguyenthangIT', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 9, 1),
(52, '2021-03-23 09:43:35.825156', '4', 'thangStudentBN', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 9, 1),
(53, '2021-03-23 09:44:02.834964', '1', 'nguyenStudentIT', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 9, 1),
(54, '2021-03-23 09:44:16.788361', '1', 'thangStudentIT', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 9, 1),
(55, '2021-03-23 09:44:33.046154', '10', 'thangStudentDE', 1, '[{\"added\": {}}]', 9, 1),
(56, '2021-03-23 09:44:49.148191', '10', 'thangStudentDE', 2, '[{\"changed\": {\"fields\": [\"Groups\", \"Last login\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(57, '2021-03-23 09:45:08.846242', '3', 'thangCoordinatorIT', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 9, 1),
(58, '2021-03-23 09:45:20.016159', '11', 'thangCoordinatorBN', 1, '[{\"added\": {}}]', 9, 1),
(59, '2021-03-23 09:45:39.479912', '11', 'thangCoordinatorBN', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\", \"Last login\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(60, '2021-03-23 09:45:58.915466', '12', 'thangCoordinatorDE', 1, '[{\"added\": {}}]', 9, 1),
(61, '2021-03-23 09:46:28.469287', '12', 'thangCoordinatorDE', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\", \"Last login\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(62, '2021-03-23 09:46:47.883130', '7', 'thangGuessIT', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 9, 1),
(63, '2021-03-23 09:47:07.071573', '2', 'thangmanagerIT', 2, '[{\"changed\": {\"fields\": [\"Sex\"]}}]', 9, 1),
(64, '2021-03-23 09:47:17.043464', '13', 'thangmanagerBN', 1, '[{\"added\": {}}]', 9, 1),
(65, '2021-03-23 09:47:32.464688', '13', 'thangmanagerBN', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\", \"Last login\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(66, '2021-03-23 09:47:40.095904', '9', 'thangGuessDE', 2, '[]', 9, 1),
(67, '2021-03-23 09:47:52.655141', '14', 'thangmanagerDE', 1, '[{\"added\": {}}]', 9, 1),
(68, '2021-03-23 09:48:06.894694', '14', 'thangmanagerDE', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\", \"Last login\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(69, '2021-03-23 09:48:37.244345', '6', 'Đạt', 3, '', 9, 1),
(70, '2021-03-23 09:48:45.466475', '5', 'Kha', 3, '', 9, 1),
(71, '2021-03-23 10:37:44.235995', '9', 'AAWWWWWW', 3, '', 6, 1),
(72, '2021-03-23 10:37:44.359950', '6', 'aa', 3, '', 6, 1),
(73, '2021-03-23 10:37:54.019079', '15', 'AA', 3, '', 6, 1),
(74, '2021-03-23 10:38:11.181081', '14', 'Web1', 2, '[{\"changed\": {\"fields\": [\"Name\", \"UserID\"]}}]', 6, 1),
(75, '2021-03-23 10:38:21.577221', '5', 'BI1', 2, '[{\"changed\": {\"fields\": [\"Name\", \"UserID\"]}}]', 6, 1),
(76, '2021-03-23 10:57:43.207671', '15', 'thangStudentBN1', 1, '[{\"added\": {}}]', 9, 1),
(77, '2021-03-23 10:58:01.336300', '15', 'thangStudentBN1', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Groups\", \"Last login\", \"Faculty\", \"Sex\"]}}]', 9, 1),
(78, '2021-03-23 10:58:15.048894', '5', 'BI1', 2, '[{\"changed\": {\"fields\": [\"UserID\"]}}]', 6, 1),
(79, '2021-03-23 10:59:01.402539', '15', 'thangStudentBN1', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 9, 1),
(80, '2021-03-24 02:23:46.038196', '10', 'Winter2021', 1, '[{\"added\": {}}]', 8, 1),
(81, '2021-03-24 02:48:16.493694', '11', 'Summer2020_1', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(12, 'auth', 'user'),
(4, 'contenttypes', 'contenttype'),
(11, 'Login', 'comment'),
(6, 'Login', 'contribute'),
(10, 'Login', 'data'),
(7, 'Login', 'faculty'),
(8, 'Login', 'term'),
(9, 'Login', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-03-14 03:38:10.540992'),
(2, 'contenttypes', '0002_remove_content_type_name', '2021-03-14 03:38:11.218904'),
(3, 'auth', '0001_initial', '2021-03-14 03:38:12.186480'),
(4, 'auth', '0002_alter_permission_name_max_length', '2021-03-14 03:38:16.384068'),
(5, 'auth', '0003_alter_user_email_max_length', '2021-03-14 03:38:16.458761'),
(6, 'auth', '0004_alter_user_username_opts', '2021-03-14 03:38:16.498636'),
(7, 'auth', '0005_alter_user_last_login_null', '2021-03-14 03:38:16.533873'),
(8, 'auth', '0006_require_contenttypes_0002', '2021-03-14 03:38:16.561551'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2021-03-14 03:38:16.599970'),
(10, 'auth', '0008_alter_user_username_max_length', '2021-03-14 03:38:16.630381'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2021-03-14 03:38:16.663995'),
(12, 'auth', '0010_alter_group_name_max_length', '2021-03-14 03:38:16.772787'),
(13, 'auth', '0011_update_proxy_permissions', '2021-03-14 03:38:16.823603'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2021-03-14 03:38:16.877415'),
(15, 'Login', '0001_initial', '2021-03-14 03:38:21.215238'),
(16, 'admin', '0001_initial', '2021-03-14 03:38:28.730498'),
(17, 'admin', '0002_logentry_remove_auto_add', '2021-03-14 03:38:30.203917'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-14 03:38:30.234889'),
(19, 'sessions', '0001_initial', '2021-03-14 03:38:30.505237'),
(20, 'Login', '0002_auto_20210314_1051', '2021-03-14 03:51:57.797360'),
(21, 'home', '0001_initial', '2021-03-17 03:39:33.684961');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0esf6dginut8wfne7h30injngzjci553', '.eJxVjEEOwiAQRe8ya0Noh5bi0r1nIMMAFjVgSptojHe3Tbrp9r_33xdsDbWmkm14v9L0gfPQKylPYGmZR7vUMNnk4QwNHDZH_Ah5A_5O-VYElzxPyYlNETut4lp8eF529xAYqY7rGzX71pFWWgdS3Eomhxh135jYURc1mjD0ktAwSmPWcIwoOzZqaF1DDn5_xBlAPw:1lOtAX:Cz4eWC_NjTaxqspPWp6NtOFljfthjw-e1aGGRvX9MGk', '2021-03-25 02:22:49.015111'),
('8i47fnvlcpp1k9k9x001ald8ut91qmv4', '.eJxVjMEOwiAQBf-FsyEUtlB69O43kAW2FjVgoE00xn_XJr30-mbmfZhr1Foq2dHrmeqbjYMGIU7M4brMbm1UXYpsZIodNo_hTnkD8Yb5WngoeanJ803hO238UiI9zrt7OJixzf8ajDdk9BBQwGSENQInkF1vlTQdWS2BrEGtYvTSD6DAd1FDT5IC9BKBfX-ZKz8p:1lNEoX:5WyT_N9GMtVUA0AMVY3R0FPIBPAiJ6A_bQ7t_bVuArg', '2021-03-20 13:05:17.843722'),
('cvrmit0fhondhge5ppmjujvfpkwsreu1', '.eJxVjMEOwiAQBf-FsyEUtlB69O43kAW2FjVgoE00xn_XJr30-mbmfZhr1Foq2dHrmeqbjYMGIU7M4brMbm1UXYpsZIodNo_hTnkD8Yb5WngoeanJ803hO238UiI9zrt7OJixzf8ajDdk9BBQwGSENQInkF1vlTQdWS2BrEGtYvTSD6DAd1FDT5IC9BKBfX-ZKz8p:1lNGto:8OM09NwuKVxzbfgW6mnZpTbULA9Rq0jqNBqh2LYbhKI', '2021-03-20 15:18:52.779042'),
('fdmw4pvwg5758sflhsnt1s48lm0gkjdd', '.eJxVjEEOwiAQRe8ya0Noh5bi0r1nIMMAFjVgSptojHe3Tbrp9r_33xdsDbWmkm14v9L0gfPQKylPYGmZR7vUMNnk4QwNHDZH_Ah5A_5O-VYElzxPyYlNETut4lp8eF529xAYqY7rGzX71pFWWgdS3Eomhxh135jYURc1mjD0ktAwSmPWcIwoOzZqaF1DDn5_xBlAPw:1lLHlc:-KI0yuTytoCG0rer68d6hOkOWggHNCzy-PeyOPzpd8g', '2021-03-15 03:50:12.363210'),
('nrbwiqxij02sv4w5gc4ry8ja7hwr77ls', '.eJxVjEEOwiAQRe8ya0Noh5bi0r1nIMMAFjVgSptojHe3Tbrp9r_33xdsDbWmkm14v9L0gfPQKylPYGmZR7vUMNnk4QwNHDZH_Ah5A_5O-VYElzxPyYlNETut4lp8eF529xAYqY7rGzX71pFWWgdS3Eomhxh135jYURc1mjD0ktAwSmPWcIwoOzZqaF1DDn5_xBlAPw:1lOtOt:lTv3SrpG1ShdWvdS-0i7YikJ3ZixzRTbTG8DR8bYnHE', '2021-03-25 02:37:39.216631'),
('nxtaqffl7ncqkav2a89nay0eguk8xt4f', '.eJxVjMEOwiAQBf-FsyEUtlB69O43kAW2FjVgoE00xn_XJr30-mbmfZhr1Foq2dHrmeqbjYMGIU7M4brMbm1UXYpsZIodNo_hTnkD8Yb5WngoeanJ803hO238UiI9zrt7OJixzf8ajDdk9BBQwGSENQInkF1vlTQdWS2BrEGtYvTSD6DAd1FDT5IC9BKBfX-ZKz8p:1lM7fF:7uYbUmDZhoZdQED1CCt2JoSYpLIiNNj9bdE36HX3N-U', '2021-03-17 11:15:05.146597'),
('o2ynzyk6bbgkovw9rykablt2knstw9nj', '.eJxVjEEOwiAQRe8ya0Noh5bi0r1nIMMAFjVgSptojHe3Tbrp9r_33xdsDbWmkm14v9L0gfPQKylPYGmZR7vUMNnk4QwNHDZH_Ah5A_5O-VYElzxPyYlNETut4lp8eF529xAYqY7rGzX71pFWWgdS3Eomhxh135jYURc1mjD0ktAwSmPWcIwoOzZqaF1DDn5_xBlAPw:1lM3ni:Vl2KLlLiPCXSTAe5YxqY1_r0h_t49Jd23vfIe8oN8-I', '2021-03-17 07:07:34.301644'),
('rvaxt2zd4dgh16vns7md4e4miqmgy8vh', '.eJxVjMEOwiAQBf-FsyEUtlB69O43kAW2FjVgoE00xn_XJr30-mbmfZhr1Foq2dHrmeqbjYMGIU7M4brMbm1UXYpsZIodNo_hTnkD8Yb5WngoeanJ803hO238UiI9zrt7OJixzf8ajDdk9BBQwGSENQInkF1vlTQdWS2BrEGtYvTSD6DAd1FDT5IC9BKBfX-ZKz8p:1lNAeX:3OQQlGAdMssx0_X0eiMNya5VaDoyH4KVU1FwFg9kxdg', '2021-03-20 08:38:41.074246'),
('xm0ubhvp6frye1r2v2mxkqnx6klx2b4s', '.eJxVjMEOwiAQBf-FsyEUtlB69O43kAW2FjVgoE00xn_XJr30-mbmfZhr1Foq2dHrmeqbjYMGIU7M4brMbm1UXYpsZIodNo_hTnkD8Yb5WngoeanJ803hO238UiI9zrt7OJixzf8ajDdk9BBQwGSENQInkF1vlTQdWS2BrEGtYvTSD6DAd1FDT5IC9BKBfX-ZKz8p:1lMUia:c_Bai41tXR0kmv6AYchkCINd58cp7t9Hl6uyjiPGvhY', '2021-03-18 11:52:04.086479');

-- --------------------------------------------------------

--
-- Table structure for table `home_bill`
--

CREATE TABLE `home_bill` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `Total_price` int(11) DEFAULT NULL,
  `ProductID_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_cart`
--

CREATE TABLE `home_cart` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `ShoesID_id` int(11) DEFAULT NULL,
  `UserID_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_category`
--

CREATE TABLE `home_category` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_product`
--

CREATE TABLE `home_product` (
  `id` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `ShoesID_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_sex`
--

CREATE TABLE `home_sex` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `home_shoes`
--

CREATE TABLE `home_shoes` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `NumberBuy` int(11) DEFAULT NULL,
  `Color` varchar(20) NOT NULL,
  `Style` varchar(40) NOT NULL,
  `Made_in` varchar(40) NOT NULL,
  `Sales` tinyint(1) DEFAULT NULL,
  `New_Price` int(11) DEFAULT NULL,
  `CategoryID_id` int(11) DEFAULT NULL,
  `SexID_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login_comment`
--

CREATE TABLE `login_comment` (
  `id` int(11) NOT NULL,
  `Comment` longtext NOT NULL,
  `DateComment` datetime(6) NOT NULL,
  `ContributeID_id` int(11) DEFAULT NULL,
  `UserID_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_comment`
--

INSERT INTO `login_comment` (`id`, `Comment`, `DateComment`, `ContributeID_id`, `UserID_id`) VALUES
(1, 'dfdfdfdf', '2021-03-14 03:52:53.378577', 2, 1),
(2, 'aaaaa', '2021-03-14 04:13:02.037177', 2, 1),
(3, 'Hi Thang', '2021-03-16 07:02:51.382688', 4, 3),
(4, 'How are you', '2021-03-16 07:03:16.743958', 4, 4),
(5, 'Bai nay cau lam sai het roi', '2021-03-16 07:04:38.557942', 4, 3),
(6, 'Cau phai lam nhu the nay', '2021-03-16 07:05:39.084200', 4, 3),
(9, 'Hello', '2021-03-23 05:59:48.386563', 5, 1),
(10, 'Chào em', '2021-03-23 06:00:35.821556', 5, 3),
(11, 'Chào thầy', '2021-03-23 06:00:43.142140', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_contribute`
--

CREATE TABLE `login_contribute` (
  `id` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Document` varchar(100) NOT NULL,
  `Readed` tinyint(1) DEFAULT NULL,
  `TermID_id` int(11) DEFAULT NULL,
  `UserID_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_contribute`
--

INSERT INTO `login_contribute` (`id`, `Name`, `Description`, `Date`, `Status`, `Document`, `Readed`, `TermID_id`, `UserID_id`) VALUES
(1, 'Advance', 'Học đê', '2021-03-14 03:40:40.183555', 1, '151884573_432665381397128_6488671317141615767_n.jpg', 1, 1, 1),
(2, 'SDLC', 'ssssss', '2021-03-14 03:52:06.167482', 1, 'App-final_2_APvZDaP.docx', 1, 5, 1),
(4, 'Security', 'bbbbbbbbbbbbbbb', '2021-03-15 09:12:23.178113', 0, 'App-final_2_cHd0drE.docx', 1, 3, 4),
(5, 'BI1', 'ccccccccccc', '2021-03-16 06:03:39.025798', 1, 'App-final_2_qYE12vM.docx', 1, 3, 15),
(13, 'Web', 'bbbbbbbbbbbbbbb', '2021-03-22 09:24:09.169119', 1, 'Group-Essay_bk2CgE2.docx', 1, 4, 1),
(14, 'Web1', 'bbbbbbbbbbbbbbb', '2021-03-22 09:29:18.343573', 1, 'App-final_2_qYE12vM_C8VjHnN.docx', 1, 4, 4),
(16, 'BI', 'ccccccccccc', '2021-03-23 06:01:32.625218', 0, 'Group-Essay_CRMm7qc.docx', 0, 3, 1),
(17, 'aaaaaaaa', 'aaaaaaa', '2021-03-24 02:36:03.138766', 0, 'Group-Essay_2.docx', 0, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_data`
--

CREATE TABLE `login_data` (
  `id` int(11) NOT NULL,
  `Data` varchar(100) NOT NULL,
  `ContributeID_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_data`
--

INSERT INTO `login_data` (`id`, `Data`, `ContributeID_id`) VALUES
(1, 'background1.jpg', 1),
(2, '151884573_432665381397128_6488671317141615767_n_HUFo1HM.jpg', 2),
(3, '152926829_116083110519351_3885123098807285640_n.jpg', 2),
(6, '152926829_116083110519351_3885123098807285640_n_jBon0wP.jpg', 4),
(7, '152926829_116083110519351_3885123098807285640_n_NjPIecY.jpg', 4),
(8, '152926829_116083110519351_3885123098807285640_n_wsSW8XB.jpg', 5),
(9, '152926829_116083110519351_3885123098807285640_n_e7278ee.jpg', 5),
(24, 'IMG_0314-removebg-preview_QD12XOk.png', 13),
(25, '152926829_116083110519351_3885123098807285640_n_B0803oP.jpg', 13),
(26, '151884573_432665381397128_6488671317141615767_n_h1ClOkH.jpg', 14),
(27, 'background1_bYbPzCV.jpg', 14),
(30, '151884573_432665381397128_6488671317141615767_n_WqyRKVt.jpg', 16),
(31, '152926829_116083110519351_3885123098807285640_n_P1O6j4F.jpg', 16),
(32, '78.jpg', 17),
(33, 'billUser.jpg', 17);

-- --------------------------------------------------------

--
-- Table structure for table `login_faculty`
--

CREATE TABLE `login_faculty` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_faculty`
--

INSERT INTO `login_faculty` (`id`, `Name`, `Description`) VALUES
(1, 'IT', 'aaaaaaaa'),
(2, 'Bussiness', 'Học chăm chỉ vào'),
(3, 'Design', '111111111111');

-- --------------------------------------------------------

--
-- Table structure for table `login_term`
--

CREATE TABLE `login_term` (
  `idTerm` int(11) NOT NULL,
  `NameTerm` varchar(30) NOT NULL,
  `Description` longtext NOT NULL,
  `ClosureDate` datetime(6) NOT NULL,
  `FinalClosureDate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_term`
--

INSERT INTO `login_term` (`idTerm`, `NameTerm`, `Description`, `ClosureDate`, `FinalClosureDate`) VALUES
(1, 'Summer2021', 'aaaaaaa', '2021-03-14 03:39:39.000000', '2021-03-14 03:39:40.000000'),
(2, 'Winter', 'aaaaaaaa', '2021-01-04 03:43:23.000000', '2021-02-08 03:43:27.000000'),
(3, 'Spring 2022', 'aaaaaaaaaa', '2021-05-06 03:43:58.000000', '2021-06-19 03:44:02.000000'),
(4, 'Spring2021', 'azzzzzzzzz', '2021-03-20 03:44:26.000000', '2021-03-24 03:44:29.000000'),
(5, 'Spring2021', 'aaaaaa', '2021-03-08 03:45:00.000000', '2021-03-17 03:45:03.000000'),
(6, 'Autumn', 'qqqqqq', '2021-04-06 06:40:41.000000', '2021-04-09 06:40:42.000000'),
(7, 'Autumn2020', 'aaaaa', '2020-12-09 06:42:34.000000', '2020-12-11 06:42:42.000000'),
(8, 'Summer2022', 'aaaaa', '2022-02-02 06:43:17.000000', '2022-02-02 06:43:26.000000'),
(9, 'Summer2023', 'qqqqqqq', '2022-03-03 05:55:10.000000', '2022-03-01 05:55:18.000000'),
(10, 'Winter2021', 'qqqqqqq', '2021-03-22 02:23:40.000000', '2021-03-30 02:23:44.000000'),
(11, 'Summer2020_1', 'aaaaaa', '2021-03-23 02:48:12.000000', '2021-03-25 02:48:15.000000');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `code` varchar(12) DEFAULT NULL,
  `DOB` datetime(6) DEFAULT NULL,
  `PhoneNumber` int(11) DEFAULT NULL,
  `Sex` int(11) DEFAULT NULL,
  `Faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `code`, `DOB`, `PhoneNumber`, `Sex`, `Faculty_id`) VALUES
(1, 'pbkdf2_sha256$216000$bm1dAfArzcnY$D08f3O8hIUR6Hsi4nQ3JyOq4mD+LefeTxiiSofu6QqQ=', '2021-03-24 02:37:39.149185', 1, 'thangStudentIT', 'thang', 'manager', 'thangndgch17549@fpt.edu.vn', 1, 1, '2021-03-14 03:38:59.000000', '2j6yRbuP2HN3', NULL, NULL, 1, 1),
(2, 'pbkdf2_sha256$216000$IVI3xM3Hzek8$vXYMpdTZBBizjMuR6jPUK93KslUxAZDglqZdgWAIxjM=', '2021-03-23 13:12:57.637112', 0, 'thangmanagerIT', 'thang', 'manager', 'thangndgch17549@fpt.edu.vn', 0, 1, '2021-03-14 03:40:21.000000', '2j6yRbuP2HN3', NULL, NULL, 0, 1),
(3, 'pbkdf2_sha256$216000$bRo6nLvnAbrc$91+GJN151oqfbzDMVqbqdJozdKQ5uBJycc6PLf1e8OM=', '2021-03-23 13:12:07.111412', 0, 'thangCoordinatorIT', 'thang', 'Coordinator', 'thangndgch17549@fpt.edu.vn', 0, 1, '2021-03-14 03:48:46.000000', '2j6yRbuP2HN3', NULL, NULL, 0, 1),
(4, 'pbkdf2_sha256$216000$knyhZnZfB6SZ$rSaGeC+gizVumtdVt/IEFzQeCcpcW1s8KyedW9DfwXI=', '2021-03-23 10:38:35.538014', 0, 'thangStudentBN', 'thang', 'Student', 'thangndgch17549@fpt.edu.vn', 0, 1, '2021-03-15 09:11:18.000000', '2j6yRbuP2HN3', NULL, NULL, 2, 2),
(7, 'pbkdf2_sha256$216000$F29DtUyVxvuR$4Kuv7RXGb4Ge8MUy9vLjyF/iZvcoZkIHqnUHLzNRl/w=', '2021-03-23 13:16:14.775239', 0, 'thangGuessIT', 'thang', 'Guess', '', 0, 1, '2021-03-20 14:30:25.000000', NULL, NULL, NULL, 0, 1),
(8, 'pbkdf2_sha256$216000$ZQAKG1ZhRupd$OlLQOfCkIYT+/QzEE4qbBOaQ2Xfri/93XSnJKbQ5PDk=', '2021-03-23 10:59:19.426568', 0, 'thangGuessBN', 'thang', '1', 'thangndgch17549@fpt.edu.vn', 0, 1, '2021-03-21 01:15:56.000000', '2j6yRbuP2HN3', NULL, NULL, 0, 2),
(9, 'pbkdf2_sha256$216000$lIzYgtevXDPp$uCGW59T5mN8+zzpPyqlPYpwzBG+5t78GvEjVEfj/xgI=', '2021-03-23 10:00:02.023888', 0, 'thangGuessDE', 'thang', 'Student', '', 0, 1, '2021-03-21 01:16:41.000000', NULL, NULL, NULL, 1, 3),
(10, 'pbkdf2_sha256$216000$KBN3rP61s2m8$27Ns3JpJNN+olzJwhXYEVHsLw+B/lq2kz3E4/S3qBqI=', '2021-03-23 09:52:40.774603', 0, 'thangStudentDE', '', '', '', 0, 1, '2021-03-23 09:44:32.000000', NULL, NULL, NULL, 0, 3),
(11, 'pbkdf2_sha256$216000$db0TSHj4qrhu$Wiy2LB1PL7Ldw6r7tlwehX0eonp4So0QC9+KQxdG2VM=', '2021-03-23 11:01:40.163557', 0, 'thangCoordinatorBN', 'thang', 'BN', '', 0, 1, '2021-03-23 09:45:19.000000', NULL, NULL, NULL, 0, 2),
(12, 'pbkdf2_sha256$216000$VbmfYAXbQDvM$YKxZLIvKauud530TheZyxdzbo8uCkqOOTM2LmUKI2R8=', '2021-03-23 11:01:50.729602', 0, 'thangCoordinatorDE', 'thang', 'DE', '', 0, 1, '2021-03-23 09:45:58.000000', NULL, NULL, NULL, 0, 3),
(13, 'pbkdf2_sha256$216000$Gn9ggO5xWvdE$mau4UQE0yJKBe6SdEkA8y0yONQRY6kz5u+OkNWxWlw4=', '2021-03-23 10:38:57.762458', 0, 'thangmanagerBN', 'thang', 'manager', '', 0, 1, '2021-03-23 09:47:16.000000', NULL, NULL, NULL, 0, 2),
(14, 'pbkdf2_sha256$216000$dQ34ytb49Gey$IhuUpHK8uShUwgw7vL4eCJrgxS4NOMvSnVqUD0jYYDM=', '2021-03-23 09:48:02.000000', 0, 'thangmanagerDE', 'thang', 'manager', '', 0, 1, '2021-03-23 09:47:52.000000', NULL, NULL, NULL, 0, 3),
(15, 'pbkdf2_sha256$216000$YHKH7av9BK6X$q8dL29O/d+yymCRNprzhc4MOAltfzzCfxktthNw0rPg=', '2021-03-23 13:17:25.541657', 0, 'thangStudentBN1', 'thang', 'Student', 'nguyenducthang150909@gmail.com', 0, 1, '2021-03-23 10:57:42.000000', NULL, NULL, NULL, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login_user_groups`
--

CREATE TABLE `login_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_user_groups`
--

INSERT INTO `login_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(7, 7, 4),
(8, 8, 4),
(9, 9, 4),
(10, 10, 1),
(11, 11, 3),
(12, 12, 3),
(13, 13, 2),
(14, 14, 2),
(15, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_user_user_permissions`
--

CREATE TABLE `login_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_user_user_permissions`
--

INSERT INTO `login_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 3),
(2, 3, 3),
(3, 4, 10);

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_Login_user_id` (`user_id`);

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
-- Indexes for table `home_bill`
--
ALTER TABLE `home_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_cart`
--
ALTER TABLE `home_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_cart_ShoesID_id_50970cfa_fk_home_shoes_id` (`ShoesID_id`);

--
-- Indexes for table `home_category`
--
ALTER TABLE `home_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_product`
--
ALTER TABLE `home_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_product_ShoesID_id_8835f06a_fk_home_shoes_id` (`ShoesID_id`);

--
-- Indexes for table `home_sex`
--
ALTER TABLE `home_sex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_shoes`
--
ALTER TABLE `home_shoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_shoes_CategoryID_id_d0e85f09_fk_home_category_id` (`CategoryID_id`),
  ADD KEY `home_shoes_SexID_id_a5c014f2_fk_home_sex_id` (`SexID_id`);

--
-- Indexes for table `login_comment`
--
ALTER TABLE `login_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Login_comment_ContributeID_id_a36d7840_fk_Login_contribute_id` (`ContributeID_id`),
  ADD KEY `Login_comment_UserID_id_8116f069_fk_Login_user_id` (`UserID_id`);

--
-- Indexes for table `login_contribute`
--
ALTER TABLE `login_contribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Login_contribute_TermID_id_5e1ad035_fk_Login_term_idTerm` (`TermID_id`),
  ADD KEY `Login_contribute_UserID_id_f8c958a7_fk_Login_user_id` (`UserID_id`);

--
-- Indexes for table `login_data`
--
ALTER TABLE `login_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Login_data_ContributeID_id_25fd5e33_fk_Login_contribute_id` (`ContributeID_id`);

--
-- Indexes for table `login_faculty`
--
ALTER TABLE `login_faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_term`
--
ALTER TABLE `login_term`
  ADD PRIMARY KEY (`idTerm`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `Login_user_Faculty_id_ddb74118_fk_Login_faculty_id` (`Faculty_id`);

--
-- Indexes for table `login_user_groups`
--
ALTER TABLE `login_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Login_user_groups_user_id_group_id_e38488d9_uniq` (`user_id`,`group_id`),
  ADD KEY `Login_user_groups_group_id_7d4f5164_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `login_user_user_permissions`
--
ALTER TABLE `login_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Login_user_user_permissions_user_id_permission_id_49d842f7_uniq` (`user_id`,`permission_id`),
  ADD KEY `Login_user_user_perm_permission_id_23e2afaa_fk_auth_perm` (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `home_bill`
--
ALTER TABLE `home_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_cart`
--
ALTER TABLE `home_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_category`
--
ALTER TABLE `home_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_product`
--
ALTER TABLE `home_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sex`
--
ALTER TABLE `home_sex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_shoes`
--
ALTER TABLE `home_shoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_comment`
--
ALTER TABLE `login_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login_contribute`
--
ALTER TABLE `login_contribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_data`
--
ALTER TABLE `login_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `login_faculty`
--
ALTER TABLE `login_faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_term`
--
ALTER TABLE `login_term`
  MODIFY `idTerm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login_user_groups`
--
ALTER TABLE `login_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login_user_user_permissions`
--
ALTER TABLE `login_user_user_permissions`
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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_Login_user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`id`);

--
-- Constraints for table `home_cart`
--
ALTER TABLE `home_cart`
  ADD CONSTRAINT `home_cart_ShoesID_id_50970cfa_fk_home_shoes_id` FOREIGN KEY (`ShoesID_id`) REFERENCES `home_shoes` (`id`);

--
-- Constraints for table `home_product`
--
ALTER TABLE `home_product`
  ADD CONSTRAINT `home_product_ShoesID_id_8835f06a_fk_home_shoes_id` FOREIGN KEY (`ShoesID_id`) REFERENCES `home_shoes` (`id`);

--
-- Constraints for table `home_shoes`
--
ALTER TABLE `home_shoes`
  ADD CONSTRAINT `home_shoes_CategoryID_id_d0e85f09_fk_home_category_id` FOREIGN KEY (`CategoryID_id`) REFERENCES `home_category` (`id`),
  ADD CONSTRAINT `home_shoes_SexID_id_a5c014f2_fk_home_sex_id` FOREIGN KEY (`SexID_id`) REFERENCES `home_sex` (`id`);

--
-- Constraints for table `login_comment`
--
ALTER TABLE `login_comment`
  ADD CONSTRAINT `Login_comment_ContributeID_id_a36d7840_fk_Login_contribute_id` FOREIGN KEY (`ContributeID_id`) REFERENCES `login_contribute` (`id`),
  ADD CONSTRAINT `Login_comment_UserID_id_8116f069_fk_Login_user_id` FOREIGN KEY (`UserID_id`) REFERENCES `login_user` (`id`);

--
-- Constraints for table `login_contribute`
--
ALTER TABLE `login_contribute`
  ADD CONSTRAINT `Login_contribute_TermID_id_5e1ad035_fk_Login_term_idTerm` FOREIGN KEY (`TermID_id`) REFERENCES `login_term` (`idTerm`),
  ADD CONSTRAINT `Login_contribute_UserID_id_f8c958a7_fk_Login_user_id` FOREIGN KEY (`UserID_id`) REFERENCES `login_user` (`id`);

--
-- Constraints for table `login_data`
--
ALTER TABLE `login_data`
  ADD CONSTRAINT `Login_data_ContributeID_id_25fd5e33_fk_Login_contribute_id` FOREIGN KEY (`ContributeID_id`) REFERENCES `login_contribute` (`id`);

--
-- Constraints for table `login_user`
--
ALTER TABLE `login_user`
  ADD CONSTRAINT `Login_user_Faculty_id_ddb74118_fk_Login_faculty_id` FOREIGN KEY (`Faculty_id`) REFERENCES `login_faculty` (`id`);

--
-- Constraints for table `login_user_groups`
--
ALTER TABLE `login_user_groups`
  ADD CONSTRAINT `Login_user_groups_group_id_7d4f5164_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `Login_user_groups_user_id_1bf00fd4_fk_Login_user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`id`);

--
-- Constraints for table `login_user_user_permissions`
--
ALTER TABLE `login_user_user_permissions`
  ADD CONSTRAINT `Login_user_user_perm_permission_id_23e2afaa_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `Login_user_user_permissions_user_id_7facbddd_fk_Login_user_id` FOREIGN KEY (`user_id`) REFERENCES `login_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
