-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2026 at 02:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `legislative_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `system_id`, `action`, `details`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 1, NULL, 'Login', 'User logged in successfully.', NULL, NULL, '2026-08-01 06:15:40'),
(2, 1, NULL, 'Logout', 'User logged out.', NULL, NULL, '2026-08-01 13:17:18'),
(3, 1, NULL, 'Login', 'User logged in successfully.', NULL, NULL, '2026-08-01 13:17:31'),
(4, 1, NULL, 'Logout', 'User logged out.', NULL, NULL, '2026-08-01 13:29:15'),
(5, 1, NULL, 'Login', 'Signed in to the Ordinance and Resolution Life Cycle Management System.', NULL, NULL, '2026-08-01 13:31:23'),
(6, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 09:16:37'),
(7, 1, 4, 'Logout', 'User logged out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 09:17:07'),
(8, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 14:47:20'),
(9, 1, 4, 'Create Hearing', 'Created PHC-2026-0001 - Hearing 1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:05:23'),
(10, 1, 4, 'Upload Hearing Document', 'Uploaded 1 document(s) to PHC-2026-0001.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:05:23'),
(11, 1, 4, 'Create Registration', 'Registered Carlo Reyes for hearing #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:09:58'),
(12, 1, 4, 'Logout', 'User logged out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:13:41'),
(13, 1, 1, 'Login', 'Signed in to the Ordinance and Resolution Life Cycle Management System.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:15:09'),
(14, 1, 1, 'Logout', 'User logged out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:32:51'),
(15, 1, 2, 'LACMS Login', 'Successful LACMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:34:45'),
(16, 1, 2, 'LACMS Agenda Save', 'Agenda #1: meeting.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:35:54'),
(17, 1, 2, 'LACMS Agenda Item', 'Agenda AGD-2026-0001 · just item.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:36:40'),
(18, 1, 2, 'LACMS Agenda Review', 'AGD-2026-0001 · Draft -> Under Review.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:36:49'),
(19, 1, 2, 'LACMS Agenda Finalize', 'AGD-2026-0001 · Under Review -> Finalized.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:37:07'),
(20, 1, 5, 'CEPFMS Login', 'Successful CEPFMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:40:09'),
(21, NULL, 5, 'CEPFMS Public Submission', 'CEF-2026-0001 · Feedback received from public portal.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:49:22'),
(22, 1, 5, 'CEPFMS Logout', 'User signed out from the shared legislative session.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-18 15:50:12'),
(23, 1, 2, 'LACMS Login', 'Successful LACMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:32:50'),
(24, 1, 2, 'LACMS User Create', 'Shared user #2 · Micko Laput · LACMS Active.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:34:19'),
(25, 1, 2, 'LACMS User Update', 'Shared user #2 · Micko Laput · LACMS Inactive.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:34:53'),
(26, NULL, 2, 'LACMS Login Failed', 'Invalid sign-in attempt.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:36:47'),
(27, 1, 2, 'LACMS Login', 'Successful LACMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:37:07'),
(28, 1, 2, 'LACMS User Administration', 'User #2: LACMS access granted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:37:17'),
(29, 1, 2, 'LACMS User Update', 'Shared user #2 · Micko Laput · LACMS Inactive.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:37:22'),
(30, 1, 2, 'LACMS User Update', 'Shared user #2 · Micko Laput · LACMS Active.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:37:27'),
(31, 1, 2, 'LACMS User Create', 'Shared user #3 · nonelichz · LACMS Active.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:38:58'),
(32, NULL, 4, 'Login Failed', 'Invalid credentials were supplied for a Public Hearing subsystem sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:40:14'),
(33, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:40:52'),
(34, 1, 4, 'Create User', 'User created successfully. User #4 ronald; role=Legislative Staff; LPH access=Active.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 12:36:59'),
(35, 1, 4, 'Update User', 'User updated successfully. User #4 ronald; role=Legislative Staff; LPH access=Active.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 12:37:15'),
(36, 1, 4, 'Logout', 'User logged out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 12:39:55'),
(37, 1, 2, 'LACMS Login', 'Successful LACMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 13:04:07'),
(38, 1, 2, 'LACMS Deadline Save', 'Deadline #1: sample.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 13:07:22'),
(39, 1, 2, 'LACMS Deadline Save', 'Deadline #2: sample.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 13:07:22'),
(40, 1, 2, 'LACMS Deadline Start', 'DLN-2026-0001 · Pending -> In Progress.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 13:07:39'),
(41, 1, 2, 'LACMS Deadline Escalate', 'DLN-2026-0001 · In Progress -> In Progress.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 13:07:55'),
(42, 1, 2, 'LACMS Deadline Complete', 'DLN-2026-0001 · In Progress -> Completed.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 13:08:55'),
(43, 5, 12, 'Citizen Portal Registration', 'New Public User account registered through the citizen portal.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:16:12'),
(44, 5, 12, 'Citizen Portal Login', 'Successful citizen portal sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:16:23'),
(45, 5, 12, 'Citizen Portal Public View', 'LACMS Agenda · AGD-2026-0001', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:23:54'),
(46, 5, 12, 'Citizen Portal Public View', 'PHCMS · PHC-2026-0001', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:24:10'),
(47, 5, 12, 'Citizen Engagement Submission', 'CEF-2026-0002 · Feedback submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:25:53'),
(48, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:25:53'),
(49, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:26:17'),
(50, 1, 5, 'CEPFMS Login', 'Successful CEPFMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-25 07:44:34'),
(51, 1, 5, 'CEPFMS Feedback Update', 'CEF-2026-0002 · Submitted -> Under Moderation.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-25 07:45:32'),
(52, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:45:43'),
(53, 5, 12, 'Citizen Engagement Follow-up', 'CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:46:12'),
(54, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 07:46:12'),
(55, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 10:16:20'),
(56, 5, 12, 'Citizen Ticket Conversation', 'CEF-2026-0002 · citizen message sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 10:16:34'),
(57, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 10:16:34'),
(58, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 10:17:03'),
(59, 5, 12, 'Citizen Attachment View', 'CEF-2026-0002 · default-user.png', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 10:17:06'),
(60, 1, 5, 'CEPFMS Ticket Conversation', 'CEF-2026-0002 · staff message sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-25 10:17:14'),
(61, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 10:17:23'),
(62, 1, 5, 'CEPFMS Feedback Update', 'CEF-2026-0002 · Under Moderation -> Withdrawn.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-25 10:17:37'),
(63, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 10:17:46'),
(64, 5, 12, 'Citizen Portal Public View', 'PHCMS · PHC-2026-0001', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 10:54:32'),
(65, 5, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 10:54:45'),
(66, 1, 5, 'CEPFMS Logout', 'User signed out from the shared legislative session.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-25 11:09:08'),
(67, 1, 5, 'CEPFMS Login', 'Successful CEPFMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-25 11:11:17'),
(68, 1, 5, 'CEPFMS Logout', 'User signed out from the shared legislative session.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-08-25 11:12:05'),
(69, 5, 12, 'Citizen Portal Public View', 'PHCMS · PHC-2026-0001', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-25 12:14:48'),
(70, NULL, 4, 'Login Failed', 'Invalid credentials were supplied for a Public Hearing subsystem sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:13:31'),
(71, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:13:43'),
(72, 1, 4, 'Logout', 'User logged out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:14:38'),
(73, 1, 1, 'Login', 'Signed in to the Ordinance and Resolution Life Cycle Management System.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:22:23'),
(74, 1, 1, 'Create Draft', 'Ordinance #1; version=1; authors=1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:24:23'),
(75, 1, 1, 'Submit Ordinance', 'ORD-2026-0001 -> Committee on Appropriations and Finance; review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:25:40'),
(76, 1, 2, 'LACMS Agenda Save', 'Agenda #2: Community Waste Segregation Ordinance Discussion.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:27:55'),
(77, 1, 2, 'LACMS Agenda Cancel', 'AGD-2026-0002 · Draft -> Cancelled.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:28:24'),
(78, 1, 2, 'LACMS Agenda Save', 'Agenda #3: Community Waste Segregation Ordinance Discussion.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:29:09'),
(79, 1, 2, 'LACMS Agenda Item', 'Agenda AGD-2026-0003 · Community Waste Segregation Ordinance Discussion.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:30:51'),
(80, 1, 2, 'LACMS Agenda Review', 'AGD-2026-0003 · Draft -> Under Review.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:31:08'),
(81, 1, 2, 'LACMS Agenda Finalize', 'AGD-2026-0003 · Under Review -> Finalized.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:31:16'),
(82, 1, 2, 'LACMS Calendar Save', 'Calendar event #1 · Committee Review – Community Waste Segregation Ordinance.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:33:24'),
(83, 1, 2, 'LACMS Calendar Confirm', 'CAL-2026-0001 · Tentative -> Confirmed.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:34:00'),
(84, 1, 2, 'LACMS Meeting Save', 'Meeting #1 · Waste Segregation Ordinance Committee Meeting.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:36:17'),
(85, 1, 2, 'LACMS Deadline Save', 'Deadline #3: Complete committee review.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:38:22'),
(86, 1, 4, 'Create Hearing', 'Created PHC-2026-0002 - Public Hearing – Community Waste Segregation Ordinance', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:41:09'),
(87, 1, 4, 'Upload Hearing Document', 'Uploaded 1 document(s) to PHC-2026-0002.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:41:09'),
(88, 1, 4, 'Create Stakeholder', 'Created stakeholder Micko Laput (mickolaput@gmail.com).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:42:10'),
(89, 1, 4, 'Submit Feedback', 'Submitted feedback #1 for hearing #2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:43:11'),
(90, 1, 4, 'Update', 'Saved hearing issue #1 (Some communities may need additional waste segregation bins.)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:43:51'),
(91, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0001 · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:53:19'),
(92, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0001 · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:53:22'),
(93, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0001 · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:53:23'),
(94, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0001 · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:53:25'),
(95, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0001 · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:53:28'),
(96, 1, 1, 'ORLMS Review Start', 'ORD-2026-0001 · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:53:32'),
(97, 1, 1, 'ORLMS Review Complete', 'ORD-2026-0001 · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:53:37'),
(98, 1, 1, 'ORLMS Committee Endorsement', 'ORD-2026-0001 · Endorsed · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:53:46'),
(99, 1, 1, 'ORLMS Committee Endorsement', 'ORD-2026-0001 · Endorsed · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 15:54:24'),
(100, 1, 1, 'ORLMS Approval Action', 'ORD-2026-0001 · action #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:20:02'),
(101, 1, 1, 'ORLMS Approval Approve', 'ORD-2026-0001 · APR-2026-0001 · Approved.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:20:10'),
(102, 1, 1, 'ORLMS Enactment Save', 'ORD-2026-0001 · enactment #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:22:34'),
(103, 1, 1, 'ORLMS Enactment Finalized', 'ORD-2026-0001 -> ORD-2026-0001.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:22:43'),
(104, 1, 1, 'ORLMS Publication Save', 'ORD-2026-0001 · publication #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:23:12'),
(105, 1, 1, 'ORLMS Publication Publish', 'PUB-2026-0001 · Draft -> Published.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:23:18'),
(106, 1, 1, 'ORLMS Implementation Plan', 'ORD-2026-0001 · plan #1 · In Progress.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:23:50'),
(107, 1, 1, 'ORLMS Implementation Update', 'ORD-2026-0001 · IMP-2026-0001 · 10%.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:24:34'),
(108, 1, 1, 'ORLMS Amendment Save', 'ORD-2026-0001 · amendment #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:25:52'),
(109, 2, 12, 'Citizen Portal Login Failed', 'Invalid or ineligible sign-in attempt.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:28:52'),
(110, 2, 12, 'Citizen Portal Login Failed', 'Invalid or ineligible sign-in attempt.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:29:00'),
(111, 2, 12, 'Citizen Portal Login Failed', 'Invalid or ineligible sign-in attempt.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:29:10'),
(112, 2, 12, 'Citizen Portal Login Failed', 'Invalid or ineligible sign-in attempt.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:29:19'),
(113, 6, 12, 'Citizen Portal Registration', 'New Public User account registered through the citizen portal.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:30:05'),
(114, 6, 12, 'Citizen Portal Login', 'Successful citizen portal sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:30:13'),
(115, 6, 12, 'Citizen Portal Public View', 'ORLMS · ORD-2026-0001', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:30:23'),
(116, 6, 12, 'Citizen Portal Public View', 'LACMS Agenda · AGD-2026-0003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:30:33'),
(117, 6, 12, 'Citizen Portal Public View', 'LACMS Agenda · AGD-2026-0001', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:30:36'),
(118, 6, 12, 'Citizen Engagement Submission', 'CEF-2026-0003 · Feedback submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:32:24'),
(119, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:32:24'),
(120, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:32:28'),
(121, 1, 5, 'CEPFMS Ticket Conversation', 'CEF-2026-0003 · staff message sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:34:20'),
(122, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:34:45'),
(123, 6, 12, 'Citizen Ticket Conversation', 'CEF-2026-0003 · citizen message sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:34:51'),
(124, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:34:51'),
(125, 1, 5, 'CEPFMS Feedback Update', 'CEF-2026-0003 · Submitted -> Under Moderation.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:35:13'),
(126, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:35:16'),
(127, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:35:20'),
(128, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:35:36'),
(129, 6, 12, 'Citizen Attachment View', 'CEF-2026-0003 · Untitled design (1).png', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:35:38'),
(130, 1, 5, 'CEPFMS Feedback Update', 'CEF-2026-0003 · Under Moderation -> Withdrawn.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:35:44'),
(131, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0003', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:35:48'),
(132, 1, 5, 'CEPFMS Feedback Update', 'CEF-2026-0003 · Withdrawn -> Withdrawn.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:35:50'),
(133, 6, 12, 'Citizen Engagement Submission', 'CEF-2026-0004 · Proposal submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:36:22'),
(134, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0004', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:36:22'),
(135, 6, 12, 'Citizen Engagement Submission', 'CEF-2026-0005 · Complaint submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:36:47'),
(136, 6, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:36:47'),
(137, 1, 5, 'CEPFMS Moderation Start', 'CEF-2026-0005 · review round 1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:37:27'),
(138, 1, 5, 'CEPFMS Duplicate Scan', 'CEF-2026-0005 · 0 potential match(es).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:37:49'),
(139, 1, 5, 'CEPFMS Moderation Decision', 'CEF-2026-0005 · Validated.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:37:58'),
(140, 1, 5, 'CEPFMS Response Draft', 'Submission CEF-2026-0005 · response #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:38:27'),
(141, 1, 5, 'CEPFMS Response Submit Review', 'RSP-2026-0001 · Draft -> Under Review.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:38:48'),
(142, 1, 5, 'CEPFMS Response Approve', 'RSP-2026-0001 · Under Review -> Approved.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 16:38:52'),
(143, 1, 4, 'Insert', 'Created action #1 (sample action)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 17:09:45'),
(144, 1, 4, 'Upload', 'Uploaded 1 document(s) to action #1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 17:09:45'),
(145, 1, 4, 'Update', 'Added progress update to action #1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-28 17:09:59'),
(146, 4, 12, 'Citizen Portal Login Failed', 'Invalid or ineligible sign-in attempt.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:11:16'),
(147, 7, 12, 'Citizen Portal Registration', 'New Public User account registered through the citizen portal.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:12:29'),
(148, 7, 12, 'Citizen Portal Login', 'Successful citizen portal sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:12:47'),
(149, 7, 12, 'Citizen Portal Login', 'Successful citizen portal sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36 Edg/151.0.0.0', '2026-09-01 11:14:55'),
(150, 1, 5, 'CEPFMS Login', 'Successful CEPFMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:17:34'),
(151, 7, 12, 'Citizen Portal Logout', 'Citizen signed out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:21:53'),
(152, 1, 5, 'CEPFMS Logout', 'User signed out from the shared legislative session.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:22:22'),
(153, 1, 5, 'CEPFMS Login', 'Successful CEPFMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:23:11'),
(154, 7, 12, 'Citizen Portal Login', 'Successful citizen portal sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:23:38'),
(155, 7, 12, 'Citizen Engagement Submission', 'CEF-2026-0006 · Complaint submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:24:52'),
(156, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0006', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:24:53'),
(157, 7, 12, 'Citizen Portal Logout', 'Citizen signed out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:25:24'),
(158, 7, 12, 'Citizen Portal Login', 'Successful citizen portal sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:25:49'),
(159, 7, 12, 'Citizen Engagement Submission', 'CEF-2026-0007 · Feedback submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:26:36'),
(160, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0007', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:26:38'),
(161, 1, 5, 'CEPFMS Ticket Conversation', 'CEF-2026-0007 · staff message sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:28:04'),
(162, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0007', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:28:10'),
(163, 7, 12, 'Citizen Attachment View', 'CEF-2026-0007 · logo.png', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:28:17'),
(164, 7, 12, 'Citizen Attachment Download', 'CEF-2026-0007 · logo.png', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:28:22'),
(165, 7, 12, 'Citizen Ticket Conversation', 'CEF-2026-0007 · citizen message sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:28:32'),
(166, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0007', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:28:32'),
(167, 1, 5, 'CEPFMS Feedback Update', 'CEF-2026-0007 · Submitted -> Under Moderation.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:28:46'),
(168, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0007', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:28:48'),
(169, 1, 5, 'CEPFMS Feedback Update', 'CEF-2026-0007 · Under Moderation -> Withdrawn.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:29:01'),
(170, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0007', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-01 11:29:08'),
(171, 7, 12, 'Citizen Portal Login', 'Successful citizen portal sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 00:43:42'),
(172, 7, 12, 'Citizen Portal Login', 'Successful citizen portal sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-02 14:24:18'),
(173, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 14:24:57'),
(174, 7, 12, 'Citizen Engagement Submission', 'CEF-2026-0008 · Complaint submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-02 14:26:45'),
(175, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0008', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-02 14:26:45'),
(176, 1, 4, 'Logout', 'User logged out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 14:40:02'),
(177, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 14:40:10'),
(178, 1, 4, 'Submit Feedback', 'Submitted feedback #2 for hearing #2', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 14:44:15'),
(179, NULL, 4, 'AI Flag', 'Feedback #2 flagged: Negative sentiment, High urgency.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 14:45:11'),
(180, 1, 4, 'AI Feedback Analysis', 'Analyzed feedback #2 (Complaint)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 14:45:11'),
(181, 7, 12, 'Citizen Engagement Submission', 'CEF-2026-0009 · Complaint submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-02 14:50:18'),
(182, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0009', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-02 14:50:18'),
(183, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0009', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-02 14:51:50'),
(184, NULL, 4, 'AI Flag', 'Feedback #1 flagged: Negative sentiment, High urgency.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 15:31:33'),
(185, 1, 4, 'AI Feedback Analysis', 'Analyzed feedback #1 (Opposition)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 15:31:33'),
(186, 7, 12, 'Citizen Engagement Submission', 'CEF-2026-0010 · Complaint submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-02 15:39:54'),
(187, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0010', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-02 15:39:54'),
(188, 1, 4, 'Citizen Portal AI Analysis', 'Analyzed CEF submission #1', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 15:55:13'),
(189, 1, 4, 'Citizen Portal AI Analysis', 'Analyzed CEF submission #3', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 15:55:22'),
(190, 1, 4, 'Citizen Portal AI Analysis', 'Analyzed CEF submission #10', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-02 15:55:34'),
(191, 1, 4, 'Citizen Portal AI Analysis', 'Analyzed CEF submission #8', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-03 01:23:43'),
(192, 1, 4, 'Citizen Portal AI Analysis', 'Analyzed CEF submission #9', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-03 01:24:13'),
(193, NULL, 4, 'AI Flag', 'Feedback #2 flagged: Negative sentiment, High urgency.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-03 01:25:14'),
(194, 1, 4, 'AI Feedback Analysis', 'Analyzed feedback #2 (Complaint)', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-03 01:25:14'),
(195, 1, 4, 'Review Feedback', 'Feedback #2 status New -> Under Review.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-03 01:25:55'),
(196, 1, 4, 'Review AI Analysis', 'Feedback #2 AI result marked Pending. Sentiment: Negative; urgency: High.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-03 01:26:42'),
(197, 1, 4, 'Review Feedback', 'Feedback #2 status Under Review -> Under Review.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-03 01:26:52'),
(198, 1, 1, 'Login', 'Signed in to the Ordinance and Resolution Life Cycle Management System.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-03 01:38:29'),
(199, 1, 1, 'Login', 'Signed in to the Ordinance and Resolution Life Cycle Management System.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-04 04:18:02'),
(200, 1, 1, 'ORLMS Committee Endorsement', 'ORD-2026-0001 · Endorsed · review #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-04 04:18:45'),
(201, 1, 1, 'ORLMS Publication Save', 'ORD-2026-0001 · publication #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-04 04:19:19'),
(202, 1, 1, 'ORLMS Publication Publish', 'PUB-2026-0002 · Draft -> Published.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-04 04:19:24'),
(203, 1, 1, 'ORLMS Implementation Plan', 'ORD-2026-0001 · plan #2 · Completed.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-04 04:20:21'),
(204, 1, 5, 'CEPFMS Response Delivered', 'RSP-2026-0001 · CEF-2026-0005 · notification #1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-04 08:10:19'),
(205, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:05:45'),
(206, 7, 12, 'Citizen Portal Login', 'Successful citizen portal sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 06:08:32'),
(207, 7, 12, 'Citizen Engagement Submission', 'CEF-2026-0011 · Complaint submitted.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 06:10:00'),
(208, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0011', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 06:10:00'),
(209, 1, 4, 'Citizen Portal AI Analysis', 'Analyzed CEF submission #11', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:11:15'),
(210, 1, 5, 'CEPFMS Ticket Conversation', 'CEF-2026-0011 · staff message sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:15:10'),
(211, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0011', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 06:15:41'),
(212, 1, 5, 'CEPFMS Moderation Start', 'CEF-2026-0011 · review round 1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:16:28'),
(213, 1, 5, 'CEPFMS Moderation Decision', 'CEF-2026-0011 · Validated.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:17:10'),
(214, 1, 5, 'CEPFMS Complaint Assignment', 'CEF-2026-0011 assigned.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:17:38'),
(215, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0011', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 06:17:52'),
(216, 1, 5, 'CEPFMS Complaint Resolve', 'CEF-2026-0011 · Assigned -> Resolved.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:19:02'),
(217, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0011', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 06:19:07'),
(218, 1, 5, 'CEPFMS Complaint Close', 'CEF-2026-0011 · Resolved -> Closed.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:19:22'),
(219, 7, 12, 'Citizen Portal Public View', 'CEPFMS · CEF-2026-0011', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 06:19:25'),
(220, 1, 4, 'Review Feedback', 'Feedback #2 status Under Review -> Under Review.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:25:24'),
(221, 1, 4, 'Create Hearing Invitations', 'Created 6 invitation(s) for hearing Hearing 1; 0 skipped.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:28:28'),
(222, 1, 4, 'Update Invitation', 'Invitation INV-2026-A81B3EBAA3 status Pending -> Sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:28:38'),
(223, 1, 4, 'Update Invitation', 'Invitation INV-2026-49336E0B8B status Pending -> Sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:28:44'),
(224, 1, 4, 'Update Invitation', 'Invitation INV-2026-7170935D8E status Pending -> Sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:28:45'),
(225, 1, 4, 'Update Invitation', 'Invitation INV-2026-6C54EC7263 status Pending -> Sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:28:46');
INSERT INTO `activity_logs` (`id`, `user_id`, `system_id`, `action`, `details`, `ip_address`, `user_agent`, `created_at`) VALUES
(226, 1, 4, 'Update Invitation', 'Invitation INV-2026-14974EB048 status Pending -> Sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:28:47'),
(227, 1, 4, 'Update Invitation', 'Invitation INV-2026-FB6B61C374 status Pending -> Sent.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:28:49'),
(228, 1, 1, 'Create Draft', 'Ordinance #2; version=3; authors=1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:38:37'),
(229, 1, 1, 'Submit Ordinance', 'ORD-2026-0002 -> Committee on Appropriations and Finance; review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:39:31'),
(230, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0002 · review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:39:42'),
(231, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0002 · review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:39:45'),
(232, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0002 · review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:39:49'),
(233, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0002 · review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:39:53'),
(234, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0002 · review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:39:55'),
(235, 1, 1, 'ORLMS Review Checklist', 'ORD-2026-0002 · review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:39:59'),
(236, 1, 1, 'ORLMS Review Start', 'ORD-2026-0002 · review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:40:12'),
(237, 1, 1, 'ORLMS Review Complete', 'ORD-2026-0002 · review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:40:44'),
(238, 1, 1, 'ORLMS Committee Endorsement', 'ORD-2026-0002 · Endorsed · review #2.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:40:57'),
(239, 1, 2, 'LACMS Agenda Save', 'Agenda #4: traffic.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:42:42'),
(240, 1, 2, 'LACMS Agenda Item', 'Agenda AGD-2026-0004 · traffic.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:43:48'),
(241, 1, 2, 'LACMS Agenda Review', 'AGD-2026-0004 · Draft -> Under Review.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:43:55'),
(242, 1, 2, 'LACMS Agenda Finalize', 'AGD-2026-0004 · Under Review -> Finalized.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:44:10'),
(243, 1, 2, 'LACMS Calendar Save', 'Calendar event #2 · traffic.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:45:23'),
(244, 1, 2, 'LACMS Calendar Confirm', 'CAL-2026-0002 · Tentative -> Confirmed.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:46:14'),
(245, 1, 2, 'LACMS Calendar Complete', 'CAL-2026-0002 · Confirmed -> Completed.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:46:22'),
(246, 1, 2, 'LACMS Meeting Save', 'Meeting #2 · traffic.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:48:02'),
(247, 1, 2, 'LACMS Deadline Save', 'Deadline #4: traffic.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:48:49'),
(248, 1, 4, 'Create Hearing', 'Created PHC-2026-0003 - traffic', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:51:23'),
(249, 1, 4, 'Create Hearing Invitations', 'Created 6 invitation(s) for hearing traffic; 0 skipped.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 06:52:02'),
(250, 7, 12, 'Citizen Portal Public View', 'VQDSS · DRN-2026-0005', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 07:19:46'),
(251, 7, 12, 'Citizen Portal Public View', 'LACMS Calendar · CAL-2026-0002', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 07:19:52'),
(252, 1, 4, 'Logout', 'User logged out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-06 07:28:02'),
(253, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 11:36:42'),
(254, 1, 4, 'Logout', 'User logged out.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 14:16:40'),
(255, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-06 14:28:09'),
(256, 1, 5, 'CEPFMS AI Complaint Analysis', 'CEF-2026-0010 · Urgency: Low, Category: Infrastructure.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 02:53:51'),
(257, 1, 5, 'CEPFMS AI Complaint Routing', 'CEF-2026-0010 · Urgency & office assignment updated via Ollama AI.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 02:54:17'),
(258, 1, 5, 'CEPFMS AI Complaint Analysis', 'CEF-2026-0008 · Urgency: Low, Category: Infrastructure.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 02:55:52'),
(259, 1, 5, 'CEPFMS Moderation Start', 'CEF-2026-0008 · review round 1.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 02:57:44'),
(260, 1, 5, 'CEPFMS AI Complaint Analysis', 'CEF-2026-0009 · Urgency: Low, Category: Infrastructure.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 03:15:35'),
(261, 1, 5, 'CEPFMS AI Complaint Routing', 'CEF-2026-0009 · Urgency & office assignment updated via Ollama AI.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 03:16:10'),
(262, 1, 4, 'Login', 'User logged in successfully to the Public Hearing subsystem.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:05:44'),
(263, 1, 4, 'Create User', 'User created successfully. User #8 Olarte, Junar Love Bello; role=Committee Member; LPH access=Active.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:06:06'),
(264, 1, 3, 'Update VQDSS User', 'User #8 Olarte, Junar Love Bello; role=Committee Member; VQDSS access=Active.', NULL, NULL, '2026-09-07 06:27:46'),
(265, 1, 3, 'Create VQDSS User', 'User #9 Test Legislative Member; role=Committee Member; VQDSS access=Active.', NULL, NULL, '2026-09-07 06:27:55'),
(266, 1, 3, 'Update VQDSS User', 'User #8 Olarte, Junar Love Bello; role=Committee Member; VQDSS access=Active.', NULL, NULL, '2026-09-07 06:30:21'),
(267, 1, 3, 'Update VQDSS User', 'User #8 Olarte, Junar Love Bello; role=Committee Member; VQDSS access=Active.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:32:28'),
(268, 1, 3, 'Create VQDSS User', 'User #10 Olarte, Junar Love Bello; role=Committee Member; VQDSS access=Active.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:33:16'),
(269, 1, 3, 'Create Voting Session', 'Session #9 basura mo itapon mo; 9 official member(s).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:35:27'),
(270, 1, 3, 'Create Quorum Check', 'Created QRM-2026-0010 for SES-2026-0009.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:36:20'),
(271, 1, 3, 'Quorum Verify', 'QRM-2026-0010 Draft -> Verified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:37:15'),
(272, 1, 3, 'Quorum Certify', 'QRM-2026-0010 Verified -> Certified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:37:17'),
(273, 1, 3, 'Voting Open', 'VOT-2026-0009 Ready -> Open.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:38:11'),
(274, 1, 3, 'Voting Pause', 'VOT-2026-0009 Open -> Paused.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:38:52'),
(275, 1, 3, 'Create Voting Session', 'Session #10 bawal mag taon ng basura; 9 official member(s).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:40:27'),
(276, 1, 3, 'Create Quorum Check', 'Created QRM-2026-0011 for SES-2026-0010.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:40:59'),
(277, 1, 3, 'Quorum Verify', 'QRM-2026-0011 Draft -> Verified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:41:36'),
(278, 1, 3, 'Quorum Certify', 'QRM-2026-0011 Verified -> Certified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:41:38'),
(279, 1, 3, 'Voting Open', 'VOT-2026-0010 Ready -> Open.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:41:55'),
(280, 1, 3, 'Create Voting Session', 'Session #11 sige tapon kalang basura; 9 official member(s).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:43:40'),
(281, 1, 3, 'Create Quorum Check', 'Created QRM-2026-0012 for SES-2026-0011.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:43:59'),
(282, 1, 3, 'Quorum Verify', 'QRM-2026-0012 Draft -> Verified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:44:41'),
(283, 1, 3, 'Quorum Certify', 'QRM-2026-0012 Verified -> Certified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 06:44:43'),
(284, 1, 3, 'Create Voting Session', 'Session #16 tapo basura ka te; 9 official member(s).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 07:21:47'),
(285, 1, 3, 'Create Quorum Check', 'Created QRM-2026-0013 for SES-2026-0012.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 07:22:00'),
(286, 1, 3, 'Quorum Verify', 'QRM-2026-0013 Draft -> Verified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 07:23:03'),
(287, 1, 3, 'Quorum Certify', 'QRM-2026-0013 Verified -> Certified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 07:23:05'),
(288, 1, 3, 'Create Voting Event', 'Voting event #24; 7 eligible voter(s); method=Electronic.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 07:24:41'),
(289, 1, 3, 'Voting Open', 'VOT-2026-0020 Ready -> Open.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 07:24:53'),
(290, 10, 3, 'VQDSS Login', 'User signed in successfully to VQDSS.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-07 07:25:43'),
(291, 10, 3, 'Cast Vote', 'VOT-2026-0020 ballot=BLL-2026-22173685EE63; channel=Electronic; secret=0.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-07 07:26:05'),
(292, 1, 3, 'Cast Vote', 'VOT-2026-0020 ballot=BLL-2026-8744873204A0; channel=Manual; secret=0.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 07:27:07'),
(293, 1, 3, 'Cast Vote', 'VOT-2026-0010 ballot=BLL-2026-57FE143D37CA; channel=Electronic; secret=0.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 12:48:47'),
(294, 1, 3, 'Update VQDSS User', 'User #7 bonelichz; role=Committee Member; VQDSS access=Active.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 13:49:46'),
(295, 1, 3, 'VQDSS Login', 'User signed in successfully to VQDSS.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:07:39'),
(296, 1, 3, 'Create Voting Session', 'Session #17 waste management 1; 9 official member(s).', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:17:05'),
(297, 1, 3, 'Create Quorum Check', 'Created QRM-2026-0014 for SES-2026-0013.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:20:39'),
(298, 1, 3, 'Quorum Verify', 'QRM-2026-0014 Draft -> Verified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:24:21'),
(299, 1, 3, 'Quorum Certify', 'QRM-2026-0014 Verified -> Certified; result=Met.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:24:59'),
(300, 1, 3, 'Create Voting Event', 'Voting event #25; 5 eligible voter(s); method=Electronic.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:27:43'),
(301, 1, 3, 'Voting Open', 'VOT-2026-0021 Ready -> Open.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:27:59'),
(302, 1, 3, 'Cast Vote', 'VOT-2026-0021 ballot=BLL-2026-60CD80423619; channel=Manual; secret=0.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:28:34'),
(303, 8, 3, 'VQDSS Login', 'User signed in successfully to VQDSS.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-07 14:30:29'),
(304, 8, 3, 'Cast Vote', 'VOT-2026-0021 ballot=BLL-2026-D53082EF16D3; channel=Electronic; secret=0.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36 Edg/152.0.0.0', '2026-09-07 14:31:07'),
(305, 1, 3, 'Cast Vote', 'VOT-2026-0021 ballot=BLL-2026-0E2083CB0325; channel=Manual; secret=0.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:31:53'),
(306, 1, 3, 'Cast Vote', 'VOT-2026-0021 ballot=BLL-2026-AAA0B1C51C99; channel=Manual; secret=0.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:32:15'),
(307, 1, 3, 'Cast Vote', 'VOT-2026-0021 ballot=BLL-2026-7E86DB11D206; channel=Manual; secret=0.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:32:21'),
(308, 1, 3, 'Voting Pause', 'VOT-2026-0021 Open -> Paused.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:32:28'),
(309, 1, 3, 'Voting Close', 'VOT-2026-0021 Paused -> Closed.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:32:37'),
(310, 1, 3, 'Compute Vote Tally', 'Voting event #25; tally #10; outcome=Passed.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:33:08'),
(311, 1, 3, 'Tally Certify', 'TLY-2026-0010 Computed -> Certified.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:33:16'),
(312, 1, 3, 'Create Decision', 'Decision #9; source tally=TLY-2026-0010; outcome=Passed.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:40:39'),
(313, 1, 3, 'Decision Certify', 'DEC-2026-0009 Draft -> Certified.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:40:43'),
(314, 1, 3, 'Decision Publish', 'DEC-2026-0009 Certified -> Published.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:40:59'),
(315, 1, 3, 'Create Result Validation', 'VAL-2026-0008 · decision=DEC-2026-0009 · score=88.89.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:42:32'),
(316, 8, 12, 'Citizen Portal Login Failed', 'Invalid or ineligible sign-in attempt.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:44:52'),
(317, 8, 12, 'Citizen Portal Login Failed', 'Invalid or ineligible sign-in attempt.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:44:59'),
(318, 1, 3, 'AI Draft Decision Statement', 'Decision DEC-2026-0009 · Generated decision statement and legal basis.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:49:12'),
(319, 1, 3, 'AI Suggest Actions', 'Decision DEC-2026-0009 · Generated implementation action plan.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:52:04'),
(320, 1, 3, 'AI Suggest Actions', 'Decision DEC-2026-0009 · Generated implementation action plan.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:53:11'),
(321, 1, 3, 'AI Draft Decision Statement', 'Decision DEC-2026-0009 · Generated decision statement and legal basis.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-07 14:53:38'),
(322, 1, 2, 'LACMS Login', 'Successful LACMS sign-in.', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36', '2026-09-08 05:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `ai_request_logs`
--

CREATE TABLE `ai_request_logs` (
  `id` int(11) NOT NULL,
  `feedback_id` int(11) DEFAULT NULL,
  `source_type` varchar(40) NOT NULL DEFAULT 'LPH Feedback',
  `source_record_id` bigint(20) DEFAULT NULL,
  `provider` varchar(50) NOT NULL DEFAULT 'ollama',
  `model_used` varchar(100) DEFAULT NULL,
  `request_payload` longtext DEFAULT NULL,
  `response_payload` longtext DEFAULT NULL,
  `http_status` int(11) DEFAULT NULL,
  `success` tinyint(1) NOT NULL DEFAULT 0,
  `error_message` text DEFAULT NULL,
  `duration_ms` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ai_request_logs`
--

INSERT INTO `ai_request_logs` (`id`, `feedback_id`, `source_type`, `source_record_id`, `provider`, `model_used`, `request_payload`, `response_payload`, `http_status`, `success`, `error_message`, `duration_ms`, `created_at`) VALUES
(1, 2, 'LPH Feedback', NULL, 'ollama', 'llama3.2:1b', '{\"analysis_scope\":\"Complaint\",\"category_name\":\"Complaint\",\"text\":\"Submission scope: Complaint\\nCategory: Complaint\\nCitizen position: Oppose\\nSubject: sample\\nMessage: sample\"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T14:45:11.3463128Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Negative\\\",\\n  \\\"confidence_score\\\": 80,\\n  \\\"urgency_level\\\": \\\"High\\\",\\n  \\\"urgency_score\\\": 90,\\n  \\\"keyword_score\\\": 70,\\n  \\\"summary\\\": \\\"The citizen submitted a complaint regarding a sample issue, citing a health/safety risk and expressing strong dissatisfaction.\\\",\\n  \\\"keywords\\\": [\\\"sample\\\", \\\"health/safety risk\\\", \\\"strong dissatisfaction\\\"],\\n  \\\"risk_keywords\\\": [\\\"health/safety risk\\\", \\\"strong dissatisfaction\\\"],\\n  \\\"recommended_category\\\": \\\"Health and Safety\\\",\\n  \\\"suggested_response\\\": \\\"We apologize for the inconvenience and assure you that we are taking immediate action to address the issue. Please provide more details so we can assist you properly.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,87721,7036,25,68538,198,6888,25,68538,198,65661,24604,2361,25,29710,974,198,13317,25,6205,198,2097,25,6205,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,39589,761,220,330,83029,10622,794,220,1490,345,220,330,5673,2301,8438,794,330,12243,761,220,330,5673,2301,10622,794,220,1954,345,220,330,20454,10622,794,220,2031,345,220,330,1743,794,330,791,22618,14976,264,12458,9002,264,6205,4360,11,33264,264,2890,2754,39718,5326,323,37810,3831,97894,10560,220,330,30095,794,4482,13925,498,330,12393,2754,39718,5326,498,330,4620,97894,8257,220,330,82043,52454,794,4482,12393,2754,39718,5326,498,330,4620,97894,8257,220,330,86447,12110,794,330,14884,323,19220,761,220,330,82,54376,9852,794,330,1687,37979,369,279,61109,323,36015,499,430,584,527,4737,14247,1957,311,2686,279,4360,13,5321,3493,810,3649,779,584,649,7945,499,10489,1210,720,92],\"total_duration\":5022157600,\"load_duration\":2786474200,\"prompt_eval_count\":548,\"prompt_eval_duration\":157202000,\"eval_count\":152,\"eval_duration\":2068882000}', 200, 1, NULL, 5026, '2026-09-02 14:45:11'),
(2, 1, 'LPH Feedback', NULL, 'ollama', 'llama3.2:1b', '{\"analysis_scope\":\"Citizen Feedback\",\"category_name\":\"Opposition\",\"text\":\"Submission scope: Citizen Feedback\\nCategory: Opposition\\nCitizen position: Comment\\nSubject: An ordinance establishing a community waste segregation program in the City of Manila.\\nMessage: I think we need another hearing\"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:31:33.0746672Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Negative\\\",\\n  \\\"confidence_score\\\": 0,\\n  \\\"urgency_level\\\": \\\"High\\\",\\n  \\\"urgency_score\\\": 100,\\n  \\\"keyword_score\\\": 0,\\n  \\\"summary\\\": \\\"The citizen expressed concern about the proposed community waste segregation program, citing the need for a more comprehensive and effective solution.\\\",\\n  \\\"keywords\\\": [\\\"community waste segregation\\\", \\\"comprehensive solution\\\", \\\"effective program\\\"],\\n  \\\"risk_keywords\\\": [\\\"serious disruption\\\", \\\"health/safety risk\\\", \\\"serious impact\\\"],\\n  \\\"recommended_category\\\": \\\"Waste Management\\\",\\n  \\\"suggested_response\\\": \\\"We appreciate the citizen\'s feedback and will consider their concerns. We will review the proposal and explore options for a more effective community waste segregation program. We will provide a follow-up hearing to discuss the proposed changes.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,87721,7036,25,47317,37957,198,6888,25,66659,198,65661,24604,2361,25,12535,198,13317,25,1556,48721,31692,264,4029,12571,64244,2068,304,279,4409,315,57664,627,2097,25,358,1781,584,1205,2500,11011,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,39589,761,220,330,83029,10622,794,220,15,345,220,330,5673,2301,8438,794,330,12243,761,220,330,5673,2301,10622,794,220,1041,345,220,330,20454,10622,794,220,15,345,220,330,1743,794,330,791,22618,13605,4747,922,279,11223,4029,12571,64244,2068,11,33264,279,1205,369,264,810,16195,323,7524,6425,10560,220,330,30095,794,4482,29502,12571,64244,498,330,884,53999,6425,498,330,78995,2068,8257,220,330,82043,52454,794,4482,94427,44219,498,330,12393,2754,39718,5326,498,330,94427,5536,8257,220,330,86447,12110,794,330,54,5642,9744,761,220,330,82,54376,9852,794,330,1687,15763,279,22618,596,11302,323,690,2980,872,10742,13,1226,690,3477,279,14050,323,13488,2671,369,264,810,7524,4029,12571,64244,2068,13,1226,690,3493,264,1833,5352,11011,311,4358,279,11223,4442,1210,720,92],\"total_duration\":5329129200,\"load_duration\":2811701000,\"prompt_eval_count\":565,\"prompt_eval_duration\":133461000,\"eval_count\":171,\"eval_duration\":2377437000}', 200, 1, NULL, 5334, '2026-09-02 15:31:33'),
(3, NULL, 'CEF Submission', 1, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0001\",\"analysis_scope\":\"Citizen Feedback\",\"submission_type\":\"Feedback\",\"source_channel\":\"Web Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Web Portal\\nReference: CEF-2026-0001\\nSubmission scope: Citizen Feedback\\nSubmission type: Feedback\\nCategory: Health and Sanitation\\nSubject: sample\\nSummary supplied by citizen: I see a lot of lubak lubak in valenzuela\\nMessage/details: daming lubak\\nPortal priority selected by citizen: Normal\\nFeedback kind: Service Experience\\nService area: \\nDesired outcome: maayos\\nCitizen rating: 3\"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:55:13.0669403Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 80, \\n  \\\"summary\\\": \\\"The citizen submitted a complaint regarding the presence of a large number of lubak in Valenzuela, which is a health and sanitation concern. The citizen is seeking a resolution to this issue and is rating the service experience as 3 out of 5. The citizen is concerned about the potential health risks associated with the presence of such a large number of people in a small area.\\\",\\n  \\\"keywords\\\": [\\\"presence of lubak in Valenzuela\\\", \\\"health and sanitation concern\\\", \\\"large number of people\\\", \\\"small area\\\", \\\"citizen complaint\\\", \\\"service experience\\\"],\\n  \\\"risk_keywords\\\": [\\\"presence of lubak in Valenzuela\\\", \\\"health and sanitation concern\\\", \\\"large number of people\\\", \\\"small area\\\", \\\"citizen complaint\\\", \\\"service experience\\\", \\\"potential health risks\\\"],\\n  \\\"recommended_category\\\": \\\"Health and Sanitation\\\", \\n  \\\"suggested_response\\\": \\\"We apologize for the inconvenience and are taking immediate action to address the issue. We will work with our sanitation team to ensure that the area is properly cleaned and maintained. We appreciate the citizen\'s feedback and will follow up with an update on our progress.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,5000,34831,198,9032,25,356,15229,12,2366,21,12,931,16,198,87721,7036,25,47317,37957,198,87721,955,25,37957,198,6888,25,6401,323,5960,7709,198,13317,25,6205,198,19791,17665,555,22618,25,358,1518,264,2763,315,28445,587,28445,587,304,1062,17007,24669,198,2097,60365,25,3824,287,28445,587,198,50140,10844,4183,555,22618,25,18944,198,36448,3169,25,5475,21460,198,1898,3158,25,720,5001,2757,15632,25,7643,352,437,198,65661,24604,10959,25,220,18,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,1490,11,720,220,330,1743,794,330,791,22618,14976,264,12458,9002,279,9546,315,264,3544,1396,315,28445,587,304,4196,17007,24669,11,902,374,264,2890,323,77623,4747,13,578,22618,374,11125,264,11175,311,420,4360,323,374,10959,279,2532,3217,439,220,18,704,315,220,20,13,578,22618,374,11920,922,279,4754,2890,15635,5938,449,279,9546,315,1778,264,3544,1396,315,1274,304,264,2678,3158,10560,220,330,30095,794,4482,74519,315,28445,587,304,4196,17007,24669,498,330,12393,323,77623,4747,498,330,17185,1396,315,1274,498,330,9181,3158,498,330,54961,24604,12458,498,330,8095,3217,8257,220,330,82043,52454,794,4482,74519,315,28445,587,304,4196,17007,24669,498,330,12393,323,77623,4747,498,330,17185,1396,315,1274,498,330,9181,3158,498,330,54961,24604,12458,498,330,8095,3217,498,330,93036,2890,15635,8257,220,330,86447,12110,794,330,14884,323,5960,7709,498,720,220,330,82,54376,9852,794,330,1687,37979,369,279,61109,323,527,4737,14247,1957,311,2686,279,4360,13,1226,690,990,449,1057,77623,2128,311,6106,430,279,3158,374,10489,28822,323,18908,13,1226,15763,279,22618,596,11302,323,690,1833,709,449,459,2713,389,1057,5208,1210,720,92],\"total_duration\":4489763000,\"load_duration\":2646100,\"prompt_eval_count\":634,\"prompt_eval_duration\":143754000,\"eval_count\":286,\"eval_duration\":3921593000}', 200, 1, NULL, 4496, '2026-09-02 15:55:13'),
(4, NULL, 'CEF Submission', 2, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0002\",\"analysis_scope\":\"Citizen Feedback\",\"submission_type\":\"Feedback\",\"source_channel\":\"Citizen Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Citizen Portal\\nReference: CEF-2026-0002\\nSubmission scope: Citizen Feedback\\nSubmission type: Feedback\\nCategory: Environment\\nSubject: sample feedback\\nSummary supplied by citizen: sample feedback\\nMessage/details: sample feedback\\nPortal priority selected by citizen: High\\nFeedback kind: General Feedback\\nService area: val\\nDesired outcome: fixed\\nCitizen rating: 1\"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:55:19.5066659Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 80, \\n  \\\"summary\\\": \\\"The citizen provided a sample feedback on the environment category, stating that it is a general feedback and does not have any serious impact. The citizen rated the feedback as 1 out of 5, indicating a very positive sentiment.\\\",\\n  \\\"keywords\\\": [\\\"sample feedback\\\", \\\"environment\\\", \\\"general feedback\\\", \\\"citizen portal\\\", \\\"CEPFMS\\\", \\\"val\\\", \\\"service area\\\", \\\"fixed\\\", \\\"desired outcome\\\", \\\"citizen rating\\\", \\\"resolved\\\", \\\"positive\\\", \\\"satisfied\\\", \\\"appreciative\\\", \\\"supportive\\\", \\\"improved\\\", \\\"resolved\\\", \\\"general\\\", \\\"feedback\\\", \\\"complaint\\\", \\\"urgency\\\", \\\"risk\\\", \\\"health/safety risk\\\", \\\"serious disruption\\\", \\\"time-sensitive need\\\", \\\"resolved\\\", \\\"thankful follow-up\\\", \\\"negative\\\", \\\"repeated service failure\\\", \\\"strong dissatisfaction\\\", \\\"harm\\\", \\\"danger\\\", \\\"serious disruption\\\", \\\"urgent government-action need\\\", \\\"resolved\\\", \\\"thankful\\\", \\\"positive\\\", \\\"satisfied\\\", \\\"appreciative\\\", \\\"supportive\\\", \\\"improved\\\", \\\"resolved\\\", \\\"general\\\", \\\"feedback\\\", \\\"complaint\\\", \\\"urgency\\\", \\\"risk\\\", \\\"health/safety risk\\\", \\\"serious disruption\\\", \\\"time-sensitive need\\\", \\\"resolved\\\", \\\"thankful follow-up\\\", \\\"negative\\\", \\\"repeated service failure\\\", \\\"strong dissatisfaction\\\", \\\"harm\\\", \\\"danger\\\", \\\"serious disruption\\\", \\\"urgent government-action need\\\", \\\"resolved\\\", \\\"thankful\\\", \\\"positive\\\", \\\"satisfied\\\", \\\"appreciative\\\", \\\"supportive\\\", \\\"improved\\\", \\\"resolved\\\", \\\"general\\\", \\\"feedback\\\", \\\"complaint\\\", \\\"urgency\\\", \\\"risk\\\", \\\"health/safety risk\\\", \\\"serious disruption\\\", \\\"time-sensitive need\\\", \\\"resolved\\\", \\\"thankful follow-up\\\", \\\"negative\\\", \\\"repeated service failure\\\", \\\"strong dissatisfaction\\\", \\\"harm\\\", \\\"danger\\\", \\\"serious disruption\\\", \\\"urgent government-action need\\\", \\\"resolved\\\", \\\"thankful\\\", \\\"\",\"done\":true,\"done_reason\":\"length\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,931,17,198,87721,7036,25,47317,37957,198,87721,955,25,37957,198,6888,25,11847,198,13317,25,6205,11302,198,19791,17665,555,22618,25,6205,11302,198,2097,60365,25,6205,11302,198,50140,10844,4183,555,22618,25,5234,198,36448,3169,25,3331,37957,198,1898,3158,25,1062,198,5001,2757,15632,25,8521,198,65661,24604,10959,25,220,16,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,1490,11,720,220,330,1743,794,330,791,22618,3984,264,6205,11302,389,279,4676,5699,11,28898,430,433,374,264,4689,11302,323,1587,539,617,904,6129,5536,13,578,22618,22359,279,11302,439,220,16,704,315,220,20,11,19392,264,1633,6928,27065,10560,220,330,30095,794,4482,13925,11302,498,330,24175,498,330,25615,11302,498,330,54961,24604,24007,498,330,2152,20280,4931,498,330,838,498,330,8095,3158,498,330,22795,498,330,83882,15632,498,330,54961,24604,10959,498,330,40847,498,330,31587,498,330,82,47365,498,330,680,2827,54679,498,330,24249,535,498,330,318,96608,498,330,40847,498,330,25615,498,330,21674,498,330,884,32397,498,330,5673,2301,498,330,82043,498,330,12393,2754,39718,5326,498,330,94427,44219,498,330,1712,57767,1205,498,330,40847,498,330,58517,1285,1833,5352,498,330,43324,498,330,265,43054,2532,8060,498,330,4620,97894,498,330,71,2227,498,330,32550,498,330,94427,44219,498,330,86153,3109,26115,1205,498,330,40847,498,330,58517,1285,498,330,31587,498,330,82,47365,498,330,680,2827,54679,498,330,24249,535,498,330,318,96608,498,330,40847,498,330,25615,498,330,21674,498,330,884,32397,498,330,5673,2301,498,330,82043,498,330,12393,2754,39718,5326,498,330,94427,44219,498,330,1712,57767,1205,498,330,40847,498,330,58517,1285,1833,5352,498,330,43324,498,330,265,43054,2532,8060,498,330,4620,97894,498,330,71,2227,498,330,32550,498,330,94427,44219,498,330,86153,3109,26115,1205,498,330,40847,498,330,58517,1285,498,330,31587,498,330,82,47365,498,330,680,2827,54679,498,330,24249,535,498,330,318,96608,498,330,40847,498,330,25615,498,330,21674,498,330,884,32397,498,330,5673,2301,498,330,82043,498,330,12393,2754,39718,5326,498,330,94427,44219,498,330,1712,57767,1205,498,330,40847,498,330,58517,1285,1833,5352,498,330,43324,498,330,265,43054,2532,8060,498,330,4620,97894,498,330,71,2227,498,330,32550,498,330,94427,44219,498,330,86153,3109,26115,1205,498,330,40847,498,330,58517,1285,498,330],\"total_duration\":6371255500,\"load_duration\":2658800,\"prompt_eval_count\":618,\"prompt_eval_duration\":150588000,\"eval_count\":450,\"eval_duration\":6189994000}', 200, 0, 'The AI model did not return valid structured analysis.', 6376, '2026-09-02 15:55:19'),
(5, NULL, 'CEF Submission', 3, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0003\",\"analysis_scope\":\"Citizen Feedback\",\"submission_type\":\"Feedback\",\"source_channel\":\"Citizen Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Citizen Portal\\nReference: CEF-2026-0003\\nSubmission scope: Citizen Feedback\\nSubmission type: Feedback\\nCategory: Environment\\nSubject: sample feedback\\nSummary supplied by citizen: sample\\nMessage/details: sample\\nPortal priority selected by citizen: Normal\\nFeedback kind: General Feedback\\nService area: Valenzu\\nDesired outcome: fixed\\nCitizen rating: \"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:55:22.8241221Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 70, \\n  \\\"summary\\\": \\\"The citizen provided a sample feedback on the environment, expressing satisfaction with the service area and the desired outcome of a fixed service. The citizen also mentioned a concern about the portal\'s priority and suggested a solution. The feedback is well-written and polite, indicating a positive sentiment.\\\",\\n  \\\"keywords\\\": [\\\"environment\\\", \\\"service area\\\", \\\"desired outcome\\\", \\\"fixed service\\\", \\\"portal priority\\\", \\\"suggested solution\\\"],\\n  \\\"risk_keywords\\\": [\\\"portal priority\\\", \\\"suggested solution\\\"],\\n  \\\"recommended_category\\\": \\\"Environment Improvement\\\",\\n  \\\"suggested_response\\\": \\\"Thank you for your feedback on the environment. We appreciate your suggestion to improve the portal\'s priority and will consider it. We will also provide a fixed service to the Valenzu area as per your desired outcome. If you have any further concerns or suggestions, please do not hesitate to contact us.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,931,18,198,87721,7036,25,47317,37957,198,87721,955,25,37957,198,6888,25,11847,198,13317,25,6205,11302,198,19791,17665,555,22618,25,6205,198,2097,60365,25,6205,198,50140,10844,4183,555,22618,25,18944,198,36448,3169,25,3331,37957,198,1898,3158,25,4196,17007,84,198,5001,2757,15632,25,8521,198,65661,24604,10959,512,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,2031,11,720,220,330,1743,794,330,791,22618,3984,264,6205,11302,389,279,4676,11,37810,24617,449,279,2532,3158,323,279,12974,15632,315,264,8521,2532,13,578,22618,1101,9932,264,4747,922,279,24007,596,10844,323,12090,264,6425,13,578,11302,374,1664,67383,323,48887,11,19392,264,6928,27065,10560,220,330,30095,794,4482,24175,498,330,8095,3158,498,330,83882,15632,498,330,22795,2532,498,330,39053,10844,498,330,82,54376,6425,8257,220,330,82043,52454,794,4482,39053,10844,498,330,82,54376,6425,8257,220,330,86447,12110,794,330,13013,53751,761,220,330,82,54376,9852,794,330,13359,499,369,701,11302,389,279,4676,13,1226,15763,701,24710,311,7417,279,24007,596,10844,323,690,2980,433,13,1226,690,1101,3493,264,8521,2532,311,279,4196,17007,84,3158,439,824,701,12974,15632,13,1442,499,617,904,4726,10742,477,18726,11,4587,656,539,39666,311,3729,603,1210,720,92],\"total_duration\":3266383700,\"load_duration\":1622700,\"prompt_eval_count\":615,\"prompt_eval_duration\":109173000,\"eval_count\":229,\"eval_duration\":3136502000}', 200, 1, NULL, 3270, '2026-09-02 15:55:22'),
(6, NULL, 'CEF Submission', 10, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0010\",\"analysis_scope\":\"Complaint\",\"submission_type\":\"Complaint\",\"source_channel\":\"Citizen Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Citizen Portal\\nReference: CEF-2026-0010\\nSubmission scope: Complaint\\nSubmission type: Complaint\\nCategory: General Public Service\\nSubject: government complaint\\nSummary supplied by citizen: government complaint\\nMessage/details: government complaint\\nPortal priority selected by citizen: Urgent\\nCitizen-selected complaint urgency: Urgent\\nAffected service: citizen\\nIncident date/time: 2026-09-02 13:39:00\\nImportant instruction: independently assess AI urgency from the actual complaint, impact and keywords. The citizen-selected urgency is supporting context, not the required final AI urgency.\"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:55:34.2604535Z\",\"response\":\"{\\n  \\\"sentiment\\\": \\\"Positive\\\",\\n  \\\"confidence_score\\\": 90,\\n  \\\"urgency_level\\\": \\\"High\\\",\\n  \\\"urgency_score\\\": 80,\\n  \\\"keyword_score\\\": 90,\\n  \\\"summary\\\": \\\"The citizen has submitted a complaint regarding the government\'s service, citing a serious issue with the citizen\'s experience.\\\",\\n  \\\"keywords\\\": [\\n    \\\"government complaint\\\",\\n    \\\"service issue\\\",\\n    \\\"citizen experience\\\",\\n    \\\"government failure\\\",\\n    \\\"urgent government action needed\\\"\\n  ],\\n  \\\"risk_keywords\\\": [\\n    \\\"repeated service failure\\\",\\n    \\\"health/safety risk\\\",\\n    \\\"serious disruption\\\"\\n  ],\\n  \\\"recommended_category\\\": \\\"Government Service\\\",\\n  \\\"suggested_response\\\": \\\"We apologize for the inconvenience and assure you that we are taking immediate action to address the issue. We will provide a detailed response and follow up with an update as soon as possible. Please bear with us while we work to resolve this matter.\\\",\\n  \\\"urgency_score\\\": 80,\\n  \\\"keyword_score\\\": 90\\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,4119,15,198,87721,7036,25,68538,198,87721,955,25,68538,198,6888,25,3331,3142,5475,198,13317,25,3109,12458,198,19791,17665,555,22618,25,3109,12458,198,2097,60365,25,3109,12458,198,50140,10844,4183,555,22618,25,86586,306,198,65661,24604,46340,12458,54917,25,86586,306,198,82905,2532,25,22618,198,40345,1748,2457,36363,25,220,2366,21,12,2545,12,2437,220,1032,25,2137,25,410,198,53380,7754,25,29235,8720,15592,54917,505,279,5150,12458,11,5536,323,21513,13,578,22618,46340,54917,374,12899,2317,11,539,279,2631,1620,15592,54917,627,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,517,220,330,25526,3904,794,330,36590,761,220,330,83029,10622,794,220,1954,345,220,330,5673,2301,8438,794,330,12243,761,220,330,5673,2301,10622,794,220,1490,345,220,330,20454,10622,794,220,1954,345,220,330,1743,794,330,791,22618,706,14976,264,12458,9002,279,3109,596,2532,11,33264,264,6129,4360,449,279,22618,596,3217,10560,220,330,30095,794,2330,262,330,87863,12458,761,262,330,8095,4360,761,262,330,54961,24604,3217,761,262,330,87863,8060,761,262,330,86153,3109,1957,4460,702,220,3291,220,330,82043,52454,794,2330,262,330,265,43054,2532,8060,761,262,330,12393,2754,39718,5326,761,262,330,94427,44219,702,220,3291,220,330,86447,12110,794,330,62569,5475,761,220,330,82,54376,9852,794,330,1687,37979,369,279,61109,323,36015,499,430,584,527,4737,14247,1957,311,2686,279,4360,13,1226,690,3493,264,11944,2077,323,1833,709,449,459,2713,439,5246,439,3284,13,5321,11984,449,603,1418,584,990,311,9006,420,5030,10560,220,330,5673,2301,10622,794,220,1490,345,220,330,20454,10622,794,220,1954,198,92],\"total_duration\":3390222600,\"load_duration\":2152700,\"prompt_eval_count\":660,\"prompt_eval_duration\":411654000,\"eval_count\":215,\"eval_duration\":2942214000}', 200, 1, NULL, 3394, '2026-09-02 15:55:34'),
(7, 2, 'LPH Feedback', NULL, 'ollama', 'llama3.2:1b', '{\"analysis_scope\":\"Complaint\",\"category_name\":\"Complaint\",\"text\":\"Submission scope: Complaint\\nCategory: Complaint\\nCitizen position: Oppose\\nSubject: sample\\nMessage: sample\"}', '', NULL, 0, 'Could not connect to Ollama at http://127.0.0.1:11434. Make sure Ollama is running.', 2037, '2026-09-03 00:55:21'),
(8, NULL, 'CEF Submission', 5, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0005\",\"analysis_scope\":\"Complaint\",\"submission_type\":\"Complaint\",\"source_channel\":\"Citizen Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Citizen Portal\\nReference: CEF-2026-0005\\nSubmission scope: Complaint\\nSubmission type: Complaint\\nCategory: Environment\\nSubject: Sample Complaint\\nSummary supplied by citizen: Sample Complaint\\nMessage/details: Sample Complaint\\nPortal priority selected by citizen: Normal\\nCitizen-selected complaint urgency: Urgent\\nAffected service: Sample Complaint\\nIncident date/time: 2026-08-29 00:36:00\\nImportant instruction: independently assess AI urgency from the actual complaint, impact and keywords. The citizen-selected urgency is supporting context, not the required final AI urgency.\"}', '', NULL, 0, 'Could not connect to Ollama at http://127.0.0.1:11434. Make sure Ollama is running.', 2027, '2026-09-03 00:56:17'),
(9, NULL, 'CEF Submission', 6, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0006\",\"analysis_scope\":\"Complaint\",\"submission_type\":\"Complaint\",\"source_channel\":\"Citizen Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Citizen Portal\\nReference: CEF-2026-0006\\nSubmission scope: Complaint\\nSubmission type: Complaint\\nCategory: Environment\\nSubject: Sample Complaint\\nSummary supplied by citizen: Sample Complaint\\nMessage/details: Sample Complaint\\nPortal priority selected by citizen: Normal\\nCitizen-selected complaint urgency: High\\nAffected service: road\\nIncident date/time: 2026-09-01 19:24:00\\nImportant instruction: independently assess AI urgency from the actual complaint, impact and keywords. The citizen-selected urgency is supporting context, not the required final AI urgency.\"}', '', NULL, 0, 'Could not connect to Ollama at http://127.0.0.1:11434. Make sure Ollama is running.', 2036, '2026-09-03 00:56:19'),
(10, NULL, 'CEF Submission', 7, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0007\",\"analysis_scope\":\"Citizen Feedback\",\"submission_type\":\"Feedback\",\"source_channel\":\"Citizen Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Citizen Portal\\nReference: CEF-2026-0007\\nSubmission scope: Citizen Feedback\\nSubmission type: Feedback\\nCategory: Environment\\nSubject: Sample FeedBack\\nSummary supplied by citizen: Sample FeedBack\\nMessage/details: Sample FeedBack\\nPortal priority selected by citizen: High\\nFeedback kind: General Feedback\\nService area: val\\nDesired outcome: Just Feedback\\nCitizen rating: 4\"}', '', NULL, 0, 'Could not connect to Ollama at http://127.0.0.1:11434. Make sure Ollama is running.', 2017, '2026-09-03 00:56:21'),
(11, NULL, 'CEF Submission', 8, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0008\",\"analysis_scope\":\"Complaint\",\"submission_type\":\"Complaint\",\"source_channel\":\"Citizen Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Citizen Portal\\nReference: CEF-2026-0008\\nSubmission scope: Complaint\\nSubmission type: Complaint\\nCategory: Environment\\nSubject: Broken road\\nSummary supplied by citizen: need to take action on broken road\\nMessage/details: there\'s a lot of broken road in maynila\\nPortal priority selected by citizen: Urgent\\nCitizen-selected complaint urgency: Urgent\\nAffected service: Transportation\\nIncident date/time: 2026-09-02 13:26:00\\nImportant instruction: independently assess AI urgency from the actual complaint, impact and keywords. The citizen-selected urgency is supporting context, not the required final AI urgency.\"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-03T01:23:43.4884288Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 70, \\n  \\\"summary\\\": \\\"The citizen submitted a complaint regarding a broken road in Manila, citing the need for immediate action to resolve the issue.\\\", \\n  \\\"keywords\\\": [\\\"broken road\\\", \\\"Manila\\\", \\\"transportation\\\", \\\"urgent\\\", \\\"action needed\\\"], \\n  \\\"risk_keywords\\\": [\\\"repeated failure\\\", \\\"health/safety risk\\\", \\\"serious disruption\\\"], \\n  \\\"recommended_category\\\": \\\"Transportation\\\", \\n  \\\"suggested_response\\\": \\\"We apologize for the inconvenience and assure you that we are working on resolving the issue as soon as possible. We appreciate your patience and understanding in this matter. We will provide an update on the status of your complaint shortly.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,931,23,198,87721,7036,25,68538,198,87721,955,25,68538,198,6888,25,11847,198,13317,25,54683,5754,198,19791,17665,555,22618,25,1205,311,1935,1957,389,11102,5754,198,2097,60365,25,1070,596,264,2763,315,11102,5754,304,1253,121513,198,50140,10844,4183,555,22618,25,86586,306,198,65661,24604,46340,12458,54917,25,86586,306,198,82905,2532,25,30978,198,40345,1748,2457,36363,25,220,2366,21,12,2545,12,2437,220,1032,25,1627,25,410,198,53380,7754,25,29235,8720,15592,54917,505,279,5150,12458,11,5536,323,21513,13,578,22618,46340,54917,374,12899,2317,11,539,279,2631,1620,15592,54917,627,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,2031,11,720,220,330,1743,794,330,791,22618,14976,264,12458,9002,264,11102,5754,304,57664,11,33264,279,1205,369,14247,1957,311,9006,279,4360,10684,720,220,330,30095,794,4482,50009,5754,498,330,1692,10746,498,330,27543,367,498,330,86153,498,330,1335,4460,8073,720,220,330,82043,52454,794,4482,265,43054,8060,498,330,12393,2754,39718,5326,498,330,94427,44219,8073,720,220,330,86447,12110,794,330,28660,367,498,720,220,330,82,54376,9852,794,330,1687,37979,369,279,61109,323,36015,499,430,584,527,3318,389,53583,279,4360,439,5246,439,3284,13,1226,15763,701,30401,323,8830,304,420,5030,13,1226,690,3493,459,2713,389,279,2704,315,701,12458,20193,1210,720,92],\"total_duration\":38346008800,\"load_duration\":8534897500,\"prompt_eval_count\":671,\"prompt_eval_duration\":12986666000,\"eval_count\":187,\"eval_duration\":16748908000}', 200, 1, NULL, 38353, '2026-09-03 01:23:43');
INSERT INTO `ai_request_logs` (`id`, `feedback_id`, `source_type`, `source_record_id`, `provider`, `model_used`, `request_payload`, `response_payload`, `http_status`, `success`, `error_message`, `duration_ms`, `created_at`) VALUES
(12, NULL, 'CEF Submission', 9, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0009\",\"analysis_scope\":\"Complaint\",\"submission_type\":\"Complaint\",\"source_channel\":\"Citizen Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Citizen Portal\\nReference: CEF-2026-0009\\nSubmission scope: Complaint\\nSubmission type: Complaint\\nCategory: Environment\\nSubject: Broken street light\\nSummary supplied by citizen: Broken street light\\nMessage/details: Broken street light\\nPortal priority selected by citizen: Normal\\nCitizen-selected complaint urgency: Urgent\\nAffected service: Maynila Road\\nIncident date/time: 2026-09-02 13:50:00\\nImportant instruction: independently assess AI urgency from the actual complaint, impact and keywords. The citizen-selected urgency is supporting context, not the required final AI urgency.\"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-03T01:24:12.9871237Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 90, \\n  \\\"summary\\\": \\\"The citizen has reported a broken street light on Maynila Road, which is causing inconvenience and safety concerns. The citizen has provided a detailed description of the issue and has selected the \'Normal\' portal priority. The citizen has also indicated that the issue is urgent and requires immediate attention.\\\",\\n  \\\"keywords\\\": [\\\"Broken street light\\\", \\\"Maynila Road\\\", \\\"Urgent\\\", \\\"Safety concerns\\\", \\\"Inconvenience\\\", \\\"Citizen feedback\\\"],\\n  \\\"risk_keywords\\\": [\\\"Broken street light\\\", \\\"Safety concerns\\\", \\\"Inconvenience\\\", \\\"Citizen feedback\\\"],\\n  \\\"recommended_category\\\": \\\"Street Lighting and Infrastructure\\\"\\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,931,24,198,87721,7036,25,68538,198,87721,955,25,68538,198,6888,25,11847,198,13317,25,54683,8761,3177,198,19791,17665,555,22618,25,54683,8761,3177,198,2097,60365,25,54683,8761,3177,198,50140,10844,4183,555,22618,25,18944,198,65661,24604,46340,12458,54917,25,86586,306,198,82905,2532,25,3297,121513,9728,198,40345,1748,2457,36363,25,220,2366,21,12,2545,12,2437,220,1032,25,1135,25,410,198,53380,7754,25,29235,8720,15592,54917,505,279,5150,12458,11,5536,323,21513,13,578,22618,46340,54917,374,12899,2317,11,539,279,2631,1620,15592,54917,627,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,1954,11,720,220,330,1743,794,330,791,22618,706,5068,264,11102,8761,3177,389,3297,121513,9728,11,902,374,14718,61109,323,7296,10742,13,578,22618,706,3984,264,11944,4096,315,279,4360,323,706,4183,279,364,12484,6,24007,10844,13,578,22618,706,1101,16717,430,279,4360,374,34771,323,7612,14247,6666,10560,220,330,30095,794,4482,91626,8761,3177,498,330,11356,121513,9728,498,330,52,2026,306,498,330,74137,10742,498,330,644,444,40647,498,330,65661,24604,11302,8257,220,330,82043,52454,794,4482,91626,8761,3177,498,330,74137,10742,498,330,644,444,40647,498,330,65661,24604,11302,8257,220,330,86447,12110,794,330,35647,45623,323,45587,702,92],\"total_duration\":29392315000,\"load_duration\":3920000,\"prompt_eval_count\":662,\"prompt_eval_duration\":12863900000,\"eval_count\":180,\"eval_duration\":16494075000}', 200, 1, NULL, 29398, '2026-09-03 01:24:12'),
(13, 2, 'LPH Feedback', NULL, 'ollama', 'llama3.2:1b', '{\"analysis_scope\":\"Complaint\",\"category_name\":\"Complaint\",\"text\":\"Submission scope: Complaint\\nCategory: Complaint\\nCitizen position: Oppose\\nSubject: sample\\nMessage: sample\"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-03T01:25:14.4985935Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Negative\\\", \\n  \\\"confidence_score\\\": 0, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 100, \\n  \\\"keyword_score\\\": 0, \\n  \\\"summary\\\": \\\"The citizen submitted a complaint regarding the sample provided, citing a health/safety risk and expressing strong dissatisfaction.\\\",\\n  \\\"keywords\\\": [\\\"health/safety risk\\\", \\\"strong dissatisfaction\\\", \\\"sample\\\"], \\n  \\\"risk_keywords\\\": [\\\"health/safety risk\\\", \\\"serious disruption\\\"], \\n  \\\"recommended_category\\\": \\\"Health and Safety\\\", \\n  \\\"suggested_response\\\": \\\"We apologize for any inconvenience caused by the sample. We will provide a revised sample that meets your requirements. Please contact us to schedule a follow-up meeting to discuss the revised sample.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,87721,7036,25,68538,198,6888,25,68538,198,65661,24604,2361,25,29710,974,198,13317,25,6205,198,2097,25,6205,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,39589,498,720,220,330,83029,10622,794,220,15,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1041,11,720,220,330,20454,10622,794,220,15,11,720,220,330,1743,794,330,791,22618,14976,264,12458,9002,279,6205,3984,11,33264,264,2890,2754,39718,5326,323,37810,3831,97894,10560,220,330,30095,794,4482,12393,2754,39718,5326,498,330,4620,97894,498,330,13925,8073,720,220,330,82043,52454,794,4482,12393,2754,39718,5326,498,330,94427,44219,8073,720,220,330,86447,12110,794,330,14884,323,19220,498,720,220,330,82,54376,9852,794,330,1687,37979,369,904,61109,9057,555,279,6205,13,1226,690,3493,264,32828,6205,430,20628,701,8670,13,5321,3729,603,311,9899,264,1833,5352,6574,311,4358,279,32828,6205,1210,720,92],\"total_duration\":25459957400,\"load_duration\":10174600,\"prompt_eval_count\":548,\"prompt_eval_duration\":11234606000,\"eval_count\":166,\"eval_duration\":14152370000}', 200, 1, NULL, 25466, '2026-09-03 01:25:14'),
(14, NULL, 'CEF Submission', 11, 'ollama', 'llama3.2:1b', '{\"reference_number\":\"CEF-2026-0011\",\"analysis_scope\":\"Complaint\",\"submission_type\":\"Complaint\",\"source_channel\":\"Citizen Portal\",\"text\":\"Source system: Citizen Portal / CEPFMS\\nSource channel: Citizen Portal\\nReference: CEF-2026-0011\\nSubmission scope: Complaint\\nSubmission type: Complaint\\nCategory: Environment\\nSubject: Street Light\\nSummary supplied by citizen: Street Light\\nMessage/details: Broken street light\\nPortal priority selected by citizen: Low\\nCitizen-selected complaint urgency: Low\\nAffected service: Manila\\nIncident date/time: 2026-09-06 14:09:00\\nImportant instruction: independently assess AI urgency from the actual complaint, impact and keywords. The citizen-selected urgency is supporting context, not the required final AI urgency.\"}', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-06T06:11:15.2354022Z\",\"response\":\"{\\n  \\\"sentiment\\\": \\\"Positive\\\",\\n  \\\"confidence_score\\\": 90,\\n  \\\"urgency_level\\\": \\\"Medium\\\",\\n  \\\"urgency_score\\\": 60,\\n  \\\"keyword_score\\\": 80,\\n  \\\"summary\\\": \\\"The citizen has submitted a complaint about a broken street light in Manila.\\\",\\n  \\\"keywords\\\": [\\n    \\\"Street Light\\\",\\n    \\\"Broken Light\\\",\\n    \\\"Manila\\\",\\n    \\\"Complaint\\\",\\n    \\\"Service Failure\\\"\\n  ],\\n  \\\"risk_keywords\\\": [\\n    \\\"Safety\\\",\\n    \\\"Health Risk\\\",\\n    \\\"Disruption\\\",\\n    \\\"Urgent Action Needed\\\"\\n  ],\\n  \\\"recommended_category\\\": \\\"Street Lighting\\\",\\n  \\\"suggested_response\\\": \\\"We appreciate the citizen\'s feedback and will investigate the matter. We will provide a response as soon as possible. Thank you for bringing this issue to our attention.\\\"\\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,4119,16,198,87721,7036,25,68538,198,87721,955,25,68538,198,6888,25,11847,198,13317,25,6825,8828,198,19791,17665,555,22618,25,6825,8828,198,2097,60365,25,54683,8761,3177,198,50140,10844,4183,555,22618,25,12310,198,65661,24604,46340,12458,54917,25,12310,198,82905,2532,25,57664,198,40345,1748,2457,36363,25,220,2366,21,12,2545,12,2705,220,975,25,2545,25,410,198,53380,7754,25,29235,8720,15592,54917,505,279,5150,12458,11,5536,323,21513,13,578,22618,46340,54917,374,12899,2317,11,539,279,2631,1620,15592,54917,627,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,517,220,330,25526,3904,794,330,36590,761,220,330,83029,10622,794,220,1954,345,220,330,5673,2301,8438,794,330,42094,761,220,330,5673,2301,10622,794,220,1399,345,220,330,20454,10622,794,220,1490,345,220,330,1743,794,330,791,22618,706,14976,264,12458,922,264,11102,8761,3177,304,57664,10560,220,330,30095,794,2330,262,330,35647,8828,761,262,330,91626,8828,761,262,330,1692,10746,761,262,330,1110,32397,761,262,330,1898,33360,702,220,3291,220,330,82043,52454,794,2330,262,330,74137,761,262,330,14884,32388,761,262,330,4944,14455,761,262,330,52,2026,306,5703,57661,702,220,3291,220,330,86447,12110,794,330,35647,45623,761,220,330,82,54376,9852,794,330,1687,15763,279,22618,596,11302,323,690,19874,279,5030,13,1226,690,3493,264,2077,439,5246,439,3284,13,9930,499,369,12967,420,4360,311,1057,6666,10246,92],\"total_duration\":48973365700,\"load_duration\":14093090400,\"prompt_eval_count\":657,\"prompt_eval_cached_count\":0,\"prompt_eval_duration\":17264674000,\"eval_count\":174,\"eval_duration\":17444108000}', 200, 1, NULL, 48983, '2026-09-06 06:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `hearing_id` int(11) NOT NULL,
  `registration_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Present',
  `checked_in_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `attendance_type` varchar(50) DEFAULT 'On-site',
  `check_in_method` varchar(50) DEFAULT 'Manual',
  `checked_out_at` datetime DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_event_history`
--

CREATE TABLE `attendance_event_history` (
  `id` bigint(20) NOT NULL,
  `attendance_id` int(11) DEFAULT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `hearing_id` int(11) NOT NULL,
  `registration_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `check_in_method` varchar(50) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `actor_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendance_logs`
--

CREATE TABLE `attendance_logs` (
  `id` int(11) NOT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `hearing_id` int(11) NOT NULL,
  `registration_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `actor_user_id` int(11) DEFAULT NULL,
  `check_in_method` varchar(50) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `entity_type` varchar(150) NOT NULL,
  `entity_id` varchar(100) DEFAULT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `system_id`, `action`, `entity_type`, `entity_id`, `old_values`, `new_values`, `ip_address`, `user_agent`, `created_at`) VALUES
(1, 1, 2, 'Create User', 'Shared User', '2', NULL, '{\"full_name\":\"Micko Laput\",\"email\":\"mickolaput@gmail.com\",\"role_id\":2,\"account_status\":\"Active\",\"lacms_access_status\":\"Active\",\"access_level\":\"Staff\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:34:19'),
(2, 1, 2, 'Update User', 'Shared User', '2', '{\"id\":2,\"username\":\"micko1\",\"full_name\":\"Micko Laput\",\"email\":\"mickolaput@gmail.com\",\"phone\":null,\"password\":\"$2y$10$zP9ACRDqJE.p0aQiXPiAnOiOliGTWma7FI4b43/MGJ4J7m.Q01miK\",\"role_id\":2,\"office_id\":3,\"department_id\":null,\"status\":\"Active\",\"created_at\":\"2026-08-24 19:34:19\",\"last_login_at\":null,\"updated_at\":\"2026-08-24 19:34:19\",\"deleted_at\":null}', '{\"full_name\":\"Micko Laput\",\"email\":\"mickolaput@gmail.com\",\"role_id\":2,\"account_status\":\"Active\",\"lacms_access_status\":\"Inactive\",\"access_level\":\"Staff\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:34:53'),
(3, 1, 2, 'System Access', 'Shared User', '2', NULL, '{\"lacms_access_status\":\"Active\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:37:16'),
(4, 1, 2, 'Update User', 'Shared User', '2', '{\"id\":2,\"username\":\"micko1\",\"full_name\":\"Micko Laput\",\"email\":\"mickolaput@gmail.com\",\"phone\":null,\"password\":\"$2y$10$zP9ACRDqJE.p0aQiXPiAnOiOliGTWma7FI4b43/MGJ4J7m.Q01miK\",\"role_id\":2,\"office_id\":3,\"department_id\":null,\"status\":\"Active\",\"created_at\":\"2026-08-24 19:34:19\",\"last_login_at\":null,\"updated_at\":\"2026-08-24 19:34:53\",\"deleted_at\":null}', '{\"full_name\":\"Micko Laput\",\"email\":\"mickolaput@gmail.com\",\"role_id\":2,\"account_status\":\"Active\",\"lacms_access_status\":\"Inactive\",\"access_level\":\"Staff\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:37:22'),
(5, 1, 2, 'Update User', 'Shared User', '2', '{\"id\":2,\"username\":\"micko1\",\"full_name\":\"Micko Laput\",\"email\":\"mickolaput@gmail.com\",\"phone\":null,\"password\":\"$2y$10$zP9ACRDqJE.p0aQiXPiAnOiOliGTWma7FI4b43/MGJ4J7m.Q01miK\",\"role_id\":2,\"office_id\":3,\"department_id\":null,\"status\":\"Active\",\"created_at\":\"2026-08-24 19:34:19\",\"last_login_at\":null,\"updated_at\":\"2026-08-24 19:37:22\",\"deleted_at\":null}', '{\"full_name\":\"Micko Laput\",\"email\":\"mickolaput@gmail.com\",\"role_id\":2,\"account_status\":\"Active\",\"lacms_access_status\":\"Active\",\"access_level\":\"Staff\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:37:27'),
(6, 1, 2, 'Create User', 'Shared User', '3', NULL, '{\"full_name\":\"nonelichz\",\"email\":\"nonelichz@gmail.com\",\"role_id\":2,\"account_status\":\"Active\",\"lacms_access_status\":\"Active\",\"access_level\":\"Staff\"}', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-24 11:38:58');

-- --------------------------------------------------------

--
-- Table structure for table `cef_ai_analysis`
--

CREATE TABLE `cef_ai_analysis` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `analysis_type` varchar(60) NOT NULL,
  `provider` varchar(60) DEFAULT NULL,
  `model_used` varchar(120) DEFAULT NULL,
  `result_json` longtext DEFAULT NULL,
  `confidence_score` decimal(6,3) DEFAULT NULL,
  `review_status` varchar(40) NOT NULL DEFAULT 'Unreviewed',
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_ai_analysis`
--

INSERT INTO `cef_ai_analysis` (`id`, `submission_id`, `analysis_type`, `provider`, `model_used`, `result_json`, `confidence_score`, `review_status`, `reviewed_by`, `reviewed_at`, `created_at`) VALUES
(1, 5, 'Triage & Categorization', 'ollama', 'llama3.2:1b', '{\"success\":true,\"sentiment\":\"Positive\",\"confidence_score\":75,\"urgency_level\":\"Low\",\"urgency_score\":60,\"recommended_category\":\"Infrastructure\",\"recommended_office\":\"City Engineering Department\",\"content_safety\":\"Safe\",\"actionability\":\"Complete\",\"executive_summary\":\"The citizen submitted a complaint regarding the cleanliness of their location.\",\"key_topics\":[\"Location\",\"Cleanliness\"],\"risk_keywords\":[\"Overcrowding\",\"Littering\"],\"recommended_action\":\"Review submission details and assign to relevant department.\",\"duration_ms\":24225,\"model_used\":\"llama3.2:1b\",\"provider\":\"ollama\"}', 0.750, 'Reviewed', NULL, NULL, '2026-09-07 02:44:05'),
(2, 10, 'Triage & Categorization', 'ollama', 'llama3.2:1b', '{\"success\":true,\"sentiment\":\"Positive\",\"confidence_score\":75,\"urgency_level\":\"Low\",\"urgency_score\":60,\"recommended_category\":\"Infrastructure\",\"recommended_office\":\"City Engineering Department\",\"content_safety\":\"Safe\",\"actionability\":\"Complete\",\"executive_summary\":\"The citizen submitted a complaint regarding the condition of their location, L.\",\"key_topics\":[\"Location\",\"Condition\"],\"risk_keywords\":[\"Garbage overflow\"],\"recommended_action\":\"The City Engineering Department will inspect the location and address the issue of garbage overflow in a timely manner.\",\"duration_ms\":26775,\"model_used\":\"llama3.2:1b\",\"provider\":\"ollama\"}', 0.750, 'Reviewed', NULL, NULL, '2026-09-07 02:53:51'),
(3, 8, 'Triage & Categorization', 'ollama', 'llama3.2:1b', '{\"success\":true,\"sentiment\":\"Positive\",\"confidence_score\":75,\"urgency_level\":\"Low\",\"urgency_score\":60,\"recommended_category\":\"Infrastructure\",\"recommended_office\":\"City Engineering Department\",\"content_safety\":\"Safe\",\"actionability\":\"Complete\",\"executive_summary\":\"A citizen submitted a complaint about the condition of the road in L.\",\"key_topics\":[\"Broken road\"],\"risk_keywords\":[\"Overcrowding\",\"Traffic congestion\"],\"recommended_action\":\"Review submission details and assign to relevant department.\",\"duration_ms\":21268,\"model_used\":\"llama3.2:1b\",\"provider\":\"ollama\"}', 0.750, 'Reviewed', NULL, NULL, '2026-09-07 02:55:52'),
(4, 9, 'Triage & Categorization', 'ollama', 'llama3.2:1b', '{\"success\":true,\"sentiment\":\"Positive\",\"confidence_score\":75,\"urgency_level\":\"Low\",\"urgency_score\":60,\"recommended_category\":\"Infrastructure\",\"recommended_office\":\"City Engineering Department\",\"content_safety\":\"Safe\",\"actionability\":\"Complete\",\"executive_summary\":\"A citizen reported a broken street light at location L.\",\"key_topics\":[\"Street Light\",\"Broken\"],\"risk_keywords\":[\"Overcrowding\",\"Traffic Congestion\"],\"recommended_action\":\"Review submission details and assign to relevant department.\",\"duration_ms\":22687,\"model_used\":\"llama3.2:1b\",\"provider\":\"ollama\"}', 0.750, 'Reviewed', NULL, NULL, '2026-09-07 03:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `cef_ai_analysis_history`
--

CREATE TABLE `cef_ai_analysis_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `analysis_id` bigint(20) UNSIGNED DEFAULT NULL,
  `analysis_version` int(11) NOT NULL DEFAULT 1,
  `analysis_scope` varchar(30) DEFAULT NULL,
  `sentiment` varchar(20) DEFAULT NULL,
  `confidence_score` decimal(5,2) DEFAULT NULL,
  `urgency_level` varchar(20) DEFAULT NULL,
  `urgency_score` decimal(5,2) DEFAULT NULL,
  `keyword_score` decimal(5,2) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`keywords`)),
  `risk_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`risk_keywords`)),
  `recommended_category` varchar(150) DEFAULT NULL,
  `suggested_response` text DEFAULT NULL,
  `flagged_for_review` tinyint(1) NOT NULL DEFAULT 0,
  `review_status` varchar(30) DEFAULT NULL,
  `review_notes` text DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `analysis_status` varchar(20) DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `model_used` varchar(100) DEFAULT NULL,
  `raw_response` longtext DEFAULT NULL,
  `analyzed_at` datetime DEFAULT NULL,
  `archived_reason` varchar(50) NOT NULL DEFAULT 'Re-analysis',
  `archived_by` int(11) DEFAULT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cef_analytics_alerts`
--

CREATE TABLE `cef_analytics_alerts` (
  `id` bigint(20) NOT NULL,
  `alert_type` varchar(80) NOT NULL,
  `metric_key` varchar(120) NOT NULL,
  `dimension_type` varchar(100) DEFAULT NULL,
  `dimension_value` varchar(255) DEFAULT NULL,
  `period_start` date DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  `metric_value` decimal(18,4) NOT NULL DEFAULT 0.0000,
  `threshold_value` decimal(18,4) DEFAULT NULL,
  `severity` varchar(30) NOT NULL DEFAULT 'Attention',
  `status` varchar(30) NOT NULL DEFAULT 'Open',
  `details` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `resolution_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cef_analytics_snapshots`
--

CREATE TABLE `cef_analytics_snapshots` (
  `id` bigint(20) NOT NULL,
  `snapshot_date` date NOT NULL,
  `period_start` date DEFAULT NULL,
  `period_end` date DEFAULT NULL,
  `metric_key` varchar(120) NOT NULL,
  `dimension_type` varchar(100) DEFAULT NULL,
  `dimension_value` varchar(255) DEFAULT NULL,
  `metric_value` decimal(18,4) NOT NULL DEFAULT 0.0000,
  `metadata_json` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cef_assignments`
--

CREATE TABLE `cef_assignments` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `office_id` int(11) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `assignment_role` varchar(50) NOT NULL DEFAULT 'Primary',
  `status` varchar(50) NOT NULL DEFAULT 'Assigned',
  `assigned_by` int(11) DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `due_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_assignments`
--

INSERT INTO `cef_assignments` (`id`, `submission_id`, `office_id`, `committee_id`, `assigned_user_id`, `assignment_role`, `status`, `assigned_by`, `assigned_at`, `due_at`, `completed_at`, `notes`, `updated_at`) VALUES
(1, 11, 3, 2, 1, 'Primary', 'Completed', 1, '2026-09-06 06:17:38', '2026-09-08 14:17:00', '2026-09-06 14:19:02', NULL, '2026-09-06 06:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `cef_assignment_history`
--

CREATE TABLE `cef_assignment_history` (
  `id` bigint(20) NOT NULL,
  `assignment_id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_assignment_history`
--

INSERT INTO `cef_assignment_history` (`id`, `assignment_id`, `submission_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 11, 'Assign', NULL, 'Assigned', 'Primary complaint assignment updated.', 1, '2026-09-06 06:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `cef_case_updates`
--

CREATE TABLE `cef_case_updates` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `assignment_id` bigint(20) DEFAULT NULL,
  `update_type` varchar(60) NOT NULL DEFAULT 'Progress Update',
  `update_text` longtext NOT NULL,
  `public_visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cef_categories`
--

CREATE TABLE `cef_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(180) NOT NULL,
  `category_type` varchar(30) NOT NULL DEFAULT 'All',
  `description` text DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `default_office_id` int(11) DEFAULT NULL,
  `default_committee_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_categories`
--

INSERT INTO `cef_categories` (`id`, `name`, `category_type`, `description`, `parent_id`, `default_office_id`, `default_committee_id`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'General Public Service', 'All', 'General concerns and observations regarding public service delivery.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24'),
(2, 'Infrastructure', 'All', 'Roads, drainage, public facilities, utilities and community infrastructure.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24'),
(3, 'Public Safety', 'All', 'Community safety, emergency concerns, enforcement and risk-related issues.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24'),
(4, 'Environment', 'All', 'Waste, pollution, waterways, green spaces and environmental concerns.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24'),
(5, 'Health and Sanitation', 'All', 'Public health, sanitation and cleanliness concerns.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24'),
(6, 'Transportation and Mobility', 'All', 'Traffic, public transport, pedestrian access and mobility concerns.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24'),
(7, 'Social Services', 'All', 'Community assistance, vulnerable groups and social service concerns.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24'),
(8, 'Governance and Transparency', 'All', 'Government processes, transparency, accountability and citizen participation.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24'),
(9, 'Ordinance and Policy', 'All', 'Policy suggestions, ordinance concerns and legislative recommendations.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24'),
(10, 'Other', 'All', 'Citizen engagement records that require manual classification.', NULL, NULL, NULL, 1, NULL, '2026-08-17 13:13:24', '2026-08-17 13:13:24');

-- --------------------------------------------------------

--
-- Table structure for table `cef_complaints`
--

CREATE TABLE `cef_complaints` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `affected_service` varchar(180) DEFAULT NULL,
  `incident_datetime` datetime DEFAULT NULL,
  `urgency_level` varchar(30) NOT NULL DEFAULT 'Normal',
  `acknowledgement_target_at` datetime DEFAULT NULL,
  `response_target_at` datetime DEFAULT NULL,
  `resolution_target_at` datetime DEFAULT NULL,
  `resolution_summary` longtext DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `citizen_confirmation` varchar(40) NOT NULL DEFAULT 'Not Requested',
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_complaints`
--

INSERT INTO `cef_complaints` (`id`, `submission_id`, `affected_service`, `incident_datetime`, `urgency_level`, `acknowledgement_target_at`, `response_target_at`, `resolution_target_at`, `resolution_summary`, `resolved_at`, `citizen_confirmation`, `confirmed_at`, `created_at`, `updated_at`) VALUES
(1, 5, 'Sample Complaint', '2026-08-29 00:36:00', 'Urgent', '2026-08-29 04:36:47', '2026-08-29 12:36:47', '2026-08-31 00:36:47', NULL, NULL, 'Not Requested', NULL, '2026-08-28 16:36:47', '2026-08-28 16:36:47'),
(2, 6, 'road', '2026-09-01 19:24:00', 'High', '2026-09-02 19:24:52', '2026-09-03 19:24:52', '2026-09-06 19:24:52', NULL, NULL, 'Not Requested', NULL, '2026-09-01 11:24:52', '2026-09-01 11:24:52'),
(3, 8, 'Transportation', '2026-09-02 13:26:00', 'Urgent', '2026-09-03 02:26:45', '2026-09-03 10:26:45', '2026-09-04 22:26:45', NULL, NULL, 'Not Requested', NULL, '2026-09-02 14:26:45', '2026-09-02 14:26:45'),
(4, 9, 'Maynila Road', '2026-09-02 13:50:00', 'Low', '2026-09-03 02:50:18', '2026-09-03 10:50:18', '2026-09-04 22:50:18', NULL, NULL, 'Not Requested', NULL, '2026-09-02 14:50:18', '2026-09-07 03:16:10'),
(5, 10, 'citizen', '2026-09-02 13:39:00', 'Low', '2026-09-03 03:39:54', '2026-09-03 11:39:54', '2026-09-04 23:39:54', NULL, NULL, 'Not Requested', NULL, '2026-09-02 15:39:54', '2026-09-07 02:54:17'),
(6, 11, 'Manila', '2026-09-06 14:09:00', 'Low', '2026-09-09 14:10:00', '2026-09-11 14:10:00', '2026-09-21 14:10:00', 'This is resolved', '2026-09-06 14:19:02', 'Requested', NULL, '2026-09-06 06:10:00', '2026-09-06 06:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `cef_duplicate_matches`
--

CREATE TABLE `cef_duplicate_matches` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `matched_submission_id` bigint(20) NOT NULL,
  `similarity_score` decimal(6,3) DEFAULT NULL,
  `match_source` varchar(40) NOT NULL DEFAULT 'Manual',
  `status` varchar(40) NOT NULL DEFAULT 'Suggested',
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cef_escalations`
--

CREATE TABLE `cef_escalations` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `assignment_id` bigint(20) DEFAULT NULL,
  `escalation_level` varchar(40) NOT NULL DEFAULT 'Attention',
  `reason` longtext NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'Open',
  `escalated_to_user_id` int(11) DEFAULT NULL,
  `escalated_to_office_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `resolution_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cef_feedback_submissions`
--

CREATE TABLE `cef_feedback_submissions` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `feedback_kind` varchar(60) NOT NULL DEFAULT 'General Feedback',
  `service_area` varchar(180) DEFAULT NULL,
  `desired_outcome` text DEFAULT NULL,
  `citizen_rating` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_feedback_submissions`
--

INSERT INTO `cef_feedback_submissions` (`id`, `submission_id`, `feedback_kind`, `service_area`, `desired_outcome`, `citizen_rating`, `created_at`, `updated_at`) VALUES
(1, 1, 'Service Experience', NULL, 'maayos', 3, '2026-08-18 15:49:22', '2026-08-18 15:49:22'),
(2, 2, 'General Feedback', 'val', 'fixed', 1, '2026-08-25 07:25:53', '2026-08-25 07:25:53'),
(3, 3, 'General Feedback', 'Valenzu', 'fixed', NULL, '2026-08-28 16:32:24', '2026-08-28 16:32:24'),
(4, 7, 'General Feedback', 'val', 'Just Feedback', 4, '2026-09-01 11:26:36', '2026-09-01 11:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `cef_followups`
--

CREATE TABLE `cef_followups` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `response_id` bigint(20) DEFAULT NULL,
  `direction` varchar(40) NOT NULL,
  `sender_user_id` int(11) DEFAULT NULL,
  `sender_name` varchar(180) DEFAULT NULL,
  `message` longtext NOT NULL,
  `public_visible` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_followups`
--

INSERT INTO `cef_followups` (`id`, `submission_id`, `response_id`, `direction`, `sender_user_id`, `sender_name`, `message`, `public_visible`, `created_at`) VALUES
(1, 2, NULL, 'Citizen to Council', 5, 'nardz', 'update on this?', 1, '2026-08-25 07:46:12'),
(2, 2, NULL, 'Citizen to Council', 5, 'nardz', 'hi', 1, '2026-08-25 10:16:34'),
(3, 2, NULL, 'Council to Citizen', 1, 'System Administrator', 'hi', 1, '2026-08-25 10:17:14'),
(4, 3, NULL, 'Council to Citizen', 1, 'System Administrator', 'Hello', 1, '2026-08-28 16:34:20'),
(5, 3, NULL, 'Citizen to Council', 6, 'Micko Laput', 'Hi', 1, '2026-08-28 16:34:51'),
(6, 7, NULL, 'Council to Citizen', 1, 'System Administrator', 'Hello', 1, '2026-09-01 11:28:04'),
(7, 7, NULL, 'Citizen to Council', 7, 'bonelichz', 'Hi', 1, '2026-09-01 11:28:31'),
(8, 11, NULL, 'Council to Citizen', 1, 'System Administrator', 'This is addressed', 1, '2026-09-06 06:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `cef_legislative_referrals`
--

CREATE TABLE `cef_legislative_referrals` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `referral_type` varchar(80) NOT NULL DEFAULT 'Citizen Engagement Referral',
  `status` varchar(50) NOT NULL DEFAULT 'Referred',
  `notes` text DEFAULT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `referred_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cef_moderation_checklist`
--

CREATE TABLE `cef_moderation_checklist` (
  `id` bigint(20) NOT NULL,
  `moderation_review_id` bigint(20) NOT NULL,
  `item_code` varchar(80) NOT NULL,
  `item_label` varchar(255) NOT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'Pending',
  `notes` text DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_moderation_checklist`
--

INSERT INTO `cef_moderation_checklist` (`id`, `moderation_review_id`, `item_code`, `item_label`, `status`, `notes`, `updated_by`, `updated_at`) VALUES
(1, 1, 'completeness', 'Required details are complete and understandable.', 'Pass', NULL, 1, '2026-08-28 16:37:38'),
(2, 1, 'relevance', 'Submission is relevant to City Council / public service processing.', 'Pass', NULL, 1, '2026-08-28 16:37:40'),
(3, 1, 'content', 'Content is not spam, abusive, fraudulent, or clearly non-actionable.', 'Pass', NULL, 1, '2026-08-28 16:37:42'),
(4, 1, 'duplicate', 'Potential duplicate submissions have been checked.', 'Pass', NULL, 1, '2026-08-28 16:37:47'),
(5, 1, 'classification', 'Submission type, category, urgency, and location are reasonably classified.', 'Pass', NULL, 1, '2026-08-28 16:37:46'),
(6, 1, 'contact', 'Citizen contact / anonymity requirements are handled appropriately.', 'Pass', NULL, 1, '2026-08-28 16:37:46'),
(7, 2, 'completeness', 'Required details are complete and understandable.', 'Pass', NULL, 1, '2026-09-06 06:16:49'),
(8, 2, 'relevance', 'Submission is relevant to City Council / public service processing.', 'Pass', NULL, 1, '2026-09-06 06:16:51'),
(9, 2, 'content', 'Content is not spam, abusive, fraudulent, or clearly non-actionable.', 'Pass', NULL, 1, '2026-09-06 06:16:55'),
(10, 2, 'duplicate', 'Potential duplicate submissions have been checked.', 'Pass', NULL, 1, '2026-09-06 06:16:59'),
(11, 2, 'classification', 'Submission type, category, urgency, and location are reasonably classified.', 'Pass', NULL, 1, '2026-09-06 06:17:01'),
(12, 2, 'contact', 'Citizen contact / anonymity requirements are handled appropriately.', 'Pass', NULL, 1, '2026-09-06 06:17:03'),
(13, 3, 'completeness', 'Required details are complete and understandable.', 'Pending', NULL, 1, '2026-09-07 02:57:44'),
(14, 3, 'relevance', 'Submission is relevant to City Council / public service processing.', 'Pending', NULL, 1, '2026-09-07 02:57:44'),
(15, 3, 'content', 'Content is not spam, abusive, fraudulent, or clearly non-actionable.', 'Pending', NULL, 1, '2026-09-07 02:57:44'),
(16, 3, 'duplicate', 'Potential duplicate submissions have been checked.', 'Pending', NULL, 1, '2026-09-07 02:57:44'),
(17, 3, 'classification', 'Submission type, category, urgency, and location are reasonably classified.', 'Pending', NULL, 1, '2026-09-07 02:57:44'),
(18, 3, 'contact', 'Citizen contact / anonymity requirements are handled appropriately.', 'Pending', NULL, 1, '2026-09-07 02:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `cef_moderation_reviews`
--

CREATE TABLE `cef_moderation_reviews` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `review_round` int(11) NOT NULL DEFAULT 1,
  `reviewer_id` int(11) DEFAULT NULL,
  `completeness_status` varchar(40) NOT NULL DEFAULT 'Pending',
  `relevance_status` varchar(40) NOT NULL DEFAULT 'Pending',
  `duplicate_status` varchar(40) NOT NULL DEFAULT 'Pending',
  `identity_status` varchar(40) NOT NULL DEFAULT 'Not Required',
  `content_status` varchar(40) NOT NULL DEFAULT 'Pending',
  `classification_status` varchar(40) NOT NULL DEFAULT 'Pending',
  `decision` varchar(60) NOT NULL DEFAULT 'Pending',
  `duplicate_of_submission_id` bigint(20) DEFAULT NULL,
  `notes` longtext DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_moderation_reviews`
--

INSERT INTO `cef_moderation_reviews` (`id`, `submission_id`, `review_round`, `reviewer_id`, `completeness_status`, `relevance_status`, `duplicate_status`, `identity_status`, `content_status`, `classification_status`, `decision`, `duplicate_of_submission_id`, `notes`, `reviewed_at`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 1, 'Pass', 'Pass', 'Pass', 'Pass', 'Pass', 'Pass', 'Validated', NULL, NULL, '2026-08-29 00:37:58', '2026-08-28 16:37:27', '2026-08-28 16:37:58'),
(2, 11, 1, 1, 'Pass', 'Pass', 'Pass', 'Pass', 'Pass', 'Pass', 'Validated', NULL, NULL, '2026-09-06 14:17:10', '2026-09-06 06:16:28', '2026-09-06 06:17:10'),
(3, 8, 1, 1, 'Pending', 'Pending', 'Pending', 'Not Required', 'Pending', 'Pending', 'Pending', NULL, NULL, NULL, '2026-09-07 02:57:44', '2026-09-07 02:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `cef_notifications`
--

CREATE TABLE `cef_notifications` (
  `id` bigint(20) NOT NULL,
  `notification_reference` varchar(60) NOT NULL,
  `submission_id` bigint(20) DEFAULT NULL,
  `response_id` bigint(20) DEFAULT NULL,
  `notification_type` varchar(80) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Ready',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_notifications`
--

INSERT INTO `cef_notifications` (`id`, `notification_reference`, `submission_id`, `response_id`, `notification_type`, `subject`, `message`, `scheduled_at`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'NTF-2026-0001', 5, 1, 'Citizen Response', 'complaint response', 'complaint response', NULL, 'Sent', 1, '2026-09-04 08:10:18', '2026-09-04 08:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `cef_notification_delivery_attempts`
--

CREATE TABLE `cef_notification_delivery_attempts` (
  `id` bigint(20) NOT NULL,
  `notification_recipient_id` bigint(20) NOT NULL,
  `delivery_channel` varchar(40) NOT NULL,
  `attempt_number` int(11) NOT NULL DEFAULT 1,
  `status` varchar(40) NOT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `response_code` varchar(100) DEFAULT NULL,
  `response_message` text DEFAULT NULL,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_notification_delivery_attempts`
--

INSERT INTO `cef_notification_delivery_attempts` (`id`, `notification_recipient_id`, `delivery_channel`, `attempt_number`, `status`, `provider`, `response_code`, `response_message`, `attempted_at`) VALUES
(1, 1, 'Portal', 1, 'Sent', 'CEPFMS Public Tracking', 'PUBLISHED', 'Citizen notification is available through secure reference/token tracking.', '2026-09-04 08:10:19'),
(2, 2, 'System', 1, 'Sent', 'Shared Notifications', 'OK', 'Internal shared-system notification created.', '2026-09-04 08:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `cef_notification_recipients`
--

CREATE TABLE `cef_notification_recipients` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recipient_name` varchar(180) DEFAULT NULL,
  `recipient_email` varchar(180) DEFAULT NULL,
  `recipient_phone` varchar(60) DEFAULT NULL,
  `delivery_channel` varchar(40) NOT NULL DEFAULT 'Portal',
  `delivery_status` varchar(40) NOT NULL DEFAULT 'Pending',
  `sent_at` datetime DEFAULT NULL,
  `failure_reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_notification_recipients`
--

INSERT INTO `cef_notification_recipients` (`id`, `notification_id`, `user_id`, `recipient_name`, `recipient_email`, `recipient_phone`, `delivery_channel`, `delivery_status`, `sent_at`, `failure_reason`, `created_at`) VALUES
(1, 1, NULL, 'Micko Laput', NULL, NULL, 'Portal', 'Sent', '2026-09-04 16:10:19', NULL, '2026-09-04 08:10:19'),
(2, 1, 6, 'Micko Laput', NULL, NULL, 'System', 'Sent', '2026-09-04 16:10:19', NULL, '2026-09-04 08:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `cef_proposals`
--

CREATE TABLE `cef_proposals` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `problem_statement` longtext DEFAULT NULL,
  `proposed_solution` longtext DEFAULT NULL,
  `expected_public_benefit` longtext DEFAULT NULL,
  `estimated_scope` varchar(120) DEFAULT NULL,
  `feasibility_status` varchar(50) NOT NULL DEFAULT 'Not Reviewed',
  `disposition` varchar(80) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_proposals`
--

INSERT INTO `cef_proposals` (`id`, `submission_id`, `problem_statement`, `proposed_solution`, `expected_public_benefit`, `estimated_scope`, `feasibility_status`, `disposition`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, 'Sample Proposal', 'Sample Proposal', 'Sample Proposal', 'Not Reviewed', NULL, '2026-08-28 16:36:22', '2026-08-28 16:36:22');

-- --------------------------------------------------------

--
-- Table structure for table `cef_responses`
--

CREATE TABLE `cef_responses` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `assignment_id` bigint(20) DEFAULT NULL,
  `response_reference` varchar(60) NOT NULL,
  `response_type` varchar(60) NOT NULL DEFAULT 'Official Response',
  `subject` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `drafted_by` int(11) DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `delivery_channel` varchar(40) DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_responses`
--

INSERT INTO `cef_responses` (`id`, `submission_id`, `assignment_id`, `response_reference`, `response_type`, `subject`, `body`, `status`, `drafted_by`, `reviewed_by`, `reviewed_at`, `approved_by`, `approved_at`, `delivery_channel`, `delivered_at`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, 'RSP-2026-0001', 'Official Response', 'complaint response', 'complaint response', 'Delivered', 1, 1, '2026-08-29 00:38:52', 1, '2026-08-29 00:38:52', 'Secure Portal + Preferred Notification', '2026-09-04 16:10:19', '2026-08-28 16:38:27', '2026-09-04 08:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `cef_response_documents`
--

CREATE TABLE `cef_response_documents` (
  `id` bigint(20) NOT NULL,
  `response_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `stored_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `mime_type` varchar(120) DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Response Attachment',
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cef_response_history`
--

CREATE TABLE `cef_response_history` (
  `id` bigint(20) NOT NULL,
  `response_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_response_history`
--

INSERT INTO `cef_response_history` (`id`, `response_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create Draft', NULL, 'Draft', 'Official response draft created.', 1, '2026-08-28 16:38:27'),
(2, 1, 'Submit Review', 'Draft', 'Under Review', NULL, 1, '2026-08-28 16:38:48'),
(3, 1, 'Approve', 'Under Review', 'Approved', NULL, 1, '2026-08-28 16:38:52'),
(4, 1, 'Deliver', 'Approved', 'Delivered', 'Published to secure citizen tracking and queued notification #1.', 1, '2026-09-04 08:10:19');

-- --------------------------------------------------------

--
-- Table structure for table `cef_service_levels`
--

CREATE TABLE `cef_service_levels` (
  `id` bigint(20) NOT NULL,
  `submission_type` varchar(30) NOT NULL DEFAULT 'Complaint',
  `urgency_level` varchar(30) NOT NULL,
  `acknowledgement_hours` int(11) NOT NULL,
  `response_hours` int(11) NOT NULL,
  `resolution_hours` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_service_levels`
--

INSERT INTO `cef_service_levels` (`id`, `submission_type`, `urgency_level`, `acknowledgement_hours`, `response_hours`, `resolution_hours`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Complaint', 'Low', 72, 120, 360, 1, '2026-08-17 13:25:58', '2026-08-17 13:25:58'),
(2, 'Complaint', 'Normal', 48, 96, 240, 1, '2026-08-17 13:25:58', '2026-08-17 13:25:58'),
(3, 'Complaint', 'High', 24, 48, 120, 1, '2026-08-17 13:25:58', '2026-08-17 13:25:58'),
(4, 'Complaint', 'Urgent', 4, 12, 48, 1, '2026-08-17 13:25:58', '2026-08-17 13:25:58');

-- --------------------------------------------------------

--
-- Table structure for table `cef_submissions`
--

CREATE TABLE `cef_submissions` (
  `id` bigint(20) NOT NULL,
  `public_id` char(36) NOT NULL,
  `reference_number` varchar(60) NOT NULL,
  `submission_type` varchar(30) NOT NULL,
  `citizen_user_id` int(11) DEFAULT NULL,
  `citizen_name` varchar(180) DEFAULT NULL,
  `citizen_email` varchar(180) DEFAULT NULL,
  `citizen_phone` varchar(60) DEFAULT NULL,
  `contact_preference` varchar(30) NOT NULL DEFAULT 'Portal',
  `anonymous_flag` tinyint(1) NOT NULL DEFAULT 0,
  `privacy_consent` tinyint(1) NOT NULL DEFAULT 0,
  `consent_at` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `details` longtext NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `location_text` varchar(255) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `barangay` varchar(150) DEFAULT NULL,
  `priority_level` varchar(30) NOT NULL DEFAULT 'Normal',
  `source_channel` varchar(50) NOT NULL DEFAULT 'Web Portal',
  `status` varchar(50) NOT NULL DEFAULT 'Submitted',
  `moderation_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `tracking_token_hash` char(64) NOT NULL,
  `acknowledged_at` datetime DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_submissions`
--

INSERT INTO `cef_submissions` (`id`, `public_id`, `reference_number`, `submission_type`, `citizen_user_id`, `citizen_name`, `citizen_email`, `citizen_phone`, `contact_preference`, `anonymous_flag`, `privacy_consent`, `consent_at`, `title`, `summary`, `details`, `category_id`, `location_text`, `district`, `barangay`, `priority_level`, `source_channel`, `status`, `moderation_status`, `tracking_token_hash`, `acknowledged_at`, `closed_at`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '725b87c0-2e2e-47d1-822c-4313c03b95bb', 'CEF-2026-0001', 'Feedback', NULL, 'Micko Laput', 'mickolaput@gmail.com', '09128171611', 'Email', 0, 1, '2026-08-18 23:49:22', 'sample', 'I see a lot of lubak lubak in valenzuela', 'daming lubak', 5, 'Valenzuela', 'District 3', 'Marilau', 'Normal', 'Web Portal', 'Submitted', 'Pending', '400852ce709ad00fbf1a7790393da14197eb51b5c77ea431c319aaf031338415', '2026-08-18 23:49:22', NULL, NULL, '2026-08-18 15:49:22', '2026-08-18 15:49:22', NULL),
(2, '12affc28-160e-4760-bf69-67d0120fa11b', 'CEF-2026-0002', 'Feedback', 5, 'nardz', 'nardz@gmail.com', '09999999999', 'Portal', 0, 1, '2026-08-25 15:25:53', 'sample feedback', 'sample feedback', 'sample feedback', 4, 'Valenzuela', '3', 'gen t', 'High', 'Citizen Portal', 'Withdrawn', 'Under Review', 'cb7d8a6445000ac5fb8663908b6c1cba4de37beeff13f6f0651e92bd9ffd08b7', '2026-08-25 15:25:53', NULL, 5, '2026-08-25 07:25:53', '2026-08-25 10:17:37', NULL),
(3, 'e7f01f51-a078-481b-b40c-75eebf3ee517', 'CEF-2026-0003', 'Feedback', 6, 'Micko Laput', 'uzumakimicko@gmail.com', '09612382088', 'Portal', 0, 1, '2026-08-29 00:32:24', 'sample feedback', 'sample', 'sample', 4, '4339 L. Bernardino St.', '3', 'Sample', 'Normal', 'Citizen Portal', 'Withdrawn', 'Under Review', '4a72017cfb58aa91fd4fe15464fe31b0872373a0a59842c235fbaf4a2f1a6757', '2026-08-29 00:32:24', NULL, 6, '2026-08-28 16:32:24', '2026-08-28 16:35:50', NULL),
(4, '4e221720-4563-4e40-8d20-c8c0d2d3bd5d', 'CEF-2026-0004', 'Proposal', 6, 'Micko Laput', 'uzumakimicko@gmail.com', '09612382088', 'Portal', 0, 1, '2026-08-29 00:36:22', 'Sample Proposal', 'Sample Proposal', 'Sample Proposal', 1, '4339 L. Bernardino St.', '3', 'Sample', 'Normal', 'Citizen Portal', 'Submitted', 'Pending', '5715a59e83b3c3cbc2f25a5f27d7cd95fb8402d6c8aa66357838acd82e664c79', '2026-08-29 00:36:22', NULL, 6, '2026-08-28 16:36:22', '2026-08-28 16:36:22', NULL),
(5, 'a81f18f6-52b2-40c4-aa5c-02d5cdb8f6a5', 'CEF-2026-0005', 'Complaint', 6, 'Micko Laput', 'uzumakimicko@gmail.com', '09612382088', 'Portal', 0, 1, '2026-08-29 00:36:47', 'Sample Complaint', 'Sample Complaint', 'Sample Complaint', 4, '4339 L. Bernardino St.', '3', 'Sample', 'Normal', 'Citizen Portal', 'Responded', 'Validated', '12358558e17400a940058db9d48a21e1dfc0777a15665aa445de95201dddc508', '2026-08-29 00:36:47', NULL, 6, '2026-08-28 16:36:47', '2026-09-04 08:10:19', NULL),
(6, 'acdccc49-2940-4fe4-9d14-b5fe245a6f1f', 'CEF-2026-0006', 'Complaint', 7, 'bonelichz', 'bonelichz@gmail.com', '09999999999', 'Portal', 0, 1, '2026-09-01 19:24:52', 'Sample Complaint', 'Sample Complaint', 'Sample Complaint', 4, 'L', '3', 'gen t', 'Normal', 'Citizen Portal', 'Submitted', 'Pending', 'deaa3620d5c24c90f7fe7d0751e5d1d4af26363c770c8f56b22aee107f24b993', '2026-09-01 19:24:52', NULL, 7, '2026-09-01 11:24:52', '2026-09-01 11:24:52', NULL),
(7, '33500932-919e-4b6d-b8b9-b1f9fabd971a', 'CEF-2026-0007', 'Feedback', 7, 'bonelichz', 'bonelichz@gmail.com', '09999999999', 'Portal', 0, 1, '2026-09-01 19:26:36', 'Sample FeedBack', 'Sample FeedBack', 'Sample FeedBack', 4, 'L', '3', 'gen t', 'High', 'Citizen Portal', 'Withdrawn', 'Under Review', '3e333b24aafb4f05e58e237828cc8c471a6762ab4e6bfdc63a69ddcce742b5f0', '2026-09-01 19:26:36', NULL, 7, '2026-09-01 11:26:36', '2026-09-01 11:29:01', NULL),
(8, '7776887a-5087-465d-8db2-b1529c5a4411', 'CEF-2026-0008', 'Complaint', 7, 'bonelichz', 'bonelichz@gmail.com', '09999999999', 'Portal', 0, 1, '2026-09-02 22:26:45', 'Broken road', 'need to take action on broken road', 'there\'s a lot of broken road in maynila', 4, 'L', '3', 'gen t', 'Urgent', 'Citizen Portal', 'Under Moderation', 'Under Review', 'a8af6a1e2917ae51f0ac2cccf4309cb53575b3f000b3a491d3252eecba06351d', '2026-09-02 22:26:45', NULL, 7, '2026-09-02 14:26:45', '2026-09-07 02:57:44', NULL),
(9, '5c21a9bb-ba0c-4be0-94f3-206c0ce77604', 'CEF-2026-0009', 'Complaint', 7, 'bonelichz', 'bonelichz@gmail.com', '09999999999', 'Portal', 0, 1, '2026-09-02 22:50:18', 'Broken street light', 'Broken street light', 'Broken street light', 2, 'L', '3', 'gen t', 'Low', 'Citizen Portal', 'Submitted', 'Pending', '6b811935b539a0521d46a38f854b23934d91ed1df104d240e3932a8662006dfc', '2026-09-02 22:50:18', NULL, 7, '2026-09-02 14:50:18', '2026-09-07 03:16:10', NULL),
(10, '8b17b069-f713-4587-b433-69c4ef1c402e', 'CEF-2026-0010', 'Complaint', 7, 'bonelichz', 'bonelichz@gmail.com', '09999999999', 'Portal', 0, 1, '2026-09-02 23:39:54', 'government complaint', 'government complaint', 'government complaint', 2, 'L', '3', 'gen t', 'Low', 'Citizen Portal', 'Submitted', 'Pending', 'da1e11b41f2f4a3d12ff9accd2a1195c6498ee851e84e64dc4f204632d0d39a6', '2026-09-02 23:39:54', NULL, 7, '2026-09-02 15:39:54', '2026-09-07 02:54:17', NULL),
(11, 'baf8a92b-727a-40ce-b66d-a55d63da8872', 'CEF-2026-0011', 'Complaint', 7, 'bonelichz', 'bonelichz@gmail.com', '09999999999', 'Portal', 0, 1, '2026-09-06 14:10:00', 'Street Light', 'Street Light', 'Broken street light', 4, 'L', '3', 'gen t', 'Low', 'Citizen Portal', 'Closed', 'Validated', 'ac30af8fb6ae6e2cde5a5bdb81d860abeb75665f174edc7ad44971ef686d6818', '2026-09-06 14:10:00', '2026-09-06 14:19:22', 7, '2026-09-06 06:10:00', '2026-09-06 06:19:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cef_submission_documents`
--

CREATE TABLE `cef_submission_documents` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `stored_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `mime_type` varchar(120) DEFAULT NULL,
  `file_size` bigint(20) DEFAULT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Supporting Evidence',
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_submission_documents`
--

INSERT INTO `cef_submission_documents` (`id`, `submission_id`, `file_name`, `stored_name`, `file_path`, `mime_type`, `file_size`, `document_type`, `visibility`, `uploaded_by`, `uploaded_at`) VALUES
(1, 1, 'Screenshot 2025-07-05 182631.png', '62481bacd21c58bf6395625728449cff.png', 'cepfms/submissions/62481bacd21c58bf6395625728449cff.png', 'image/png', 1090, 'Citizen Supporting Evidence', 'Internal', 1, '2026-08-18 15:49:22'),
(2, 2, 'default-user.png', 'fdaaed174b9556e71ddb76d240d26442.png', 'cepfms/submissions/fdaaed174b9556e71ddb76d240d26442.png', 'image/png', 259, 'Internal Feedback Document', 'Public', 1, '2026-08-25 07:45:09'),
(3, 3, 'Untitled design (1).png', 'ee0772994e4cc8acb7dd82351ff4df67.png', 'cepfms/submissions/ee0772994e4cc8acb7dd82351ff4df67.png', 'image/png', 1401154, 'Internal Feedback Document', 'Public', 1, '2026-08-28 16:35:33'),
(4, 7, 'logo.png', '37530747ccd421d5d763d57974db5d6f.png', 'cepfms/submissions/37530747ccd421d5d763d57974db5d6f.png', 'image/png', 2682863, 'Internal Feedback Document', 'Public', 1, '2026-09-01 11:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `cef_submission_history`
--

CREATE TABLE `cef_submission_history` (
  `id` bigint(20) NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `public_visible` tinyint(1) NOT NULL DEFAULT 0,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cef_submission_history`
--

INSERT INTO `cef_submission_history` (`id`, `submission_id`, `action`, `previous_status`, `new_status`, `details`, `public_visible`, `changed_by`, `created_at`) VALUES
(1, 1, 'Citizen Submission', NULL, 'Submitted', 'Public Feedback received and assigned reference CEF-2026-0001.', 1, 1, '2026-08-18 15:49:22'),
(2, 1, 'Evidence Uploaded', 'Submitted', 'Submitted', 'Citizen supporting evidence received.', 1, 1, '2026-08-18 15:49:22'),
(3, 2, 'Citizen Submission', NULL, 'Submitted', 'Feedback received through the Legislative Citizen Portal.', 1, 5, '2026-08-25 07:25:53'),
(4, 2, 'Document Uploaded', 'Submitted', 'Submitted', 'Staff document added.', 0, 1, '2026-08-25 07:45:09'),
(5, 2, 'Feedback Intake Update', 'Submitted', 'Under Moderation', 'This is being fixed', 1, 1, '2026-08-25 07:45:32'),
(6, 2, 'Citizen Follow-up', NULL, NULL, 'Citizen added a follow-up message.', 1, 5, '2026-08-25 07:46:12'),
(7, 2, 'Ticket Conversation', 'Under Moderation', 'Under Moderation', 'Citizen sent a message inside the ticket conversation.', 1, 5, '2026-08-25 10:16:34'),
(8, 2, 'Attachment Visibility Updated', 'Under Moderation', 'Under Moderation', 'An attachment is now available to the citizen.', 1, 1, '2026-08-25 10:16:58'),
(9, 2, 'Ticket Conversation', 'Under Moderation', 'Under Moderation', 'CEPFMS staff sent a message to the citizen inside the ticket conversation.', 1, 1, '2026-08-25 10:17:14'),
(10, 2, 'Feedback Intake Update', 'Under Moderation', 'Withdrawn', 'Feedback classification/status updated.', 1, 1, '2026-08-25 10:17:37'),
(11, 3, 'Citizen Submission', NULL, 'Submitted', 'Feedback received through the Legislative Citizen Portal.', 1, 6, '2026-08-28 16:32:24'),
(12, 3, 'Ticket Conversation', 'Submitted', 'Submitted', 'CEPFMS staff sent a message to the citizen inside the ticket conversation.', 1, 1, '2026-08-28 16:34:20'),
(13, 3, 'Ticket Conversation', 'Submitted', 'Submitted', 'Citizen sent a message inside the ticket conversation.', 1, 6, '2026-08-28 16:34:51'),
(14, 3, 'Feedback Intake Update', 'Submitted', 'Under Moderation', 'Already fixing', 1, 1, '2026-08-28 16:35:13'),
(15, 3, 'Document Uploaded', 'Under Moderation', 'Under Moderation', 'Staff document added.', 0, 1, '2026-08-28 16:35:33'),
(16, 3, 'Feedback Intake Update', 'Under Moderation', 'Withdrawn', 'Feedback classification/status updated.', 1, 1, '2026-08-28 16:35:44'),
(17, 3, 'Feedback Intake Update', 'Withdrawn', 'Withdrawn', 'Feedback classification/status updated.', 0, 1, '2026-08-28 16:35:50'),
(18, 4, 'Citizen Submission', NULL, 'Submitted', 'Proposal received through the Legislative Citizen Portal.', 1, 6, '2026-08-28 16:36:22'),
(19, 5, 'Citizen Submission', NULL, 'Submitted', 'Complaint received through the Legislative Citizen Portal.', 1, 6, '2026-08-28 16:36:47'),
(20, 5, 'Moderation Started', 'Submitted', 'Under Moderation', 'Submission entered formal moderation and validation review.', 1, 1, '2026-08-28 16:37:27'),
(21, 5, 'Moderation Decision', 'Under Moderation', 'Validated', 'Moderation decision: Validated.', 1, 1, '2026-08-28 16:37:58'),
(22, 6, 'Citizen Submission', NULL, 'Submitted', 'Complaint received through the Legislative Citizen Portal.', 1, 7, '2026-09-01 11:24:52'),
(23, 7, 'Citizen Submission', NULL, 'Submitted', 'Feedback received through the Legislative Citizen Portal.', 1, 7, '2026-09-01 11:26:36'),
(24, 7, 'Document Uploaded', 'Submitted', 'Submitted', 'Staff document added.', 0, 1, '2026-09-01 11:27:53'),
(25, 7, 'Ticket Conversation', 'Submitted', 'Submitted', 'CEPFMS staff sent a message to the citizen inside the ticket conversation.', 1, 1, '2026-09-01 11:28:04'),
(26, 7, 'Ticket Conversation', 'Submitted', 'Submitted', 'Citizen sent a message inside the ticket conversation.', 1, 7, '2026-09-01 11:28:31'),
(27, 7, 'Feedback Intake Update', 'Submitted', 'Under Moderation', 'Feedback classification/status updated.', 1, 1, '2026-09-01 11:28:45'),
(28, 7, 'Feedback Intake Update', 'Under Moderation', 'Withdrawn', 'Feedback classification/status updated.', 1, 1, '2026-09-01 11:29:01'),
(29, 8, 'Citizen Submission', NULL, 'Submitted', 'Complaint received through the Legislative Citizen Portal.', 1, 7, '2026-09-02 14:26:45'),
(30, 9, 'Citizen Submission', NULL, 'Submitted', 'Complaint received through the Legislative Citizen Portal.', 1, 7, '2026-09-02 14:50:18'),
(31, 10, 'Citizen Submission', NULL, 'Submitted', 'Complaint received through the Legislative Citizen Portal.', 1, 7, '2026-09-02 15:39:54'),
(32, 5, 'Official Response Released', 'Validated', 'Responded', 'Approved official response RSP-2026-0001 is available in secure citizen tracking.', 1, 1, '2026-09-04 08:10:19'),
(33, 11, 'Citizen Submission', NULL, 'Submitted', 'Complaint received through the Legislative Citizen Portal.', 1, 7, '2026-09-06 06:10:00'),
(34, 11, 'Ticket Conversation', 'Submitted', 'Submitted', 'CEPFMS staff sent a message to the citizen inside the ticket conversation.', 1, 1, '2026-09-06 06:15:10'),
(35, 11, 'Moderation Started', 'Submitted', 'Under Moderation', 'Submission entered formal moderation and validation review.', 1, 1, '2026-09-06 06:16:28'),
(36, 11, 'Moderation Decision', 'Under Moderation', 'Validated', 'Moderation decision: Validated.', 1, 1, '2026-09-06 06:17:10'),
(37, 11, 'Complaint Assigned', 'Validated', 'Assigned', 'Complaint routed to the responsible office/committee/staff.', 1, 1, '2026-09-06 06:17:38'),
(38, 11, 'Complaint Resolve', 'Assigned', 'Resolved', 'This is resolved', 1, 1, '2026-09-06 06:19:02'),
(39, 11, 'Complaint Close', 'Resolved', 'Closed', 'Closed', 1, 1, '2026-09-06 06:19:22'),
(40, 10, 'AI Complaint Routing Applied', 'Submitted', 'Submitted', 'Applied AI routing: Urgency [Low], Category [Infrastructure], Office [City Engineering Department].', 0, 1, '2026-09-07 02:54:17'),
(41, 8, 'Moderation Started', 'Submitted', 'Under Moderation', 'Submission entered formal moderation and validation review.', 1, 1, '2026-09-07 02:57:44'),
(42, 9, 'AI Complaint Routing Applied', 'Submitted', 'Submitted', 'Applied AI routing: Urgency [Low], Category [Infrastructure], Office [City Engineering Department].', 0, 1, '2026-09-07 03:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `cepfms_login_attempts`
--

CREATE TABLE `cepfms_login_attempts` (
  `id` bigint(20) NOT NULL,
  `email_hash` char(64) NOT NULL,
  `ip_hash` char(64) NOT NULL,
  `was_successful` tinyint(1) NOT NULL DEFAULT 0,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cepfms_login_attempts`
--

INSERT INTO `cepfms_login_attempts` (`id`, `email_hash`, `ip_hash`, `was_successful`, `attempted_at`) VALUES
(1, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-18 15:40:09'),
(2, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-25 07:44:34'),
(3, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-25 11:11:17'),
(4, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-01 11:17:33'),
(5, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-01 11:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `cepfms_schema_migrations`
--

CREATE TABLE `cepfms_schema_migrations` (
  `migration_key` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cepfms_schema_migrations`
--

INSERT INTO `cepfms_schema_migrations` (`migration_key`, `description`, `applied_at`) VALUES
('001_cepfms_foundation', 'Creates the CEPFMS citizen-engagement foundation for public submissions, proposals, complaints, moderation, assignments, responses, notifications, analytics and legislative referrals.', '2026-08-17 13:13:25'),
('002_intake_proposals_complaints', 'Completes public feedback intake/tracking, proposal and suggestion management, complaint issue tracking, complaint service-level targets, routing updates and public status visibility.', '2026-08-17 13:25:58'),
('003_moderation_responses_analytics', 'Completes moderation/validation, response drafting and controlled delivery, citizen notification audit, follow-up communication, live analytics, recurring-issue alerts and cross-module workflow reporting.', '2026-08-17 13:43:44'),
('004_admin_rbac_security', 'Completes CEPFMS configuration administration, audit and shared-user administration, fine-grained RBAC, explicit subsystem access, security headers, session rotation and hashed login-attempt rate limiting.', '2026-08-17 13:59:46'),
('005_final_health_deployment', 'Final CEPFMS deployment alignment: active system registration, shared primary-role synchronization, security-attempt retention cleanup and final health readiness marker.', '2026-08-17 14:13:08'),
('006_ticket_chat_citizen_attachments', 'Adds citizen visibility controls for response attachments and enables the existing cef_followups table to serve as the shared ticket conversation between CEPFMS staff and Citizen Portal users.', '2026-08-25 10:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `cepfms_sequences`
--

CREATE TABLE `cepfms_sequences` (
  `sequence_key` varchar(80) NOT NULL,
  `sequence_year` int(11) NOT NULL,
  `next_value` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cepfms_sequences`
--

INSERT INTO `cepfms_sequences` (`sequence_key`, `sequence_year`, `next_value`, `updated_at`) VALUES
('notification', 2026, 2, '2026-09-04 08:10:18'),
('response', 2026, 2, '2026-08-28 16:38:27'),
('submission_CEF', 2026, 12, '2026-09-06 06:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_portal_account_security`
--

CREATE TABLE `citizen_portal_account_security` (
  `user_id` int(11) NOT NULL,
  `session_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `password_changed_at` datetime DEFAULT NULL,
  `last_profile_update_at` datetime DEFAULT NULL,
  `portal_access_deactivated_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_portal_account_security`
--

INSERT INTO `citizen_portal_account_security` (`user_id`, `session_version`, `password_changed_at`, `last_profile_update_at`, `portal_access_deactivated_at`, `created_at`, `updated_at`) VALUES
(5, 1, NULL, NULL, NULL, '2026-08-25 07:16:12', '2026-08-25 07:16:12'),
(6, 1, NULL, NULL, NULL, '2026-08-28 16:30:05', '2026-08-28 16:30:05'),
(7, 1, NULL, NULL, NULL, '2026-09-01 11:12:29', '2026-09-01 11:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_portal_login_attempts`
--

CREATE TABLE `citizen_portal_login_attempts` (
  `id` bigint(20) NOT NULL,
  `email_hash` char(64) NOT NULL,
  `ip_hash` char(64) NOT NULL,
  `was_successful` tinyint(1) NOT NULL DEFAULT 0,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_portal_login_attempts`
--

INSERT INTO `citizen_portal_login_attempts` (`id`, `email_hash`, `ip_hash`, `was_successful`, `attempted_at`) VALUES
(1, '6801af0c22cac478c06db45f856968d3316fbe538b44739c240431e8f03a985e', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-25 07:16:23'),
(6, 'ed2ea1d70650c25c7a1792ddb451475b0a2fc67007660afd9b5629058279ff86', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-28 16:30:13'),
(8, '728c9477a0229fc3fa34060b8eadd35ffa8264792af65bf082be24c70183df79', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-01 11:12:47'),
(9, '728c9477a0229fc3fa34060b8eadd35ffa8264792af65bf082be24c70183df79', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-01 11:14:55'),
(10, '728c9477a0229fc3fa34060b8eadd35ffa8264792af65bf082be24c70183df79', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-01 11:23:38'),
(11, '728c9477a0229fc3fa34060b8eadd35ffa8264792af65bf082be24c70183df79', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-01 11:25:49'),
(12, '728c9477a0229fc3fa34060b8eadd35ffa8264792af65bf082be24c70183df79', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-02 00:43:42'),
(13, '728c9477a0229fc3fa34060b8eadd35ffa8264792af65bf082be24c70183df79', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-02 14:24:18'),
(14, '728c9477a0229fc3fa34060b8eadd35ffa8264792af65bf082be24c70183df79', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-06 06:08:32'),
(15, '50831b383aca2023af837470ddde9809bf922c461f01a590be2dd902891d1c22', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 0, '2026-09-07 14:44:52'),
(16, '50831b383aca2023af837470ddde9809bf922c461f01a590be2dd902891d1c22', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 0, '2026-09-07 14:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_portal_profiles`
--

CREATE TABLE `citizen_portal_profiles` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` text DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `barangay` varchar(150) DEFAULT NULL,
  `preferred_contact` varchar(30) NOT NULL DEFAULT 'Portal',
  `privacy_consent_at` datetime NOT NULL,
  `terms_accepted_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_portal_profiles`
--

INSERT INTO `citizen_portal_profiles` (`id`, `user_id`, `address`, `district`, `barangay`, `preferred_contact`, `privacy_consent_at`, `terms_accepted_at`, `created_at`, `updated_at`) VALUES
(1, 5, 'Valenzuela', '3', 'gen t', 'Portal', '2026-08-25 15:16:11', '2026-08-25 15:16:11', '2026-08-25 07:16:11', '2026-08-25 07:16:11'),
(2, 6, '4339 L. Bernardino St.', '3', 'Sample', 'Portal', '2026-08-29 00:30:05', '2026-08-29 00:30:05', '2026-08-28 16:30:05', '2026-08-28 16:30:05'),
(3, 7, 'L', '3', 'gen t', 'Portal', '2026-09-01 19:12:29', '2026-09-01 19:12:29', '2026-09-01 11:12:29', '2026-09-01 11:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_portal_schema_migrations`
--

CREATE TABLE `citizen_portal_schema_migrations` (
  `id` bigint(20) NOT NULL,
  `migration_key` varchar(120) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citizen_portal_schema_migrations`
--

INSERT INTO `citizen_portal_schema_migrations` (`id`, `migration_key`, `description`, `applied_at`) VALUES
(1, '001_citizen_portal_foundation', 'Creates citizen portal profiles, secure login-attempt tracking, public_portal system registration, access permission and citizen/stakeholder subsystem access foundation.', '2026-08-25 03:26:36'),
(2, '002_account_security', 'Adds citizen portal session-version security used for password changes, portal access deactivation and session invalidation.', '2026-08-25 04:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `committees`
--

CREATE TABLE `committees` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `office_id` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'Active',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `committees`
--

INSERT INTO `committees` (`id`, `name`, `description`, `created_at`, `office_id`, `status`, `updated_at`) VALUES
(1, 'Committee on Laws and Ordinances', 'Handles proposed ordinances, legislative measures, legal policy matters and related public consultations.', '2026-08-18 15:00:28', 1, 'Active', '2026-08-18 15:00:28'),
(2, 'Committee on Appropriations and Finance', 'Handles budget, appropriations, financial allocation and fiscal matters requiring legislative review.', '2026-08-18 15:00:28', 1, 'Active', '2026-08-18 15:00:28'),
(3, 'Committee on Health and Sanitation', 'Handles public health, sanitation, healthcare services and community health concerns.', '2026-08-18 15:00:29', 1, 'Active', '2026-08-18 15:00:29'),
(4, 'Committee on Environment', 'Handles environmental protection, waste management, sustainability and related public concerns.', '2026-08-18 15:00:29', 1, 'Active', '2026-08-18 15:00:29'),
(5, 'Committee on Public Works and Infrastructure', 'Handles roads, public facilities, infrastructure projects, utilities and related development concerns.', '2026-08-18 15:00:29', 1, 'Active', '2026-08-18 15:00:29'),
(6, 'Committee on Education', 'Handles education programs, schools, student welfare and education-related legislative matters.', '2026-08-18 15:00:29', 1, 'Active', '2026-08-18 15:00:29'),
(7, 'Committee on Transportation', 'Handles transportation, traffic management, public mobility and related legislative concerns.', '2026-08-18 15:00:29', 1, 'Active', '2026-08-18 15:00:29'),
(8, 'Committee on Public Safety', 'Handles peace and order, disaster preparedness, emergency response and community safety matters.', '2026-08-18 15:00:29', 1, 'Active', '2026-08-18 15:00:29'),
(9, 'Committee on Social Services', 'Handles social welfare, vulnerable sectors, community assistance and public social-service concerns.', '2026-08-18 15:00:29', 1, 'Active', '2026-08-18 15:00:29'),
(10, 'Committee on Trade and Commerce', 'Handles local businesses, trade, commerce, market regulation and economic-development concerns.', '2026-08-18 15:00:29', 1, 'Active', '2026-08-18 15:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `committee_members`
--

CREATE TABLE `committee_members` (
  `committee_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `committee_members`
--

INSERT INTO `committee_members` (`committee_id`, `user_id`, `position`, `is_active`, `assigned_at`) VALUES
(1, 8, 'Committee Member', 1, '2026-09-07 07:02:19'),
(2, 8, 'Committee Member', 1, '2026-09-07 07:02:19'),
(3, 8, 'Committee Member', 1, '2026-09-07 07:02:19'),
(4, 8, 'Committee Member', 1, '2026-09-07 07:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `office_id` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `status` varchar(30) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `document_type` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `version_number` int(11) DEFAULT 1,
  `visibility` varchar(30) DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `system_id`, `legislative_item_id`, `document_type`, `title`, `file_name`, `file_path`, `version_number`, `visibility`, `uploaded_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Supporting Document', 'sample image', 'Untitled design.png', 'orlms/legislative-items/D949EF492B3E_1787930663.png', 1, 'Internal', 1, '2026-08-28 15:24:23', '2026-08-28 15:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `hearing_id` int(11) DEFAULT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `stakeholder_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `reply_text` text DEFAULT NULL,
  `replied_at` timestamp NULL DEFAULT NULL,
  `replied_by` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'New',
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `feedback_position` varchar(50) DEFAULT NULL,
  `is_anonymous` tinyint(1) DEFAULT 0,
  `visibility` varchar(30) DEFAULT 'Internal',
  `validated_by` int(11) DEFAULT NULL,
  `validated_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `hearing_id`, `legislative_item_id`, `stakeholder_id`, `user_id`, `name`, `email`, `category_id`, `subject`, `message`, `reply_text`, `replied_at`, `replied_by`, `status`, `submitted_at`, `feedback_position`, `is_anonymous`, `visibility`, `validated_by`, `validated_at`, `updated_at`) VALUES
(1, 2, 1, 6, 1, 'Micko Laput', 'mickolaput@gmail.com', 3, 'An ordinance establishing a community waste segregation program in the City of Manila.', 'I think we need another hearing', NULL, NULL, NULL, 'New', '2026-08-28 15:43:11', 'Comment', 0, 'Internal', NULL, NULL, '2026-08-28 15:43:11'),
(2, 2, 1, 6, 1, 'Micko Laput', 'mickolaput@gmail.com', 7, 'sample', 'sample', 'We apologize for any inconvenience caused by the sample. We will provide a revised sample that meets your requirements. Please contact us to schedule a follow-up meeting to discuss the revised sample.', '2026-09-06 06:25:24', 1, 'Under Review', '2026-09-02 14:44:15', 'Oppose', 0, 'Public', NULL, NULL, '2026-09-06 06:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_ai_analysis`
--

CREATE TABLE `feedback_ai_analysis` (
  `id` int(11) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `analysis_scope` varchar(30) NOT NULL DEFAULT 'Citizen Feedback',
  `sentiment` varchar(20) DEFAULT NULL,
  `confidence_score` decimal(5,2) DEFAULT NULL,
  `urgency_level` varchar(20) DEFAULT NULL,
  `urgency_score` decimal(5,2) DEFAULT NULL,
  `keyword_score` decimal(5,2) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`keywords`)),
  `risk_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`risk_keywords`)),
  `recommended_category` varchar(150) DEFAULT NULL,
  `suggested_response` text DEFAULT NULL,
  `flagged_for_review` tinyint(1) NOT NULL DEFAULT 0,
  `review_status` varchar(30) NOT NULL DEFAULT 'Pending',
  `review_notes` text DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `analysis_version` int(11) NOT NULL DEFAULT 1,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `error_message` text DEFAULT NULL,
  `model_used` varchar(100) DEFAULT NULL,
  `raw_response` longtext DEFAULT NULL,
  `analyzed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_ai_analysis`
--

INSERT INTO `feedback_ai_analysis` (`id`, `feedback_id`, `analysis_scope`, `sentiment`, `confidence_score`, `urgency_level`, `urgency_score`, `keyword_score`, `summary`, `keywords`, `risk_keywords`, `recommended_category`, `suggested_response`, `flagged_for_review`, `review_status`, `review_notes`, `reviewed_by`, `reviewed_at`, `analysis_version`, `status`, `error_message`, `model_used`, `raw_response`, `analyzed_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'Complaint', 'Negative', 0.00, 'High', 100.00, 0.00, 'The citizen submitted a complaint regarding the sample provided, citing a health/safety risk and expressing strong dissatisfaction.', '[\"health\\/safety risk\",\"strong dissatisfaction\",\"sample\"]', '[\"health\\/safety risk\",\"serious disruption\"]', 'Health and Safety', 'We apologize for any inconvenience caused by the sample. We will provide a revised sample that meets your requirements. Please contact us to schedule a follow-up meeting to discuss the revised sample.', 1, 'Pending', NULL, 1, '2026-09-03 09:26:42', 4, 'completed', NULL, 'llama3.2:1b', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-03T01:25:14.4985935Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Negative\\\", \\n  \\\"confidence_score\\\": 0, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 100, \\n  \\\"keyword_score\\\": 0, \\n  \\\"summary\\\": \\\"The citizen submitted a complaint regarding the sample provided, citing a health/safety risk and expressing strong dissatisfaction.\\\",\\n  \\\"keywords\\\": [\\\"health/safety risk\\\", \\\"strong dissatisfaction\\\", \\\"sample\\\"], \\n  \\\"risk_keywords\\\": [\\\"health/safety risk\\\", \\\"serious disruption\\\"], \\n  \\\"recommended_category\\\": \\\"Health and Safety\\\", \\n  \\\"suggested_response\\\": \\\"We apologize for any inconvenience caused by the sample. We will provide a revised sample that meets your requirements. Please contact us to schedule a follow-up meeting to discuss the revised sample.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,87721,7036,25,68538,198,6888,25,68538,198,65661,24604,2361,25,29710,974,198,13317,25,6205,198,2097,25,6205,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,39589,498,720,220,330,83029,10622,794,220,15,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1041,11,720,220,330,20454,10622,794,220,15,11,720,220,330,1743,794,330,791,22618,14976,264,12458,9002,279,6205,3984,11,33264,264,2890,2754,39718,5326,323,37810,3831,97894,10560,220,330,30095,794,4482,12393,2754,39718,5326,498,330,4620,97894,498,330,13925,8073,720,220,330,82043,52454,794,4482,12393,2754,39718,5326,498,330,94427,44219,8073,720,220,330,86447,12110,794,330,14884,323,19220,498,720,220,330,82,54376,9852,794,330,1687,37979,369,904,61109,9057,555,279,6205,13,1226,690,3493,264,32828,6205,430,20628,701,8670,13,5321,3729,603,311,9899,264,1833,5352,6574,311,4358,279,32828,6205,1210,720,92],\"total_duration\":25459957400,\"load_duration\":10174600,\"prompt_eval_count\":548,\"prompt_eval_duration\":11234606000,\"eval_count\":166,\"eval_duration\":14152370000}', '2026-09-03 01:25:14', '2026-09-02 14:44:15', '2026-09-03 01:26:42'),
(3, 1, 'Citizen Feedback', 'Negative', 0.00, 'High', 100.00, 0.00, 'The citizen expressed concern about the proposed community waste segregation program, citing the need for a more comprehensive and effective solution.', '[\"community waste segregation\",\"comprehensive solution\",\"effective program\"]', '[\"serious disruption\",\"health\\/safety risk\",\"serious impact\"]', 'Waste Management', 'We appreciate the citizen\'s feedback and will consider their concerns. We will review the proposal and explore options for a more effective community waste segregation program. We will provide a follow-up hearing to discuss the proposed changes.', 1, 'Pending', NULL, NULL, NULL, 1, 'completed', NULL, 'llama3.2:1b', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:31:33.0746672Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Negative\\\",\\n  \\\"confidence_score\\\": 0,\\n  \\\"urgency_level\\\": \\\"High\\\",\\n  \\\"urgency_score\\\": 100,\\n  \\\"keyword_score\\\": 0,\\n  \\\"summary\\\": \\\"The citizen expressed concern about the proposed community waste segregation program, citing the need for a more comprehensive and effective solution.\\\",\\n  \\\"keywords\\\": [\\\"community waste segregation\\\", \\\"comprehensive solution\\\", \\\"effective program\\\"],\\n  \\\"risk_keywords\\\": [\\\"serious disruption\\\", \\\"health/safety risk\\\", \\\"serious impact\\\"],\\n  \\\"recommended_category\\\": \\\"Waste Management\\\",\\n  \\\"suggested_response\\\": \\\"We appreciate the citizen\'s feedback and will consider their concerns. We will review the proposal and explore options for a more effective community waste segregation program. We will provide a follow-up hearing to discuss the proposed changes.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,87721,7036,25,47317,37957,198,6888,25,66659,198,65661,24604,2361,25,12535,198,13317,25,1556,48721,31692,264,4029,12571,64244,2068,304,279,4409,315,57664,627,2097,25,358,1781,584,1205,2500,11011,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,39589,761,220,330,83029,10622,794,220,15,345,220,330,5673,2301,8438,794,330,12243,761,220,330,5673,2301,10622,794,220,1041,345,220,330,20454,10622,794,220,15,345,220,330,1743,794,330,791,22618,13605,4747,922,279,11223,4029,12571,64244,2068,11,33264,279,1205,369,264,810,16195,323,7524,6425,10560,220,330,30095,794,4482,29502,12571,64244,498,330,884,53999,6425,498,330,78995,2068,8257,220,330,82043,52454,794,4482,94427,44219,498,330,12393,2754,39718,5326,498,330,94427,5536,8257,220,330,86447,12110,794,330,54,5642,9744,761,220,330,82,54376,9852,794,330,1687,15763,279,22618,596,11302,323,690,2980,872,10742,13,1226,690,3477,279,14050,323,13488,2671,369,264,810,7524,4029,12571,64244,2068,13,1226,690,3493,264,1833,5352,11011,311,4358,279,11223,4442,1210,720,92],\"total_duration\":5329129200,\"load_duration\":2811701000,\"prompt_eval_count\":565,\"prompt_eval_duration\":133461000,\"eval_count\":171,\"eval_duration\":2377437000}', '2026-09-02 15:31:33', '2026-09-02 15:31:27', '2026-09-02 15:31:33');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_ai_analysis_history`
--

CREATE TABLE `feedback_ai_analysis_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `analysis_id` bigint(20) UNSIGNED DEFAULT NULL,
  `analysis_version` int(11) NOT NULL DEFAULT 1,
  `analysis_scope` varchar(30) DEFAULT NULL,
  `sentiment` varchar(20) DEFAULT NULL,
  `confidence_score` decimal(5,2) DEFAULT NULL,
  `urgency_level` varchar(20) DEFAULT NULL,
  `urgency_score` decimal(5,2) DEFAULT NULL,
  `keyword_score` decimal(5,2) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`keywords`)),
  `risk_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`risk_keywords`)),
  `recommended_category` varchar(150) DEFAULT NULL,
  `suggested_response` text DEFAULT NULL,
  `flagged_for_review` tinyint(1) NOT NULL DEFAULT 0,
  `review_status` varchar(30) DEFAULT NULL,
  `review_notes` text DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `analysis_status` varchar(20) DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `model_used` varchar(100) DEFAULT NULL,
  `raw_response` longtext DEFAULT NULL,
  `analyzed_at` datetime DEFAULT NULL,
  `archived_reason` varchar(50) NOT NULL DEFAULT 'Re-analysis',
  `archived_by` int(11) DEFAULT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_ai_analysis_history`
--

INSERT INTO `feedback_ai_analysis_history` (`id`, `feedback_id`, `analysis_id`, `analysis_version`, `analysis_scope`, `sentiment`, `confidence_score`, `urgency_level`, `urgency_score`, `keyword_score`, `summary`, `keywords`, `risk_keywords`, `recommended_category`, `suggested_response`, `flagged_for_review`, `review_status`, `review_notes`, `reviewed_by`, `reviewed_at`, `analysis_status`, `error_message`, `model_used`, `raw_response`, `analyzed_at`, `archived_reason`, `archived_by`, `archived_at`) VALUES
(1, 2, 1, 2, 'Complaint', 'Negative', 80.00, 'High', 90.00, 70.00, 'The citizen submitted a complaint regarding a sample issue, citing a health/safety risk and expressing strong dissatisfaction.', '[\"sample\",\"health\\/safety risk\",\"strong dissatisfaction\"]', '[\"health\\/safety risk\",\"strong dissatisfaction\"]', 'Health and Safety', 'We apologize for the inconvenience and assure you that we are taking immediate action to address the issue. Please provide more details so we can assist you properly.', 1, 'Pending', NULL, NULL, NULL, 'completed', NULL, 'llama3.2:1b', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T14:45:11.3463128Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Negative\\\",\\n  \\\"confidence_score\\\": 80,\\n  \\\"urgency_level\\\": \\\"High\\\",\\n  \\\"urgency_score\\\": 90,\\n  \\\"keyword_score\\\": 70,\\n  \\\"summary\\\": \\\"The citizen submitted a complaint regarding a sample issue, citing a health/safety risk and expressing strong dissatisfaction.\\\",\\n  \\\"keywords\\\": [\\\"sample\\\", \\\"health/safety risk\\\", \\\"strong dissatisfaction\\\"],\\n  \\\"risk_keywords\\\": [\\\"health/safety risk\\\", \\\"strong dissatisfaction\\\"],\\n  \\\"recommended_category\\\": \\\"Health and Safety\\\",\\n  \\\"suggested_response\\\": \\\"We apologize for the inconvenience and assure you that we are taking immediate action to address the issue. Please provide more details so we can assist you properly.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,87721,7036,25,68538,198,6888,25,68538,198,65661,24604,2361,25,29710,974,198,13317,25,6205,198,2097,25,6205,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,39589,761,220,330,83029,10622,794,220,1490,345,220,330,5673,2301,8438,794,330,12243,761,220,330,5673,2301,10622,794,220,1954,345,220,330,20454,10622,794,220,2031,345,220,330,1743,794,330,791,22618,14976,264,12458,9002,264,6205,4360,11,33264,264,2890,2754,39718,5326,323,37810,3831,97894,10560,220,330,30095,794,4482,13925,498,330,12393,2754,39718,5326,498,330,4620,97894,8257,220,330,82043,52454,794,4482,12393,2754,39718,5326,498,330,4620,97894,8257,220,330,86447,12110,794,330,14884,323,19220,761,220,330,82,54376,9852,794,330,1687,37979,369,279,61109,323,36015,499,430,584,527,4737,14247,1957,311,2686,279,4360,13,5321,3493,810,3649,779,584,649,7945,499,10489,1210,720,92],\"total_duration\":5022157600,\"load_duration\":2786474200,\"prompt_eval_count\":548,\"prompt_eval_duration\":157202000,\"eval_count\":152,\"eval_duration\":2068882000}', '2026-09-02 22:45:11', 'Re-analysis', 1, '2026-09-03 00:55:19'),
(2, 2, 1, 3, 'Complaint', 'Negative', 80.00, 'High', 90.00, 70.00, 'The citizen submitted a complaint regarding a sample issue, citing a health/safety risk and expressing strong dissatisfaction.', '[\"sample\",\"health\\/safety risk\",\"strong dissatisfaction\"]', '[\"health\\/safety risk\",\"strong dissatisfaction\"]', 'Health and Safety', 'We apologize for the inconvenience and assure you that we are taking immediate action to address the issue. Please provide more details so we can assist you properly.', 1, 'Pending', NULL, NULL, NULL, 'failed', 'Could not connect to Ollama at http://127.0.0.1:11434. Make sure Ollama is running.', 'llama3.2:1b', '', '2026-09-02 22:45:11', 'Re-analysis', 1, '2026-09-03 01:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_categories`
--

CREATE TABLE `feedback_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_categories`
--

INSERT INTO `feedback_categories` (`id`, `name`) VALUES
(7, 'Complaint'),
(5, 'Concern'),
(1, 'General Comment'),
(3, 'Opposition'),
(8, 'Other'),
(6, 'Question'),
(4, 'Suggestion'),
(2, 'Support');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_history`
--

CREATE TABLE `feedback_history` (
  `id` bigint(20) NOT NULL,
  `feedback_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback_history`
--

INSERT INTO `feedback_history` (`id`, `feedback_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, '', NULL, 'New', 'Feedback submitted through the Public Feedback module.', 1, '2026-08-28 15:43:11'),
(2, 2, '', NULL, 'New', 'Feedback submitted through the Public Feedback module.', 1, '2026-09-02 14:44:15'),
(3, 2, '', 'New', 'Under Review', 'Feedback reviewed. Visibility: Public Official response recorded.', 1, '2026-09-03 01:25:55'),
(4, 2, '', 'Under Review', 'Under Review', 'Feedback reviewed. Visibility: Public Official response recorded.', 1, '2026-09-03 01:26:52'),
(5, 2, '', 'Under Review', 'Under Review', 'Feedback reviewed. Visibility: Public Official response recorded.', 1, '2026-09-06 06:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `hearings`
--

CREATE TABLE `hearings` (
  `id` int(11) NOT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `hearing_type_id` int(11) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `hearing_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `hearing_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Upcoming',
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `registration_deadline` datetime DEFAULT NULL,
  `maximum_participants` int(11) DEFAULT NULL,
  `meeting_link` varchar(500) DEFAULT NULL,
  `visibility` varchar(30) DEFAULT 'Public',
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearings`
--

INSERT INTO `hearings` (`id`, `legislative_item_id`, `reference_number`, `title`, `hearing_type_id`, `committee_id`, `venue`, `hearing_date`, `end_date`, `hearing_time`, `end_time`, `status`, `description`, `created_at`, `registration_deadline`, `maximum_participants`, `meeting_link`, `visibility`, `created_by`, `updated_at`, `cancelled_at`, `cancellation_reason`) VALUES
(1, NULL, 'PHC-2026-0001', 'Hearing 1', 1, 6, 'City Hall', '2026-08-21', '2026-08-21', '11:00:00', '12:04:00', 'Upcoming', 'Well just hanging out', '2026-08-18 15:05:23', '2026-08-20 12:04:00', 5, 'http://localhost/lph/modules/hearings/index.php', 'Public', 1, '2026-08-18 15:05:23', NULL, NULL),
(2, 1, 'PHC-2026-0002', 'Public Hearing – Community Waste Segregation Ordinance', 2, 2, 'City hall', '2026-09-02', '2026-09-02', '08:00:00', '17:00:00', 'Ongoing', 'please attend', '2026-08-28 15:41:09', '2026-09-01 18:00:00', 100, 'http://localhost/lph/login.php', 'Public', 1, '2026-08-28 15:41:09', NULL, NULL),
(3, 2, 'PHC-2026-0003', 'traffic', 6, 4, 'manila city hall', '2026-09-24', '2026-09-24', '03:49:00', '17:49:00', 'Ongoing', NULL, '2026-09-06 06:51:23', '2026-09-12 14:50:00', NULL, NULL, 'Public', 1, '2026-09-06 06:51:23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hearing_actions`
--

CREATE TABLE `hearing_actions` (
  `id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `reference_number` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `assigned_office_id` int(11) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `deadline` date DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_actions`
--

INSERT INTO `hearing_actions` (`id`, `issue_id`, `reference_number`, `title`, `description`, `assigned_office_id`, `assigned_user_id`, `status`, `deadline`, `completed_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'ACT-2026-F37F7BE6', 'sample action', 'sample action', NULL, NULL, 'Pending', '2026-09-05', NULL, 1, '2026-08-28 17:09:45', '2026-08-28 17:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_action_assignments`
--

CREATE TABLE `hearing_action_assignments` (
  `id` bigint(20) NOT NULL,
  `action_id` int(11) NOT NULL,
  `assigned_office_id` int(11) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hearing_action_documents`
--

CREATE TABLE `hearing_action_documents` (
  `id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Supporting Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_action_documents`
--

INSERT INTO `hearing_action_documents` (`id`, `action_id`, `file_name`, `file_path`, `document_type`, `description`, `visibility`, `uploaded_by`, `uploaded_at`) VALUES
(1, 1, 'Untitled design (1).png', 'actions/F18003D20816_1787936985.png', 'Supporting Document', NULL, 'Internal', 1, '2026-08-28 17:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_action_updates`
--

CREATE TABLE `hearing_action_updates` (
  `id` bigint(20) NOT NULL,
  `action_id` int(11) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `update_text` text NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_action_updates`
--

INSERT INTO `hearing_action_updates` (`id`, `action_id`, `previous_status`, `new_status`, `update_text`, `updated_by`, `created_at`) VALUES
(1, 1, NULL, 'Pending', 'Action created with status Pending.', 1, '2026-08-28 17:09:45'),
(2, 1, 'Pending', 'Pending', 'what is update?', 1, '2026-08-28 17:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_documents`
--

CREATE TABLE `hearing_documents` (
  `id` int(11) NOT NULL,
  `hearing_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `document_type` varchar(100) DEFAULT 'Supporting Document',
  `description` text DEFAULT NULL,
  `version_number` int(11) DEFAULT 1,
  `visibility` varchar(30) DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_documents`
--

INSERT INTO `hearing_documents` (`id`, `hearing_id`, `file_name`, `file_path`, `uploaded_at`, `document_type`, `description`, `version_number`, `visibility`, `uploaded_by`, `updated_at`) VALUES
(1, 1, 'Screenshot 2025-07-05 182631.png', 'hearings/7D27B2042D06_1787065523.png', '2026-08-18 15:05:23', 'Supporting Document', NULL, 1, 'Public', 1, '2026-08-18 15:05:23'),
(2, 2, 'Untitled design (1).png', 'hearings/856EC0A1C030_1787931669.png', '2026-08-28 15:41:09', 'Supporting Document', NULL, 1, 'Public', 1, '2026-08-28 15:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_history`
--

CREATE TABLE `hearing_history` (
  `id` bigint(20) NOT NULL,
  `hearing_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_history`
--

INSERT INTO `hearing_history` (`id`, `hearing_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create', NULL, 'Upcoming', 'Created hearing \"Hearing 1\".', 1, '2026-08-18 15:05:23'),
(2, 1, 'Upload Documents', 'Upcoming', 'Upcoming', 'Uploaded 1 hearing document(s).', 1, '2026-08-18 15:05:23'),
(3, 2, 'Create', NULL, 'Ongoing', 'Created hearing \"Public Hearing – Community Waste Segregation Ordinance\".', 1, '2026-08-28 15:41:09'),
(4, 2, 'Upload Documents', 'Ongoing', 'Ongoing', 'Uploaded 1 hearing document(s).', 1, '2026-08-28 15:41:09'),
(5, 3, 'Create', NULL, 'Ongoing', 'Created hearing \"traffic\".', 1, '2026-09-06 06:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_issues`
--

CREATE TABLE `hearing_issues` (
  `id` int(11) NOT NULL,
  `hearing_id` int(11) DEFAULT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `feedback_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `reference_number` varchar(100) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `priority` varchar(30) NOT NULL DEFAULT 'Medium',
  `status` varchar(50) NOT NULL DEFAULT 'Open',
  `assigned_office_id` int(11) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `due_at` datetime DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `resolution_summary` text DEFAULT NULL,
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_issues`
--

INSERT INTO `hearing_issues` (`id`, `hearing_id`, `legislative_item_id`, `feedback_id`, `category_id`, `reference_number`, `title`, `description`, `priority`, `status`, `assigned_office_id`, `assigned_user_id`, `due_at`, `closed_at`, `resolution_summary`, `resolved_by`, `resolved_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, 1, 'ISS-2026-9F5F2052', 'Some communities may need additional waste segregation bins.', 'Some communities may need additional waste segregation bins.', 'Medium', 'Open', 3, NULL, '2026-09-03 23:43:00', NULL, NULL, NULL, NULL, 1, '2026-08-28 15:43:51', '2026-08-28 15:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_issue_assignments`
--

CREATE TABLE `hearing_issue_assignments` (
  `id` bigint(20) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `assigned_office_id` int(11) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_issue_assignments`
--

INSERT INTO `hearing_issue_assignments` (`id`, `issue_id`, `assigned_office_id`, `assigned_user_id`, `assigned_by`, `remarks`, `assigned_at`) VALUES
(1, 1, 3, NULL, 1, 'Initial issue assignment.', '2026-08-28 15:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_issue_categories`
--

CREATE TABLE `hearing_issue_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_issue_categories`
--

INSERT INTO `hearing_issue_categories` (`id`, `name`, `description`, `created_at`) VALUES
(1, 'Policy Concern', 'Concerns regarding proposed policies, ordinances or resolutions.', '2026-08-01 04:21:35'),
(2, 'Public Safety', 'Issues involving safety, security and community protection.', '2026-08-01 04:21:35'),
(3, 'Budget and Finance', 'Concerns involving funding, expenses and financial allocation.', '2026-08-01 04:21:35'),
(4, 'Environment', 'Environmental concerns raised during public consultation.', '2026-08-01 04:21:35'),
(5, 'Infrastructure', 'Issues involving roads, facilities, utilities and public infrastructure.', '2026-08-01 04:21:35'),
(6, 'Public Services', 'Concerns regarding government services and service delivery.', '2026-08-01 04:21:35'),
(7, 'Legal and Compliance', 'Issues involving legal requirements and regulatory compliance.', '2026-08-01 04:21:35'),
(8, 'Other', 'Issues that do not fall under another available category.', '2026-08-01 04:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_issue_documents`
--

CREATE TABLE `hearing_issue_documents` (
  `id` bigint(20) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Supporting Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hearing_issue_history`
--

CREATE TABLE `hearing_issue_history` (
  `id` bigint(20) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_issue_history`
--

INSERT INTO `hearing_issue_history` (`id`, `issue_id`, `note`, `created_by`, `created_at`) VALUES
(1, 1, 'Issue logged with priority Medium and status Open.', 1, '2026-08-28 15:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `hearing_responses`
--

CREATE TABLE `hearing_responses` (
  `id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  `action_id` int(11) DEFAULT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `response_text` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `prepared_by` int(11) DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `published_by` int(11) DEFAULT NULL,
  `publication_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hearing_response_history`
--

CREATE TABLE `hearing_response_history` (
  `id` bigint(20) NOT NULL,
  `response_id` int(11) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hearing_types`
--

CREATE TABLE `hearing_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearing_types`
--

INSERT INTO `hearing_types` (`id`, `name`) VALUES
(2, 'Committee Hearing'),
(3, 'Public Consultation'),
(1, 'Public Hearing'),
(6, 'Special Hearing'),
(4, 'Stakeholder Consultation'),
(5, 'Town Hall Consultation');

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE `invitations` (
  `id` int(11) NOT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `hearing_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `invitation_code` varchar(100) DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `invited_by` int(11) DEFAULT NULL,
  `responded_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invitations`
--

INSERT INTO `invitations` (`id`, `stakeholder_id`, `hearing_id`, `status`, `invitation_code`, `sent_at`, `created_at`, `invited_by`, `responded_at`, `expires_at`, `remarks`, `updated_at`) VALUES
(1, 4, 1, 'Sent', 'INV-2026-FB6B61C374', '2026-09-06 06:28:49', '2026-09-06 06:28:28', 1, NULL, '2026-09-26 14:28:00', 'df', '2026-09-06 06:28:49'),
(2, 3, 1, 'Sent', 'INV-2026-14974EB048', '2026-09-06 06:28:47', '2026-09-06 06:28:28', 1, NULL, '2026-09-26 14:28:00', 'df', '2026-09-06 06:28:47'),
(3, 5, 1, 'Sent', 'INV-2026-6C54EC7263', '2026-09-06 06:28:46', '2026-09-06 06:28:28', 1, NULL, '2026-09-26 14:28:00', 'df', '2026-09-06 06:28:46'),
(4, 1, 1, 'Sent', 'INV-2026-7170935D8E', '2026-09-06 06:28:45', '2026-09-06 06:28:28', 1, NULL, '2026-09-26 14:28:00', 'df', '2026-09-06 06:28:45'),
(5, 2, 1, 'Sent', 'INV-2026-49336E0B8B', '2026-09-06 06:28:44', '2026-09-06 06:28:28', 1, NULL, '2026-09-26 14:28:00', 'df', '2026-09-06 06:28:44'),
(6, 6, 1, 'Sent', 'INV-2026-A81B3EBAA3', '2026-09-06 06:28:38', '2026-09-06 06:28:28', 1, NULL, '2026-09-26 14:28:00', 'df', '2026-09-06 06:28:38'),
(7, 4, 3, 'Pending', 'INV-2026-BD1A6F2EF6', NULL, '2026-09-06 06:52:02', 1, NULL, '2026-09-10 14:51:00', NULL, '2026-09-06 06:52:02'),
(8, 3, 3, 'Pending', 'INV-2026-B67AC43B32', NULL, '2026-09-06 06:52:02', 1, NULL, '2026-09-10 14:51:00', NULL, '2026-09-06 06:52:02'),
(9, 5, 3, 'Pending', 'INV-2026-731C8378ED', NULL, '2026-09-06 06:52:02', 1, NULL, '2026-09-10 14:51:00', NULL, '2026-09-06 06:52:02'),
(10, 1, 3, 'Pending', 'INV-2026-02B6626730', NULL, '2026-09-06 06:52:02', 1, NULL, '2026-09-10 14:51:00', NULL, '2026-09-06 06:52:02'),
(11, 2, 3, 'Pending', 'INV-2026-E80DD2F997', NULL, '2026-09-06 06:52:02', 1, NULL, '2026-09-10 14:51:00', NULL, '2026-09-06 06:52:02'),
(12, 6, 3, 'Pending', 'INV-2026-0F8058F614', NULL, '2026-09-06 06:52:02', 1, NULL, '2026-09-10 14:51:00', NULL, '2026-09-06 06:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `invitation_history`
--

CREATE TABLE `invitation_history` (
  `id` bigint(20) NOT NULL,
  `invitation_id` int(11) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invitation_history`
--

INSERT INTO `invitation_history` (`id`, `invitation_id`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, NULL, 'Pending', 'Invitation created for Angela Mendoza to Hearing 1.', 1, '2026-09-06 06:28:28'),
(2, 2, NULL, 'Pending', 'Invitation created for Carlo Reyes to Hearing 1.', 1, '2026-09-06 06:28:28'),
(3, 3, NULL, 'Pending', 'Invitation created for Dr. Roberto Lim to Hearing 1.', 1, '2026-09-06 06:28:28'),
(4, 4, NULL, 'Pending', 'Invitation created for Juan Dela Cruz to Hearing 1.', 1, '2026-09-06 06:28:28'),
(5, 5, NULL, 'Pending', 'Invitation created for Maria Santos to Hearing 1.', 1, '2026-09-06 06:28:28'),
(6, 6, NULL, 'Pending', 'Invitation created for Micko Laput to Hearing 1.', 1, '2026-09-06 06:28:28'),
(7, 6, 'Pending', 'Sent', 'Invitation for Micko Laput changed from Pending to Sent.', 1, '2026-09-06 06:28:38'),
(8, 5, 'Pending', 'Sent', 'Invitation for Maria Santos changed from Pending to Sent.', 1, '2026-09-06 06:28:44'),
(9, 4, 'Pending', 'Sent', 'Invitation for Juan Dela Cruz changed from Pending to Sent.', 1, '2026-09-06 06:28:45'),
(10, 3, 'Pending', 'Sent', 'Invitation for Dr. Roberto Lim changed from Pending to Sent.', 1, '2026-09-06 06:28:46'),
(11, 2, 'Pending', 'Sent', 'Invitation for Carlo Reyes changed from Pending to Sent.', 1, '2026-09-06 06:28:47'),
(12, 1, 'Pending', 'Sent', 'Invitation for Angela Mendoza changed from Pending to Sent.', 1, '2026-09-06 06:28:49'),
(13, 7, NULL, 'Pending', 'Invitation created for Angela Mendoza to traffic.', 1, '2026-09-06 06:52:02'),
(14, 8, NULL, 'Pending', 'Invitation created for Carlo Reyes to traffic.', 1, '2026-09-06 06:52:02'),
(15, 9, NULL, 'Pending', 'Invitation created for Dr. Roberto Lim to traffic.', 1, '2026-09-06 06:52:02'),
(16, 10, NULL, 'Pending', 'Invitation created for Juan Dela Cruz to traffic.', 1, '2026-09-06 06:52:02'),
(17, 11, NULL, 'Pending', 'Invitation created for Maria Santos to traffic.', 1, '2026-09-06 06:52:02'),
(18, 12, NULL, 'Pending', 'Invitation created for Micko Laput to traffic.', 1, '2026-09-06 06:52:02');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_agendas`
--

CREATE TABLE `lacms_agendas` (
  `id` bigint(20) NOT NULL,
  `agenda_reference` varchar(80) NOT NULL,
  `title` varchar(255) NOT NULL,
  `agenda_type` varchar(100) NOT NULL DEFAULT 'Legislative Session',
  `committee_id` int(11) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `agenda_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `meeting_link` varchar(500) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `created_by` int(11) DEFAULT NULL,
  `finalized_by` int(11) DEFAULT NULL,
  `finalized_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_agendas`
--

INSERT INTO `lacms_agendas` (`id`, `agenda_reference`, `title`, `agenda_type`, `committee_id`, `office_id`, `agenda_date`, `start_time`, `end_time`, `venue`, `meeting_link`, `description`, `notes`, `status`, `created_by`, `finalized_by`, `finalized_at`, `created_at`, `updated_at`) VALUES
(1, 'AGD-2026-0001', 'meeting', 'Committee Meeting', 2, 3, '2026-08-21', '11:35:00', '12:35:00', 'City Hall', 'http://localhost/lph/modules/hearings/index.php', 'just meeting', 'please be onsite', 'Finalized', 1, 1, '2026-08-18 23:37:07', '2026-08-18 15:35:54', '2026-08-18 15:37:07'),
(2, 'AGD-2026-0002', 'Community Waste Segregation Ordinance Discussion', 'Committee Meeting', 2, 3, '2026-08-31', '08:00:00', '17:00:00', 'City hall', 'http://localhost/lph/login.php', 'This is to for waste segration', 'Please Attend\nNo need', 'Cancelled', 1, NULL, NULL, '2026-08-28 15:27:55', '2026-08-28 15:28:24'),
(3, 'AGD-2026-0003', 'Community Waste Segregation Ordinance Discussion', 'Committee Meeting', 2, 3, '2026-08-31', '11:28:00', '23:28:00', 'City hall', 'http://localhost/lph/login.php', 'Please attend', 'Please attend', 'Finalized', 1, 1, '2026-08-28 23:31:16', '2026-08-28 15:29:09', '2026-08-28 15:31:16'),
(4, 'AGD-2026-0004', 'traffic', 'Legislative Session', 1, 4, '2026-09-15', '04:43:00', NULL, 'manila city hall', NULL, 'r', 'r', 'Finalized', 1, 1, '2026-09-06 14:44:10', '2026-09-06 06:42:42', '2026-09-06 06:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_agenda_documents`
--

CREATE TABLE `lacms_agenda_documents` (
  `id` bigint(20) NOT NULL,
  `agenda_id` bigint(20) NOT NULL,
  `agenda_item_id` bigint(20) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Agenda Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_agenda_history`
--

CREATE TABLE `lacms_agenda_history` (
  `id` bigint(20) NOT NULL,
  `agenda_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_agenda_history`
--

INSERT INTO `lacms_agenda_history` (`id`, `agenda_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create', NULL, 'Draft', 'Agenda AGD-2026-0001 created.', 1, '2026-08-18 15:35:54'),
(2, 1, 'Agenda Items', 'Draft', 'Draft', 'Agenda item added.', 1, '2026-08-18 15:36:40'),
(3, 1, 'Review', 'Draft', 'Under Review', 'Review agenda.', 1, '2026-08-18 15:36:49'),
(4, 1, 'Finalize', 'Under Review', 'Finalized', 'Finalize agenda.', 1, '2026-08-18 15:37:07'),
(5, 2, 'Create', NULL, 'Draft', 'Agenda AGD-2026-0002 created.', 1, '2026-08-28 15:27:55'),
(6, 2, 'Cancel', 'Draft', 'Cancelled', 'No need', 1, '2026-08-28 15:28:24'),
(7, 3, 'Create', NULL, 'Draft', 'Agenda AGD-2026-0003 created.', 1, '2026-08-28 15:29:09'),
(8, 3, 'Agenda Items', 'Draft', 'Draft', 'Agenda item added.', 1, '2026-08-28 15:30:51'),
(9, 3, 'Review', 'Draft', 'Under Review', 'Review agenda.', 1, '2026-08-28 15:31:08'),
(10, 3, 'Finalize', 'Under Review', 'Finalized', 'Finalize agenda.', 1, '2026-08-28 15:31:16'),
(11, 4, 'Create', NULL, 'Draft', 'Agenda AGD-2026-0004 created.', 1, '2026-09-06 06:42:42'),
(12, 4, 'Agenda Items', 'Draft', 'Draft', 'Agenda item added.', 1, '2026-09-06 06:43:48'),
(13, 4, 'Review', 'Draft', 'Under Review', 'Review agenda.', 1, '2026-09-06 06:43:55'),
(14, 4, 'Finalize', 'Under Review', 'Finalized', 'Finalize agenda.', 1, '2026-09-06 06:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_agenda_items`
--

CREATE TABLE `lacms_agenda_items` (
  `id` bigint(20) NOT NULL,
  `agenda_id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `item_number` varchar(50) DEFAULT NULL,
  `sequence_number` int(11) NOT NULL DEFAULT 1,
  `agenda_section` varchar(100) DEFAULT 'New Business',
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `sponsor_user_id` int(11) DEFAULT NULL,
  `presenter_user_id` int(11) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `priority_level` varchar(50) DEFAULT 'Normal',
  `estimated_minutes` int(11) DEFAULT NULL,
  `item_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `disposition` varchar(150) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_agenda_items`
--

INSERT INTO `lacms_agenda_items` (`id`, `agenda_id`, `legislative_item_id`, `item_number`, `sequence_number`, `agenda_section`, `title`, `description`, `sponsor_user_id`, `presenter_user_id`, `committee_id`, `priority_level`, `estimated_minutes`, `item_status`, `disposition`, `notes`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '1', 1, 'Call to Order', 'just item', 'sample', 1, 1, 8, 'Normal', 60, 'Pending', NULL, NULL, 1, '2026-08-18 15:36:40', '2026-08-18 15:36:40'),
(2, 3, 1, '1', 1, 'New Business', 'Community Waste Segregation Ordinance Discussion', 'Community Waste Segregation Ordinance Discussion', 1, 2, 4, 'Normal', 60, 'Pending', NULL, NULL, 1, '2026-08-28 15:30:51', '2026-08-28 15:30:51'),
(3, 4, 2, '004', 1, 'Committee Reports', 'traffic', 'r', 2, 3, 8, 'High', 50, 'Ready', NULL, 'r', 1, '2026-09-06 06:43:48', '2026-09-06 06:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_agenda_item_history`
--

CREATE TABLE `lacms_agenda_item_history` (
  `id` bigint(20) NOT NULL,
  `agenda_item_id` bigint(20) NOT NULL,
  `agenda_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_agenda_item_history`
--

INSERT INTO `lacms_agenda_item_history` (`id`, `agenda_item_id`, `agenda_id`, `action`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 1, 'Create', 'just item added as sequence 1.', 1, '2026-08-18 15:36:40'),
(2, 2, 3, 'Create', 'Community Waste Segregation Ordinance Discussion added as sequence 1.', 1, '2026-08-28 15:30:51'),
(3, 3, 4, 'Create', 'traffic added as sequence 1.', 1, '2026-09-06 06:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_ai_request_logs`
--

CREATE TABLE `lacms_ai_request_logs` (
  `id` bigint(20) NOT NULL,
  `source_type` varchar(80) NOT NULL,
  `source_id` bigint(20) DEFAULT NULL,
  `provider` varchar(50) NOT NULL DEFAULT 'ollama',
  `model_used` varchar(100) DEFAULT NULL,
  `request_prompt` longtext DEFAULT NULL,
  `response_payload` longtext DEFAULT NULL,
  `http_status` int(11) DEFAULT NULL,
  `success` tinyint(1) NOT NULL DEFAULT 0,
  `error_message` text DEFAULT NULL,
  `duration_ms` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_ai_request_logs`
--

INSERT INTO `lacms_ai_request_logs` (`id`, `source_type`, `source_id`, `provider`, `model_used`, `request_prompt`, `response_payload`, `http_status`, `success`, `error_message`, `duration_ms`, `created_by`, `created_at`) VALUES
(1, 'Deadline', 1, 'ollama', 'llama3.2:3b', 'You are drafting a concise professional reminder for a local government legislative office.\nDo not invent facts. Return JSON only with keys subject and message.\nDeadline title: sample\nDue: Aug 27, 2026 09:06 PM\nPriority: Normal\nResponsible: Micko Laput\nContext: Agenda: AGD-2026-0001\nThe message should be polite, direct, and under 120 words.', NULL, NULL, 0, 'Failed to connect to 127.0.0.1 port 11434: Connection refused', 2279, 1, '2026-08-24 13:07:54'),
(2, 'Deadline', 3, 'ollama', 'llama3.2:3b', 'You are drafting a concise professional reminder for a local government legislative office.\nDo not invent facts. Return JSON only with keys subject and message.\nDeadline title: Complete committee review\nDue: Sep 01, 2026 09:37 AM\nPriority: Normal\nResponsible: Micko Laput\nContext: Legislative item: ORD-2026-0001. Agenda: AGD-2026-0003. Calendar event: CAL-2026-0001. Meeting: MTG-2026-0001\nThe message should be polite, direct, and under 120 words.', '{\"error\":\"model \'llama3.2:3b\' not found\"}', 404, 0, 'Ollama HTTP status 404', 20, 1, '2026-09-08 05:59:55');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_calendar_conflicts`
--

CREATE TABLE `lacms_calendar_conflicts` (
  `id` bigint(20) NOT NULL,
  `calendar_event_id` bigint(20) NOT NULL,
  `conflicting_event_id` bigint(20) NOT NULL,
  `conflict_type` varchar(100) NOT NULL,
  `severity` varchar(30) NOT NULL DEFAULT 'Warning',
  `details` text DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Open',
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `resolution_notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_calendar_events`
--

CREATE TABLE `lacms_calendar_events` (
  `id` bigint(20) NOT NULL,
  `event_reference` varchar(80) NOT NULL,
  `agenda_id` bigint(20) DEFAULT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `event_type` varchar(100) NOT NULL DEFAULT 'Legislative Activity',
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `all_day` tinyint(1) NOT NULL DEFAULT 0,
  `venue` varchar(255) DEFAULT NULL,
  `meeting_link` varchar(500) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Tentative',
  `conflict_status` varchar(50) NOT NULL DEFAULT 'Unchecked',
  `conflict_notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `confirmed_by` int(11) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_calendar_events`
--

INSERT INTO `lacms_calendar_events` (`id`, `event_reference`, `agenda_id`, `legislative_item_id`, `event_type`, `title`, `description`, `start_datetime`, `end_datetime`, `all_day`, `venue`, `meeting_link`, `committee_id`, `office_id`, `status`, `conflict_status`, `conflict_notes`, `created_by`, `confirmed_by`, `confirmed_at`, `cancelled_at`, `cancellation_reason`, `created_at`, `updated_at`) VALUES
(1, 'CAL-2026-0001', 4, 1, 'Legislative Meeting', 'traffic', NULL, '2026-09-06 03:47:00', '2026-09-09 18:47:00', 0, NULL, NULL, NULL, NULL, 'Tentative', 'Clear', NULL, 1, 1, '2026-08-28 23:34:00', NULL, NULL, '2026-08-28 15:33:24', '2026-09-06 06:48:02'),
(2, 'CAL-2026-0002', 4, 2, 'Regular Session', 'traffic', 'r', '2026-09-12 14:44:00', '2026-09-13 16:44:00', 0, 'manila city hall', NULL, 4, 4, 'Completed', 'Clear', NULL, 1, 1, '2026-09-06 14:46:14', NULL, NULL, '2026-09-06 06:45:23', '2026-09-06 06:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_calendar_event_documents`
--

CREATE TABLE `lacms_calendar_event_documents` (
  `id` bigint(20) NOT NULL,
  `calendar_event_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Calendar Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_calendar_event_participants`
--

CREATE TABLE `lacms_calendar_event_participants` (
  `id` bigint(20) NOT NULL,
  `calendar_event_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `external_name` varchar(180) DEFAULT NULL,
  `external_email` varchar(180) DEFAULT NULL,
  `participant_role` varchar(100) DEFAULT 'Participant',
  `attendance_required` tinyint(1) NOT NULL DEFAULT 1,
  `response_status` varchar(40) NOT NULL DEFAULT 'Pending',
  `response_at` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_calendar_event_participants`
--

INSERT INTO `lacms_calendar_event_participants` (`id`, `calendar_event_id`, `user_id`, `external_name`, `external_email`, `participant_role`, `attendance_required`, `response_status`, `response_at`, `notes`, `created_at`) VALUES
(1, 2, NULL, 'r', 'r@gmail.com', 'Participant', 1, 'Pending', NULL, 'r', '2026-09-06 06:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_calendar_history`
--

CREATE TABLE `lacms_calendar_history` (
  `id` bigint(20) NOT NULL,
  `calendar_event_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_calendar_history`
--

INSERT INTO `lacms_calendar_history` (`id`, `calendar_event_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create', NULL, 'Tentative', 'Calendar event CAL-2026-0001 created.', 1, '2026-08-28 15:33:24'),
(2, 1, 'Confirm', 'Tentative', 'Confirmed', 'Confirm event.', 1, '2026-08-28 15:34:00'),
(3, 2, 'Create', NULL, 'Tentative', 'Calendar event CAL-2026-0002 created.', 1, '2026-09-06 06:45:23'),
(4, 2, 'Participant', 'Tentative', 'Tentative', 'Participant added.', 1, '2026-09-06 06:46:08'),
(5, 2, 'Confirm', 'Tentative', 'Confirmed', 'Confirm event.', 1, '2026-09-06 06:46:14'),
(6, 2, 'Complete', 'Confirmed', 'Completed', 'Complete event.', 1, '2026-09-06 06:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_deadlines`
--

CREATE TABLE `lacms_deadlines` (
  `id` bigint(20) NOT NULL,
  `deadline_reference` varchar(80) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `deadline_type` varchar(100) NOT NULL DEFAULT 'Legislative Task',
  `due_datetime` datetime NOT NULL,
  `priority_level` varchar(50) NOT NULL DEFAULT 'Normal',
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `legislative_item_id` int(11) DEFAULT NULL,
  `agenda_id` bigint(20) DEFAULT NULL,
  `calendar_event_id` bigint(20) DEFAULT NULL,
  `meeting_id` bigint(20) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `responsible_user_id` int(11) DEFAULT NULL,
  `reminder_policy` varchar(100) DEFAULT 'Standard',
  `completion_notes` text DEFAULT NULL,
  `completed_by` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_deadlines`
--

INSERT INTO `lacms_deadlines` (`id`, `deadline_reference`, `title`, `description`, `deadline_type`, `due_datetime`, `priority_level`, `status`, `legislative_item_id`, `agenda_id`, `calendar_event_id`, `meeting_id`, `committee_id`, `office_id`, `responsible_user_id`, `reminder_policy`, `completion_notes`, `completed_by`, `completed_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'DLN-2026-0001', 'sample', 'sample', 'Committee Action', '2026-08-27 21:06:00', 'Normal', 'Completed', NULL, 1, NULL, NULL, 2, 3, 2, 'Standard', 'sample', 1, '2026-08-24 21:08:55', 1, '2026-08-24 13:07:20', '2026-08-24 13:08:55'),
(2, 'DLN-2026-0002', 'sample', 'sample', 'Committee Action', '2026-08-27 21:06:00', 'Normal', 'Overdue', NULL, 1, NULL, NULL, 2, 3, 2, 'Standard', NULL, NULL, NULL, 1, '2026-08-24 13:07:22', '2026-08-28 15:26:17'),
(3, 'DLN-2026-0003', 'Complete committee review', 'This is the deadline', 'Legislative Task', '2026-09-01 09:37:00', 'Normal', 'Overdue', 1, 3, 1, 1, 2, 3, 2, 'Standard', NULL, NULL, NULL, 1, '2026-08-28 15:38:22', '2026-09-06 06:41:52'),
(4, 'DLN-2026-0004', 'traffic', 'r', 'Document Submission', '2026-09-09 04:48:00', 'Normal', 'Pending', 2, 4, 2, 2, 3, 4, 2, 'Standard', NULL, NULL, NULL, 1, '2026-09-06 06:48:49', '2026-09-06 06:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_deadline_assignments`
--

CREATE TABLE `lacms_deadline_assignments` (
  `id` bigint(20) NOT NULL,
  `deadline_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `assignment_role` varchar(100) DEFAULT 'Responsible',
  `status` varchar(50) NOT NULL DEFAULT 'Assigned',
  `assigned_by` int(11) DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `acknowledged_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_deadline_assignments`
--

INSERT INTO `lacms_deadline_assignments` (`id`, `deadline_id`, `user_id`, `office_id`, `committee_id`, `assignment_role`, `status`, `assigned_by`, `assigned_at`, `acknowledged_at`) VALUES
(1, 1, 2, 3, 2, 'Primary', 'Assigned', 1, '2026-08-24 13:07:21', NULL),
(2, 2, 2, 3, 2, 'Primary', 'Assigned', 1, '2026-08-24 13:07:22', NULL),
(3, 1, 4, 2, 2, 'Responsible', 'Assigned', 1, '2026-08-24 13:08:13', NULL),
(4, 3, 2, 3, 2, 'Primary', 'Assigned', 1, '2026-08-28 15:38:22', NULL),
(5, 4, 2, 4, 3, 'Primary', 'Assigned', 1, '2026-09-06 06:48:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lacms_deadline_documents`
--

CREATE TABLE `lacms_deadline_documents` (
  `id` bigint(20) NOT NULL,
  `deadline_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Deadline Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_deadline_escalations`
--

CREATE TABLE `lacms_deadline_escalations` (
  `id` bigint(20) NOT NULL,
  `deadline_id` bigint(20) NOT NULL,
  `escalation_level` varchar(50) NOT NULL DEFAULT 'Reminder',
  `reason` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Open',
  `escalated_to_user_id` int(11) DEFAULT NULL,
  `escalated_to_office_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `resolution_notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_deadline_escalations`
--

INSERT INTO `lacms_deadline_escalations` (`id`, `deadline_id`, `escalation_level`, `reason`, `status`, `escalated_to_user_id`, `escalated_to_office_id`, `created_by`, `created_at`, `resolved_by`, `resolved_at`, `resolution_notes`) VALUES
(1, 1, 'Attention', 'sample', 'Open', 2, 3, 1, '2026-08-24 13:07:52', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lacms_deadline_history`
--

CREATE TABLE `lacms_deadline_history` (
  `id` bigint(20) NOT NULL,
  `deadline_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_deadline_history`
--

INSERT INTO `lacms_deadline_history` (`id`, `deadline_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create', NULL, 'Pending', 'Deadline DLN-2026-0001 created with 1 scheduled reminder(s).', 1, '2026-08-24 13:07:21'),
(2, 2, 'Create', NULL, 'Pending', 'Deadline DLN-2026-0002 created with 1 scheduled reminder(s).', 1, '2026-08-24 13:07:22'),
(3, 1, 'Start', 'Pending', 'In Progress', 'Start deadline.', 1, '2026-08-24 13:07:39'),
(4, 1, 'Escalate', 'In Progress', 'In Progress', 'sample', 1, '2026-08-24 13:07:55'),
(5, 1, 'Assignment', 'In Progress', 'In Progress', 'Assignment added.', 1, '2026-08-24 13:08:13'),
(6, 1, 'Schedule Reminder', 'In Progress', 'In Progress', 'Manual reminder scheduled for Aug 25, 2026 09:08 PM.', 1, '2026-08-24 13:08:19'),
(7, 1, 'Complete', 'In Progress', 'Completed', 'sample', 1, '2026-08-24 13:08:55'),
(8, 3, 'Create', NULL, 'Pending', 'Deadline DLN-2026-0003 created with 2 scheduled reminder(s).', 1, '2026-08-28 15:38:22'),
(9, 4, 'Create', NULL, 'Pending', 'Deadline DLN-2026-0004 created with 1 scheduled reminder(s).', 1, '2026-09-06 06:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_deadline_reminders`
--

CREATE TABLE `lacms_deadline_reminders` (
  `id` bigint(20) NOT NULL,
  `deadline_id` bigint(20) NOT NULL,
  `remind_at` datetime NOT NULL,
  `reminder_type` varchar(80) NOT NULL DEFAULT 'System',
  `status` varchar(50) NOT NULL DEFAULT 'Scheduled',
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `generated_by_ai` tinyint(1) NOT NULL DEFAULT 0,
  `sent_at` datetime DEFAULT NULL,
  `failure_reason` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_deadline_reminders`
--

INSERT INTO `lacms_deadline_reminders` (`id`, `deadline_id`, `remind_at`, `reminder_type`, `status`, `subject`, `message`, `generated_by_ai`, `sent_at`, `failure_reason`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-08-26 21:06:00', 'System', 'Cancelled', 'Reminder: sample', 'Automated reminder scheduled before the legislative deadline.', 0, NULL, NULL, 1, '2026-08-24 13:07:21', '2026-08-24 13:08:55'),
(2, 2, '2026-08-26 21:06:00', 'System', 'Scheduled', 'Reminder: sample', 'Automated reminder scheduled before the legislative deadline.', 0, NULL, NULL, 1, '2026-08-24 13:07:22', '2026-08-24 13:07:22'),
(3, 1, '2026-08-25 21:08:00', 'Manual', 'Cancelled', 'Reminder: sample', 'Manual reminder scheduled for this legislative deadline.', 0, NULL, NULL, 1, '2026-08-24 13:08:19', '2026-08-24 13:08:55'),
(4, 3, '2026-08-29 09:37:00', 'System', 'Scheduled', 'Reminder: Complete committee review', 'Automated reminder scheduled before the legislative deadline.', 0, NULL, NULL, 1, '2026-08-28 15:38:22', '2026-08-28 15:38:22'),
(5, 3, '2026-08-31 09:37:00', 'System', 'Scheduled', 'Reminder: Complete committee review', 'Automated reminder scheduled before the legislative deadline.', 0, NULL, NULL, 1, '2026-08-28 15:38:22', '2026-08-28 15:38:22'),
(6, 4, '2026-09-08 04:48:00', 'System', 'Scheduled', 'Reminder: traffic', 'Automated reminder scheduled before the legislative deadline.', 0, NULL, NULL, 1, '2026-09-06 06:48:49', '2026-09-06 06:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_login_attempts`
--

CREATE TABLE `lacms_login_attempts` (
  `id` bigint(20) NOT NULL,
  `email_hash` char(64) NOT NULL,
  `ip_hash` char(64) NOT NULL,
  `was_successful` tinyint(1) NOT NULL DEFAULT 0,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_login_attempts`
--

INSERT INTO `lacms_login_attempts` (`id`, `email_hash`, `ip_hash`, `was_successful`, `attempted_at`) VALUES
(1, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-18 15:34:45'),
(2, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-24 11:32:50'),
(4, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-24 11:37:07'),
(5, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-24 13:04:06'),
(6, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-08 05:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_meetings`
--

CREATE TABLE `lacms_meetings` (
  `id` bigint(20) NOT NULL,
  `meeting_reference` varchar(80) NOT NULL,
  `calendar_event_id` bigint(20) DEFAULT NULL,
  `agenda_id` bigint(20) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `meeting_type` varchar(100) NOT NULL DEFAULT 'Committee Meeting',
  `purpose` text DEFAULT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `meeting_link` varchar(500) DEFAULT NULL,
  `chair_user_id` int(11) DEFAULT NULL,
  `secretary_user_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Planned',
  `coordination_notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `confirmed_by` int(11) DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_meetings`
--

INSERT INTO `lacms_meetings` (`id`, `meeting_reference`, `calendar_event_id`, `agenda_id`, `committee_id`, `office_id`, `title`, `meeting_type`, `purpose`, `start_datetime`, `end_datetime`, `venue`, `meeting_link`, `chair_user_id`, `secretary_user_id`, `status`, `coordination_notes`, `created_by`, `confirmed_by`, `confirmed_at`, `completed_at`, `cancelled_at`, `cancellation_reason`, `created_at`, `updated_at`) VALUES
(1, 'MTG-2026-0001', 1, 3, 2, 3, 'Waste Segregation Ordinance Committee Meeting', 'Legislative Conference', 'coordination of meeting', '2026-08-31 11:34:00', '2026-08-31 23:34:00', 'City hall', 'http://localhost/lph/login.php', 2, 3, 'Planned', 'coordination of meeting', 1, NULL, NULL, NULL, NULL, NULL, '2026-08-28 15:36:17', '2026-08-28 15:36:17'),
(2, 'MTG-2026-0002', 1, 4, NULL, NULL, 'traffic', 'Regular Session', NULL, '2026-09-06 03:47:00', '2026-09-09 18:47:00', NULL, NULL, NULL, NULL, 'Planned', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2026-09-06 06:48:02', '2026-09-06 06:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_meeting_documents`
--

CREATE TABLE `lacms_meeting_documents` (
  `id` bigint(20) NOT NULL,
  `meeting_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Meeting Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_meeting_history`
--

CREATE TABLE `lacms_meeting_history` (
  `id` bigint(20) NOT NULL,
  `meeting_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_meeting_history`
--

INSERT INTO `lacms_meeting_history` (`id`, `meeting_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create', NULL, 'Planned', 'Meeting MTG-2026-0001 created.', 1, '2026-08-28 15:36:17'),
(2, 2, 'Create', NULL, 'Planned', 'Meeting MTG-2026-0002 created.', 1, '2026-09-06 06:48:02');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_meeting_participants`
--

CREATE TABLE `lacms_meeting_participants` (
  `id` bigint(20) NOT NULL,
  `meeting_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `external_name` varchar(180) DEFAULT NULL,
  `external_email` varchar(180) DEFAULT NULL,
  `participant_role` varchar(100) DEFAULT 'Participant',
  `attendance_required` tinyint(1) NOT NULL DEFAULT 1,
  `notification_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `response_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `attendance_status` varchar(50) NOT NULL DEFAULT 'Not Recorded',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_notifications`
--

CREATE TABLE `lacms_notifications` (
  `id` bigint(20) NOT NULL,
  `notification_reference` varchar(80) NOT NULL,
  `notification_type` varchar(100) NOT NULL,
  `source_type` varchar(80) NOT NULL,
  `source_id` bigint(20) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `generated_by_ai` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_notifications`
--

INSERT INTO `lacms_notifications` (`id`, `notification_reference`, `notification_type`, `source_type`, `source_id`, `subject`, `message`, `scheduled_at`, `status`, `generated_by_ai`, `created_by`, `sent_at`, `cancelled_at`, `created_at`, `updated_at`) VALUES
(1, 'NTF-2026-0001', 'Deadline Escalation', 'Deadline', 1, 'Escalation: Reminder: sample is due is due in 3 day(s)', 'sample\n\nThis is a reminder that sample is due on Aug 27, 2026 09:06 PM. Priority: Normal. Responsible: Micko Laput. Agenda: AGD-2026-0001', NULL, 'Ready', 0, 1, NULL, NULL, '2026-08-24 13:07:54', '2026-08-24 13:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_notification_delivery_attempts`
--

CREATE TABLE `lacms_notification_delivery_attempts` (
  `id` bigint(20) NOT NULL,
  `notification_recipient_id` bigint(20) NOT NULL,
  `delivery_channel` varchar(50) NOT NULL,
  `attempt_number` int(11) NOT NULL DEFAULT 1,
  `status` varchar(50) NOT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `response_code` varchar(100) DEFAULT NULL,
  `response_message` text DEFAULT NULL,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_notification_history`
--

CREATE TABLE `lacms_notification_history` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_notification_history`
--

INSERT INTO `lacms_notification_history` (`id`, `notification_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Queue', NULL, 'Ready', 'Notification NTF-2026-0001 queued with 3 recipient(s).', 1, '2026-08-24 13:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_notification_recipients`
--

CREATE TABLE `lacms_notification_recipients` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recipient_name` varchar(180) DEFAULT NULL,
  `recipient_email` varchar(180) DEFAULT NULL,
  `delivery_channel` varchar(50) NOT NULL DEFAULT 'System',
  `delivery_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `sent_at` datetime DEFAULT NULL,
  `acknowledged_at` datetime DEFAULT NULL,
  `failure_reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_notification_recipients`
--

INSERT INTO `lacms_notification_recipients` (`id`, `notification_id`, `user_id`, `recipient_name`, `recipient_email`, `delivery_channel`, `delivery_status`, `sent_at`, `acknowledged_at`, `failure_reason`, `created_at`) VALUES
(1, 1, 2, 'Micko Laput', 'mickolaput@gmail.com', 'System', 'Pending', NULL, NULL, NULL, '2026-08-24 13:07:54'),
(2, 1, 3, 'nonelichz', 'nonelichz@gmail.com', 'System', 'Pending', NULL, NULL, NULL, '2026-08-24 13:07:54'),
(3, 1, 4, 'ronald', 'ronald@gmail.com', 'System', 'Pending', NULL, NULL, NULL, '2026-08-24 13:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_reminder_templates`
--

CREATE TABLE `lacms_reminder_templates` (
  `id` bigint(20) NOT NULL,
  `template_code` varchar(80) NOT NULL,
  `name` varchar(180) NOT NULL,
  `source_type` varchar(80) NOT NULL DEFAULT 'Deadline',
  `subject_template` varchar(255) NOT NULL,
  `message_template` text NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_reminder_templates`
--

INSERT INTO `lacms_reminder_templates` (`id`, `template_code`, `name`, `source_type`, `subject_template`, `message_template`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'DEADLINE_STANDARD', 'Standard Legislative Deadline Reminder', 'Deadline', 'Reminder: {{title}} is due {{due_text}}', 'This is a reminder that {{title}} is due on {{due_datetime}}. Priority: {{priority}}. Responsible: {{responsible}}. {{context}}', 1, NULL, '2026-08-24 13:03:33', '2026-08-24 13:03:33'),
(2, 'MEETING_STANDARD', 'Standard Legislative Meeting Reminder', 'Meeting', 'Reminder: {{title}} on {{schedule}}', 'This is a reminder for {{title}} scheduled on {{schedule}} at {{venue}}. {{context}}', 1, NULL, '2026-08-24 13:03:33', '2026-08-24 13:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_schema_migrations`
--

CREATE TABLE `lacms_schema_migrations` (
  `id` int(11) NOT NULL,
  `migration_key` varchar(120) NOT NULL,
  `description` text DEFAULT NULL,
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lacms_schema_migrations`
--

INSERT INTO `lacms_schema_migrations` (`id`, `migration_key`, `description`, `applied_at`) VALUES
(1, '001_lacms_foundation', 'Creates the operational LACMS foundation for agendas, calendar scheduling, meetings, deadlines, synchronization support, notification/reminder workflows and audit history.', '2026-08-17 11:50:29'),
(3, '002_agenda_calendar_meetings', 'Completes operational support for Legislative Agenda Management, Calendar Scheduling conflict audit, and Meeting Coordination.', '2026-08-17 12:12:44'),
(4, '003_deadlines_notifications_reports', 'Completes Deadline Tracking, notification/reminder delivery audit, Ollama-assisted reminder logging, and reporting support.', '2026-08-17 12:25:32'),
(5, '004_sync_admin_rbac_security', 'Completes executive-legislative synchronization, LACMS administration, fine-grained RBAC, explicit subsystem access and hashed login-attempt rate limiting.', '2026-08-17 12:42:31');

-- --------------------------------------------------------

--
-- Table structure for table `lacms_sync_actions`
--

CREATE TABLE `lacms_sync_actions` (
  `id` bigint(20) NOT NULL,
  `sync_record_id` bigint(20) NOT NULL,
  `action_title` varchar(255) NOT NULL,
  `action_description` text DEFAULT NULL,
  `responsible_user_id` int(11) DEFAULT NULL,
  `responsible_office_id` int(11) DEFAULT NULL,
  `due_datetime` datetime DEFAULT NULL,
  `priority_level` varchar(50) NOT NULL DEFAULT 'Normal',
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `completion_notes` text DEFAULT NULL,
  `completed_by` int(11) DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_sync_documents`
--

CREATE TABLE `lacms_sync_documents` (
  `id` bigint(20) NOT NULL,
  `sync_record_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Coordination Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_sync_history`
--

CREATE TABLE `lacms_sync_history` (
  `id` bigint(20) NOT NULL,
  `sync_record_id` bigint(20) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lacms_sync_records`
--

CREATE TABLE `lacms_sync_records` (
  `id` bigint(20) NOT NULL,
  `sync_reference` varchar(80) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sync_type` varchar(100) NOT NULL DEFAULT 'Policy Coordination',
  `legislative_item_id` int(11) DEFAULT NULL,
  `agenda_id` bigint(20) DEFAULT NULL,
  `calendar_event_id` bigint(20) DEFAULT NULL,
  `source_office_id` int(11) DEFAULT NULL,
  `target_committee_id` int(11) DEFAULT NULL,
  `priority_level` varchar(50) NOT NULL DEFAULT 'Normal',
  `executive_position` text DEFAULT NULL,
  `legislative_position` text DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `resolution_notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legislative_items`
--

CREATE TABLE `legislative_items` (
  `id` int(11) NOT NULL,
  `public_id` char(36) DEFAULT NULL,
  `reference_number` varchar(100) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `origin_system_id` int(11) DEFAULT NULL,
  `originating_office_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `current_status` varchar(100) NOT NULL DEFAULT 'Draft',
  `priority_level` varchar(50) DEFAULT 'Normal',
  `visibility` varchar(30) DEFAULT 'Internal',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `legislative_items`
--

INSERT INTO `legislative_items` (`id`, `public_id`, `reference_number`, `item_type_id`, `origin_system_id`, `originating_office_id`, `title`, `summary`, `current_status`, `priority_level`, `visibility`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'ORD-2026-0001', 1, 1, 3, 'Community Waste Segregation Ordinance 2026', 'An ordinance establishing a community waste segregation program in the City of Manila.', 'Implementation In Progress', 'Normal', 'Public', 1, '2026-08-28 15:24:23', '2026-09-04 04:20:21', NULL),
(2, NULL, 'ORD-2026-0002', 1, 1, 2, 'trafiic management', 'try', 'Endorsed', 'High', 'Internal', 1, '2026-09-06 06:38:37', '2026-09-06 06:40:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `legislative_item_status_history`
--

CREATE TABLE `legislative_item_status_history` (
  `id` int(11) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `previous_status` varchar(100) DEFAULT NULL,
  `new_status` varchar(100) NOT NULL,
  `remarks` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `legislative_item_status_history`
--

INSERT INTO `legislative_item_status_history` (`id`, `legislative_item_id`, `previous_status`, `new_status`, `remarks`, `changed_by`, `created_at`) VALUES
(1, 1, NULL, 'Draft', 'Ordinance drafting record created.', 1, '2026-08-28 15:24:23'),
(2, 1, 'Draft', 'Submitted for Review', 'Submitted to Committee on Appropriations and Finance for review round 1.', 1, '2026-08-28 15:25:40'),
(3, 1, 'Submitted for Review', 'Under Review', 'Committee review started.', 1, '2026-08-28 15:53:32'),
(4, 1, 'Under Review', 'Committee Reviewed', 'Review completed with recommendation: Endorse.', 1, '2026-08-28 15:53:37'),
(5, 1, 'Committee Reviewed', 'Endorsed', 'Committee endorsement status: Endorsed.', 1, '2026-08-28 15:53:46'),
(6, 1, 'Endorsed', 'Endorsed', 'Committee endorsement status: Endorsed.', 1, '2026-08-28 15:54:24'),
(7, 1, 'Endorsed', 'Pending Approval', 'Approval workflow started.', 1, '2026-08-28 16:20:02'),
(8, 1, 'Pending Approval', 'Approved', 'Approval action APR-2026-0001: Approved.', 1, '2026-08-28 16:20:10'),
(9, 1, 'Approved', 'Enacted', 'Enactment finalized as ORD-2026-0001.', 1, '2026-08-28 16:22:43'),
(10, 1, 'Enacted', 'Published', 'Publication PUB-2026-0001 released.', 1, '2026-08-28 16:23:18'),
(11, 1, 'Published', 'Implementation In Progress', 'Implementation monitoring status synchronized.', 1, '2026-08-28 16:23:50'),
(12, 1, 'Implementation In Progress', 'Endorsed', 'Committee endorsement status: Endorsed.', 1, '2026-09-04 04:18:45'),
(13, 1, 'Endorsed', 'Published', 'Publication PUB-2026-0002 released.', 1, '2026-09-04 04:19:24'),
(14, 1, 'Published', 'Implementation In Progress', 'Implementation monitoring status synchronized.', 1, '2026-09-04 04:20:21'),
(15, 2, NULL, 'Draft', 'Ordinance drafting record created.', 1, '2026-09-06 06:38:37'),
(16, 2, 'Draft', 'Submitted for Review', 'Submitted to Committee on Appropriations and Finance for review round 1.', 1, '2026-09-06 06:39:30'),
(17, 2, 'Submitted for Review', 'Under Review', 'Committee review started.', 1, '2026-09-06 06:40:12'),
(18, 2, 'Under Review', 'Committee Reviewed', 'Review completed with recommendation: Endorse.', 1, '2026-09-06 06:40:44'),
(19, 2, 'Committee Reviewed', 'Endorsed', 'Committee endorsement status: Endorsed.', 1, '2026-09-06 06:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `legislative_item_types`
--

CREATE TABLE `legislative_item_types` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `legislative_item_types`
--

INSERT INTO `legislative_item_types` (`id`, `code`, `name`, `description`, `created_at`) VALUES
(1, 'ordinance', 'Ordinance', NULL, '2026-08-01 04:21:34'),
(2, 'resolution', 'Resolution', NULL, '2026-08-01 04:21:34'),
(3, 'proposal', 'Citizen Proposal', NULL, '2026-08-01 04:21:34'),
(4, 'petition', 'Petition', NULL, '2026-08-01 04:21:34'),
(5, 'executive_request', 'Executive Request', NULL, '2026-08-01 04:21:34'),
(6, 'policy_matter', 'Policy Matter', NULL, '2026-08-01 04:21:34'),
(7, 'public_issue', 'Public Issue', NULL, '2026-08-01 04:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `lph_cef_ai_analysis`
--

CREATE TABLE `lph_cef_ai_analysis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `analysis_scope` varchar(30) NOT NULL DEFAULT 'Citizen Feedback',
  `sentiment` varchar(20) DEFAULT NULL,
  `confidence_score` decimal(5,2) DEFAULT NULL,
  `urgency_level` varchar(20) DEFAULT NULL,
  `urgency_score` decimal(5,2) DEFAULT NULL,
  `keyword_score` decimal(5,2) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`keywords`)),
  `risk_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`risk_keywords`)),
  `recommended_category` varchar(150) DEFAULT NULL,
  `suggested_response` text DEFAULT NULL,
  `flagged_for_review` tinyint(1) NOT NULL DEFAULT 0,
  `review_status` varchar(30) NOT NULL DEFAULT 'Pending',
  `review_notes` text DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `analysis_version` int(11) NOT NULL DEFAULT 1,
  `status` varchar(20) NOT NULL DEFAULT 'pending',
  `error_message` text DEFAULT NULL,
  `model_used` varchar(100) DEFAULT NULL,
  `raw_response` longtext DEFAULT NULL,
  `analyzed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lph_cef_ai_analysis`
--

INSERT INTO `lph_cef_ai_analysis` (`id`, `submission_id`, `analysis_scope`, `sentiment`, `confidence_score`, `urgency_level`, `urgency_score`, `keyword_score`, `summary`, `keywords`, `risk_keywords`, `recommended_category`, `suggested_response`, `flagged_for_review`, `review_status`, `review_notes`, `reviewed_by`, `reviewed_at`, `analysis_version`, `status`, `error_message`, `model_used`, `raw_response`, `analyzed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Citizen Feedback', 'Positive', 90.00, 'High', 80.00, 80.00, 'The citizen submitted a complaint regarding the presence of a large number of lubak in Valenzuela, which is a health and sanitation concern. The citizen is seeking a resolution to this issue and is rating the service experience as 3 out of 5. The citizen is concerned about the potential health risks associated with the presence of such a large number of people in a small area.', '[\"presence of lubak in Valenzuela\",\"health and sanitation concern\",\"large number of people\",\"small area\",\"citizen complaint\",\"service experience\"]', '[\"presence of lubak in Valenzuela\",\"health and sanitation concern\",\"large number of people\",\"small area\",\"citizen complaint\",\"service experience\"]', 'Health and Sanitation', 'We apologize for the inconvenience and are taking immediate action to address the issue. We will work with our sanitation team to ensure that the area is properly cleaned and maintained. We appreciate the citizen\'s feedback and will follow up with an update on our progress.', 0, 'Pending', NULL, NULL, NULL, 1, 'completed', NULL, 'llama3.2:1b', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:55:13.0669403Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 80, \\n  \\\"summary\\\": \\\"The citizen submitted a complaint regarding the presence of a large number of lubak in Valenzuela, which is a health and sanitation concern. The citizen is seeking a resolution to this issue and is rating the service experience as 3 out of 5. The citizen is concerned about the potential health risks associated with the presence of such a large number of people in a small area.\\\",\\n  \\\"keywords\\\": [\\\"presence of lubak in Valenzuela\\\", \\\"health and sanitation concern\\\", \\\"large number of people\\\", \\\"small area\\\", \\\"citizen complaint\\\", \\\"service experience\\\"],\\n  \\\"risk_keywords\\\": [\\\"presence of lubak in Valenzuela\\\", \\\"health and sanitation concern\\\", \\\"large number of people\\\", \\\"small area\\\", \\\"citizen complaint\\\", \\\"service experience\\\", \\\"potential health risks\\\"],\\n  \\\"recommended_category\\\": \\\"Health and Sanitation\\\", \\n  \\\"suggested_response\\\": \\\"We apologize for the inconvenience and are taking immediate action to address the issue. We will work with our sanitation team to ensure that the area is properly cleaned and maintained. We appreciate the citizen\'s feedback and will follow up with an update on our progress.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,5000,34831,198,9032,25,356,15229,12,2366,21,12,931,16,198,87721,7036,25,47317,37957,198,87721,955,25,37957,198,6888,25,6401,323,5960,7709,198,13317,25,6205,198,19791,17665,555,22618,25,358,1518,264,2763,315,28445,587,28445,587,304,1062,17007,24669,198,2097,60365,25,3824,287,28445,587,198,50140,10844,4183,555,22618,25,18944,198,36448,3169,25,5475,21460,198,1898,3158,25,720,5001,2757,15632,25,7643,352,437,198,65661,24604,10959,25,220,18,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,1490,11,720,220,330,1743,794,330,791,22618,14976,264,12458,9002,279,9546,315,264,3544,1396,315,28445,587,304,4196,17007,24669,11,902,374,264,2890,323,77623,4747,13,578,22618,374,11125,264,11175,311,420,4360,323,374,10959,279,2532,3217,439,220,18,704,315,220,20,13,578,22618,374,11920,922,279,4754,2890,15635,5938,449,279,9546,315,1778,264,3544,1396,315,1274,304,264,2678,3158,10560,220,330,30095,794,4482,74519,315,28445,587,304,4196,17007,24669,498,330,12393,323,77623,4747,498,330,17185,1396,315,1274,498,330,9181,3158,498,330,54961,24604,12458,498,330,8095,3217,8257,220,330,82043,52454,794,4482,74519,315,28445,587,304,4196,17007,24669,498,330,12393,323,77623,4747,498,330,17185,1396,315,1274,498,330,9181,3158,498,330,54961,24604,12458,498,330,8095,3217,498,330,93036,2890,15635,8257,220,330,86447,12110,794,330,14884,323,5960,7709,498,720,220,330,82,54376,9852,794,330,1687,37979,369,279,61109,323,527,4737,14247,1957,311,2686,279,4360,13,1226,690,990,449,1057,77623,2128,311,6106,430,279,3158,374,10489,28822,323,18908,13,1226,15763,279,22618,596,11302,323,690,1833,709,449,459,2713,389,1057,5208,1210,720,92],\"total_duration\":4489763000,\"load_duration\":2646100,\"prompt_eval_count\":634,\"prompt_eval_duration\":143754000,\"eval_count\":286,\"eval_duration\":3921593000}', '2026-09-02 23:55:13', '2026-09-02 15:24:30', '2026-09-02 15:55:13'),
(2, 2, 'Citizen Feedback', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Pending', NULL, NULL, NULL, 1, 'failed', 'The AI model did not return valid structured analysis.', NULL, '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:55:19.5066659Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 80, \\n  \\\"summary\\\": \\\"The citizen provided a sample feedback on the environment category, stating that it is a general feedback and does not have any serious impact. The citizen rated the feedback as 1 out of 5, indicating a very positive sentiment.\\\",\\n  \\\"keywords\\\": [\\\"sample feedback\\\", \\\"environment\\\", \\\"general feedback\\\", \\\"citizen portal\\\", \\\"CEPFMS\\\", \\\"val\\\", \\\"service area\\\", \\\"fixed\\\", \\\"desired outcome\\\", \\\"citizen rating\\\", \\\"resolved\\\", \\\"positive\\\", \\\"satisfied\\\", \\\"appreciative\\\", \\\"supportive\\\", \\\"improved\\\", \\\"resolved\\\", \\\"general\\\", \\\"feedback\\\", \\\"complaint\\\", \\\"urgency\\\", \\\"risk\\\", \\\"health/safety risk\\\", \\\"serious disruption\\\", \\\"time-sensitive need\\\", \\\"resolved\\\", \\\"thankful follow-up\\\", \\\"negative\\\", \\\"repeated service failure\\\", \\\"strong dissatisfaction\\\", \\\"harm\\\", \\\"danger\\\", \\\"serious disruption\\\", \\\"urgent government-action need\\\", \\\"resolved\\\", \\\"thankful\\\", \\\"positive\\\", \\\"satisfied\\\", \\\"appreciative\\\", \\\"supportive\\\", \\\"improved\\\", \\\"resolved\\\", \\\"general\\\", \\\"feedback\\\", \\\"complaint\\\", \\\"urgency\\\", \\\"risk\\\", \\\"health/safety risk\\\", \\\"serious disruption\\\", \\\"time-sensitive need\\\", \\\"resolved\\\", \\\"thankful follow-up\\\", \\\"negative\\\", \\\"repeated service failure\\\", \\\"strong dissatisfaction\\\", \\\"harm\\\", \\\"danger\\\", \\\"serious disruption\\\", \\\"urgent government-action need\\\", \\\"resolved\\\", \\\"thankful\\\", \\\"positive\\\", \\\"satisfied\\\", \\\"appreciative\\\", \\\"supportive\\\", \\\"improved\\\", \\\"resolved\\\", \\\"general\\\", \\\"feedback\\\", \\\"complaint\\\", \\\"urgency\\\", \\\"risk\\\", \\\"health/safety risk\\\", \\\"serious disruption\\\", \\\"time-sensitive need\\\", \\\"resolved\\\", \\\"thankful follow-up\\\", \\\"negative\\\", \\\"repeated service failure\\\", \\\"strong dissatisfaction\\\", \\\"harm\\\", \\\"danger\\\", \\\"serious disruption\\\", \\\"urgent government-action need\\\", \\\"resolved\\\", \\\"thankful\\\", \\\"\",\"done\":true,\"done_reason\":\"length\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,931,17,198,87721,7036,25,47317,37957,198,87721,955,25,37957,198,6888,25,11847,198,13317,25,6205,11302,198,19791,17665,555,22618,25,6205,11302,198,2097,60365,25,6205,11302,198,50140,10844,4183,555,22618,25,5234,198,36448,3169,25,3331,37957,198,1898,3158,25,1062,198,5001,2757,15632,25,8521,198,65661,24604,10959,25,220,16,198,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,1490,11,720,220,330,1743,794,330,791,22618,3984,264,6205,11302,389,279,4676,5699,11,28898,430,433,374,264,4689,11302,323,1587,539,617,904,6129,5536,13,578,22618,22359,279,11302,439,220,16,704,315,220,20,11,19392,264,1633,6928,27065,10560,220,330,30095,794,4482,13925,11302,498,330,24175,498,330,25615,11302,498,330,54961,24604,24007,498,330,2152,20280,4931,498,330,838,498,330,8095,3158,498,330,22795,498,330,83882,15632,498,330,54961,24604,10959,498,330,40847,498,330,31587,498,330,82,47365,498,330,680,2827,54679,498,330,24249,535,498,330,318,96608,498,330,40847,498,330,25615,498,330,21674,498,330,884,32397,498,330,5673,2301,498,330,82043,498,330,12393,2754,39718,5326,498,330,94427,44219,498,330,1712,57767,1205,498,330,40847,498,330,58517,1285,1833,5352,498,330,43324,498,330,265,43054,2532,8060,498,330,4620,97894,498,330,71,2227,498,330,32550,498,330,94427,44219,498,330,86153,3109,26115,1205,498,330,40847,498,330,58517,1285,498,330,31587,498,330,82,47365,498,330,680,2827,54679,498,330,24249,535,498,330,318,96608,498,330,40847,498,330,25615,498,330,21674,498,330,884,32397,498,330,5673,2301,498,330,82043,498,330,12393,2754,39718,5326,498,330,94427,44219,498,330,1712,57767,1205,498,330,40847,498,330,58517,1285,1833,5352,498,330,43324,498,330,265,43054,2532,8060,498,330,4620,97894,498,330,71,2227,498,330,32550,498,330,94427,44219,498,330,86153,3109,26115,1205,498,330,40847,498,330,58517,1285,498,330,31587,498,330,82,47365,498,330,680,2827,54679,498,330,24249,535,498,330,318,96608,498,330,40847,498,330,25615,498,330,21674,498,330,884,32397,498,330,5673,2301,498,330,82043,498,330,12393,2754,39718,5326,498,330,94427,44219,498,330,1712,57767,1205,498,330,40847,498,330,58517,1285,1833,5352,498,330,43324,498,330,265,43054,2532,8060,498,330,4620,97894,498,330,71,2227,498,330,32550,498,330,94427,44219,498,330,86153,3109,26115,1205,498,330,40847,498,330,58517,1285,498,330],\"total_duration\":6371255500,\"load_duration\":2658800,\"prompt_eval_count\":618,\"prompt_eval_duration\":150588000,\"eval_count\":450,\"eval_duration\":6189994000}', NULL, '2026-09-02 15:24:30', '2026-09-02 15:55:19'),
(3, 3, 'Citizen Feedback', 'Positive', 90.00, 'High', 80.00, 70.00, 'The citizen provided a sample feedback on the environment, expressing satisfaction with the service area and the desired outcome of a fixed service. The citizen also mentioned a concern about the portal\'s priority and suggested a solution. The feedback is well-written and polite, indicating a positive sentiment.', '[\"environment\",\"service area\",\"desired outcome\",\"fixed service\",\"portal priority\",\"suggested solution\"]', '[\"portal priority\",\"suggested solution\"]', 'Environment Improvement', 'Thank you for your feedback on the environment. We appreciate your suggestion to improve the portal\'s priority and will consider it. We will also provide a fixed service to the Valenzu area as per your desired outcome. If you have any further concerns or suggestions, please do not hesitate to contact us.', 0, 'Pending', NULL, NULL, NULL, 1, 'completed', NULL, 'llama3.2:1b', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:55:22.8241221Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 70, \\n  \\\"summary\\\": \\\"The citizen provided a sample feedback on the environment, expressing satisfaction with the service area and the desired outcome of a fixed service. The citizen also mentioned a concern about the portal\'s priority and suggested a solution. The feedback is well-written and polite, indicating a positive sentiment.\\\",\\n  \\\"keywords\\\": [\\\"environment\\\", \\\"service area\\\", \\\"desired outcome\\\", \\\"fixed service\\\", \\\"portal priority\\\", \\\"suggested solution\\\"],\\n  \\\"risk_keywords\\\": [\\\"portal priority\\\", \\\"suggested solution\\\"],\\n  \\\"recommended_category\\\": \\\"Environment Improvement\\\",\\n  \\\"suggested_response\\\": \\\"Thank you for your feedback on the environment. We appreciate your suggestion to improve the portal\'s priority and will consider it. We will also provide a fixed service to the Valenzu area as per your desired outcome. If you have any further concerns or suggestions, please do not hesitate to contact us.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,931,18,198,87721,7036,25,47317,37957,198,87721,955,25,37957,198,6888,25,11847,198,13317,25,6205,11302,198,19791,17665,555,22618,25,6205,198,2097,60365,25,6205,198,50140,10844,4183,555,22618,25,18944,198,36448,3169,25,3331,37957,198,1898,3158,25,4196,17007,84,198,5001,2757,15632,25,8521,198,65661,24604,10959,512,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,2031,11,720,220,330,1743,794,330,791,22618,3984,264,6205,11302,389,279,4676,11,37810,24617,449,279,2532,3158,323,279,12974,15632,315,264,8521,2532,13,578,22618,1101,9932,264,4747,922,279,24007,596,10844,323,12090,264,6425,13,578,11302,374,1664,67383,323,48887,11,19392,264,6928,27065,10560,220,330,30095,794,4482,24175,498,330,8095,3158,498,330,83882,15632,498,330,22795,2532,498,330,39053,10844,498,330,82,54376,6425,8257,220,330,82043,52454,794,4482,39053,10844,498,330,82,54376,6425,8257,220,330,86447,12110,794,330,13013,53751,761,220,330,82,54376,9852,794,330,13359,499,369,701,11302,389,279,4676,13,1226,15763,701,24710,311,7417,279,24007,596,10844,323,690,2980,433,13,1226,690,1101,3493,264,8521,2532,311,279,4196,17007,84,3158,439,824,701,12974,15632,13,1442,499,617,904,4726,10742,477,18726,11,4587,656,539,39666,311,3729,603,1210,720,92],\"total_duration\":3266383700,\"load_duration\":1622700,\"prompt_eval_count\":615,\"prompt_eval_duration\":109173000,\"eval_count\":229,\"eval_duration\":3136502000}', '2026-09-02 23:55:22', '2026-09-02 15:24:30', '2026-09-02 15:55:22'),
(4, 5, 'Complaint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Pending', NULL, NULL, NULL, 1, 'failed', 'Could not connect to Ollama at http://127.0.0.1:11434. Make sure Ollama is running.', NULL, '', NULL, '2026-09-02 15:24:30', '2026-09-03 00:56:17'),
(5, 6, 'Complaint', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Pending', NULL, NULL, NULL, 1, 'failed', 'Could not connect to Ollama at http://127.0.0.1:11434. Make sure Ollama is running.', NULL, '', NULL, '2026-09-02 15:24:30', '2026-09-03 00:56:19'),
(6, 7, 'Citizen Feedback', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Pending', NULL, NULL, NULL, 1, 'failed', 'Could not connect to Ollama at http://127.0.0.1:11434. Make sure Ollama is running.', NULL, '', NULL, '2026-09-02 15:24:30', '2026-09-03 00:56:21'),
(7, 8, 'Complaint', 'Positive', 90.00, 'High', 80.00, 70.00, 'The citizen submitted a complaint regarding a broken road in Manila, citing the need for immediate action to resolve the issue.', '[\"broken road\",\"Manila\",\"transportation\",\"urgent\",\"action needed\"]', '[\"repeated failure\",\"health/safety risk\",\"serious disruption\"]', 'Transportation', 'We apologize for the inconvenience and assure you that we are working on resolving the issue as soon as possible. We appreciate your patience and understanding in this matter. We will provide an update on the status of your complaint shortly.', 0, 'Pending', NULL, NULL, NULL, 1, 'completed', NULL, 'llama3.2:1b', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-03T01:23:43.4884288Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 70, \\n  \\\"summary\\\": \\\"The citizen submitted a complaint regarding a broken road in Manila, citing the need for immediate action to resolve the issue.\\\", \\n  \\\"keywords\\\": [\\\"broken road\\\", \\\"Manila\\\", \\\"transportation\\\", \\\"urgent\\\", \\\"action needed\\\"], \\n  \\\"risk_keywords\\\": [\\\"repeated failure\\\", \\\"health/safety risk\\\", \\\"serious disruption\\\"], \\n  \\\"recommended_category\\\": \\\"Transportation\\\", \\n  \\\"suggested_response\\\": \\\"We apologize for the inconvenience and assure you that we are working on resolving the issue as soon as possible. We appreciate your patience and understanding in this matter. We will provide an update on the status of your complaint shortly.\\\" \\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,931,23,198,87721,7036,25,68538,198,87721,955,25,68538,198,6888,25,11847,198,13317,25,54683,5754,198,19791,17665,555,22618,25,1205,311,1935,1957,389,11102,5754,198,2097,60365,25,1070,596,264,2763,315,11102,5754,304,1253,121513,198,50140,10844,4183,555,22618,25,86586,306,198,65661,24604,46340,12458,54917,25,86586,306,198,82905,2532,25,30978,198,40345,1748,2457,36363,25,220,2366,21,12,2545,12,2437,220,1032,25,1627,25,410,198,53380,7754,25,29235,8720,15592,54917,505,279,5150,12458,11,5536,323,21513,13,578,22618,46340,54917,374,12899,2317,11,539,279,2631,1620,15592,54917,627,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,2031,11,720,220,330,1743,794,330,791,22618,14976,264,12458,9002,264,11102,5754,304,57664,11,33264,279,1205,369,14247,1957,311,9006,279,4360,10684,720,220,330,30095,794,4482,50009,5754,498,330,1692,10746,498,330,27543,367,498,330,86153,498,330,1335,4460,8073,720,220,330,82043,52454,794,4482,265,43054,8060,498,330,12393,2754,39718,5326,498,330,94427,44219,8073,720,220,330,86447,12110,794,330,28660,367,498,720,220,330,82,54376,9852,794,330,1687,37979,369,279,61109,323,36015,499,430,584,527,3318,389,53583,279,4360,439,5246,439,3284,13,1226,15763,701,30401,323,8830,304,420,5030,13,1226,690,3493,459,2713,389,279,2704,315,701,12458,20193,1210,720,92],\"total_duration\":38346008800,\"load_duration\":8534897500,\"prompt_eval_count\":671,\"prompt_eval_duration\":12986666000,\"eval_count\":187,\"eval_duration\":16748908000}', '2026-09-03 09:23:43', '2026-09-02 15:24:30', '2026-09-03 01:23:43'),
(8, 9, 'Complaint', 'Positive', 90.00, 'High', 80.00, 90.00, 'The citizen has reported a broken street light on Maynila Road, which is causing inconvenience and safety concerns. The citizen has provided a detailed description of the issue and has selected the \'Normal\' portal priority. The citizen has also indicated that the issue is urgent and requires immediate attention.', '[\"Broken street light\",\"Maynila Road\",\"Urgent\",\"Safety concerns\",\"Inconvenience\",\"Citizen feedback\"]', '[\"Broken street light\",\"Safety concerns\",\"Inconvenience\",\"Citizen feedback\"]', 'Street Lighting and Infrastructure', '', 0, 'Pending', NULL, NULL, NULL, 1, 'completed', NULL, 'llama3.2:1b', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-03T01:24:12.9871237Z\",\"response\":\"{ \\n  \\\"sentiment\\\": \\\"Positive\\\", \\n  \\\"confidence_score\\\": 90, \\n  \\\"urgency_level\\\": \\\"High\\\", \\n  \\\"urgency_score\\\": 80, \\n  \\\"keyword_score\\\": 90, \\n  \\\"summary\\\": \\\"The citizen has reported a broken street light on Maynila Road, which is causing inconvenience and safety concerns. The citizen has provided a detailed description of the issue and has selected the \'Normal\' portal priority. The citizen has also indicated that the issue is urgent and requires immediate attention.\\\",\\n  \\\"keywords\\\": [\\\"Broken street light\\\", \\\"Maynila Road\\\", \\\"Urgent\\\", \\\"Safety concerns\\\", \\\"Inconvenience\\\", \\\"Citizen feedback\\\"],\\n  \\\"risk_keywords\\\": [\\\"Broken street light\\\", \\\"Safety concerns\\\", \\\"Inconvenience\\\", \\\"Citizen feedback\\\"],\\n  \\\"recommended_category\\\": \\\"Street Lighting and Infrastructure\\\"\\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,931,24,198,87721,7036,25,68538,198,87721,955,25,68538,198,6888,25,11847,198,13317,25,54683,8761,3177,198,19791,17665,555,22618,25,54683,8761,3177,198,2097,60365,25,54683,8761,3177,198,50140,10844,4183,555,22618,25,18944,198,65661,24604,46340,12458,54917,25,86586,306,198,82905,2532,25,3297,121513,9728,198,40345,1748,2457,36363,25,220,2366,21,12,2545,12,2437,220,1032,25,1135,25,410,198,53380,7754,25,29235,8720,15592,54917,505,279,5150,12458,11,5536,323,21513,13,578,22618,46340,54917,374,12899,2317,11,539,279,2631,1620,15592,54917,627,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,90,720,220,330,25526,3904,794,330,36590,498,720,220,330,83029,10622,794,220,1954,11,720,220,330,5673,2301,8438,794,330,12243,498,720,220,330,5673,2301,10622,794,220,1490,11,720,220,330,20454,10622,794,220,1954,11,720,220,330,1743,794,330,791,22618,706,5068,264,11102,8761,3177,389,3297,121513,9728,11,902,374,14718,61109,323,7296,10742,13,578,22618,706,3984,264,11944,4096,315,279,4360,323,706,4183,279,364,12484,6,24007,10844,13,578,22618,706,1101,16717,430,279,4360,374,34771,323,7612,14247,6666,10560,220,330,30095,794,4482,91626,8761,3177,498,330,11356,121513,9728,498,330,52,2026,306,498,330,74137,10742,498,330,644,444,40647,498,330,65661,24604,11302,8257,220,330,82043,52454,794,4482,91626,8761,3177,498,330,74137,10742,498,330,644,444,40647,498,330,65661,24604,11302,8257,220,330,86447,12110,794,330,35647,45623,323,45587,702,92],\"total_duration\":29392315000,\"load_duration\":3920000,\"prompt_eval_count\":662,\"prompt_eval_duration\":12863900000,\"eval_count\":180,\"eval_duration\":16494075000}', '2026-09-03 09:24:13', '2026-09-02 15:24:30', '2026-09-03 01:24:13'),
(19, 10, 'Complaint', 'Positive', 90.00, 'High', 80.00, 90.00, 'The citizen has submitted a complaint regarding the government\'s service, citing a serious issue with the citizen\'s experience.', '[\"government complaint\",\"service issue\",\"citizen experience\",\"government failure\",\"urgent government action needed\"]', '[\"repeated service failure\",\"health/safety risk\",\"serious disruption\"]', 'Government Service', 'We apologize for the inconvenience and assure you that we are taking immediate action to address the issue. We will provide a detailed response and follow up with an update as soon as possible. Please bear with us while we work to resolve this matter.', 0, 'Pending', NULL, NULL, NULL, 1, 'completed', NULL, 'llama3.2:1b', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-02T15:55:34.2604535Z\",\"response\":\"{\\n  \\\"sentiment\\\": \\\"Positive\\\",\\n  \\\"confidence_score\\\": 90,\\n  \\\"urgency_level\\\": \\\"High\\\",\\n  \\\"urgency_score\\\": 80,\\n  \\\"keyword_score\\\": 90,\\n  \\\"summary\\\": \\\"The citizen has submitted a complaint regarding the government\'s service, citing a serious issue with the citizen\'s experience.\\\",\\n  \\\"keywords\\\": [\\n    \\\"government complaint\\\",\\n    \\\"service issue\\\",\\n    \\\"citizen experience\\\",\\n    \\\"government failure\\\",\\n    \\\"urgent government action needed\\\"\\n  ],\\n  \\\"risk_keywords\\\": [\\n    \\\"repeated service failure\\\",\\n    \\\"health/safety risk\\\",\\n    \\\"serious disruption\\\"\\n  ],\\n  \\\"recommended_category\\\": \\\"Government Service\\\",\\n  \\\"suggested_response\\\": \\\"We apologize for the inconvenience and assure you that we are taking immediate action to address the issue. We will provide a detailed response and follow up with an update as soon as possible. Please bear with us while we work to resolve this matter.\\\",\\n  \\\"urgency_score\\\": 80,\\n  \\\"keyword_score\\\": 90\\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,4119,15,198,87721,7036,25,68538,198,87721,955,25,68538,198,6888,25,3331,3142,5475,198,13317,25,3109,12458,198,19791,17665,555,22618,25,3109,12458,198,2097,60365,25,3109,12458,198,50140,10844,4183,555,22618,25,86586,306,198,65661,24604,46340,12458,54917,25,86586,306,198,82905,2532,25,22618,198,40345,1748,2457,36363,25,220,2366,21,12,2545,12,2437,220,1032,25,2137,25,410,198,53380,7754,25,29235,8720,15592,54917,505,279,5150,12458,11,5536,323,21513,13,578,22618,46340,54917,374,12899,2317,11,539,279,2631,1620,15592,54917,627,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,517,220,330,25526,3904,794,330,36590,761,220,330,83029,10622,794,220,1954,345,220,330,5673,2301,8438,794,330,12243,761,220,330,5673,2301,10622,794,220,1490,345,220,330,20454,10622,794,220,1954,345,220,330,1743,794,330,791,22618,706,14976,264,12458,9002,279,3109,596,2532,11,33264,264,6129,4360,449,279,22618,596,3217,10560,220,330,30095,794,2330,262,330,87863,12458,761,262,330,8095,4360,761,262,330,54961,24604,3217,761,262,330,87863,8060,761,262,330,86153,3109,1957,4460,702,220,3291,220,330,82043,52454,794,2330,262,330,265,43054,2532,8060,761,262,330,12393,2754,39718,5326,761,262,330,94427,44219,702,220,3291,220,330,86447,12110,794,330,62569,5475,761,220,330,82,54376,9852,794,330,1687,37979,369,279,61109,323,36015,499,430,584,527,4737,14247,1957,311,2686,279,4360,13,1226,690,3493,264,11944,2077,323,1833,709,449,459,2713,439,5246,439,3284,13,5321,11984,449,603,1418,584,990,311,9006,420,5030,10560,220,330,5673,2301,10622,794,220,1490,345,220,330,20454,10622,794,220,1954,198,92],\"total_duration\":3390222600,\"load_duration\":2152700,\"prompt_eval_count\":660,\"prompt_eval_duration\":411654000,\"eval_count\":215,\"eval_duration\":2942214000}', '2026-09-02 23:55:34', '2026-09-02 15:55:30', '2026-09-02 15:55:34'),
(25, 11, 'Complaint', 'Positive', 90.00, 'Medium', 60.00, 80.00, 'The citizen has submitted a complaint about a broken street light in Manila.', '[\"Street Light\",\"Broken Light\",\"Manila\",\"Complaint\",\"Service Failure\"]', '[\"Safety\",\"Health Risk\",\"Disruption\",\"Urgent Action Needed\"]', 'Street Lighting', 'We appreciate the citizen\'s feedback and will investigate the matter. We will provide a response as soon as possible. Thank you for bringing this issue to our attention.', 0, 'Pending', NULL, NULL, NULL, 1, 'completed', NULL, 'llama3.2:1b', '{\"model\":\"llama3.2:1b\",\"created_at\":\"2026-09-06T06:11:15.2354022Z\",\"response\":\"{\\n  \\\"sentiment\\\": \\\"Positive\\\",\\n  \\\"confidence_score\\\": 90,\\n  \\\"urgency_level\\\": \\\"Medium\\\",\\n  \\\"urgency_score\\\": 60,\\n  \\\"keyword_score\\\": 80,\\n  \\\"summary\\\": \\\"The citizen has submitted a complaint about a broken street light in Manila.\\\",\\n  \\\"keywords\\\": [\\n    \\\"Street Light\\\",\\n    \\\"Broken Light\\\",\\n    \\\"Manila\\\",\\n    \\\"Complaint\\\",\\n    \\\"Service Failure\\\"\\n  ],\\n  \\\"risk_keywords\\\": [\\n    \\\"Safety\\\",\\n    \\\"Health Risk\\\",\\n    \\\"Disruption\\\",\\n    \\\"Urgent Action Needed\\\"\\n  ],\\n  \\\"recommended_category\\\": \\\"Street Lighting\\\",\\n  \\\"suggested_response\\\": \\\"We appreciate the citizen\'s feedback and will investigate the matter. We will provide a response as soon as possible. Thank you for bringing this issue to our attention.\\\"\\n}\",\"done\":true,\"done_reason\":\"stop\",\"context\":[128006,9125,128007,271,38766,1303,33025,2696,25,6790,220,2366,18,271,128009,128006,882,128007,271,2675,527,459,15592,18328,369,279,4409,315,57664,68505,3142,66550,323,20556,367,9744,744,382,2127,56956,98577,2913,965,29031,1507,16218,13,4427,10925,527,11951,71974,439,7837,2989,32,3301,50,382,791,1988,5764,279,21142,7036,11,5699,11,22618,2361,11,3917,11,323,1984,382,33722,16841,98577,2913,965,29031,1507,16218,933,3692,1887,25,47317,34831,611,356,9377,37,4931,198,3692,5613,25,47317,34831,198,9032,25,356,15229,12,2366,21,12,4119,16,198,87721,7036,25,68538,198,87721,955,25,68538,198,6888,25,11847,198,13317,25,6825,8828,198,19791,17665,555,22618,25,6825,8828,198,2097,60365,25,54683,8761,3177,198,50140,10844,4183,555,22618,25,12310,198,65661,24604,46340,12458,54917,25,12310,198,82905,2532,25,57664,198,40345,1748,2457,36363,25,220,2366,21,12,2545,12,2705,220,975,25,2545,25,410,198,53380,7754,25,29235,8720,15592,54917,505,279,5150,12458,11,5536,323,21513,13,578,22618,46340,54917,374,12899,2317,11,539,279,2631,1620,15592,54917,627,58,4794,98577,2913,965,29031,1507,16218,2595,10464,86589,279,1984,7438,323,54917,7534,3267,21513,382,31758,67053,44897,50,512,12,45003,25,20097,11,9989,54679,11,33445,11,13241,11,477,20250,627,12,59794,25,19664,26981,11,1715,11,24710,11,38952,1715,11,477,47735,4068,2085,6129,5536,627,12,51957,25,81261,3575,11,11763,2532,8060,11,3831,97894,11,11682,11,8137,11,2890,2754,39718,5326,11,6129,44219,11,477,34771,3109,26115,1205,627,12,1789,264,68538,11,3041,5066,4785,311,54917,323,5326,21513,627,12,3234,539,9651,49229,1475,68538,439,51957,627,12,362,20250,12458,477,43788,1833,5352,1253,387,45003,627,12,3735,635,61327,1587,539,1304,264,6129,34771,12458,59794,382,1539,88774,512,12,12310,25,14348,26981,2754,43216,26149,501,3904,26,912,892,57767,5536,627,12,25352,25,22785,4747,33921,4725,5687,6666,627,12,5234,25,6129,5536,11,11763,8060,11,5199,44219,11,2890,2754,39718,35286,5326,11,477,892,57767,1205,627,12,35761,25,14247,6023,311,2324,2754,39718,11,15748,586,79505,8137,11,13147,11,9349,11,4027,11,477,39262,1139,10632,382,4889,95497,512,12,23673,709,311,220,21,3062,8712,21513,90121,27663,627,12,23673,709,311,220,21,5326,14,5673,2301,21513,90121,27663,627,12,54917,10622,25,220,15,12,1041,627,12,16570,10622,25,220,15,12,1041,9204,1268,16917,16914,4339,13519,12458,7534,3267,6801,9557,3529,4091,14,5673,2301,382,5715,27785,832,4823,1665,512,517,220,330,25526,3904,794,330,36590,1,765,330,88007,1,765,330,39589,761,220,330,83029,10622,794,220,15,12,1041,345,220,330,5673,2301,8438,794,330,25162,1,765,330,42094,1,765,330,12243,1,765,330,43108,761,220,330,5673,2301,10622,794,220,15,12,1041,345,220,330,20454,10622,794,220,15,12,1041,345,220,330,1743,794,4145,606,64694,11914,36552,220,330,30095,794,4482,27,455,311,220,21,8712,21513,90121,27663,29,8257,220,330,82043,52454,794,4482,27,455,311,220,21,54917,7534,3267,21513,90121,27663,29,8257,220,330,86447,12110,794,4145,606,64694,1888,50660,4360,5699,36552,220,330,82,54376,9852,794,4145,8846,6721,5687,10165,2077,11,220,17,12,18,23719,19681,92,128009,128006,78191,128007,271,517,220,330,25526,3904,794,330,36590,761,220,330,83029,10622,794,220,1954,345,220,330,5673,2301,8438,794,330,42094,761,220,330,5673,2301,10622,794,220,1399,345,220,330,20454,10622,794,220,1490,345,220,330,1743,794,330,791,22618,706,14976,264,12458,922,264,11102,8761,3177,304,57664,10560,220,330,30095,794,2330,262,330,35647,8828,761,262,330,91626,8828,761,262,330,1692,10746,761,262,330,1110,32397,761,262,330,1898,33360,702,220,3291,220,330,82043,52454,794,2330,262,330,74137,761,262,330,14884,32388,761,262,330,4944,14455,761,262,330,52,2026,306,5703,57661,702,220,3291,220,330,86447,12110,794,330,35647,45623,761,220,330,82,54376,9852,794,330,1687,15763,279,22618,596,11302,323,690,19874,279,5030,13,1226,690,3493,264,2077,439,5246,439,3284,13,9930,499,369,12967,420,4360,311,1057,6666,10246,92],\"total_duration\":48973365700,\"load_duration\":14093090400,\"prompt_eval_count\":657,\"prompt_eval_cached_count\":0,\"prompt_eval_duration\":17264674000,\"eval_count\":174,\"eval_duration\":17444108000}', '2026-09-06 14:11:15', '2026-09-06 06:10:26', '2026-09-06 06:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `lph_cef_ai_analysis_history`
--

CREATE TABLE `lph_cef_ai_analysis_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `submission_id` bigint(20) NOT NULL,
  `analysis_id` bigint(20) UNSIGNED DEFAULT NULL,
  `analysis_version` int(11) NOT NULL DEFAULT 1,
  `analysis_scope` varchar(30) DEFAULT NULL,
  `sentiment` varchar(20) DEFAULT NULL,
  `confidence_score` decimal(5,2) DEFAULT NULL,
  `urgency_level` varchar(20) DEFAULT NULL,
  `urgency_score` decimal(5,2) DEFAULT NULL,
  `keyword_score` decimal(5,2) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`keywords`)),
  `risk_keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`risk_keywords`)),
  `recommended_category` varchar(150) DEFAULT NULL,
  `suggested_response` text DEFAULT NULL,
  `flagged_for_review` tinyint(1) NOT NULL DEFAULT 0,
  `review_status` varchar(30) DEFAULT NULL,
  `review_notes` text DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `analysis_status` varchar(20) DEFAULT NULL,
  `error_message` text DEFAULT NULL,
  `model_used` varchar(100) DEFAULT NULL,
  `raw_response` longtext DEFAULT NULL,
  `analyzed_at` datetime DEFAULT NULL,
  `archived_reason` varchar(50) NOT NULL DEFAULT 'Re-analysis',
  `archived_by` int(11) DEFAULT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lph_login_attempts`
--

CREATE TABLE `lph_login_attempts` (
  `id` bigint(20) NOT NULL,
  `email_hash` char(64) NOT NULL,
  `ip_hash` char(64) NOT NULL,
  `successful` tinyint(1) NOT NULL DEFAULT 0,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lph_login_attempts`
--

INSERT INTO `lph_login_attempts` (`id`, `email_hash`, `ip_hash`, `successful`, `attempted_at`) VALUES
(1, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-17 09:16:37'),
(2, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-18 14:47:20'),
(3, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 0, '2026-08-24 11:40:14'),
(4, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-24 11:40:52'),
(5, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 0, '2026-08-28 15:13:31'),
(6, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-28 15:13:43'),
(7, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-02 14:24:57'),
(8, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-02 14:40:10'),
(9, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-06 06:05:45'),
(10, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-06 11:36:42'),
(11, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-06 14:28:09'),
(12, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-07 06:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `lph_schema_migrations`
--

CREATE TABLE `lph_schema_migrations` (
  `id` int(11) NOT NULL,
  `migration_key` varchar(120) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lph_schema_migrations`
--

INSERT INTO `lph_schema_migrations` (`id`, `migration_key`, `description`, `applied_at`) VALUES
(1, '004_step1_source_database_alignment', 'Aligned Subsystem #7 source with hearing_* issue/action schema and added feedback reply/AI support tables.', '2026-08-16 14:16:31'),
(2, '005_hearing_scheduling_complete', 'Adds hearing workflow history required by the completed Hearing Scheduling module.', '2026-08-16 14:33:00'),
(3, '006_stakeholder_invitation_registration', 'Completes stakeholder, invitation, registration, verification and QR workflow support.', '2026-08-16 14:42:20'),
(4, '007_attendance_tracking', 'Completes manual/QR-ready attendance check-in, checkout and immutable event history.', '2026-08-16 14:42:33'),
(5, '008_feedback_surveys', 'Completes public feedback review/reply workflow and normalized survey management.', '2026-08-16 14:42:47'),
(6, '009_issue_workflow_finalization', 'Adds issue resolution metadata and supporting-document workflow.', '2026-08-16 15:09:25'),
(7, '010_response_action_finalization', 'Adds complete official response approval/publication workflow linked to issues/actions.', '2026-08-16 15:09:32'),
(8, '011_security_rbac_final', 'Final LPH fine-grained permissions, system access backfill and login-rate-limit storage.', '2026-08-16 15:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  `notification_type` varchar(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `target_url` varchar(500) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `system_id`, `notification_type`, `title`, `message`, `target_url`, `is_read`, `created_at`, `read_at`) VALUES
(1, 2, 1, 'ORLMS Review', 'Draft submitted for committee review', 'ORD-2026-0001 - Community Waste Segregation Ordinance 2026', 'http://localhost/orlms/modules/reviews/view.php?id=1', 0, '2026-08-28 15:25:40', NULL),
(2, 1, 1, 'ORLMS Review', 'Committee review completed', 'ORD-2026-0001 · Endorse', 'http://localhost/orlms/modules/reviews/view.php?id=1', 0, '2026-08-28 15:53:37', NULL),
(3, 1, 1, 'ORLMS Endorsement', 'Committee endorsement recorded', 'ORD-2026-0001 · Endorsed', 'http://localhost/orlms/modules/reviews/view.php?id=1', 0, '2026-08-28 15:53:46', NULL),
(4, 1, 1, 'ORLMS Endorsement', 'Committee endorsement recorded', 'ORD-2026-0001 · Endorsed', 'http://localhost/orlms/modules/reviews/view.php?id=1', 0, '2026-08-28 15:54:24', NULL),
(5, 2, 1, 'ORLMS Approval', 'Legislative approval action assigned', 'ORD-2026-0001 - Community Waste Segregation Ordinance 2026', 'http://localhost/orlms/modules/approvals/view.php?id=1', 0, '2026-08-28 16:20:02', NULL),
(6, 1, 1, 'ORLMS Approval', 'Approval workflow updated', 'ORD-2026-0001 · Approved', 'http://localhost/orlms/modules/approvals/view.php?id=1', 0, '2026-08-28 16:20:10', NULL),
(7, 4, 1, 'ORLMS Implementation', 'Implementation plan assigned', 'ORD-2026-0001 · implement now', 'http://localhost/orlms/modules/implementation/view.php?id=1', 0, '2026-08-28 16:23:50', NULL),
(8, 1, 1, 'ORLMS Endorsement', 'Committee endorsement recorded', 'ORD-2026-0001 · Endorsed', 'http://localhost/orlms/modules/reviews/view.php?id=1', 0, '2026-09-04 04:18:45', NULL),
(9, 3, 1, 'ORLMS Implementation', 'Implementation plan assigned', 'ORD-2026-0001 · hghghgh', 'http://localhost/orlms/modules/implementation/view.php?id=2', 0, '2026-09-04 04:20:21', NULL),
(10, 6, 5, 'Citizen Response', 'complaint response', 'complaint response', 'http://localhost/cepfms/public/index.php#track', 0, '2026-09-04 08:10:19', NULL),
(11, 2, 1, 'ORLMS Review', 'Draft submitted for committee review', 'ORD-2026-0002 - trafiic management', 'http://localhost/orlms/modules/reviews/view.php?id=2', 0, '2026-09-06 06:39:31', NULL),
(12, 1, 1, 'ORLMS Review', 'Committee review completed', 'ORD-2026-0002 · Endorse', 'http://localhost/orlms/modules/reviews/view.php?id=2', 0, '2026-09-06 06:40:44', NULL),
(13, 1, 1, 'ORLMS Endorsement', 'Committee endorsement recorded', 'ORD-2026-0002 · Endorsed', 'http://localhost/orlms/modules/reviews/view.php?id=2', 0, '2026-09-06 06:40:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `office_type` varchar(100) DEFAULT NULL,
  `status` varchar(30) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `code`, `name`, `office_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LEG-OFFICE', 'Office of the City Council', 'Legislative', 'Active', '2026-08-01 04:21:35', '2026-08-01 04:21:35'),
(2, 'CITY-LEGAL', 'City Legal Office', 'Executive', 'Active', '2026-08-01 04:21:35', '2026-08-01 04:21:35'),
(3, 'CITY-BUDGET', 'City Budget Office', 'Executive', 'Active', '2026-08-01 04:21:35', '2026-08-01 04:21:35'),
(4, 'CITY-PLANNING', 'City Planning and Development Office', 'Executive', 'Active', '2026-08-01 04:21:35', '2026-08-01 04:21:35'),
(5, 'PUBLIC-INFO', 'Public Information Office', 'Executive', 'Active', '2026-08-01 04:21:35', '2026-08-01 04:21:35'),
(6, 'ENVI-OFFICE', 'Environment and Natural Resources Office', 'Executive', 'Active', '2026-08-01 04:21:35', '2026-08-01 04:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_ai_classifications`
--

CREATE TABLE `orlms_ai_classifications` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `draft_version_id` bigint(20) DEFAULT NULL,
  `provider` varchar(80) NOT NULL DEFAULT 'Ollama',
  `model_name` varchar(150) DEFAULT NULL,
  `classification_label` varchar(150) DEFAULT NULL,
  `policy_area` varchar(150) DEFAULT NULL,
  `tags_json` longtext DEFAULT NULL,
  `confidence_score` decimal(6,4) DEFAULT NULL,
  `rationale` text DEFAULT NULL,
  `raw_response` longtext DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `requested_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orlms_amendments`
--

CREATE TABLE `orlms_amendments` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `source_revision_version` int(11) DEFAULT NULL,
  `source_status` varchar(80) DEFAULT NULL,
  `amendment_reference` varchar(100) NOT NULL,
  `amendment_type` varchar(80) NOT NULL DEFAULT 'Amendment',
  `related_legislative_item_id` int(11) DEFAULT NULL,
  `relationship_type` varchar(80) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `summary` text DEFAULT NULL,
  `rationale` longtext DEFAULT NULL,
  `revised_body_text` longtext DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `review_notes` longtext DEFAULT NULL,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `proposed_by` int(11) DEFAULT NULL,
  `proposed_at` datetime DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `applied_by` int(11) DEFAULT NULL,
  `applied_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_amendments`
--

INSERT INTO `orlms_amendments` (`id`, `legislative_item_id`, `source_revision_version`, `source_status`, `amendment_reference`, `amendment_type`, `related_legislative_item_id`, `relationship_type`, `title`, `summary`, `rationale`, `revised_body_text`, `status`, `review_notes`, `reviewed_by`, `reviewed_at`, `proposed_by`, `proposed_at`, `approved_by`, `approved_at`, `approval_remarks`, `effective_date`, `applied_by`, `applied_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Implementation In Progress', 'AMN-2026-0001', 'Amendment', NULL, 'Technical Correction', 'amendment', NULL, NULL, NULL, 'Draft', NULL, NULL, NULL, 1, '2026-08-29 00:25:52', NULL, NULL, NULL, '2026-09-05', NULL, NULL, '2026-08-28 16:25:52', '2026-08-28 16:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_amendment_changes`
--

CREATE TABLE `orlms_amendment_changes` (
  `id` bigint(20) NOT NULL,
  `amendment_id` bigint(20) NOT NULL,
  `section_reference` varchar(150) DEFAULT NULL,
  `change_type` varchar(50) NOT NULL DEFAULT 'Modify',
  `previous_text` longtext DEFAULT NULL,
  `new_text` longtext DEFAULT NULL,
  `rationale` text DEFAULT NULL,
  `sequence_number` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orlms_amendment_documents`
--

CREATE TABLE `orlms_amendment_documents` (
  `id` bigint(20) NOT NULL,
  `amendment_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Amendment Evidence',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orlms_amendment_history`
--

CREATE TABLE `orlms_amendment_history` (
  `id` bigint(20) NOT NULL,
  `amendment_id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(80) DEFAULT NULL,
  `new_status` varchar(80) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_amendment_history`
--

INSERT INTO `orlms_amendment_history` (`id`, `amendment_id`, `legislative_item_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 1, 'Create', NULL, 'Draft', 'Amendment AMN-2026-0001 created from official revision v1.', 1, '2026-08-28 16:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_approval_actions`
--

CREATE TABLE `orlms_approval_actions` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `action_reference` varchar(100) NOT NULL,
  `action_type` varchar(80) NOT NULL,
  `action_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `authority_user_id` int(11) DEFAULT NULL,
  `authority_office_id` int(11) DEFAULT NULL,
  `action_date` datetime DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_approval_actions`
--

INSERT INTO `orlms_approval_actions` (`id`, `legislative_item_id`, `action_reference`, `action_type`, `action_status`, `authority_user_id`, `authority_office_id`, `action_date`, `remarks`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'APR-2026-0001', 'Final Approval', 'Approved', 2, 3, '2026-08-29 00:20:10', NULL, 1, '2026-08-28 16:20:02', '2026-08-28 16:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_approval_history`
--

CREATE TABLE `orlms_approval_history` (
  `id` bigint(20) NOT NULL,
  `approval_action_id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_approval_history`
--

INSERT INTO `orlms_approval_history` (`id`, `approval_action_id`, `legislative_item_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 1, 'Create', NULL, 'Pending', 'Approval action APR-2026-0001 created.', 1, '2026-08-28 16:20:02'),
(2, 1, 1, 'Approve', 'Pending', 'Approved', NULL, 1, '2026-08-28 16:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_dissemination_recipients`
--

CREATE TABLE `orlms_dissemination_recipients` (
  `id` bigint(20) NOT NULL,
  `publication_id` bigint(20) NOT NULL,
  `recipient_type` varchar(50) NOT NULL DEFAULT 'Office',
  `office_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `recipient_name` varchar(200) DEFAULT NULL,
  `recipient_email` varchar(200) DEFAULT NULL,
  `delivery_channel` varchar(80) DEFAULT 'System Notification',
  `delivery_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `delivery_notes` text DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `acknowledged_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orlms_draft_versions`
--

CREATE TABLE `orlms_draft_versions` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `version_number` int(11) NOT NULL,
  `title_snapshot` varchar(255) NOT NULL,
  `summary_snapshot` text DEFAULT NULL,
  `body_snapshot` longtext DEFAULT NULL,
  `explanatory_note_snapshot` longtext DEFAULT NULL,
  `change_summary` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_draft_versions`
--

INSERT INTO `orlms_draft_versions` (`id`, `legislative_item_id`, `version_number`, `title_snapshot`, `summary_snapshot`, `body_snapshot`, `explanatory_note_snapshot`, `change_summary`, `created_by`, `created_at`) VALUES
(1, 1, 1, 'Community Waste Segregation Ordinance 2026', 'An ordinance establishing a community waste segregation program in the City of Manila.', 'TITLE\r\n\r\nBE IT ORDAINED BY THE SANGGUNIANG PANLUNGSOD...\r\n\r\nSECTION 1. Title.\r\nSECTION 2. Declaration of Policy / Purpose.\r\nSECTION 3. Provisions.\r\nSECTION 4. Implementing Responsibility.\r\nSECTION 5. Separability Clause.\r\nSECTION 6. Repealing Clause.\r\nSECTION 7. Effectivity.', 'this is a big matter', 'Initial draft', 1, '2026-08-28 15:24:23'),
(2, 1, 2, 'Community Waste Segregation Ordinance 2026', 'An ordinance establishing a community waste segregation program in the City of Manila.', 'TITLE\r\n\r\nBE IT ORDAINED BY THE SANGGUNIANG PANLUNGSOD...\r\n\r\nSECTION 1. Title.\r\nSECTION 2. Declaration of Policy / Purpose.\r\nSECTION 3. Provisions.\r\nSECTION 4. Implementing Responsibility.\r\nSECTION 5. Separability Clause.\r\nSECTION 6. Repealing Clause.\r\nSECTION 7. Effectivity.', 'this is a big matter', 'Submitted for committee review, round 1.', 1, '2026-08-28 15:25:40'),
(3, 2, 1, 'trafiic management', 'try', 'TITLE\r\n\r\nBE IT ORDAINED BY THE SANGGUNIANG PANLUNGSOD...\r\n\r\nSECTION 1. Title.\r\nSECTION 2. Declaration of Policy / Purpose.\r\nSECTION 3. Provisions.\r\nSECTION 4. Implementing Responsibility.\r\nSECTION 5. Separability Clause.\r\nSECTION 6. Repealing Clause.\r\nSECTION 7. Effectivity.', 't', 'Initial draft', 1, '2026-09-06 06:38:37'),
(4, 2, 2, 'trafiic management', 'try', 'TITLE\r\n\r\nBE IT ORDAINED BY THE SANGGUNIANG PANLUNGSOD...\r\n\r\nSECTION 1. Title.\r\nSECTION 2. Declaration of Policy / Purpose.\r\nSECTION 3. Provisions.\r\nSECTION 4. Implementing Responsibility.\r\nSECTION 5. Separability Clause.\r\nSECTION 6. Repealing Clause.\r\nSECTION 7. Effectivity.', 't', 'Submitted for committee review, round 1.', 1, '2026-09-06 06:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_enactments`
--

CREATE TABLE `orlms_enactments` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `enactment_reference` varchar(100) NOT NULL,
  `official_number` varchar(100) DEFAULT NULL,
  `enactment_type` varchar(80) NOT NULL DEFAULT 'Enactment',
  `enactment_status` varchar(40) NOT NULL DEFAULT 'Draft',
  `approved_date` date DEFAULT NULL,
  `signed_date` date DEFAULT NULL,
  `enactment_date` date DEFAULT NULL,
  `signing_authority` varchar(200) DEFAULT NULL,
  `effectivity_type` varchar(80) DEFAULT NULL,
  `effectivity_date` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `recorded_by` int(11) DEFAULT NULL,
  `finalized_by` int(11) DEFAULT NULL,
  `finalized_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_enactments`
--

INSERT INTO `orlms_enactments` (`id`, `legislative_item_id`, `enactment_reference`, `official_number`, `enactment_type`, `enactment_status`, `approved_date`, `signed_date`, `enactment_date`, `signing_authority`, `effectivity_type`, `effectivity_date`, `remarks`, `recorded_by`, `finalized_by`, `finalized_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ENA-2026-0001', 'ORD-2026-0001', 'Ordinance Enactment', 'Finalized', '2026-08-29', '2026-08-29', '2026-08-29', 'micko', 'Immediate', '2026-09-04', NULL, 1, 1, '2026-08-29 00:22:43', '2026-08-28 16:22:34', '2026-08-28 16:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_enactment_history`
--

CREATE TABLE `orlms_enactment_history` (
  `id` bigint(20) NOT NULL,
  `enactment_id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_enactment_history`
--

INSERT INTO `orlms_enactment_history` (`id`, `enactment_id`, `legislative_item_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 1, 'Create', NULL, 'Draft', 'Enactment record ENA-2026-0001 created.', 1, '2026-08-28 16:22:34'),
(2, 1, 1, 'Finalize', 'Draft', 'Finalized', 'Official number ORD-2026-0001 finalized.', 1, '2026-08-28 16:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_endorsements`
--

CREATE TABLE `orlms_endorsements` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `review_id` bigint(20) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `endorsement_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `recommendation` varchar(150) DEFAULT NULL,
  `vote_summary` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `endorsed_by` int(11) DEFAULT NULL,
  `endorsed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_endorsements`
--

INSERT INTO `orlms_endorsements` (`id`, `legislative_item_id`, `review_id`, `committee_id`, `endorsement_status`, `recommendation`, `vote_summary`, `remarks`, `endorsed_by`, `endorsed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 'Endorsed', 'Endorse', '4', NULL, 1, '2026-09-04 12:18:45', '2026-08-28 15:53:46', '2026-09-04 04:18:45'),
(4, 2, 2, 2, 'Endorsed', 'Endorse', NULL, NULL, 1, '2026-09-06 14:40:57', '2026-09-06 06:40:57', '2026-09-06 06:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_implementation_documents`
--

CREATE TABLE `orlms_implementation_documents` (
  `id` bigint(20) NOT NULL,
  `implementation_plan_id` bigint(20) NOT NULL,
  `implementation_update_id` bigint(20) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Implementation Evidence',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orlms_implementation_history`
--

CREATE TABLE `orlms_implementation_history` (
  `id` bigint(20) NOT NULL,
  `implementation_plan_id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_implementation_history`
--

INSERT INTO `orlms_implementation_history` (`id`, `implementation_plan_id`, `legislative_item_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 1, 'Create Plan', NULL, 'In Progress', 'Implementation plan IMP-2026-0001 created.', 1, '2026-08-28 16:23:50'),
(2, 1, 1, 'Progress Update', 'In Progress', 'In Progress', 'Progress 0.00% -> 10%. progressed', 1, '2026-08-28 16:24:34'),
(3, 2, 1, 'Create Plan', NULL, 'Completed', 'Implementation plan IMP-2026-0002 created.', 1, '2026-09-04 04:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_implementation_issues`
--

CREATE TABLE `orlms_implementation_issues` (
  `id` bigint(20) NOT NULL,
  `implementation_plan_id` bigint(20) NOT NULL,
  `issue_title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `severity` varchar(30) NOT NULL DEFAULT 'Medium',
  `status` varchar(40) NOT NULL DEFAULT 'Open',
  `responsible_office_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `resolution` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orlms_implementation_plans`
--

CREATE TABLE `orlms_implementation_plans` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `plan_reference` varchar(100) NOT NULL,
  `objective` text NOT NULL,
  `responsible_office_id` int(11) DEFAULT NULL,
  `responsible_user_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `compliance_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `completion_notes` text DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_implementation_plans`
--

INSERT INTO `orlms_implementation_plans` (`id`, `legislative_item_id`, `plan_reference`, `objective`, `responsible_office_id`, `responsible_user_id`, `start_date`, `due_date`, `status`, `compliance_percent`, `completion_notes`, `completed_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'IMP-2026-0001', 'implement now', 3, 4, '2026-09-04', '2026-09-05', 'In Progress', 10.00, NULL, NULL, 1, '2026-08-28 16:23:50', '2026-08-28 16:24:34'),
(2, 1, 'IMP-2026-0002', 'hghghgh', 2, 3, '2026-09-18', '2026-09-26', 'Completed', 100.00, 'iuiuiui', '2026-09-04 12:20:21', 1, '2026-09-04 04:20:21', '2026-09-04 04:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_implementation_updates`
--

CREATE TABLE `orlms_implementation_updates` (
  `id` bigint(20) NOT NULL,
  `implementation_plan_id` bigint(20) NOT NULL,
  `update_date` datetime NOT NULL DEFAULT current_timestamp(),
  `progress_percent` decimal(5,2) NOT NULL DEFAULT 0.00,
  `status` varchar(50) NOT NULL DEFAULT 'In Progress',
  `update_text` longtext NOT NULL,
  `issues_encountered` text DEFAULT NULL,
  `next_steps` text DEFAULT NULL,
  `evidence_summary` text DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_implementation_updates`
--

INSERT INTO `orlms_implementation_updates` (`id`, `implementation_plan_id`, `update_date`, `progress_percent`, `status`, `update_text`, `issues_encountered`, `next_steps`, `evidence_summary`, `updated_by`, `created_at`) VALUES
(1, 1, '2026-08-29 00:24:34', 10.00, 'In Progress', 'progressed', NULL, NULL, NULL, 1, '2026-08-28 16:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_item_authors`
--

CREATE TABLE `orlms_item_authors` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `author_name` varchar(200) NOT NULL,
  `author_type` varchar(50) NOT NULL DEFAULT 'Author',
  `sequence_number` int(11) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_item_authors`
--

INSERT INTO `orlms_item_authors` (`id`, `legislative_item_id`, `user_id`, `office_id`, `author_name`, `author_type`, `sequence_number`, `created_by`, `created_at`) VALUES
(1, 1, 2, 3, 'Micko Laput', 'Author', 1, 1, '2026-08-28 15:24:23'),
(2, 2, NULL, 6, 'jun', 'Co-Author', 1, 1, '2026-09-06 06:38:37');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_item_details`
--

CREATE TABLE `orlms_item_details` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `template_id` bigint(20) DEFAULT NULL,
  `short_title` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `legislative_category` varchar(150) DEFAULT NULL,
  `policy_area` varchar(150) DEFAULT NULL,
  `purpose` text DEFAULT NULL,
  `explanatory_note` longtext DEFAULT NULL,
  `body_text` longtext DEFAULT NULL,
  `legal_basis` text DEFAULT NULL,
  `fiscal_impact` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `draft_status` varchar(50) NOT NULL DEFAULT 'Draft',
  `submitted_by` int(11) DEFAULT NULL,
  `submitted_at` datetime DEFAULT NULL,
  `submission_note` text DEFAULT NULL,
  `returned_at` datetime DEFAULT NULL,
  `return_reason` text DEFAULT NULL,
  `last_edited_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_item_details`
--

INSERT INTO `orlms_item_details` (`id`, `legislative_item_id`, `template_id`, `short_title`, `subject`, `legislative_category`, `policy_area`, `purpose`, `explanatory_note`, `body_text`, `legal_basis`, `fiscal_impact`, `keywords`, `draft_status`, `submitted_by`, `submitted_at`, `submission_note`, `returned_at`, `return_reason`, `last_edited_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Waste Management', 'An ordinance establishing a community waste segregation program in the City of Manila.', 'Regulatory', 'Public Health', 'talk about waste segregation', 'this is a big matter', 'TITLE\r\n\r\nBE IT ORDAINED BY THE SANGGUNIANG PANLUNGSOD...\r\n\r\nSECTION 1. Title.\r\nSECTION 2. Declaration of Policy / Purpose.\r\nSECTION 3. Provisions.\r\nSECTION 4. Implementing Responsibility.\r\nSECTION 5. Separability Clause.\r\nSECTION 6. Repealing Clause.\r\nSECTION 7. Effectivity.', 'legal', 'sample', NULL, 'Implementation In Progress', 1, '2026-08-28 23:25:40', 'please review', NULL, NULL, 1, '2026-08-28 15:24:23', '2026-09-04 04:20:21'),
(2, 2, 1, 'traffic', 'traffic', 'r', 'r', 'traffic', 't', 'TITLE\r\n\r\nBE IT ORDAINED BY THE SANGGUNIANG PANLUNGSOD...\r\n\r\nSECTION 1. Title.\r\nSECTION 2. Declaration of Policy / Purpose.\r\nSECTION 3. Provisions.\r\nSECTION 4. Implementing Responsibility.\r\nSECTION 5. Separability Clause.\r\nSECTION 6. Repealing Clause.\r\nSECTION 7. Effectivity.', 'er', 'er', 'sample', 'Endorsed', 1, '2026-09-06 14:39:30', 'ds', NULL, NULL, 1, '2026-09-06 06:38:37', '2026-09-06 06:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_login_attempts`
--

CREATE TABLE `orlms_login_attempts` (
  `id` bigint(20) NOT NULL,
  `email_hash` char(64) NOT NULL,
  `ip_hash` char(64) NOT NULL,
  `was_successful` tinyint(1) NOT NULL DEFAULT 0,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_login_attempts`
--

INSERT INTO `orlms_login_attempts` (`id`, `email_hash`, `ip_hash`, `was_successful`, `attempted_at`) VALUES
(1, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-18 15:15:09'),
(2, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-08-28 15:22:23'),
(3, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-03 01:38:29'),
(4, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-04 04:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_publications`
--

CREATE TABLE `orlms_publications` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `publication_reference` varchar(100) NOT NULL,
  `publication_channel` varchar(100) NOT NULL DEFAULT 'Official Publication',
  `publication_date` datetime DEFAULT NULL,
  `publication_status` varchar(50) NOT NULL DEFAULT 'Draft',
  `release_classification` varchar(30) NOT NULL DEFAULT 'Public',
  `public_url` varchar(500) DEFAULT NULL,
  `publication_text` longtext DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `published_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_publications`
--

INSERT INTO `orlms_publications` (`id`, `legislative_item_id`, `publication_reference`, `publication_channel`, `publication_date`, `publication_status`, `release_classification`, `public_url`, `publication_text`, `remarks`, `published_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'PUB-2026-0001', 'Official Publication', '2026-09-04 00:23:00', 'Published', 'Public', 'http://localhost/lacms/reports/index.php', 'http://localhost/lacms/reports/index.php', 'http://localhost/lacms/reports/index.php', 1, '2026-08-28 16:23:12', '2026-08-28 16:23:18'),
(2, 1, 'PUB-2026-0002', 'Official Publication', '2026-09-04 12:19:24', 'Published', 'Public', NULL, 'dsds', 'sdsds', 1, '2026-09-04 04:19:19', '2026-09-04 04:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_publication_documents`
--

CREATE TABLE `orlms_publication_documents` (
  `id` bigint(20) NOT NULL,
  `publication_id` bigint(20) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Publication Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Public',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orlms_publication_history`
--

CREATE TABLE `orlms_publication_history` (
  `id` bigint(20) NOT NULL,
  `publication_id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_publication_history`
--

INSERT INTO `orlms_publication_history` (`id`, `publication_id`, `legislative_item_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 1, 'Create', NULL, 'Draft', 'Publication PUB-2026-0001 created.', 1, '2026-08-28 16:23:12'),
(2, 1, 1, 'Publish', 'Draft', 'Published', 'Publication status updated.', 1, '2026-08-28 16:23:18'),
(3, 2, 1, 'Create', NULL, 'Draft', 'Publication PUB-2026-0002 created.', 1, '2026-09-04 04:19:19'),
(4, 2, 1, 'Publish', 'Draft', 'Published', 'Publication status updated.', 1, '2026-09-04 04:19:24');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_reviews`
--

CREATE TABLE `orlms_reviews` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `review_round` int(11) NOT NULL DEFAULT 1,
  `review_type` varchar(80) NOT NULL DEFAULT 'Committee Review',
  `recommendation` varchar(100) DEFAULT NULL,
  `comments` longtext DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_reviews`
--

INSERT INTO `orlms_reviews` (`id`, `legislative_item_id`, `committee_id`, `reviewer_id`, `review_round`, `review_type`, `recommendation`, `comments`, `status`, `started_at`, `completed_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, 1, 'Committee Review', 'Endorse', NULL, 'Completed', '2026-08-28 23:53:32', '2026-08-28 23:53:37', 1, '2026-08-28 15:25:40', '2026-08-28 15:53:37'),
(2, 2, 2, 2, 1, 'Committee Review', 'Endorse', 'r', 'Completed', '2026-09-06 14:40:12', '2026-09-06 14:40:44', 1, '2026-09-06 06:39:30', '2026-09-06 06:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_review_checklist`
--

CREATE TABLE `orlms_review_checklist` (
  `id` bigint(20) NOT NULL,
  `review_id` bigint(20) NOT NULL,
  `check_code` varchar(80) NOT NULL,
  `check_name` varchar(200) NOT NULL,
  `check_status` varchar(30) NOT NULL DEFAULT 'Pending',
  `reviewer_note` text DEFAULT NULL,
  `sequence_number` int(11) NOT NULL DEFAULT 1,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_review_checklist`
--

INSERT INTO `orlms_review_checklist` (`id`, `review_id`, `check_code`, `check_name`, `check_status`, `reviewer_note`, `sequence_number`, `reviewed_by`, `reviewed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'REQ-FIELDS', 'Required legislative fields are complete', 'Passed', NULL, 1, 1, '2026-08-28 23:53:19', '2026-08-28 15:25:40', '2026-08-28 15:53:19'),
(2, 1, 'FORM-TEMPLATE', 'Draft follows the required legislative form/template', 'Passed', NULL, 2, 1, '2026-08-28 23:53:22', '2026-08-28 15:25:40', '2026-08-28 15:53:22'),
(3, 1, 'LEGAL-BASIS', 'Legal authority and cited basis are sufficiently stated', 'Passed', NULL, 3, 1, '2026-08-28 23:53:23', '2026-08-28 15:25:40', '2026-08-28 15:53:23'),
(4, 1, 'LANGUAGE', 'Provisions are clear, consistent and implementable', 'Passed', NULL, 4, 1, '2026-08-28 23:53:25', '2026-08-28 15:25:40', '2026-08-28 15:53:25'),
(5, 1, 'IMPACT', 'Fiscal/implementation implications are identified where applicable', 'Passed', NULL, 5, 1, '2026-08-28 23:53:28', '2026-08-28 15:25:40', '2026-08-28 15:53:28'),
(6, 2, 'REQ-FIELDS', 'Required legislative fields are complete', 'Passed', NULL, 1, 1, '2026-09-06 14:39:45', '2026-09-06 06:39:30', '2026-09-06 06:39:45'),
(7, 2, 'FORM-TEMPLATE', 'Draft follows the required legislative form/template', 'Passed', NULL, 2, 1, '2026-09-06 14:39:49', '2026-09-06 06:39:30', '2026-09-06 06:39:49'),
(8, 2, 'LEGAL-BASIS', 'Legal authority and cited basis are sufficiently stated', 'Passed', NULL, 3, 1, '2026-09-06 14:39:52', '2026-09-06 06:39:30', '2026-09-06 06:39:52'),
(9, 2, 'LANGUAGE', 'Provisions are clear, consistent and implementable', 'Passed', NULL, 4, 1, '2026-09-06 14:39:55', '2026-09-06 06:39:30', '2026-09-06 06:39:55'),
(10, 2, 'IMPACT', 'Fiscal/implementation implications are identified where applicable', 'Passed', NULL, 5, 1, '2026-09-06 14:39:59', '2026-09-06 06:39:30', '2026-09-06 06:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_review_comments`
--

CREATE TABLE `orlms_review_comments` (
  `id` bigint(20) NOT NULL,
  `review_id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `comment_type` varchar(60) NOT NULL DEFAULT 'Comment',
  `section_reference` varchar(150) DEFAULT NULL,
  `comment_text` longtext NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Open',
  `resolution_text` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orlms_revision_history`
--

CREATE TABLE `orlms_revision_history` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `amendment_id` bigint(20) DEFAULT NULL,
  `version_number` int(11) NOT NULL,
  `title_snapshot` varchar(255) NOT NULL,
  `body_snapshot` longtext DEFAULT NULL,
  `change_summary` text DEFAULT NULL,
  `is_current` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_revision_history`
--

INSERT INTO `orlms_revision_history` (`id`, `legislative_item_id`, `amendment_id`, `version_number`, `title_snapshot`, `body_snapshot`, `change_summary`, `is_current`, `created_by`, `created_at`) VALUES
(1, 1, NULL, 1, 'Community Waste Segregation Ordinance 2026', 'TITLE\r\n\r\nBE IT ORDAINED BY THE SANGGUNIANG PANLUNGSOD...\r\n\r\nSECTION 1. Title.\r\nSECTION 2. Declaration of Policy / Purpose.\r\nSECTION 3. Provisions.\r\nSECTION 4. Implementing Responsibility.\r\nSECTION 5. Separability Clause.\r\nSECTION 6. Repealing Clause.\r\nSECTION 7. Effectivity.', 'Baseline official revision snapshot.', 1, 1, '2026-08-28 16:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_schema_migrations`
--

CREATE TABLE `orlms_schema_migrations` (
  `id` int(11) NOT NULL,
  `migration_key` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_schema_migrations`
--

INSERT INTO `orlms_schema_migrations` (`id`, `migration_key`, `description`, `applied_at`) VALUES
(1, '001_orlms_foundation', 'Creates the ORLMS operational foundation for drafting, review, approval, publication, implementation, amendment/revision tracking and future Ollama classification.', '2026-08-17 09:51:17'),
(2, '002_drafting_review_complete', 'Completes ordinance/resolution drafting, submission, committee review checklists, review comments and one-endorsement-per-review integrity.', '2026-08-17 10:08:39'),
(3, '003_approval_publication_implementation', 'Completes approval/enactment history, official-number integrity, publication dissemination evidence, and implementation monitoring history/issues/evidence.', '2026-08-17 10:21:38'),
(4, '004_amendment_revision_admin', 'Completes amendment/revision source tracking, relationship linking, amendment audit/evidence, baseline official revision history, dashboard/report/admin support.', '2026-08-17 10:50:42'),
(5, '005_final_rbac_security', 'Adds ORLMS fine-grained permissions, role mappings, explicit subsystem access backfill and hashed login-attempt rate limiting.', '2026-08-17 11:17:39');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_templates`
--

CREATE TABLE `orlms_templates` (
  `id` bigint(20) NOT NULL,
  `item_type_id` int(11) NOT NULL,
  `template_code` varchar(100) NOT NULL,
  `template_name` varchar(200) NOT NULL,
  `description` text DEFAULT NULL,
  `template_body` longtext DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Active',
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_templates`
--

INSERT INTO `orlms_templates` (`id`, `item_type_id`, `template_code`, `template_name`, `description`, `template_body`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'ORD-STANDARD', 'Standard Ordinance Draft', 'Baseline ordinance structure for the ORLMS drafting workspace.', 'TITLE\n\nBE IT ORDAINED BY THE SANGGUNIANG PANLUNGSOD...\n\nSECTION 1. Title.\nSECTION 2. Declaration of Policy / Purpose.\nSECTION 3. Provisions.\nSECTION 4. Implementing Responsibility.\nSECTION 5. Separability Clause.\nSECTION 6. Repealing Clause.\nSECTION 7. Effectivity.', 'Active', NULL, '2026-08-17 09:51:16', '2026-08-17 09:51:16'),
(2, 2, 'RES-STANDARD', 'Standard Resolution Draft', 'Baseline resolution structure for the ORLMS drafting and submission workspace.', 'TITLE\n\nWHEREAS, ...;\n\nWHEREAS, ...;\n\nNOW, THEREFORE, BE IT RESOLVED...\n\nRESOLVED FURTHER, ...', 'Active', NULL, '2026-08-17 09:51:16', '2026-08-17 09:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `orlms_workflow_history`
--

CREATE TABLE `orlms_workflow_history` (
  `id` bigint(20) NOT NULL,
  `legislative_item_id` int(11) NOT NULL,
  `stage_code` varchar(80) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(100) DEFAULT NULL,
  `new_status` varchar(100) DEFAULT NULL,
  `from_committee_id` int(11) DEFAULT NULL,
  `to_committee_id` int(11) DEFAULT NULL,
  `from_office_id` int(11) DEFAULT NULL,
  `to_office_id` int(11) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `acted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orlms_workflow_history`
--

INSERT INTO `orlms_workflow_history` (`id`, `legislative_item_id`, `stage_code`, `action`, `previous_status`, `new_status`, `from_committee_id`, `to_committee_id`, `from_office_id`, `to_office_id`, `assigned_user_id`, `remarks`, `acted_by`, `created_at`) VALUES
(1, 1, 'DRAFTING', 'Create Draft', NULL, 'Draft', NULL, NULL, NULL, NULL, NULL, 'Initial draft Draft version #1; authors=1.', 1, '2026-08-28 15:24:23'),
(2, 1, 'SUBMISSION', 'Submit for Review', 'Draft', 'Submitted for Review', NULL, 2, NULL, NULL, 2, 'please review Snapshot version #2.', 1, '2026-08-28 15:25:40'),
(3, 1, 'REVIEW', 'Start Review', 'Submitted for Review', 'Under Review', NULL, 2, NULL, NULL, 2, 'Committee review is in progress.', 1, '2026-08-28 15:53:32'),
(4, 1, 'REVIEW', 'Complete Review', 'Under Review', 'Committee Reviewed', NULL, 2, NULL, NULL, 2, 'Recommendation: Endorse. ', 1, '2026-08-28 15:53:37'),
(5, 1, 'ENDORSEMENT', 'Committee Endorsement', 'Committee Reviewed', 'Endorsed', NULL, 2, NULL, NULL, NULL, 'Endorse. Vote: 4. ', 1, '2026-08-28 15:53:46'),
(6, 1, 'ENDORSEMENT', 'Committee Endorsement', 'Endorsed', 'Endorsed', NULL, 2, NULL, NULL, NULL, 'Endorse. Vote: 4. ', 1, '2026-08-28 15:54:24'),
(7, 1, 'APPROVAL', 'Start Approval', 'Endorsed', 'Pending Approval', NULL, NULL, NULL, 3, 2, 'Approval action APR-2026-0001 created.', 1, '2026-08-28 16:20:02'),
(8, 1, 'APPROVAL', 'Approve', 'Pending Approval', 'Approved', NULL, NULL, NULL, 3, 2, 'Approval action Approved.', 1, '2026-08-28 16:20:10'),
(9, 1, 'ENACTMENT', 'Finalize Enactment', 'Approved', 'Enacted', NULL, NULL, NULL, NULL, NULL, 'Official number ORD-2026-0001.', 1, '2026-08-28 16:22:43'),
(10, 1, 'PUBLICATION', 'Create Publication', 'Enacted', 'Enacted', NULL, NULL, NULL, NULL, NULL, 'Publication PUB-2026-0001 created.', 1, '2026-08-28 16:23:12'),
(11, 1, 'PUBLICATION', 'Publish', 'Enacted', 'Published', NULL, NULL, NULL, NULL, NULL, 'PUB-2026-0001 released through Official Publication.', 1, '2026-08-28 16:23:18'),
(12, 1, 'IMPLEMENTATION', 'Create Plan', 'Published', 'Implementation In Progress', NULL, NULL, NULL, 3, 4, 'Implementation plan IMP-2026-0001: implement now.', 1, '2026-08-28 16:23:50'),
(13, 1, 'IMPLEMENTATION', 'Progress Update', 'Implementation In Progress', 'Implementation In Progress', NULL, NULL, NULL, NULL, NULL, 'IMP-2026-0001 · 10% · In Progress.', 1, '2026-08-28 16:24:34'),
(14, 1, 'AMENDMENT', 'Create Amendment', 'Implementation In Progress', 'Implementation In Progress', NULL, NULL, NULL, NULL, NULL, 'Amendment AMN-2026-0001 created from revision v1.', 1, '2026-08-28 16:25:52'),
(15, 1, 'ENDORSEMENT', 'Committee Endorsement', 'Implementation In Progress', 'Endorsed', NULL, 2, NULL, NULL, NULL, 'Endorse. Vote: 4. ', 1, '2026-09-04 04:18:45'),
(16, 1, 'PUBLICATION', 'Create Publication', 'Endorsed', 'Endorsed', NULL, NULL, NULL, NULL, NULL, 'Publication PUB-2026-0002 created.', 1, '2026-09-04 04:19:19'),
(17, 1, 'PUBLICATION', 'Publish', 'Endorsed', 'Published', NULL, NULL, NULL, NULL, NULL, 'PUB-2026-0002 released through Official Publication.', 1, '2026-09-04 04:19:24'),
(18, 1, 'IMPLEMENTATION', 'Create Plan', 'Published', 'Implementation In Progress', NULL, NULL, NULL, 2, 3, 'Implementation plan IMP-2026-0002: hghghgh.', 1, '2026-09-04 04:20:21'),
(19, 2, 'DRAFTING', 'Create Draft', NULL, 'Draft', NULL, NULL, NULL, NULL, NULL, 'Initial draft Draft version #3; authors=1.', 1, '2026-09-06 06:38:37'),
(20, 2, 'SUBMISSION', 'Submit for Review', 'Draft', 'Submitted for Review', NULL, 2, NULL, NULL, 2, 'ds Snapshot version #4.', 1, '2026-09-06 06:39:31'),
(21, 2, 'REVIEW', 'Start Review', 'Submitted for Review', 'Under Review', NULL, 2, NULL, NULL, 2, 'Committee review is in progress.', 1, '2026-09-06 06:40:12'),
(22, 2, 'REVIEW', 'Complete Review', 'Under Review', 'Committee Reviewed', NULL, 2, NULL, NULL, 2, 'Recommendation: Endorse. r', 1, '2026-09-06 06:40:44'),
(23, 2, 'ENDORSEMENT', 'Committee Endorsement', 'Committee Reviewed', 'Endorsed', NULL, 2, NULL, NULL, NULL, 'Endorse. ', 1, '2026-09-06 06:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `system_id` int(11) DEFAULT NULL,
  `code` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `system_id`, `code`, `name`, `description`, `created_at`) VALUES
(1, 1, 'ordinance.access', 'Ordinance and Resolution Life Cycle Management System Access', 'Allows access to the Ordinance and Resolution Life Cycle Management System.', '2026-08-01 04:21:34'),
(2, 2, 'agenda.access', 'Legislative Agenda and Calendar Management System Access', 'Allows access to the Legislative Agenda and Calendar Management System.', '2026-08-01 04:21:34'),
(3, 3, 'voting.access', 'Voting, Quorum, and Decision Support System Access', 'Allows access to the Voting, Quorum, and Decision Support System.', '2026-08-01 04:21:34'),
(4, 4, 'hearing.access', 'Public Hearing and Consultation Management System Access', 'Allows access to the Public Hearing and Consultation Management System.', '2026-08-01 04:21:34'),
(5, 5, 'citizen.access', 'Citizen Engagement and Public Feedback Management System Access', 'Allows access to the Citizen Engagement and Public Feedback Management System.', '2026-08-01 04:21:34'),
(6, 4, 'lph.dashboard.view', 'View LPH Dashboard', 'Allows access to the Public Hearing subsystem dashboard.', '2026-08-16 15:12:03'),
(7, 4, 'lph.records.manage', 'Manage LPH Core Records', 'Allows create/update/delete operations for staff-managed Public Hearing records.', '2026-08-16 15:12:03'),
(8, 4, 'lph.hearings.view', 'View Hearings', 'Allows viewing hearing schedules and details.', '2026-08-16 15:12:03'),
(9, 4, 'lph.hearings.manage', 'Manage Hearings', 'Allows creation, update, cancellation and document management for hearings.', '2026-08-16 15:12:03'),
(10, 4, 'lph.stakeholders.view', 'View Stakeholders', 'Allows viewing stakeholder and registration information.', '2026-08-16 15:12:03'),
(11, 4, 'lph.stakeholders.manage', 'Manage Stakeholders', 'Allows stakeholder verification, invitations and registration management.', '2026-08-16 15:12:03'),
(12, 4, 'lph.attendance.view', 'View Attendance', 'Allows viewing hearing attendance.', '2026-08-16 15:12:03'),
(13, 4, 'lph.attendance.manage', 'Manage Attendance', 'Allows check-in, checkout and attendance verification.', '2026-08-16 15:12:03'),
(14, 4, 'lph.feedback.submit', 'Submit Feedback', 'Allows submitting public feedback and survey responses.', '2026-08-16 15:12:03'),
(15, 4, 'lph.feedback.review', 'Review Feedback', 'Allows moderation, validation and official reply processing for feedback.', '2026-08-16 15:12:03'),
(16, 4, 'lph.surveys.manage', 'Manage Surveys', 'Allows creation and management of consultation surveys.', '2026-08-16 15:12:03'),
(17, 4, 'lph.issues.view', 'View Issues', 'Allows viewing logged consultation issues.', '2026-08-16 15:12:03'),
(18, 4, 'lph.issues.manage', 'Manage Issues', 'Allows issue assignment, workflow transition and resolution.', '2026-08-16 15:12:03'),
(19, 4, 'lph.actions.view', 'View Actions', 'Allows viewing response and action tracking.', '2026-08-16 15:12:03'),
(20, 4, 'lph.actions.manage', 'Manage Actions', 'Allows creation, assignment and progress management for actions.', '2026-08-16 15:12:03'),
(21, 4, 'lph.responses.view', 'View Official Responses', 'Allows viewing official issue responses.', '2026-08-16 15:12:03'),
(22, 4, 'lph.responses.manage', 'Manage Official Responses', 'Allows drafting and review of official responses.', '2026-08-16 15:12:03'),
(23, 4, 'lph.responses.publish', 'Publish Official Responses', 'Allows approval and public publication of official responses.', '2026-08-16 15:12:03'),
(24, 4, 'lph.reports.view', 'View Reports', 'Allows access to reports and analytics.', '2026-08-16 15:12:03'),
(25, 4, 'lph.activity_logs.view', 'View Activity Logs', 'Allows access to the Public Hearing subsystem audit trail.', '2026-08-16 15:12:03'),
(26, 4, 'lph.users.manage', 'Manage Users', 'Allows administration of shared users and Public Hearing system access.', '2026-08-16 15:12:03'),
(27, 4, 'lph.system_health.view', 'View System Health', 'Allows access to final subsystem readiness and integrity checks.', '2026-08-16 15:12:03'),
(37, 3, 'vqd.dashboard.view', 'View VQDSS Dashboard', 'Allows access to the VQDSS operational dashboard.', '2026-08-17 05:45:42'),
(38, 3, 'vqd.records.manage', 'Manage VQDSS Core Records', 'Allows staff-level create and update operations across VQDSS.', '2026-08-17 05:45:42'),
(39, 3, 'vqd.quorum.view', 'View Quorum Verification', 'Allows viewing voting sessions, rosters and quorum records.', '2026-08-17 05:45:42'),
(40, 3, 'vqd.quorum.manage', 'Manage Quorum Sessions', 'Allows creating and editing voting sessions and quorum configuration.', '2026-08-17 05:45:42'),
(41, 3, 'vqd.quorum.attendance', 'Record Quorum Attendance', 'Allows attendance and voter-eligibility updates for quorum verification.', '2026-08-17 05:45:42'),
(42, 3, 'vqd.quorum.certify', 'Certify Quorum', 'Allows verification, certification and controlled revocation of quorum results.', '2026-08-17 05:45:42'),
(43, 3, 'vqd.voting.view', 'View Voting Management', 'Allows viewing voting events and authorized voting rosters.', '2026-08-17 05:45:42'),
(44, 3, 'vqd.voting.manage', 'Manage Voting Events', 'Allows creation and operational control of voting events.', '2026-08-17 05:45:42'),
(45, 3, 'vqd.voting.cast', 'Cast or Record Vote', 'Allows an authorized user to submit a ballot or staff to record a manual ballot.', '2026-08-17 05:45:42'),
(46, 3, 'vqd.tally.view', 'View Vote Tallies', 'Allows viewing computed and certified vote tallies.', '2026-08-17 05:45:42'),
(47, 3, 'vqd.tally.manage', 'Manage Vote Tallies', 'Allows computation, recounts, evidence upload and tally review.', '2026-08-17 05:45:42'),
(48, 3, 'vqd.tally.certify', 'Certify Vote Tally', 'Allows final certification of vote tally results.', '2026-08-17 05:45:42'),
(49, 3, 'vqd.decisions.view', 'View Decision Records', 'Allows viewing official VQDSS decisions.', '2026-08-17 05:45:42'),
(50, 3, 'vqd.decisions.manage', 'Manage Decision Records', 'Allows drafting decisions, implementation actions and decision documents.', '2026-08-17 05:45:42'),
(51, 3, 'vqd.decisions.certify', 'Certify Decision', 'Allows formal recording and certification of official decisions.', '2026-08-17 05:45:42'),
(52, 3, 'vqd.decisions.publish', 'Publish Decision', 'Allows publication of authorized Public decision records.', '2026-08-17 05:45:42'),
(53, 3, 'vqd.validation.view', 'View Result Validation', 'Allows viewing validation checks, findings and reports.', '2026-08-17 05:45:42'),
(54, 3, 'vqd.validation.manage', 'Manage Result Validation', 'Allows creating validation records, findings, evidence and report versions.', '2026-08-17 05:45:42'),
(55, 3, 'vqd.validation.certify', 'Certify Result Validation', 'Allows validation and final certification of VQDSS results.', '2026-08-17 05:45:42'),
(56, 3, 'vqd.reports.view', 'View VQDSS Reports', 'Allows access to module reports, analytics and workflow traceability.', '2026-08-17 05:45:42'),
(57, 3, 'vqd.activity_logs.view', 'View VQDSS Activity Logs', 'Allows access to the VQDSS audit trail.', '2026-08-17 05:45:42'),
(58, 3, 'vqd.users.manage', 'Manage VQDSS Users', 'Allows administration of shared user accounts and VQDSS access.', '2026-08-17 05:45:42'),
(59, 3, 'vqd.system_health.view', 'View VQDSS System Health', 'Allows access to final readiness, migration and integrity checks.', '2026-08-17 05:45:42'),
(68, 1, 'orlms.dashboard.view', 'View ORLMS Dashboard', 'View the ORLMS operational dashboard and lifecycle metrics.', '2026-08-17 11:17:39'),
(69, 1, 'orlms.drafting.view', 'View ORLMS Drafting', 'View ordinance and resolution drafting records.', '2026-08-17 11:17:39'),
(70, 1, 'orlms.drafting.manage', 'Manage ORLMS Drafting', 'Create, edit, submit and manage ordinance/resolution drafts and documents.', '2026-08-17 11:17:39'),
(71, 1, 'orlms.reviews.view', 'View ORLMS Reviews', 'View committee review records and review evidence.', '2026-08-17 11:17:39'),
(72, 1, 'orlms.reviews.manage', 'Manage ORLMS Reviews', 'Start reviews, update checklists/comments and complete committee reviews.', '2026-08-17 11:17:39'),
(73, 1, 'orlms.endorsements.manage', 'Manage ORLMS Endorsements', 'Record and update formal committee endorsements.', '2026-08-17 11:17:39'),
(74, 1, 'orlms.approvals.view', 'View ORLMS Approvals', 'View approval and enactment records.', '2026-08-17 11:17:39'),
(75, 1, 'orlms.approvals.manage', 'Manage ORLMS Approvals', 'Create and transition formal approval actions.', '2026-08-17 11:17:39'),
(76, 1, 'orlms.enactments.manage', 'Manage ORLMS Enactments', 'Create and finalize enactment/adoption records and official numbering.', '2026-08-17 11:17:39'),
(77, 1, 'orlms.publications.view', 'View ORLMS Publications', 'View official publication and dissemination records.', '2026-08-17 11:17:39'),
(78, 1, 'orlms.publications.manage', 'Manage ORLMS Publications', 'Create, publish, withdraw and disseminate official publications.', '2026-08-17 11:17:39'),
(79, 1, 'orlms.implementation.view', 'View ORLMS Implementation', 'View implementation plans, progress, risks and evidence.', '2026-08-17 11:17:39'),
(80, 1, 'orlms.implementation.manage', 'Manage ORLMS Implementation', 'Create/update implementation plans, progress, issues and evidence.', '2026-08-17 11:17:39'),
(81, 1, 'orlms.amendments.view', 'View ORLMS Amendments', 'View amendments and official revision history.', '2026-08-17 11:17:39'),
(82, 1, 'orlms.amendments.manage', 'Manage ORLMS Amendments', 'Create, review, approve and apply amendments/revisions.', '2026-08-17 11:17:39'),
(83, 1, 'orlms.workflow.view', 'View ORLMS Workflow', 'View cross-module lifecycle workflow and traceability.', '2026-08-17 11:17:39'),
(84, 1, 'orlms.reports.view', 'View ORLMS Reports', 'View, print and export ORLMS reports and analytics.', '2026-08-17 11:17:39'),
(85, 1, 'orlms.ai.view', 'View ORLMS AI Classification', 'View the planned/current ORLMS AI classification page.', '2026-08-17 11:17:39'),
(86, 1, 'orlms.activity_logs.view', 'View ORLMS Activity Logs', 'View and export ORLMS audit/activity logs.', '2026-08-17 11:17:39'),
(87, 1, 'orlms.users.manage', 'Manage ORLMS Users', 'Manage shared accounts and ORLMS subsystem access.', '2026-08-17 11:17:39'),
(88, 1, 'orlms.system_health.view', 'View ORLMS System Health', 'View ORLMS deployment, schema, security and integrity health checks.', '2026-08-17 11:17:39'),
(89, 2, 'lacms.dashboard.view', 'View LACMS Dashboard', 'View the LACMS operational dashboard and coordination metrics.', '2026-08-17 12:42:30'),
(90, 2, 'lacms.agendas.view', 'View Legislative Agendas', 'View legislative agenda records and agenda items.', '2026-08-17 12:42:30'),
(91, 2, 'lacms.agendas.manage', 'Manage Legislative Agendas', 'Create, edit, organize, finalize and manage agenda records and documents.', '2026-08-17 12:42:30'),
(92, 2, 'lacms.calendar.view', 'View Legislative Calendar', 'View calendar activities, participants and schedule-conflict information.', '2026-08-17 12:42:30'),
(93, 2, 'lacms.calendar.manage', 'Manage Legislative Calendar', 'Create, edit, confirm, reschedule and manage legislative calendar activities.', '2026-08-17 12:42:30'),
(94, 2, 'lacms.meetings.view', 'View Meeting Coordination', 'View meeting coordination records, participants and supporting documents.', '2026-08-17 12:42:30'),
(95, 2, 'lacms.meetings.manage', 'Manage Meeting Coordination', 'Create, edit, confirm, notify and manage legislative meetings.', '2026-08-17 12:42:30'),
(96, 2, 'lacms.deadlines.view', 'View Deadline Tracking', 'View deadline assignments, reminders, escalation and completion state.', '2026-08-17 12:42:30'),
(97, 2, 'lacms.deadlines.manage', 'Manage Deadline Tracking', 'Create, edit, assign, escalate, complete and manage legislative deadlines.', '2026-08-17 12:42:30'),
(98, 2, 'lacms.notifications.view', 'View LACMS Notifications', 'View reminder and meeting notification queues and delivery state.', '2026-08-17 12:42:30'),
(99, 2, 'lacms.notifications.manage', 'Manage LACMS Notifications', 'Generate, queue, process and cancel LACMS reminders and notifications.', '2026-08-17 12:42:30'),
(100, 2, 'lacms.sync.view', 'View Executive-Legislative Synchronization', 'View executive-legislative coordination records, positions and actions.', '2026-08-17 12:42:30'),
(101, 2, 'lacms.sync.manage', 'Manage Executive-Legislative Synchronization', 'Create and transition synchronization records, actions and evidence.', '2026-08-17 12:42:30'),
(102, 2, 'lacms.reports.view', 'View LACMS Reports', 'View, print and export LACMS reports and workflow traceability.', '2026-08-17 12:42:30'),
(103, 2, 'lacms.activity_logs.view', 'View LACMS Activity Logs', 'View, filter, print and export the LACMS audit trail.', '2026-08-17 12:42:30'),
(104, 2, 'lacms.users.manage', 'Manage LACMS Users', 'Manage shared accounts and explicit LACMS subsystem access.', '2026-08-17 12:42:30'),
(105, 2, 'lacms.system_health.view', 'View LACMS System Health', 'View final LACMS deployment, security and integrity readiness.', '2026-08-17 12:42:30'),
(106, 5, 'cepfms.dashboard.view', 'View CEPFMS Dashboard', 'View the CEPFMS operational dashboard and civic-engagement queues.', '2026-08-17 13:59:45'),
(107, 5, 'cepfms.feedback.view', 'View Public Feedback', 'View public-feedback records, supporting evidence and reports.', '2026-08-17 13:59:45'),
(108, 5, 'cepfms.feedback.manage', 'Manage Public Feedback', 'Classify public feedback, update intake status and upload staff documents.', '2026-08-17 13:59:45'),
(109, 5, 'cepfms.proposals.view', 'View Proposals and Suggestions', 'View citizen proposals, feasibility state, documents and legislative referrals.', '2026-08-17 13:59:45'),
(110, 5, 'cepfms.proposals.manage', 'Manage Proposals and Suggestions', 'Assess proposals, manage disposition, upload study documents and create legislative referrals.', '2026-08-17 13:59:45'),
(111, 5, 'cepfms.complaints.view', 'View Complaints and Issues', 'View complaints, assignments, SLA targets, case updates, escalations and reports.', '2026-08-17 13:59:45'),
(112, 5, 'cepfms.complaints.manage', 'Manage Complaints and Issues', 'Assign, update, escalate, resolve and close validated complaints.', '2026-08-17 13:59:45'),
(113, 5, 'cepfms.moderation.view', 'View Moderation and Validation', 'View moderation queues, checklists, duplicate suggestions and review history.', '2026-08-17 13:59:45'),
(114, 5, 'cepfms.moderation.manage', 'Manage Moderation and Validation', 'Start reviews, update checklists, scan duplicates and save moderation decisions.', '2026-08-17 13:59:45'),
(115, 5, 'cepfms.responses.view', 'View Response Management', 'View official response drafts, workflow, attachments and citizen follow-ups.', '2026-08-17 13:59:45'),
(116, 5, 'cepfms.responses.manage', 'Manage Response Drafting', 'Create, edit, review, return, publish eligible response records and manage follow-ups.', '2026-08-17 13:59:45'),
(117, 5, 'cepfms.responses.approve', 'Approve Official Citizen Responses', 'Approve official citizen responses before public release.', '2026-08-17 13:59:45'),
(118, 5, 'cepfms.notifications.view', 'View Citizen Notifications', 'View citizen notification queues, recipient state and delivery audit.', '2026-08-17 13:59:45'),
(119, 5, 'cepfms.notifications.manage', 'Manage Citizen Notifications', 'Create, process, schedule and cancel citizen notifications.', '2026-08-17 13:59:45'),
(120, 5, 'cepfms.analytics.view', 'View Citizen Engagement Analytics', 'View civic trends, complaint SLA performance, response performance and recurring concerns.', '2026-08-17 13:59:45'),
(121, 5, 'cepfms.analytics.manage', 'Manage Citizen Engagement Analytics', 'Create analytics snapshots and resolve recurring-concern alerts.', '2026-08-17 13:59:45'),
(122, 5, 'cepfms.workflow.view', 'View Citizen Engagement Workflow', 'View end-to-end submission, moderation, assignment, response and referral traceability.', '2026-08-17 13:59:45'),
(123, 5, 'cepfms.reports.view', 'View CEPFMS Reports', 'View, print and export CEPFMS operational and analytics reports.', '2026-08-17 13:59:45'),
(124, 5, 'cepfms.configuration.manage', 'Manage CEPFMS Configuration', 'Manage citizen categories, default routing and complaint service-level targets.', '2026-08-17 13:59:45'),
(125, 5, 'cepfms.activity_logs.view', 'View CEPFMS Activity Logs', 'View, filter, print and export the CEPFMS audit trail.', '2026-08-17 13:59:45'),
(126, 5, 'cepfms.users.manage', 'Manage CEPFMS Users', 'Manage shared user accounts and explicit CEPFMS subsystem access.', '2026-08-17 13:59:45'),
(127, 5, 'cepfms.system_health.view', 'View CEPFMS System Health', 'View CEPFMS deployment, RBAC, security and integrity readiness.', '2026-08-17 13:59:45'),
(128, 12, 'public_portal.access', 'Access Legislative Citizen Portal', 'Allows an eligible citizen or registered stakeholder to sign in to the Legislative Citizen Portal.', '2026-08-25 03:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `qr_codes`
--

CREATE TABLE `qr_codes` (
  `id` int(11) NOT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `registration_id` int(11) DEFAULT NULL,
  `hearing_id` int(11) DEFAULT NULL,
  `code_value` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) DEFAULT 'Active',
  `expires_at` datetime DEFAULT NULL,
  `used_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qr_codes`
--

INSERT INTO `qr_codes` (`id`, `stakeholder_id`, `registration_id`, `hearing_id`, `code_value`, `created_at`, `status`, `expires_at`, `used_at`) VALUES
(1, 3, 1, 1, 'QR-2026-E13F81CF16', '2026-08-18 15:09:58', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `hearing_id` int(11) DEFAULT NULL,
  `registered_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `registration_code` varchar(100) DEFAULT NULL,
  `registration_status` varchar(50) DEFAULT 'Pending',
  `attendance_type` varchar(50) DEFAULT 'On-site',
  `approved_by` int(11) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `rejection_reason` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `stakeholder_id`, `hearing_id`, `registered_at`, `registration_code`, `registration_status`, `attendance_type`, `approved_by`, `approved_at`, `rejection_reason`, `updated_at`) VALUES
(1, 3, 1, '2026-08-18 15:09:58', 'REG-2026-8DE106D5DB', 'Approved', 'Online', 1, '2026-08-18 23:09:58', NULL, '2026-08-18 15:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `registration_history`
--

CREATE TABLE `registration_history` (
  `id` bigint(20) NOT NULL,
  `registration_id` int(11) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_history`
--

INSERT INTO `registration_history` (`id`, `registration_id`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, NULL, 'Approved', 'Registration created for Carlo Reyes.', 1, '2026-08-18 15:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`) VALUES
(1, 'Administrator', '2026-08-01 04:21:34'),
(2, 'Legislative Staff', '2026-08-01 04:21:34'),
(3, 'Committee Member', '2026-08-01 04:21:34'),
(4, 'Registered Stakeholder', '2026-08-01 04:21:34'),
(5, 'Public User', '2026-08-01 04:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`, `created_at`) VALUES
(1, 1, '2026-08-01 04:21:34'),
(1, 2, '2026-08-01 04:21:34'),
(1, 3, '2026-08-01 04:21:34'),
(1, 4, '2026-08-01 04:21:34'),
(1, 5, '2026-08-01 04:21:34'),
(1, 6, '2026-08-16 15:12:03'),
(1, 7, '2026-08-16 15:12:03'),
(1, 8, '2026-08-16 15:12:03'),
(1, 9, '2026-08-16 15:12:03'),
(1, 10, '2026-08-16 15:12:03'),
(1, 11, '2026-08-16 15:12:03'),
(1, 12, '2026-08-16 15:12:03'),
(1, 13, '2026-08-16 15:12:03'),
(1, 14, '2026-08-16 15:12:03'),
(1, 15, '2026-08-16 15:12:03'),
(1, 16, '2026-08-16 15:12:03'),
(1, 17, '2026-08-16 15:12:03'),
(1, 18, '2026-08-16 15:12:03'),
(1, 19, '2026-08-16 15:12:03'),
(1, 20, '2026-08-16 15:12:03'),
(1, 21, '2026-08-16 15:12:03'),
(1, 22, '2026-08-16 15:12:03'),
(1, 23, '2026-08-16 15:12:03'),
(1, 24, '2026-08-16 15:12:03'),
(1, 25, '2026-08-16 15:12:03'),
(1, 26, '2026-08-16 15:12:03'),
(1, 27, '2026-08-16 15:12:03'),
(1, 37, '2026-08-17 05:45:43'),
(1, 38, '2026-08-17 05:45:43'),
(1, 39, '2026-08-17 05:45:43'),
(1, 40, '2026-08-17 05:45:43'),
(1, 41, '2026-08-17 05:45:43'),
(1, 42, '2026-08-17 05:45:43'),
(1, 43, '2026-08-17 05:45:43'),
(1, 44, '2026-08-17 05:45:43'),
(1, 45, '2026-08-17 05:45:43'),
(1, 46, '2026-08-17 05:45:43'),
(1, 47, '2026-08-17 05:45:43'),
(1, 48, '2026-08-17 05:45:43'),
(1, 49, '2026-08-17 05:45:43'),
(1, 50, '2026-08-17 05:45:43'),
(1, 51, '2026-08-17 05:45:43'),
(1, 52, '2026-08-17 05:45:43'),
(1, 53, '2026-08-17 05:45:43'),
(1, 54, '2026-08-17 05:45:43'),
(1, 55, '2026-08-17 05:45:43'),
(1, 56, '2026-08-17 05:45:43'),
(1, 57, '2026-08-17 05:45:43'),
(1, 58, '2026-08-17 05:45:43'),
(1, 59, '2026-08-17 05:45:43'),
(1, 68, '2026-08-17 11:17:39'),
(1, 69, '2026-08-17 11:17:39'),
(1, 70, '2026-08-17 11:17:39'),
(1, 71, '2026-08-17 11:17:39'),
(1, 72, '2026-08-17 11:17:39'),
(1, 73, '2026-08-17 11:17:39'),
(1, 74, '2026-08-17 11:17:39'),
(1, 75, '2026-08-17 11:17:39'),
(1, 76, '2026-08-17 11:17:39'),
(1, 77, '2026-08-17 11:17:39'),
(1, 78, '2026-08-17 11:17:39'),
(1, 79, '2026-08-17 11:17:39'),
(1, 80, '2026-08-17 11:17:39'),
(1, 81, '2026-08-17 11:17:39'),
(1, 82, '2026-08-17 11:17:39'),
(1, 83, '2026-08-17 11:17:39'),
(1, 84, '2026-08-17 11:17:39'),
(1, 85, '2026-08-17 11:17:39'),
(1, 86, '2026-08-17 11:17:39'),
(1, 87, '2026-08-17 11:17:39'),
(1, 88, '2026-08-17 11:17:39'),
(1, 89, '2026-08-17 12:42:30'),
(1, 90, '2026-08-17 12:42:30'),
(1, 91, '2026-08-17 12:42:30'),
(1, 92, '2026-08-17 12:42:30'),
(1, 93, '2026-08-17 12:42:30'),
(1, 94, '2026-08-17 12:42:30'),
(1, 95, '2026-08-17 12:42:30'),
(1, 96, '2026-08-17 12:42:30'),
(1, 97, '2026-08-17 12:42:30'),
(1, 98, '2026-08-17 12:42:30'),
(1, 99, '2026-08-17 12:42:30'),
(1, 100, '2026-08-17 12:42:30'),
(1, 101, '2026-08-17 12:42:30'),
(1, 102, '2026-08-17 12:42:30'),
(1, 103, '2026-08-17 12:42:30'),
(1, 104, '2026-08-17 12:42:30'),
(1, 105, '2026-08-17 12:42:30'),
(1, 106, '2026-08-17 13:59:46'),
(1, 107, '2026-08-17 13:59:46'),
(1, 108, '2026-08-17 13:59:46'),
(1, 109, '2026-08-17 13:59:46'),
(1, 110, '2026-08-17 13:59:46'),
(1, 111, '2026-08-17 13:59:46'),
(1, 112, '2026-08-17 13:59:46'),
(1, 113, '2026-08-17 13:59:46'),
(1, 114, '2026-08-17 13:59:46'),
(1, 115, '2026-08-17 13:59:46'),
(1, 116, '2026-08-17 13:59:46'),
(1, 117, '2026-08-17 13:59:46'),
(1, 118, '2026-08-17 13:59:46'),
(1, 119, '2026-08-17 13:59:46'),
(1, 120, '2026-08-17 13:59:46'),
(1, 121, '2026-08-17 13:59:46'),
(1, 122, '2026-08-17 13:59:46'),
(1, 123, '2026-08-17 13:59:46'),
(1, 124, '2026-08-17 13:59:46'),
(1, 125, '2026-08-17 13:59:46'),
(1, 126, '2026-08-17 13:59:46'),
(1, 127, '2026-08-17 13:59:46'),
(2, 6, '2026-08-16 15:12:03'),
(2, 7, '2026-08-16 15:12:03'),
(2, 8, '2026-08-16 15:12:03'),
(2, 9, '2026-08-16 15:12:03'),
(2, 10, '2026-08-16 15:12:03'),
(2, 11, '2026-08-16 15:12:03'),
(2, 12, '2026-08-16 15:12:03'),
(2, 13, '2026-08-16 15:12:03'),
(2, 14, '2026-08-16 15:12:03'),
(2, 15, '2026-08-16 15:12:03'),
(2, 16, '2026-08-16 15:12:03'),
(2, 17, '2026-08-16 15:12:03'),
(2, 18, '2026-08-16 15:12:03'),
(2, 19, '2026-08-16 15:12:03'),
(2, 20, '2026-08-16 15:12:03'),
(2, 21, '2026-08-16 15:12:03'),
(2, 22, '2026-08-16 15:12:03'),
(2, 23, '2026-08-16 15:12:03'),
(2, 24, '2026-08-16 15:12:03'),
(2, 37, '2026-08-17 05:45:43'),
(2, 38, '2026-08-17 05:45:43'),
(2, 39, '2026-08-17 05:45:43'),
(2, 40, '2026-08-17 05:45:43'),
(2, 41, '2026-08-17 05:45:43'),
(2, 42, '2026-08-17 05:45:43'),
(2, 43, '2026-08-17 05:45:43'),
(2, 44, '2026-08-17 05:45:43'),
(2, 45, '2026-08-17 05:45:43'),
(2, 46, '2026-08-17 05:45:43'),
(2, 47, '2026-08-17 05:45:43'),
(2, 48, '2026-08-17 05:45:43'),
(2, 49, '2026-08-17 05:45:43'),
(2, 50, '2026-08-17 05:45:43'),
(2, 51, '2026-08-17 05:45:43'),
(2, 52, '2026-08-17 05:45:43'),
(2, 53, '2026-08-17 05:45:43'),
(2, 54, '2026-08-17 05:45:43'),
(2, 55, '2026-08-17 05:45:43'),
(2, 56, '2026-08-17 05:45:43'),
(2, 57, '2026-08-17 05:45:43'),
(2, 68, '2026-08-17 11:17:39'),
(2, 69, '2026-08-17 11:17:39'),
(2, 70, '2026-08-17 11:17:39'),
(2, 71, '2026-08-17 11:17:39'),
(2, 72, '2026-08-17 11:17:39'),
(2, 73, '2026-08-17 11:17:39'),
(2, 74, '2026-08-17 11:17:39'),
(2, 75, '2026-08-17 11:17:39'),
(2, 76, '2026-08-17 11:17:39'),
(2, 77, '2026-08-17 11:17:39'),
(2, 78, '2026-08-17 11:17:39'),
(2, 79, '2026-08-17 11:17:39'),
(2, 80, '2026-08-17 11:17:39'),
(2, 81, '2026-08-17 11:17:39'),
(2, 82, '2026-08-17 11:17:39'),
(2, 83, '2026-08-17 11:17:39'),
(2, 84, '2026-08-17 11:17:39'),
(2, 85, '2026-08-17 11:17:39'),
(2, 89, '2026-08-17 12:42:31'),
(2, 90, '2026-08-17 12:42:31'),
(2, 91, '2026-08-17 12:42:31'),
(2, 92, '2026-08-17 12:42:31'),
(2, 93, '2026-08-17 12:42:31'),
(2, 94, '2026-08-17 12:42:31'),
(2, 95, '2026-08-17 12:42:31'),
(2, 96, '2026-08-17 12:42:31'),
(2, 97, '2026-08-17 12:42:31'),
(2, 98, '2026-08-17 12:42:31'),
(2, 99, '2026-08-17 12:42:31'),
(2, 100, '2026-08-17 12:42:31'),
(2, 101, '2026-08-17 12:42:31'),
(2, 102, '2026-08-17 12:42:31'),
(2, 103, '2026-08-17 12:42:31'),
(2, 106, '2026-08-17 13:59:46'),
(2, 107, '2026-08-17 13:59:46'),
(2, 108, '2026-08-17 13:59:46'),
(2, 109, '2026-08-17 13:59:46'),
(2, 110, '2026-08-17 13:59:46'),
(2, 111, '2026-08-17 13:59:46'),
(2, 112, '2026-08-17 13:59:46'),
(2, 113, '2026-08-17 13:59:46'),
(2, 114, '2026-08-17 13:59:46'),
(2, 115, '2026-08-17 13:59:46'),
(2, 116, '2026-08-17 13:59:46'),
(2, 118, '2026-08-17 13:59:46'),
(2, 119, '2026-08-17 13:59:46'),
(2, 120, '2026-08-17 13:59:46'),
(2, 121, '2026-08-17 13:59:46'),
(2, 122, '2026-08-17 13:59:46'),
(2, 123, '2026-08-17 13:59:46'),
(3, 6, '2026-08-16 15:12:03'),
(3, 8, '2026-08-16 15:12:03'),
(3, 12, '2026-08-16 15:12:03'),
(3, 13, '2026-08-16 15:12:03'),
(3, 14, '2026-08-16 15:12:03'),
(3, 15, '2026-08-16 15:12:03'),
(3, 17, '2026-08-16 15:12:03'),
(3, 19, '2026-08-16 15:12:03'),
(3, 21, '2026-08-16 15:12:03'),
(3, 37, '2026-08-17 05:45:43'),
(3, 39, '2026-08-17 05:45:43'),
(3, 41, '2026-08-17 05:45:43'),
(3, 43, '2026-08-17 05:45:43'),
(3, 45, '2026-08-17 05:45:43'),
(3, 46, '2026-08-17 05:45:43'),
(3, 49, '2026-08-17 05:45:43'),
(3, 53, '2026-08-17 05:45:43'),
(3, 56, '2026-08-17 05:45:43'),
(3, 68, '2026-08-17 11:17:39'),
(3, 71, '2026-08-17 11:17:39'),
(3, 72, '2026-08-17 11:17:39'),
(3, 73, '2026-08-17 11:17:39'),
(3, 74, '2026-08-17 11:17:39'),
(3, 77, '2026-08-17 11:17:39'),
(3, 79, '2026-08-17 11:17:39'),
(3, 81, '2026-08-17 11:17:39'),
(3, 83, '2026-08-17 11:17:39'),
(3, 84, '2026-08-17 11:17:39'),
(3, 85, '2026-08-17 11:17:39'),
(3, 89, '2026-08-17 12:42:31'),
(3, 90, '2026-08-17 12:42:31'),
(3, 92, '2026-08-17 12:42:31'),
(3, 94, '2026-08-17 12:42:31'),
(3, 96, '2026-08-17 12:42:31'),
(3, 98, '2026-08-17 12:42:31'),
(3, 100, '2026-08-17 12:42:31'),
(3, 102, '2026-08-17 12:42:31'),
(3, 106, '2026-08-17 13:59:46'),
(3, 107, '2026-08-17 13:59:46'),
(3, 109, '2026-08-17 13:59:46'),
(3, 111, '2026-08-17 13:59:46'),
(3, 113, '2026-08-17 13:59:46'),
(3, 115, '2026-08-17 13:59:46'),
(3, 118, '2026-08-17 13:59:46'),
(3, 120, '2026-08-17 13:59:46'),
(3, 122, '2026-08-17 13:59:46'),
(3, 123, '2026-08-17 13:59:46'),
(4, 6, '2026-08-16 15:12:03'),
(4, 8, '2026-08-16 15:12:03'),
(4, 14, '2026-08-16 15:12:03'),
(4, 128, '2026-08-25 03:26:36'),
(5, 6, '2026-08-16 15:12:03'),
(5, 8, '2026-08-16 15:12:03'),
(5, 14, '2026-08-16 15:12:03'),
(5, 128, '2026-08-25 03:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `stakeholders`
--

CREATE TABLE `stakeholders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `address` text DEFAULT NULL,
  `sector` varchar(150) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stakeholders`
--

INSERT INTO `stakeholders` (`id`, `user_id`, `full_name`, `email`, `phone`, `organization`, `category_id`, `status`, `created_at`, `address`, `sector`, `verified_at`, `verified_by`, `updated_at`) VALUES
(1, NULL, 'Juan Dela Cruz', 'juan.delacruz@example.com', '09171234567', NULL, 1, 'Verified', '2026-08-18 15:09:45', 'Barangay 659, Manila', 'Resident', '2026-08-18 23:09:45', 1, '2026-08-18 15:09:45'),
(2, NULL, 'Maria Santos', 'maria.santos@example.com', '09181234567', 'Manila Business Association', 2, 'Verified', '2026-08-18 15:09:45', 'Ermita, Manila', 'Business', '2026-08-18 23:09:45', 1, '2026-08-18 15:09:45'),
(3, NULL, 'Carlo Reyes', 'carlo.reyes@example.com', '09191234567', 'Manila Community Development Network', 4, 'Verified', '2026-08-18 15:09:45', 'Sampaloc, Manila', 'Civil Society', '2026-08-18 23:09:45', 1, '2026-08-18 15:09:45'),
(4, NULL, 'Angela Mendoza', 'angela.mendoza@example.com', '09201234567', 'City Government Office', 5, 'Verified', '2026-08-18 15:09:45', 'Manila City Hall', 'Government', '2026-08-18 23:09:45', 1, '2026-08-18 15:09:45'),
(5, NULL, 'Dr. Roberto Lim', 'roberto.lim@example.com', '09211234567', 'University of Manila', 6, 'Verified', '2026-08-18 15:09:45', 'Manila', 'Education', '2026-08-18 23:09:45', 1, '2026-08-18 15:09:45'),
(6, NULL, 'Micko Laput', 'mickolaput@gmail.com', '09612382088', 'commitee', 1, 'Pending', '2026-08-28 15:42:10', '4339 L. Bernardino St.', 'health', NULL, NULL, '2026-08-28 15:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `stakeholder_categories`
--

CREATE TABLE `stakeholder_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stakeholder_categories`
--

INSERT INTO `stakeholder_categories` (`id`, `name`) VALUES
(6, 'Academic / Educational Institution'),
(2, 'Business / Private Sector'),
(3, 'Civil Society Organization'),
(8, 'Community Organization'),
(5, 'Government Agency'),
(4, 'Non-Government Organization'),
(9, 'Other'),
(7, 'Professional Organization'),
(1, 'Resident / Citizen');

-- --------------------------------------------------------

--
-- Table structure for table `stakeholder_history`
--

CREATE TABLE `stakeholder_history` (
  `id` bigint(20) NOT NULL,
  `stakeholder_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stakeholder_history`
--

INSERT INTO `stakeholder_history` (`id`, `stakeholder_id`, `action`, `details`, `changed_by`, `created_at`) VALUES
(1, 6, 'Create', 'Created stakeholder Micko Laput.', 1, '2026-08-28 15:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `hearing_id` int(11) DEFAULT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `opens_at` datetime DEFAULT NULL,
  `closes_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_answers`
--

CREATE TABLE `survey_answers` (
  `id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `answer_text` text DEFAULT NULL,
  `numeric_value` decimal(12,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_history`
--

CREATE TABLE `survey_history` (
  `id` bigint(20) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_questions`
--

CREATE TABLE `survey_questions` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `question_type` varchar(50) NOT NULL,
  `is_required` tinyint(1) DEFAULT 0,
  `sequence_number` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_question_options`
--

CREATE TABLE `survey_question_options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `sequence_number` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_responses`
--

CREATE TABLE `survey_responses` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `respondent_name` varchar(150) DEFAULT NULL,
  `respondent_email` varchar(150) DEFAULT NULL,
  `response_text` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `survey_submissions`
--

CREATE TABLE `survey_submissions` (
  `id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `stakeholder_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `respondent_name` varchar(150) DEFAULT NULL,
  `respondent_email` varchar(150) DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE `systems` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `base_url` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `code`, `name`, `description`, `base_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ordinance', 'Ordinance and Resolution Life Cycle Management System', 'Manages ordinances and resolutions from drafting through implementation and revision.', 'http://localhost/orlms', 'Active', '2026-08-01 04:21:33', '2026-08-17 11:17:39'),
(2, 'agenda', 'Legislative Agenda and Calendar Management System', 'Manages legislative agendas, calendar schedules, meetings, deadlines, reminders and executive-legislative coordination.', 'http://localhost/lacms', 'Active', '2026-08-01 04:21:33', '2026-08-17 12:42:30'),
(3, 'voting', 'Voting, Quorum, and Decision Support System', 'Manages quorum verification, voting, tallying and legislative decisions.', 'http://localhost/vqdss', 'Active', '2026-08-01 04:21:33', '2026-08-17 05:45:42'),
(4, 'hearing', 'Public Hearing and Consultation Management System', 'Manages hearings, stakeholders, attendance, feedback, issues and actions.', 'http://localhost/lph', 'Active', '2026-08-01 04:21:33', '2026-08-18 15:00:29'),
(5, 'citizen', 'Citizen Engagement and Public Feedback Management System', 'Manages public feedback, citizen proposals, complaints, moderation, official responses, public tracking and engagement analytics.', 'http://localhost/cepfms', 'Active', '2026-08-01 04:21:33', '2026-08-17 14:13:08'),
(12, 'public_portal', 'Legislative Citizen Portal', 'Citizen-facing portal for public legislative information from ORLMS, LACMS, VQDSS, PHCMS and CEPFMS.', 'http://localhost/citizen_portal', 'Active', '2026-08-25 03:26:36', '2026-08-25 03:26:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `full_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `office_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `email`, `phone`, `password`, `role_id`, `office_id`, `department_id`, `status`, `created_at`, `last_login_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'System Administrator', 'admin@legislative.local', NULL, '$2y$12$7vQcfuIlcWb8KFRnrslnWObtFwcOcDaaorJHmGNdGARDMVvJSxyOS', 1, NULL, NULL, 'Active', '2026-08-01 04:21:34', '2026-09-08 13:59:24', '2026-09-08 05:59:24', NULL),
(2, 'micko1', 'Micko Laput', 'mickolaput@gmail.com', NULL, '$2y$10$zP9ACRDqJE.p0aQiXPiAnOiOliGTWma7FI4b43/MGJ4J7m.Q01miK', 2, 3, NULL, 'Active', '2026-08-24 11:34:19', '2026-09-02 13:07:52', '2026-09-02 05:07:52', NULL),
(3, 'nonelichz', 'nonelichz', 'nonelichz@gmail.com', '09999999999', '$2y$10$YcKH/BgUUiQA6REuVMPCT.G8DyVTiCkYtRiHlDcwVtNoBqIPa6vn2', 2, 3, NULL, 'Active', '2026-08-24 11:38:58', NULL, '2026-08-24 11:38:58', NULL),
(4, 'ronald', 'ronald', 'ronald@gmail.com', '09999999999', '$2y$10$nRu36Ao8o5eDv6GfgnjrrOtG69Sw5GKklgS0/oUMKMNkZL4nZUR0u', 2, 3, NULL, 'Active', '2026-08-24 12:36:59', NULL, '2026-08-24 12:37:15', NULL),
(5, 'nardz', 'nardz', 'nardz@gmail.com', '09999999999', '$2y$10$5a3PwAHaiSSVgnblwRm2R.h.pwHjP62vtqQbmVO5QG3O/G4D7V1xm', 5, NULL, NULL, 'Active', '2026-08-25 07:16:11', '2026-08-25 15:16:23', '2026-08-25 07:16:23', NULL),
(6, 'uzumakimicko', 'Micko Laput', 'uzumakimicko@gmail.com', '09612382088', '$2y$10$qmRdqnWvSBODpdRSWS9JMugaAGudbbWCTMHCVdrSWatrd0Pvhn0Gq', 5, NULL, NULL, 'Active', '2026-08-28 16:30:05', '2026-08-29 00:30:13', '2026-08-28 16:30:13', NULL),
(7, 'bonelichz', 'bonelichz', 'bonelichz@gmail.com', '09999999999', '$2y$10$ZMYm4Hrrk8tezZZO1EjCfO752q9qraF/eo1A.0MkvdSqICvwyVU4q', 3, NULL, NULL, 'Active', '2026-09-01 11:12:29', '2026-09-06 14:08:32', '2026-09-07 13:49:46', NULL),
(8, 'junar', 'Olarte, Junar Love Bello', 'junarlove05@gmail.com', '09190790479', '$2y$10$fo04eim2ilbQV6czQNqdZ.GlZSjKWoQUdp/Nn0lO4Ie.ZKCKdVJ42', 3, 6, NULL, 'Active', '2026-09-07 06:06:06', '2026-09-07 22:30:29', '2026-09-07 14:30:29', NULL),
(10, NULL, 'Olarte, Junar Love Bello', 'junarlove2000@gmail.com', '09190790479', '$2y$10$wcI9MuhOvgQDANunrb4ZZ.A8aBC1L.7kY/L8wsv0yerI7NdhI3WZ.', 3, 6, NULL, 'Active', '2026-09-07 06:33:16', '2026-09-07 15:25:43', '2026-09-07 07:25:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `assigned_by` int(11) DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `is_primary`, `assigned_by`, `assigned_at`) VALUES
(1, 1, 1, 1, '2026-08-17 14:13:08'),
(2, 2, 1, 1, '2026-08-24 11:37:27'),
(3, 2, 1, 1, '2026-08-24 11:38:58'),
(4, 2, 1, 1, '2026-08-24 12:37:15'),
(5, 5, 1, NULL, '2026-08-25 07:16:11'),
(6, 5, 1, NULL, '2026-08-28 16:30:05'),
(7, 3, 1, 1, '2026-09-07 13:49:46'),
(7, 5, 0, NULL, '2026-09-01 11:12:29'),
(8, 3, 1, 1, '2026-09-07 06:32:28'),
(10, 3, 1, 1, '2026-09-07 06:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_system_access`
--

CREATE TABLE `user_system_access` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `system_id` int(11) NOT NULL,
  `access_level` varchar(50) DEFAULT 'Standard',
  `status` varchar(30) DEFAULT 'Active',
  `granted_by` int(11) DEFAULT NULL,
  `granted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_system_access`
--

INSERT INTO `user_system_access` (`id`, `user_id`, `system_id`, `access_level`, `status`, `granted_by`, `granted_at`, `updated_at`) VALUES
(1, 1, 2, 'Administrator', 'Active', 1, '2026-08-01 04:21:34', '2026-08-17 12:42:31'),
(2, 1, 5, 'Administrator', 'Active', 1, '2026-08-01 04:21:34', '2026-08-17 13:59:46'),
(3, 1, 4, 'Administrator', 'Active', 1, '2026-08-01 04:21:34', '2026-08-01 04:21:34'),
(4, 1, 1, 'Administrator', 'Active', 1, '2026-08-01 04:21:34', '2026-08-17 11:17:39'),
(5, 1, 3, 'Administrator', 'Active', 1, '2026-08-01 04:21:34', '2026-08-01 04:21:34'),
(10, 2, 2, 'Staff', 'Active', 1, '2026-08-24 11:34:19', '2026-08-24 11:37:27'),
(15, 3, 2, 'Staff', 'Active', 1, '2026-08-24 11:38:58', '2026-08-24 11:38:58'),
(16, 4, 4, 'Committee', 'Active', 1, '2026-08-24 12:36:59', '2026-08-24 12:37:15'),
(18, 5, 12, 'Citizen', 'Active', NULL, '2026-08-25 07:16:11', '2026-08-25 07:16:11'),
(19, 6, 12, 'Citizen', 'Active', NULL, '2026-08-28 16:30:05', '2026-08-28 16:30:05'),
(20, 7, 12, 'Citizen', 'Active', NULL, '2026-09-01 11:12:29', '2026-09-01 11:12:29'),
(21, 2, 1, 'Staff', 'Active', 1, '2026-09-06 13:15:33', '2026-09-06 13:15:33'),
(22, 3, 1, 'Staff', 'Active', 1, '2026-09-06 13:15:33', '2026-09-06 13:15:33'),
(23, 4, 1, 'Staff', 'Active', 1, '2026-09-06 13:15:33', '2026-09-06 13:15:33'),
(24, 8, 4, 'Standard', 'Active', 1, '2026-09-07 06:06:06', '2026-09-07 06:06:06'),
(25, 8, 3, 'Committee', 'Active', 1, '2026-09-07 06:27:46', '2026-09-07 06:32:28'),
(29, 10, 3, 'Stakeholder', 'Active', 1, '2026-09-07 06:33:16', '2026-09-07 06:33:16'),
(30, 7, 3, 'Standard', 'Active', 1, '2026-09-07 13:49:46', '2026-09-07 13:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_ai_analysis`
--

CREATE TABLE `vqd_ai_analysis` (
  `id` bigint(20) NOT NULL,
  `module` varchar(50) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `analysis_type` varchar(100) NOT NULL,
  `model_used` varchar(100) NOT NULL DEFAULT 'llama3.2:1b',
  `prompt_summary` text DEFAULT NULL,
  `result_json` longtext DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vqd_ai_analysis`
--

INSERT INTO `vqd_ai_analysis` (`id`, `module`, `reference_id`, `reference_number`, `analysis_type`, `model_used`, `prompt_summary`, `result_json`, `created_by`, `created_at`) VALUES
(1, 'decisions', 8, 'DRN-2026-0008', 'decision_draft', 'llama3.2:1b', 'traffice voting', '{\"success\":true,\"decision_statement\":\"WHEREAS, Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10754, provides that a measure shall be passed by a simple majority of the total votes cast, and\",\"legal_basis\":\"Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10754.\",\"conditions\":\"The measure shall be implemented within 30 days of its approval, and shall be subject to the approval of the Mayor of Manila.\",\"effectivity_clause\":\"This Ordinance shall take effect immediately upon its publication in the Manila Standard Daily News.\",\"executive_summary\":\"This Ordinance, which aims to regulate traffic in the City of Manila, has been passed by the City Council with a simple majority of votes cast.\",\"model\":\"llama3.2:1b\"}', 1, '2026-09-07 11:45:15'),
(2, 'decisions', 8, 'DEC-2026-0008', 'action_plan', 'llama3.2:1b', 'traffice voting', '{\"success\":true,\"actions\":[{\"title\":\"Verify and update the City Council\'s motion\",\"description\":\"Ensure the motion is accurate and up-to-date in the City Council\'s records\",\"suggested_office\":\"City Legal Office\",\"priority\":\"High\",\"days_due\":14},{\"title\":\"Prepare the certified vote tally for review\",\"description\":\"Gather and review the certified vote tally for accuracy and completeness\",\"suggested_office\":\"City Treasurer\",\"priority\":\"High\",\"days_due\":14},{\"title\":\"Update the City Council\'s records with the approved motion\",\"description\":\"Update the City Council\'s records with the approved motion and associated documents\",\"suggested_office\":\"City Engineering\",\"priority\":\"High\",\"days_due\":14}],\"model\":\"llama3.2:1b\"}', 1, '2026-09-07 11:46:13'),
(3, 'voting', 0, NULL, 'threshold_advisor', 'llama3.2:1b', 'Resolution Authorizing the Municipal Mayor to Negotiate a Bank Loan for Infrastructure Projects', '{\"success\":true,\"recommended_threshold\":\"Simple Majority\",\"statutory_basis\":\"Section 53 of RA 7160\",\"recommended_method\":\"Roll Call\",\"tie_rule_recommendation\":\"Presiding Officer Decides\",\"parliamentary_guidance\":\"Key procedural advice for the Presiding Officer to ensure a quorum is maintained and to avoid tie votes.\",\"model\":\"llama3.2:1b\"}', NULL, '2026-09-07 11:50:32'),
(4, 'decisions', 0, 'VQD-DEC', 'decision_draft', 'llama3.2:1b', 'Legislative Measure', '{\"success\":true,\"decision_statement\":\"WHEREAS, the Sangguniang Panlungsod of Manila has considered and approved the Legislative Measure VQD-DEC, and\",\"legal_basis\":\"Section 53 of Republic Act No. 7160 Local Government Code, and Internal Rules of Procedure of the City Council, as follows: The Sangguniang Panlungsod of Manila hereby approves the Legislative Measure VQD-DEC.\",\"conditions\":\"The Sangguniang Panlungsod of Manila hereby declares that the Legislative Measure VQD-DEC shall take effect immediately upon its publication in the Official Gazette.\",\"effectivity_clause\":\"The Sangguniang Panlungsod of Manila hereby declares that the Legislative Measure VQD-DEC shall be effective upon its publication in the Official Gazette.\",\"executive_summary\":\"The Sangguniang Panlungsod of Manila hereby approves the Legislative Measure VQD-DEC, declaring its approval effective immediately upon publication in the Official Gazette.\",\"model\":\"llama3.2:1b\"}', NULL, '2026-09-07 11:50:54'),
(5, 'voting', 0, NULL, 'threshold_advisor', 'llama3.2:1b', 'Resolution Authorizing the Municipal Mayor to Negotiate a Bank Loan for Infrastructure Projects', '{\"success\":true,\"recommended_threshold\":\"Simple Majority\",\"statutory_basis\":\"Section 53 of RA 7160\",\"recommended_method\":\"Roll Call\",\"tie_rule_recommendation\":\"Presiding Officer Decides\",\"parliamentary_guidance\":\"Key procedural advice for the Presiding Officer: The Presiding Officer should ensure that the quorum is met before proceeding to vote on the resolution. In this case, since there is a quorum present, the Presiding Officer can proceed with the vote.\",\"model\":\"llama3.2:1b\"}', NULL, '2026-09-07 12:12:40'),
(6, 'decisions', 1, 'VQD-DEC', 'decision_draft', 'llama3.2:1b', 'Approval of Supplemental Budget for Disaster Preparedness', '{\"success\":true,\"decision_statement\":\"WHEREAS, the City Council of Manila hereby approves the Supplemental Budget for Disaster Preparedness; and\",\"legal_basis\":\"Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10963, and Internal Rules of Procedure of the City Council.\",\"conditions\":\"The Supplemental Budget for Disaster Preparedness shall be implemented within six (6) months from the approval of this ordinance, and shall be subject to review and approval by the City Mayor.\",\"effectivity_clause\":\"This Supplemental Budget for Disaster Preparedness shall take effect immediately upon its publication in the Manila Standard Daily News.\",\"executive_summary\":\"The City Council of Manila hereby approves the Supplemental Budget for Disaster Preparedness, which aims to enhance the city\'s disaster risk reduction and management efforts.\",\"model\":\"llama3.2:1b\"}', NULL, '2026-09-07 12:13:04'),
(7, 'decisions', 8, 'DRN-2026-0008', 'decision_draft', 'llama3.2:1b', 'traffice voting', '{\"success\":true,\"decision_statement\":\"WHEREAS, Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10963, provides that a measure shall be considered passed if it receives a simple majority vote in the deliberations and votes of the City Council; and\",\"legal_basis\":\"Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10963.\",\"conditions\":\"The measure shall be implemented in accordance with the requirements of Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10963, within sixty (60) days from the date of its approval.\",\"effectivity_clause\":\"This Ordinance shall take effect immediately upon its publication in the Manila Standard Daily News.\",\"executive_summary\":\"The City Council of Manila hereby adopts and passes this measure, which aims to regulate traffic in the city, as recommended by the Sangguniang Panlungsod (City Council). The measure shall be implemented in accordance with the requirements of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10963.\",\"model\":\"llama3.2:1b\"}', 1, '2026-09-07 12:17:25'),
(8, 'decisions', 9, 'ORD-2026-0001', 'decision_draft', 'llama3.2:1b', 'Community Waste Segregation Ordinance 2026', '{\"success\":true,\"decision_statement\":\"WHEREAS, Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10963, provides that a local government unit may enact ordinances for the regulation of waste management; and\",\"legal_basis\":\"Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10963.\",\"conditions\":\"The Community Waste Segregation Ordinance 2026 shall take effect upon its publication in the Manila Standard Daily News and shall be implemented by the City Government of Manila within six months from the date of its enactment.\",\"effectivity_clause\":\"This Ordinance shall be deemed enacted and published for the purpose of providing a comprehensive framework for community waste segregation in the City of Manila.\",\"executive_summary\":\"The City Council of Manila hereby adopts and passes the Community Waste Segregation Ordinance 2026, which aims to promote a waste management system that is effective, efficient, and environmentally friendly.\",\"model\":\"llama3.2:1b\"}', 1, '2026-09-07 22:49:12'),
(9, 'decisions', 9, 'DEC-2026-0009', 'action_plan', 'llama3.2:1b', 'Community Waste Segregation Ordinance 2026', '{\"success\":true,\"actions\":[{\"title\":\"Issue a public notice to inform the public about the new ordinance and its requirements\",\"description\":\"Notify the public about the new ordinance and its requirements through various channels such as social media, local newspapers, and community meetings\",\"suggested_office\":\"City Legal Office\",\"priority\":\"Normal\",\"days_due\":7},{\"title\":\"Develop a manual or guide for waste segregation and collection\",\"description\":\"Create a comprehensive manual or guide that outlines the procedures and guidelines for waste segregation and collection in the city\",\"suggested_office\":\"City Engineering\",\"priority\":\"High\",\"days_due\":14},{\"title\":\"Establish a waste segregation hotline for citizens to report issues\",\"description\":\"Set up a hotline or a dedicated phone number for citizens to report issues or ask questions about the waste segregation ordinance\",\"suggested_office\":\"Department of Public Services\",\"priority\":\"Normal\",\"days_due\":7},{\"title\":\"Conduct a waste segregation survey to gather feedback from the public\",\"description\":\"Conduct a survey to gather feedback from the public on the waste segregation ordinance and its effectiveness\",\"suggested_office\":\"Manila Health Department\",\"priority\":\"Urgent\",\"days_due\":7}],\"model\":\"llama3.2:1b\"}', 1, '2026-09-07 22:52:04'),
(10, 'decisions', 9, 'DEC-2026-0009', 'action_plan', 'llama3.2:1b', 'Community Waste Segregation Ordinance 2026', '{\"success\":true,\"actions\":[{\"title\":\"Develop a Waste Segregation Guide for Residents\",\"description\":\"Create a comprehensive guide outlining the different types of waste segregation and the corresponding collection methods.\",\"suggested_office\":\"City Legal Office\",\"priority\":\"High\",\"days_due\":14},{\"title\":\"Establish a Waste Segregation Committee\",\"description\":\"Form a committee comprising representatives from different departments to oversee the implementation of the Community Waste Segregation Ordinance 2026.\",\"suggested_office\":\"City Engineering\",\"priority\":\"High\",\"days_due\":14},{\"title\":\"Develop a Public Awareness Campaign\",\"description\":\"Create a campaign to educate residents on the importance of proper waste segregation and the consequences of not doing so.\",\"suggested_office\":\"Department of Public Services\",\"priority\":\"High\",\"days_due\":14},{\"title\":\"Establish a Waste Segregation Monitoring System\",\"description\":\"Implement a system to monitor and track waste segregation compliance across the city, including the collection of data on waste types and collection frequencies.\",\"suggested_office\":\"Secretary to the Mayor\",\"priority\":\"High\",\"days_due\":14}],\"model\":\"llama3.2:1b\"}', 1, '2026-09-07 22:53:11'),
(11, 'decisions', 9, 'ORD-2026-0001', 'decision_draft', 'llama3.2:1b', 'Community Waste Segregation Ordinance 2026', '{\"success\":true,\"decision_statement\":\"WHEREAS, Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10963, provides that a local government unit may enact ordinances to regulate waste management and segregation; and\",\"legal_basis\":\"Section 53 of Republic Act No. 7160 Local Government Code, as amended by Republic Act No. 10963.\",\"conditions\":\"The Community Waste Segregation Ordinance 2026 shall take effect upon its publication in the Manila Standard Daily News and shall be implemented by the City Council of Manila within six months from the date of its enactment.\",\"effectivity_clause\":\"This Ordinance shall be deemed enacted and published for the purpose of immediate implementation.\",\"executive_summary\":\"The City Council of Manila hereby passes the Community Waste Segregation Ordinance 2026, which aims to regulate waste management and segregation in the city, with an implementation period of six months from its enactment.\",\"model\":\"llama3.2:1b\"}', 1, '2026-09-07 22:53:38');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_ballot_challenges`
--

CREATE TABLE `vqd_ballot_challenges` (
  `id` bigint(20) NOT NULL,
  `voting_event_id` int(11) NOT NULL,
  `vote_id` bigint(20) NOT NULL,
  `challenge_type` varchar(100) NOT NULL DEFAULT 'Ballot Review',
  `reason` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Open',
  `resolution` text DEFAULT NULL,
  `raised_by` int(11) DEFAULT NULL,
  `raised_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_decisions`
--

CREATE TABLE `vqd_decisions` (
  `id` int(11) NOT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `voting_event_id` int(11) DEFAULT NULL,
  `tally_id` int(11) DEFAULT NULL,
  `reference_number` varchar(100) NOT NULL,
  `decision_record_number` varchar(100) DEFAULT NULL,
  `decision_source` varchar(100) DEFAULT 'Vote Tally',
  `source_reference` varchar(100) DEFAULT NULL,
  `decision_datetime` datetime DEFAULT NULL,
  `official_outcome` varchar(100) NOT NULL DEFAULT 'Pending',
  `decision_classification` varchar(100) DEFAULT NULL,
  `required_votes` int(11) NOT NULL DEFAULT 0,
  `affirmative_votes` int(11) NOT NULL DEFAULT 0,
  `negative_votes` int(11) NOT NULL DEFAULT 0,
  `abstain_votes` int(11) NOT NULL DEFAULT 0,
  `moved_by` varchar(255) DEFAULT NULL,
  `seconded_by` varchar(255) DEFAULT NULL,
  `decision_statement` text NOT NULL,
  `legal_basis` text DEFAULT NULL,
  `conditions` text DEFAULT NULL,
  `effectivity_type` varchar(100) DEFAULT NULL,
  `effectivity_date` date DEFAULT NULL,
  `release_classification` varchar(50) DEFAULT 'Internal',
  `implementation_notes` text DEFAULT NULL,
  `publication_notes` text DEFAULT NULL,
  `record_remarks` text DEFAULT NULL,
  `record_status` varchar(50) NOT NULL DEFAULT 'Draft',
  `recorded_by` int(11) DEFAULT NULL,
  `certified_by` int(11) DEFAULT NULL,
  `certified_at` datetime DEFAULT NULL,
  `published_by` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_decisions`
--

INSERT INTO `vqd_decisions` (`id`, `legislative_item_id`, `voting_event_id`, `tally_id`, `reference_number`, `decision_record_number`, `decision_source`, `source_reference`, `decision_datetime`, `official_outcome`, `decision_classification`, `required_votes`, `affirmative_votes`, `negative_votes`, `abstain_votes`, `moved_by`, `seconded_by`, `decision_statement`, `legal_basis`, `conditions`, `effectivity_type`, `effectivity_date`, `release_classification`, `implementation_notes`, `publication_notes`, `record_remarks`, `record_status`, `recorded_by`, `certified_by`, `certified_at`, `published_by`, `published_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 11, 1, 'DEC-2026-0001', 'DRN-2026-0001', 'Vote Tally', 'TLY-2026-0001', '2026-08-25 20:08:11', 'Passed', 'Motion Result', 1, 1, 0, 0, 'micko', 'admin', 'The motion was approved based on the certified vote tally TLY-2026-0001.', 'voting', 'voting', 'Immediate', '2026-08-28', 'Internal', 'implement', 'just', 'just', 'Certified', 1, 1, '2026-08-25 20:08:35', NULL, NULL, 1, '2026-08-25 12:08:11', '2026-08-25 12:08:35'),
(2, 1, 13, 2, 'DEC-2026-0002', 'DRN-2026-0002', 'Vote Tally', 'TLY-2026-0002', '2026-08-28 23:51:28', 'Passed', 'Motion Result', 3, 4, 1, 0, NULL, NULL, 'The motion was approved based on the certified vote tally TLY-2026-0002.', NULL, NULL, 'Immediate', NULL, 'Internal', NULL, NULL, NULL, 'Certified', 1, 1, '2026-08-28 23:51:34', NULL, NULL, 1, '2026-08-28 15:51:28', '2026-08-28 15:51:34'),
(3, 1, 14, 3, 'DEC-2026-0003', 'DRN-2026-0003', 'Vote Tally', 'TLY-2026-0003', '2026-09-02 13:12:11', 'Passed', 'Motion Result', 3, 3, 1, 0, 'admin', 'admin', 'The motion was approved based on the certified vote tally TLY-2026-0003.', 'agree', 'agree', 'Immediate', '2026-09-02', 'Public', NULL, NULL, NULL, 'Certified', 1, 1, '2026-09-02 13:12:55', NULL, NULL, 1, '2026-09-02 05:12:11', '2026-09-02 05:12:55'),
(4, 1, 15, 4, 'DEC-2026-0004', 'DRN-2026-0004', 'Vote Tally', 'TLY-2026-0004', '2026-09-05 09:43:40', 'Passed', 'Motion Result', 3, 5, 0, 0, 'admin', 'admin', 'The motion was approved based on the certified vote tally TLY-2026-0004.', 'agree', 'agree', 'Immediate', '2026-09-07', 'Public', NULL, NULL, NULL, 'Certified', 1, 1, '2026-09-05 09:45:15', NULL, NULL, 1, '2026-09-05 01:43:40', '2026-09-05 01:45:15'),
(5, NULL, 16, 5, 'DEC-2026-0005', 'DRN-2026-0005', 'Vote Tally', 'TLY-2026-0005', '2026-09-05 10:02:14', 'Passed', 'Motion Result', 4, 7, 0, 0, 'admin', 'admin', 'The motion was approved based on the certified vote tally TLY-2026-0005.', NULL, NULL, 'Immediate', '2026-09-12', 'Public', NULL, NULL, NULL, 'Published', 1, 1, '2026-09-05 10:02:16', 1, '2026-09-05 10:02:20', 1, '2026-09-05 02:02:14', '2026-09-05 02:02:20'),
(6, NULL, 17, 6, 'DEC-2026-0006', 'DRN-2026-0006', 'Vote Tally', 'TLY-2026-0006', '2026-09-05 10:15:18', 'Passed', 'Motion Result', 4, 7, 0, 0, 'admin', 'admin', 'The motion was approved based on the certified vote tally TLY-2026-0006.', NULL, NULL, 'Immediate', '2026-09-26', 'Public', NULL, NULL, NULL, 'Certified', 1, 1, '2026-09-05 10:17:43', NULL, NULL, 1, '2026-09-05 02:15:18', '2026-09-05 02:17:43'),
(7, NULL, 18, 7, 'DEC-2026-0007', 'DRN-2026-0007', 'Vote Tally', 'TLY-2026-0007', '2026-09-06 15:02:04', 'Passed', 'Motion Result', 4, 7, 0, 0, 'admin', 'admin', 'The motion was approved based on the certified vote tally TLY-2026-0007.', 'r', NULL, 'Immediate', '2026-09-26', 'Internal', 'r', 'r', NULL, 'Certified', 1, 1, '2026-09-06 15:02:12', NULL, NULL, 1, '2026-09-06 07:02:04', '2026-09-06 07:02:12'),
(8, NULL, 19, 8, 'DEC-2026-0008', 'DRN-2026-0008', 'Vote Tally', 'TLY-2026-0008', '2026-09-06 15:07:35', 'Passed', 'Motion Result', 4, 6, 1, 0, 'admin', 'admin', 'The motion was approved based on the certified vote tally TLY-2026-0008.', NULL, NULL, 'Immediate', '2026-09-26', 'Internal', 'r', 'r', 'r', 'Certified', 1, 1, '2026-09-06 15:07:38', NULL, NULL, 1, '2026-09-06 07:07:35', '2026-09-06 07:07:38'),
(9, 1, 25, 10, 'DEC-2026-0009', 'DRN-2026-0009', 'Vote Tally', 'TLY-2026-0010', '2026-09-07 22:40:39', 'Passed', 'Motion Result', 3, 5, 0, 0, 'admin', 'admin', 'The motion was approved based on the certified vote tally TLY-2026-0010.', 'voting', '50 eligable', 'Immediate', '2026-09-30', 'Public', NULL, NULL, NULL, 'Published', 1, 1, '2026-09-07 22:40:43', 1, '2026-09-07 22:40:59', 1, '2026-09-07 14:40:39', '2026-09-07 14:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_decision_actions`
--

CREATE TABLE `vqd_decision_actions` (
  `id` bigint(20) NOT NULL,
  `decision_id` int(11) NOT NULL,
  `action_title` varchar(255) NOT NULL,
  `action_description` text DEFAULT NULL,
  `responsible_office_id` int(11) DEFAULT NULL,
  `responsible_user_id` int(11) DEFAULT NULL,
  `priority` varchar(50) DEFAULT 'Normal',
  `due_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `completed_at` datetime DEFAULT NULL,
  `completion_notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_decision_actions`
--

INSERT INTO `vqd_decision_actions` (`id`, `decision_id`, `action_title`, `action_description`, `responsible_office_id`, `responsible_user_id`, `priority`, `due_date`, `status`, `completed_at`, `completion_notes`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 7, 'r', 'r', 3, 5, 'Normal', '2026-09-25', 'In Progress', NULL, NULL, 1, '2026-09-06 07:02:55', '2026-09-06 07:02:55'),
(2, 8, 'Verify and update the City Council\'s motion', 'Ensure the motion is accurate and up-to-date in the City Council\'s records', 2, NULL, 'High', '2026-09-21', 'Completed', '2026-09-07 11:46:37', NULL, 1, '2026-09-07 03:46:20', '2026-09-07 03:46:37'),
(3, 8, 'Prepare the certified vote tally for review', 'Gather and review the certified vote tally for accuracy and completeness', NULL, NULL, 'High', '2026-09-21', 'Pending', NULL, NULL, 1, '2026-09-07 03:46:20', '2026-09-07 03:46:20'),
(4, 8, 'Update the City Council\'s records with the approved motion', 'Update the City Council\'s records with the approved motion and associated documents', NULL, NULL, 'High', '2026-09-21', 'Pending', NULL, NULL, 1, '2026-09-07 03:46:20', '2026-09-07 03:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_decision_action_history`
--

CREATE TABLE `vqd_decision_action_history` (
  `id` bigint(20) NOT NULL,
  `decision_action_id` bigint(20) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_decision_documents`
--

CREATE TABLE `vqd_decision_documents` (
  `id` bigint(20) NOT NULL,
  `decision_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Decision Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_decision_history`
--

CREATE TABLE `vqd_decision_history` (
  `id` bigint(20) NOT NULL,
  `decision_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_decision_history`
--

INSERT INTO `vqd_decision_history` (`id`, `decision_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create', NULL, 'Draft', 'Decision record created from certified tally TLY-2026-0001.', 1, '2026-08-25 12:08:12'),
(2, 1, 'Record', 'Draft', 'Recorded', 'Decision status Draft -> Recorded.', 1, '2026-08-25 12:08:30'),
(3, 1, 'Certify', 'Recorded', 'Certified', 'Decision status Recorded -> Certified.', 1, '2026-08-25 12:08:35'),
(4, 2, 'Create', NULL, 'Draft', 'Decision record created from certified tally TLY-2026-0002.', 1, '2026-08-28 15:51:28'),
(5, 2, 'Record', 'Draft', 'Recorded', 'Decision status Draft -> Recorded.', 1, '2026-08-28 15:51:32'),
(6, 2, 'Certify', 'Recorded', 'Certified', 'Decision status Recorded -> Certified.', 1, '2026-08-28 15:51:34'),
(7, 3, 'Create', NULL, 'Draft', 'Decision record created from certified tally TLY-2026-0003.', 1, '2026-09-02 05:12:11'),
(8, 3, 'Record', 'Draft', 'Recorded', 'Decision status Draft -> Recorded.', 1, '2026-09-02 05:12:46'),
(9, 3, 'Certify', 'Recorded', 'Certified', 'Decision status Recorded -> Certified.', 1, '2026-09-02 05:12:55'),
(10, 4, 'Create', NULL, 'Draft', 'Decision record created from certified tally TLY-2026-0004.', 1, '2026-09-05 01:43:40'),
(11, 4, 'Record', 'Draft', 'Recorded', 'Decision status Draft -> Recorded.', 1, '2026-09-05 01:45:01'),
(12, 4, 'Certify', 'Recorded', 'Certified', 'Decision status Recorded -> Certified.', 1, '2026-09-05 01:45:15'),
(13, 5, 'Create', NULL, 'Draft', 'Decision record created from certified tally TLY-2026-0005.', 1, '2026-09-05 02:02:14'),
(14, 5, 'Certify', 'Draft', 'Certified', 'Decision status Draft -> Certified.', 1, '2026-09-05 02:02:16'),
(15, 5, 'Publish', 'Certified', 'Published', 'Decision status Certified -> Published.', 1, '2026-09-05 02:02:20'),
(16, 6, 'Create', NULL, 'Draft', 'Decision record created from certified tally TLY-2026-0006.', 1, '2026-09-05 02:15:18'),
(17, 6, 'Record', 'Draft', 'Recorded', 'Decision status Draft -> Recorded.', 1, '2026-09-05 02:17:26'),
(18, 6, 'Certify', 'Recorded', 'Certified', 'Decision status Recorded -> Certified.', 1, '2026-09-05 02:17:43'),
(19, 7, 'Create', NULL, 'Draft', 'Decision record created from certified tally TLY-2026-0007.', 1, '2026-09-06 07:02:04'),
(20, 7, 'Certify', 'Draft', 'Certified', 'Decision status Draft -> Certified.', 1, '2026-09-06 07:02:12'),
(21, 7, 'Implementation Action', 'Certified', 'Certified', 'Decision action created. r', 1, '2026-09-06 07:02:55'),
(22, 8, 'Create', NULL, 'Draft', 'Decision record created from certified tally TLY-2026-0008.', 1, '2026-09-06 07:07:35'),
(23, 8, 'Certify', 'Draft', 'Certified', 'Decision status Draft -> Certified.', 1, '2026-09-06 07:07:38'),
(24, 8, 'AI Implementation Actions Applied', 'Certified', 'Certified', 'Applied 3 AI-recommended implementation actions.', 1, '2026-09-07 03:46:20'),
(25, 8, 'Implementation Action', 'Certified', 'Certified', 'Decision action updated. Verify and update the City Council\'s motion', 1, '2026-09-07 03:46:37'),
(26, 9, 'Create', NULL, 'Draft', 'Decision record created from certified tally TLY-2026-0010.', 1, '2026-09-07 14:40:39'),
(27, 9, 'Certify', 'Draft', 'Certified', 'Decision status Draft -> Certified.', 1, '2026-09-07 14:40:43'),
(28, 9, 'Publish', 'Certified', 'Published', 'Decision status Certified -> Published.', 1, '2026-09-07 14:40:59');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_decision_notifications`
--

CREATE TABLE `vqd_decision_notifications` (
  `id` bigint(20) NOT NULL,
  `decision_id` int(11) NOT NULL,
  `recipient_group` varchar(100) NOT NULL,
  `channel` varchar(50) DEFAULT 'System',
  `status` varchar(50) DEFAULT 'Pending',
  `sent_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_login_attempts`
--

CREATE TABLE `vqd_login_attempts` (
  `id` bigint(20) NOT NULL,
  `email_hash` char(64) NOT NULL,
  `ip_hash` char(64) NOT NULL,
  `successful` tinyint(1) NOT NULL DEFAULT 0,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_login_attempts`
--

INSERT INTO `vqd_login_attempts` (`id`, `email_hash`, `ip_hash`, `successful`, `attempted_at`) VALUES
(1, '363f2fc2b6be518b89e7c2618bd94c117c2ff2094a8b881af87999b9924ee502', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-07 07:25:43'),
(2, 'c3ac7e1715eb18c27b6b600c7c88d4e5e3db5451e51d14c8347e29f88ba59633', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-07 14:07:39'),
(3, '50831b383aca2023af837470ddde9809bf922c461f01a590be2dd902891d1c22', 'eff8e7ca506627fe15dda5e0e512fcaad70b6d520f37cc76597fdb4f2d83a1a3', 1, '2026-09-07 14:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_quorum_checks`
--

CREATE TABLE `vqd_quorum_checks` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `reference_number` varchar(100) NOT NULL,
  `quorum_rule` varchar(100) NOT NULL DEFAULT 'Majority',
  `quorum_basis` varchar(100) NOT NULL DEFAULT 'Eligible Voting Members',
  `custom_percentage` decimal(7,4) DEFAULT NULL,
  `fixed_required_count` int(11) DEFAULT NULL,
  `official_member_count` int(11) NOT NULL DEFAULT 0,
  `eligible_member_count` int(11) NOT NULL DEFAULT 0,
  `present_eligible_count` int(11) NOT NULL DEFAULT 0,
  `absent_count` int(11) NOT NULL DEFAULT 0,
  `excused_count` int(11) NOT NULL DEFAULT 0,
  `remote_present_count` int(11) NOT NULL DEFAULT 0,
  `required_count` int(11) NOT NULL DEFAULT 0,
  `quorum_result` varchar(50) NOT NULL DEFAULT 'Pending',
  `verification_status` varchar(50) NOT NULL DEFAULT 'Draft',
  `conflict_notes` text DEFAULT NULL,
  `absence_notes` text DEFAULT NULL,
  `proxy_notes` text DEFAULT NULL,
  `replacement_notes` text DEFAULT NULL,
  `certification_notes` text DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL,
  `certified_by` int(11) DEFAULT NULL,
  `certified_at` datetime DEFAULT NULL,
  `revoked_by` int(11) DEFAULT NULL,
  `revoked_at` datetime DEFAULT NULL,
  `revocation_reason` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_quorum_checks`
--

INSERT INTO `vqd_quorum_checks` (`id`, `session_id`, `legislative_item_id`, `reference_number`, `quorum_rule`, `quorum_basis`, `custom_percentage`, `fixed_required_count`, `official_member_count`, `eligible_member_count`, `present_eligible_count`, `absent_count`, `excused_count`, `remote_present_count`, `required_count`, `quorum_result`, `verification_status`, `conflict_notes`, `absence_notes`, `proxy_notes`, `replacement_notes`, `certification_notes`, `checked_by`, `checked_at`, `certified_by`, `certified_at`, `revoked_by`, `revoked_at`, `revocation_reason`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'QRM-2026-0001', 'Majority', 'Eligible Voting Members', NULL, NULL, 1, 1, 1, 0, 0, 0, 1, 'Met', 'Verified', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-25 19:13:16', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-17 09:27:27', '2026-08-25 11:13:16'),
(2, 1, NULL, 'QRM-2026-0002', 'Majority', 'Eligible Voting Members', 100.0000, 100, 1, 1, 1, 0, 0, 0, 1, 'Met', 'Certified', NULL, NULL, NULL, NULL, 'certify', 1, '2026-08-25 19:39:48', 1, '2026-08-25 20:02:31', NULL, NULL, NULL, 1, '2026-08-25 11:13:43', '2026-08-25 12:02:31'),
(3, 2, 1, 'QRM-2026-0003', 'Majority', 'Eligible Voting Members', 50.0000, 100, 5, 5, 5, 0, 0, 0, 3, 'Met', 'Certified', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-28 23:48:03', 1, '2026-08-28 23:48:09', NULL, NULL, NULL, 1, '2026-08-28 15:47:21', '2026-08-28 15:48:09'),
(4, 3, 1, 'QRM-2026-0004', 'Majority', 'Eligible Voting Members', 50.0000, 100, 7, 7, 4, 0, 0, 0, 4, 'Met', 'Certified', NULL, NULL, NULL, NULL, NULL, 1, '2026-09-02 13:01:44', 1, '2026-09-02 13:02:04', NULL, NULL, NULL, 1, '2026-09-02 04:59:55', '2026-09-02 05:02:04'),
(5, 4, 1, 'QRM-2026-0005', 'Majority', 'Eligible Voting Members', 50.0000, 100, 7, 7, 5, 0, 0, 0, 4, 'Met', 'Certified', NULL, NULL, NULL, NULL, NULL, 1, '2026-09-05 09:12:52', 1, '2026-09-05 09:13:08', NULL, NULL, NULL, 1, '2026-09-05 01:08:17', '2026-09-05 01:13:08'),
(6, 5, NULL, 'QRM-2026-0006', 'Majority', 'Eligible Voting Members', 50.0000, 100, 7, 7, 7, 0, 0, 0, 4, 'Met', 'Certified', NULL, NULL, NULL, NULL, NULL, 1, '2026-09-05 09:58:08', 1, '2026-09-05 09:58:11', NULL, NULL, NULL, 1, '2026-09-05 01:56:43', '2026-09-05 01:58:11'),
(7, 6, NULL, 'QRM-2026-0007', 'Majority', 'Official Members', 50.0000, 100, 7, 7, 7, 0, 0, 0, 4, 'Met', 'Certified', NULL, NULL, NULL, NULL, 'try', 1, '2026-09-05 10:12:11', 1, '2026-09-05 10:12:16', NULL, NULL, NULL, 1, '2026-09-05 02:11:40', '2026-09-05 02:12:16'),
(8, 7, 2, 'QRM-2026-0008', 'Majority', 'Eligible Voting Members', 50.0000, 100, 7, 7, 6, 0, 0, 0, 4, 'Met', 'Certified', NULL, NULL, NULL, NULL, NULL, 1, '2026-09-06 14:57:17', 1, '2026-09-06 14:57:22', NULL, NULL, NULL, 1, '2026-09-06 06:56:49', '2026-09-06 06:57:22'),
(9, 8, NULL, 'QRM-2026-0009', 'Majority', 'Official Members', 50.0000, 100, 7, 7, 7, 0, 0, 0, 4, 'Met', 'Certified', NULL, NULL, NULL, NULL, NULL, 1, '2026-09-07 05:39:21', 1, '2026-09-07 05:39:25', NULL, NULL, NULL, 1, '2026-09-06 21:38:43', '2026-09-06 21:39:25'),
(10, 9, 1, 'QRM-2026-0010', 'Majority', 'Official Members', 50.0000, 100, 9, 9, 9, 0, 0, 0, 5, 'Met', 'Certified', NULL, NULL, NULL, NULL, 'yes,no', 1, '2026-09-07 14:37:15', 1, '2026-09-07 14:37:17', NULL, NULL, NULL, 1, '2026-09-07 06:36:20', '2026-09-07 06:37:17'),
(11, 10, 1, 'QRM-2026-0011', 'Majority', 'Eligible Voting Members', 50.0000, 100, 9, 9, 9, 0, 0, 0, 5, 'Met', 'Certified', NULL, NULL, NULL, NULL, 'yes,no', 1, '2026-09-07 14:41:36', 1, '2026-09-07 14:41:38', NULL, NULL, NULL, 1, '2026-09-07 06:40:59', '2026-09-07 06:41:38'),
(12, 11, 1, 'QRM-2026-0012', 'Majority', 'Eligible Voting Members', 50.0000, 100, 9, 9, 9, 0, 0, 0, 5, 'Met', 'Certified', NULL, NULL, NULL, NULL, 'yes,no', 1, '2026-09-07 14:44:41', 1, '2026-09-07 14:44:43', NULL, NULL, NULL, 1, '2026-09-07 06:43:59', '2026-09-07 06:44:43'),
(17, 16, 1, 'QRM-2026-0013', 'Majority', 'Eligible Voting Members', 50.0000, 100, 9, 9, 7, 0, 0, 0, 5, 'Met', 'Certified', NULL, NULL, NULL, NULL, NULL, 1, '2026-09-07 15:23:03', 1, '2026-09-07 15:23:05', NULL, NULL, NULL, 1, '2026-09-07 07:22:00', '2026-09-07 07:23:05'),
(18, 17, 1, 'QRM-2026-0014', 'Majority', 'Official Members', 50.0000, 100, 9, 9, 5, 0, 0, 0, 5, 'Met', 'Certified', NULL, NULL, NULL, NULL, 'VOTING', 1, '2026-09-07 22:24:21', 1, '2026-09-07 22:24:59', NULL, NULL, NULL, 1, '2026-09-07 14:20:39', '2026-09-07 14:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_quorum_check_members`
--

CREATE TABLE `vqd_quorum_check_members` (
  `id` bigint(20) NOT NULL,
  `quorum_check_id` int(11) NOT NULL,
  `session_member_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `attendance_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `voting_eligibility` varchar(50) NOT NULL DEFAULT 'Eligible',
  `included_in_official_count` tinyint(1) NOT NULL DEFAULT 1,
  `included_in_quorum_count` tinyint(1) NOT NULL DEFAULT 1,
  `attendance_note` text DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_quorum_check_members`
--

INSERT INTO `vqd_quorum_check_members` (`id`, `quorum_check_id`, `session_member_id`, `user_id`, `attendance_status`, `voting_eligibility`, `included_in_official_count`, `included_in_quorum_count`, `attendance_note`, `verified_by`, `verified_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-08-17 17:28:21', '2026-08-17 09:27:27', '2026-08-17 09:28:21'),
(2, 2, 1, 1, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-08-25 19:40:21', '2026-08-25 11:13:43', '2026-08-25 11:40:21'),
(3, 3, 2, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-08-28 23:47:50', '2026-08-28 15:47:21', '2026-08-28 15:47:50'),
(4, 3, 3, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-08-28 23:47:53', '2026-08-28 15:47:21', '2026-08-28 15:47:53'),
(5, 3, 4, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-08-28 23:47:55', '2026-08-28 15:47:21', '2026-08-28 15:47:55'),
(6, 3, 5, 4, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-08-28 23:47:57', '2026-08-28 15:47:21', '2026-08-28 15:47:57'),
(7, 3, 6, 1, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-08-28 23:47:59', '2026-08-28 15:47:21', '2026-08-28 15:47:59'),
(8, 4, 7, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-02 13:00:40', '2026-09-02 04:59:55', '2026-09-02 05:00:40'),
(9, 4, 8, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-02 13:00:43', '2026-09-02 04:59:55', '2026-09-02 05:00:43'),
(10, 4, 9, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-02 13:00:46', '2026-09-02 04:59:55', '2026-09-02 05:00:46'),
(11, 4, 10, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-02 13:00:50', '2026-09-02 04:59:56', '2026-09-02 05:00:50'),
(12, 4, 11, 3, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-02 04:59:56', '2026-09-02 04:59:56'),
(13, 4, 12, 4, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-02 04:59:56', '2026-09-02 04:59:56'),
(14, 4, 13, 1, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-02 04:59:56', '2026-09-02 04:59:56'),
(15, 5, 14, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:10:56', '2026-09-05 01:08:17', '2026-09-05 01:10:56'),
(16, 5, 15, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:11:00', '2026-09-05 01:08:17', '2026-09-05 01:11:00'),
(17, 5, 16, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:11:04', '2026-09-05 01:08:17', '2026-09-05 01:11:04'),
(18, 5, 17, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:11:16', '2026-09-05 01:08:17', '2026-09-05 01:11:16'),
(19, 5, 18, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:11:19', '2026-09-05 01:08:17', '2026-09-05 01:11:19'),
(20, 5, 19, 4, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-05 01:08:17', '2026-09-05 01:08:17'),
(21, 5, 20, 1, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-05 01:08:17', '2026-09-05 01:08:17'),
(22, 6, 21, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:57:33', '2026-09-05 01:56:43', '2026-09-05 01:57:33'),
(23, 6, 22, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:57:44', '2026-09-05 01:56:43', '2026-09-05 01:57:44'),
(24, 6, 23, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:57:51', '2026-09-05 01:56:43', '2026-09-05 01:57:51'),
(25, 6, 24, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:57:53', '2026-09-05 01:56:43', '2026-09-05 01:57:53'),
(26, 6, 25, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:57:56', '2026-09-05 01:56:43', '2026-09-05 01:57:56'),
(27, 6, 26, 4, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:57:58', '2026-09-05 01:56:43', '2026-09-05 01:57:58'),
(28, 6, 27, 1, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 09:58:01', '2026-09-05 01:56:43', '2026-09-05 01:58:01'),
(29, 7, 28, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 10:11:49', '2026-09-05 02:11:40', '2026-09-05 02:11:49'),
(30, 7, 29, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 10:11:51', '2026-09-05 02:11:40', '2026-09-05 02:11:51'),
(31, 7, 30, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 10:11:55', '2026-09-05 02:11:40', '2026-09-05 02:11:55'),
(32, 7, 31, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 10:11:58', '2026-09-05 02:11:40', '2026-09-05 02:11:58'),
(33, 7, 32, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 10:12:01', '2026-09-05 02:11:40', '2026-09-05 02:12:01'),
(34, 7, 33, 4, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 10:12:03', '2026-09-05 02:11:40', '2026-09-05 02:12:03'),
(35, 7, 34, 1, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-05 10:12:06', '2026-09-05 02:11:40', '2026-09-05 02:12:06'),
(36, 8, 35, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-06 14:56:54', '2026-09-06 06:56:49', '2026-09-06 06:56:54'),
(37, 8, 36, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-06 14:56:57', '2026-09-06 06:56:49', '2026-09-06 06:56:57'),
(38, 8, 37, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-06 14:57:00', '2026-09-06 06:56:49', '2026-09-06 06:57:00'),
(39, 8, 38, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-06 14:57:03', '2026-09-06 06:56:49', '2026-09-06 06:57:03'),
(40, 8, 39, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-06 14:57:06', '2026-09-06 06:56:49', '2026-09-06 06:57:06'),
(41, 8, 40, 4, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-06 14:57:09', '2026-09-06 06:56:49', '2026-09-06 06:57:09'),
(42, 8, 41, 1, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-06 06:56:49', '2026-09-06 06:56:49'),
(43, 9, 42, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 05:38:57', '2026-09-06 21:38:43', '2026-09-06 21:38:57'),
(44, 9, 43, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 05:39:00', '2026-09-06 21:38:43', '2026-09-06 21:39:00'),
(45, 9, 44, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 05:39:04', '2026-09-06 21:38:43', '2026-09-06 21:39:04'),
(46, 9, 45, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 05:39:07', '2026-09-06 21:38:43', '2026-09-06 21:39:07'),
(47, 9, 46, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 05:39:11', '2026-09-06 21:38:43', '2026-09-06 21:39:11'),
(48, 9, 47, 4, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 05:39:15', '2026-09-06 21:38:43', '2026-09-06 21:39:15'),
(49, 9, 48, 1, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 05:39:17', '2026-09-06 21:38:43', '2026-09-06 21:39:17'),
(50, 10, 49, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:36:40', '2026-09-07 06:36:20', '2026-09-07 06:36:40'),
(51, 10, 50, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:36:43', '2026-09-07 06:36:20', '2026-09-07 06:36:43'),
(52, 10, 51, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:36:45', '2026-09-07 06:36:20', '2026-09-07 06:36:45'),
(53, 10, 52, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:36:47', '2026-09-07 06:36:20', '2026-09-07 06:36:47'),
(54, 10, 53, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:36:50', '2026-09-07 06:36:20', '2026-09-07 06:36:50'),
(55, 10, 54, 8, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:36:55', '2026-09-07 06:36:20', '2026-09-07 06:36:55'),
(56, 10, 55, 10, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:37:03', '2026-09-07 06:36:20', '2026-09-07 06:37:03'),
(57, 10, 56, 4, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:37:06', '2026-09-07 06:36:20', '2026-09-07 06:37:06'),
(58, 10, 57, 1, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:37:09', '2026-09-07 06:36:20', '2026-09-07 06:37:09'),
(59, 11, 58, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:41:09', '2026-09-07 06:40:59', '2026-09-07 06:41:09'),
(60, 11, 59, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:41:12', '2026-09-07 06:40:59', '2026-09-07 06:41:12'),
(61, 11, 60, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:41:14', '2026-09-07 06:40:59', '2026-09-07 06:41:14'),
(62, 11, 61, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:41:17', '2026-09-07 06:40:59', '2026-09-07 06:41:17'),
(63, 11, 62, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:41:19', '2026-09-07 06:40:59', '2026-09-07 06:41:19'),
(64, 11, 63, 8, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:41:24', '2026-09-07 06:40:59', '2026-09-07 06:41:24'),
(65, 11, 64, 10, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:41:26', '2026-09-07 06:40:59', '2026-09-07 06:41:26'),
(66, 11, 65, 4, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:41:29', '2026-09-07 06:40:59', '2026-09-07 06:41:29'),
(67, 11, 66, 1, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:41:32', '2026-09-07 06:40:59', '2026-09-07 06:41:32'),
(68, 12, 67, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:44:11', '2026-09-07 06:43:59', '2026-09-07 06:44:11'),
(69, 12, 68, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:44:14', '2026-09-07 06:43:59', '2026-09-07 06:44:14'),
(70, 12, 69, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:44:18', '2026-09-07 06:43:59', '2026-09-07 06:44:18'),
(71, 12, 70, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:44:23', '2026-09-07 06:43:59', '2026-09-07 06:44:23'),
(72, 12, 71, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:44:26', '2026-09-07 06:43:59', '2026-09-07 06:44:26'),
(73, 12, 72, 8, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:44:29', '2026-09-07 06:43:59', '2026-09-07 06:44:29'),
(74, 12, 73, 10, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:44:32', '2026-09-07 06:43:59', '2026-09-07 06:44:32'),
(75, 12, 74, 4, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:44:35', '2026-09-07 06:43:59', '2026-09-07 06:44:35'),
(76, 12, 75, 1, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 14:44:37', '2026-09-07 06:43:59', '2026-09-07 06:44:37'),
(85, 17, 84, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 15:22:33', '2026-09-07 07:22:00', '2026-09-07 07:22:33'),
(86, 17, 85, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 15:22:35', '2026-09-07 07:22:00', '2026-09-07 07:22:35'),
(87, 17, 86, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 15:22:38', '2026-09-07 07:22:00', '2026-09-07 07:22:38'),
(88, 17, 87, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 15:22:42', '2026-09-07 07:22:00', '2026-09-07 07:22:42'),
(89, 17, 88, 3, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 15:22:48', '2026-09-07 07:22:00', '2026-09-07 07:22:48'),
(90, 17, 89, 8, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-07 07:22:00', '2026-09-07 07:22:00'),
(91, 17, 90, 10, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 15:22:55', '2026-09-07 07:22:00', '2026-09-07 07:22:55'),
(92, 17, 91, 4, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 15:22:58', '2026-09-07 07:22:00', '2026-09-07 07:22:58'),
(93, 17, 92, 1, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-07 07:22:00', '2026-09-07 07:22:00'),
(94, 18, 93, 7, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 22:23:13', '2026-09-07 14:20:39', '2026-09-07 14:23:13'),
(95, 18, 94, 2, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 22:23:23', '2026-09-07 14:20:39', '2026-09-07 14:23:23'),
(96, 18, 95, 6, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 22:23:34', '2026-09-07 14:20:39', '2026-09-07 14:23:34'),
(97, 18, 96, 5, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 22:23:41', '2026-09-07 14:20:39', '2026-09-07 14:23:41'),
(98, 18, 97, 3, 'Pending', 'Eligible', 1, 1, NULL, 1, '2026-09-07 22:24:08', '2026-09-07 14:20:39', '2026-09-07 14:24:08'),
(99, 18, 98, 8, 'Present', 'Eligible', 1, 1, NULL, 1, '2026-09-07 22:23:48', '2026-09-07 14:20:39', '2026-09-07 14:23:48'),
(100, 18, 99, 10, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-07 14:20:39', '2026-09-07 14:20:39'),
(101, 18, 100, 4, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-07 14:20:39', '2026-09-07 14:20:39'),
(102, 18, 101, 1, 'Pending', 'Eligible', 1, 1, NULL, NULL, NULL, '2026-09-07 14:20:39', '2026-09-07 14:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_quorum_documents`
--

CREATE TABLE `vqd_quorum_documents` (
  `id` bigint(20) NOT NULL,
  `quorum_check_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Quorum Evidence',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_quorum_documents`
--

INSERT INTO `vqd_quorum_documents` (`id`, `quorum_check_id`, `file_name`, `file_path`, `document_type`, `description`, `visibility`, `uploaded_by`, `uploaded_at`) VALUES
(1, 1, 'aozi-adult-165-kg-3000-20kg.png', 'vqdss_quorum/2026/08/20260817172810_f996665851d0.png', 'Quorum Evidence', NULL, 'Internal', 1, '2026-08-17 09:28:10'),
(2, 8, 'table-of-contents-new-guide-1.docx', 'vqdss_quorum/2026/09/20260907134402_b8bd7e62c3a2.docx', 'Quorum Evidence', NULL, 'Internal', 1, '2026-09-07 05:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_quorum_history`
--

CREATE TABLE `vqd_quorum_history` (
  `id` bigint(20) NOT NULL,
  `quorum_check_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_quorum_history`
--

INSERT INTO `vqd_quorum_history` (`id`, `quorum_check_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-08-17 09:27:27'),
(2, 1, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-08-17 09:27:42'),
(3, 1, 'Roster Update', 'Verified', 'Verified', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-08-17 09:28:21'),
(4, 1, 'Verify', 'Verified', 'Verified', 'Quorum status changed from Verified to Verified.', 1, '2026-08-25 11:13:16'),
(5, 2, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-08-25 11:13:44'),
(6, 2, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-08-25 11:13:52'),
(7, 2, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-08-25 11:13:55'),
(8, 2, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-08-25 11:13:58'),
(9, 2, 'Roster Update', 'Verified', 'Verified', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-08-25 11:39:18'),
(10, 2, 'Verify', 'Verified', 'Verified', 'Quorum requirement satisfied.', 1, '2026-08-25 11:39:48'),
(11, 2, 'Roster Update', 'Verified', 'Verified', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-08-25 11:40:21'),
(12, 2, 'Certify', 'Verified', 'Certified', 'certify', 1, '2026-08-25 12:02:31'),
(13, 3, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-08-28 15:47:21'),
(14, 3, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-08-28 15:47:50'),
(15, 3, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Not Met.', 1, '2026-08-28 15:47:53'),
(16, 3, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-08-28 15:47:55'),
(17, 3, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #4; quorum=Met.', 1, '2026-08-28 15:47:57'),
(18, 3, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-08-28 15:47:59'),
(19, 3, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-08-28 15:48:03'),
(20, 3, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-08-28 15:48:09'),
(21, 4, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-02 04:59:56'),
(22, 4, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-02 05:00:40'),
(23, 4, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-02 05:00:43'),
(24, 4, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-02 05:00:46'),
(25, 4, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Met.', 1, '2026-09-02 05:00:50'),
(26, 4, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-02 05:01:44'),
(27, 4, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-02 05:02:04'),
(28, 5, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-05 01:08:17'),
(29, 5, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-05 01:10:56'),
(30, 5, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-05 01:11:00'),
(31, 5, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-05 01:11:04'),
(32, 5, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Met.', 1, '2026-09-05 01:11:11'),
(33, 5, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Met.', 1, '2026-09-05 01:11:16'),
(34, 5, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-05 01:11:19'),
(35, 5, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-05 01:12:52'),
(36, 5, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-05 01:13:08'),
(37, 6, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-05 01:56:43'),
(38, 6, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-05 01:57:33'),
(39, 6, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-05 01:57:44'),
(40, 6, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-05 01:57:47'),
(41, 6, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-05 01:57:51'),
(42, 6, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Met.', 1, '2026-09-05 01:57:53'),
(43, 6, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-05 01:57:56'),
(44, 6, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #4; quorum=Met.', 1, '2026-09-05 01:57:58'),
(45, 6, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-09-05 01:58:01'),
(46, 6, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-05 01:58:08'),
(47, 6, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-05 01:58:11'),
(48, 7, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-05 02:11:40'),
(49, 7, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-05 02:11:49'),
(50, 7, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-05 02:11:52'),
(51, 7, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-05 02:11:55'),
(52, 7, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Met.', 1, '2026-09-05 02:11:58'),
(53, 7, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-05 02:12:01'),
(54, 7, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #4; quorum=Met.', 1, '2026-09-05 02:12:03'),
(55, 7, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-09-05 02:12:06'),
(56, 7, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-05 02:12:11'),
(57, 7, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-05 02:12:16'),
(58, 8, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-06 06:56:49'),
(59, 8, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-06 06:56:54'),
(60, 8, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-06 06:56:57'),
(61, 8, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-06 06:57:00'),
(62, 8, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Met.', 1, '2026-09-06 06:57:03'),
(63, 8, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-06 06:57:06'),
(64, 8, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #4; quorum=Met.', 1, '2026-09-06 06:57:09'),
(65, 8, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-06 06:57:17'),
(66, 8, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-06 06:57:22'),
(67, 9, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-06 21:38:43'),
(68, 9, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-06 21:38:57'),
(69, 9, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-06 21:39:00'),
(70, 9, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-06 21:39:04'),
(71, 9, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Met.', 1, '2026-09-06 21:39:07'),
(72, 9, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-06 21:39:11'),
(73, 9, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #4; quorum=Met.', 1, '2026-09-06 21:39:15'),
(74, 9, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-09-06 21:39:17'),
(75, 9, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-06 21:39:21'),
(76, 9, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-06 21:39:25'),
(77, 10, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-07 06:36:20'),
(78, 10, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-07 06:36:40'),
(79, 10, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-07 06:36:43'),
(80, 10, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-07 06:36:45'),
(81, 10, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Not Met.', 1, '2026-09-07 06:36:47'),
(82, 10, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-07 06:36:50'),
(83, 10, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #8; quorum=Met.', 1, '2026-09-07 06:36:55'),
(84, 10, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #10; quorum=Met.', 1, '2026-09-07 06:37:03'),
(85, 10, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #4; quorum=Met.', 1, '2026-09-07 06:37:06'),
(86, 10, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-09-07 06:37:09'),
(87, 10, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-07 06:37:15'),
(88, 10, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-07 06:37:17'),
(89, 11, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-07 06:40:59'),
(90, 11, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-07 06:41:09'),
(91, 11, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-07 06:41:12'),
(92, 11, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-07 06:41:14'),
(93, 11, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Not Met.', 1, '2026-09-07 06:41:17'),
(94, 11, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-07 06:41:19'),
(95, 11, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #8; quorum=Met.', 1, '2026-09-07 06:41:24'),
(96, 11, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #10; quorum=Met.', 1, '2026-09-07 06:41:26'),
(97, 11, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #4; quorum=Met.', 1, '2026-09-07 06:41:29'),
(98, 11, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-09-07 06:41:32'),
(99, 11, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-07 06:41:36'),
(100, 11, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-07 06:41:38'),
(101, 12, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-07 06:43:59'),
(102, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-07 06:44:11'),
(103, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-07 06:44:14'),
(104, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-07 06:44:18'),
(105, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Not Met.', 1, '2026-09-07 06:44:20'),
(106, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Not Met.', 1, '2026-09-07 06:44:23'),
(107, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-07 06:44:25'),
(108, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-07 06:44:26'),
(109, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #8; quorum=Met.', 1, '2026-09-07 06:44:28'),
(110, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #8; quorum=Met.', 1, '2026-09-07 06:44:29'),
(111, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #10; quorum=Met.', 1, '2026-09-07 06:44:32'),
(112, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #4; quorum=Met.', 1, '2026-09-07 06:44:35'),
(113, 12, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #1; quorum=Met.', 1, '2026-09-07 06:44:37'),
(114, 12, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-07 06:44:41'),
(115, 12, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-07 06:44:43'),
(116, 17, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-07 07:22:00'),
(117, 17, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-07 07:22:32'),
(118, 17, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-07 07:22:33'),
(119, 17, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-07 07:22:35'),
(120, 17, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-07 07:22:38'),
(121, 17, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Not Met.', 1, '2026-09-07 07:22:42'),
(122, 17, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-07 07:22:48'),
(123, 17, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #10; quorum=Met.', 1, '2026-09-07 07:22:55'),
(124, 17, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #4; quorum=Met.', 1, '2026-09-07 07:22:58'),
(125, 17, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-07 07:23:03'),
(126, 17, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-07 07:23:05'),
(127, 18, 'Create', NULL, 'Draft', 'Quorum verification snapshot created from the official session roster.', 1, '2026-09-07 14:20:39'),
(128, 18, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #7; quorum=Not Met.', 1, '2026-09-07 14:23:13'),
(129, 18, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #2; quorum=Not Met.', 1, '2026-09-07 14:23:23'),
(130, 18, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #6; quorum=Not Met.', 1, '2026-09-07 14:23:34'),
(131, 18, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #5; quorum=Not Met.', 1, '2026-09-07 14:23:41'),
(132, 18, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #8; quorum=Met.', 1, '2026-09-07 14:23:48'),
(133, 18, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-07 14:23:57'),
(134, 18, 'Roster Update', 'Draft', 'Draft', 'Updated attendance/eligibility for user #3; quorum=Met.', 1, '2026-09-07 14:24:08'),
(135, 18, 'Verify', 'Draft', 'Verified', 'Quorum status changed from Draft to Verified.', 1, '2026-09-07 14:24:21'),
(136, 18, 'Certify', 'Verified', 'Certified', 'Quorum status changed from Verified to Certified.', 1, '2026-09-07 14:24:59');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_result_validations`
--

CREATE TABLE `vqd_result_validations` (
  `id` int(11) NOT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `quorum_check_id` int(11) DEFAULT NULL,
  `voting_event_id` int(11) DEFAULT NULL,
  `tally_id` int(11) DEFAULT NULL,
  `decision_id` int(11) DEFAULT NULL,
  `validation_reference` varchar(100) NOT NULL,
  `review_type` varchar(100) NOT NULL DEFAULT 'Standard Validation',
  `validation_reason` text DEFAULT NULL,
  `requesting_office_id` int(11) DEFAULT NULL,
  `lead_validator_id` int(11) DEFAULT NULL,
  `reviewed_by_id` int(11) DEFAULT NULL,
  `validation_datetime` datetime DEFAULT NULL,
  `quorum_reference` varchar(100) DEFAULT NULL,
  `voting_reference` varchar(100) DEFAULT NULL,
  `tally_reference` varchar(100) DEFAULT NULL,
  `decision_reference` varchar(100) DEFAULT NULL,
  `integrity_score` decimal(7,2) DEFAULT NULL,
  `risk_level` varchar(50) DEFAULT 'Low',
  `challenge_status` varchar(50) DEFAULT 'None',
  `validation_outcome` varchar(100) DEFAULT 'Pending',
  `overall_findings` text DEFAULT NULL,
  `corrective_action` text DEFAULT NULL,
  `management_response` text DEFAULT NULL,
  `recommendation` text DEFAULT NULL,
  `revalidation_required` tinyint(1) NOT NULL DEFAULT 0,
  `executive_summary` text DEFAULT NULL,
  `certification_statement` text DEFAULT NULL,
  `release_classification` varchar(50) DEFAULT 'Internal',
  `report_type` varchar(100) DEFAULT 'Validation Report',
  `report_format` varchar(50) DEFAULT 'PDF',
  `validation_status` varchar(50) NOT NULL DEFAULT 'Draft',
  `certified_by` int(11) DEFAULT NULL,
  `certified_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_result_validations`
--

INSERT INTO `vqd_result_validations` (`id`, `legislative_item_id`, `quorum_check_id`, `voting_event_id`, `tally_id`, `decision_id`, `validation_reference`, `review_type`, `validation_reason`, `requesting_office_id`, `lead_validator_id`, `reviewed_by_id`, `validation_datetime`, `quorum_reference`, `voting_reference`, `tally_reference`, `decision_reference`, `integrity_score`, `risk_level`, `challenge_status`, `validation_outcome`, `overall_findings`, `corrective_action`, `management_response`, `recommendation`, `revalidation_required`, `executive_summary`, `certification_statement`, `release_classification`, `report_type`, `report_format`, `validation_status`, `certified_by`, `certified_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, NULL, 2, 11, 1, 1, 'VAL-2026-0001', 'Standard Validation', NULL, 3, 2, 1, '2026-08-25 20:14:33', 'QRM-2026-0002', 'VOT-2026-0011', 'TLY-2026-0001', 'DEC-2026-0001', 88.89, 'Medium', 'None', 'Validated with Findings', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Public', 'Validation Report', 'PDF', 'Validated', NULL, NULL, 1, '2026-08-25 12:13:53', '2026-08-28 15:52:25'),
(2, 1, 3, 13, 2, 2, 'VAL-2026-0002', 'Standard Validation', NULL, 3, 1, 1, '2026-09-05 10:18:41', 'QRM-2026-0003', 'VOT-2026-0013', 'TLY-2026-0002', 'DEC-2026-0002', 88.89, 'Medium', 'None', 'Validated with Findings', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Public', 'Validation Report', 'PDF', 'Validated', NULL, NULL, 1, '2026-08-28 15:52:10', '2026-09-05 02:18:51'),
(3, 1, 4, 14, 3, 3, 'VAL-2026-0003', 'Standard Validation', NULL, 3, 1, 1, '2026-09-02 13:15:09', 'QRM-2026-0004', 'VOT-2026-0014', 'TLY-2026-0003', 'DEC-2026-0003', 88.89, 'Medium', 'None', 'Validated with Findings', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Public', 'Validation Report', 'PDF', 'Validated', NULL, NULL, 1, '2026-09-02 05:13:42', '2026-09-05 01:47:51'),
(4, NULL, 6, 16, 5, 5, 'VAL-2026-0004', 'Standard Validation', 'oioio', 2, 1, 1, '2026-09-05 10:06:14', 'QRM-2026-0006', 'VOT-2026-0016', 'TLY-2026-0005', 'DEC-2026-0005', 88.89, 'Medium', 'None', 'Validated with Findings', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Public', 'Validation Report', 'PDF', 'In Review', NULL, NULL, 1, '2026-09-05 02:03:06', '2026-09-05 02:09:30'),
(5, NULL, 7, 17, 6, 6, 'VAL-2026-0005', 'Challenge Review', NULL, NULL, 1, 1, '2026-09-05 10:21:28', 'QRM-2026-0007', 'VOT-2026-0017', 'TLY-2026-0006', 'DEC-2026-0006', 88.89, 'Medium', 'None', 'Validated with Findings', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Internal', 'Validation Report', 'PDF', 'Validated', NULL, NULL, 1, '2026-09-05 02:19:17', '2026-09-05 02:21:28'),
(6, NULL, 6, 18, 7, 7, 'VAL-2026-0006', 'Standard Validation', NULL, NULL, 1, NULL, '2026-09-06 15:03:43', 'QRM-2026-0006', 'VOT-2026-0018', 'TLY-2026-0007', 'DEC-2026-0007', 88.89, 'Medium', 'None', 'Validated with Findings', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Public', 'Validation Report', 'PDF', 'Draft', NULL, NULL, 1, '2026-09-06 07:03:43', '2026-09-06 07:03:43'),
(7, NULL, 6, 19, 8, 8, 'VAL-2026-0007', 'Standard Validation', NULL, 3, 7, 1, '2026-09-06 15:08:43', 'QRM-2026-0006', 'VOT-2026-0019', 'TLY-2026-0008', 'DEC-2026-0008', 88.89, 'Medium', 'None', 'Validated with Findings', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Public', 'Validation Report', 'PDF', 'Validated', NULL, NULL, 1, '2026-09-06 07:08:05', '2026-09-07 12:50:01'),
(8, 1, 18, 25, 10, 9, 'VAL-2026-0008', 'Standard Validation', 'finish voting', 6, 1, NULL, '2026-09-07 22:42:32', 'QRM-2026-0014', 'VOT-2026-0021', 'TLY-2026-0010', 'DEC-2026-0009', 88.89, 'Medium', 'None', 'Validated with Findings', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'Public', 'Validation Report', 'PDF', 'Draft', NULL, NULL, 1, '2026-09-07 14:42:32', '2026-09-07 14:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_schema_migrations`
--

CREATE TABLE `vqd_schema_migrations` (
  `id` int(11) NOT NULL,
  `migration_key` varchar(150) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `applied_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_schema_migrations`
--

INSERT INTO `vqd_schema_migrations` (`id`, `migration_key`, `description`, `applied_at`) VALUES
(1, '001_vqdss_foundation', 'Creates the complete VQDSS operational database foundation for quorum, voting, tallying, decisions and validation.', '2026-08-17 04:49:09'),
(2, '002_quorum_voting_tally_complete', 'Completes operational session history and ballot challenge support for Quorum, Voting and Vote Tallying.', '2026-08-17 04:49:39'),
(3, '003_decisions_validation_reports', 'Completes decision action audit history and primary tally-to-decision integrity for Decision Recording, Validation and consolidated reporting.', '2026-08-17 05:31:10'),
(4, '004_vqdss_security_rbac_final', 'Final VQDSS RBAC permissions, explicit system access, login throttling and production system activation.', '2026-08-17 05:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_sessions`
--

CREATE TABLE `vqd_sessions` (
  `id` int(11) NOT NULL,
  `reference_number` varchar(100) NOT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `session_title` varchar(255) NOT NULL,
  `session_type` varchar(100) DEFAULT 'Regular Session',
  `session_mode` varchar(50) DEFAULT 'On-site',
  `session_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `meeting_link` varchar(500) DEFAULT NULL,
  `presiding_officer_id` int(11) DEFAULT NULL,
  `secretary_user_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `closed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_sessions`
--

INSERT INTO `vqd_sessions` (`id`, `reference_number`, `legislative_item_id`, `committee_id`, `office_id`, `session_title`, `session_type`, `session_mode`, `session_date`, `start_time`, `end_time`, `venue`, `meeting_link`, `presiding_officer_id`, `secretary_user_id`, `status`, `notes`, `created_by`, `created_at`, `updated_at`, `closed_at`) VALUES
(1, 'SES-2026-0001', NULL, NULL, 2, 'Sample Quorom', 'Regular Session', 'On-site', '2026-08-21', '08:00:00', '17:00:00', 'there', NULL, 1, 1, 'Completed', NULL, 1, '2026-08-17 09:27:05', '2026-09-06 21:41:27', '2026-08-25 20:06:39'),
(2, 'SES-2026-0002', 1, 2, 3, 'Voting – Community Waste Segregation Ordinance', 'Regular Session', 'On-site', '2026-09-03', '08:00:00', '17:00:00', 'City hall', 'http://localhost/lph/login.php', 3, 4, 'Completed', 'please attend', 1, '2026-08-28 15:46:39', '2026-08-28 15:50:41', '2026-08-28 23:50:41'),
(3, 'SES-2026-0003', 1, 2, 3, 'Sample Quorom 2', 'Regular Session', 'On-site', '2026-09-17', '08:57:00', '17:57:00', 'there', 'https://meet.google.com/odz-qvey-mss', 1, 4, 'Completed', NULL, 1, '2026-09-02 04:58:46', '2026-09-02 05:10:46', '2026-09-02 13:10:46'),
(4, 'SES-2026-0004', 1, NULL, 2, 'waste management', 'Regular Session', 'On-site', '2026-09-12', '09:00:00', '10:00:00', 'manila city hall', NULL, 3, 7, 'Completed', 'sample', 1, '2026-09-05 01:04:52', '2026-09-05 01:40:59', '2026-09-05 09:40:59'),
(5, 'SES-2026-0005', NULL, 1, 2, 'traffic management', 'Regular Session', 'On-site', '2026-09-07', '10:00:00', '11:00:00', 'manila city hall', NULL, 1, 1, 'Completed', NULL, 1, '2026-09-05 01:56:06', '2026-09-06 07:06:52', '2026-09-05 10:01:37'),
(6, 'SES-2026-0006', NULL, 9, NULL, 'wirings', 'Regular Session', 'On-site', '2026-09-19', '06:10:00', '10:11:00', 'manila city hall', NULL, 1, NULL, 'Completed', NULL, 1, '2026-09-05 02:11:14', '2026-09-05 02:14:42', '2026-09-05 10:14:42'),
(7, 'SES-2026-0007', 2, 3, 6, 'traffic management', 'Regular Session', 'On-site', '2026-09-25', '03:55:00', '16:55:00', 'manila city hall', NULL, 2, 2, 'Quorum Verification', NULL, 1, '2026-09-06 06:56:29', '2026-09-06 06:56:49', NULL),
(8, 'SES-2026-0008', NULL, 1, 6, 'wirings', 'Regular Session', 'On-site', '2026-09-08', '05:37:00', '17:37:00', 'manila city hall', NULL, 4, NULL, 'Quorum Verification', NULL, 1, '2026-09-06 21:37:26', '2026-09-06 21:38:43', NULL),
(9, 'SES-2026-0009', 1, 1, 6, 'basura mo itapon mo', 'Regular Session', 'On-site', '2026-09-09', '03:34:00', '16:34:00', 'manila city hall', NULL, 6, 3, 'Quorum Verification', NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:36:20', NULL),
(10, 'SES-2026-0010', 1, 8, NULL, 'bawal mag taon ng basura', 'Special Session', 'On-site', '2026-09-10', '02:40:00', '14:40:00', 'manila city hall', NULL, 7, 2, 'Quorum Verification', NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:40:59', NULL),
(11, 'SES-2026-0011', 1, 4, 3, 'sige tapon kalang basura', 'Special Session', 'Online', '2026-09-11', '02:43:00', '14:43:00', 'manila city hall', NULL, 5, 2, 'Quorum Verification', NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:43:59', NULL),
(16, 'SES-2026-0012', 1, 3, 6, 'tapo basura ka te', 'Regular Session', 'On-site', '2026-09-26', '03:20:00', '15:20:00', 'manila city hall', NULL, 7, 2, 'Voting', NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:24:41', NULL),
(17, 'SES-2026-0013', 1, 3, 6, 'waste management 1', 'Regular Session', 'On-site', '2026-09-30', '08:00:00', '12:00:00', 'manila city hall', NULL, 8, 4, 'Completed', 'vote yes or no', 1, '2026-09-07 14:17:05', '2026-09-07 14:33:16', '2026-09-07 22:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_session_documents`
--

CREATE TABLE `vqd_session_documents` (
  `id` bigint(20) NOT NULL,
  `session_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Supporting Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_session_history`
--

CREATE TABLE `vqd_session_history` (
  `id` bigint(20) NOT NULL,
  `session_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_session_history`
--

INSERT INTO `vqd_session_history` (`id`, `session_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 9, 'Create', NULL, 'Scheduled', 'Voting session created.', 1, '2026-09-07 06:35:27'),
(2, 9, 'Quorum Verification', 'Scheduled', 'Quorum Verification', 'Created quorum check QRM-2026-0010.', 1, '2026-09-07 06:36:20'),
(3, 10, 'Create', NULL, 'Scheduled', 'Voting session created.', 1, '2026-09-07 06:40:27'),
(4, 10, 'Quorum Verification', 'Scheduled', 'Quorum Verification', 'Created quorum check QRM-2026-0011.', 1, '2026-09-07 06:40:59'),
(5, 11, 'Create', NULL, 'Scheduled', 'Voting session created.', 1, '2026-09-07 06:43:40'),
(6, 11, 'Quorum Verification', 'Scheduled', 'Quorum Verification', 'Created quorum check QRM-2026-0012.', 1, '2026-09-07 06:43:59'),
(7, 16, 'Create', NULL, 'Scheduled', 'Voting session created.', 1, '2026-09-07 07:21:47'),
(8, 16, 'Quorum Verification', 'Scheduled', 'Quorum Verification', 'Created quorum check QRM-2026-0013.', 1, '2026-09-07 07:22:00'),
(9, 17, 'Create', NULL, 'Scheduled', 'Voting session created.', 1, '2026-09-07 14:17:05'),
(10, 17, 'Quorum Verification', 'Scheduled', 'Quorum Verification', 'Created quorum check QRM-2026-0014.', 1, '2026-09-07 14:20:39');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_session_members`
--

CREATE TABLE `vqd_session_members` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `position_title` varchar(150) DEFAULT NULL,
  `membership_type` varchar(50) DEFAULT 'Member',
  `is_voting_member` tinyint(1) NOT NULL DEFAULT 1,
  `eligibility_status` varchar(50) NOT NULL DEFAULT 'Eligible',
  `eligibility_reason` text DEFAULT NULL,
  `attendance_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `attendance_source` varchar(50) DEFAULT 'Manual',
  `check_in_at` datetime DEFAULT NULL,
  `check_out_at` datetime DEFAULT NULL,
  `conflict_declared` tinyint(1) NOT NULL DEFAULT 0,
  `conflict_notes` text DEFAULT NULL,
  `proxy_notes` text DEFAULT NULL,
  `replacement_notes` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_session_members`
--

INSERT INTO `vqd_session_members` (`id`, `session_id`, `user_id`, `committee_id`, `position_title`, `membership_type`, `is_voting_member`, `eligibility_status`, `eligibility_reason`, `attendance_status`, `attendance_source`, `check_in_at`, `check_out_at`, `conflict_declared`, `conflict_notes`, `proxy_notes`, `replacement_notes`, `remarks`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-08-17 17:28:21', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-08-17 09:27:05', '2026-08-25 11:40:21'),
(2, 2, 2, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-08-28 23:47:50', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-08-28 15:46:39', '2026-08-28 15:47:50'),
(3, 2, 5, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-08-28 23:47:53', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-08-28 15:46:39', '2026-08-28 15:47:53'),
(4, 2, 3, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-08-28 23:47:55', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-08-28 15:46:39', '2026-08-28 15:47:55'),
(5, 2, 4, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-08-28 23:47:57', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-08-28 15:46:39', '2026-08-28 15:47:57'),
(6, 2, 1, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-08-28 23:47:59', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-08-28 15:46:39', '2026-08-28 15:47:59'),
(7, 3, 7, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-02 13:00:40', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-02 04:58:47', '2026-09-02 05:00:40'),
(8, 3, 2, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-02 13:00:43', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-02 04:58:47', '2026-09-02 05:00:43'),
(9, 3, 6, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-02 13:00:46', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-02 04:58:47', '2026-09-02 05:00:46'),
(10, 3, 5, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-02 13:00:50', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-02 04:58:47', '2026-09-02 05:00:50'),
(11, 3, 3, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-02 04:58:47', '2026-09-02 04:58:47'),
(12, 3, 4, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-02 04:58:47', '2026-09-02 04:58:47'),
(13, 3, 1, 2, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-02 04:58:47', '2026-09-02 04:58:47'),
(14, 4, 7, NULL, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:10:56', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:04:52', '2026-09-05 01:10:56'),
(15, 4, 2, NULL, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:11:00', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:04:52', '2026-09-05 01:11:00'),
(16, 4, 6, NULL, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:11:04', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:04:52', '2026-09-05 01:11:04'),
(17, 4, 5, NULL, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:11:11', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:04:52', '2026-09-05 01:11:16'),
(18, 4, 3, NULL, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:11:19', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:04:52', '2026-09-05 01:11:19'),
(19, 4, 4, NULL, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:04:52', '2026-09-05 01:04:52'),
(20, 4, 1, NULL, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:04:52', '2026-09-05 01:04:52'),
(21, 5, 7, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:57:33', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:56:06', '2026-09-05 01:57:33'),
(22, 5, 2, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:57:44', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:56:06', '2026-09-05 01:57:44'),
(23, 5, 6, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:57:47', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:56:06', '2026-09-05 01:57:51'),
(24, 5, 5, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:57:53', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:56:06', '2026-09-05 01:57:53'),
(25, 5, 3, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:57:56', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:56:06', '2026-09-05 01:57:56'),
(26, 5, 4, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:57:58', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:56:06', '2026-09-05 01:57:58'),
(27, 5, 1, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 09:58:01', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 01:56:06', '2026-09-05 01:58:01'),
(28, 6, 7, 9, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 10:11:49', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 02:11:14', '2026-09-05 02:11:49'),
(29, 6, 2, 9, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 10:11:52', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 02:11:14', '2026-09-05 02:11:52'),
(30, 6, 6, 9, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 10:11:55', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 02:11:14', '2026-09-05 02:11:55'),
(31, 6, 5, 9, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 10:11:58', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 02:11:14', '2026-09-05 02:11:58'),
(32, 6, 3, 9, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 10:12:01', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 02:11:14', '2026-09-05 02:12:01'),
(33, 6, 4, 9, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 10:12:03', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 02:11:14', '2026-09-05 02:12:03'),
(34, 6, 1, 9, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-05 10:12:06', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-05 02:11:14', '2026-09-05 02:12:06'),
(35, 7, 7, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-06 14:56:54', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 06:56:29', '2026-09-06 06:56:54'),
(36, 7, 2, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-06 14:56:57', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 06:56:29', '2026-09-06 06:56:57'),
(37, 7, 6, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-06 14:57:00', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 06:56:29', '2026-09-06 06:57:00'),
(38, 7, 5, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-06 14:57:03', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 06:56:29', '2026-09-06 06:57:03'),
(39, 7, 3, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-06 14:57:06', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 06:56:29', '2026-09-06 06:57:06'),
(40, 7, 4, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-06 14:57:09', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 06:56:29', '2026-09-06 06:57:09'),
(41, 7, 1, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 06:56:30', '2026-09-06 06:56:30'),
(42, 8, 7, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 05:38:57', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 21:37:26', '2026-09-06 21:38:57'),
(43, 8, 2, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 05:39:00', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 21:37:26', '2026-09-06 21:39:00'),
(44, 8, 6, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 05:39:04', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 21:37:26', '2026-09-06 21:39:04'),
(45, 8, 5, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 05:39:07', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 21:37:26', '2026-09-06 21:39:07'),
(46, 8, 3, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 05:39:11', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 21:37:26', '2026-09-06 21:39:11'),
(47, 8, 4, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 05:39:15', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 21:37:26', '2026-09-06 21:39:15'),
(48, 8, 1, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 05:39:17', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-06 21:37:26', '2026-09-06 21:39:17'),
(49, 9, 7, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:36:40', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:36:40'),
(50, 9, 2, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:36:43', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:36:43'),
(51, 9, 6, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:36:45', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:36:45'),
(52, 9, 5, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:36:47', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:36:47'),
(53, 9, 3, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:36:50', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:36:50'),
(54, 9, 8, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:36:55', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:36:55'),
(55, 9, 10, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:37:03', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:37:03'),
(56, 9, 4, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:37:06', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:37:06'),
(57, 9, 1, 1, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:37:09', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:35:27', '2026-09-07 06:37:09'),
(58, 10, 7, 8, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:41:09', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:41:09'),
(59, 10, 2, 8, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:41:12', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:41:12'),
(60, 10, 6, 8, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:41:14', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:41:14'),
(61, 10, 5, 8, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:41:17', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:41:17'),
(62, 10, 3, 8, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:41:19', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:41:19'),
(63, 10, 8, 8, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:41:24', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:41:24'),
(64, 10, 10, 8, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:41:26', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:41:26'),
(65, 10, 4, 8, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:41:29', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:41:29'),
(66, 10, 1, 8, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:41:32', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:40:27', '2026-09-07 06:41:32'),
(67, 11, 7, 4, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:44:11', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:44:11'),
(68, 11, 2, 4, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:44:14', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:44:14'),
(69, 11, 6, 4, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:44:18', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:44:18'),
(70, 11, 5, 4, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:44:20', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:44:23'),
(71, 11, 3, 4, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:44:25', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:44:26'),
(72, 11, 8, 4, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:44:28', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:44:29'),
(73, 11, 10, 4, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:44:32', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:44:32'),
(74, 11, 4, 4, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:44:35', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:44:35'),
(75, 11, 1, 4, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 14:44:37', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 06:43:40', '2026-09-07 06:44:37'),
(84, 16, 7, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 15:22:32', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:22:33'),
(85, 16, 2, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 15:22:35', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:22:35'),
(86, 16, 6, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 15:22:38', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:22:38'),
(87, 16, 5, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 15:22:42', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:22:42'),
(88, 16, 3, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 15:22:48', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:22:48'),
(89, 16, 8, 3, 'Committee Member', 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:21:47'),
(90, 16, 10, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 15:22:55', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:22:55'),
(91, 16, 4, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 15:22:58', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:22:58'),
(92, 16, 1, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 07:21:47', '2026-09-07 07:21:47'),
(93, 17, 7, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 22:23:13', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 14:17:05', '2026-09-07 14:23:13'),
(94, 17, 2, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 22:23:23', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 14:17:05', '2026-09-07 14:23:23'),
(95, 17, 6, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 22:23:34', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 14:17:05', '2026-09-07 14:23:34'),
(96, 17, 5, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 22:23:41', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 14:17:05', '2026-09-07 14:23:41'),
(97, 17, 3, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Quorum Verification', '2026-09-07 22:23:57', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 14:17:05', '2026-09-07 14:24:08'),
(98, 17, 8, 3, 'Committee Member', 'Member', 1, 'Eligible', NULL, 'Present', 'Quorum Verification', '2026-09-07 22:23:48', NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 14:17:05', '2026-09-07 14:23:48'),
(99, 17, 10, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 14:17:05', '2026-09-07 14:17:05'),
(100, 17, 4, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 14:17:05', '2026-09-07 14:17:05'),
(101, 17, 1, 3, NULL, 'Member', 1, 'Eligible', NULL, 'Pending', 'Manual', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, '2026-09-07 14:17:05', '2026-09-07 14:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_tally_documents`
--

CREATE TABLE `vqd_tally_documents` (
  `id` bigint(20) NOT NULL,
  `tally_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Tally Evidence',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_tally_history`
--

CREATE TABLE `vqd_tally_history` (
  `id` bigint(20) NOT NULL,
  `tally_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_tally_history`
--

INSERT INTO `vqd_tally_history` (`id`, `tally_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Passed; discrepancy=None.', 1, '2026-08-25 12:06:23'),
(2, 1, 'Certify', 'Computed', 'Certified', 'Tally status Computed -> Certified.', 1, '2026-08-25 12:06:39'),
(3, 2, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Passed; discrepancy=None.', 1, '2026-08-28 15:50:34'),
(4, 2, 'Certify', 'Computed', 'Certified', 'Tally status Computed -> Certified.', 1, '2026-08-28 15:50:41'),
(5, 3, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Passed; discrepancy=None.', 1, '2026-09-02 05:10:24'),
(6, 3, 'Review', 'Computed', 'Under Review', 'Tally status Computed -> Under Review.', 1, '2026-09-02 05:10:38'),
(7, 3, 'Certify', 'Under Review', 'Certified', 'Tally status Under Review -> Certified.', 1, '2026-09-02 05:10:46'),
(8, 4, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Passed; discrepancy=None.', 1, '2026-09-05 01:40:20'),
(9, 4, 'Review', 'Computed', 'Under Review', 'Tally status Computed -> Under Review.', 1, '2026-09-05 01:40:46'),
(10, 4, 'Certify', 'Under Review', 'Certified', 'Tally status Under Review -> Certified.', 1, '2026-09-05 01:40:59'),
(11, 5, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Passed; discrepancy=None.', 1, '2026-09-05 02:01:23'),
(12, 5, 'Review', 'Computed', 'Under Review', 'Tally status Computed -> Under Review.', 1, '2026-09-05 02:01:30'),
(13, 5, 'Certify', 'Under Review', 'Certified', 'Tally status Under Review -> Certified.', 1, '2026-09-05 02:01:37'),
(14, 6, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Passed; discrepancy=None.', 1, '2026-09-05 02:14:35'),
(15, 6, 'Review', 'Computed', 'Under Review', 'Tally status Computed -> Under Review.', 1, '2026-09-05 02:14:38'),
(16, 6, 'Certify', 'Under Review', 'Certified', 'Tally status Under Review -> Certified.', 1, '2026-09-05 02:14:42'),
(17, 7, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Passed; discrepancy=None.', 1, '2026-09-06 07:01:24'),
(18, 7, 'Certify', 'Computed', 'Certified', 'Tally status Computed -> Certified.', 1, '2026-09-06 07:01:32'),
(19, 8, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Passed; discrepancy=None.', 1, '2026-09-06 07:06:42'),
(20, 8, 'Review', 'Computed', 'Under Review', 'Tally status Computed -> Under Review.', 1, '2026-09-06 07:06:48'),
(21, 8, 'Certify', 'Under Review', 'Certified', 'Tally status Under Review -> Certified.', 1, '2026-09-06 07:06:52'),
(22, 9, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Failed; discrepancy=Missing Votes.', 1, '2026-09-06 21:41:13'),
(23, 9, 'Review', 'Computed', 'Under Review', 'Tally status Computed -> Under Review.', 1, '2026-09-06 21:41:24'),
(24, 9, 'Certify', 'Under Review', 'Certified', 'Tally status Under Review -> Certified.', 1, '2026-09-06 21:41:27'),
(25, 10, 'Compute', NULL, 'Computed', 'System tally computed. Outcome=Passed; discrepancy=None.', 1, '2026-09-07 14:33:08'),
(26, 10, 'Certify', 'Computed', 'Certified', 'Tally status Computed -> Certified.', 1, '2026-09-07 14:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_tally_recounts`
--

CREATE TABLE `vqd_tally_recounts` (
  `id` bigint(20) NOT NULL,
  `tally_id` int(11) NOT NULL,
  `recount_number` int(11) NOT NULL DEFAULT 1,
  `recount_method` varchar(100) NOT NULL,
  `reason` text DEFAULT NULL,
  `previous_result` varchar(100) DEFAULT NULL,
  `new_result` varchar(100) DEFAULT NULL,
  `difference_summary` text DEFAULT NULL,
  `performed_by` int(11) DEFAULT NULL,
  `performed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_validation_checks`
--

CREATE TABLE `vqd_validation_checks` (
  `id` bigint(20) NOT NULL,
  `validation_id` int(11) NOT NULL,
  `check_code` varchar(100) DEFAULT NULL,
  `check_name` varchar(255) NOT NULL,
  `check_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `check_note` text DEFAULT NULL,
  `sequence_number` int(11) NOT NULL DEFAULT 1,
  `reviewed_by` int(11) DEFAULT NULL,
  `reviewed_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_validation_checks`
--

INSERT INTO `vqd_validation_checks` (`id`, `validation_id`, `check_code`, `check_name`, `check_status`, `check_note`, `sequence_number`, `reviewed_by`, `reviewed_at`) VALUES
(1, 1, 'QRM-CERT', 'Certified quorum exists', 'Passed', 'Automatic integrity check passed.', 1, NULL, '2026-08-28 23:52:24'),
(2, 1, 'QRM-MET', 'Quorum result is Met', 'Passed', 'Automatic integrity check passed.', 2, NULL, '2026-08-28 23:52:24'),
(3, 1, 'VOTE-CLOSED', 'Voting event is Closed', 'Passed', 'Automatic integrity check passed.', 3, NULL, '2026-08-28 23:52:24'),
(4, 1, 'BALLOT-UNIQUE', 'No duplicate voter ballot records', 'Passed', 'Automatic integrity check passed.', 4, NULL, '2026-08-28 23:52:24'),
(5, 1, 'BALLOT-CHALLENGE', 'No open ballot challenges', 'Passed', 'Automatic integrity check passed.', 5, NULL, '2026-08-28 23:52:24'),
(6, 1, 'TALLY-CERT', 'Vote tally is Certified', 'Passed', 'Automatic integrity check passed.', 6, NULL, '2026-08-28 23:52:25'),
(7, 1, 'TALLY-ARITH', 'Vote arithmetic is internally consistent', 'Passed', 'Automatic integrity check passed.', 7, NULL, '2026-08-28 23:52:25'),
(8, 1, 'DECISION-CERT', 'Decision record is Certified or Published', 'Passed', 'Automatic integrity check passed.', 8, NULL, '2026-08-28 23:52:25'),
(9, 1, 'DECISION-MATCH', 'Decision vote totals match certified tally', 'Failed', 'Automatic integrity check requires review.', 9, NULL, '2026-08-28 23:52:25'),
(10, 2, 'QRM-CERT', 'Certified quorum exists', 'Passed', 'Automatic integrity check passed.', 1, NULL, '2026-09-05 10:18:51'),
(11, 2, 'QRM-MET', 'Quorum result is Met', 'Passed', 'Automatic integrity check passed.', 2, NULL, '2026-09-05 10:18:51'),
(12, 2, 'VOTE-CLOSED', 'Voting event is Closed', 'Passed', 'Automatic integrity check passed.', 3, NULL, '2026-09-05 10:18:51'),
(13, 2, 'BALLOT-UNIQUE', 'No duplicate voter ballot records', 'Passed', 'Automatic integrity check passed.', 4, NULL, '2026-09-05 10:18:51'),
(14, 2, 'BALLOT-CHALLENGE', 'No open ballot challenges', 'Passed', 'Automatic integrity check passed.', 5, NULL, '2026-09-05 10:18:51'),
(15, 2, 'TALLY-CERT', 'Vote tally is Certified', 'Passed', 'Automatic integrity check passed.', 6, NULL, '2026-09-05 10:18:51'),
(16, 2, 'TALLY-ARITH', 'Vote arithmetic is internally consistent', 'Passed', 'Automatic integrity check passed.', 7, NULL, '2026-09-05 10:18:51'),
(17, 2, 'DECISION-CERT', 'Decision record is Certified or Published', 'Passed', 'Automatic integrity check passed.', 8, NULL, '2026-09-05 10:18:51'),
(18, 2, 'DECISION-MATCH', 'Decision vote totals match certified tally', 'Failed', 'Automatic integrity check requires review.', 9, NULL, '2026-09-05 10:18:51'),
(19, 3, 'QRM-CERT', 'Certified quorum exists', 'Passed', 'Automatic integrity check passed.', 1, NULL, '2026-09-05 09:47:51'),
(20, 3, 'QRM-MET', 'Quorum result is Met', 'Passed', 'Automatic integrity check passed.', 2, NULL, '2026-09-05 09:47:51'),
(21, 3, 'VOTE-CLOSED', 'Voting event is Closed', 'Passed', 'Automatic integrity check passed.', 3, NULL, '2026-09-05 09:47:51'),
(22, 3, 'BALLOT-UNIQUE', 'No duplicate voter ballot records', 'Passed', 'Automatic integrity check passed.', 4, NULL, '2026-09-05 09:47:51'),
(23, 3, 'BALLOT-CHALLENGE', 'No open ballot challenges', 'Passed', 'Automatic integrity check passed.', 5, NULL, '2026-09-05 09:47:51'),
(24, 3, 'TALLY-CERT', 'Vote tally is Certified', 'Passed', 'Automatic integrity check passed.', 6, NULL, '2026-09-05 09:47:51'),
(25, 3, 'TALLY-ARITH', 'Vote arithmetic is internally consistent', 'Passed', 'Automatic integrity check passed.', 7, NULL, '2026-09-05 09:47:51'),
(26, 3, 'DECISION-CERT', 'Decision record is Certified or Published', 'Passed', 'Automatic integrity check passed.', 8, NULL, '2026-09-05 09:47:51'),
(27, 3, 'DECISION-MATCH', 'Decision vote totals match certified tally', 'Failed', 'Automatic integrity check requires review.', 9, NULL, '2026-09-05 09:47:51'),
(28, 4, 'QRM-CERT', 'Certified quorum exists', 'Passed', 'Automatic integrity check passed.', 1, NULL, '2026-09-05 10:09:30'),
(29, 4, 'QRM-MET', 'Quorum result is Met', 'Passed', 'Automatic integrity check passed.', 2, NULL, '2026-09-05 10:09:30'),
(30, 4, 'VOTE-CLOSED', 'Voting event is Closed', 'Passed', 'Automatic integrity check passed.', 3, NULL, '2026-09-05 10:09:30'),
(31, 4, 'BALLOT-UNIQUE', 'No duplicate voter ballot records', 'Passed', 'Automatic integrity check passed.', 4, NULL, '2026-09-05 10:09:30'),
(32, 4, 'BALLOT-CHALLENGE', 'No open ballot challenges', 'Passed', 'Automatic integrity check passed.', 5, NULL, '2026-09-05 10:09:30'),
(33, 4, 'TALLY-CERT', 'Vote tally is Certified', 'Passed', 'Automatic integrity check passed.', 6, NULL, '2026-09-05 10:09:30'),
(34, 4, 'TALLY-ARITH', 'Vote arithmetic is internally consistent', 'Passed', 'Automatic integrity check passed.', 7, NULL, '2026-09-05 10:09:30'),
(35, 4, 'DECISION-CERT', 'Decision record is Certified or Published', 'Passed', 'Automatic integrity check passed.', 8, NULL, '2026-09-05 10:09:30'),
(36, 4, 'DECISION-MATCH', 'Decision vote totals match certified tally', 'Failed', 'Automatic integrity check requires review.', 9, NULL, '2026-09-05 10:09:30'),
(37, 5, 'QRM-CERT', 'Certified quorum exists', 'Passed', 'Automatic integrity check passed.', 1, NULL, '2026-09-05 10:21:28'),
(38, 5, 'QRM-MET', 'Quorum result is Met', 'Passed', 'Automatic integrity check passed.', 2, NULL, '2026-09-05 10:21:28'),
(39, 5, 'VOTE-CLOSED', 'Voting event is Closed', 'Passed', 'Automatic integrity check passed.', 3, NULL, '2026-09-05 10:21:28'),
(40, 5, 'BALLOT-UNIQUE', 'No duplicate voter ballot records', 'Passed', 'Automatic integrity check passed.', 4, NULL, '2026-09-05 10:21:28'),
(41, 5, 'BALLOT-CHALLENGE', 'No open ballot challenges', 'Passed', 'Automatic integrity check passed.', 5, NULL, '2026-09-05 10:21:28'),
(42, 5, 'TALLY-CERT', 'Vote tally is Certified', 'Passed', 'Automatic integrity check passed.', 6, NULL, '2026-09-05 10:21:28'),
(43, 5, 'TALLY-ARITH', 'Vote arithmetic is internally consistent', 'Passed', 'Automatic integrity check passed.', 7, NULL, '2026-09-05 10:21:28'),
(44, 5, 'DECISION-CERT', 'Decision record is Certified or Published', 'Passed', 'Automatic integrity check passed.', 8, NULL, '2026-09-05 10:21:28'),
(45, 5, 'DECISION-MATCH', 'Decision vote totals match certified tally', 'Failed', 'Automatic integrity check requires review.', 9, NULL, '2026-09-05 10:21:28'),
(46, 6, 'QRM-CERT', 'Certified quorum exists', 'Passed', 'Automatic integrity check passed.', 1, NULL, '2026-09-06 15:03:43'),
(47, 6, 'QRM-MET', 'Quorum result is Met', 'Passed', 'Automatic integrity check passed.', 2, NULL, '2026-09-06 15:03:43'),
(48, 6, 'VOTE-CLOSED', 'Voting event is Closed', 'Passed', 'Automatic integrity check passed.', 3, NULL, '2026-09-06 15:03:43'),
(49, 6, 'BALLOT-UNIQUE', 'No duplicate voter ballot records', 'Passed', 'Automatic integrity check passed.', 4, NULL, '2026-09-06 15:03:43'),
(50, 6, 'BALLOT-CHALLENGE', 'No open ballot challenges', 'Passed', 'Automatic integrity check passed.', 5, NULL, '2026-09-06 15:03:43'),
(51, 6, 'TALLY-CERT', 'Vote tally is Certified', 'Passed', 'Automatic integrity check passed.', 6, NULL, '2026-09-06 15:03:43'),
(52, 6, 'TALLY-ARITH', 'Vote arithmetic is internally consistent', 'Passed', 'Automatic integrity check passed.', 7, NULL, '2026-09-06 15:03:43'),
(53, 6, 'DECISION-CERT', 'Decision record is Certified or Published', 'Passed', 'Automatic integrity check passed.', 8, NULL, '2026-09-06 15:03:43'),
(54, 6, 'DECISION-MATCH', 'Decision vote totals match certified tally', 'Failed', 'Automatic integrity check requires review.', 9, NULL, '2026-09-06 15:03:43'),
(55, 7, 'QRM-CERT', 'Certified quorum exists', 'Passed', 'Automatic integrity check passed.', 1, NULL, '2026-09-07 20:50:01'),
(56, 7, 'QRM-MET', 'Quorum result is Met', 'Passed', 'Automatic integrity check passed.', 2, NULL, '2026-09-07 20:50:01'),
(57, 7, 'VOTE-CLOSED', 'Voting event is Closed', 'Passed', 'Automatic integrity check passed.', 3, NULL, '2026-09-07 20:50:01'),
(58, 7, 'BALLOT-UNIQUE', 'No duplicate voter ballot records', 'Passed', 'Automatic integrity check passed.', 4, NULL, '2026-09-07 20:50:01'),
(59, 7, 'BALLOT-CHALLENGE', 'No open ballot challenges', 'Passed', 'Automatic integrity check passed.', 5, NULL, '2026-09-07 20:50:01'),
(60, 7, 'TALLY-CERT', 'Vote tally is Certified', 'Passed', 'Automatic integrity check passed.', 6, NULL, '2026-09-07 20:50:01'),
(61, 7, 'TALLY-ARITH', 'Vote arithmetic is internally consistent', 'Passed', 'Automatic integrity check passed.', 7, NULL, '2026-09-07 20:50:01'),
(62, 7, 'DECISION-CERT', 'Decision record is Certified or Published', 'Passed', 'Automatic integrity check passed.', 8, NULL, '2026-09-07 20:50:01'),
(63, 7, 'DECISION-MATCH', 'Decision vote totals match certified tally', 'Failed', 'Automatic integrity check requires review.', 9, NULL, '2026-09-07 20:50:01'),
(64, 8, 'QRM-CERT', 'Certified quorum exists', 'Passed', 'Automatic integrity check passed.', 1, NULL, '2026-09-07 22:42:32'),
(65, 8, 'QRM-MET', 'Quorum result is Met', 'Passed', 'Automatic integrity check passed.', 2, NULL, '2026-09-07 22:42:32'),
(66, 8, 'VOTE-CLOSED', 'Voting event is Closed', 'Passed', 'Automatic integrity check passed.', 3, NULL, '2026-09-07 22:42:32'),
(67, 8, 'BALLOT-UNIQUE', 'No duplicate voter ballot records', 'Passed', 'Automatic integrity check passed.', 4, NULL, '2026-09-07 22:42:32'),
(68, 8, 'BALLOT-CHALLENGE', 'No open ballot challenges', 'Passed', 'Automatic integrity check passed.', 5, NULL, '2026-09-07 22:42:32'),
(69, 8, 'TALLY-CERT', 'Vote tally is Certified', 'Passed', 'Automatic integrity check passed.', 6, NULL, '2026-09-07 22:42:32'),
(70, 8, 'TALLY-ARITH', 'Vote arithmetic is internally consistent', 'Passed', 'Automatic integrity check passed.', 7, NULL, '2026-09-07 22:42:32'),
(71, 8, 'DECISION-CERT', 'Decision record is Certified or Published', 'Passed', 'Automatic integrity check passed.', 8, NULL, '2026-09-07 22:42:32'),
(72, 8, 'DECISION-MATCH', 'Decision vote totals match certified tally', 'Failed', 'Automatic integrity check requires review.', 9, NULL, '2026-09-07 22:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_validation_documents`
--

CREATE TABLE `vqd_validation_documents` (
  `id` bigint(20) NOT NULL,
  `validation_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Validation Evidence',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_validation_findings`
--

CREATE TABLE `vqd_validation_findings` (
  `id` bigint(20) NOT NULL,
  `validation_id` int(11) NOT NULL,
  `finding_title` varchar(255) NOT NULL,
  `finding_description` text DEFAULT NULL,
  `severity` varchar(50) NOT NULL DEFAULT 'Low',
  `responsible_office_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Open',
  `corrective_action` text DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `resolved_by` int(11) DEFAULT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_validation_history`
--

CREATE TABLE `vqd_validation_history` (
  `id` bigint(20) NOT NULL,
  `validation_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_validation_history`
--

INSERT INTO `vqd_validation_history` (`id`, `validation_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create', NULL, 'Draft', 'Validation VAL-2026-0001 created from decision DEC-2026-0001; integrity=88.89.', 1, '2026-08-25 12:13:54'),
(2, 1, 'Validate', 'Draft', 'Validated', 'Validation Draft -> Validated; integrity=88.89%; risk=Medium; outcome=Validated with Findings.', 1, '2026-08-25 12:14:33'),
(3, 2, 'Create', NULL, 'Draft', 'Validation VAL-2026-0002 created from decision DEC-2026-0002; integrity=88.89.', 1, '2026-08-28 15:52:10'),
(4, 3, 'Create', NULL, 'Draft', 'Validation VAL-2026-0003 created from decision DEC-2026-0003; integrity=88.89.', 1, '2026-09-02 05:13:43'),
(5, 3, 'Validate', 'Draft', 'Validated', 'Validation Draft -> Validated; integrity=88.89%; risk=Medium; outcome=Validated with Findings.', 1, '2026-09-02 05:15:09'),
(6, 4, 'Create', NULL, 'Draft', 'Validation VAL-2026-0004 created from decision DEC-2026-0005; integrity=88.89.', 1, '2026-09-05 02:03:06'),
(7, 4, 'Review', 'Draft', 'In Review', 'Validation Draft -> In Review; integrity=88.89%; risk=Medium; outcome=Validated with Findings.', 1, '2026-09-05 02:06:14'),
(8, 2, 'Validate', 'Draft', 'Validated', 'Validation Draft -> Validated; integrity=88.89%; risk=Medium; outcome=Validated with Findings.', 1, '2026-09-05 02:18:41'),
(9, 5, 'Create', NULL, 'Draft', 'Validation VAL-2026-0005 created from decision DEC-2026-0006; integrity=88.89.', 1, '2026-09-05 02:19:17'),
(10, 5, 'Validate', 'Draft', 'Validated', 'Validation Draft -> Validated; integrity=88.89%; risk=Medium; outcome=Validated with Findings.', 1, '2026-09-05 02:21:28'),
(11, 6, 'Create', NULL, 'Draft', 'Validation VAL-2026-0006 created from decision DEC-2026-0007; integrity=88.89.', 1, '2026-09-06 07:03:43'),
(12, 7, 'Create', NULL, 'Draft', 'Validation VAL-2026-0007 created from decision DEC-2026-0008; integrity=88.89.', 1, '2026-09-06 07:08:05'),
(13, 7, 'Validate', 'Draft', 'Validated', 'Validation Draft -> Validated; integrity=88.89%; risk=Medium; outcome=Validated with Findings.', 1, '2026-09-06 07:08:43'),
(14, 8, 'Create', NULL, 'Draft', 'Validation VAL-2026-0008 created from decision DEC-2026-0009; integrity=88.89.', 1, '2026-09-07 14:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_validation_reports`
--

CREATE TABLE `vqd_validation_reports` (
  `id` bigint(20) NOT NULL,
  `validation_id` int(11) NOT NULL,
  `report_type` varchar(100) NOT NULL DEFAULT 'Validation Report',
  `report_format` varchar(50) NOT NULL DEFAULT 'PDF',
  `version_number` int(11) NOT NULL DEFAULT 1,
  `report_reference` varchar(100) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(500) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `generated_by` int(11) DEFAULT NULL,
  `generated_at` datetime DEFAULT NULL,
  `released_by` int(11) DEFAULT NULL,
  `released_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_votes`
--

CREATE TABLE `vqd_votes` (
  `id` bigint(20) NOT NULL,
  `voting_event_id` int(11) NOT NULL,
  `event_voter_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `vote_value` varchar(150) DEFAULT NULL,
  `ballot_reference` varchar(100) DEFAULT NULL,
  `cast_channel` varchar(50) NOT NULL DEFAULT 'Manual',
  `is_secret` tinyint(1) NOT NULL DEFAULT 0,
  `is_valid` tinyint(1) NOT NULL DEFAULT 1,
  `invalid_reason` text DEFAULT NULL,
  `cast_by` int(11) DEFAULT NULL,
  `cast_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_votes`
--

INSERT INTO `vqd_votes` (`id`, `voting_event_id`, `event_voter_id`, `user_id`, `option_id`, `vote_value`, `ballot_reference`, `cast_channel`, `is_secret`, `is_valid`, `invalid_reason`, `cast_by`, `cast_at`, `updated_at`) VALUES
(1, 11, 11, 1, 31, 'Yes', 'BLL-2026-46226DFA784A', 'Electronic', 0, 1, NULL, 1, '2026-08-25 20:05:39', '2026-08-25 12:05:39'),
(2, 13, 13, 2, 37, 'Yes', 'BLL-2026-1EB84050E822', 'Manual', 0, 1, NULL, 1, '2026-08-28 23:49:31', '2026-08-28 15:49:31'),
(3, 13, 14, 5, 37, 'Yes', 'BLL-2026-155921886CB3', 'Manual', 0, 1, NULL, 1, '2026-08-28 23:49:35', '2026-08-28 15:49:35'),
(4, 13, 15, 3, 37, 'Yes', 'BLL-2026-F18D54891867', 'Manual', 0, 1, NULL, 1, '2026-08-28 23:49:39', '2026-08-28 15:49:39'),
(5, 13, 16, 4, 37, 'Yes', 'BLL-2026-F8A06FBC4964', 'Manual', 0, 1, NULL, 1, '2026-08-28 23:49:43', '2026-08-28 15:49:43'),
(6, 13, 17, 1, 38, 'No', 'BLL-2026-9CB19D728A3D', 'Manual', 0, 1, NULL, 1, '2026-08-28 23:49:47', '2026-08-28 15:49:47'),
(7, 14, 19, 2, 40, 'Yes', 'BLL-2026-FD452D17D78C', 'Electronic', 0, 1, NULL, 2, '2026-09-02 13:08:27', '2026-09-02 05:08:27'),
(8, 14, 18, 7, 40, 'Yes', 'BLL-2026-66CACCC1F717', 'Manual', 0, 1, NULL, 1, '2026-09-02 13:09:36', '2026-09-02 05:09:36'),
(9, 14, 20, 6, 40, 'Yes', 'BLL-2026-5077066D9804', 'Manual', 0, 1, NULL, 1, '2026-09-02 13:09:42', '2026-09-02 05:09:42'),
(10, 14, 21, 5, 41, 'No', 'BLL-2026-F04AC8DAD456', 'Manual', 0, 1, NULL, 1, '2026-09-02 13:09:48', '2026-09-02 05:09:48'),
(11, 15, 22, 7, 42, 'Yes', 'BLL-2026-52A4F8DDB067', 'Manual', 0, 1, NULL, 1, '2026-09-05 09:39:06', '2026-09-05 01:39:06'),
(12, 15, 23, 2, 42, 'Yes', 'BLL-2026-E7A50162F1E4', 'Manual', 0, 1, NULL, 1, '2026-09-05 09:39:16', '2026-09-05 01:39:16'),
(13, 15, 24, 6, 42, 'Yes', 'BLL-2026-9A3FA72DE05E', 'Manual', 0, 1, NULL, 1, '2026-09-05 09:39:24', '2026-09-05 01:39:24'),
(14, 15, 25, 5, 42, 'Yes', 'BLL-2026-03A1B65190D6', 'Manual', 0, 1, NULL, 1, '2026-09-05 09:39:36', '2026-09-05 01:39:36'),
(15, 15, 26, 3, 42, 'Yes', 'BLL-2026-968F70D1AF3F', 'Manual', 0, 1, NULL, 1, '2026-09-05 09:39:45', '2026-09-05 01:39:45'),
(16, 16, 27, 7, 45, 'Yes', 'BLL-2026-92F17943910C', 'Manual', 0, 1, NULL, 1, '2026-09-05 09:59:59', '2026-09-05 01:59:59'),
(17, 16, 28, 2, 45, 'Yes', 'BLL-2026-003B931D9A03', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:00:05', '2026-09-05 02:00:05'),
(18, 16, 29, 6, 45, 'Yes', 'BLL-2026-CDC2A54C11BD', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:00:13', '2026-09-05 02:00:13'),
(19, 16, 30, 5, 45, 'Yes', 'BLL-2026-C2B1661632CA', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:00:19', '2026-09-05 02:00:19'),
(20, 16, 31, 3, 45, 'Yes', 'BLL-2026-8021A2AA1435', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:00:25', '2026-09-05 02:00:25'),
(21, 16, 32, 4, 45, 'Yes', 'BLL-2026-1DDC484D60F6', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:00:33', '2026-09-05 02:00:33'),
(22, 16, 33, 1, 45, 'Yes', 'BLL-2026-B7DB3FF79D39', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:00:39', '2026-09-05 02:00:39'),
(23, 17, 34, 7, 48, 'Yes', 'BLL-2026-D2A1583B54CC', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:13:32', '2026-09-05 02:13:32'),
(24, 17, 35, 2, 48, 'Yes', 'BLL-2026-F1971A504E1B', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:13:39', '2026-09-05 02:13:39'),
(25, 17, 36, 6, 48, 'Yes', 'BLL-2026-8F9CE4E09EEC', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:13:47', '2026-09-05 02:13:47'),
(26, 17, 37, 5, 48, 'Yes', 'BLL-2026-78A8A97B6D20', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:13:54', '2026-09-05 02:13:54'),
(27, 17, 38, 3, 48, 'Yes', 'BLL-2026-2867D17F248F', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:14:02', '2026-09-05 02:14:02'),
(28, 17, 39, 4, 48, 'Yes', 'BLL-2026-736389AB32C9', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:14:10', '2026-09-05 02:14:10'),
(29, 17, 40, 1, 48, 'Yes', 'BLL-2026-EF9AD2C3B817', 'Manual', 0, 1, NULL, 1, '2026-09-05 10:14:17', '2026-09-05 02:14:17'),
(30, 18, 41, 7, 51, 'Yes', 'BLL-2026-2D0A52383692', 'Manual', 0, 1, NULL, 1, '2026-09-06 14:59:51', '2026-09-06 06:59:51'),
(31, 18, 42, 2, 51, 'Yes', 'BLL-2026-CEA96F7E7DD3', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:00:09', '2026-09-06 07:00:09'),
(32, 18, 43, 6, 51, 'Yes', 'BLL-2026-D0D61EFBB657', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:00:16', '2026-09-06 07:00:16'),
(33, 18, 44, 5, 51, 'Yes', 'BLL-2026-9F0A041AF241', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:00:21', '2026-09-06 07:00:21'),
(34, 18, 45, 3, 51, 'Yes', 'BLL-2026-2CF7BEA397D9', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:00:31', '2026-09-06 07:00:31'),
(35, 18, 46, 4, 51, 'Yes', 'BLL-2026-514DD54DFCB0', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:00:41', '2026-09-06 07:00:41'),
(36, 18, 47, 1, 51, 'Yes', 'BLL-2026-CD2794342E98', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:00:57', '2026-09-06 07:00:57'),
(37, 19, 48, 7, 54, 'Yes', 'BLL-2026-A50BB92D8043', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:06:03', '2026-09-06 07:06:03'),
(38, 19, 49, 2, 55, 'No', 'BLL-2026-8D5800044A61', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:06:09', '2026-09-06 07:06:09'),
(39, 19, 50, 6, 54, 'Yes', 'BLL-2026-50CCDC2DFED0', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:06:14', '2026-09-06 07:06:14'),
(40, 19, 51, 5, 54, 'Yes', 'BLL-2026-894F5FB87D7A', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:06:19', '2026-09-06 07:06:19'),
(41, 19, 52, 3, 54, 'Yes', 'BLL-2026-8A0DF0F768D3', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:06:24', '2026-09-06 07:06:24'),
(42, 19, 53, 4, 54, 'Yes', 'BLL-2026-2A39EC11C2CC', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:06:29', '2026-09-06 07:06:29'),
(43, 19, 54, 1, 54, 'Yes', 'BLL-2026-8CDE95667A46', 'Manual', 0, 1, NULL, 1, '2026-09-06 15:06:33', '2026-09-06 07:06:33'),
(45, 24, 66, 10, 66, 'Yes', 'BLL-2026-22173685EE63', 'Electronic', 0, 1, NULL, 10, '2026-09-07 15:26:05', '2026-09-07 07:26:05'),
(46, 24, 65, 3, 66, 'Yes', 'BLL-2026-8744873204A0', 'Manual', 0, 1, NULL, 1, '2026-09-07 15:27:07', '2026-09-07 07:27:07'),
(47, 10, 10, 1, 28, 'Yes', 'BLL-2026-57FE143D37CA', 'Electronic', 0, 1, NULL, 1, '2026-09-07 20:48:47', '2026-09-07 12:48:47'),
(48, 25, 68, 7, 69, 'Yes', 'BLL-2026-60CD80423619', 'Manual', 0, 1, NULL, 1, '2026-09-07 22:28:34', '2026-09-07 14:28:34'),
(49, 25, 72, 8, 69, 'Yes', 'BLL-2026-D53082EF16D3', 'Electronic', 0, 1, NULL, 8, '2026-09-07 22:31:07', '2026-09-07 14:31:07'),
(50, 25, 69, 2, 69, 'Yes', 'BLL-2026-0E2083CB0325', 'Manual', 0, 1, NULL, 1, '2026-09-07 22:31:53', '2026-09-07 14:31:53'),
(51, 25, 70, 6, 69, 'Yes', 'BLL-2026-AAA0B1C51C99', 'Manual', 0, 1, NULL, 1, '2026-09-07 22:32:15', '2026-09-07 14:32:15'),
(52, 25, 71, 5, 69, 'Yes', 'BLL-2026-7E86DB11D206', 'Manual', 0, 1, NULL, 1, '2026-09-07 22:32:21', '2026-09-07 14:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_vote_options`
--

CREATE TABLE `vqd_vote_options` (
  `id` int(11) NOT NULL,
  `voting_event_id` int(11) NOT NULL,
  `option_code` varchar(50) DEFAULT NULL,
  `option_label` varchar(150) NOT NULL,
  `option_category` varchar(50) DEFAULT 'Choice',
  `option_description` text DEFAULT NULL,
  `sequence_number` int(11) NOT NULL DEFAULT 1,
  `is_affirmative` tinyint(1) NOT NULL DEFAULT 0,
  `is_abstention` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_vote_options`
--

INSERT INTO `vqd_vote_options` (`id`, `voting_event_id`, `option_code`, `option_label`, `option_category`, `option_description`, `sequence_number`, `is_affirmative`, `is_abstention`, `is_active`) VALUES
(1, 1, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(2, 1, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(3, 1, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(4, 2, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(5, 2, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(6, 2, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(7, 3, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(8, 3, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(9, 3, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(10, 4, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(11, 4, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(12, 4, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(13, 5, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(14, 5, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(15, 5, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(16, 6, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(17, 6, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(18, 6, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(19, 7, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(20, 7, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(21, 7, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(22, 8, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(23, 8, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(24, 8, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(25, 9, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(26, 9, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(27, 9, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(28, 10, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(29, 10, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(30, 10, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(31, 11, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(32, 11, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(33, 11, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(34, 12, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(35, 12, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(36, 12, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(37, 13, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(38, 13, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(39, 13, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(40, 14, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(41, 14, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(42, 15, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(43, 15, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(44, 15, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(45, 16, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(46, 16, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(47, 16, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(48, 17, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(49, 17, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(50, 17, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(51, 18, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(52, 18, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(53, 18, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(54, 19, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(55, 19, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(56, 19, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(66, 24, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(67, 24, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(68, 24, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1),
(69, 25, 'YES', 'Yes', 'Affirmative', NULL, 1, 1, 0, 1),
(70, 25, 'NO', 'No', 'Negative', NULL, 2, 0, 0, 1),
(71, 25, 'ABSTAIN', 'Abstain', 'Abstention', NULL, 3, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vqd_vote_tallies`
--

CREATE TABLE `vqd_vote_tallies` (
  `id` int(11) NOT NULL,
  `voting_event_id` int(11) NOT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `reference_number` varchar(100) NOT NULL,
  `voting_session_reference` varchar(100) DEFAULT NULL,
  `vote_source` varchar(100) DEFAULT 'System Votes',
  `tally_datetime` datetime DEFAULT NULL,
  `tally_officer_id` int(11) DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `eligible_voters` int(11) NOT NULL DEFAULT 0,
  `votes_cast` int(11) NOT NULL DEFAULT 0,
  `valid_votes` int(11) NOT NULL DEFAULT 0,
  `invalid_ballots` int(11) NOT NULL DEFAULT 0,
  `challenged_ballots` int(11) NOT NULL DEFAULT 0,
  `missing_votes` int(11) NOT NULL DEFAULT 0,
  `affirmative_votes` int(11) NOT NULL DEFAULT 0,
  `negative_votes` int(11) NOT NULL DEFAULT 0,
  `abstain_votes` int(11) NOT NULL DEFAULT 0,
  `decision_threshold` varchar(100) DEFAULT 'Simple Majority',
  `fixed_required_votes` int(11) DEFAULT NULL,
  `required_votes` int(11) NOT NULL DEFAULT 0,
  `result_outcome` varchar(100) DEFAULT 'Pending',
  `result_statement` text DEFAULT NULL,
  `discrepancy_classification` varchar(100) DEFAULT 'None',
  `audit_findings` text DEFAULT NULL,
  `recount_status` varchar(50) DEFAULT 'Not Required',
  `recount_method` varchar(100) DEFAULT NULL,
  `recount_notes` text DEFAULT NULL,
  `decision_handoff` varchar(50) DEFAULT 'Pending',
  `tally_status` varchar(50) NOT NULL DEFAULT 'Draft',
  `certified_by` int(11) DEFAULT NULL,
  `certified_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_vote_tallies`
--

INSERT INTO `vqd_vote_tallies` (`id`, `voting_event_id`, `legislative_item_id`, `reference_number`, `voting_session_reference`, `vote_source`, `tally_datetime`, `tally_officer_id`, `reviewer_id`, `eligible_voters`, `votes_cast`, `valid_votes`, `invalid_ballots`, `challenged_ballots`, `missing_votes`, `affirmative_votes`, `negative_votes`, `abstain_votes`, `decision_threshold`, `fixed_required_votes`, `required_votes`, `result_outcome`, `result_statement`, `discrepancy_classification`, `audit_findings`, `recount_status`, `recount_method`, `recount_notes`, `decision_handoff`, `tally_status`, `certified_by`, `certified_at`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 11, NULL, 'TLY-2026-0001', 'VOT-2026-0011', 'System Votes', '2026-08-25 20:06:22', 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 'Simple Majority', 100, 1, 'Passed', 'Motion passed with 1 affirmative vote(s); 1 required.', 'None', 'No tally integrity discrepancy detected.', 'Not Required', NULL, NULL, 'Completed', 'Certified', 1, '2026-08-25 20:06:39', 1, '2026-08-25 12:06:22', '2026-08-25 12:08:35'),
(2, 13, 1, 'TLY-2026-0002', 'VOT-2026-0013', 'System Votes', '2026-08-28 23:50:34', 1, 1, 5, 5, 5, 0, 0, 0, 4, 1, 0, 'Simple Majority', 5, 3, 'Passed', 'Motion passed with 4 affirmative vote(s); 3 required.', 'None', 'No tally integrity discrepancy detected.', 'Not Required', NULL, NULL, 'Completed', 'Certified', 1, '2026-08-28 23:50:41', 1, '2026-08-28 15:50:34', '2026-08-28 15:51:34'),
(3, 14, 1, 'TLY-2026-0003', 'VOT-2026-0014', 'System Votes', '2026-09-02 13:10:24', 1, 1, 4, 4, 4, 0, 0, 0, 3, 1, 0, 'Simple Majority', 100, 3, 'Passed', 'Motion passed with 3 affirmative vote(s); 3 required.', 'None', 'No tally integrity discrepancy detected.', 'Not Required', NULL, NULL, 'Completed', 'Certified', 1, '2026-09-02 13:10:46', 1, '2026-09-02 05:10:24', '2026-09-02 05:12:55'),
(4, 15, 1, 'TLY-2026-0004', 'VOT-2026-0015', 'System Votes', '2026-09-05 09:40:20', 1, 1, 5, 5, 5, 0, 0, 0, 5, 0, 0, 'Simple Majority', 100, 3, 'Passed', 'Motion passed with 5 affirmative vote(s); 3 required.', 'None', 'No tally integrity discrepancy detected.', 'Not Required', NULL, NULL, 'Completed', 'Certified', 1, '2026-09-05 09:40:59', 1, '2026-09-05 01:40:20', '2026-09-05 01:45:15'),
(5, 16, NULL, 'TLY-2026-0005', 'VOT-2026-0016', 'System Votes', '2026-09-05 10:01:23', 1, 1, 7, 7, 7, 0, 0, 0, 7, 0, 0, 'Simple Majority', 100, 4, 'Passed', 'Motion passed with 7 affirmative vote(s); 4 required.', 'None', 'No tally integrity discrepancy detected.', 'Not Required', NULL, NULL, 'Completed', 'Certified', 1, '2026-09-05 10:01:37', 1, '2026-09-05 02:01:23', '2026-09-05 02:02:16'),
(6, 17, NULL, 'TLY-2026-0006', 'VOT-2026-0017', 'System Votes', '2026-09-05 10:14:35', 1, 1, 7, 7, 7, 0, 0, 0, 7, 0, 0, 'Simple Majority', 100, 4, 'Passed', 'Motion passed with 7 affirmative vote(s); 4 required.', 'None', 'No tally integrity discrepancy detected.', 'Not Required', NULL, NULL, 'Completed', 'Certified', 1, '2026-09-05 10:14:42', 1, '2026-09-05 02:14:35', '2026-09-05 02:17:43'),
(7, 18, NULL, 'TLY-2026-0007', 'VOT-2026-0018', 'System Votes', '2026-09-06 15:01:24', 1, 1, 7, 7, 7, 0, 0, 0, 7, 0, 0, 'Simple Majority', NULL, 4, 'Passed', 'Motion passed with 7 affirmative vote(s); 4 required.', 'None', 'No tally integrity discrepancy detected.', 'Not Required', NULL, NULL, 'Completed', 'Certified', 1, '2026-09-06 15:01:32', 1, '2026-09-06 07:01:24', '2026-09-06 07:02:12'),
(8, 19, NULL, 'TLY-2026-0008', 'VOT-2026-0019', 'System Votes', '2026-09-06 15:06:41', 1, 1, 7, 7, 7, 0, 0, 0, 6, 1, 0, 'Simple Majority', NULL, 4, 'Passed', 'Motion passed with 6 affirmative vote(s); 4 required.', 'None', 'No tally integrity discrepancy detected.', 'Not Required', NULL, NULL, 'Completed', 'Certified', 1, '2026-09-06 15:06:52', 1, '2026-09-06 07:06:41', '2026-09-06 07:07:38'),
(9, 8, NULL, 'TLY-2026-0009', 'VOT-2026-0008', 'System Votes', '2026-09-07 05:41:13', 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 'Simple Majority', 100, 0, 'Failed', 'Motion did not reach the required threshold. 0 affirmative vote(s); 0 required.', 'Missing Votes', '1 eligible voter(s) did not cast a vote.', 'Not Required', NULL, NULL, 'Ready', 'Certified', 1, '2026-09-07 05:41:27', 1, '2026-09-06 21:41:13', '2026-09-06 21:41:27'),
(10, 25, 1, 'TLY-2026-0010', 'VOT-2026-0021', 'System Votes', '2026-09-07 22:33:08', 1, 1, 5, 5, 5, 0, 0, 0, 5, 0, 0, 'Simple Majority', 100, 3, 'Passed', 'Motion passed with 5 affirmative vote(s); 3 required.', 'None', 'No tally integrity discrepancy detected.', 'Not Required', NULL, NULL, 'Completed', 'Certified', 1, '2026-09-07 22:33:16', 1, '2026-09-07 14:33:08', '2026-09-07 14:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_vote_tally_options`
--

CREATE TABLE `vqd_vote_tally_options` (
  `id` bigint(20) NOT NULL,
  `tally_id` int(11) NOT NULL,
  `option_id` int(11) DEFAULT NULL,
  `option_label` varchar(150) NOT NULL,
  `option_category` varchar(50) DEFAULT 'Choice',
  `vote_count` int(11) NOT NULL DEFAULT 0,
  `percentage` decimal(7,4) NOT NULL DEFAULT 0.0000,
  `option_note` text DEFAULT NULL,
  `sequence_number` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_vote_tally_options`
--

INSERT INTO `vqd_vote_tally_options` (`id`, `tally_id`, `option_id`, `option_label`, `option_category`, `vote_count`, `percentage`, `option_note`, `sequence_number`) VALUES
(1, 1, 31, 'Yes', 'Affirmative', 1, 100.0000, NULL, 1),
(2, 1, 32, 'No', 'Negative', 0, 0.0000, NULL, 2),
(3, 1, 33, 'Abstain', 'Abstention', 0, 0.0000, NULL, 3),
(4, 2, 37, 'Yes', 'Affirmative', 4, 80.0000, NULL, 1),
(5, 2, 38, 'No', 'Negative', 1, 20.0000, NULL, 2),
(6, 2, 39, 'Abstain', 'Abstention', 0, 0.0000, NULL, 3),
(7, 3, 40, 'Yes', 'Affirmative', 3, 75.0000, NULL, 1),
(8, 3, 41, 'No', 'Negative', 1, 25.0000, NULL, 2),
(9, 4, 42, 'Yes', 'Affirmative', 5, 100.0000, NULL, 1),
(10, 4, 43, 'No', 'Negative', 0, 0.0000, NULL, 2),
(11, 4, 44, 'Abstain', 'Abstention', 0, 0.0000, NULL, 3),
(12, 5, 45, 'Yes', 'Affirmative', 7, 100.0000, NULL, 1),
(13, 5, 46, 'No', 'Negative', 0, 0.0000, NULL, 2),
(14, 5, 47, 'Abstain', 'Abstention', 0, 0.0000, NULL, 3),
(15, 6, 48, 'Yes', 'Affirmative', 7, 100.0000, NULL, 1),
(16, 6, 49, 'No', 'Negative', 0, 0.0000, NULL, 2),
(17, 6, 50, 'Abstain', 'Abstention', 0, 0.0000, NULL, 3),
(18, 7, 51, 'Yes', 'Affirmative', 7, 100.0000, NULL, 1),
(19, 7, 52, 'No', 'Negative', 0, 0.0000, NULL, 2),
(20, 7, 53, 'Abstain', 'Abstention', 0, 0.0000, NULL, 3),
(21, 8, 54, 'Yes', 'Affirmative', 6, 85.7143, NULL, 1),
(22, 8, 55, 'No', 'Negative', 1, 14.2857, NULL, 2),
(23, 8, 56, 'Abstain', 'Abstention', 0, 0.0000, NULL, 3),
(24, 9, 22, 'Yes', 'Affirmative', 0, 0.0000, NULL, 1),
(25, 9, 23, 'No', 'Negative', 0, 0.0000, NULL, 2),
(26, 9, 24, 'Abstain', 'Abstention', 0, 0.0000, NULL, 3),
(27, 10, 69, 'Yes', 'Affirmative', 5, 100.0000, NULL, 1),
(28, 10, 70, 'No', 'Negative', 0, 0.0000, NULL, 2),
(29, 10, 71, 'Abstain', 'Abstention', 0, 0.0000, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vqd_voting_documents`
--

CREATE TABLE `vqd_voting_documents` (
  `id` bigint(20) NOT NULL,
  `voting_event_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(500) NOT NULL,
  `document_type` varchar(100) NOT NULL DEFAULT 'Voting Document',
  `description` text DEFAULT NULL,
  `visibility` varchar(30) NOT NULL DEFAULT 'Internal',
  `uploaded_by` int(11) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vqd_voting_events`
--

CREATE TABLE `vqd_voting_events` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `quorum_check_id` int(11) DEFAULT NULL,
  `legislative_item_id` int(11) DEFAULT NULL,
  `committee_id` int(11) DEFAULT NULL,
  `office_id` int(11) DEFAULT NULL,
  `reference_number` varchar(100) NOT NULL,
  `motion_text` text NOT NULL,
  `procedural_basis` text DEFAULT NULL,
  `voting_method` varchar(50) NOT NULL DEFAULT 'Manual',
  `vote_visibility` varchar(50) NOT NULL DEFAULT 'Recorded',
  `decision_threshold` varchar(100) NOT NULL DEFAULT 'Simple Majority',
  `required_percentage` decimal(7,4) DEFAULT NULL,
  `fixed_required_votes` int(11) DEFAULT NULL,
  `abstention_rule` varchar(100) DEFAULT 'Allowed',
  `tie_rule` varchar(100) DEFAULT 'Presiding Officer Decides',
  `opening_authority_id` int(11) DEFAULT NULL,
  `closing_authority_id` int(11) DEFAULT NULL,
  `voting_operator_id` int(11) DEFAULT NULL,
  `presiding_officer_id` int(11) DEFAULT NULL,
  `session_date` date DEFAULT NULL,
  `opening_time` datetime DEFAULT NULL,
  `duration_minutes` int(11) DEFAULT NULL,
  `access_code_hash` varchar(255) DEFAULT NULL,
  `reauthentication_required` tinyint(1) NOT NULL DEFAULT 0,
  `opening_announcement` text DEFAULT NULL,
  `closing_instruction` text DEFAULT NULL,
  `ballot_instructions` text DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Draft',
  `opened_at` datetime DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `paused_at` datetime DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_reason` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_voting_events`
--

INSERT INTO `vqd_voting_events` (`id`, `session_id`, `quorum_check_id`, `legislative_item_id`, `committee_id`, `office_id`, `reference_number`, `motion_text`, `procedural_basis`, `voting_method`, `vote_visibility`, `decision_threshold`, `required_percentage`, `fixed_required_votes`, `abstention_rule`, `tie_rule`, `opening_authority_id`, `closing_authority_id`, `voting_operator_id`, `presiding_officer_id`, `session_date`, `opening_time`, `duration_minutes`, `access_code_hash`, `reauthentication_required`, `opening_announcement`, `closing_instruction`, `ballot_instructions`, `status`, `opened_at`, `closed_at`, `paused_at`, `cancelled_at`, `cancellation_reason`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL, 2, 'VOT-2026-0001', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', NULL, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Ready', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-25 12:03:58', '2026-08-25 12:03:58'),
(2, 1, 2, NULL, NULL, 2, 'VOT-2026-0002', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', NULL, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Ready', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-25 12:04:01', '2026-08-25 12:04:01'),
(3, 1, 2, NULL, NULL, 2, 'VOT-2026-0003', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', NULL, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Ready', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-25 12:04:01', '2026-08-25 12:04:01'),
(4, 1, 2, NULL, NULL, 2, 'VOT-2026-0004', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', NULL, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Ready', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-25 12:04:02', '2026-08-25 12:04:02'),
(5, 1, 2, NULL, NULL, 2, 'VOT-2026-0005', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', NULL, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Ready', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-25 12:04:02', '2026-08-25 12:04:02'),
(6, 1, 2, NULL, NULL, 2, 'VOT-2026-0006', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', NULL, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Ready', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-25 12:04:02', '2026-08-25 12:04:02'),
(7, 1, 2, NULL, NULL, 2, 'VOT-2026-0007', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', NULL, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Ready', NULL, NULL, NULL, NULL, NULL, 1, '2026-08-25 12:04:03', '2026-08-25 12:04:03'),
(8, 1, 2, NULL, NULL, 2, 'VOT-2026-0008', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Closed', '2026-09-07 05:40:48', '2026-09-07 05:41:03', NULL, NULL, NULL, 1, '2026-08-25 12:04:03', '2026-09-06 21:41:03'),
(9, 1, 2, NULL, NULL, 2, 'VOT-2026-0009', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Paused', '2026-09-07 14:38:11', NULL, '2026-09-07 14:38:52', NULL, NULL, 1, '2026-08-25 12:04:03', '2026-09-07 06:38:52'),
(10, 1, 2, NULL, NULL, 2, 'VOT-2026-0010', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Open', '2026-09-07 14:41:55', NULL, NULL, NULL, NULL, 1, '2026-08-25 12:04:03', '2026-09-07 06:41:55'),
(11, 1, 2, NULL, NULL, 2, 'VOT-2026-0011', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Closed', '2026-08-25 20:05:20', '2026-08-25 20:06:15', NULL, NULL, NULL, 1, '2026-08-25 12:04:04', '2026-08-25 12:06:15'),
(12, 1, 2, NULL, NULL, 2, 'VOT-2026-0012', 'Are you still Agree?', 'Sample', 'Electronic', 'Recorded', 'Simple Majority', 100.0000, 100, 'Allowed', 'Presiding Officer Decides', NULL, NULL, 1, 1, '2026-08-21', NULL, NULL, NULL, 0, NULL, NULL, 'please select', 'Cancelled', NULL, NULL, NULL, '2026-08-25 20:05:09', 'just', 1, '2026-08-25 12:04:04', '2026-08-25 12:05:09'),
(13, 2, 3, 1, 2, 3, 'VOT-2026-0013', 'Are you agree?', 'Are you agree?', 'Manual', 'Recorded', 'Simple Majority', 100.0000, 5, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 3, '2026-09-03', NULL, NULL, NULL, 0, NULL, NULL, 'Kindly pick', 'Closed', '2026-08-28 23:49:20', '2026-08-28 23:50:28', NULL, NULL, NULL, 1, '2026-08-28 15:49:03', '2026-08-28 15:50:28'),
(14, 3, 4, 1, 2, 3, 'VOT-2026-0014', 'agree?', 'agree?', 'Manual', 'Recorded', 'Simple Majority', 60.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 1, '2026-09-17', NULL, NULL, NULL, 0, NULL, NULL, 'Choose in choices', 'Closed', '2026-09-02 13:04:53', '2026-09-02 13:09:56', NULL, NULL, NULL, 1, '2026-09-02 05:04:19', '2026-09-02 05:09:56'),
(15, 4, 5, 1, NULL, 2, 'VOT-2026-0015', 'agree', 'agree', 'Manual', 'Recorded', 'Simple Majority', 60.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 3, '2026-09-12', NULL, NULL, NULL, 0, NULL, NULL, 'choose in choice', 'Closed', '2026-09-05 09:17:32', '2026-09-05 09:40:03', NULL, NULL, NULL, 1, '2026-09-05 01:16:54', '2026-09-05 01:40:03'),
(16, 5, 6, NULL, 1, 2, 'VOT-2026-0016', 'sample', 'samle', 'Manual', 'Recorded', 'Simple Majority', 50.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 1, '2026-09-07', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Closed', '2026-09-05 09:59:48', '2026-09-05 10:00:45', NULL, NULL, NULL, 1, '2026-09-05 01:59:45', '2026-09-05 02:00:45'),
(17, 6, 7, NULL, 9, NULL, 'VOT-2026-0017', 'samle', 'sample', 'Manual', 'Recorded', 'Simple Majority', 50.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 1, '2026-09-19', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Closed', '2026-09-05 10:13:20', '2026-09-05 10:14:24', NULL, NULL, NULL, 1, '2026-09-05 02:13:16', '2026-09-05 02:14:24'),
(18, 5, 6, NULL, 1, 2, 'VOT-2026-0018', 'yes,no', NULL, 'Electronic', 'Recorded', 'Simple Majority', NULL, NULL, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 1, '2026-09-07', NULL, NULL, NULL, 1, NULL, NULL, 'r', 'Closed', '2026-09-06 14:58:43', '2026-09-06 15:01:14', NULL, NULL, NULL, 1, '2026-09-06 06:58:37', '2026-09-06 07:01:14'),
(19, 5, 6, NULL, 1, 2, 'VOT-2026-0019', 'traffice voting', 'r', 'Manual', 'Recorded', 'Simple Majority', NULL, NULL, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 1, '2026-09-07', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Closed', '2026-09-06 15:05:56', '2026-09-06 15:06:38', NULL, NULL, NULL, 1, '2026-09-06 07:05:54', '2026-09-06 07:06:38'),
(24, 16, 17, 1, 3, 6, 'VOT-2026-0020', 'yes.hindi', NULL, 'Electronic', 'Recorded', 'Majority of Eligible Members', 50.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, NULL, 1, 7, '2026-09-26', NULL, NULL, NULL, 0, NULL, NULL, NULL, 'Open', '2026-09-07 15:24:53', NULL, NULL, NULL, NULL, 1, '2026-09-07 07:24:41', '2026-09-07 07:24:53'),
(25, 17, 18, 1, 3, 6, 'VOT-2026-0021', 'yes or no', 'majority', 'Electronic', 'Recorded', 'Simple Majority', 50.0000, 100, 'Allowed', 'Presiding Officer Decides', 1, 1, 1, 8, '2026-09-30', NULL, NULL, NULL, 0, NULL, NULL, 'yes no', 'Closed', '2026-09-07 22:27:59', '2026-09-07 22:32:37', '2026-09-07 22:32:28', NULL, NULL, 1, '2026-09-07 14:27:43', '2026-09-07 14:32:37');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_voting_event_voters`
--

CREATE TABLE `vqd_voting_event_voters` (
  `id` bigint(20) NOT NULL,
  `voting_event_id` int(11) NOT NULL,
  `session_member_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `voter_eligibility` varchar(50) NOT NULL DEFAULT 'Eligible',
  `voting_channel` varchar(50) NOT NULL DEFAULT 'Manual',
  `voter_note` text DEFAULT NULL,
  `authorization_token_hash` char(64) DEFAULT NULL,
  `authorization_status` varchar(50) NOT NULL DEFAULT 'Eligible',
  `authorized_at` datetime DEFAULT NULL,
  `voted_at` datetime DEFAULT NULL,
  `revoked_at` datetime DEFAULT NULL,
  `revocation_reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_voting_event_voters`
--

INSERT INTO `vqd_voting_event_voters` (`id`, `voting_event_id`, `session_member_id`, `user_id`, `voter_eligibility`, `voting_channel`, `voter_note`, `authorization_token_hash`, `authorization_status`, `authorized_at`, `voted_at`, `revoked_at`, `revocation_reason`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:00', NULL, NULL, NULL, '2026-08-25 12:04:00', '2026-08-25 12:04:00'),
(2, 2, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:01', NULL, NULL, NULL, '2026-08-25 12:04:01', '2026-08-25 12:04:01'),
(3, 3, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:02', NULL, NULL, NULL, '2026-08-25 12:04:02', '2026-08-25 12:04:02'),
(4, 4, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:02', NULL, NULL, NULL, '2026-08-25 12:04:02', '2026-08-25 12:04:02'),
(5, 5, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:02', NULL, NULL, NULL, '2026-08-25 12:04:02', '2026-08-25 12:04:02'),
(6, 6, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:03', NULL, NULL, NULL, '2026-08-25 12:04:03', '2026-08-25 12:04:03'),
(7, 7, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:03', NULL, NULL, NULL, '2026-08-25 12:04:03', '2026-08-25 12:04:03'),
(8, 8, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:03', NULL, NULL, NULL, '2026-08-25 12:04:03', '2026-08-25 12:04:03'),
(9, 9, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:03', NULL, NULL, NULL, '2026-08-25 12:04:03', '2026-08-25 12:04:03'),
(10, 10, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:03', '2026-09-07 20:48:47', NULL, NULL, '2026-08-25 12:04:03', '2026-09-07 12:48:47'),
(11, 11, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:04', '2026-08-25 20:05:39', NULL, NULL, '2026-08-25 12:04:04', '2026-08-25 12:05:39'),
(12, 12, 1, 1, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-08-25 20:04:04', NULL, NULL, NULL, '2026-08-25 12:04:04', '2026-08-25 12:04:04'),
(13, 13, 2, 2, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-08-28 23:49:03', '2026-08-28 23:49:31', NULL, NULL, '2026-08-28 15:49:03', '2026-08-28 15:49:31'),
(14, 13, 3, 5, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-08-28 23:49:03', '2026-08-28 23:49:35', NULL, NULL, '2026-08-28 15:49:03', '2026-08-28 15:49:35'),
(15, 13, 4, 3, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-08-28 23:49:03', '2026-08-28 23:49:39', NULL, NULL, '2026-08-28 15:49:03', '2026-08-28 15:49:39'),
(16, 13, 5, 4, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-08-28 23:49:03', '2026-08-28 23:49:43', NULL, NULL, '2026-08-28 15:49:03', '2026-08-28 15:49:43'),
(17, 13, 6, 1, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-08-28 23:49:03', '2026-08-28 23:49:47', NULL, NULL, '2026-08-28 15:49:03', '2026-08-28 15:49:47'),
(18, 14, 7, 7, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-02 13:04:20', '2026-09-02 13:09:36', NULL, NULL, '2026-09-02 05:04:20', '2026-09-02 05:09:36'),
(19, 14, 8, 2, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-09-02 13:04:20', '2026-09-02 13:08:27', NULL, NULL, '2026-09-02 05:04:20', '2026-09-02 05:08:27'),
(20, 14, 9, 6, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-02 13:04:20', '2026-09-02 13:09:42', NULL, NULL, '2026-09-02 05:04:20', '2026-09-02 05:09:42'),
(21, 14, 10, 5, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-02 13:04:20', '2026-09-02 13:09:48', NULL, NULL, '2026-09-02 05:04:20', '2026-09-02 05:09:48'),
(22, 15, 14, 7, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:16:54', '2026-09-05 09:39:06', NULL, NULL, '2026-09-05 01:16:54', '2026-09-05 01:39:06'),
(23, 15, 15, 2, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:16:54', '2026-09-05 09:39:16', NULL, NULL, '2026-09-05 01:16:54', '2026-09-05 01:39:16'),
(24, 15, 16, 6, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:16:54', '2026-09-05 09:39:24', NULL, NULL, '2026-09-05 01:16:54', '2026-09-05 01:39:24'),
(25, 15, 17, 5, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:16:54', '2026-09-05 09:39:36', NULL, NULL, '2026-09-05 01:16:54', '2026-09-05 01:39:36'),
(26, 15, 18, 3, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:16:54', '2026-09-05 09:39:45', NULL, NULL, '2026-09-05 01:16:54', '2026-09-05 01:39:45'),
(27, 16, 21, 7, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:59:45', '2026-09-05 09:59:59', NULL, NULL, '2026-09-05 01:59:45', '2026-09-05 01:59:59'),
(28, 16, 22, 2, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:59:45', '2026-09-05 10:00:05', NULL, NULL, '2026-09-05 01:59:45', '2026-09-05 02:00:05'),
(29, 16, 23, 6, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:59:45', '2026-09-05 10:00:13', NULL, NULL, '2026-09-05 01:59:45', '2026-09-05 02:00:13'),
(30, 16, 24, 5, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:59:45', '2026-09-05 10:00:19', NULL, NULL, '2026-09-05 01:59:45', '2026-09-05 02:00:19'),
(31, 16, 25, 3, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:59:45', '2026-09-05 10:00:25', NULL, NULL, '2026-09-05 01:59:45', '2026-09-05 02:00:25'),
(32, 16, 26, 4, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:59:45', '2026-09-05 10:00:33', NULL, NULL, '2026-09-05 01:59:45', '2026-09-05 02:00:33'),
(33, 16, 27, 1, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 09:59:45', '2026-09-05 10:00:39', NULL, NULL, '2026-09-05 01:59:45', '2026-09-05 02:00:39'),
(34, 17, 28, 7, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 10:13:16', '2026-09-05 10:13:32', NULL, NULL, '2026-09-05 02:13:16', '2026-09-05 02:13:32'),
(35, 17, 29, 2, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 10:13:16', '2026-09-05 10:13:39', NULL, NULL, '2026-09-05 02:13:16', '2026-09-05 02:13:39'),
(36, 17, 30, 6, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 10:13:16', '2026-09-05 10:13:47', NULL, NULL, '2026-09-05 02:13:16', '2026-09-05 02:13:47'),
(37, 17, 31, 5, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 10:13:16', '2026-09-05 10:13:54', NULL, NULL, '2026-09-05 02:13:16', '2026-09-05 02:13:54'),
(38, 17, 32, 3, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 10:13:16', '2026-09-05 10:14:02', NULL, NULL, '2026-09-05 02:13:16', '2026-09-05 02:14:02'),
(39, 17, 33, 4, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 10:13:16', '2026-09-05 10:14:10', NULL, NULL, '2026-09-05 02:13:16', '2026-09-05 02:14:10'),
(40, 17, 34, 1, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-05 10:13:16', '2026-09-05 10:14:17', NULL, NULL, '2026-09-05 02:13:16', '2026-09-05 02:14:17'),
(41, 18, 21, 7, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 14:58:37', '2026-09-06 14:59:51', NULL, NULL, '2026-09-06 06:58:37', '2026-09-06 06:59:51'),
(42, 18, 22, 2, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 14:58:37', '2026-09-06 15:00:09', NULL, NULL, '2026-09-06 06:58:37', '2026-09-06 07:00:09'),
(43, 18, 23, 6, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 14:58:37', '2026-09-06 15:00:16', NULL, NULL, '2026-09-06 06:58:37', '2026-09-06 07:00:16'),
(44, 18, 24, 5, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 14:58:37', '2026-09-06 15:00:21', NULL, NULL, '2026-09-06 06:58:37', '2026-09-06 07:00:21'),
(45, 18, 25, 3, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 14:58:37', '2026-09-06 15:00:31', NULL, NULL, '2026-09-06 06:58:37', '2026-09-06 07:00:31'),
(46, 18, 26, 4, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 14:58:37', '2026-09-06 15:00:41', NULL, NULL, '2026-09-06 06:58:37', '2026-09-06 07:00:41'),
(47, 18, 27, 1, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 14:58:37', '2026-09-06 15:00:57', NULL, NULL, '2026-09-06 06:58:37', '2026-09-06 07:00:57'),
(48, 19, 21, 7, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 15:05:54', '2026-09-06 15:06:03', NULL, NULL, '2026-09-06 07:05:54', '2026-09-06 07:06:03'),
(49, 19, 22, 2, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 15:05:54', '2026-09-06 15:06:09', NULL, NULL, '2026-09-06 07:05:54', '2026-09-06 07:06:09'),
(50, 19, 23, 6, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 15:05:54', '2026-09-06 15:06:14', NULL, NULL, '2026-09-06 07:05:54', '2026-09-06 07:06:14'),
(51, 19, 24, 5, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 15:05:54', '2026-09-06 15:06:19', NULL, NULL, '2026-09-06 07:05:54', '2026-09-06 07:06:19'),
(52, 19, 25, 3, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 15:05:54', '2026-09-06 15:06:24', NULL, NULL, '2026-09-06 07:05:54', '2026-09-06 07:06:24'),
(53, 19, 26, 4, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 15:05:54', '2026-09-06 15:06:29', NULL, NULL, '2026-09-06 07:05:54', '2026-09-06 07:06:29'),
(54, 19, 27, 1, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-06 15:05:54', '2026-09-06 15:06:33', NULL, NULL, '2026-09-06 07:05:54', '2026-09-06 07:06:33'),
(61, 24, 84, 7, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-09-07 15:24:41', NULL, NULL, NULL, '2026-09-07 07:24:41', '2026-09-07 07:24:41'),
(62, 24, 85, 2, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-09-07 15:24:41', NULL, NULL, NULL, '2026-09-07 07:24:41', '2026-09-07 07:24:41'),
(63, 24, 86, 6, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-09-07 15:24:41', NULL, NULL, NULL, '2026-09-07 07:24:41', '2026-09-07 07:24:41'),
(64, 24, 87, 5, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-09-07 15:24:41', NULL, NULL, NULL, '2026-09-07 07:24:41', '2026-09-07 07:24:41'),
(65, 24, 88, 3, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-07 15:24:41', '2026-09-07 15:27:07', NULL, NULL, '2026-09-07 07:24:41', '2026-09-07 07:27:07'),
(66, 24, 90, 10, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-09-07 15:24:41', '2026-09-07 15:26:05', NULL, NULL, '2026-09-07 07:24:41', '2026-09-07 07:26:05'),
(67, 24, 91, 4, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-09-07 15:24:41', NULL, NULL, NULL, '2026-09-07 07:24:41', '2026-09-07 07:24:41'),
(68, 25, 93, 7, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-07 22:27:43', '2026-09-07 22:28:34', NULL, NULL, '2026-09-07 14:27:43', '2026-09-07 14:28:34'),
(69, 25, 94, 2, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-07 22:27:43', '2026-09-07 22:31:53', NULL, NULL, '2026-09-07 14:27:43', '2026-09-07 14:31:53'),
(70, 25, 95, 6, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-07 22:27:43', '2026-09-07 22:32:15', NULL, NULL, '2026-09-07 14:27:43', '2026-09-07 14:32:15'),
(71, 25, 96, 5, 'Eligible', 'Manual', NULL, NULL, 'Eligible', '2026-09-07 22:27:43', '2026-09-07 22:32:21', NULL, NULL, '2026-09-07 14:27:43', '2026-09-07 14:32:21'),
(72, 25, 98, 8, 'Eligible', 'Electronic', NULL, NULL, 'Eligible', '2026-09-07 22:27:43', '2026-09-07 22:31:07', NULL, NULL, '2026-09-07 14:27:43', '2026-09-07 14:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `vqd_voting_history`
--

CREATE TABLE `vqd_voting_history` (
  `id` bigint(20) NOT NULL,
  `voting_event_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `previous_status` varchar(50) DEFAULT NULL,
  `new_status` varchar(50) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vqd_voting_history`
--

INSERT INTO `vqd_voting_history` (`id`, `voting_event_id`, `action`, `previous_status`, `new_status`, `details`, `changed_by`, `created_at`) VALUES
(1, 1, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:03:58'),
(2, 2, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:01'),
(3, 3, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:02'),
(4, 4, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:02'),
(5, 5, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:02'),
(6, 6, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:03'),
(7, 7, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:03'),
(8, 8, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:03'),
(9, 9, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:03'),
(10, 10, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:03'),
(11, 11, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:04'),
(12, 12, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-25 12:04:04'),
(13, 12, 'Cancel', 'Ready', 'Cancelled', 'just', 1, '2026-08-25 12:05:09'),
(14, 11, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-08-25 12:05:20'),
(15, 11, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-46226DFA784A for System Administrator.', 1, '2026-08-25 12:05:39'),
(16, 11, 'Close', 'Open', 'Closed', 'Voting status Open -> Closed.', 1, '2026-08-25 12:06:15'),
(17, 13, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-08-28 15:49:03'),
(18, 13, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-08-28 15:49:20'),
(19, 13, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-1EB84050E822 for Micko Laput.', 1, '2026-08-28 15:49:31'),
(20, 13, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-155921886CB3 for nardz.', 1, '2026-08-28 15:49:35'),
(21, 13, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-F18D54891867 for nonelichz.', 1, '2026-08-28 15:49:39'),
(22, 13, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-F8A06FBC4964 for ronald.', 1, '2026-08-28 15:49:43'),
(23, 13, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-9CB19D728A3D for System Administrator.', 1, '2026-08-28 15:49:47'),
(24, 13, 'Close', 'Open', 'Closed', 'Voting status Open -> Closed.', 1, '2026-08-28 15:50:28'),
(25, 14, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-09-02 05:04:19'),
(26, 14, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-02 05:04:53'),
(27, 14, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-FD452D17D78C for Micko Laput.', 2, '2026-09-02 05:08:27'),
(28, 14, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-66CACCC1F717 for bonelichz.', 1, '2026-09-02 05:09:36'),
(29, 14, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-5077066D9804 for Micko Laput.', 1, '2026-09-02 05:09:42'),
(30, 14, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-F04AC8DAD456 for nardz.', 1, '2026-09-02 05:09:48'),
(31, 14, 'Close', 'Open', 'Closed', 'Voting status Open -> Closed.', 1, '2026-09-02 05:09:56'),
(32, 15, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-09-05 01:16:54'),
(33, 15, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-05 01:17:32'),
(34, 15, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-52A4F8DDB067 for bonelichz.', 1, '2026-09-05 01:39:06'),
(35, 15, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-E7A50162F1E4 for Micko Laput.', 1, '2026-09-05 01:39:16'),
(36, 15, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-9A3FA72DE05E for Micko Laput.', 1, '2026-09-05 01:39:24'),
(37, 15, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-03A1B65190D6 for nardz.', 1, '2026-09-05 01:39:36'),
(38, 15, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-968F70D1AF3F for nonelichz.', 1, '2026-09-05 01:39:45'),
(39, 15, 'Close', 'Open', 'Closed', 'Voting status Open -> Closed.', 1, '2026-09-05 01:40:03'),
(40, 16, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-09-05 01:59:45'),
(41, 16, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-05 01:59:48'),
(42, 16, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-92F17943910C for bonelichz.', 1, '2026-09-05 01:59:59'),
(43, 16, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-003B931D9A03 for Micko Laput.', 1, '2026-09-05 02:00:05'),
(44, 16, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-CDC2A54C11BD for Micko Laput.', 1, '2026-09-05 02:00:13'),
(45, 16, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-C2B1661632CA for nardz.', 1, '2026-09-05 02:00:19'),
(46, 16, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-8021A2AA1435 for nonelichz.', 1, '2026-09-05 02:00:25'),
(47, 16, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-1DDC484D60F6 for ronald.', 1, '2026-09-05 02:00:33'),
(48, 16, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-B7DB3FF79D39 for System Administrator.', 1, '2026-09-05 02:00:39'),
(49, 16, 'Close', 'Open', 'Closed', 'Voting status Open -> Closed.', 1, '2026-09-05 02:00:45'),
(50, 17, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-09-05 02:13:16'),
(51, 17, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-05 02:13:20'),
(52, 17, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-D2A1583B54CC for bonelichz.', 1, '2026-09-05 02:13:32'),
(53, 17, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-F1971A504E1B for Micko Laput.', 1, '2026-09-05 02:13:39'),
(54, 17, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-8F9CE4E09EEC for Micko Laput.', 1, '2026-09-05 02:13:47'),
(55, 17, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-78A8A97B6D20 for nardz.', 1, '2026-09-05 02:13:54'),
(56, 17, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-2867D17F248F for nonelichz.', 1, '2026-09-05 02:14:02'),
(57, 17, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-736389AB32C9 for ronald.', 1, '2026-09-05 02:14:10'),
(58, 17, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-EF9AD2C3B817 for System Administrator.', 1, '2026-09-05 02:14:17'),
(59, 17, 'Close', 'Open', 'Closed', 'Voting status Open -> Closed.', 1, '2026-09-05 02:14:24'),
(60, 18, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-09-06 06:58:37'),
(61, 18, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-06 06:58:43'),
(62, 18, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-2D0A52383692 for bonelichz.', 1, '2026-09-06 06:59:51'),
(63, 18, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-CEA96F7E7DD3 for Micko Laput.', 1, '2026-09-06 07:00:09'),
(64, 18, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-D0D61EFBB657 for Micko Laput.', 1, '2026-09-06 07:00:16'),
(65, 18, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-9F0A041AF241 for nardz.', 1, '2026-09-06 07:00:21'),
(66, 18, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-2CF7BEA397D9 for nonelichz.', 1, '2026-09-06 07:00:31'),
(67, 18, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-514DD54DFCB0 for ronald.', 1, '2026-09-06 07:00:41'),
(68, 18, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-CD2794342E98 for System Administrator.', 1, '2026-09-06 07:00:57'),
(69, 18, 'Close', 'Open', 'Closed', 'Voting status Open -> Closed.', 1, '2026-09-06 07:01:14'),
(70, 19, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-09-06 07:05:54'),
(71, 19, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-06 07:05:56'),
(72, 19, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-A50BB92D8043 for bonelichz.', 1, '2026-09-06 07:06:03'),
(73, 19, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-8D5800044A61 for Micko Laput.', 1, '2026-09-06 07:06:09'),
(74, 19, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-50CCDC2DFED0 for Micko Laput.', 1, '2026-09-06 07:06:14'),
(75, 19, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-894F5FB87D7A for nardz.', 1, '2026-09-06 07:06:19'),
(76, 19, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-8A0DF0F768D3 for nonelichz.', 1, '2026-09-06 07:06:24'),
(77, 19, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-2A39EC11C2CC for ronald.', 1, '2026-09-06 07:06:29'),
(78, 19, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-8CDE95667A46 for System Administrator.', 1, '2026-09-06 07:06:33'),
(79, 19, 'Close', 'Open', 'Closed', 'Voting status Open -> Closed.', 1, '2026-09-06 07:06:38'),
(80, 8, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-06 21:40:48'),
(81, 8, 'Close', 'Open', 'Closed', 'Voting status Open -> Closed.', 1, '2026-09-06 21:41:03'),
(82, 9, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-07 06:38:11'),
(83, 9, 'Pause', 'Open', 'Paused', 'Voting status Open -> Paused.', 1, '2026-09-07 06:38:52'),
(84, 10, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-07 06:41:55'),
(85, 24, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-09-07 07:24:41'),
(86, 24, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-07 07:24:53'),
(87, 24, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-22173685EE63 for Olarte, Junar Love Bello.', 10, '2026-09-07 07:26:05'),
(88, 24, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-8744873204A0 for nonelichz.', 1, '2026-09-07 07:27:07'),
(89, 10, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-57FE143D37CA for System Administrator.', 1, '2026-09-07 12:48:47'),
(90, 25, 'Create', NULL, 'Ready', 'Voting event created from certified quorum.', 1, '2026-09-07 14:27:43'),
(91, 25, 'Open', 'Ready', 'Open', 'Voting status Ready -> Open.', 1, '2026-09-07 14:27:59'),
(92, 25, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-60CD80423619 for bonelichz.', 1, '2026-09-07 14:28:34'),
(93, 25, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-D53082EF16D3 for Olarte, Junar Love Bello.', 8, '2026-09-07 14:31:07'),
(94, 25, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-0E2083CB0325 for Micko Laput.', 1, '2026-09-07 14:31:53'),
(95, 25, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-AAA0B1C51C99 for Micko Laput.', 1, '2026-09-07 14:32:15'),
(96, 25, 'Ballot Cast', 'Open', 'Open', 'Recorded ballot BLL-2026-7E86DB11D206 for nardz.', 1, '2026-09-07 14:32:21'),
(97, 25, 'Pause', 'Open', 'Paused', 'Voting status Open -> Paused.', 1, '2026-09-07 14:32:28'),
(98, 25, 'Close', 'Paused', 'Closed', 'Voting status Paused -> Closed.', 1, '2026-09-07 14:32:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_activity_logs_user` (`user_id`),
  ADD KEY `idx_activity_logs_system` (`system_id`),
  ADD KEY `idx_activity_logs_action` (`action`),
  ADD KEY `idx_activity_logs_created_at` (`created_at`);

--
-- Indexes for table `ai_request_logs`
--
ALTER TABLE `ai_request_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ai_request_created_at` (`created_at`),
  ADD KEY `idx_ai_request_success` (`success`),
  ADD KEY `idx_ai_request_feedback` (`feedback_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_attendance_stakeholder_hearing` (`stakeholder_id`,`hearing_id`),
  ADD KEY `hearing_id` (`hearing_id`),
  ADD KEY `fk_attendance_registration` (`registration_id`),
  ADD KEY `fk_attendance_verified_by` (`verified_by`);

--
-- Indexes for table `attendance_event_history`
--
ALTER TABLE `attendance_event_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_attendance_event_hearing` (`hearing_id`,`created_at`),
  ADD KEY `idx_attendance_event_stakeholder` (`stakeholder_id`,`created_at`),
  ADD KEY `fk_attendance_event_attendance` (`attendance_id`),
  ADD KEY `fk_attendance_event_registration` (`registration_id`),
  ADD KEY `fk_attendance_event_user` (`actor_user_id`);

--
-- Indexes for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stakeholder_id` (`stakeholder_id`),
  ADD KEY `hearing_id` (`hearing_id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_audit_entity` (`entity_type`,`entity_id`),
  ADD KEY `idx_audit_user` (`user_id`),
  ADD KEY `idx_audit_created_at` (`created_at`),
  ADD KEY `fk_audit_system` (`system_id`);

--
-- Indexes for table `cef_ai_analysis`
--
ALTER TABLE `cef_ai_analysis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_ai_submission` (`submission_id`,`analysis_type`,`created_at`),
  ADD KEY `fk_cef_ai_reviewer` (`reviewed_by`);

--
-- Indexes for table `cef_ai_analysis_history`
--
ALTER TABLE `cef_ai_analysis_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_ai_history_submission` (`submission_id`),
  ADD KEY `idx_cef_ai_history_version` (`submission_id`,`analysis_version`),
  ADD KEY `idx_cef_ai_history_archived` (`archived_at`);

--
-- Indexes for table `cef_analytics_alerts`
--
ALTER TABLE `cef_analytics_alerts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_analytics_alert_status` (`status`,`severity`,`created_at`),
  ADD KEY `idx_cef_analytics_alert_dimension` (`metric_key`,`dimension_type`,`dimension_value`,`period_start`,`period_end`),
  ADD KEY `fk_cef_analytics_alert_creator` (`created_by`),
  ADD KEY `fk_cef_analytics_alert_resolver` (`resolved_by`);

--
-- Indexes for table `cef_analytics_snapshots`
--
ALTER TABLE `cef_analytics_snapshots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_analytics_metric` (`metric_key`,`snapshot_date`),
  ADD KEY `idx_cef_analytics_dimension` (`dimension_type`,`dimension_value`,`snapshot_date`);

--
-- Indexes for table `cef_assignments`
--
ALTER TABLE `cef_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_assignment_submission` (`submission_id`,`status`),
  ADD KEY `idx_cef_assignment_due` (`status`,`due_at`),
  ADD KEY `fk_cef_assignment_office` (`office_id`),
  ADD KEY `fk_cef_assignment_committee` (`committee_id`),
  ADD KEY `fk_cef_assignment_user` (`assigned_user_id`),
  ADD KEY `fk_cef_assignment_by` (`assigned_by`);

--
-- Indexes for table `cef_assignment_history`
--
ALTER TABLE `cef_assignment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_assignment_history` (`assignment_id`,`created_at`),
  ADD KEY `fk_cef_assignment_history_submission` (`submission_id`),
  ADD KEY `fk_cef_assignment_history_user` (`changed_by`);

--
-- Indexes for table `cef_case_updates`
--
ALTER TABLE `cef_case_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_case_update_submission` (`submission_id`,`created_at`),
  ADD KEY `fk_cef_case_update_assignment` (`assignment_id`),
  ADD KEY `fk_cef_case_update_user` (`created_by`);

--
-- Indexes for table `cef_categories`
--
ALTER TABLE `cef_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_category_name_type` (`name`,`category_type`),
  ADD KEY `idx_cef_category_parent` (`parent_id`),
  ADD KEY `idx_cef_category_office` (`default_office_id`),
  ADD KEY `idx_cef_category_committee` (`default_committee_id`),
  ADD KEY `fk_cef_category_creator` (`created_by`);

--
-- Indexes for table `cef_complaints`
--
ALTER TABLE `cef_complaints`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_complaint_submission` (`submission_id`),
  ADD KEY `idx_cef_complaint_due` (`resolution_target_at`,`resolved_at`);

--
-- Indexes for table `cef_duplicate_matches`
--
ALTER TABLE `cef_duplicate_matches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_duplicate_pair` (`submission_id`,`matched_submission_id`),
  ADD KEY `idx_cef_duplicate_status` (`submission_id`,`status`),
  ADD KEY `fk_cef_duplicate_match` (`matched_submission_id`),
  ADD KEY `fk_cef_duplicate_reviewer` (`reviewed_by`);

--
-- Indexes for table `cef_escalations`
--
ALTER TABLE `cef_escalations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_escalation_submission` (`submission_id`,`status`,`created_at`),
  ADD KEY `fk_cef_escalation_assignment` (`assignment_id`),
  ADD KEY `fk_cef_escalation_user` (`escalated_to_user_id`),
  ADD KEY `fk_cef_escalation_office` (`escalated_to_office_id`),
  ADD KEY `fk_cef_escalation_creator` (`created_by`),
  ADD KEY `fk_cef_escalation_resolver` (`resolved_by`);

--
-- Indexes for table `cef_feedback_submissions`
--
ALTER TABLE `cef_feedback_submissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_feedback_submission` (`submission_id`);

--
-- Indexes for table `cef_followups`
--
ALTER TABLE `cef_followups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_followup_submission` (`submission_id`,`created_at`),
  ADD KEY `fk_cef_followup_response` (`response_id`),
  ADD KEY `fk_cef_followup_user` (`sender_user_id`);

--
-- Indexes for table `cef_legislative_referrals`
--
ALTER TABLE `cef_legislative_referrals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_legislative_referral` (`submission_id`,`legislative_item_id`),
  ADD KEY `fk_cef_referral_item` (`legislative_item_id`),
  ADD KEY `fk_cef_referral_user` (`referred_by`);

--
-- Indexes for table `cef_moderation_checklist`
--
ALTER TABLE `cef_moderation_checklist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_moderation_check` (`moderation_review_id`,`item_code`),
  ADD KEY `fk_cef_moderation_check_user` (`updated_by`);

--
-- Indexes for table `cef_moderation_reviews`
--
ALTER TABLE `cef_moderation_reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_moderation_round` (`submission_id`,`review_round`),
  ADD KEY `idx_cef_moderation_queue` (`decision`,`created_at`),
  ADD KEY `fk_cef_moderation_reviewer` (`reviewer_id`),
  ADD KEY `fk_cef_moderation_duplicate` (`duplicate_of_submission_id`);

--
-- Indexes for table `cef_notifications`
--
ALTER TABLE `cef_notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_notification_reference` (`notification_reference`),
  ADD KEY `idx_cef_notification_status` (`status`,`scheduled_at`),
  ADD KEY `fk_cef_notification_submission` (`submission_id`),
  ADD KEY `fk_cef_notification_response` (`response_id`),
  ADD KEY `fk_cef_notification_creator` (`created_by`);

--
-- Indexes for table `cef_notification_delivery_attempts`
--
ALTER TABLE `cef_notification_delivery_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_notification_attempt_recipient` (`notification_recipient_id`,`attempted_at`);

--
-- Indexes for table `cef_notification_recipients`
--
ALTER TABLE `cef_notification_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_notification_recipient` (`notification_id`,`delivery_status`),
  ADD KEY `fk_cef_notification_recipient_user` (`user_id`);

--
-- Indexes for table `cef_proposals`
--
ALTER TABLE `cef_proposals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_proposal_submission` (`submission_id`);

--
-- Indexes for table `cef_responses`
--
ALTER TABLE `cef_responses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_response_reference` (`response_reference`),
  ADD KEY `idx_cef_response_submission` (`submission_id`,`status`,`created_at`),
  ADD KEY `fk_cef_response_assignment` (`assignment_id`),
  ADD KEY `fk_cef_response_drafter` (`drafted_by`),
  ADD KEY `fk_cef_response_reviewer` (`reviewed_by`),
  ADD KEY `fk_cef_response_approver` (`approved_by`),
  ADD KEY `idx_cef_response_status_updated` (`status`,`updated_at`,`submission_id`);

--
-- Indexes for table `cef_response_documents`
--
ALTER TABLE `cef_response_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_response_document` (`response_id`,`uploaded_at`),
  ADD KEY `fk_cef_response_document_user` (`uploaded_by`);

--
-- Indexes for table `cef_response_history`
--
ALTER TABLE `cef_response_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_response_history` (`response_id`,`created_at`),
  ADD KEY `fk_cef_response_history_user` (`changed_by`);

--
-- Indexes for table `cef_service_levels`
--
ALTER TABLE `cef_service_levels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_service_level` (`submission_type`,`urgency_level`);

--
-- Indexes for table `cef_submissions`
--
ALTER TABLE `cef_submissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cef_submission_public_id` (`public_id`),
  ADD UNIQUE KEY `uq_cef_submission_reference` (`reference_number`),
  ADD KEY `idx_cef_submission_type_status` (`submission_type`,`status`,`created_at`),
  ADD KEY `idx_cef_submission_moderation` (`moderation_status`,`created_at`),
  ADD KEY `idx_cef_submission_category` (`category_id`),
  ADD KEY `idx_cef_submission_location` (`district`,`barangay`),
  ADD KEY `idx_cef_submission_citizen_user` (`citizen_user_id`),
  ADD KEY `fk_cef_submission_creator` (`created_by`),
  ADD KEY `idx_cef_submission_public_tracking` (`reference_number`,`status`,`moderation_status`,`created_at`),
  ADD KEY `idx_cef_submission_moderation_type` (`moderation_status`,`submission_type`,`status`,`created_at`);

--
-- Indexes for table `cef_submission_documents`
--
ALTER TABLE `cef_submission_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_submission_document` (`submission_id`,`uploaded_at`),
  ADD KEY `fk_cef_submission_document_user` (`uploaded_by`);

--
-- Indexes for table `cef_submission_history`
--
ALTER TABLE `cef_submission_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cef_submission_history` (`submission_id`,`created_at`),
  ADD KEY `fk_cef_submission_history_user` (`changed_by`);

--
-- Indexes for table `cepfms_login_attempts`
--
ALTER TABLE `cepfms_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cepfms_login_email_time` (`email_hash`,`attempted_at`),
  ADD KEY `idx_cepfms_login_ip_time` (`ip_hash`,`attempted_at`),
  ADD KEY `idx_cepfms_login_time` (`attempted_at`);

--
-- Indexes for table `cepfms_schema_migrations`
--
ALTER TABLE `cepfms_schema_migrations`
  ADD PRIMARY KEY (`migration_key`);

--
-- Indexes for table `cepfms_sequences`
--
ALTER TABLE `cepfms_sequences`
  ADD PRIMARY KEY (`sequence_key`,`sequence_year`);

--
-- Indexes for table `citizen_portal_account_security`
--
ALTER TABLE `citizen_portal_account_security`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `citizen_portal_login_attempts`
--
ALTER TABLE `citizen_portal_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_citizen_portal_login_email_time` (`email_hash`,`attempted_at`),
  ADD KEY `idx_citizen_portal_login_ip_time` (`ip_hash`,`attempted_at`),
  ADD KEY `idx_citizen_portal_login_time` (`attempted_at`);

--
-- Indexes for table `citizen_portal_profiles`
--
ALTER TABLE `citizen_portal_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_citizen_portal_profile_user` (`user_id`);

--
-- Indexes for table `citizen_portal_schema_migrations`
--
ALTER TABLE `citizen_portal_schema_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_citizen_portal_migration_key` (`migration_key`);

--
-- Indexes for table `committees`
--
ALTER TABLE `committees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_committees_office` (`office_id`);

--
-- Indexes for table `committee_members`
--
ALTER TABLE `committee_members`
  ADD PRIMARY KEY (`committee_id`,`user_id`),
  ADD KEY `fk_committee_members_user` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_departments_office` (`office_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_documents_system` (`system_id`),
  ADD KEY `fk_documents_legislative_item` (`legislative_item_id`),
  ADD KEY `fk_documents_uploaded_by` (`uploaded_by`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fk_feedback_hearing` (`hearing_id`),
  ADD KEY `fk_feedback_legislative_item` (`legislative_item_id`),
  ADD KEY `fk_feedback_stakeholder` (`stakeholder_id`),
  ADD KEY `fk_feedback_user` (`user_id`),
  ADD KEY `fk_feedback_validated_by` (`validated_by`),
  ADD KEY `fk_feedback_replied_by` (`replied_by`);

--
-- Indexes for table `feedback_ai_analysis`
--
ALTER TABLE `feedback_ai_analysis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_feedback_id` (`feedback_id`),
  ADD KEY `idx_sentiment` (`sentiment`),
  ADD KEY `idx_flagged` (`flagged_for_review`),
  ADD KEY `idx_analyzed_at` (`analyzed_at`);

--
-- Indexes for table `feedback_ai_analysis_history`
--
ALTER TABLE `feedback_ai_analysis_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ai_history_feedback` (`feedback_id`),
  ADD KEY `idx_ai_history_version` (`feedback_id`,`analysis_version`),
  ADD KEY `idx_ai_history_sentiment` (`sentiment`),
  ADD KEY `idx_ai_history_urgency` (`urgency_level`),
  ADD KEY `idx_ai_history_archived` (`archived_at`);

--
-- Indexes for table `feedback_categories`
--
ALTER TABLE `feedback_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `feedback_history`
--
ALTER TABLE `feedback_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_feedback_history_feedback` (`feedback_id`,`created_at`),
  ADD KEY `fk_feedback_history_user` (`changed_by`);

--
-- Indexes for table `hearings`
--
ALTER TABLE `hearings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_hearings_reference_number` (`reference_number`),
  ADD KEY `hearing_type_id` (`hearing_type_id`),
  ADD KEY `committee_id` (`committee_id`),
  ADD KEY `fk_hearings_legislative_item` (`legislative_item_id`),
  ADD KEY `fk_hearings_created_by` (`created_by`);

--
-- Indexes for table `hearing_actions`
--
ALTER TABLE `hearing_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference_number` (`reference_number`),
  ADD KEY `idx_hearing_actions_issue` (`issue_id`),
  ADD KEY `idx_hearing_actions_status` (`status`),
  ADD KEY `idx_hearing_actions_deadline` (`deadline`),
  ADD KEY `idx_hearing_actions_office` (`assigned_office_id`),
  ADD KEY `fk_hearing_actions_assigned_user` (`assigned_user_id`),
  ADD KEY `fk_hearing_actions_created_by` (`created_by`);

--
-- Indexes for table `hearing_action_assignments`
--
ALTER TABLE `hearing_action_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hearing_action_assignments_action` (`action_id`,`assigned_at`),
  ADD KEY `fk_hearing_action_assignments_office` (`assigned_office_id`),
  ADD KEY `fk_hearing_action_assignments_user` (`assigned_user_id`),
  ADD KEY `fk_hearing_action_assignments_assigned_by` (`assigned_by`);

--
-- Indexes for table `hearing_action_documents`
--
ALTER TABLE `hearing_action_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hearing_action_documents_action` (`action_id`,`uploaded_at`),
  ADD KEY `fk_hearing_action_documents_user` (`uploaded_by`);

--
-- Indexes for table `hearing_action_updates`
--
ALTER TABLE `hearing_action_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hearing_action_updates_action` (`action_id`,`created_at`),
  ADD KEY `fk_hearing_action_updates_user` (`updated_by`);

--
-- Indexes for table `hearing_documents`
--
ALTER TABLE `hearing_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hearing_id` (`hearing_id`),
  ADD KEY `fk_hearing_documents_uploaded_by` (`uploaded_by`);

--
-- Indexes for table `hearing_history`
--
ALTER TABLE `hearing_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hearing_history_hearing` (`hearing_id`,`created_at`),
  ADD KEY `idx_hearing_history_user` (`changed_by`);

--
-- Indexes for table `hearing_issues`
--
ALTER TABLE `hearing_issues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference_number` (`reference_number`),
  ADD KEY `idx_hearing_issues_hearing` (`hearing_id`),
  ADD KEY `idx_hearing_issues_legislative_item` (`legislative_item_id`),
  ADD KEY `idx_hearing_issues_feedback` (`feedback_id`),
  ADD KEY `idx_hearing_issues_category` (`category_id`),
  ADD KEY `idx_hearing_issues_status` (`status`),
  ADD KEY `idx_hearing_issues_priority` (`priority`),
  ADD KEY `idx_hearing_issues_office` (`assigned_office_id`),
  ADD KEY `fk_hearing_issues_assigned_user` (`assigned_user_id`),
  ADD KEY `fk_hearing_issues_created_by` (`created_by`);

--
-- Indexes for table `hearing_issue_assignments`
--
ALTER TABLE `hearing_issue_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hearing_issue_assignments_issue` (`issue_id`,`assigned_at`),
  ADD KEY `fk_hearing_issue_assignments_office` (`assigned_office_id`),
  ADD KEY `fk_hearing_issue_assignments_user` (`assigned_user_id`),
  ADD KEY `fk_hearing_issue_assignments_assigned_by` (`assigned_by`);

--
-- Indexes for table `hearing_issue_categories`
--
ALTER TABLE `hearing_issue_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `hearing_issue_documents`
--
ALTER TABLE `hearing_issue_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hearing_issue_documents_issue` (`issue_id`,`uploaded_at`),
  ADD KEY `fk_hearing_issue_documents_user` (`uploaded_by`);

--
-- Indexes for table `hearing_issue_history`
--
ALTER TABLE `hearing_issue_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hearing_issue_history_issue` (`issue_id`,`created_at`),
  ADD KEY `fk_hearing_issue_history_user` (`created_by`);

--
-- Indexes for table `hearing_responses`
--
ALTER TABLE `hearing_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hearing_responses_issue` (`issue_id`),
  ADD KEY `fk_hearing_responses_prepared_by` (`prepared_by`),
  ADD KEY `fk_hearing_responses_approved_by` (`approved_by`);

--
-- Indexes for table `hearing_response_history`
--
ALTER TABLE `hearing_response_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_hearing_response_history_response` (`response_id`,`created_at`),
  ADD KEY `fk_hearing_response_history_user` (`changed_by`);

--
-- Indexes for table `hearing_types`
--
ALTER TABLE `hearing_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invitation_code` (`invitation_code`),
  ADD UNIQUE KEY `uq_invitation_stakeholder_hearing` (`stakeholder_id`,`hearing_id`),
  ADD KEY `hearing_id` (`hearing_id`),
  ADD KEY `fk_invitations_invited_by` (`invited_by`);

--
-- Indexes for table `invitation_history`
--
ALTER TABLE `invitation_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_invitation_history_invitation` (`invitation_id`,`created_at`),
  ADD KEY `fk_invitation_history_user` (`changed_by`);

--
-- Indexes for table `lacms_agendas`
--
ALTER TABLE `lacms_agendas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_agenda_reference` (`agenda_reference`),
  ADD KEY `idx_lacms_agenda_date_status` (`agenda_date`,`status`),
  ADD KEY `idx_lacms_agenda_committee` (`committee_id`),
  ADD KEY `fk_lacms_agenda_office` (`office_id`),
  ADD KEY `fk_lacms_agenda_created_by` (`created_by`),
  ADD KEY `fk_lacms_agenda_finalized_by` (`finalized_by`);

--
-- Indexes for table `lacms_agenda_documents`
--
ALTER TABLE `lacms_agenda_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_agenda_document_agenda` (`agenda_id`,`uploaded_at`),
  ADD KEY `fk_lacms_agenda_document_item` (`agenda_item_id`),
  ADD KEY `fk_lacms_agenda_document_user` (`uploaded_by`);

--
-- Indexes for table `lacms_agenda_history`
--
ALTER TABLE `lacms_agenda_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_agenda_history` (`agenda_id`,`created_at`),
  ADD KEY `fk_lacms_agenda_history_user` (`changed_by`);

--
-- Indexes for table `lacms_agenda_items`
--
ALTER TABLE `lacms_agenda_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_agenda_legislative_item` (`agenda_id`,`legislative_item_id`),
  ADD KEY `idx_lacms_agenda_item_agenda_seq` (`agenda_id`,`sequence_number`),
  ADD KEY `idx_lacms_agenda_item_legislative` (`legislative_item_id`),
  ADD KEY `fk_lacms_agenda_item_sponsor` (`sponsor_user_id`),
  ADD KEY `fk_lacms_agenda_item_presenter` (`presenter_user_id`),
  ADD KEY `fk_lacms_agenda_item_committee` (`committee_id`),
  ADD KEY `fk_lacms_agenda_item_created_by` (`created_by`);

--
-- Indexes for table `lacms_agenda_item_history`
--
ALTER TABLE `lacms_agenda_item_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_agenda_item_history` (`agenda_item_id`,`created_at`),
  ADD KEY `fk_lacms_agenda_item_history_agenda` (`agenda_id`),
  ADD KEY `fk_lacms_agenda_item_history_user` (`changed_by`);

--
-- Indexes for table `lacms_ai_request_logs`
--
ALTER TABLE `lacms_ai_request_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_ai_source` (`source_type`,`source_id`,`created_at`),
  ADD KEY `fk_lacms_ai_request_user` (`created_by`);

--
-- Indexes for table `lacms_calendar_conflicts`
--
ALTER TABLE `lacms_calendar_conflicts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_calendar_conflict_pair` (`calendar_event_id`,`conflicting_event_id`,`conflict_type`),
  ADD KEY `idx_lacms_calendar_conflict_status` (`calendar_event_id`,`status`),
  ADD KEY `fk_lacms_calendar_conflict_other` (`conflicting_event_id`),
  ADD KEY `fk_lacms_calendar_conflict_resolver` (`resolved_by`);

--
-- Indexes for table `lacms_calendar_events`
--
ALTER TABLE `lacms_calendar_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_event_reference` (`event_reference`),
  ADD KEY `idx_lacms_event_schedule` (`start_datetime`,`end_datetime`,`status`),
  ADD KEY `idx_lacms_event_committee` (`committee_id`,`start_datetime`),
  ADD KEY `idx_lacms_event_agenda` (`agenda_id`),
  ADD KEY `fk_lacms_event_legislative` (`legislative_item_id`),
  ADD KEY `fk_lacms_event_office` (`office_id`),
  ADD KEY `fk_lacms_event_created_by` (`created_by`),
  ADD KEY `fk_lacms_event_confirmed_by` (`confirmed_by`);

--
-- Indexes for table `lacms_calendar_event_documents`
--
ALTER TABLE `lacms_calendar_event_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_event_document` (`calendar_event_id`,`uploaded_at`),
  ADD KEY `fk_lacms_event_document_user` (`uploaded_by`);

--
-- Indexes for table `lacms_calendar_event_participants`
--
ALTER TABLE `lacms_calendar_event_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_calendar_event_user` (`calendar_event_id`,`user_id`),
  ADD KEY `idx_lacms_event_participant_event` (`calendar_event_id`),
  ADD KEY `idx_lacms_event_participant_user` (`user_id`,`calendar_event_id`);

--
-- Indexes for table `lacms_calendar_history`
--
ALTER TABLE `lacms_calendar_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_calendar_history` (`calendar_event_id`,`created_at`),
  ADD KEY `fk_lacms_calendar_history_user` (`changed_by`);

--
-- Indexes for table `lacms_deadlines`
--
ALTER TABLE `lacms_deadlines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_deadline_reference` (`deadline_reference`),
  ADD KEY `idx_lacms_deadline_due_status` (`due_datetime`,`status`),
  ADD KEY `idx_lacms_deadline_user` (`responsible_user_id`,`due_datetime`),
  ADD KEY `idx_lacms_deadline_office` (`office_id`,`due_datetime`),
  ADD KEY `fk_lacms_deadline_legislative` (`legislative_item_id`),
  ADD KEY `fk_lacms_deadline_agenda` (`agenda_id`),
  ADD KEY `fk_lacms_deadline_event` (`calendar_event_id`),
  ADD KEY `fk_lacms_deadline_meeting` (`meeting_id`),
  ADD KEY `fk_lacms_deadline_committee` (`committee_id`),
  ADD KEY `fk_lacms_deadline_completed_by` (`completed_by`),
  ADD KEY `fk_lacms_deadline_created_by` (`created_by`);

--
-- Indexes for table `lacms_deadline_assignments`
--
ALTER TABLE `lacms_deadline_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_deadline_assignment_deadline` (`deadline_id`),
  ADD KEY `fk_lacms_deadline_assignment_user` (`user_id`),
  ADD KEY `fk_lacms_deadline_assignment_office` (`office_id`),
  ADD KEY `fk_lacms_deadline_assignment_committee` (`committee_id`),
  ADD KEY `fk_lacms_deadline_assignment_by` (`assigned_by`);

--
-- Indexes for table `lacms_deadline_documents`
--
ALTER TABLE `lacms_deadline_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_deadline_document` (`deadline_id`,`uploaded_at`),
  ADD KEY `fk_lacms_deadline_document_user` (`uploaded_by`);

--
-- Indexes for table `lacms_deadline_escalations`
--
ALTER TABLE `lacms_deadline_escalations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_deadline_escalation` (`deadline_id`,`status`,`created_at`),
  ADD KEY `fk_lacms_deadline_escalation_user` (`escalated_to_user_id`),
  ADD KEY `fk_lacms_deadline_escalation_office` (`escalated_to_office_id`),
  ADD KEY `fk_lacms_deadline_escalation_created` (`created_by`),
  ADD KEY `fk_lacms_deadline_escalation_resolved` (`resolved_by`);

--
-- Indexes for table `lacms_deadline_history`
--
ALTER TABLE `lacms_deadline_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_deadline_history` (`deadline_id`,`created_at`),
  ADD KEY `fk_lacms_deadline_history_user` (`changed_by`);

--
-- Indexes for table `lacms_deadline_reminders`
--
ALTER TABLE `lacms_deadline_reminders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_deadline_reminder_schedule` (`deadline_id`,`remind_at`,`reminder_type`),
  ADD KEY `idx_lacms_deadline_reminder_schedule` (`status`,`remind_at`),
  ADD KEY `fk_lacms_deadline_reminder_user` (`created_by`);

--
-- Indexes for table `lacms_login_attempts`
--
ALTER TABLE `lacms_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_login_email_time` (`email_hash`,`attempted_at`),
  ADD KEY `idx_lacms_login_ip_time` (`ip_hash`,`attempted_at`),
  ADD KEY `idx_lacms_login_time` (`attempted_at`);

--
-- Indexes for table `lacms_meetings`
--
ALTER TABLE `lacms_meetings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_meeting_reference` (`meeting_reference`),
  ADD KEY `idx_lacms_meeting_schedule` (`start_datetime`,`status`),
  ADD KEY `idx_lacms_meeting_agenda` (`agenda_id`),
  ADD KEY `idx_lacms_meeting_committee` (`committee_id`,`start_datetime`),
  ADD KEY `fk_lacms_meeting_calendar_event` (`calendar_event_id`),
  ADD KEY `fk_lacms_meeting_office` (`office_id`),
  ADD KEY `fk_lacms_meeting_chair` (`chair_user_id`),
  ADD KEY `fk_lacms_meeting_secretary` (`secretary_user_id`),
  ADD KEY `fk_lacms_meeting_created_by` (`created_by`),
  ADD KEY `fk_lacms_meeting_confirmed_by` (`confirmed_by`);

--
-- Indexes for table `lacms_meeting_documents`
--
ALTER TABLE `lacms_meeting_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_meeting_document` (`meeting_id`,`uploaded_at`),
  ADD KEY `fk_lacms_meeting_document_user` (`uploaded_by`);

--
-- Indexes for table `lacms_meeting_history`
--
ALTER TABLE `lacms_meeting_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_meeting_history` (`meeting_id`,`created_at`),
  ADD KEY `fk_lacms_meeting_history_user` (`changed_by`);

--
-- Indexes for table `lacms_meeting_participants`
--
ALTER TABLE `lacms_meeting_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_meeting_user` (`meeting_id`,`user_id`),
  ADD KEY `idx_lacms_meeting_participant_meeting` (`meeting_id`),
  ADD KEY `idx_lacms_meeting_participant_user` (`user_id`,`meeting_id`);

--
-- Indexes for table `lacms_notifications`
--
ALTER TABLE `lacms_notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_notification_reference` (`notification_reference`),
  ADD KEY `idx_lacms_notification_queue` (`status`,`scheduled_at`),
  ADD KEY `idx_lacms_notification_source` (`source_type`,`source_id`),
  ADD KEY `fk_lacms_notification_created_by` (`created_by`);

--
-- Indexes for table `lacms_notification_delivery_attempts`
--
ALTER TABLE `lacms_notification_delivery_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_notification_delivery_attempt` (`notification_recipient_id`,`attempted_at`);

--
-- Indexes for table `lacms_notification_history`
--
ALTER TABLE `lacms_notification_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_notification_history` (`notification_id`,`created_at`),
  ADD KEY `fk_lacms_notification_history_user` (`changed_by`);

--
-- Indexes for table `lacms_notification_recipients`
--
ALTER TABLE `lacms_notification_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_notification_recipient` (`notification_id`,`delivery_status`),
  ADD KEY `fk_lacms_notification_recipient_user` (`user_id`);

--
-- Indexes for table `lacms_reminder_templates`
--
ALTER TABLE `lacms_reminder_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_reminder_template_code` (`template_code`),
  ADD KEY `fk_lacms_reminder_template_user` (`created_by`);

--
-- Indexes for table `lacms_schema_migrations`
--
ALTER TABLE `lacms_schema_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_schema_migration_key` (`migration_key`);

--
-- Indexes for table `lacms_sync_actions`
--
ALTER TABLE `lacms_sync_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_sync_action_record` (`sync_record_id`,`status`,`due_datetime`),
  ADD KEY `fk_lacms_sync_action_user` (`responsible_user_id`),
  ADD KEY `fk_lacms_sync_action_office` (`responsible_office_id`),
  ADD KEY `fk_lacms_sync_action_completed_by` (`completed_by`),
  ADD KEY `fk_lacms_sync_action_created_by` (`created_by`);

--
-- Indexes for table `lacms_sync_documents`
--
ALTER TABLE `lacms_sync_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_sync_document_record` (`sync_record_id`,`uploaded_at`),
  ADD KEY `fk_lacms_sync_document_user` (`uploaded_by`);

--
-- Indexes for table `lacms_sync_history`
--
ALTER TABLE `lacms_sync_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lacms_sync_history` (`sync_record_id`,`created_at`),
  ADD KEY `fk_lacms_sync_history_user` (`changed_by`);

--
-- Indexes for table `lacms_sync_records`
--
ALTER TABLE `lacms_sync_records`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lacms_sync_reference` (`sync_reference`),
  ADD KEY `idx_lacms_sync_status` (`status`,`priority_level`),
  ADD KEY `fk_lacms_sync_legislative` (`legislative_item_id`),
  ADD KEY `fk_lacms_sync_agenda` (`agenda_id`),
  ADD KEY `fk_lacms_sync_event` (`calendar_event_id`),
  ADD KEY `fk_lacms_sync_office` (`source_office_id`),
  ADD KEY `fk_lacms_sync_committee` (`target_committee_id`),
  ADD KEY `fk_lacms_sync_created_by` (`created_by`),
  ADD KEY `fk_lacms_sync_resolved_by` (`resolved_by`);

--
-- Indexes for table `legislative_items`
--
ALTER TABLE `legislative_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reference_number` (`reference_number`),
  ADD UNIQUE KEY `public_id` (`public_id`),
  ADD KEY `fk_legislative_items_type` (`item_type_id`),
  ADD KEY `fk_legislative_items_system` (`origin_system_id`),
  ADD KEY `fk_legislative_items_office` (`originating_office_id`),
  ADD KEY `fk_legislative_items_created_by` (`created_by`);

--
-- Indexes for table `legislative_item_status_history`
--
ALTER TABLE `legislative_item_status_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_legislative_status_item` (`legislative_item_id`),
  ADD KEY `fk_legislative_status_user` (`changed_by`);

--
-- Indexes for table `legislative_item_types`
--
ALTER TABLE `legislative_item_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `lph_cef_ai_analysis`
--
ALTER TABLE `lph_cef_ai_analysis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_lph_cef_ai_submission` (`submission_id`),
  ADD KEY `idx_lph_cef_ai_scope` (`analysis_scope`),
  ADD KEY `idx_lph_cef_ai_sentiment` (`sentiment`),
  ADD KEY `idx_lph_cef_ai_urgency` (`urgency_level`),
  ADD KEY `idx_lph_cef_ai_flagged` (`flagged_for_review`),
  ADD KEY `idx_lph_cef_ai_review` (`review_status`),
  ADD KEY `idx_lph_cef_ai_status` (`status`),
  ADD KEY `idx_lph_cef_ai_analyzed` (`analyzed_at`);

--
-- Indexes for table `lph_cef_ai_analysis_history`
--
ALTER TABLE `lph_cef_ai_analysis_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lph_cef_ai_history_submission` (`submission_id`),
  ADD KEY `idx_lph_cef_ai_history_version` (`submission_id`,`analysis_version`),
  ADD KEY `idx_lph_cef_ai_history_archived` (`archived_at`);

--
-- Indexes for table `lph_login_attempts`
--
ALTER TABLE `lph_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lph_login_attempts_email` (`email_hash`,`attempted_at`),
  ADD KEY `idx_lph_login_attempts_ip` (`ip_hash`,`attempted_at`),
  ADD KEY `idx_lph_login_attempts_success` (`successful`,`attempted_at`);

--
-- Indexes for table `lph_schema_migrations`
--
ALTER TABLE `lph_schema_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_lph_migration_key` (`migration_key`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_notifications_user` (`user_id`),
  ADD KEY `fk_notifications_system` (`system_id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `orlms_ai_classifications`
--
ALTER TABLE `orlms_ai_classifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_ai_item` (`legislative_item_id`,`created_at`),
  ADD KEY `fk_orlms_ai_version` (`draft_version_id`),
  ADD KEY `fk_orlms_ai_user` (`requested_by`);

--
-- Indexes for table `orlms_amendments`
--
ALTER TABLE `orlms_amendments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_amendment_reference` (`amendment_reference`),
  ADD KEY `idx_orlms_amendment_item` (`legislative_item_id`,`status`),
  ADD KEY `fk_orlms_amendment_proposed_by` (`proposed_by`),
  ADD KEY `fk_orlms_amendment_approved_by` (`approved_by`),
  ADD KEY `fk_orlms_amendment_related_item` (`related_legislative_item_id`),
  ADD KEY `fk_orlms_amendment_reviewed_by` (`reviewed_by`),
  ADD KEY `fk_orlms_amendment_applied_by` (`applied_by`);

--
-- Indexes for table `orlms_amendment_changes`
--
ALTER TABLE `orlms_amendment_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_amendment_changes` (`amendment_id`,`sequence_number`);

--
-- Indexes for table `orlms_amendment_documents`
--
ALTER TABLE `orlms_amendment_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_amendment_document` (`amendment_id`,`uploaded_at`),
  ADD KEY `fk_orlms_amendment_document_user` (`uploaded_by`);

--
-- Indexes for table `orlms_amendment_history`
--
ALTER TABLE `orlms_amendment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_amendment_history_amendment` (`amendment_id`,`created_at`),
  ADD KEY `idx_orlms_amendment_history_item` (`legislative_item_id`,`created_at`),
  ADD KEY `fk_orlms_amendment_history_user` (`changed_by`);

--
-- Indexes for table `orlms_approval_actions`
--
ALTER TABLE `orlms_approval_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_approval_reference` (`action_reference`),
  ADD KEY `idx_orlms_approval_item` (`legislative_item_id`,`action_status`),
  ADD KEY `fk_orlms_approval_user` (`authority_user_id`),
  ADD KEY `fk_orlms_approval_office` (`authority_office_id`),
  ADD KEY `fk_orlms_approval_created_by` (`created_by`);

--
-- Indexes for table `orlms_approval_history`
--
ALTER TABLE `orlms_approval_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_approval_history_action` (`approval_action_id`,`created_at`),
  ADD KEY `idx_orlms_approval_history_item` (`legislative_item_id`,`created_at`),
  ADD KEY `fk_orlms_approval_history_user` (`changed_by`);

--
-- Indexes for table `orlms_dissemination_recipients`
--
ALTER TABLE `orlms_dissemination_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_dissemination_pub` (`publication_id`,`delivery_status`),
  ADD KEY `fk_orlms_dissemination_office` (`office_id`),
  ADD KEY `fk_orlms_dissemination_user` (`user_id`);

--
-- Indexes for table `orlms_draft_versions`
--
ALTER TABLE `orlms_draft_versions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_draft_version` (`legislative_item_id`,`version_number`),
  ADD KEY `idx_orlms_draft_version_date` (`legislative_item_id`,`created_at`),
  ADD KEY `fk_orlms_draft_version_user` (`created_by`);

--
-- Indexes for table `orlms_enactments`
--
ALTER TABLE `orlms_enactments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_enactment_item` (`legislative_item_id`),
  ADD UNIQUE KEY `uq_orlms_enactment_reference` (`enactment_reference`),
  ADD UNIQUE KEY `uq_orlms_official_number` (`official_number`),
  ADD KEY `idx_orlms_enactment_date` (`enactment_date`),
  ADD KEY `fk_orlms_enactment_recorded_by` (`recorded_by`),
  ADD KEY `fk_orlms_enactment_finalized_by` (`finalized_by`);

--
-- Indexes for table `orlms_enactment_history`
--
ALTER TABLE `orlms_enactment_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_enactment_history_enactment` (`enactment_id`,`created_at`),
  ADD KEY `fk_orlms_enactment_history_item` (`legislative_item_id`),
  ADD KEY `fk_orlms_enactment_history_user` (`changed_by`);

--
-- Indexes for table `orlms_endorsements`
--
ALTER TABLE `orlms_endorsements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_endorsement_review` (`review_id`),
  ADD KEY `idx_orlms_endorsement_item` (`legislative_item_id`,`endorsement_status`),
  ADD KEY `fk_orlms_endorsement_committee` (`committee_id`),
  ADD KEY `fk_orlms_endorsement_user` (`endorsed_by`);

--
-- Indexes for table `orlms_implementation_documents`
--
ALTER TABLE `orlms_implementation_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_impl_document_plan` (`implementation_plan_id`,`uploaded_at`),
  ADD KEY `idx_orlms_impl_document_update` (`implementation_update_id`),
  ADD KEY `fk_orlms_impl_document_user` (`uploaded_by`);

--
-- Indexes for table `orlms_implementation_history`
--
ALTER TABLE `orlms_implementation_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_implementation_history_plan` (`implementation_plan_id`,`created_at`),
  ADD KEY `fk_orlms_implementation_history_item` (`legislative_item_id`),
  ADD KEY `fk_orlms_implementation_history_user` (`changed_by`);

--
-- Indexes for table `orlms_implementation_issues`
--
ALTER TABLE `orlms_implementation_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_impl_issue_plan` (`implementation_plan_id`,`status`,`severity`),
  ADD KEY `idx_orlms_impl_issue_due` (`due_date`,`status`),
  ADD KEY `fk_orlms_impl_issue_office` (`responsible_office_id`),
  ADD KEY `fk_orlms_impl_issue_created_by` (`created_by`),
  ADD KEY `fk_orlms_impl_issue_resolved_by` (`resolved_by`);

--
-- Indexes for table `orlms_implementation_plans`
--
ALTER TABLE `orlms_implementation_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_plan_reference` (`plan_reference`),
  ADD KEY `idx_orlms_plan_item` (`legislative_item_id`,`status`),
  ADD KEY `idx_orlms_plan_due` (`due_date`,`status`),
  ADD KEY `fk_orlms_plan_office` (`responsible_office_id`),
  ADD KEY `fk_orlms_plan_user` (`responsible_user_id`),
  ADD KEY `fk_orlms_plan_created_by` (`created_by`);

--
-- Indexes for table `orlms_implementation_updates`
--
ALTER TABLE `orlms_implementation_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_impl_update_plan` (`implementation_plan_id`,`update_date`),
  ADD KEY `fk_orlms_impl_update_user` (`updated_by`);

--
-- Indexes for table `orlms_item_authors`
--
ALTER TABLE `orlms_item_authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_author_item` (`legislative_item_id`,`sequence_number`),
  ADD KEY `idx_orlms_author_user` (`user_id`),
  ADD KEY `fk_orlms_author_office` (`office_id`),
  ADD KEY `fk_orlms_author_created_by` (`created_by`);

--
-- Indexes for table `orlms_item_details`
--
ALTER TABLE `orlms_item_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_item_details_item` (`legislative_item_id`),
  ADD KEY `idx_orlms_item_details_status` (`draft_status`,`updated_at`),
  ADD KEY `idx_orlms_item_details_category` (`legislative_category`,`policy_area`),
  ADD KEY `fk_orlms_item_details_template` (`template_id`),
  ADD KEY `fk_orlms_item_details_submitted_by` (`submitted_by`),
  ADD KEY `fk_orlms_item_details_last_editor` (`last_edited_by`);

--
-- Indexes for table `orlms_login_attempts`
--
ALTER TABLE `orlms_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_login_email_time` (`email_hash`,`attempted_at`),
  ADD KEY `idx_orlms_login_ip_time` (`ip_hash`,`attempted_at`),
  ADD KEY `idx_orlms_login_time` (`attempted_at`);

--
-- Indexes for table `orlms_publications`
--
ALTER TABLE `orlms_publications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_publication_reference` (`publication_reference`),
  ADD KEY `idx_orlms_publication_item` (`legislative_item_id`,`publication_status`),
  ADD KEY `idx_orlms_publication_date` (`publication_date`),
  ADD KEY `fk_orlms_publication_user` (`published_by`);

--
-- Indexes for table `orlms_publication_documents`
--
ALTER TABLE `orlms_publication_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_publication_document` (`publication_id`,`uploaded_at`),
  ADD KEY `fk_orlms_publication_document_user` (`uploaded_by`);

--
-- Indexes for table `orlms_publication_history`
--
ALTER TABLE `orlms_publication_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_publication_history_publication` (`publication_id`,`created_at`),
  ADD KEY `fk_orlms_publication_history_item` (`legislative_item_id`),
  ADD KEY `fk_orlms_publication_history_user` (`changed_by`);

--
-- Indexes for table `orlms_reviews`
--
ALTER TABLE `orlms_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_review_item` (`legislative_item_id`,`status`),
  ADD KEY `idx_orlms_review_committee` (`committee_id`,`status`),
  ADD KEY `fk_orlms_review_reviewer` (`reviewer_id`),
  ADD KEY `fk_orlms_review_created_by` (`created_by`);

--
-- Indexes for table `orlms_review_checklist`
--
ALTER TABLE `orlms_review_checklist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_review_check_code` (`review_id`,`check_code`),
  ADD KEY `idx_orlms_review_check_status` (`review_id`,`check_status`),
  ADD KEY `fk_orlms_review_check_user` (`reviewed_by`);

--
-- Indexes for table `orlms_review_comments`
--
ALTER TABLE `orlms_review_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_review_comment_review` (`review_id`,`status`,`created_at`),
  ADD KEY `idx_orlms_review_comment_item` (`legislative_item_id`,`status`),
  ADD KEY `fk_orlms_review_comment_created_by` (`created_by`),
  ADD KEY `fk_orlms_review_comment_resolved_by` (`resolved_by`);

--
-- Indexes for table `orlms_revision_history`
--
ALTER TABLE `orlms_revision_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_revision_version` (`legislative_item_id`,`version_number`),
  ADD KEY `idx_orlms_revision_current` (`legislative_item_id`,`is_current`),
  ADD KEY `fk_orlms_revision_amendment` (`amendment_id`),
  ADD KEY `fk_orlms_revision_user` (`created_by`);

--
-- Indexes for table `orlms_schema_migrations`
--
ALTER TABLE `orlms_schema_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_migration_key` (`migration_key`);

--
-- Indexes for table `orlms_templates`
--
ALTER TABLE `orlms_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_orlms_template_code` (`template_code`),
  ADD KEY `idx_orlms_template_type_status` (`item_type_id`,`status`),
  ADD KEY `fk_orlms_template_created_by` (`created_by`);

--
-- Indexes for table `orlms_workflow_history`
--
ALTER TABLE `orlms_workflow_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_orlms_workflow_item_date` (`legislative_item_id`,`created_at`),
  ADD KEY `idx_orlms_workflow_stage` (`stage_code`,`new_status`),
  ADD KEY `fk_orlms_workflow_from_committee` (`from_committee_id`),
  ADD KEY `fk_orlms_workflow_to_committee` (`to_committee_id`),
  ADD KEY `fk_orlms_workflow_from_office` (`from_office_id`),
  ADD KEY `fk_orlms_workflow_to_office` (`to_office_id`),
  ADD KEY `fk_orlms_workflow_assigned_user` (`assigned_user_id`),
  ADD KEY `fk_orlms_workflow_actor` (`acted_by`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `fk_permissions_system` (`system_id`);

--
-- Indexes for table `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code_value` (`code_value`),
  ADD KEY `stakeholder_id` (`stakeholder_id`),
  ADD KEY `fk_qr_registration` (`registration_id`),
  ADD KEY `fk_qr_hearing` (`hearing_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_registration_code` (`registration_code`),
  ADD UNIQUE KEY `uq_registration_stakeholder_hearing` (`stakeholder_id`,`hearing_id`),
  ADD KEY `hearing_id` (`hearing_id`),
  ADD KEY `fk_registrations_approved_by` (`approved_by`);

--
-- Indexes for table `registration_history`
--
ALTER TABLE `registration_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_registration_history_registration` (`registration_id`,`created_at`),
  ADD KEY `fk_registration_history_user` (`changed_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `fk_role_permissions_permission` (`permission_id`);

--
-- Indexes for table `stakeholders`
--
ALTER TABLE `stakeholders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fk_stakeholders_user` (`user_id`),
  ADD KEY `fk_stakeholders_verified_by` (`verified_by`);

--
-- Indexes for table `stakeholder_categories`
--
ALTER TABLE `stakeholder_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `stakeholder_history`
--
ALTER TABLE `stakeholder_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_stakeholder_history_stakeholder` (`stakeholder_id`,`created_at`),
  ADD KEY `fk_stakeholder_history_user` (`changed_by`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_surveys_hearing` (`hearing_id`),
  ADD KEY `fk_surveys_legislative_item` (`legislative_item_id`),
  ADD KEY `fk_surveys_created_by` (`created_by`);

--
-- Indexes for table `survey_answers`
--
ALTER TABLE `survey_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_survey_answers_submission` (`submission_id`),
  ADD KEY `fk_survey_answers_question` (`question_id`),
  ADD KEY `fk_survey_answers_option` (`option_id`);

--
-- Indexes for table `survey_history`
--
ALTER TABLE `survey_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_survey_history_survey` (`survey_id`,`created_at`),
  ADD KEY `fk_survey_history_user` (`changed_by`);

--
-- Indexes for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_survey_questions_survey` (`survey_id`);

--
-- Indexes for table `survey_question_options`
--
ALTER TABLE `survey_question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_survey_options_question` (`question_id`);

--
-- Indexes for table `survey_responses`
--
ALTER TABLE `survey_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_submissions`
--
ALTER TABLE `survey_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_survey_submissions_survey` (`survey_id`),
  ADD KEY `fk_survey_submissions_stakeholder` (`stakeholder_id`),
  ADD KEY `fk_survey_submissions_user` (`user_id`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `uq_users_username` (`username`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `fk_users_office` (`office_id`),
  ADD KEY `fk_users_department` (`department_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `fk_user_roles_role` (`role_id`),
  ADD KEY `fk_user_roles_assigned_by` (`assigned_by`);

--
-- Indexes for table `user_system_access`
--
ALTER TABLE `user_system_access`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_system` (`user_id`,`system_id`),
  ADD KEY `fk_user_system_access_system` (`system_id`),
  ADD KEY `fk_user_system_access_granted_by` (`granted_by`);

--
-- Indexes for table `vqd_ai_analysis`
--
ALTER TABLE `vqd_ai_analysis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_ai_module_ref` (`module`,`reference_id`),
  ADD KEY `idx_vqd_ai_created` (`created_at`);

--
-- Indexes for table `vqd_ballot_challenges`
--
ALTER TABLE `vqd_ballot_challenges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_ballot_challenge_event` (`voting_event_id`,`status`),
  ADD KEY `idx_vqd_ballot_challenge_vote` (`vote_id`),
  ADD KEY `fk_vqd_ballot_challenge_raised_by` (`raised_by`),
  ADD KEY `fk_vqd_ballot_challenge_resolved_by` (`resolved_by`);

--
-- Indexes for table `vqd_decisions`
--
ALTER TABLE `vqd_decisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_decision_reference` (`reference_number`),
  ADD UNIQUE KEY `uq_vqd_decision_record_number` (`decision_record_number`),
  ADD UNIQUE KEY `uq_vqd_decision_tally` (`tally_id`),
  ADD KEY `idx_vqd_decision_item` (`legislative_item_id`),
  ADD KEY `idx_vqd_decision_event` (`voting_event_id`),
  ADD KEY `idx_vqd_decision_tally` (`tally_id`),
  ADD KEY `idx_vqd_decision_status` (`record_status`,`official_outcome`),
  ADD KEY `fk_vqd_decision_recorded_by` (`recorded_by`),
  ADD KEY `fk_vqd_decision_certified_by` (`certified_by`),
  ADD KEY `fk_vqd_decision_published_by` (`published_by`),
  ADD KEY `fk_vqd_decision_created_by` (`created_by`);

--
-- Indexes for table `vqd_decision_actions`
--
ALTER TABLE `vqd_decision_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_decision_actions_decision` (`decision_id`,`status`),
  ADD KEY `fk_vqd_decision_actions_office` (`responsible_office_id`),
  ADD KEY `fk_vqd_decision_actions_user` (`responsible_user_id`),
  ADD KEY `fk_vqd_decision_actions_created_by` (`created_by`);

--
-- Indexes for table `vqd_decision_action_history`
--
ALTER TABLE `vqd_decision_action_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_decision_action_history_action` (`decision_action_id`,`created_at`),
  ADD KEY `fk_vqd_decision_action_history_user` (`changed_by`);

--
-- Indexes for table `vqd_decision_documents`
--
ALTER TABLE `vqd_decision_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_decision_documents_decision` (`decision_id`,`uploaded_at`),
  ADD KEY `fk_vqd_decision_documents_user` (`uploaded_by`);

--
-- Indexes for table `vqd_decision_history`
--
ALTER TABLE `vqd_decision_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_decision_history_decision` (`decision_id`,`created_at`),
  ADD KEY `fk_vqd_decision_history_user` (`changed_by`);

--
-- Indexes for table `vqd_decision_notifications`
--
ALTER TABLE `vqd_decision_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_decision_notifications_decision` (`decision_id`,`status`);

--
-- Indexes for table `vqd_login_attempts`
--
ALTER TABLE `vqd_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_login_email` (`email_hash`,`attempted_at`),
  ADD KEY `idx_vqd_login_ip` (`ip_hash`,`attempted_at`),
  ADD KEY `idx_vqd_login_success` (`successful`,`attempted_at`);

--
-- Indexes for table `vqd_quorum_checks`
--
ALTER TABLE `vqd_quorum_checks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_quorum_reference` (`reference_number`),
  ADD KEY `idx_vqd_quorum_session` (`session_id`),
  ADD KEY `idx_vqd_quorum_item` (`legislative_item_id`),
  ADD KEY `idx_vqd_quorum_status` (`verification_status`,`quorum_result`),
  ADD KEY `fk_vqd_quorum_checked_by` (`checked_by`),
  ADD KEY `fk_vqd_quorum_certified_by` (`certified_by`),
  ADD KEY `fk_vqd_quorum_revoked_by` (`revoked_by`),
  ADD KEY `fk_vqd_quorum_created_by` (`created_by`);

--
-- Indexes for table `vqd_quorum_check_members`
--
ALTER TABLE `vqd_quorum_check_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_quorum_member` (`quorum_check_id`,`user_id`),
  ADD KEY `idx_vqd_quorum_check_member_user` (`user_id`),
  ADD KEY `fk_vqd_quorum_check_members_session_member` (`session_member_id`),
  ADD KEY `fk_vqd_quorum_check_members_verified_by` (`verified_by`);

--
-- Indexes for table `vqd_quorum_documents`
--
ALTER TABLE `vqd_quorum_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_quorum_documents_check` (`quorum_check_id`,`uploaded_at`),
  ADD KEY `fk_vqd_quorum_documents_user` (`uploaded_by`);

--
-- Indexes for table `vqd_quorum_history`
--
ALTER TABLE `vqd_quorum_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_quorum_history_check` (`quorum_check_id`,`created_at`),
  ADD KEY `fk_vqd_quorum_history_user` (`changed_by`);

--
-- Indexes for table `vqd_result_validations`
--
ALTER TABLE `vqd_result_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_validation_reference` (`validation_reference`),
  ADD KEY `idx_vqd_validation_item` (`legislative_item_id`),
  ADD KEY `idx_vqd_validation_decision` (`decision_id`),
  ADD KEY `idx_vqd_validation_status` (`validation_status`,`validation_outcome`),
  ADD KEY `fk_vqd_validation_quorum` (`quorum_check_id`),
  ADD KEY `fk_vqd_validation_voting` (`voting_event_id`),
  ADD KEY `fk_vqd_validation_tally` (`tally_id`),
  ADD KEY `fk_vqd_validation_office` (`requesting_office_id`),
  ADD KEY `fk_vqd_validation_lead` (`lead_validator_id`),
  ADD KEY `fk_vqd_validation_reviewer` (`reviewed_by_id`),
  ADD KEY `fk_vqd_validation_certifier` (`certified_by`),
  ADD KEY `fk_vqd_validation_created_by` (`created_by`);

--
-- Indexes for table `vqd_schema_migrations`
--
ALTER TABLE `vqd_schema_migrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_schema_migrations_key` (`migration_key`);

--
-- Indexes for table `vqd_sessions`
--
ALTER TABLE `vqd_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_sessions_reference` (`reference_number`),
  ADD KEY `idx_vqd_sessions_item` (`legislative_item_id`),
  ADD KEY `idx_vqd_sessions_committee` (`committee_id`),
  ADD KEY `idx_vqd_sessions_schedule` (`session_date`,`start_time`),
  ADD KEY `idx_vqd_sessions_status` (`status`),
  ADD KEY `fk_vqd_sessions_office` (`office_id`),
  ADD KEY `fk_vqd_sessions_presiding` (`presiding_officer_id`),
  ADD KEY `fk_vqd_sessions_secretary` (`secretary_user_id`),
  ADD KEY `fk_vqd_sessions_created_by` (`created_by`);

--
-- Indexes for table `vqd_session_documents`
--
ALTER TABLE `vqd_session_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_session_documents_session` (`session_id`,`uploaded_at`),
  ADD KEY `fk_vqd_session_documents_user` (`uploaded_by`);

--
-- Indexes for table `vqd_session_history`
--
ALTER TABLE `vqd_session_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_session_history_session` (`session_id`,`created_at`),
  ADD KEY `fk_vqd_session_history_user` (`changed_by`);

--
-- Indexes for table `vqd_session_members`
--
ALTER TABLE `vqd_session_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_session_member` (`session_id`,`user_id`),
  ADD KEY `idx_vqd_session_members_user` (`user_id`),
  ADD KEY `idx_vqd_session_members_eligibility` (`eligibility_status`),
  ADD KEY `fk_vqd_session_members_committee` (`committee_id`),
  ADD KEY `fk_vqd_session_members_added_by` (`added_by`);

--
-- Indexes for table `vqd_tally_documents`
--
ALTER TABLE `vqd_tally_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_tally_documents_tally` (`tally_id`,`uploaded_at`),
  ADD KEY `fk_vqd_tally_documents_user` (`uploaded_by`);

--
-- Indexes for table `vqd_tally_history`
--
ALTER TABLE `vqd_tally_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_tally_history_tally` (`tally_id`,`created_at`),
  ADD KEY `fk_vqd_tally_history_user` (`changed_by`);

--
-- Indexes for table `vqd_tally_recounts`
--
ALTER TABLE `vqd_tally_recounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_tally_recount_number` (`tally_id`,`recount_number`),
  ADD KEY `fk_vqd_tally_recounts_user` (`performed_by`);

--
-- Indexes for table `vqd_validation_checks`
--
ALTER TABLE `vqd_validation_checks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_validation_checks_validation` (`validation_id`,`sequence_number`),
  ADD KEY `fk_vqd_validation_checks_user` (`reviewed_by`);

--
-- Indexes for table `vqd_validation_documents`
--
ALTER TABLE `vqd_validation_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_validation_documents_validation` (`validation_id`,`uploaded_at`),
  ADD KEY `fk_vqd_validation_documents_user` (`uploaded_by`);

--
-- Indexes for table `vqd_validation_findings`
--
ALTER TABLE `vqd_validation_findings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_validation_findings_validation` (`validation_id`,`status`),
  ADD KEY `fk_vqd_validation_findings_office` (`responsible_office_id`),
  ADD KEY `fk_vqd_validation_findings_user` (`resolved_by`);

--
-- Indexes for table `vqd_validation_history`
--
ALTER TABLE `vqd_validation_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_validation_history_validation` (`validation_id`,`created_at`),
  ADD KEY `fk_vqd_validation_history_user` (`changed_by`);

--
-- Indexes for table `vqd_validation_reports`
--
ALTER TABLE `vqd_validation_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_validation_report_version` (`validation_id`,`report_type`,`version_number`),
  ADD KEY `idx_vqd_validation_reports_validation` (`validation_id`,`status`),
  ADD KEY `fk_vqd_validation_reports_generated_by` (`generated_by`),
  ADD KEY `fk_vqd_validation_reports_released_by` (`released_by`);

--
-- Indexes for table `vqd_votes`
--
ALTER TABLE `vqd_votes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_vote_voter_event` (`voting_event_id`,`event_voter_id`),
  ADD UNIQUE KEY `uq_vqd_vote_ballot_reference` (`ballot_reference`),
  ADD KEY `idx_vqd_votes_event` (`voting_event_id`,`is_valid`),
  ADD KEY `idx_vqd_votes_option` (`option_id`),
  ADD KEY `fk_vqd_votes_event_voter` (`event_voter_id`),
  ADD KEY `fk_vqd_votes_user` (`user_id`),
  ADD KEY `fk_vqd_votes_cast_by` (`cast_by`);

--
-- Indexes for table `vqd_vote_options`
--
ALTER TABLE `vqd_vote_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_vote_options_event` (`voting_event_id`,`sequence_number`);

--
-- Indexes for table `vqd_vote_tallies`
--
ALTER TABLE `vqd_vote_tallies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_tally_reference` (`reference_number`),
  ADD KEY `idx_vqd_tally_event` (`voting_event_id`),
  ADD KEY `idx_vqd_tally_item` (`legislative_item_id`),
  ADD KEY `idx_vqd_tally_status` (`tally_status`,`result_outcome`),
  ADD KEY `fk_vqd_tally_officer` (`tally_officer_id`),
  ADD KEY `fk_vqd_tally_reviewer` (`reviewer_id`),
  ADD KEY `fk_vqd_tally_certifier` (`certified_by`),
  ADD KEY `fk_vqd_tally_created_by` (`created_by`);

--
-- Indexes for table `vqd_vote_tally_options`
--
ALTER TABLE `vqd_vote_tally_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_tally_options_tally` (`tally_id`,`sequence_number`),
  ADD KEY `fk_vqd_tally_options_option` (`option_id`);

--
-- Indexes for table `vqd_voting_documents`
--
ALTER TABLE `vqd_voting_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_voting_documents_event` (`voting_event_id`,`uploaded_at`),
  ADD KEY `fk_vqd_voting_documents_user` (`uploaded_by`);

--
-- Indexes for table `vqd_voting_events`
--
ALTER TABLE `vqd_voting_events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_voting_reference` (`reference_number`),
  ADD KEY `idx_vqd_voting_session` (`session_id`),
  ADD KEY `idx_vqd_voting_quorum` (`quorum_check_id`),
  ADD KEY `idx_vqd_voting_item` (`legislative_item_id`),
  ADD KEY `idx_vqd_voting_status` (`status`),
  ADD KEY `fk_vqd_voting_committee` (`committee_id`),
  ADD KEY `fk_vqd_voting_office` (`office_id`),
  ADD KEY `fk_vqd_voting_opening_authority` (`opening_authority_id`),
  ADD KEY `fk_vqd_voting_closing_authority` (`closing_authority_id`),
  ADD KEY `fk_vqd_voting_operator` (`voting_operator_id`),
  ADD KEY `fk_vqd_voting_presiding` (`presiding_officer_id`),
  ADD KEY `fk_vqd_voting_created_by` (`created_by`);

--
-- Indexes for table `vqd_voting_event_voters`
--
ALTER TABLE `vqd_voting_event_voters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_vqd_event_voter` (`voting_event_id`,`user_id`),
  ADD UNIQUE KEY `uq_vqd_event_voter_token` (`authorization_token_hash`),
  ADD KEY `idx_vqd_event_voters_user` (`user_id`),
  ADD KEY `fk_vqd_event_voters_session_member` (`session_member_id`);

--
-- Indexes for table `vqd_voting_history`
--
ALTER TABLE `vqd_voting_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vqd_voting_history_event` (`voting_event_id`,`created_at`),
  ADD KEY `fk_vqd_voting_history_user` (`changed_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT for table `ai_request_logs`
--
ALTER TABLE `ai_request_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_event_history`
--
ALTER TABLE `attendance_event_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cef_ai_analysis`
--
ALTER TABLE `cef_ai_analysis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cef_ai_analysis_history`
--
ALTER TABLE `cef_ai_analysis_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cef_analytics_alerts`
--
ALTER TABLE `cef_analytics_alerts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cef_analytics_snapshots`
--
ALTER TABLE `cef_analytics_snapshots`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cef_assignments`
--
ALTER TABLE `cef_assignments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cef_assignment_history`
--
ALTER TABLE `cef_assignment_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cef_case_updates`
--
ALTER TABLE `cef_case_updates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cef_categories`
--
ALTER TABLE `cef_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cef_complaints`
--
ALTER TABLE `cef_complaints`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cef_duplicate_matches`
--
ALTER TABLE `cef_duplicate_matches`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cef_escalations`
--
ALTER TABLE `cef_escalations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cef_feedback_submissions`
--
ALTER TABLE `cef_feedback_submissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cef_followups`
--
ALTER TABLE `cef_followups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cef_legislative_referrals`
--
ALTER TABLE `cef_legislative_referrals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cef_moderation_checklist`
--
ALTER TABLE `cef_moderation_checklist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cef_moderation_reviews`
--
ALTER TABLE `cef_moderation_reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cef_notifications`
--
ALTER TABLE `cef_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cef_notification_delivery_attempts`
--
ALTER TABLE `cef_notification_delivery_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cef_notification_recipients`
--
ALTER TABLE `cef_notification_recipients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cef_proposals`
--
ALTER TABLE `cef_proposals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cef_responses`
--
ALTER TABLE `cef_responses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cef_response_documents`
--
ALTER TABLE `cef_response_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cef_response_history`
--
ALTER TABLE `cef_response_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cef_service_levels`
--
ALTER TABLE `cef_service_levels`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cef_submissions`
--
ALTER TABLE `cef_submissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cef_submission_documents`
--
ALTER TABLE `cef_submission_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cef_submission_history`
--
ALTER TABLE `cef_submission_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `cepfms_login_attempts`
--
ALTER TABLE `cepfms_login_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `citizen_portal_login_attempts`
--
ALTER TABLE `citizen_portal_login_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `citizen_portal_profiles`
--
ALTER TABLE `citizen_portal_profiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `citizen_portal_schema_migrations`
--
ALTER TABLE `citizen_portal_schema_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `committees`
--
ALTER TABLE `committees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback_ai_analysis`
--
ALTER TABLE `feedback_ai_analysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback_ai_analysis_history`
--
ALTER TABLE `feedback_ai_analysis_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback_categories`
--
ALTER TABLE `feedback_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback_history`
--
ALTER TABLE `feedback_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hearings`
--
ALTER TABLE `hearings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hearing_actions`
--
ALTER TABLE `hearing_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hearing_action_assignments`
--
ALTER TABLE `hearing_action_assignments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hearing_action_documents`
--
ALTER TABLE `hearing_action_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hearing_action_updates`
--
ALTER TABLE `hearing_action_updates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hearing_documents`
--
ALTER TABLE `hearing_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hearing_history`
--
ALTER TABLE `hearing_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hearing_issues`
--
ALTER TABLE `hearing_issues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hearing_issue_assignments`
--
ALTER TABLE `hearing_issue_assignments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hearing_issue_categories`
--
ALTER TABLE `hearing_issue_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hearing_issue_documents`
--
ALTER TABLE `hearing_issue_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hearing_issue_history`
--
ALTER TABLE `hearing_issue_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hearing_responses`
--
ALTER TABLE `hearing_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hearing_response_history`
--
ALTER TABLE `hearing_response_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hearing_types`
--
ALTER TABLE `hearing_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `invitation_history`
--
ALTER TABLE `invitation_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `lacms_agendas`
--
ALTER TABLE `lacms_agendas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lacms_agenda_documents`
--
ALTER TABLE `lacms_agenda_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_agenda_history`
--
ALTER TABLE `lacms_agenda_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lacms_agenda_items`
--
ALTER TABLE `lacms_agenda_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lacms_agenda_item_history`
--
ALTER TABLE `lacms_agenda_item_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lacms_ai_request_logs`
--
ALTER TABLE `lacms_ai_request_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lacms_calendar_conflicts`
--
ALTER TABLE `lacms_calendar_conflicts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_calendar_events`
--
ALTER TABLE `lacms_calendar_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lacms_calendar_event_documents`
--
ALTER TABLE `lacms_calendar_event_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_calendar_event_participants`
--
ALTER TABLE `lacms_calendar_event_participants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lacms_calendar_history`
--
ALTER TABLE `lacms_calendar_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lacms_deadlines`
--
ALTER TABLE `lacms_deadlines`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lacms_deadline_assignments`
--
ALTER TABLE `lacms_deadline_assignments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lacms_deadline_documents`
--
ALTER TABLE `lacms_deadline_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_deadline_escalations`
--
ALTER TABLE `lacms_deadline_escalations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lacms_deadline_history`
--
ALTER TABLE `lacms_deadline_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lacms_deadline_reminders`
--
ALTER TABLE `lacms_deadline_reminders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lacms_login_attempts`
--
ALTER TABLE `lacms_login_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lacms_meetings`
--
ALTER TABLE `lacms_meetings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lacms_meeting_documents`
--
ALTER TABLE `lacms_meeting_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_meeting_history`
--
ALTER TABLE `lacms_meeting_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lacms_meeting_participants`
--
ALTER TABLE `lacms_meeting_participants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_notifications`
--
ALTER TABLE `lacms_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lacms_notification_delivery_attempts`
--
ALTER TABLE `lacms_notification_delivery_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_notification_history`
--
ALTER TABLE `lacms_notification_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lacms_notification_recipients`
--
ALTER TABLE `lacms_notification_recipients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lacms_reminder_templates`
--
ALTER TABLE `lacms_reminder_templates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lacms_schema_migrations`
--
ALTER TABLE `lacms_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lacms_sync_actions`
--
ALTER TABLE `lacms_sync_actions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_sync_documents`
--
ALTER TABLE `lacms_sync_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_sync_history`
--
ALTER TABLE `lacms_sync_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lacms_sync_records`
--
ALTER TABLE `lacms_sync_records`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legislative_items`
--
ALTER TABLE `legislative_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `legislative_item_status_history`
--
ALTER TABLE `legislative_item_status_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `legislative_item_types`
--
ALTER TABLE `legislative_item_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lph_cef_ai_analysis`
--
ALTER TABLE `lph_cef_ai_analysis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `lph_cef_ai_analysis_history`
--
ALTER TABLE `lph_cef_ai_analysis_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lph_login_attempts`
--
ALTER TABLE `lph_login_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lph_schema_migrations`
--
ALTER TABLE `lph_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orlms_ai_classifications`
--
ALTER TABLE `orlms_ai_classifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orlms_amendments`
--
ALTER TABLE `orlms_amendments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orlms_amendment_changes`
--
ALTER TABLE `orlms_amendment_changes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orlms_amendment_documents`
--
ALTER TABLE `orlms_amendment_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orlms_amendment_history`
--
ALTER TABLE `orlms_amendment_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orlms_approval_actions`
--
ALTER TABLE `orlms_approval_actions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orlms_approval_history`
--
ALTER TABLE `orlms_approval_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orlms_dissemination_recipients`
--
ALTER TABLE `orlms_dissemination_recipients`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orlms_draft_versions`
--
ALTER TABLE `orlms_draft_versions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orlms_enactments`
--
ALTER TABLE `orlms_enactments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orlms_enactment_history`
--
ALTER TABLE `orlms_enactment_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orlms_endorsements`
--
ALTER TABLE `orlms_endorsements`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orlms_implementation_documents`
--
ALTER TABLE `orlms_implementation_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orlms_implementation_history`
--
ALTER TABLE `orlms_implementation_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orlms_implementation_issues`
--
ALTER TABLE `orlms_implementation_issues`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orlms_implementation_plans`
--
ALTER TABLE `orlms_implementation_plans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orlms_implementation_updates`
--
ALTER TABLE `orlms_implementation_updates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orlms_item_authors`
--
ALTER TABLE `orlms_item_authors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orlms_item_details`
--
ALTER TABLE `orlms_item_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orlms_login_attempts`
--
ALTER TABLE `orlms_login_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orlms_publications`
--
ALTER TABLE `orlms_publications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orlms_publication_documents`
--
ALTER TABLE `orlms_publication_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orlms_publication_history`
--
ALTER TABLE `orlms_publication_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orlms_reviews`
--
ALTER TABLE `orlms_reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orlms_review_checklist`
--
ALTER TABLE `orlms_review_checklist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orlms_review_comments`
--
ALTER TABLE `orlms_review_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orlms_revision_history`
--
ALTER TABLE `orlms_revision_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orlms_schema_migrations`
--
ALTER TABLE `orlms_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orlms_templates`
--
ALTER TABLE `orlms_templates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orlms_workflow_history`
--
ALTER TABLE `orlms_workflow_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `qr_codes`
--
ALTER TABLE `qr_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registration_history`
--
ALTER TABLE `registration_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stakeholders`
--
ALTER TABLE `stakeholders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stakeholder_categories`
--
ALTER TABLE `stakeholder_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `stakeholder_history`
--
ALTER TABLE `stakeholder_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_answers`
--
ALTER TABLE `survey_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_history`
--
ALTER TABLE `survey_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_questions`
--
ALTER TABLE `survey_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_question_options`
--
ALTER TABLE `survey_question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_responses`
--
ALTER TABLE `survey_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_submissions`
--
ALTER TABLE `survey_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_system_access`
--
ALTER TABLE `user_system_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vqd_ai_analysis`
--
ALTER TABLE `vqd_ai_analysis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vqd_ballot_challenges`
--
ALTER TABLE `vqd_ballot_challenges`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_decisions`
--
ALTER TABLE `vqd_decisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vqd_decision_actions`
--
ALTER TABLE `vqd_decision_actions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vqd_decision_action_history`
--
ALTER TABLE `vqd_decision_action_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_decision_documents`
--
ALTER TABLE `vqd_decision_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_decision_history`
--
ALTER TABLE `vqd_decision_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `vqd_decision_notifications`
--
ALTER TABLE `vqd_decision_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_login_attempts`
--
ALTER TABLE `vqd_login_attempts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vqd_quorum_checks`
--
ALTER TABLE `vqd_quorum_checks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `vqd_quorum_check_members`
--
ALTER TABLE `vqd_quorum_check_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `vqd_quorum_documents`
--
ALTER TABLE `vqd_quorum_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vqd_quorum_history`
--
ALTER TABLE `vqd_quorum_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `vqd_result_validations`
--
ALTER TABLE `vqd_result_validations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vqd_schema_migrations`
--
ALTER TABLE `vqd_schema_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vqd_sessions`
--
ALTER TABLE `vqd_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `vqd_session_documents`
--
ALTER TABLE `vqd_session_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_session_history`
--
ALTER TABLE `vqd_session_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vqd_session_members`
--
ALTER TABLE `vqd_session_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `vqd_tally_documents`
--
ALTER TABLE `vqd_tally_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_tally_history`
--
ALTER TABLE `vqd_tally_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `vqd_tally_recounts`
--
ALTER TABLE `vqd_tally_recounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_validation_checks`
--
ALTER TABLE `vqd_validation_checks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `vqd_validation_documents`
--
ALTER TABLE `vqd_validation_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_validation_findings`
--
ALTER TABLE `vqd_validation_findings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_validation_history`
--
ALTER TABLE `vqd_validation_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vqd_validation_reports`
--
ALTER TABLE `vqd_validation_reports`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_votes`
--
ALTER TABLE `vqd_votes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `vqd_vote_options`
--
ALTER TABLE `vqd_vote_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `vqd_vote_tallies`
--
ALTER TABLE `vqd_vote_tallies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vqd_vote_tally_options`
--
ALTER TABLE `vqd_vote_tally_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `vqd_voting_documents`
--
ALTER TABLE `vqd_voting_documents`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vqd_voting_events`
--
ALTER TABLE `vqd_voting_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vqd_voting_event_voters`
--
ALTER TABLE `vqd_voting_event_voters`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `vqd_voting_history`
--
ALTER TABLE `vqd_voting_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `fk_activity_logs_system` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_activity_logs_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ai_request_logs`
--
ALTER TABLE `ai_request_logs`
  ADD CONSTRAINT `fk_ai_log_feedback` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`stakeholder_id`) REFERENCES `stakeholders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_attendance_registration` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_attendance_verified_by` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attendance_event_history`
--
ALTER TABLE `attendance_event_history`
  ADD CONSTRAINT `fk_attendance_event_attendance` FOREIGN KEY (`attendance_id`) REFERENCES `attendance` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_attendance_event_hearing` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_attendance_event_registration` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_attendance_event_stakeholder` FOREIGN KEY (`stakeholder_id`) REFERENCES `stakeholders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_attendance_event_user` FOREIGN KEY (`actor_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `attendance_logs`
--
ALTER TABLE `attendance_logs`
  ADD CONSTRAINT `attendance_logs_ibfk_1` FOREIGN KEY (`stakeholder_id`) REFERENCES `stakeholders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendance_logs_ibfk_2` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD CONSTRAINT `fk_audit_system` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_audit_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_ai_analysis`
--
ALTER TABLE `cef_ai_analysis`
  ADD CONSTRAINT `fk_cef_ai_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_ai_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_ai_analysis_history`
--
ALTER TABLE `cef_ai_analysis_history`
  ADD CONSTRAINT `fk_cef_ai_history_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_analytics_alerts`
--
ALTER TABLE `cef_analytics_alerts`
  ADD CONSTRAINT `fk_cef_analytics_alert_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_analytics_alert_resolver` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_assignments`
--
ALTER TABLE `cef_assignments`
  ADD CONSTRAINT `fk_cef_assignment_by` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_assignment_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_assignment_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_assignment_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_assignment_user` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_assignment_history`
--
ALTER TABLE `cef_assignment_history`
  ADD CONSTRAINT `fk_cef_assignment_history_assignment` FOREIGN KEY (`assignment_id`) REFERENCES `cef_assignments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_assignment_history_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_assignment_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_case_updates`
--
ALTER TABLE `cef_case_updates`
  ADD CONSTRAINT `fk_cef_case_update_assignment` FOREIGN KEY (`assignment_id`) REFERENCES `cef_assignments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_case_update_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_case_update_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_categories`
--
ALTER TABLE `cef_categories`
  ADD CONSTRAINT `fk_cef_category_committee` FOREIGN KEY (`default_committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_category_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_category_office` FOREIGN KEY (`default_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_category_parent` FOREIGN KEY (`parent_id`) REFERENCES `cef_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_complaints`
--
ALTER TABLE `cef_complaints`
  ADD CONSTRAINT `fk_cef_complaint_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_duplicate_matches`
--
ALTER TABLE `cef_duplicate_matches`
  ADD CONSTRAINT `fk_cef_duplicate_match` FOREIGN KEY (`matched_submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_duplicate_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_duplicate_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_escalations`
--
ALTER TABLE `cef_escalations`
  ADD CONSTRAINT `fk_cef_escalation_assignment` FOREIGN KEY (`assignment_id`) REFERENCES `cef_assignments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_escalation_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_escalation_office` FOREIGN KEY (`escalated_to_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_escalation_resolver` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_escalation_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_escalation_user` FOREIGN KEY (`escalated_to_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_feedback_submissions`
--
ALTER TABLE `cef_feedback_submissions`
  ADD CONSTRAINT `fk_cef_feedback_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_followups`
--
ALTER TABLE `cef_followups`
  ADD CONSTRAINT `fk_cef_followup_response` FOREIGN KEY (`response_id`) REFERENCES `cef_responses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_followup_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_followup_user` FOREIGN KEY (`sender_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_legislative_referrals`
--
ALTER TABLE `cef_legislative_referrals`
  ADD CONSTRAINT `fk_cef_referral_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_referral_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_referral_user` FOREIGN KEY (`referred_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_moderation_checklist`
--
ALTER TABLE `cef_moderation_checklist`
  ADD CONSTRAINT `fk_cef_moderation_check_review` FOREIGN KEY (`moderation_review_id`) REFERENCES `cef_moderation_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_moderation_check_user` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_moderation_reviews`
--
ALTER TABLE `cef_moderation_reviews`
  ADD CONSTRAINT `fk_cef_moderation_duplicate` FOREIGN KEY (`duplicate_of_submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_moderation_reviewer` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_moderation_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_notifications`
--
ALTER TABLE `cef_notifications`
  ADD CONSTRAINT `fk_cef_notification_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_notification_response` FOREIGN KEY (`response_id`) REFERENCES `cef_responses` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_notification_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_notification_delivery_attempts`
--
ALTER TABLE `cef_notification_delivery_attempts`
  ADD CONSTRAINT `fk_cef_notification_attempt_recipient` FOREIGN KEY (`notification_recipient_id`) REFERENCES `cef_notification_recipients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_notification_recipients`
--
ALTER TABLE `cef_notification_recipients`
  ADD CONSTRAINT `fk_cef_notification_recipient_notification` FOREIGN KEY (`notification_id`) REFERENCES `cef_notifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_notification_recipient_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_proposals`
--
ALTER TABLE `cef_proposals`
  ADD CONSTRAINT `fk_cef_proposal_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_responses`
--
ALTER TABLE `cef_responses`
  ADD CONSTRAINT `fk_cef_response_approver` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_response_assignment` FOREIGN KEY (`assignment_id`) REFERENCES `cef_assignments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_response_drafter` FOREIGN KEY (`drafted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_response_reviewer` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_response_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cef_response_documents`
--
ALTER TABLE `cef_response_documents`
  ADD CONSTRAINT `fk_cef_response_document_response` FOREIGN KEY (`response_id`) REFERENCES `cef_responses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_response_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_response_history`
--
ALTER TABLE `cef_response_history`
  ADD CONSTRAINT `fk_cef_response_history_response` FOREIGN KEY (`response_id`) REFERENCES `cef_responses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_response_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_submissions`
--
ALTER TABLE `cef_submissions`
  ADD CONSTRAINT `fk_cef_submission_category` FOREIGN KEY (`category_id`) REFERENCES `cef_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_submission_creator` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_cef_submission_user` FOREIGN KEY (`citizen_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_submission_documents`
--
ALTER TABLE `cef_submission_documents`
  ADD CONSTRAINT `fk_cef_submission_document` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_submission_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cef_submission_history`
--
ALTER TABLE `cef_submission_history`
  ADD CONSTRAINT `fk_cef_submission_history_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_cef_submission_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `citizen_portal_account_security`
--
ALTER TABLE `citizen_portal_account_security`
  ADD CONSTRAINT `fk_citizen_portal_security_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `citizen_portal_profiles`
--
ALTER TABLE `citizen_portal_profiles`
  ADD CONSTRAINT `fk_citizen_portal_profile_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `committees`
--
ALTER TABLE `committees`
  ADD CONSTRAINT `fk_committees_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `committee_members`
--
ALTER TABLE `committee_members`
  ADD CONSTRAINT `fk_committee_members_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_committee_members_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `fk_departments_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `fk_documents_legislative_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_documents_system` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_documents_uploaded_by` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `feedback_categories` (`id`),
  ADD CONSTRAINT `fk_feedback_hearing` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_feedback_legislative_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_feedback_replied_by` FOREIGN KEY (`replied_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_feedback_stakeholder` FOREIGN KEY (`stakeholder_id`) REFERENCES `stakeholders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_feedback_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_feedback_validated_by` FOREIGN KEY (`validated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `feedback_ai_analysis`
--
ALTER TABLE `feedback_ai_analysis`
  ADD CONSTRAINT `fk_ai_analysis_feedback` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback_ai_analysis_history`
--
ALTER TABLE `feedback_ai_analysis_history`
  ADD CONSTRAINT `fk_ai_history_feedback` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback_history`
--
ALTER TABLE `feedback_history`
  ADD CONSTRAINT `fk_feedback_history_feedback` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_feedback_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearings`
--
ALTER TABLE `hearings`
  ADD CONSTRAINT `fk_hearings_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearings_legislative_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hearings_ibfk_1` FOREIGN KEY (`hearing_type_id`) REFERENCES `hearing_types` (`id`),
  ADD CONSTRAINT `hearings_ibfk_2` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`);

--
-- Constraints for table `hearing_actions`
--
ALTER TABLE `hearing_actions`
  ADD CONSTRAINT `fk_hearing_actions_assigned_user` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_actions_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_actions_issue` FOREIGN KEY (`issue_id`) REFERENCES `hearing_issues` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_actions_office` FOREIGN KEY (`assigned_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_action_assignments`
--
ALTER TABLE `hearing_action_assignments`
  ADD CONSTRAINT `fk_hearing_action_assignments_action` FOREIGN KEY (`action_id`) REFERENCES `hearing_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hearing_action_assignments_assigned_by` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_action_assignments_office` FOREIGN KEY (`assigned_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_action_assignments_user` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_action_documents`
--
ALTER TABLE `hearing_action_documents`
  ADD CONSTRAINT `fk_hearing_action_documents_action` FOREIGN KEY (`action_id`) REFERENCES `hearing_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hearing_action_documents_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_action_updates`
--
ALTER TABLE `hearing_action_updates`
  ADD CONSTRAINT `fk_hearing_action_updates_action` FOREIGN KEY (`action_id`) REFERENCES `hearing_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hearing_action_updates_user` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_documents`
--
ALTER TABLE `hearing_documents`
  ADD CONSTRAINT `fk_hearing_documents_uploaded_by` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `hearing_documents_ibfk_1` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hearing_history`
--
ALTER TABLE `hearing_history`
  ADD CONSTRAINT `fk_hearing_history_hearing` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hearing_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_issues`
--
ALTER TABLE `hearing_issues`
  ADD CONSTRAINT `fk_hearing_issues_assigned_user` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_issues_category` FOREIGN KEY (`category_id`) REFERENCES `hearing_issue_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_issues_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_issues_feedback` FOREIGN KEY (`feedback_id`) REFERENCES `feedback` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_issues_hearing` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_issues_legislative_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_issues_office` FOREIGN KEY (`assigned_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_issue_assignments`
--
ALTER TABLE `hearing_issue_assignments`
  ADD CONSTRAINT `fk_hearing_issue_assignments_assigned_by` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_issue_assignments_issue` FOREIGN KEY (`issue_id`) REFERENCES `hearing_issues` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hearing_issue_assignments_office` FOREIGN KEY (`assigned_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_issue_assignments_user` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_issue_documents`
--
ALTER TABLE `hearing_issue_documents`
  ADD CONSTRAINT `fk_hearing_issue_documents_issue` FOREIGN KEY (`issue_id`) REFERENCES `hearing_issues` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hearing_issue_documents_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_issue_history`
--
ALTER TABLE `hearing_issue_history`
  ADD CONSTRAINT `fk_hearing_issue_history_issue` FOREIGN KEY (`issue_id`) REFERENCES `hearing_issues` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hearing_issue_history_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_responses`
--
ALTER TABLE `hearing_responses`
  ADD CONSTRAINT `fk_hearing_responses_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_hearing_responses_issue` FOREIGN KEY (`issue_id`) REFERENCES `hearing_issues` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hearing_responses_prepared_by` FOREIGN KEY (`prepared_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `hearing_response_history`
--
ALTER TABLE `hearing_response_history`
  ADD CONSTRAINT `fk_hearing_response_history_response` FOREIGN KEY (`response_id`) REFERENCES `hearing_responses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_hearing_response_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `invitations`
--
ALTER TABLE `invitations`
  ADD CONSTRAINT `fk_invitations_invited_by` FOREIGN KEY (`invited_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `invitations_ibfk_1` FOREIGN KEY (`stakeholder_id`) REFERENCES `stakeholders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invitations_ibfk_2` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`);

--
-- Constraints for table `invitation_history`
--
ALTER TABLE `invitation_history`
  ADD CONSTRAINT `fk_invitation_history_invitation` FOREIGN KEY (`invitation_id`) REFERENCES `invitations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_invitation_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_agendas`
--
ALTER TABLE `lacms_agendas`
  ADD CONSTRAINT `fk_lacms_agenda_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_agenda_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_agenda_finalized_by` FOREIGN KEY (`finalized_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_agenda_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_agenda_documents`
--
ALTER TABLE `lacms_agenda_documents`
  ADD CONSTRAINT `fk_lacms_agenda_document_agenda` FOREIGN KEY (`agenda_id`) REFERENCES `lacms_agendas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_agenda_document_item` FOREIGN KEY (`agenda_item_id`) REFERENCES `lacms_agenda_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_agenda_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_agenda_history`
--
ALTER TABLE `lacms_agenda_history`
  ADD CONSTRAINT `fk_lacms_agenda_history_agenda` FOREIGN KEY (`agenda_id`) REFERENCES `lacms_agendas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_agenda_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_agenda_items`
--
ALTER TABLE `lacms_agenda_items`
  ADD CONSTRAINT `fk_lacms_agenda_item_agenda` FOREIGN KEY (`agenda_id`) REFERENCES `lacms_agendas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_agenda_item_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_agenda_item_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_agenda_item_legislative` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_agenda_item_presenter` FOREIGN KEY (`presenter_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_agenda_item_sponsor` FOREIGN KEY (`sponsor_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_agenda_item_history`
--
ALTER TABLE `lacms_agenda_item_history`
  ADD CONSTRAINT `fk_lacms_agenda_item_history_agenda` FOREIGN KEY (`agenda_id`) REFERENCES `lacms_agendas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_agenda_item_history_item` FOREIGN KEY (`agenda_item_id`) REFERENCES `lacms_agenda_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_agenda_item_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_ai_request_logs`
--
ALTER TABLE `lacms_ai_request_logs`
  ADD CONSTRAINT `fk_lacms_ai_request_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_calendar_conflicts`
--
ALTER TABLE `lacms_calendar_conflicts`
  ADD CONSTRAINT `fk_lacms_calendar_conflict_event` FOREIGN KEY (`calendar_event_id`) REFERENCES `lacms_calendar_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_calendar_conflict_other` FOREIGN KEY (`conflicting_event_id`) REFERENCES `lacms_calendar_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_calendar_conflict_resolver` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_calendar_events`
--
ALTER TABLE `lacms_calendar_events`
  ADD CONSTRAINT `fk_lacms_event_agenda` FOREIGN KEY (`agenda_id`) REFERENCES `lacms_agendas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_event_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_event_confirmed_by` FOREIGN KEY (`confirmed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_event_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_event_legislative` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_event_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_calendar_event_documents`
--
ALTER TABLE `lacms_calendar_event_documents`
  ADD CONSTRAINT `fk_lacms_event_document_event` FOREIGN KEY (`calendar_event_id`) REFERENCES `lacms_calendar_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_event_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_calendar_event_participants`
--
ALTER TABLE `lacms_calendar_event_participants`
  ADD CONSTRAINT `fk_lacms_event_participant_event` FOREIGN KEY (`calendar_event_id`) REFERENCES `lacms_calendar_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_event_participant_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_calendar_history`
--
ALTER TABLE `lacms_calendar_history`
  ADD CONSTRAINT `fk_lacms_calendar_history_event` FOREIGN KEY (`calendar_event_id`) REFERENCES `lacms_calendar_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_calendar_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_deadlines`
--
ALTER TABLE `lacms_deadlines`
  ADD CONSTRAINT `fk_lacms_deadline_agenda` FOREIGN KEY (`agenda_id`) REFERENCES `lacms_agendas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_completed_by` FOREIGN KEY (`completed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_event` FOREIGN KEY (`calendar_event_id`) REFERENCES `lacms_calendar_events` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_legislative` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_meeting` FOREIGN KEY (`meeting_id`) REFERENCES `lacms_meetings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_responsible` FOREIGN KEY (`responsible_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_deadline_assignments`
--
ALTER TABLE `lacms_deadline_assignments`
  ADD CONSTRAINT `fk_lacms_deadline_assignment_by` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_assignment_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_assignment_deadline` FOREIGN KEY (`deadline_id`) REFERENCES `lacms_deadlines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_deadline_assignment_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_assignment_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_deadline_documents`
--
ALTER TABLE `lacms_deadline_documents`
  ADD CONSTRAINT `fk_lacms_deadline_document_deadline` FOREIGN KEY (`deadline_id`) REFERENCES `lacms_deadlines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_deadline_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_deadline_escalations`
--
ALTER TABLE `lacms_deadline_escalations`
  ADD CONSTRAINT `fk_lacms_deadline_escalation_created` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_escalation_deadline` FOREIGN KEY (`deadline_id`) REFERENCES `lacms_deadlines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_deadline_escalation_office` FOREIGN KEY (`escalated_to_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_escalation_resolved` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_deadline_escalation_user` FOREIGN KEY (`escalated_to_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_deadline_history`
--
ALTER TABLE `lacms_deadline_history`
  ADD CONSTRAINT `fk_lacms_deadline_history_deadline` FOREIGN KEY (`deadline_id`) REFERENCES `lacms_deadlines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_deadline_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_deadline_reminders`
--
ALTER TABLE `lacms_deadline_reminders`
  ADD CONSTRAINT `fk_lacms_deadline_reminder_deadline` FOREIGN KEY (`deadline_id`) REFERENCES `lacms_deadlines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_deadline_reminder_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_meetings`
--
ALTER TABLE `lacms_meetings`
  ADD CONSTRAINT `fk_lacms_meeting_agenda` FOREIGN KEY (`agenda_id`) REFERENCES `lacms_agendas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_meeting_calendar_event` FOREIGN KEY (`calendar_event_id`) REFERENCES `lacms_calendar_events` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_meeting_chair` FOREIGN KEY (`chair_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_meeting_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_meeting_confirmed_by` FOREIGN KEY (`confirmed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_meeting_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_meeting_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_meeting_secretary` FOREIGN KEY (`secretary_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_meeting_documents`
--
ALTER TABLE `lacms_meeting_documents`
  ADD CONSTRAINT `fk_lacms_meeting_document_meeting` FOREIGN KEY (`meeting_id`) REFERENCES `lacms_meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_meeting_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_meeting_history`
--
ALTER TABLE `lacms_meeting_history`
  ADD CONSTRAINT `fk_lacms_meeting_history_meeting` FOREIGN KEY (`meeting_id`) REFERENCES `lacms_meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_meeting_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_meeting_participants`
--
ALTER TABLE `lacms_meeting_participants`
  ADD CONSTRAINT `fk_lacms_meeting_participant_meeting` FOREIGN KEY (`meeting_id`) REFERENCES `lacms_meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_meeting_participant_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_notifications`
--
ALTER TABLE `lacms_notifications`
  ADD CONSTRAINT `fk_lacms_notification_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_notification_delivery_attempts`
--
ALTER TABLE `lacms_notification_delivery_attempts`
  ADD CONSTRAINT `fk_lacms_notification_delivery_recipient` FOREIGN KEY (`notification_recipient_id`) REFERENCES `lacms_notification_recipients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lacms_notification_history`
--
ALTER TABLE `lacms_notification_history`
  ADD CONSTRAINT `fk_lacms_notification_history_parent` FOREIGN KEY (`notification_id`) REFERENCES `lacms_notifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_notification_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_notification_recipients`
--
ALTER TABLE `lacms_notification_recipients`
  ADD CONSTRAINT `fk_lacms_notification_recipient_parent` FOREIGN KEY (`notification_id`) REFERENCES `lacms_notifications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_notification_recipient_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_reminder_templates`
--
ALTER TABLE `lacms_reminder_templates`
  ADD CONSTRAINT `fk_lacms_reminder_template_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_sync_actions`
--
ALTER TABLE `lacms_sync_actions`
  ADD CONSTRAINT `fk_lacms_sync_action_completed_by` FOREIGN KEY (`completed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_sync_action_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_sync_action_office` FOREIGN KEY (`responsible_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_sync_action_record` FOREIGN KEY (`sync_record_id`) REFERENCES `lacms_sync_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_sync_action_user` FOREIGN KEY (`responsible_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_sync_documents`
--
ALTER TABLE `lacms_sync_documents`
  ADD CONSTRAINT `fk_lacms_sync_document_record` FOREIGN KEY (`sync_record_id`) REFERENCES `lacms_sync_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_sync_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_sync_history`
--
ALTER TABLE `lacms_sync_history`
  ADD CONSTRAINT `fk_lacms_sync_history_record` FOREIGN KEY (`sync_record_id`) REFERENCES `lacms_sync_records` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_lacms_sync_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lacms_sync_records`
--
ALTER TABLE `lacms_sync_records`
  ADD CONSTRAINT `fk_lacms_sync_agenda` FOREIGN KEY (`agenda_id`) REFERENCES `lacms_agendas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_sync_committee` FOREIGN KEY (`target_committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_sync_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_sync_event` FOREIGN KEY (`calendar_event_id`) REFERENCES `lacms_calendar_events` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_sync_legislative` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_sync_office` FOREIGN KEY (`source_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_lacms_sync_resolved_by` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `legislative_items`
--
ALTER TABLE `legislative_items`
  ADD CONSTRAINT `fk_legislative_items_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_legislative_items_office` FOREIGN KEY (`originating_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_legislative_items_system` FOREIGN KEY (`origin_system_id`) REFERENCES `systems` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_legislative_items_type` FOREIGN KEY (`item_type_id`) REFERENCES `legislative_item_types` (`id`);

--
-- Constraints for table `legislative_item_status_history`
--
ALTER TABLE `legislative_item_status_history`
  ADD CONSTRAINT `fk_legislative_status_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_legislative_status_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `lph_cef_ai_analysis`
--
ALTER TABLE `lph_cef_ai_analysis`
  ADD CONSTRAINT `fk_lph_cef_ai_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lph_cef_ai_analysis_history`
--
ALTER TABLE `lph_cef_ai_analysis_history`
  ADD CONSTRAINT `fk_lph_cef_ai_history_submission` FOREIGN KEY (`submission_id`) REFERENCES `cef_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_system` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_notifications_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orlms_ai_classifications`
--
ALTER TABLE `orlms_ai_classifications`
  ADD CONSTRAINT `fk_orlms_ai_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_ai_user` FOREIGN KEY (`requested_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_ai_version` FOREIGN KEY (`draft_version_id`) REFERENCES `orlms_draft_versions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_amendments`
--
ALTER TABLE `orlms_amendments`
  ADD CONSTRAINT `fk_orlms_amendment_applied_by` FOREIGN KEY (`applied_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_amendment_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_amendment_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_amendment_proposed_by` FOREIGN KEY (`proposed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_amendment_related_item` FOREIGN KEY (`related_legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_amendment_reviewed_by` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_amendment_changes`
--
ALTER TABLE `orlms_amendment_changes`
  ADD CONSTRAINT `fk_orlms_amendment_change_parent` FOREIGN KEY (`amendment_id`) REFERENCES `orlms_amendments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orlms_amendment_documents`
--
ALTER TABLE `orlms_amendment_documents`
  ADD CONSTRAINT `fk_orlms_amendment_document_parent` FOREIGN KEY (`amendment_id`) REFERENCES `orlms_amendments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_amendment_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_amendment_history`
--
ALTER TABLE `orlms_amendment_history`
  ADD CONSTRAINT `fk_orlms_amendment_history_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_amendment_history_parent` FOREIGN KEY (`amendment_id`) REFERENCES `orlms_amendments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_amendment_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_approval_actions`
--
ALTER TABLE `orlms_approval_actions`
  ADD CONSTRAINT `fk_orlms_approval_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_approval_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_approval_office` FOREIGN KEY (`authority_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_approval_user` FOREIGN KEY (`authority_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_approval_history`
--
ALTER TABLE `orlms_approval_history`
  ADD CONSTRAINT `fk_orlms_approval_history_action` FOREIGN KEY (`approval_action_id`) REFERENCES `orlms_approval_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_approval_history_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_approval_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_dissemination_recipients`
--
ALTER TABLE `orlms_dissemination_recipients`
  ADD CONSTRAINT `fk_orlms_dissemination_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_dissemination_publication` FOREIGN KEY (`publication_id`) REFERENCES `orlms_publications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_dissemination_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_draft_versions`
--
ALTER TABLE `orlms_draft_versions`
  ADD CONSTRAINT `fk_orlms_draft_version_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_draft_version_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_enactments`
--
ALTER TABLE `orlms_enactments`
  ADD CONSTRAINT `fk_orlms_enactment_finalized_by` FOREIGN KEY (`finalized_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_enactment_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_enactment_recorded_by` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_enactment_history`
--
ALTER TABLE `orlms_enactment_history`
  ADD CONSTRAINT `fk_orlms_enactment_history_enactment` FOREIGN KEY (`enactment_id`) REFERENCES `orlms_enactments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_enactment_history_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_enactment_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_endorsements`
--
ALTER TABLE `orlms_endorsements`
  ADD CONSTRAINT `fk_orlms_endorsement_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_endorsement_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_endorsement_review` FOREIGN KEY (`review_id`) REFERENCES `orlms_reviews` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_endorsement_user` FOREIGN KEY (`endorsed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_implementation_documents`
--
ALTER TABLE `orlms_implementation_documents`
  ADD CONSTRAINT `fk_orlms_impl_document_plan` FOREIGN KEY (`implementation_plan_id`) REFERENCES `orlms_implementation_plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_impl_document_update` FOREIGN KEY (`implementation_update_id`) REFERENCES `orlms_implementation_updates` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_impl_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_implementation_history`
--
ALTER TABLE `orlms_implementation_history`
  ADD CONSTRAINT `fk_orlms_implementation_history_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_implementation_history_plan` FOREIGN KEY (`implementation_plan_id`) REFERENCES `orlms_implementation_plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_implementation_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_implementation_issues`
--
ALTER TABLE `orlms_implementation_issues`
  ADD CONSTRAINT `fk_orlms_impl_issue_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_impl_issue_office` FOREIGN KEY (`responsible_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_impl_issue_plan` FOREIGN KEY (`implementation_plan_id`) REFERENCES `orlms_implementation_plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_impl_issue_resolved_by` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_implementation_plans`
--
ALTER TABLE `orlms_implementation_plans`
  ADD CONSTRAINT `fk_orlms_plan_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_plan_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_plan_office` FOREIGN KEY (`responsible_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_plan_user` FOREIGN KEY (`responsible_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_implementation_updates`
--
ALTER TABLE `orlms_implementation_updates`
  ADD CONSTRAINT `fk_orlms_impl_update_plan` FOREIGN KEY (`implementation_plan_id`) REFERENCES `orlms_implementation_plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_impl_update_user` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_item_authors`
--
ALTER TABLE `orlms_item_authors`
  ADD CONSTRAINT `fk_orlms_author_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_author_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_author_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_author_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_item_details`
--
ALTER TABLE `orlms_item_details`
  ADD CONSTRAINT `fk_orlms_item_details_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_item_details_last_editor` FOREIGN KEY (`last_edited_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_item_details_submitted_by` FOREIGN KEY (`submitted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_item_details_template` FOREIGN KEY (`template_id`) REFERENCES `orlms_templates` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_publications`
--
ALTER TABLE `orlms_publications`
  ADD CONSTRAINT `fk_orlms_publication_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_publication_user` FOREIGN KEY (`published_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_publication_documents`
--
ALTER TABLE `orlms_publication_documents`
  ADD CONSTRAINT `fk_orlms_publication_document_publication` FOREIGN KEY (`publication_id`) REFERENCES `orlms_publications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_publication_document_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_publication_history`
--
ALTER TABLE `orlms_publication_history`
  ADD CONSTRAINT `fk_orlms_publication_history_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_publication_history_publication` FOREIGN KEY (`publication_id`) REFERENCES `orlms_publications` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_publication_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_reviews`
--
ALTER TABLE `orlms_reviews`
  ADD CONSTRAINT `fk_orlms_review_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_review_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_review_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_review_reviewer` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_review_checklist`
--
ALTER TABLE `orlms_review_checklist`
  ADD CONSTRAINT `fk_orlms_review_check_review` FOREIGN KEY (`review_id`) REFERENCES `orlms_reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_review_check_user` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_review_comments`
--
ALTER TABLE `orlms_review_comments`
  ADD CONSTRAINT `fk_orlms_review_comment_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_review_comment_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_review_comment_resolved_by` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_review_comment_review` FOREIGN KEY (`review_id`) REFERENCES `orlms_reviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orlms_revision_history`
--
ALTER TABLE `orlms_revision_history`
  ADD CONSTRAINT `fk_orlms_revision_amendment` FOREIGN KEY (`amendment_id`) REFERENCES `orlms_amendments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_revision_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_revision_user` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orlms_templates`
--
ALTER TABLE `orlms_templates`
  ADD CONSTRAINT `fk_orlms_template_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_template_type` FOREIGN KEY (`item_type_id`) REFERENCES `legislative_item_types` (`id`);

--
-- Constraints for table `orlms_workflow_history`
--
ALTER TABLE `orlms_workflow_history`
  ADD CONSTRAINT `fk_orlms_workflow_actor` FOREIGN KEY (`acted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_workflow_assigned_user` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_workflow_from_committee` FOREIGN KEY (`from_committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_workflow_from_office` FOREIGN KEY (`from_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_workflow_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_orlms_workflow_to_committee` FOREIGN KEY (`to_committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_orlms_workflow_to_office` FOREIGN KEY (`to_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `fk_permissions_system` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD CONSTRAINT `fk_qr_hearing` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_qr_registration` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `qr_codes_ibfk_1` FOREIGN KEY (`stakeholder_id`) REFERENCES `stakeholders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `fk_registrations_approved_by` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`stakeholder_id`) REFERENCES `stakeholders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`);

--
-- Constraints for table `registration_history`
--
ALTER TABLE `registration_history`
  ADD CONSTRAINT `fk_registration_history_registration` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_registration_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `fk_role_permissions_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_role_permissions_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stakeholders`
--
ALTER TABLE `stakeholders`
  ADD CONSTRAINT `fk_stakeholders_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_stakeholders_verified_by` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `stakeholders_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `stakeholder_categories` (`id`);

--
-- Constraints for table `stakeholder_history`
--
ALTER TABLE `stakeholder_history`
  ADD CONSTRAINT `fk_stakeholder_history_stakeholder` FOREIGN KEY (`stakeholder_id`) REFERENCES `stakeholders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_stakeholder_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `surveys`
--
ALTER TABLE `surveys`
  ADD CONSTRAINT `fk_surveys_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_surveys_hearing` FOREIGN KEY (`hearing_id`) REFERENCES `hearings` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_surveys_legislative_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `survey_answers`
--
ALTER TABLE `survey_answers`
  ADD CONSTRAINT `fk_survey_answers_option` FOREIGN KEY (`option_id`) REFERENCES `survey_question_options` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_survey_answers_question` FOREIGN KEY (`question_id`) REFERENCES `survey_questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_survey_answers_submission` FOREIGN KEY (`submission_id`) REFERENCES `survey_submissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `survey_history`
--
ALTER TABLE `survey_history`
  ADD CONSTRAINT `fk_survey_history_survey` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_survey_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `survey_questions`
--
ALTER TABLE `survey_questions`
  ADD CONSTRAINT `fk_survey_questions_survey` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `survey_question_options`
--
ALTER TABLE `survey_question_options`
  ADD CONSTRAINT `fk_survey_options_question` FOREIGN KEY (`question_id`) REFERENCES `survey_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `survey_submissions`
--
ALTER TABLE `survey_submissions`
  ADD CONSTRAINT `fk_survey_submissions_stakeholder` FOREIGN KEY (`stakeholder_id`) REFERENCES `stakeholders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_survey_submissions_survey` FOREIGN KEY (`survey_id`) REFERENCES `surveys` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_survey_submissions_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_department` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_users_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_user_roles_assigned_by` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_user_roles_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_roles_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_system_access`
--
ALTER TABLE `user_system_access`
  ADD CONSTRAINT `fk_user_system_access_granted_by` FOREIGN KEY (`granted_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_user_system_access_system` FOREIGN KEY (`system_id`) REFERENCES `systems` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_system_access_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_ballot_challenges`
--
ALTER TABLE `vqd_ballot_challenges`
  ADD CONSTRAINT `fk_vqd_ballot_challenge_event` FOREIGN KEY (`voting_event_id`) REFERENCES `vqd_voting_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_ballot_challenge_raised_by` FOREIGN KEY (`raised_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_ballot_challenge_resolved_by` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_ballot_challenge_vote` FOREIGN KEY (`vote_id`) REFERENCES `vqd_votes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_decisions`
--
ALTER TABLE `vqd_decisions`
  ADD CONSTRAINT `fk_vqd_decision_certified_by` FOREIGN KEY (`certified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_decision_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_decision_event` FOREIGN KEY (`voting_event_id`) REFERENCES `vqd_voting_events` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_decision_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_decision_published_by` FOREIGN KEY (`published_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_decision_recorded_by` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_decision_tally` FOREIGN KEY (`tally_id`) REFERENCES `vqd_vote_tallies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_decision_actions`
--
ALTER TABLE `vqd_decision_actions`
  ADD CONSTRAINT `fk_vqd_decision_actions_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_decision_actions_decision` FOREIGN KEY (`decision_id`) REFERENCES `vqd_decisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_decision_actions_office` FOREIGN KEY (`responsible_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_decision_actions_user` FOREIGN KEY (`responsible_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_decision_action_history`
--
ALTER TABLE `vqd_decision_action_history`
  ADD CONSTRAINT `fk_vqd_decision_action_history_action` FOREIGN KEY (`decision_action_id`) REFERENCES `vqd_decision_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_decision_action_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_decision_documents`
--
ALTER TABLE `vqd_decision_documents`
  ADD CONSTRAINT `fk_vqd_decision_documents_decision` FOREIGN KEY (`decision_id`) REFERENCES `vqd_decisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_decision_documents_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_decision_history`
--
ALTER TABLE `vqd_decision_history`
  ADD CONSTRAINT `fk_vqd_decision_history_decision` FOREIGN KEY (`decision_id`) REFERENCES `vqd_decisions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_decision_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_decision_notifications`
--
ALTER TABLE `vqd_decision_notifications`
  ADD CONSTRAINT `fk_vqd_decision_notifications_decision` FOREIGN KEY (`decision_id`) REFERENCES `vqd_decisions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_quorum_checks`
--
ALTER TABLE `vqd_quorum_checks`
  ADD CONSTRAINT `fk_vqd_quorum_certified_by` FOREIGN KEY (`certified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_quorum_checked_by` FOREIGN KEY (`checked_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_quorum_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_quorum_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_quorum_revoked_by` FOREIGN KEY (`revoked_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_quorum_session` FOREIGN KEY (`session_id`) REFERENCES `vqd_sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_quorum_check_members`
--
ALTER TABLE `vqd_quorum_check_members`
  ADD CONSTRAINT `fk_vqd_quorum_check_members_check` FOREIGN KEY (`quorum_check_id`) REFERENCES `vqd_quorum_checks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_quorum_check_members_session_member` FOREIGN KEY (`session_member_id`) REFERENCES `vqd_session_members` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_quorum_check_members_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_vqd_quorum_check_members_verified_by` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_quorum_documents`
--
ALTER TABLE `vqd_quorum_documents`
  ADD CONSTRAINT `fk_vqd_quorum_documents_check` FOREIGN KEY (`quorum_check_id`) REFERENCES `vqd_quorum_checks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_quorum_documents_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_quorum_history`
--
ALTER TABLE `vqd_quorum_history`
  ADD CONSTRAINT `fk_vqd_quorum_history_check` FOREIGN KEY (`quorum_check_id`) REFERENCES `vqd_quorum_checks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_quorum_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_result_validations`
--
ALTER TABLE `vqd_result_validations`
  ADD CONSTRAINT `fk_vqd_validation_certifier` FOREIGN KEY (`certified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_decision` FOREIGN KEY (`decision_id`) REFERENCES `vqd_decisions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_lead` FOREIGN KEY (`lead_validator_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_office` FOREIGN KEY (`requesting_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_quorum` FOREIGN KEY (`quorum_check_id`) REFERENCES `vqd_quorum_checks` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_reviewer` FOREIGN KEY (`reviewed_by_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_tally` FOREIGN KEY (`tally_id`) REFERENCES `vqd_vote_tallies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_voting` FOREIGN KEY (`voting_event_id`) REFERENCES `vqd_voting_events` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_sessions`
--
ALTER TABLE `vqd_sessions`
  ADD CONSTRAINT `fk_vqd_sessions_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_sessions_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_sessions_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_sessions_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_sessions_presiding` FOREIGN KEY (`presiding_officer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_sessions_secretary` FOREIGN KEY (`secretary_user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_session_documents`
--
ALTER TABLE `vqd_session_documents`
  ADD CONSTRAINT `fk_vqd_session_documents_session` FOREIGN KEY (`session_id`) REFERENCES `vqd_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_session_documents_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_session_history`
--
ALTER TABLE `vqd_session_history`
  ADD CONSTRAINT `fk_vqd_session_history_session` FOREIGN KEY (`session_id`) REFERENCES `vqd_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_session_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_session_members`
--
ALTER TABLE `vqd_session_members`
  ADD CONSTRAINT `fk_vqd_session_members_added_by` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_session_members_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_session_members_session` FOREIGN KEY (`session_id`) REFERENCES `vqd_sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_session_members_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vqd_tally_documents`
--
ALTER TABLE `vqd_tally_documents`
  ADD CONSTRAINT `fk_vqd_tally_documents_tally` FOREIGN KEY (`tally_id`) REFERENCES `vqd_vote_tallies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_tally_documents_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_tally_history`
--
ALTER TABLE `vqd_tally_history`
  ADD CONSTRAINT `fk_vqd_tally_history_tally` FOREIGN KEY (`tally_id`) REFERENCES `vqd_vote_tallies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_tally_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_tally_recounts`
--
ALTER TABLE `vqd_tally_recounts`
  ADD CONSTRAINT `fk_vqd_tally_recounts_tally` FOREIGN KEY (`tally_id`) REFERENCES `vqd_vote_tallies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_tally_recounts_user` FOREIGN KEY (`performed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_validation_checks`
--
ALTER TABLE `vqd_validation_checks`
  ADD CONSTRAINT `fk_vqd_validation_checks_user` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_checks_validation` FOREIGN KEY (`validation_id`) REFERENCES `vqd_result_validations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_validation_documents`
--
ALTER TABLE `vqd_validation_documents`
  ADD CONSTRAINT `fk_vqd_validation_documents_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_documents_validation` FOREIGN KEY (`validation_id`) REFERENCES `vqd_result_validations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_validation_findings`
--
ALTER TABLE `vqd_validation_findings`
  ADD CONSTRAINT `fk_vqd_validation_findings_office` FOREIGN KEY (`responsible_office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_findings_user` FOREIGN KEY (`resolved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_findings_validation` FOREIGN KEY (`validation_id`) REFERENCES `vqd_result_validations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_validation_history`
--
ALTER TABLE `vqd_validation_history`
  ADD CONSTRAINT `fk_vqd_validation_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_history_validation` FOREIGN KEY (`validation_id`) REFERENCES `vqd_result_validations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_validation_reports`
--
ALTER TABLE `vqd_validation_reports`
  ADD CONSTRAINT `fk_vqd_validation_reports_generated_by` FOREIGN KEY (`generated_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_reports_released_by` FOREIGN KEY (`released_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_validation_reports_validation` FOREIGN KEY (`validation_id`) REFERENCES `vqd_result_validations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_votes`
--
ALTER TABLE `vqd_votes`
  ADD CONSTRAINT `fk_vqd_votes_cast_by` FOREIGN KEY (`cast_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_votes_event` FOREIGN KEY (`voting_event_id`) REFERENCES `vqd_voting_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_votes_event_voter` FOREIGN KEY (`event_voter_id`) REFERENCES `vqd_voting_event_voters` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_votes_option` FOREIGN KEY (`option_id`) REFERENCES `vqd_vote_options` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_votes_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_vote_options`
--
ALTER TABLE `vqd_vote_options`
  ADD CONSTRAINT `fk_vqd_vote_options_event` FOREIGN KEY (`voting_event_id`) REFERENCES `vqd_voting_events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_vote_tallies`
--
ALTER TABLE `vqd_vote_tallies`
  ADD CONSTRAINT `fk_vqd_tally_certifier` FOREIGN KEY (`certified_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_tally_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_tally_event` FOREIGN KEY (`voting_event_id`) REFERENCES `vqd_voting_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_tally_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_tally_officer` FOREIGN KEY (`tally_officer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_tally_reviewer` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_vote_tally_options`
--
ALTER TABLE `vqd_vote_tally_options`
  ADD CONSTRAINT `fk_vqd_tally_options_option` FOREIGN KEY (`option_id`) REFERENCES `vqd_vote_options` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_tally_options_tally` FOREIGN KEY (`tally_id`) REFERENCES `vqd_vote_tallies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vqd_voting_documents`
--
ALTER TABLE `vqd_voting_documents`
  ADD CONSTRAINT `fk_vqd_voting_documents_event` FOREIGN KEY (`voting_event_id`) REFERENCES `vqd_voting_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_voting_documents_user` FOREIGN KEY (`uploaded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_voting_events`
--
ALTER TABLE `vqd_voting_events`
  ADD CONSTRAINT `fk_vqd_voting_closing_authority` FOREIGN KEY (`closing_authority_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_voting_committee` FOREIGN KEY (`committee_id`) REFERENCES `committees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_voting_created_by` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_voting_item` FOREIGN KEY (`legislative_item_id`) REFERENCES `legislative_items` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_voting_office` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_voting_opening_authority` FOREIGN KEY (`opening_authority_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_voting_operator` FOREIGN KEY (`voting_operator_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_voting_presiding` FOREIGN KEY (`presiding_officer_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_voting_quorum` FOREIGN KEY (`quorum_check_id`) REFERENCES `vqd_quorum_checks` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_voting_session` FOREIGN KEY (`session_id`) REFERENCES `vqd_sessions` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vqd_voting_event_voters`
--
ALTER TABLE `vqd_voting_event_voters`
  ADD CONSTRAINT `fk_vqd_event_voters_event` FOREIGN KEY (`voting_event_id`) REFERENCES `vqd_voting_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_event_voters_session_member` FOREIGN KEY (`session_member_id`) REFERENCES `vqd_session_members` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_vqd_event_voters_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vqd_voting_history`
--
ALTER TABLE `vqd_voting_history`
  ADD CONSTRAINT `fk_vqd_voting_history_event` FOREIGN KEY (`voting_event_id`) REFERENCES `vqd_voting_events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_vqd_voting_history_user` FOREIGN KEY (`changed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
