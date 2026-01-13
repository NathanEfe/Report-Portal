-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 13, 2026 at 09:10 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `report`
--

-- --------------------------------------------------------

--
-- Table structure for table `abuse_reports`
--

DROP TABLE IF EXISTS `abuse_reports`;
CREATE TABLE IF NOT EXISTS `abuse_reports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `abuse_type` varchar(100) NOT NULL,
  `relationship_to_perpetrator` varchar(100) NOT NULL,
  `incident_datetime` datetime NOT NULL,
  `location_of_incident` text NOT NULL,
  `description` text NOT NULL,
  `physical_injuries` text,
  `medical_attention` varchar(50) DEFAULT NULL,
  `reported_to_authorities` varchar(50) DEFAULT NULL,
  `support_needed` text,
  `witnesses_present` varchar(10) DEFAULT NULL,
  `witness_contact` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `evidence_file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `faculty` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `perpetrator_name` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'New',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `abuse_reports`
--

INSERT INTO `abuse_reports` (`id`, `name`, `abuse_type`, `relationship_to_perpetrator`, `incident_datetime`, `location_of_incident`, `description`, `physical_injuries`, `medical_attention`, `reported_to_authorities`, `support_needed`, `witnesses_present`, `witness_contact`, `additional_info`, `evidence_file`, `created_at`, `faculty`, `department`, `unit`, `perpetrator_name`, `status`) VALUES
(1, '', 'Physical Abuse', 'Spouse/Partner', '2026-01-09 11:31:00', 'public_html/wp-content', 'hjbuyu', 'uuiui', 'ui8oo', 'uio', 'Counseling', 'kjjjnj', 'jkjk', 'kjkj', NULL, '2026-01-09 10:37:10', NULL, NULL, NULL, NULL, 'New'),
(2, '', 'Physical Abuse', 'Spouse/Partner', '0000-00-00 00:00:00', '', 'hjhfgdgfhj', '', '', '', '', '', '', '', NULL, '2026-01-09 10:43:18', NULL, NULL, NULL, NULL, 'New'),
(3, '', 'Verbal/Emotional Abuse', 'Stranger', '0000-00-00 00:00:00', '', 'hjkhjk', '', '', '', 'Counseling,Other', '', '', '', 'uploads/6960dc12164d9_campus life.jpg', '2026-01-09 10:44:34', NULL, NULL, NULL, NULL, 'New'),
(4, 'Nathan Efe', 'Stalking', 'Stranger', '2026-01-15 12:03:00', 'Abraka', 'xdcgfhh', 'iuhui', 'Yes', 'Yes', 'Counseling,Legal Assistance', 'Yes', 'jkkj', 'iuhiki', 'uploads/6960e0941dec8_Abrakamain3.jpg', '2026-01-09 11:03:48', NULL, NULL, NULL, NULL, 'New'),
(5, 'Abdul Azeezq', 'Other: ddddddd', 'Academic Staff', '2026-01-12 21:11:00', 'dddddddd', 'ddddddddddd', '', '', '', '', '', '', '', NULL, '2026-01-12 08:10:14', '30', '24', '', 'dddddddddddd', 'New'),
(6, 'Nathan Egbedi', 'Other: Financial', 'Academic Staff', '2026-01-12 09:25:00', 'Lagos', 'Finaicial Assualt', 'no', 'No', 'Yes', '', 'No', 'no', 'None', 'uploads/6964affe304ec_mobiletiresxpress-1-e1724756948677-138x63.png', '2026-01-12 08:25:34', '23 AGRICULTURE', '', '', 'Abdulll', 'New'),
(7, 'Prof Eunice', 'Other: Financial', 'Academic Staff', '2026-01-12 21:35:00', 'Abraka', 'ukbj,ioilo', 'wwwwwwwwww', 'No', 'Planning to', '', 'Other: mo', '098765432', 'rferfersrdf', 'uploads/6964b28d92eae_mobiletiresxpress-1-e1724756948677-138x63.png', '2026-01-12 08:36:29', 'MANAGEMENT SCIENCE', 'ACCOUNTING', '', 'Abdulll', 'New'),
(8, 'index.html', 'Physical Abuse', 'Non Teaching Staff', '2026-01-12 21:37:00', 'Abraka', 'jkknkjkjjkkkjjkj', 'uuiui', 'No', 'Planning to', '', 'Unsure', '', '', 'uploads/6964b2eb54575_mobiletiresxpress-1-e1724756948677-138x63.png', '2026-01-12 08:38:03', '', '', 'Bursary', 'Abdulll', 'New'),
(9, '', 'Stalking', 'Students', '2026-01-12 09:41:00', 'Abraka', 'Stalking', 'no', 'No', 'Yes', '', 'No', '', '', 'uploads/6964b3d986ed3_campus life.jpg', '2026-01-12 08:42:01', 'SCIENCE', 'Computer Science', '', '', 'New'),
(10, '', 'Physical Abuse', 'Students', '2026-01-12 23:50:00', 'Abraka', 'mmmmmmmmmm', 'uuiui', 'No', 'Yes', '', '', '', '', NULL, '2026-01-12 10:50:31', 'DENTISTRY', 'CHILD DENTAL HEALTH', '', '', 'in-progress');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `created_at`, `last_login`, `status`) VALUES
(1, 'admin', '12345', '2026-01-09 10:38:53', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `faculty_id` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_dept_per_fac` (`faculty_id`,`name`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `faculty_id`, `name`, `code`, `created_at`, `deleted`) VALUES
(1, 1, 'Medicine', 'MED', '2025-09-21 04:47:38', 0),
(2, 1, 'Anatomy', 'ATM', '2025-09-22 11:59:01', 0),
(3, 2, 'Computer Science', 'CSC', '2025-09-22 12:19:31', 0),
(4, 23, 'FISHERIES & AQUACULTURE', 'FAG/07', '2025-09-24 15:52:48', 0),
(5, 23, 'AGRICULTURE EXTENSION', 'FAG/06', '2025-09-24 15:52:48', 0),
(6, 23, 'FOOD TECHNOLOGY', 'FAG/05', '2025-09-24 15:52:48', 0),
(7, 23, 'FORESTRY AND WILDLIFE', 'FAG/04', '2025-09-24 15:52:48', 0),
(8, 23, 'ANIMAL SCIENCE', 'FAG/03', '2025-09-24 15:52:48', 0),
(9, 23, 'AGRONOMY', 'FAG/02', '2025-09-24 15:52:48', 0),
(10, 23, 'AGRICULTURAL ECONOMICS', 'FAG/01', '2025-09-24 15:52:48', 0),
(11, 26, 'THEATRE ARTS', 'FOA/09', '2025-09-24 15:52:48', 0),
(12, 26, 'MUSIC', 'FOA/08', '2025-09-24 15:52:48', 0),
(13, 26, 'RELIGIOUS STUDIES / PHILOSOPHY', 'FOA/06', '2025-09-24 15:52:48', 0),
(14, 26, 'PERFORMING ARTS', 'FOA/05', '2025-09-24 15:52:48', 0),
(15, 26, 'LANGUAGES AND LINGUISTICS', 'FOA/04', '2025-09-24 15:52:48', 0),
(16, 26, 'HISTORY AND INTL STUDIES', 'FOA/03', '2025-09-24 15:52:48', 0),
(17, 26, 'FINE AND APPLIED ARTS', 'FOA/02', '2025-09-24 15:52:48', 0),
(18, 26, 'ENGLISH AND LITERARY STUDIES', 'FOA/01', '2025-09-24 15:52:48', 0),
(19, 30, 'PHARMACOLOGY', 'PHC/07', '2025-09-24 15:52:48', 0),
(20, 30, 'NURSING SCIENCE', 'CFH/03', '2025-09-24 15:52:48', 0),
(21, 30, 'MORBID ANATOMY AND HISTOPATHOLOGY', 'CFB/05', '2025-09-24 15:52:48', 0),
(22, 30, 'PHYSIOLOGY', 'CFB/03', '2025-09-24 15:52:48', 0),
(23, 30, 'MEDICAL BIOCHEMISTRY', 'CFB/02', '2025-09-24 15:52:48', 0),
(24, 30, 'ANATOMY AND CELL BIOLOGY', 'CFB/01', '2025-09-24 15:52:48', 0),
(25, 1, 'ANATOMIC PATHOLOGY', 'BCS/01', '2025-09-24 15:56:51', 0),
(26, 1, 'HAEMATOLOGY AND BLOOD TRANSFUSION', 'CFC/07', '2025-09-24 15:56:51', 0),
(27, 1, 'CHEMICAL PATHOLOGY', 'CFC/02', '2025-09-24 15:56:51', 0),
(28, 1, 'PHARMACOLOGY AND THERAPEUTICS', 'CFB/06', '2025-09-24 15:56:51', 0),
(29, 1, 'MEDICAL MICROBIOLOGY AND PARASITOLOGY', 'CFB/04', '2025-09-24 15:56:51', 0),
(53, 29, 'RADIOTHERAPY', 'CFC/13', '2025-09-24 16:00:35', 0),
(54, 29, 'RADIODIAGNOSIS', 'CFC/12', '2025-09-24 16:00:35', 0),
(55, 29, 'PSYCHIATRY', 'CFC/11', '2025-09-24 16:00:35', 0),
(56, 29, 'PAEDIATRICS AND CHILD HEALTH', 'CFC/10', '2025-09-24 16:00:35', 0),
(57, 29, 'OBSTETRICS AND GYNAECOLOGY', 'CFC/09', '2025-09-24 16:00:36', 0),
(58, 29, 'MEDICINE AND SURGERY', 'CFC/08', '2025-09-24 16:00:36', 0),
(59, 29, 'FAMILY MEDICINE', 'CFC/06', '2025-09-24 16:00:36', 0),
(60, 29, 'EMERGENCY MEDICINE AND INTENSIVE CARE', 'CFC/05', '2025-09-24 16:00:36', 0),
(61, 29, 'DERMATOLOGY AND GUM', 'CFC/04', '2025-09-24 16:00:36', 0),
(62, 29, 'COMMUNITY MEDICINE', 'CFC/03', '2025-09-24 16:00:36', 0),
(63, 29, 'ANAESTHESIA', 'CFC/01', '2025-09-24 16:00:36', 0),
(64, 28, 'DENTISTRY', 'CFD/07', '2025-09-24 16:00:59', 0),
(65, 28, 'RESTORATIVE DENTISTRY', 'CFD/06', '2025-09-24 16:00:59', 0),
(66, 28, 'PREVENTIVE DENTISTRY', 'CFD/05', '2025-09-24 16:00:59', 0),
(67, 28, 'PERIODONTICS', 'CFD/04', '2025-09-24 16:00:59', 0),
(68, 28, 'ORAL PATHOLOGY AND BIOLOGY', 'CFD/03', '2025-09-24 16:00:59', 0),
(69, 28, 'ORAL AND MAXILO FACIAL SURGERY', 'CFD/02', '2025-09-24 16:00:59', 0),
(70, 28, 'CHILD DENTAL HEALTH', 'CFD/01', '2025-09-24 16:00:59', 0),
(71, 25, 'Vocational & Technical Education', 'FOE/19', '2025-09-24 16:03:04', 0),
(72, 25, 'TECHNICAL EDUCATION', 'FOE/18', '2025-09-24 16:03:04', 0),
(73, 25, 'SOCIAL SCIENCE EDUCATION', 'FOE/17', '2025-09-24 16:03:04', 0),
(74, 25, 'SCIENCE EDUCATION', 'FOE/16', '2025-09-24 16:03:04', 0),
(75, 25, 'Religious Studies Education', 'FOE/15', '2025-09-24 16:03:04', 0),
(76, 25, 'Political Science Education', 'FOE/14', '2025-09-24 16:03:04', 0),
(77, 25, 'HEALTH AND SAFETY EDUCATION', 'FOE/13', '2025-09-24 16:03:04', 0),
(78, 25, 'Philosophy Education', 'FOE/12', '2025-09-24 16:03:04', 0),
(79, 25, 'Music Education', 'FOE/11', '2025-09-24 16:03:04', 0),
(80, 25, 'VOCATIONAL EDUCATION', 'FOE/10', '2025-09-24 16:03:04', 0),
(81, 25, 'POSTGRADUATE EDUCATION', 'FOE/09', '2025-09-24 16:03:04', 0),
(82, 25, 'Integrated Science Education', 'FOE/08', '2025-09-24 16:03:04', 0),
(83, 25, 'CURRICULUM AND INTEGRATED SCIENCE', 'FOE/07', '2025-09-24 16:03:04', 0),
(84, 25, 'History Education', 'FOE/06', '2025-09-24 16:03:04', 0),
(85, 25, 'Geography Education', 'FOE/05', '2025-09-24 16:03:04', 0),
(86, 25, 'HUMAN KINETICS, RECREATION AND SPORTS SCIENCE EDUCATION', 'FOE/04', '2025-09-24 16:03:04', 0),
(87, 25, 'Library & Information Science', 'FOE/03', '2025-09-24 16:03:04', 0),
(88, 25, 'EDUCATIONAL MANAGEMENT AND FOUNDATIONS', 'FOE/02', '2025-09-24 16:03:04', 0),
(89, 25, 'GUIDANCE AND COUNSELLING', 'FOE/01', '2025-09-24 16:03:04', 0),
(90, 21, 'MECHANICAL ENGINEERING', 'FNG/01', '2025-09-24 16:05:05', 0),
(91, 21, 'CHEMICAL ENGINEERING', 'FNG/02', '2025-09-24 16:05:05', 0),
(92, 21, 'CIVIL AND ENVIRONMENTAL ENGINEERING', 'FNG/03', '2025-09-24 16:05:05', 0),
(93, 21, 'ELECTRICAL AND ELECTRONIC ENGINEERING', 'FNG/04', '2025-09-24 16:05:05', 0),
(94, 21, 'Petroleum Engineering', 'FNG/05', '2025-09-24 16:05:05', 0),
(95, 21, 'PETROLEUM AND GAS ENGINEERING', 'FNG/06', '2025-09-24 16:05:05', 0),
(96, 22, 'ACCOUNTING', 'FMS/01', '2025-09-24 16:05:40', 0),
(97, 22, 'BANKING AND FINANCE', 'FMS/02', '2025-09-24 16:05:40', 0),
(98, 22, 'BUSINESS ADMINISTRATION', 'FMS/03', '2025-09-24 16:05:40', 0),
(99, 22, 'MARKETING AND ENTREPRENEURSHIP', 'FMS/04', '2025-09-24 16:05:40', 0),
(100, 22, 'Public Administration', 'FMS/05', '2025-09-24 16:05:40', 0),
(101, 22, 'Office Information Management', 'OIM/O01/01', '2025-09-24 16:05:40', 0),
(102, 22, 'Entrepreneurship', 'ENTR/E01/01', '2025-09-24 16:05:40', 0),
(103, 20, 'COMMERCIAL AND PROPERTY LAW', 'FOL/01', '2025-09-24 16:07:16', 0),
(104, 20, 'JURISPUDENCE AND INTERNATIONAL LAW', 'FOL/02', '2025-09-24 16:07:16', 0),
(105, 20, 'PRIVATE LAW', 'FOL/03', '2025-09-24 16:07:16', 0),
(106, 20, 'PUBLIC LAW', 'FOL/04', '2025-09-24 16:07:16', 0),
(107, 20, 'DIPLOMA IN LAW', 'FOL/05', '2025-09-24 16:07:16', 0),
(108, 20, 'LAW', 'FOL/06', '2025-09-24 16:07:16', 0),
(161, 25, 'POST-GRADUATE DIPLOMA IN EDUCATION', 'PGDE', '2025-09-24 16:17:07', 0),
(182, 27, 'RADIOLOGY', 'CFH/06', '2025-09-24 16:18:55', 0),
(183, 27, 'PHYSIOTHERAPY', 'CFH/05', '2025-09-24 16:18:55', 0),
(184, 27, 'OCCUPATIONAL THERAPY', 'CFH/04', '2025-09-24 16:18:55', 0),
(185, 27, 'MEDICAL LABORATORY SCIENCE', 'CFH/02', '2025-09-24 16:18:55', 0),
(186, 27, 'HUMAN NUTRITION', 'CFH/01', '2025-09-24 16:18:56', 0),
(194, 19, 'CLINICAL PHC', 'PHC/06', '2025-09-24 16:18:56', 0),
(195, 19, 'PHARMACEUTICAL MICROBIOLOGY', 'PHC/05', '2025-09-24 16:18:56', 0),
(196, 19, 'PHARMACEUTICS', 'PHC/04', '2025-09-24 16:18:56', 0),
(197, 19, 'PHARMACOGNOSY', 'PHC/03', '2025-09-24 16:18:56', 0),
(198, 19, 'PHARMACY', 'PHC/02', '2025-09-24 16:18:56', 0),
(199, 19, 'PHARMACEUTICAL CHEMISTRY', 'PHC/01', '2025-09-24 16:18:56', 0),
(200, 2, 'Medical Laboratory Science', 'FOS/15', '2025-09-24 16:18:56', 0),
(201, 2, 'Science Laboratory Technology', 'FOS/14', '2025-09-24 16:18:56', 0),
(202, 2, 'MICROBIOLOGY', 'FOS/12', '2025-09-24 16:18:56', 0),
(203, 2, 'BOTANY', 'FOS/11', '2025-09-24 16:19:59', 0),
(204, 2, 'INSTITUTE OF INFORMATION AND COMM. TECHNOLOGY', 'FOS/09', '2025-09-24 16:19:59', 0),
(205, 2, 'INSTITUTE OF SCIENCE LABORARY TECHNOLOGY', 'FOS/08', '2025-09-24 16:19:59', 0),
(206, 2, 'ZOOLOGY', 'FOS/07', '2025-09-24 16:19:59', 0),
(207, 2, 'PHYSICS', 'FOS/06', '2025-09-24 16:19:59', 0),
(208, 2, 'GEOLOGY', 'FOS/04', '2025-09-24 16:19:59', 0),
(209, 2, 'CHEMISTRY', 'FOS/03', '2025-09-24 16:19:59', 0),
(210, 2, 'BOTANY AND MICROBIOLOGY', 'FOS/02', '2025-09-24 16:19:59', 0),
(211, 2, 'BIOCHEMISTRY', 'FOS/01', '2025-09-24 16:19:59', 0),
(212, 24, 'PSYCHOLOGY', 'FSS/10', '2025-09-24 16:19:59', 0),
(213, 24, 'SOCIOLOGY', 'FSS/07', '2025-09-24 16:19:59', 0),
(214, 24, 'POLITICAL SCIENCE', 'FSS/06', '2025-09-24 16:19:59', 0),
(215, 24, 'MASS COMMUNICATION', 'FSS/05', '2025-09-24 16:19:59', 0),
(216, 24, 'GEOGRAPHY AND REGIONAL PLANNING', 'FSS/04', '2025-09-24 16:19:59', 0),
(217, 24, 'ECONOMICS', 'FSS/03', '2025-09-24 16:19:59', 0),
(218, 24, 'BUSINESS ADMINISTRATION', 'FSS/02', '2025-09-24 16:19:59', 0),
(219, 24, 'ACCOUNTING AND FINANCE', 'FSS/01', '2025-09-24 16:19:59', 0);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
CREATE TABLE IF NOT EXISTS `faculties` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_faculty_name` (`name`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `name`, `code`, `created_at`, `deleted`) VALUES
(1, 'BASIC CLINICAL SCIENCES', 'BCS', '2025-09-21 04:47:08', 0),
(2, 'SCIENCE', 'FOS', '2025-09-22 12:18:28', 0),
(18, 'COMMUNICATION AND MEDIA STUDIES', 'FCM', '2025-09-24 15:37:12', 0),
(19, 'PHARMACY', 'PHC', '2025-09-24 15:37:12', 0),
(20, 'LAW', 'FOL', '2025-09-24 15:37:12', 0),
(21, 'ENGINEERING', 'FNG', '2025-09-24 15:37:12', 0),
(22, 'MANAGEMENT SCIENCE', 'FMS', '2025-09-24 15:37:12', 0),
(23, 'AGRICULTURE', 'FAG', '2025-09-24 15:37:12', 0),
(24, 'SOCIAL SCIENCE', 'FSS', '2025-09-24 15:37:12', 0),
(25, 'EDUCATION', 'FOE', '2025-09-24 15:37:12', 0),
(26, 'ARTS', 'FOA', '2025-09-24 15:37:12', 0),
(27, 'ALLIED HEALTH SCIENCES', 'CFH', '2025-09-24 15:37:12', 0),
(28, 'DENTISTRY', 'CFD', '2025-09-24 15:37:12', 0),
(29, 'CLINICAL MEDICINE', 'CFC', '2025-09-24 15:37:12', 0),
(30, 'BASIC MEDICAL SCIENCE', 'CFB', '2025-09-24 15:37:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(225) NOT NULL,
  `created_at` timestamp(6) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `created_at`, `deleted`) VALUES
(1, 'Academic Planning Unit', '2026-01-09 14:09:57.000000', 0),
(2, 'Audit Unit', '2026-01-09 14:10:28.000000', 0),
(3, 'Information and Public Relations Unit', '2026-01-09 14:10:56.000000', 0),
(4, 'Legal Unit', '2026-01-09 14:10:56.000000', 0),
(5, 'Physical Planning Unit', '2026-01-09 14:11:27.000000', 0),
(6, 'Security Unit', '2026-01-09 14:11:27.000000', 0),
(7, 'Sports Division', '2026-01-09 14:12:07.000000', 0),
(8, 'Bursary', '2026-01-09 14:12:07.000000', 0),
(9, 'Registry', '2026-01-09 14:12:48.000000', 0),
(10, 'University Health Service Unit', '2026-01-09 14:12:48.000000', 0),
(11, 'Works and Service Unit', '2026-01-09 14:12:59.000000', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
