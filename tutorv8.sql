-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 10:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tutorv8`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_13_044341_create_sessions_table', 1),
(7, '2021_07_13_051333_create_members_table', 1),
(8, '2021_07_15_081159_create_permission_tables', 1),
(9, '2021_07_15_092332_create_temporary_files_table', 1),
(10, '2021_07_15_092432_create_upload_settuwebs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2021-07-29 00:28:09', '2021-07-29 00:28:09'),
(2, 'Member', 'web', '2021-07-29 00:28:09', '2021-07-29 00:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('N8Z3ET4clBGbgoWPLBewJlOWq1fI89QGPeAlRR1Y', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.131 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieGYwcGE5NE1rTlhmRXNYN1JRS3Qzc3BwNE5sdVFGTVU5MkJzWU9xdyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1628578172),
('u59XmQgia4x7lHhN59u3BUEVMknl0lTExJPopq6v', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:90.0) Gecko/20100101 Firefox/90.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicVdtR2pmN0x4a0tPNE9sOFc1NDQxWGdSeDluaDVhVHhtbk9NYXlXQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czoyMToiaHR0cDovL2xvY2FsaG9zdDo4MDAwIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fX0=', 1628580846);

-- --------------------------------------------------------

--
-- Table structure for table `temporary_files`
--

CREATE TABLE `temporary_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_settuwebs`
--

CREATE TABLE `upload_settuwebs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kompetensi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kisitugastutorial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materi8` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kisi2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kisi3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pedoman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pedoman2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pedoman3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tandaterima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tandaterima2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tandaterima3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilaitertinggi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilaiterendah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sspertemuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upload_settuwebs`
--

INSERT INTO `upload_settuwebs` (`id`, `nama`, `rekap`, `kompetensi`, `rat`, `sat`, `kisitugastutorial`, `materi`, `materi2`, `materi3`, `materi4`, `materi5`, `materi6`, `materi7`, `materi8`, `catatan`, `kisi`, `kisi2`, `kisi3`, `pedoman`, `pedoman2`, `pedoman3`, `tandaterima`, `tandaterima2`, `tandaterima3`, `nilaitertinggi`, `nilaiterendah`, `sspertemuan`, `created_at`, `updated_at`) VALUES
(1, 'Member', '610258c7687da-1627543751/rekap/KOP SURAT.xlsx', '610258c94aea2-1627543753/kompetensi/Permintaan harga dan berat ba 20012021.xlsx', '610258d07a036-1627543760/rat/1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Online).xlsx', '610258d37aa19-1627543763/sat/1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Response).xlsx', '610258d5346f0-1627543765/kisitugastutorial/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Response).xlsx', '610258d7bc9e3-1627543767/materi/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Responses).xlsx', '610258ddf1eeb-1627543773/materi2/1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Palembang).xlsx', '610258e2248cf-1627543778/materi3/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Ambon).xlsx', '610258e53e1ae-1627543781/materi4/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banda Aceh).xlsx', '610258e68a6c2-1627543782/materi5/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandar Lampung).xlsx', '610258e87c939-1627543784/materi6/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandung).xlsx', '610258ea51a8a-1627543786/materi7/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banjarmasin).xlsx', '610258ecb427e-1627543788/materi8/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Batam).xlsx', '610258edbb29c-1627543789/catatan/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bengkulu).xlsx', '610258f0585ad-1627543792/kisi/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bogor).xlsx', '610258f1e2e6b-1627543793/kisi2/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Denpasar).xlsx', '610258f4b0057-1627543796/kisi3/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Gorontalo).xlsx', '610258f5c38f3-1627543797/pedoman/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jakarta).xlsx', '610258f90c994-1627543801/pedoman2/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jayapura).xlsx', '610258fa4ce7a-1627543802/pedoman3/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jember).xlsx', '610258fcdff8e-1627543804/tandaterima/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kendari).xlsx', '610258ff23aec-1627543807/tandaterima2/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kupang).xlsx', '6102590253a3a-1627543810/tandaterima3/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Majene).xlsx', '610259038a06c-1627543811/nilaitertinggi/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Makasar).xlsx', '61025906365ac-1627543814/nilaiterendah/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Malang).xlsx', '6102590c99051-1627543820/sspertemuan/a.png', NULL, NULL),
(2, 'Member', '6102599c6559e-1627543964/rekap/KOP SURAT.xlsx', '6102599e63e5d-1627543966/kompetensi/Permintaan harga dan berat ba 20012021.xlsx', '610259a483459-1627543972/rat/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Responses).xlsx', '610259a6769a6-1627543974/sat/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Response).xlsx', '610259a8956d1-1627543976/kisitugastutorial/1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Response).xlsx', '610259ac8d479-1627543980/materi/1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Online).xlsx', '610259b2ed038-1627543986/materi2/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Ambon).xlsx', '610259b36af74-1627543987/materi3/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banda Aceh).xlsx', '610259b60154b-1627543990/materi4/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandar Lampung).xlsx', '610259b830323-1627543992/materi5/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandung).xlsx', '610259b92a58c-1627543993/materi6/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banjarmasin).xlsx', '610259bb59d05-1627543995/materi7/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Batam).xlsx', '610259bd6f170-1627543997/materi8/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bengkulu).xlsx', '610259bf8413c-1627543999/catatan/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bogor).xlsx', '610259c1b81ca-1627544001/kisi/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Denpasar).xlsx', '610259c3e3aa3-1627544003/kisi2/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Gorontalo).xlsx', '610259c61a65b-1627544006/kisi3/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jakarta).xlsx', '610259c91787e-1627544009/pedoman/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jember).xlsx', '610259cd18960-1627544013/pedoman2/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kendari).xlsx', '610259ceb6e59-1627544014/pedoman3/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kupang).xlsx', '610259d22f9c0-1627544018/tandaterima/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Makasar).xlsx', '610259d503bde-1627544021/tandaterima2/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Malang).xlsx', '610259d6b67e4-1627544022/tandaterima3/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Manado).xlsx', '610259d8ef9af-1627544024/nilaitertinggi/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Medan).xlsx', '610259db1ff57-1627544027/nilaiterendah/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Palu).xlsx', '610259e0d0f78-1627544032/sspertemuan/a.png', NULL, NULL),
(3, 'Member', 'KOP SURAT.xlsx', 'Permintaan harga dan berat ba 20012021.xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Responses).xlsx', '3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Response).xlsx', '1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Response).xlsx', '1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Online).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Ambon).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banda Aceh).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandar Lampung).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandung).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banjarmasin).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Batam).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bengkulu).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bogor).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Denpasar).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Gorontalo).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jakarta).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jember).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kendari).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kupang).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Makasar).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Malang).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Manado).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Medan).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Palu).xlsx', 'a.png', NULL, NULL),
(4, 'Member', 'KOP SURAT.xlsx', 'Permintaan harga dan berat ba 20012021.xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Responses).xlsx', '3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Response).xlsx', '1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Response).xlsx', '1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Online).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Ambon).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banda Aceh).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandar Lampung).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandung).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banjarmasin).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Batam).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bengkulu).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bogor).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Denpasar).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Gorontalo).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jakarta).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jember).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kendari).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kupang).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Makasar).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Malang).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Manado).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Medan).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Palu).xlsx', 'a.png', NULL, NULL),
(5, 'Member', 'KOP SURAT.xlsx', 'Permintaan harga dan berat ba 20012021.xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Responses).xlsx', '3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Response).xlsx', '1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Response).xlsx', '1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Online).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Ambon).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banda Aceh).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandar Lampung).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bandung).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Banjarmasin).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Batam).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bengkulu).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Bogor).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Denpasar).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Gorontalo).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jakarta).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Jember).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kendari).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Kupang).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Makasar).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Malang).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Manado).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Medan).xlsx', '7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Palu).xlsx', 'a.png', NULL, NULL),
(6, 'Member', '61025add1cd7b-1627544285/rekap/1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Online).xlsx', '61025ade4dac1-1627544286/kompetensi/1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Response).xlsx', '61025ae068743-1627544288/rat/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Response).xlsx', '61025ae210964-1627544290/sat/7. (TUWEB TUTOR) ANGKET EVALUASI TUWEB OLEH TUTOR (Responses).xlsx', '61025ae892c48-1627544296/kisitugastutorial/1. (TUWEB) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA (Palembang).xlsx', '61025aed4a6d7-1627544301/materi/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Banda Aceh).xlsx', '61025af053def-1627544304/materi2/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Bandar Lampung).xlsx', '61025af11f4c6-1627544305/materi3/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Bandung).xlsx', '61025afdbbd47-1627544317/materi4/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Banjarmasin).xlsx', '61025b000da26-1627544320/materi5/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Batam).xlsx', '61025b025c155-1627544322/materi6/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Bengkulu).xlsx', '61025b03c9bf8-1627544323/materi7/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Bogor).xlsx', '61025b06e0e8f-1627544326/materi8/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Denpasar).xlsx', '61025b08b66bd-1627544328/catatan/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Gorontalo).xlsx', '61025b0b33187-1627544331/kisi/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Jakarta).xlsx', '61025b0c80bc5-1627544332/kisi2/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Jambi).xlsx', '61025b0f7423f-1627544335/kisi3/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Jayapura).xlsx', '61025b11b362d-1627544337/pedoman/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Jember).xlsx', '61025b153c888-1627544341/pedoman2/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Kupang).xlsx', '61025b170081f-1627544343/pedoman3/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Majene).xlsx', '61025b195c968-1627544345/tandaterima/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Makasar).xlsx', '61025b1d057f8-1627544349/tandaterima2/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Malang).xlsx', '61025b1f0d551-1627544351/tandaterima3/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Padang).xlsx', '61025b20e8267-1627544352/nilaitertinggi/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Palangka Raya).xlsx', '61025b234c90d-1627544355/nilaiterendah/3. (TUWEB PRAKTIK_PRAKTIKUM) INSTRUMEN PEMANTAUAN TUWEB SARJANA PASCASARJANA PRAKTIK_KUM (Pangkalpinang).xlsx', '61025b2b3c24b-1627544363/sspertemuan/a.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$azeYpANI7SCd55VY2huZ1eSFE0oxWbaVv4S3w5TrrasYpx9n9d3Di', NULL, NULL, NULL, NULL, NULL, '2021-07-29 00:28:09', '2021-07-29 00:28:09'),
(2, 'Member', 'member@gmail.com', NULL, '$2y$10$k6jK/n/p1L./SnAtxt1zoOCWXDDeg2Oajln3/fcvFLSZ/OaAfawMS', NULL, NULL, NULL, NULL, NULL, '2021-07-29 00:28:09', '2021-07-29 00:28:09'),
(3, 'febri', 'febrimaulanaa@gmail.com', NULL, '$2y$10$vJfPRGIKh/l9mBi/Lpzpnu8F9L8QZrs2U6ppl1d.L0ZRQO8Xezm0O', NULL, NULL, NULL, NULL, NULL, '2021-08-04 17:57:41', '2021-08-04 17:57:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `temporary_files`
--
ALTER TABLE `temporary_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_settuwebs`
--
ALTER TABLE `upload_settuwebs`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temporary_files`
--
ALTER TABLE `temporary_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `upload_settuwebs`
--
ALTER TABLE `upload_settuwebs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
