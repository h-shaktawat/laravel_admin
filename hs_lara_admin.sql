-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2022 at 10:54 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hs_lara_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_rights`
--

CREATE TABLE `admin_rights` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_rights` varchar(5000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `file_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backup_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tags` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `tags`, `color`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administration', '[]', '#000', NULL, '2021-12-03 06:54:30', '2021-12-03 06:54:30'),
(2, 'Development', '[\"Developer\"]', '#000', NULL, '2021-12-16 04:11:25', '2021-12-16 04:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `designation` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Male',
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mobile2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_birth` date NOT NULL DEFAULT '1990-01-01',
  `date_hire` date NOT NULL,
  `date_left` date NOT NULL DEFAULT '1990-01-01',
  `salary_cur` decimal(15,3) NOT NULL DEFAULT 0.000,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `designation`, `gender`, `mobile`, `mobile2`, `email`, `dept`, `city`, `address`, `about`, `date_birth`, `date_hire`, `date_left`, `salary_cur`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'HS Main Master', 'Super Admin', 'Male', '8003836264', '9785187343', 'hemendra387@gmail.com', 1, 'Udaipur', 'Pacific University', 'PHP Developer', '2021-12-03', '2021-12-03', '2021-12-03', '0.000', NULL, '2021-12-03 06:55:00', '2021-12-16 12:03:43'),
(2, 'HS Master Agent', 'Master Agent', 'Male', '9785187343', '8003836264', 'hemendra.muskowl@gmail.com', 1, 'Udaipur', '', 'PHP Developer', '1990-01-01', '1970-01-01', '1990-01-01', '15000.000', NULL, '2021-12-16 04:09:57', '2022-01-02 06:06:56'),
(3, 'HS Agent', 'Agent', 'Male', '8003836264', '', 'hemendra@muskowl.com', 1, 'Udaipur', 'Udaipur', 'From Udaipur', '1995-05-07', '2021-04-01', '2025-01-01', '20000.000', NULL, '2022-01-02 06:06:36', '2022-01-02 06:06:36');

-- --------------------------------------------------------

--
-- Table structure for table `la_configs`
--

CREATE TABLE `la_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_configs`
--

INSERT INTO `la_configs` (`id`, `key`, `section`, `value`, `created_at`, `updated_at`) VALUES
(1, 'sitename', '', 'Admin', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(2, 'sitename_part1', '', 'Admin', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(3, 'sitename_part2', '', 'Panel', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(4, 'sitename_short', '', 'LA', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(5, 'site_description', '', 'Admin Panel', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(6, 'sidebar_search', '', '1', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(7, 'show_messages', '', '1', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(8, 'show_notifications', '', '1', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(9, 'show_tasks', '', '1', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(10, 'show_rightsidebar', '', '1', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(11, 'skin', '', 'skin-white', '2021-12-03 06:54:34', '2021-12-16 04:03:58'),
(12, 'layout', '', 'fixed', '2021-12-03 06:54:35', '2021-12-16 04:03:58'),
(13, 'default_email', '', 'test@example.com', '2021-12-03 06:54:35', '2021-12-16 04:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `la_menus`
--

CREATE TABLE `la_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module',
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hierarchy` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `la_menus`
--

INSERT INTO `la_menus` (`id`, `name`, `url`, `icon`, `type`, `parent`, `hierarchy`, `created_at`, `updated_at`) VALUES
(2, 'Users', 'users', 'fa-group', 'module', 16, 3, '2021-12-03 06:54:30', '2022-01-02 05:52:42'),
(4, 'Departments', 'departments', 'fa-tags', 'module', 16, 5, '2021-12-03 06:54:30', '2022-01-02 05:52:46'),
(5, 'Employees', 'employees', 'fa-group', 'module', 0, 3, '2021-12-03 06:54:30', '2022-01-02 08:37:23'),
(6, 'Roles', 'roles', 'fa-user-plus', 'module', 16, 4, '2021-12-03 06:54:30', '2022-01-02 05:52:44'),
(8, 'Permissions', 'permissions', 'fa-magic', 'module', 16, 7, '2021-12-03 06:54:30', '2022-01-02 05:52:50'),
(12, 'Modules', 'modules', 'fa-clipboard', 'custom', 16, 1, '2021-12-16 11:58:09', '2022-01-02 05:52:39'),
(13, 'Manus', 'la_menus', 'fa-tasks', 'custom', 16, 2, '2021-12-16 11:59:24', '2022-01-02 05:52:40'),
(14, 'Configs', 'la_configs', 'fa-eye-slash', 'custom', 16, 6, '2021-12-16 12:00:50', '2022-01-02 05:52:46'),
(16, 'Admin_Rights', 'admin_rights', 'fa-user-secret', 'module', 0, 4, '2022-01-02 05:46:51', '2022-01-02 08:37:23'),
(19, 'Customers', 'customers', 'fa fa-male', 'module', 0, 0, '2022-01-29 04:08:26', '2022-01-29 04:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_05_26_050000_create_modules_table', 1),
('2014_05_26_055000_create_module_field_types_table', 1),
('2014_05_26_060000_create_module_fields_table', 1),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_12_01_000000_create_uploads_table', 1),
('2016_05_26_064006_create_departments_table', 1),
('2016_05_26_064007_create_employees_table', 1),
('2016_05_26_064446_create_roles_table', 1),
('2016_07_05_115343_create_role_user_table', 1),
('2016_07_06_140637_create_organizations_table', 1),
('2016_07_07_134058_create_backups_table', 1),
('2016_07_07_134058_create_menus_table', 1),
('2016_09_10_163337_create_permissions_table', 1),
('2016_09_10_163520_create_permission_role_table', 1),
('2016_09_22_105958_role_module_fields_table', 1),
('2016_09_22_110008_role_module_table', 1),
('2016_10_06_115413_create_la_configs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name_db` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `view_col` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `controller` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fa_icon` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'fa-cube',
  `is_gen` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `label`, `name_db`, `view_col`, `model`, `controller`, `fa_icon`, `is_gen`, `created_at`, `updated_at`) VALUES
(1, 'Users', 'Users', 'users', 'name', 'User', 'UsersController', 'fa-group', 1, '2021-12-03 06:54:09', '2021-12-03 06:54:35'),
(3, 'Departments', 'Departments', 'departments', 'name', 'Department', 'DepartmentsController', 'fa-tags', 1, '2021-12-03 06:54:11', '2021-12-16 11:52:47'),
(4, 'Employees', 'Employees', 'employees', 'name', 'Employee', 'EmployeesController', 'fa-group', 1, '2021-12-03 06:54:12', '2021-12-03 06:54:35'),
(5, 'Roles', 'Roles', 'roles', 'name', 'Role', 'RolesController', 'fa-user-plus', 1, '2021-12-03 06:54:14', '2021-12-03 06:54:35'),
(7, 'Backups', 'Backups', 'backups', 'name', 'Backup', 'BackupsController', 'fa-hdd-o', 1, '2021-12-03 06:54:20', '2021-12-03 06:54:35'),
(8, 'Permissions', 'Permissions', 'permissions', 'name', 'Permission', 'PermissionsController', 'fa-magic', 1, '2021-12-03 06:54:22', '2021-12-03 06:54:35'),
(9, 'Admin_Rights', 'Admin_Rights', 'admin_rights', 'admin_rights', 'Admin_Right', 'Admin_RightsController', 'fa-user-secret', 1, '2022-01-02 05:43:01', '2022-01-02 05:50:25'),
(12, 'Customers', 'Customers', 'customers', 'name', 'Customer', 'CustomersController', 'fa-male', 1, '2022-01-29 04:07:10', '2022-01-29 04:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `module_fields`
--

CREATE TABLE `module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `colname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `module` int(10) UNSIGNED NOT NULL,
  `field_type` int(10) UNSIGNED NOT NULL,
  `unique` tinyint(1) NOT NULL DEFAULT 0,
  `defaultvalue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `minlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `maxlength` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `popup_vals` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_fields`
--

INSERT INTO `module_fields` (`id`, `colname`, `label`, `module`, `field_type`, `unique`, `defaultvalue`, `minlength`, `maxlength`, `required`, `popup_vals`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'name', 'Name', 1, 16, 0, '', 5, 250, 1, '', 0, '2021-12-03 06:54:09', '2021-12-03 06:54:09'),
(2, 'context_id', 'Context', 1, 13, 0, '0', 0, 0, 0, '', 0, '2021-12-03 06:54:09', '2021-12-03 06:54:09'),
(3, 'email', 'Email', 1, 8, 1, '', 0, 250, 0, '', 0, '2021-12-03 06:54:09', '2021-12-03 06:54:09'),
(4, 'password', 'Password', 1, 17, 0, '', 6, 250, 1, '', 0, '2021-12-03 06:54:09', '2021-12-03 06:54:09'),
(5, 'type', 'User Type', 1, 7, 0, 'Employee', 0, 0, 0, '[\"Employee\",\"Client\"]', 0, '2021-12-03 06:54:09', '2021-12-03 06:54:09'),
(13, 'name', 'Name', 3, 16, 1, '', 1, 250, 1, '', 0, '2021-12-03 06:54:11', '2021-12-03 06:54:11'),
(14, 'tags', 'Tags', 3, 20, 0, '[]', 0, 0, 0, '', 0, '2021-12-03 06:54:11', '2021-12-03 06:54:11'),
(15, 'color', 'Color', 3, 19, 0, '', 0, 50, 1, '', 0, '2021-12-03 06:54:11', '2021-12-03 06:54:11'),
(16, 'name', 'Name', 4, 16, 0, '', 5, 250, 1, '', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(17, 'designation', 'Designation', 4, 19, 0, '', 0, 50, 1, '', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(18, 'gender', 'Gender', 4, 18, 0, 'Male', 0, 0, 1, '[\"Male\",\"Female\"]', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(19, 'mobile', 'Mobile', 4, 14, 0, '', 10, 20, 1, '', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(20, 'mobile2', 'Alternative Mobile', 4, 14, 0, '', 10, 20, 0, '', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(21, 'email', 'Email', 4, 8, 1, '', 5, 250, 1, '', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(22, 'dept', 'Department', 4, 7, 0, '0', 0, 0, 1, '@departments', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(23, 'city', 'City', 4, 19, 0, '', 0, 50, 0, '', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(24, 'address', 'Address', 4, 1, 0, '', 0, 1000, 0, '', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(25, 'about', 'About', 4, 19, 0, '', 0, 0, 0, '', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(26, 'date_birth', 'Date of Birth', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2021-12-03 06:54:12', '2021-12-03 06:54:12'),
(27, 'date_hire', 'Hiring Date', 4, 4, 0, 'date(\'Y-m-d\')', 0, 0, 0, '', 0, '2021-12-03 06:54:13', '2021-12-03 06:54:13'),
(28, 'date_left', 'Resignation Date', 4, 4, 0, '1990-01-01', 0, 0, 0, '', 0, '2021-12-03 06:54:13', '2021-12-03 06:54:13'),
(29, 'salary_cur', 'Current Salary', 4, 6, 0, '0.0', 0, 2, 0, '', 0, '2021-12-03 06:54:13', '2021-12-03 06:54:13'),
(30, 'name', 'Name', 5, 16, 1, '', 1, 250, 1, '', 0, '2021-12-03 06:54:14', '2021-12-03 06:54:14'),
(31, 'display_name', 'Display Name', 5, 19, 0, '', 0, 250, 1, '', 0, '2021-12-03 06:54:14', '2021-12-03 06:54:14'),
(32, 'description', 'Description', 5, 21, 0, '', 0, 1000, 0, '', 0, '2021-12-03 06:54:14', '2021-12-03 06:54:14'),
(33, 'parent', 'Parent Role', 5, 7, 0, '1', 0, 0, 0, '@roles', 0, '2021-12-03 06:54:14', '2021-12-03 06:54:14'),
(34, 'dept', 'Department', 5, 7, 0, '1', 0, 0, 0, '@departments', 0, '2021-12-03 06:54:14', '2021-12-03 06:54:14'),
(46, 'name', 'Name', 7, 16, 1, '', 0, 250, 1, '', 0, '2021-12-03 06:54:20', '2021-12-03 06:54:20'),
(47, 'file_name', 'File Name', 7, 19, 1, '', 0, 250, 1, '', 0, '2021-12-03 06:54:20', '2021-12-03 06:54:20'),
(48, 'backup_size', 'File Size', 7, 19, 0, '0', 0, 10, 1, '', 0, '2021-12-03 06:54:21', '2021-12-03 06:54:21'),
(49, 'name', 'Name', 8, 16, 1, '', 1, 250, 1, '', 0, '2021-12-03 06:54:22', '2021-12-03 06:54:22'),
(50, 'display_name', 'Display Name', 8, 19, 0, '', 0, 250, 1, '', 0, '2021-12-03 06:54:22', '2021-12-03 06:54:22'),
(51, 'description', 'Description', 8, 21, 0, '', 0, 1000, 0, '', 0, '2021-12-03 06:54:22', '2021-12-03 06:54:22'),
(52, 'admin_rights', 'Admin Rights', 9, 16, 0, '0', 1, 5000, 0, '', 0, '2022-01-02 05:50:05', '2022-01-02 05:50:05'),
(89, 'name', 'Name', 12, 16, 0, '', 0, 256, 0, '', 0, '2022-01-29 04:08:15', '2022-01-29 04:08:15');

-- --------------------------------------------------------

--
-- Table structure for table `module_field_types`
--

CREATE TABLE `module_field_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `module_field_types`
--

INSERT INTO `module_field_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Address', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(2, 'Checkbox', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(3, 'Currency', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(4, 'Date', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(5, 'Datetime', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(6, 'Decimal', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(7, 'Dropdown', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(8, 'Email', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(9, 'File', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(10, 'Float', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(11, 'HTML', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(12, 'Image', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(13, 'Integer', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(14, 'Mobile', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(15, 'Multiselect', '2021-12-03 06:54:06', '2021-12-03 06:54:06'),
(16, 'Name', '2021-12-03 06:54:07', '2021-12-03 06:54:07'),
(17, 'Password', '2021-12-03 06:54:07', '2021-12-03 06:54:07'),
(18, 'Radio', '2021-12-03 06:54:07', '2021-12-03 06:54:07'),
(19, 'String', '2021-12-03 06:54:07', '2021-12-03 06:54:07'),
(20, 'Taginput', '2021-12-03 06:54:07', '2021-12-03 06:54:07'),
(21, 'Textarea', '2021-12-03 06:54:07', '2021-12-03 06:54:07'),
(22, 'TextField', '2021-12-03 06:54:07', '2021-12-03 06:54:07'),
(23, 'URL', '2021-12-03 06:54:07', '2021-12-03 06:54:07'),
(24, 'Files', '2021-12-03 06:54:07', '2021-12-03 06:54:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'ADMIN_PANEL', 'Main Master', 'Admin Panel Permission', NULL, '2021-12-03 06:54:34', '2022-01-02 06:08:07'),
(2, 'Master Agent', 'Master Agent', 'Master Agent', NULL, '2021-12-16 04:11:57', '2022-01-02 06:10:15'),
(3, 'Agent', 'Agent', 'Agent', NULL, '2021-12-16 11:53:50', '2021-12-16 11:53:50');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `dept` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `parent`, `dept`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'SUPER_ADMIN', 'Super Admin', 'Full Access Role', 1, 1, NULL, '2021-12-03 06:54:31', '2021-12-03 06:54:31'),
(2, 'MASTER_AGENT', 'MA', 'Master Agent', 1, 2, NULL, '2021-12-16 04:08:53', '2021-12-16 11:51:08'),
(3, 'AGENT', 'Agent', 'Agent', 1, 2, NULL, '2021-12-16 11:51:38', '2021-12-16 11:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `role_module`
--

CREATE TABLE `role_module` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `acc_view` tinyint(1) NOT NULL,
  `acc_create` tinyint(1) NOT NULL,
  `acc_edit` tinyint(1) NOT NULL,
  `acc_delete` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module`
--

INSERT INTO `role_module` (`id`, `role_id`, `module_id`, `acc_view`, `acc_create`, `acc_edit`, `acc_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2021-12-03 06:54:31', '2021-12-03 06:54:31'),
(3, 1, 3, 1, 1, 1, 1, '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(4, 1, 4, 1, 1, 1, 1, '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(5, 1, 5, 1, 1, 1, 1, '2021-12-03 06:54:33', '2021-12-03 06:54:33'),
(7, 1, 7, 1, 1, 1, 1, '2021-12-03 06:54:34', '2021-12-03 06:54:34'),
(8, 1, 8, 1, 1, 1, 1, '2021-12-03 06:54:34', '2021-12-03 06:54:34'),
(9, 2, 1, 1, 0, 0, 0, '2021-12-16 04:08:53', '2021-12-16 04:08:53'),
(10, 2, 3, 0, 0, 0, 0, '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(11, 2, 4, 0, 0, 0, 0, '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(12, 2, 5, 0, 0, 0, 0, '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(14, 2, 7, 0, 0, 0, 0, '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(15, 2, 8, 0, 0, 0, 0, '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(16, 3, 1, 1, 0, 0, 0, '2021-12-16 11:51:38', '2021-12-16 11:51:38'),
(17, 3, 3, 0, 0, 0, 0, '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(18, 3, 4, 1, 0, 0, 0, '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(19, 3, 5, 1, 0, 0, 0, '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(20, 3, 7, 1, 0, 0, 0, '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(21, 3, 8, 1, 0, 0, 0, '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(22, 1, 9, 1, 1, 1, 1, '2022-01-02 05:43:54', '2022-01-02 05:43:54'),
(27, 1, 12, 1, 1, 1, 1, '2022-01-29 04:08:27', '2022-01-29 04:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_module_fields`
--

CREATE TABLE `role_module_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `access` enum('invisible','readonly','write') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_module_fields`
--

INSERT INTO `role_module_fields` (`id`, `role_id`, `field_id`, `access`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'write', '2021-12-03 06:54:31', '2021-12-03 06:54:31'),
(2, 1, 2, 'write', '2021-12-03 06:54:31', '2021-12-03 06:54:31'),
(3, 1, 3, 'write', '2021-12-03 06:54:31', '2021-12-03 06:54:31'),
(4, 1, 4, 'write', '2021-12-03 06:54:31', '2021-12-03 06:54:31'),
(5, 1, 5, 'write', '2021-12-03 06:54:31', '2021-12-03 06:54:31'),
(13, 1, 13, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(14, 1, 14, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(15, 1, 15, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(16, 1, 16, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(17, 1, 17, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(18, 1, 18, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(19, 1, 19, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(20, 1, 20, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(21, 1, 21, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(22, 1, 22, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(23, 1, 23, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(24, 1, 24, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(25, 1, 25, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(26, 1, 26, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(27, 1, 27, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(28, 1, 28, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(29, 1, 29, 'write', '2021-12-03 06:54:32', '2021-12-03 06:54:32'),
(30, 1, 30, 'write', '2021-12-03 06:54:33', '2021-12-03 06:54:33'),
(31, 1, 31, 'write', '2021-12-03 06:54:33', '2021-12-03 06:54:33'),
(32, 1, 32, 'write', '2021-12-03 06:54:33', '2021-12-03 06:54:33'),
(33, 1, 33, 'write', '2021-12-03 06:54:33', '2021-12-03 06:54:33'),
(34, 1, 34, 'write', '2021-12-03 06:54:33', '2021-12-03 06:54:33'),
(46, 1, 46, 'write', '2021-12-03 06:54:34', '2021-12-03 06:54:34'),
(47, 1, 47, 'write', '2021-12-03 06:54:34', '2021-12-03 06:54:34'),
(48, 1, 48, 'write', '2021-12-03 06:54:34', '2021-12-03 06:54:34'),
(49, 1, 49, 'write', '2021-12-03 06:54:34', '2021-12-03 06:54:34'),
(50, 1, 50, 'write', '2021-12-03 06:54:34', '2021-12-03 06:54:34'),
(51, 1, 51, 'write', '2021-12-03 06:54:34', '2021-12-03 06:54:34'),
(52, 2, 1, 'readonly', '2021-12-16 04:08:53', '2021-12-16 04:08:53'),
(53, 2, 2, 'readonly', '2021-12-16 04:08:53', '2021-12-16 04:08:53'),
(54, 2, 3, 'readonly', '2021-12-16 04:08:53', '2021-12-16 04:08:53'),
(55, 2, 4, 'readonly', '2021-12-16 04:08:53', '2021-12-16 04:08:53'),
(56, 2, 5, 'readonly', '2021-12-16 04:08:53', '2021-12-16 04:08:53'),
(57, 2, 13, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(58, 2, 14, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(59, 2, 15, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(60, 2, 16, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(61, 2, 17, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(62, 2, 18, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(63, 2, 19, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(64, 2, 20, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(65, 2, 21, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(66, 2, 22, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(67, 2, 23, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(68, 2, 24, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(69, 2, 25, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(70, 2, 26, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(71, 2, 27, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(72, 2, 28, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(73, 2, 29, 'readonly', '2021-12-16 04:08:54', '2021-12-16 04:08:54'),
(74, 2, 30, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(75, 2, 31, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(76, 2, 32, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(77, 2, 33, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(78, 2, 34, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(90, 2, 46, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(91, 2, 47, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(92, 2, 48, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(93, 2, 49, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(94, 2, 50, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(95, 2, 51, 'readonly', '2021-12-16 04:08:55', '2021-12-16 04:08:55'),
(96, 3, 1, 'readonly', '2021-12-16 11:51:38', '2021-12-16 11:51:38'),
(97, 3, 2, 'readonly', '2021-12-16 11:51:38', '2021-12-16 11:51:38'),
(98, 3, 3, 'readonly', '2021-12-16 11:51:38', '2021-12-16 11:51:38'),
(99, 3, 4, 'readonly', '2021-12-16 11:51:38', '2021-12-16 11:51:38'),
(100, 3, 5, 'readonly', '2021-12-16 11:51:38', '2021-12-16 11:51:38'),
(101, 3, 13, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(102, 3, 14, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(103, 3, 15, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(104, 3, 16, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(105, 3, 17, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(106, 3, 18, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(107, 3, 19, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(108, 3, 20, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(109, 3, 21, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(110, 3, 22, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(111, 3, 23, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(112, 3, 24, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(113, 3, 25, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(114, 3, 26, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(115, 3, 27, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(116, 3, 28, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(117, 3, 29, 'readonly', '2021-12-16 11:51:39', '2021-12-16 11:51:39'),
(118, 3, 30, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(119, 3, 31, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(120, 3, 32, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(121, 3, 33, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(122, 3, 34, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(123, 3, 46, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(124, 3, 47, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(125, 3, 48, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(126, 3, 49, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(127, 3, 50, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(128, 3, 51, 'readonly', '2021-12-16 11:51:40', '2021-12-16 11:51:40'),
(129, 1, 52, 'write', '2022-01-02 05:50:06', '2022-01-02 05:50:06'),
(130, 2, 52, 'invisible', '2022-01-02 05:51:17', '2022-01-02 05:51:17'),
(131, 3, 52, 'invisible', '2022-01-02 05:51:17', '2022-01-02 05:51:17'),
(170, 1, 89, 'write', '2022-01-29 04:08:16', '2022-01-29 04:08:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 1, 1, NULL, NULL),
(8, 3, 3, NULL, NULL),
(9, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Employee',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `context_id`, `email`, `password`, `type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'HS Main Master', 1, 'hemendra387@gmail.com', '$2y$10$xJ2SVoMyL7p5Pm5ppcFsIejNUW/XdOXe0ipyr1i.ABLoOyjEnFS9O', 'Employee', 'ceVftUSC7JdL8KtE9fJTCmsz9feTNvAtYWlMnvQfFvE8lGCN53cqLJTxNvWh', '2022-01-02 08:36:42', '2021-12-03 06:54:59', '2022-01-02 08:36:42'),
(2, 'HS Master Agent', 2, 'hemendra.muskowl@gmail.com', '$2y$10$xJ2SVoMyL7p5Pm5ppcFsIejNUW/XdOXe0ipyr1i.ABLoOyjEnFS9O', 'Employee', '4a4bmpS7xCFA6pCFcJmIeMefWsqzDBs822l1qfcVGet4T6yb2HGoY0Da7odh', NULL, '2021-12-16 04:09:57', '2021-12-31 06:51:48'),
(3, 'HS Agent', 3, 'hemendra@muskowl.com', '$2y$10$wM1xJ1ouKw2bK1NtDN14u.dTagMfAY5G/ibN7L5qu7FRjJ.9CUy4G', 'Employee', NULL, NULL, '2022-01-02 06:06:36', '2022-01-02 06:06:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_rights`
--
ALTER TABLE `admin_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backups_name_unique` (`name`),
  ADD UNIQUE KEY `backups_file_name_unique` (`file_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`),
  ADD KEY `employees_dept_foreign` (`dept`);

--
-- Indexes for table `la_configs`
--
ALTER TABLE `la_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_menus`
--
ALTER TABLE `la_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_fields_module_foreign` (`module`),
  ADD KEY `module_fields_field_type_foreign` (`field_type`);

--
-- Indexes for table `module_field_types`
--
ALTER TABLE `module_field_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_parent_foreign` (`parent`),
  ADD KEY `roles_dept_foreign` (`dept`);

--
-- Indexes for table `role_module`
--
ALTER TABLE `role_module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_role_id_foreign` (`role_id`),
  ADD KEY `role_module_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_module_fields_role_id_foreign` (`role_id`),
  ADD KEY `role_module_fields_field_id_foreign` (`field_id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `admin_rights`
--
ALTER TABLE `admin_rights`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `la_configs`
--
ALTER TABLE `la_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `la_menus`
--
ALTER TABLE `la_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `module_fields`
--
ALTER TABLE `module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `module_field_types`
--
ALTER TABLE `module_field_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_module`
--
ALTER TABLE `role_module`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`);

--
-- Constraints for table `module_fields`
--
ALTER TABLE `module_fields`
  ADD CONSTRAINT `module_fields_field_type_foreign` FOREIGN KEY (`field_type`) REFERENCES `module_field_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `module_fields_module_foreign` FOREIGN KEY (`module`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_dept_foreign` FOREIGN KEY (`dept`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `roles_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `roles` (`id`);

--
-- Constraints for table `role_module`
--
ALTER TABLE `role_module`
  ADD CONSTRAINT `role_module_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_module_fields`
--
ALTER TABLE `role_module_fields`
  ADD CONSTRAINT `role_module_fields_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `module_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_module_fields_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
