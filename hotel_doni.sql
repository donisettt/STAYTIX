-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2022 pada 17.26
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_doni`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','resepsionis') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'resepsionis',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `nama`, `username`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', 'admin', '$2y$10$1.UPUCUAVFHGBe7RTQAbjeBlJMjHvEq61rc0QpSPL23yhijW3tLdW', NULL, '2022-06-06 13:21:16', '2022-06-06 13:21:16'),
(2, 'Resepsionis', 'resepsionis', 'resepsionis', '$2y$10$lvpM3x1GGP7SrKT5oy1MDOiODlpyl2ryiqAEsIgIT81lYGNdBeYHG', NULL, '2022-06-06 13:21:16', '2022-06-06 13:21:16'),
(3, 'Doni', 'doniwahyono', 'resepsionis', '$2y$10$5IxcskbJbtyrkAUFt7VFpuYXoVrH6a/qiP2c1ot1GTh11/AgjBzFK', NULL, '2022-06-06 13:21:16', '2022-06-06 14:52:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_hotels`
--

CREATE TABLE `fasilitas_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_fasilitas_hotel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi_fasilitas_hotel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_hotels`
--

INSERT INTO `fasilitas_hotels` (`id`, `nama_fasilitas_hotel`, `foto_fasilitas_hotel`, `deskripsi_fasilitas_hotel`) VALUES
(1, 'Kolam Renang', '772_1654527450.jpg', 'Kolam renang out-door melengkapi hari anda setelah lelah seharian beraktifitas dapat anda rasakan kenikmatan saat berenang di kolam renang Don\'s OYO'),
(2, 'Restoran', '66_1654527638.jpg', 'Makanan khas Eropa bintang 5 yang anda bisa rasakan di Don\'s OYO memanjakan lidah dengan rasa yang tiada duanya.'),
(3, 'Parkir Luas', '485_1654527784.jpg', 'Anda tidak perlu kawatir dengan kendaraan anda cukup simpan di palkiran Don\'s OYO lokasi strategis luas.'),
(4, 'Sarapan Pagi Gratis', '60_1654527843.jpg', 'Di pagi hari anda bisa mendapatkan makanan gratis yang telah di siapkan oleh Don\'s OYO.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fasilitas_kamars`
--

CREATE TABLE `fasilitas_kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fasilitas_kamars`
--

INSERT INTO `fasilitas_kamars` (`id`, `kamar_id`, `nama_fasilitas_kamar`) VALUES
(1, 1, 'TV'),
(2, 1, 'AC'),
(3, 2, 'TV'),
(4, 2, 'AC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_kamar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jum_kamar` int(11) NOT NULL,
  `harga_kamar` int(11) DEFAULT NULL,
  `deskripsi_kamar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kamars`
--

INSERT INTO `kamars` (`id`, `nama_kamar`, `foto_kamar`, `jum_kamar`, `harga_kamar`, `deskripsi_kamar`) VALUES
(1, 'Kamar Deluxe King', '78_1654522726.jpg', 9, 2575000, 'Tempat tidur nyaman, kamar double ini memiliki jubah mandi, TV layar datar, dan pembuat teh/kopi, bebas rokok, parkir pribadi gratis tersedia di lokasi properti (reservasi tidak diperlukan).'),
(2, 'Kamar Executive King', '986_1654526836.jpg', 9, 1450000, 'Tempat tidur nyaman, kamar double ini menawarkan akses lounge eksekutif, TV satelit, dan fasilitas membuat teh/kopi.'),
(3, 'Kamar Executive Twin', '999_1654522754.jpg', 5, 975000, 'Kamar twin ini memiliki fasilitas membuat teh/kopi, akses lounge eksekutif, dan bathrobe, parkir pribadi gratis tersedia di lokasi properti (reservasi tidak diperlukan).empat tidur nyaman,');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_01_31_081726_create_admins_table', 1),
(3, '2022_02_05_030609_create_kamars_table', 1),
(4, '2022_02_08_004726_create_fasilitas_kamars_table', 1),
(5, '2022_02_12_043615_create_fasilitas_hotels_table', 1),
(6, '2022_02_15_120345_create_pemesanans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kamar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tgl_checkin` date NOT NULL,
  `tgl_checkout` date NOT NULL,
  `jum_kamar_dipesan` int(11) NOT NULL,
  `nama_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tamu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pesan','checkin','checkout','batal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pesan',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pemesanans`
--

INSERT INTO `pemesanans` (`id`, `kamar_id`, `tgl_checkin`, `tgl_checkout`, `jum_kamar_dipesan`, `nama_pemesan`, `email_pemesan`, `no_hp`, `nama_tamu`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '2022-06-04', '2022-06-06', 2, 'Ms. Frederique Hauck DDS', 'ella44@hotmail.com', '+1 (405) 252-3340', 'Mable Howell', 'pesan', '2022-06-01 17:00:00', '2022-06-01 17:00:00'),
(2, 2, '2022-06-12', '2022-06-15', 1, 'Sherwood Effertz II', 'clementine94@hotmail.com', '(820) 416-6205', 'Miss Kaycee Pfeffer', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(3, 1, '2022-06-12', '2022-06-13', 1, 'Hannah Lakin', 'sonia.wilkinson@hotmail.com', '253.852.1013', 'Rubye Wolff', 'pesan', '2022-06-09 17:00:00', '2022-06-09 17:00:00'),
(4, 2, '2022-06-08', '2022-06-10', 2, 'Donna Weissnat', 'reyna.reinger@gmail.com', '(956) 567-1212', 'Montana Gerhold', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(5, 2, '2022-06-08', '2022-06-09', 1, 'Prof. Roger Zulauf Sr.', 'margret.johnston@hotmail.com', '828-540-8714', 'Dr. Luciano Auer IV', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(6, 1, '2022-06-13', '2022-06-14', 1, 'Nina Lakin Sr.', 'jorge.dicki@gmail.com', '207-569-3928', 'Twila Romaguera', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(7, 1, '2022-06-02', '2022-06-04', 2, 'Dr. Craig Maggio DVM', 'medhurst.antwon@gmail.com', '(432) 696-6330', 'Darron Cole', 'pesan', '2022-05-31 17:00:00', '2022-05-31 17:00:00'),
(8, 1, '2022-06-10', '2022-06-12', 1, 'Audreanne Sauer Sr.', 'toy.ellen@yahoo.com', '(283) 334-4300', 'Ms. Dora Stanton', 'pesan', '2022-06-07 17:00:00', '2022-06-07 17:00:00'),
(9, 3, '2022-06-10', '2022-06-13', 2, 'Kaci Ferry', 'brown.alaina@gmail.com', '+1.678.454.2730', 'Dr. Eli Kozey', 'pesan', '2022-06-06 17:00:00', '2022-06-06 17:00:00'),
(10, 1, '2022-06-04', '2022-06-07', 1, 'Natalie Botsford', 'wilkinson.karina@hotmail.com', '+1 (305) 350-5670', 'Mozell Terry', 'pesan', '2022-06-02 17:00:00', '2022-06-02 17:00:00'),
(11, 1, '2022-06-12', '2022-06-13', 1, 'Buster Green', 'isidro91@yahoo.com', '+1-732-889-0251', 'Prof. Okey Doyle DVM', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(12, 2, '2022-06-01', '2022-06-02', 1, 'Prof. Agnes Schuppe DDS', 'zoe77@hotmail.com', '+1-319-334-8074', 'Cory Zieme', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(13, 1, '2022-06-03', '2022-06-04', 2, 'Prof. Carlotta Bernier V', 'jheller@hotmail.com', '+15409929985', 'Mallory Schroeder', 'pesan', '2022-06-01 17:00:00', '2022-06-01 17:00:00'),
(14, 3, '2022-06-03', '2022-06-06', 2, 'Mr. Hazel Kreiger DDS', 'bette.reilly@yahoo.com', '+1-978-882-9170', 'Asha McKenzie', 'pesan', '2022-06-01 17:00:00', '2022-06-01 17:00:00'),
(15, 3, '2022-05-30', '2022-05-31', 1, 'Ayla Yost', 'weimann.rocky@yahoo.com', '1-502-347-2335', 'Dr. Brooklyn Koss Sr.', 'pesan', '2022-05-27 17:00:00', '2022-05-27 17:00:00'),
(16, 3, '2022-06-10', '2022-06-12', 1, 'Augustine Wehner III', 'corwin.savanna@hotmail.com', '+1-423-946-8437', 'Grayce Turner Sr.', 'pesan', '2022-06-08 17:00:00', '2022-06-08 17:00:00'),
(17, 1, '2022-06-04', '2022-06-06', 1, 'Javonte Schaefer', 'wayne.heidenreich@yahoo.com', '(520) 469-2605', 'Lelia Boyle DDS', 'pesan', '2022-05-31 17:00:00', '2022-05-31 17:00:00'),
(18, 3, '2022-06-05', '2022-06-06', 1, 'Taya Pfeffer', 'mkunze@gmail.com', '+1-906-237-6601', 'Kattie Lang', 'pesan', '2022-06-03 17:00:00', '2022-06-03 17:00:00'),
(19, 3, '2022-06-09', '2022-06-10', 2, 'Anabel Wehner I', 'lawrence21@gmail.com', '915-501-9511', 'Mrs. Abigail Pouros IV', 'pesan', '2022-06-07 17:00:00', '2022-06-07 17:00:00'),
(20, 3, '2022-06-04', '2022-06-07', 2, 'Lessie Kulas', 'armando53@yahoo.com', '678.225.2711', 'Gabrielle Buckridge', 'pesan', '2022-06-01 17:00:00', '2022-06-01 17:00:00'),
(21, 1, '2022-06-12', '2022-06-15', 2, 'Jeffry Marvin', 'cordell85@hotmail.com', '+1-352-447-7750', 'Brayan Zieme', 'pesan', '2022-06-08 17:00:00', '2022-06-08 17:00:00'),
(22, 3, '2022-06-04', '2022-06-07', 2, 'Arnaldo Deckow', 'mills.justus@hotmail.com', '1-747-987-8133', 'Jacey Rowe', 'pesan', '2022-06-02 17:00:00', '2022-06-02 17:00:00'),
(23, 3, '2022-06-12', '2022-06-14', 2, 'Prof. Kellen Feeney', 'windler.christine@gmail.com', '1-470-982-9383', 'Antwon Olson', 'pesan', '2022-06-08 17:00:00', '2022-06-08 17:00:00'),
(24, 3, '2022-06-11', '2022-06-14', 1, 'Destany Sipes', 'beier.tremaine@hotmail.com', '+1.803.872.0041', 'Austyn Tromp', 'pesan', '2022-06-07 17:00:00', '2022-06-07 17:00:00'),
(25, 1, '2022-06-11', '2022-06-14', 1, 'Albert Torp', 'giovanny39@yahoo.com', '(423) 478-2579', 'Adrien Ernser', 'pesan', '2022-06-08 17:00:00', '2022-06-08 17:00:00'),
(26, 2, '2022-06-07', '2022-06-09', 1, 'Jaime Hansen', 'brown.eva@yahoo.com', '+1 (559) 744-5748', 'Lydia Nikolaus', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(27, 2, '2022-05-31', '2022-06-03', 2, 'Prof. Evans Cassin', 'alf86@yahoo.com', '231.963.5927', 'Dr. Enola Farrell', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(28, 1, '2022-06-02', '2022-06-04', 2, 'Nathanael Turner', 'jkohler@hotmail.com', '1-458-687-3463', 'Edna Renner', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(29, 2, '2022-06-06', '2022-06-09', 2, 'Keira Mertz', 'fmarvin@gmail.com', '231.907.3959', 'Randi Langosh', 'pesan', '2022-06-03 17:00:00', '2022-06-03 17:00:00'),
(30, 2, '2022-06-03', '2022-06-05', 1, 'Destini Schowalter', 'justus41@hotmail.com', '737.534.5170', 'Adolphus Bayer', 'pesan', '2022-06-01 17:00:00', '2022-06-01 17:00:00'),
(31, 2, '2022-06-07', '2022-06-08', 1, 'Terrence Hagenes', 'gabrielle.sporer@yahoo.com', '1-352-926-7020', 'Shemar Ledner', 'pesan', '2022-06-04 17:00:00', '2022-06-04 17:00:00'),
(32, 2, '2022-06-08', '2022-06-10', 1, 'Zakary Rodriguez', 'ugaylord@yahoo.com', '(281) 826-3620', 'Thad Toy', 'pesan', '2022-06-06 17:00:00', '2022-06-06 17:00:00'),
(33, 2, '2022-06-10', '2022-06-12', 2, 'Giovanna Wiza DVM', 'dare.natalie@hotmail.com', '929-787-6669', 'Prof. Brown Macejkovic MD', 'pesan', '2022-06-08 17:00:00', '2022-06-08 17:00:00'),
(34, 1, '2022-06-07', '2022-06-08', 1, 'Thelma Predovic IV', 'nlakin@yahoo.com', '+1-828-725-4549', 'Casper Rowe', 'pesan', '2022-06-04 17:00:00', '2022-06-04 17:00:00'),
(35, 2, '2022-06-12', '2022-06-15', 2, 'Guiseppe Sporer', 'cummerata.percival@yahoo.com', '(812) 861-6630', 'Fletcher O\'Hara', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(36, 2, '2022-06-08', '2022-06-09', 2, 'Prof. Ayana VonRueden', 'etrantow@hotmail.com', '+1.973.589.0735', 'Josh Kerluke I', 'pesan', '2022-06-06 17:00:00', '2022-06-06 17:00:00'),
(37, 2, '2022-06-12', '2022-06-14', 2, 'Dr. Remington Quitzon', 'alexandro94@yahoo.com', '+1 (954) 258-9440', 'Destiney Reinger', 'pesan', '2022-06-09 17:00:00', '2022-06-09 17:00:00'),
(38, 2, '2022-06-08', '2022-06-09', 2, 'Vernon Stroman', 'svonrueden@gmail.com', '1-504-886-4695', 'Christina Dickinson', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(39, 3, '2022-06-06', '2022-06-07', 2, 'Maia Medhurst', 'kamron.howell@gmail.com', '323-487-3508', 'Lew Lubowitz', 'pesan', '2022-06-02 17:00:00', '2022-06-02 17:00:00'),
(40, 2, '2022-06-11', '2022-06-14', 2, 'Milford Reichel', 'kwiegand@hotmail.com', '(301) 745-5486', 'Josephine Klocko', 'pesan', '2022-06-07 17:00:00', '2022-06-07 17:00:00'),
(41, 1, '2022-06-09', '2022-06-12', 1, 'Era Bergnaum', 'ttoy@hotmail.com', '364.805.1718', 'Prof. Evalyn Baumbach DDS', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(42, 1, '2022-06-07', '2022-06-08', 1, 'Mrs. Magdalen Champlin III', 'bgrady@gmail.com', '1-440-277-6755', 'Prof. George Lang', 'pesan', '2022-06-03 17:00:00', '2022-06-03 17:00:00'),
(43, 3, '2022-06-06', '2022-06-09', 1, 'Fermin Towne', 'ojohnston@hotmail.com', '816.225.9594', 'Glennie Wilderman', 'pesan', '2022-06-02 17:00:00', '2022-06-02 17:00:00'),
(44, 2, '2022-06-12', '2022-06-13', 1, 'Misael Rice', 'gsenger@yahoo.com', '(850) 337-4437', 'Dominique Mante', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(45, 1, '2022-05-31', '2022-06-02', 1, 'Alexandre Jones', 'derick85@yahoo.com', '(360) 276-3128', 'Archibald Boehm', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(46, 3, '2022-06-05', '2022-06-06', 1, 'Joyce Yundt', 'runte.isabel@yahoo.com', '+1-440-827-2056', 'Prof. Nelson Denesik', 'pesan', '2022-06-03 17:00:00', '2022-06-03 17:00:00'),
(47, 1, '2022-06-01', '2022-06-02', 2, 'Miss Zelma Cummerata', 'ywalsh@yahoo.com', '1-364-600-0234', 'Jackie Hamill', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(48, 3, '2022-06-13', '2022-06-16', 2, 'Jevon Vandervort', 'zstroman@gmail.com', '402.830.4172', 'Alfreda Schultz', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(49, 2, '2022-06-13', '2022-06-15', 1, 'Ariane Trantow', 'hnicolas@hotmail.com', '(747) 540-9232', 'Leonora Botsford', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(50, 2, '2022-05-31', '2022-06-02', 1, 'Cesar Senger', 'dborer@gmail.com', '1-470-862-1670', 'Grayce Jaskolski', 'pesan', '2022-05-27 17:00:00', '2022-05-27 17:00:00'),
(51, 1, '2022-06-12', '2022-06-13', 2, 'Dr. Onie Waters', 'scarter@yahoo.com', '+17692065351', 'Samanta Kreiger', 'pesan', '2022-06-09 17:00:00', '2022-06-09 17:00:00'),
(52, 1, '2022-06-05', '2022-06-08', 1, 'Prof. Van Beier', 'antwon.wolf@yahoo.com', '+12405503413', 'Cloyd Medhurst', 'batal', '2022-06-01 17:00:00', '2022-06-06 15:08:20'),
(53, 1, '2022-06-13', '2022-06-15', 1, 'Mary Bosco', 'vborer@yahoo.com', '(531) 475-7523', 'Miss Bethany Bergstrom', 'pesan', '2022-06-11 17:00:00', '2022-06-11 17:00:00'),
(54, 3, '2022-06-13', '2022-06-15', 1, 'Elmira Spinka', 'buckridge.daren@gmail.com', '361.565.3662', 'Jaycee Hegmann', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(55, 3, '2022-06-03', '2022-06-04', 1, 'Mathilde Hoeger', 'alf23@gmail.com', '1-510-789-6799', 'Prof. Lizzie Strosin I', 'pesan', '2022-05-31 17:00:00', '2022-05-31 17:00:00'),
(56, 3, '2022-06-06', '2022-06-07', 1, 'Gennaro Heller', 'howe.marietta@hotmail.com', '(469) 480-6980', 'Mrs. Earline Hoppe', 'pesan', '2022-06-04 17:00:00', '2022-06-04 17:00:00'),
(57, 1, '2022-06-08', '2022-06-09', 2, 'Santiago Harvey', 'nestor.ortiz@gmail.com', '820-366-8775', 'Mrs. Claudia Jaskolski II', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(58, 3, '2022-06-07', '2022-06-08', 1, 'Lauriane Pacocha', 'iherzog@yahoo.com', '+1.380.446.1632', 'Juliet Zieme', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(59, 2, '2022-06-01', '2022-06-02', 1, 'Preston Bauch', 'desmond51@yahoo.com', '(704) 352-8327', 'Prof. Adrien Thiel', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(60, 2, '2022-06-07', '2022-06-10', 2, 'Mrs. Annalise Klocko PhD', 'volkman.leda@gmail.com', '336-601-2746', 'Blair Kerluke', 'pesan', '2022-06-03 17:00:00', '2022-06-03 17:00:00'),
(61, 2, '2022-06-08', '2022-06-09', 2, 'Prof. Iva Altenwerth', 'jswift@hotmail.com', '+19182048794', 'Esteban Bode II', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(62, 3, '2022-06-02', '2022-06-03', 1, 'Dr. Hollis Berge', 'burdette05@hotmail.com', '1-747-498-7097', 'Dr. Mariah Bradtke Sr.', 'pesan', '2022-05-31 17:00:00', '2022-05-31 17:00:00'),
(63, 2, '2022-06-01', '2022-06-02', 2, 'Guadalupe Wilderman I', 'leffler.milton@yahoo.com', '(820) 938-8854', 'Miss Hortense Farrell', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(64, 1, '2022-06-04', '2022-06-06', 2, 'Mr. Curtis Bednar', 'gretchen23@gmail.com', '925.327.7308', 'Josh Nitzsche', 'pesan', '2022-06-02 17:00:00', '2022-06-02 17:00:00'),
(65, 2, '2022-06-12', '2022-06-15', 1, 'Miss Vivianne Adams V', 'maggio.grayson@hotmail.com', '+1-956-699-1748', 'Mr. Conrad Swaniawski', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(66, 2, '2022-06-03', '2022-06-06', 1, 'Dr. Sedrick Kirlin', 'orunolfsdottir@yahoo.com', '(657) 655-3695', 'Alphonso Padberg', 'pesan', '2022-05-31 17:00:00', '2022-05-31 17:00:00'),
(67, 2, '2022-06-11', '2022-06-12', 1, 'Erna Schultz IV', 'erowe@gmail.com', '872-867-2003', 'Garett Wilkinson', 'pesan', '2022-06-08 17:00:00', '2022-06-08 17:00:00'),
(68, 2, '2022-06-06', '2022-06-07', 1, 'Jordane Cartwright', 'zdickens@hotmail.com', '218-953-2571', 'Miss Felicia McClure', 'pesan', '2022-06-03 17:00:00', '2022-06-03 17:00:00'),
(69, 1, '2022-05-30', '2022-06-01', 2, 'Zakary Ernser II', 'marvin.jordane@hotmail.com', '309-832-3059', 'Alayna Schinner', 'pesan', '2022-05-26 17:00:00', '2022-05-26 17:00:00'),
(70, 2, '2022-06-02', '2022-06-03', 1, 'Gardner Herzog', 'lon.denesik@yahoo.com', '774.299.6772', 'Raina Balistreri', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(71, 1, '2022-06-03', '2022-06-05', 1, 'Prof. Judah Padberg', 'lweber@yahoo.com', '+1.667.970.8460', 'Leonel Adams', 'pesan', '2022-05-31 17:00:00', '2022-05-31 17:00:00'),
(72, 3, '2022-06-01', '2022-06-02', 1, 'Ignatius Crooks', 'effie94@hotmail.com', '347-271-1200', 'Elfrieda Tillman', 'pesan', '2022-05-30 17:00:00', '2022-05-30 17:00:00'),
(73, 2, '2022-06-05', '2022-06-08', 1, 'Lawson Emard', 'amely.kshlerin@gmail.com', '316.524.6584', 'Ashley Torp', 'pesan', '2022-06-02 17:00:00', '2022-06-02 17:00:00'),
(74, 2, '2022-06-09', '2022-06-10', 2, 'Guadalupe O\'Conner I', 'mossie.hand@yahoo.com', '+18586938750', 'Mr. Perry Schinner', 'pesan', '2022-06-07 17:00:00', '2022-06-07 17:00:00'),
(75, 1, '2022-06-09', '2022-06-11', 1, 'Madelynn Fritsch', 'abshire.earnestine@hotmail.com', '+1-517-522-6801', 'Dexter Rodriguez', 'pesan', '2022-06-07 17:00:00', '2022-06-07 17:00:00'),
(76, 3, '2022-06-11', '2022-06-12', 2, 'Georgiana Wisoky', 'ullrich.nichole@yahoo.com', '702-827-2226', 'Libby Jakubowski IV', 'pesan', '2022-06-07 17:00:00', '2022-06-07 17:00:00'),
(77, 1, '2022-06-12', '2022-06-13', 1, 'Micaela O\'Hara', 'leffler.everardo@yahoo.com', '+1-646-271-0981', 'Ramon Mueller', 'pesan', '2022-06-08 17:00:00', '2022-06-08 17:00:00'),
(78, 1, '2022-06-01', '2022-06-04', 1, 'Prof. Curt Simonis IV', 'stanford83@hotmail.com', '1-445-956-9376', 'Clay Ondricka', 'pesan', '2022-05-28 17:00:00', '2022-05-28 17:00:00'),
(79, 1, '2022-06-03', '2022-06-06', 1, 'Mr. Orville Tromp', 'mariela.gaylord@gmail.com', '(386) 492-4354', 'Georgianna VonRueden', 'pesan', '2022-06-01 17:00:00', '2022-06-01 17:00:00'),
(80, 2, '2022-06-08', '2022-06-11', 1, 'Nichole Bauch', 'frami.enos@hotmail.com', '+1.425.726.2291', 'Orpha Wuckert', 'pesan', '2022-06-04 17:00:00', '2022-06-04 17:00:00'),
(81, 2, '2022-06-01', '2022-06-03', 2, 'Bonnie Hahn Sr.', 'erik74@yahoo.com', '+1 (434) 979-3353', 'Laury Hodkiewicz', 'pesan', '2022-05-30 17:00:00', '2022-05-30 17:00:00'),
(82, 2, '2022-06-05', '2022-06-06', 1, 'Mr. Deontae Bednar V', 'pascale30@gmail.com', '1-567-263-4303', 'Mrs. Cordie Lakin', 'pesan', '2022-06-01 17:00:00', '2022-06-01 17:00:00'),
(83, 3, '2022-06-07', '2022-06-10', 1, 'Jasen Robel', 'ethan08@gmail.com', '+1 (561) 373-3059', 'Prof. Judah Hodkiewicz', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(84, 2, '2022-06-13', '2022-06-14', 1, 'Tyson Lehner', 'jjacobs@gmail.com', '+1.240.816.1358', 'Heather Kovacek', 'pesan', '2022-06-11 17:00:00', '2022-06-11 17:00:00'),
(85, 1, '2022-06-10', '2022-06-11', 2, 'Dr. Viviane Farrell', 'bridie51@yahoo.com', '(740) 296-9313', 'Dr. Price Abbott', 'pesan', '2022-06-06 17:00:00', '2022-06-06 17:00:00'),
(86, 3, '2022-06-01', '2022-06-04', 1, 'Gust Gorczany', 'oliver.bernier@hotmail.com', '828-332-7698', 'Teagan Bosco', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(87, 1, '2022-06-01', '2022-06-03', 1, 'Winston Farrell', 'imurphy@yahoo.com', '971.924.9618', 'Miss Guadalupe Schultz III', 'pesan', '2022-05-30 17:00:00', '2022-05-30 17:00:00'),
(88, 3, '2022-06-06', '2022-06-07', 1, 'Meta Bradtke', 'tromp.jackson@hotmail.com', '+1.352.318.6804', 'Ms. Blanche Sawayn IV', 'pesan', '2022-06-04 17:00:00', '2022-06-04 17:00:00'),
(89, 3, '2022-06-07', '2022-06-09', 1, 'Veda Hickle', 'stroman.deontae@hotmail.com', '1-570-582-9351', 'Cordell Oberbrunner', 'pesan', '2022-06-05 17:00:00', '2022-06-05 17:00:00'),
(90, 3, '2022-06-12', '2022-06-14', 1, 'Landen Wintheiser', 'habernathy@gmail.com', '267.932.0992', 'Ms. Ova Donnelly', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(91, 2, '2022-06-08', '2022-06-10', 1, 'Mrs. Anastasia Durgan', 'robel.berniece@yahoo.com', '(347) 485-0520', 'Miss Jessika Hartmann DDS', 'pesan', '2022-06-04 17:00:00', '2022-06-04 17:00:00'),
(92, 1, '2022-06-11', '2022-06-12', 1, 'Bernadine Stokes', 'gust20@yahoo.com', '+1.405.941.4514', 'Dr. Daisha Johnson Sr.', 'pesan', '2022-06-07 17:00:00', '2022-06-07 17:00:00'),
(93, 2, '2022-06-10', '2022-06-13', 2, 'Miss Alana Lubowitz III', 'ncole@gmail.com', '615.723.4092', 'Dr. Robin Mante III', 'pesan', '2022-06-07 17:00:00', '2022-06-07 17:00:00'),
(94, 1, '2022-05-31', '2022-06-03', 2, 'Jarod Langworth', 'lindsay.luettgen@gmail.com', '1-510-283-3067', 'Lupe Becker', 'pesan', '2022-05-28 17:00:00', '2022-05-28 17:00:00'),
(95, 3, '2022-06-07', '2022-06-08', 2, 'Loy Lemke', 'ocruickshank@gmail.com', '920-879-5420', 'Tanya Stehr', 'pesan', '2022-06-03 17:00:00', '2022-06-03 17:00:00'),
(96, 3, '2022-06-12', '2022-06-14', 1, 'Akeem Fay', 'jeremy34@hotmail.com', '+16575027457', 'Alysa Paucek', 'pesan', '2022-06-10 17:00:00', '2022-06-10 17:00:00'),
(97, 3, '2022-06-08', '2022-06-11', 1, 'Prof. Justen Torp', 'jacynthe75@gmail.com', '(531) 605-8294', 'Maddison Carroll I', 'pesan', '2022-06-04 17:00:00', '2022-06-04 17:00:00'),
(98, 2, '2022-06-02', '2022-06-04', 2, 'Mr. Zane Barrows', 'dubuque.merritt@yahoo.com', '+1-660-836-0371', 'Brooks Schumm', 'pesan', '2022-05-29 17:00:00', '2022-05-29 17:00:00'),
(99, 1, '2022-06-10', '2022-06-12', 2, 'Mable Wilkinson', 'jada.smitham@yahoo.com', '+1-321-973-5941', 'Richie Reichert', 'pesan', '2022-06-06 17:00:00', '2022-06-06 17:00:00'),
(100, 2, '2022-06-10', '2022-06-11', 1, 'Jean Goyette', 'dwindler@gmail.com', '1-860-926-0487', 'Darien Windler PhD', 'pesan', '2022-06-06 17:00:00', '2022-06-06 17:00:00'),
(101, 1, '2022-06-07', '2022-06-08', 2, 'Doni Setiawan', '11rplahebat@gmail.com', '085217208593', 'Windi', 'pesan', '2022-06-06 15:06:24', '2022-06-06 15:06:24'),
(102, 3, '2022-06-07', '2022-06-13', 1, 'Doni Setiawan', '202110180@smkn1padaherang.sch.id', '085217208593', 'Doni', 'pesan', '2022-06-06 15:13:24', '2022-06-06 15:13:24'),
(103, 2, '2022-06-07', '2022-09-07', 2, 'Doni Setiawan', 'donibaru789@gmail.com', '085217208593', 'Doni', 'pesan', '2022-06-06 15:14:53', '2022-06-06 15:14:53'),
(104, 2, '2022-06-07', '2022-07-07', 1, 'Doni Setiawan', '202110150@smkn1padaherang.sch.id', '085217208593', 'Doni', 'pesan', '2022-06-06 15:17:53', '2022-06-06 15:17:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indeks untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fasilitas_kamars_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanans_kamar_id_foreign` (`kamar_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_hotels`
--
ALTER TABLE `fasilitas_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `fasilitas_kamars`
--
ALTER TABLE `fasilitas_kamars`
  ADD CONSTRAINT `fasilitas_kamars_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD CONSTRAINT `pemesanans_kamar_id_foreign` FOREIGN KEY (`kamar_id`) REFERENCES `kamars` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
