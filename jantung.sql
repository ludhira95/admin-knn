-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Okt 2018 pada 22.26
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jantung`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejalas`
--

CREATE TABLE `gejalas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesak_aktifitas` int(11) NOT NULL,
  `sesak_istirahat` int(11) NOT NULL,
  `nyeri_dada` int(11) NOT NULL,
  `nyeri_leher` int(11) NOT NULL,
  `kepala_pusing` int(11) NOT NULL,
  `badan_lemas` int(11) NOT NULL,
  `jantung_berdebar` int(11) NOT NULL,
  `mudah_cape` int(11) NOT NULL,
  `kaki_bengkak` int(11) NOT NULL,
  `batuk` int(11) NOT NULL,
  `riwayat_darahtinggi` int(11) NOT NULL,
  `riwayat_kencingmanis` int(11) NOT NULL,
  `hasil` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `valid` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gejalas`
--

INSERT INTO `gejalas` (`id`, `nama`, `sesak_aktifitas`, `sesak_istirahat`, `nyeri_dada`, `nyeri_leher`, `kepala_pusing`, `badan_lemas`, `jantung_berdebar`, `mudah_cape`, `kaki_bengkak`, `batuk`, `riwayat_darahtinggi`, `riwayat_kencingmanis`, `hasil`, `created_at`, `updated_at`, `valid`) VALUES
(1, 'Aim', 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0, 'CHF;HHD', '2018-09-25 21:24:01', '2018-09-25 21:24:01', 1),
(2, 'Dadang', 0, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 'CHF;CAD', '2018-09-25 21:25:15', '2018-09-25 22:02:02', 1),
(3, 'Mamay', 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 'CHF;CAD', NULL, NULL, 1),
(4, 'Een', 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 'CHF;CAD', '2018-09-25 21:28:00', '2018-09-25 21:28:00', 1),
(5, 'Enceng', 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 'CHF;HHD', '2018-09-25 21:29:00', '2018-09-25 21:58:43', 1),
(6, 'Engkar', 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 'CHF;HHD', '2018-09-25 21:30:00', '2018-09-25 21:58:54', 1),
(7, 'Ihat', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 'CHF;HHD', '2018-09-25 21:31:51', '2018-09-25 21:31:51', 1),
(8, 'Mamad', 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 'CHF;HHD', '2018-09-25 21:33:06', '2018-09-25 21:59:11', 1),
(9, 'Nining Kurniasih', 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 'CHF;HHD', '2018-09-25 21:35:16', '2018-09-25 21:35:16', 1),
(10, 'Sutasman', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'CHF;CAD', NULL, NULL, 1),
(11, 'Tati', 1, 1, 0, 1, 1, 0, 1, 1, 0, 1, 1, 0, 'CAD;VES', '2018-09-25 21:36:41', '2018-09-25 21:36:41', 1),
(12, 'Tati Rosati', 1, 1, 1, 0, 1, 0, 0, 1, 0, 1, 0, 0, 'CHF;AF', '2018-09-25 21:37:32', '2018-09-25 21:37:32', 1),
(13, 'Tita', 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 'Palpitasi', '2018-09-25 21:39:12', '2018-09-25 21:39:12', 1),
(14, 'Titin', 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 'CHF;AF', '2018-09-25 21:42:16', '2018-09-25 21:42:16', 1),
(15, 'Titin Suristin', 1, 1, 0, 1, 0, 0, 0, 1, 0, 0, 1, 0, 'CHF;HHD', '2018-09-25 21:43:33', '2018-09-25 21:43:33', 1),
(16, 'Syarif Usman', 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 1, 0, 'CHF;HHD', '2018-09-25 21:44:24', '2018-09-25 21:59:27', 1),
(17, 'Wiwi', 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 'Palpitasi', '2018-09-25 21:45:09', '2018-09-25 21:45:09', 1),
(18, 'Wowon', 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 'CHF;HHD', '2018-09-25 21:45:59', '2018-09-25 22:00:12', 1),
(19, 'Yaya Suryaman', 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 'CAD;VES', '2018-09-25 21:46:48', '2018-09-25 21:46:48', 1),
(20, 'Yayat Supriatna', 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 'CHF;HHD', '2018-09-25 21:47:34', '2018-09-25 22:00:19', 1),
(21, 'Yoyoh', 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 0, 'CHF;HHD', '2018-09-25 21:48:45', '2018-09-25 21:48:45', 1),
(22, 'Yayat', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 'CHF;CAD', '2018-09-25 21:53:07', '2018-09-25 21:53:07', 1),
(23, 'Sanju', 1, 1, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 'CHF;HHD', '2018-09-25 22:11:13', '2018-09-25 22:11:13', 1),
(24, 'Aum', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'CHF;CAD', '2018-09-28 06:26:03', '2018-09-29 19:17:27', 1),
(25, 'Iros', 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'CHF;CAD', '2018-09-28 06:26:40', '2018-09-29 19:17:12', 1),
(29, 'S', 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 'sasa', NULL, '2018-10-10 08:17:03', 1);

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
(1, '2018_09_08_022444_create_gejalas_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(10) NOT NULL,
  `nm_penyakit` varchar(50) NOT NULL,
  `keterangan` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id`, `nm_penyakit`, `keterangan`) VALUES
(1, 'CAD', 'Coronary Artery Disease (CAD) / Penyakit Jantung Koroner adalah penyakit jantung yang disebabkan oleh penyumbatan pada pembuluh darah arteri koroner yang mengalirkan darah ke otot jantung. Penyumbatan pembuluh darah disebabkan oleh penumpukan kolesterol dan zat lain pada dinding pembuluh darah sehingga alirah darah dapat terganggu. Adanya gangguan aliran darah dapat menyebabkan pasokan nutrisi dan oksigen pada otot jantung terganggu sehingga otot jantung dapat mengalami kerusakan. Risiko seseorang mengalami penyakit jantung koroner dapat meningkat jika orang tersebut memiliki diabetes, tekanan darah tinggi (hipertensi), riwayat keluarga dengan penyakit jantung koroner, tingkat kolesterol tinggi, obesitas, merokok.'),
(2, 'CHF', 'Congestive Heart Failure (CHF) merupakan suatu keadaan gagal jantung yang menyebabkan terjadinya kongesti ( bendungan), kongesti tersebut dapat berupa bengkak pada kaki, hingga penumpukan cairan pada paru. CHF biasanya merupakan suatu penyakit yang disebabkan karena adanya penyakit lain yang mendasari, misalnya karena penyakit ginjal, darah tinggi, aritmia, penyakit katup.'),
(3, 'HHD', 'Hypertensive Heart Disease (HHD) merupakan istilah medis yang digunakan untuk menyebtukan penyakit jantung yang dialami secara keseluruhan meliputi pembesaran pada ventrikel kiri, irama nadi yang tidak regular, penyakit jantung coroner dan penyakit jantung kronis. Keadaan ini biasanya disbebkan oleh tekanan darah tinggi yang menyebabkan meningkatnya beban kerja di jantung. '),
(4, 'VSD', 'Ventricular Septal Defect (VSD) adalah kelainan jantung bawaan berupa adanya lubang di dinding pemisah antara bilik jantung kanan dan kiri. Kelainan ini menyebabkan darah yang banyak mengandung oksigen tidak sepenuhnya dipompa ke seluruh tubuh karena sebagian darah masuk kembali ke paru-paru, akibatnya jantung akan bekerja lebih keras memompa darah ke seluruh tubuh.\r\n\r\nDisarankan agar Anda segera memeriksakan diri ke dokter spesialis jantung untuk penanganan lanjutan.\r\n\r\nSumber : www.alodokter.com'),
(5, 'AF', 'Atrial Fibrillation (AF) adalah kondisi kelainan irama jantung yang ditandai dengan denyut jantung tidak beraturan serat cepat. Kondisi ini bisa meningkatkan kemungkinan seseorang untuk mengalami penggumpalan darah, stroke dan gagal jantung. AF bisa disebabkan berbagai hal, mulai dari infeksi virus, kelainan jantung bawaan, paparan obat, alkohol, obesitas, penyakit paru-paru dan lain sebagainya.'),
(6, 'Palpitasi', 'Palpitasi adalah kondisi ketika jantung berdenyut terlalu cepat dan tidak beraturan. Penderita palpitasi umumnya merasa jantung berdegup cepat dan kencang. Sensasi tersebut dapat dirasakan di area tenggorokan dan leher. Pada beberapa kasus, palpitasi tidak berbahaya. Tetapi palpitasi yang disertai gejala seperti pusing dan sesak di dada, patut diwaspadai. Kondisi tersebut dapat menjadi pertanda ada masalah di jantung. Karena itu, penting untuk mengenali penyebab dan gejala jantung berdebar.'),
(7, 'VES', 'Ventrikel Ekstra Sistol (VES) adalah jenis dari aritmia jantung (irama jantung yang tidak teratur) yang terjadi akibat adanya aktivitas listrik jantung abnormal yang menyebabkan denyut jantung di luar irama yang normal. VES seringkali tidak bergejala, dan baru diketahui saat melakukan pemeriksaan EKG (rekam jantung). VES dapat disebabkan oleh tekanan darah tinggi, stress, konsumsi minuman berkafein secara berlebih, gangguan struktur jantung, penyakit jantung seperti serangan jantung, obat-obatan jantung, gangguan keseimbangan elektrolit darah, gangguan hormon tiroid, dll, meskipun ada pula VES yang tidak diketahui penyebabnya.'),
(8, 'CHF;HHD', 'Congestive Heart Failure (CHF) merupakan suatu keadaan gagal jantung yang menyebabkan terjadinya kongesti ( bendungan), kongesti tersebut dapat berupa bengkak pada kaki, hingga penumpukan cairan pada paru. CHF biasanya merupakan suatu penyakit yang disebabkan karena adanya penyakit lain yang mendasari, misalnya karena penyakit ginjal, darah tinggi, aritmia, penyakit katup. Dan Hypertensive Heart Disease (HHD) merupakan istilah medis yang digunakan untuk menyebtukan penyakit jantung yang dialami secara keseluruhan meliputi pembesaran pada ventrikel kiri, irama nadi yang tidak regular, penyakit jantung coroner dan penyakit jantung kronis. Keadaan ini biasanya disbebkan oleh tekanan darah tinggi yang menyebabkan meningkatnya beban kerja di jantung. '),
(9, 'CHF;CAD', 'Congestive Heart Failure (CHF) merupakan suatu keadaan gagal jantung yang menyebabkan terjadinya kongesti ( bendungan), kongesti tersebut dapat berupa bengkak pada kaki, hingga penumpukan cairan pada paru. CHF biasanya merupakan suatu penyakit yang disebabkan karena adanya penyakit lain yang mendasari, misalnya karena penyakit ginjal, darah tinggi, aritmia, penyakit katup. Dan Coronary Artery Disease (CAD) / Penyakit Jantung Koroner adalah penyakit jantung yang disebabkan oleh penyumbatan pada pembuluh darah arteri koroner yang mengalirkan darah ke otot jantung. Penyumbatan pembuluh darah disebabkan oleh penumpukan kolesterol dan zat lain pada dinding pembuluh darah sehingga alirah darah dapat terganggu. Adanya gangguan aliran darah dapat menyebabkan pasokan nutrisi dan oksigen pada otot jantung terganggu sehingga otot jantung dapat mengalami kerusakan. Risiko seseorang mengalami penyakit jantung koroner dapat meningkat jika orang tersebut memiliki diabetes, tekanan darah tinggi (hipertensi), riwayat keluarga dengan penyakit jantung koroner, tingkat kolesterol tinggi, obesitas, merokok.'),
(10, 'CAD;VES', 'Coronary Artery Disease (CAD) / Penyakit Jantung Koroner adalah penyakit jantung yang disebabkan oleh penyumbatan pada pembuluh darah arteri koroner yang mengalirkan darah ke otot jantung. Penyumbatan pembuluh darah disebabkan oleh penumpukan kolesterol dan zat lain pada dinding pembuluh darah sehingga alirah darah dapat terganggu. Adanya gangguan aliran darah dapat menyebabkan pasokan nutrisi dan oksigen pada otot jantung terganggu sehingga otot jantung dapat mengalami kerusakan. Risiko seseorang mengalami penyakit jantung koroner dapat meningkat jika orang tersebut memiliki diabetes, tekanan darah tinggi (hipertensi), riwayat keluarga dengan penyakit jantung koroner, tingkat kolesterol tinggi, obesitas, merokok. Dan Ventrikel Ekstra Sistol (VES) adalah jenis dari aritmia jantung (irama jantung yang tidak teratur) yang terjadi akibat adanya aktivitas listrik jantung abnormal yang menyebabkan denyut jantung di luar irama yang normal. VES seringkali tidak bergejala, dan baru diketahui saat melakukan pemeriksaan EKG (rekam jantung). VES dapat disebabkan oleh tekanan darah tinggi, stress, konsumsi minuman berkafein secara berlebih, gangguan struktur jantung, penyakit jantung seperti serangan jantung, obat-obatan jantung, gangguan keseimbangan elektrolit darah, gangguan hormon tiroid, dll, meskipun ada pula VES yang tidak diketahui penyebabnya.'),
(11, 'CHF;AF', 'Congestive Heart Failure (CHF) merupakan suatu keadaan gagal jantung yang menyebabkan terjadinya kongesti ( bendungan), kongesti tersebut dapat berupa bengkak pada kaki, hingga penumpukan cairan pada paru. CHF biasanya merupakan suatu penyakit yang disebabkan karena adanya penyakit lain yang mendasari, misalnya karena penyakit ginjal, darah tinggi, aritmia, penyakit katup. Dan Atrial Fibrillation (AF) adalah kondisi kelainan irama jantung yang ditandai dengan denyut jantung tidak beraturan serat cepat. Kondisi ini bisa meningkatkan kemungkinan seseorang untuk mengalami penggumpalan darah, stroke dan gagal jantung. AF bisa disebabkan berbagai hal, mulai dari infeksi virus, kelainan jantung bawaan, paparan obat, alkohol, obesitas, penyakit paru-paru dan lain sebagainya.'),
(12, 'Tidak Diketahui', 'Mungkin Anda Mengalami Penyakit Jantung Baru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sort`
--

CREATE TABLE `sort` (
  `id` int(10) NOT NULL,
  `g1` int(10) NOT NULL,
  `g2` int(10) NOT NULL,
  `g3` int(10) NOT NULL,
  `g4` int(10) NOT NULL,
  `g5` int(10) NOT NULL,
  `g6` int(10) NOT NULL,
  `g7` int(10) NOT NULL,
  `g8` int(10) NOT NULL,
  `g9` int(10) NOT NULL,
  `g10` int(10) NOT NULL,
  `g11` int(10) NOT NULL,
  `g12` int(10) NOT NULL,
  `jarak` float NOT NULL,
  `hasil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp`
--

CREATE TABLE `temp` (
  `id` int(10) NOT NULL,
  `g1` int(10) NOT NULL,
  `g2` int(10) NOT NULL,
  `g3` int(10) NOT NULL,
  `g4` int(10) NOT NULL,
  `g5` int(10) NOT NULL,
  `g6` int(10) NOT NULL,
  `g7` int(10) NOT NULL,
  `g8` int(10) NOT NULL,
  `g9` int(10) NOT NULL,
  `g10` int(10) NOT NULL,
  `g11` int(10) NOT NULL,
  `g12` int(10) NOT NULL,
  `jarak` float NOT NULL,
  `hasil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Ludhira Try', 'lee.ludi@yahoo.co.id', '$2y$10$vqI7XPCNag3yBCEmLAMdY.9lsGLZMPTTphK0ygN9dqSPS5muHqUse', 'yGUytAy3AIVOEZlpas5EqLfQ6sgo8P0yeoMnDgeiV0RfrMhjzRiqyATls2Lu', '2018-09-04 01:19:38', '2018-09-04 01:19:38'),
(3, 'Ludhira', 'ludhirarpl1@gmail.com', '$2y$10$z4oxdPygw0zUd3LczMDQeuPoC0Otqmk2LTzuZXfZRN10lGrvBgDx.', '37JxKTmCCz6zCBcSJiEjqMlDBiGLqNyDeW2yQH668SOHHAq13oIfU16dhPcz', '2018-09-07 19:28:44', '2018-09-07 19:28:44'),
(4, 'Ludhira Tri', 'ludhirasunandar@gmail.com', '$2y$10$HOSazkCbtIpyv2L.bKch4.xFSWFYHbKHiO/kUXEHSXRjQBrnWCLom', NULL, '2018-10-10 08:10:05', '2018-10-10 08:10:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gejalas`
--
ALTER TABLE `gejalas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sort`
--
ALTER TABLE `sort`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gejalas`
--
ALTER TABLE `gejalas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `sort`
--
ALTER TABLE `sort`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
