-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 13, 2023 at 01:48 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20906048_chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`id`, `file`) VALUES
(1, 'LAPORAN TUGAS AKHIR PCD.docx'),
(2, 'Tugas Heuristik-Aulya Haidir-210211060050.pdf'),
(3, 'MAKALAH PENERAPAN STRATEGI UNINFORMED SEARCH PADA PENENTUAN RUTE KABEL INTERNET.rtf'),
(4, 'LAPORAN PHP - Andrew Fortino Mahardika Suadnya - 210211060231 (2).pdf'),
(5, 'LAPORAN 8-PUZZLE_AULYA HAIDIR_210211060050.pdf'),
(6, 'LAPORAN PENERAPAN ALGORITMA  A.docx');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(5, 1006206650, 542095966, 'selamat malam kak, mau tanya untuk harga pdf laporan yang sudah saya upload berapa ya kak?'),
(6, 542095966, 1006206650, 'selamat malam'),
(7, 542095966, 1006206650, 'untuk harganya tinta warna perlembar 3000'),
(8, 1006206650, 542095966, 'oh oke kak, tolong diprint nanti saya ambil kalau sudah selesai'),
(9, 1006206650, 1208973312, 'hallo admin'),
(10, 1006206650, 1208973312, 'saya mau print tinta warna, untuk harga perlembarnya berapa ya?'),
(11, 1208973312, 1006206650, 'hallo, untuk harga print warna perlembarnya 3000 '),
(12, 1208973312, 1006206650, 'silahkan ke menu print kemudian pilih jumlah kertas yang akan di print, lalu upload filenya'),
(13, 1006206650, 1208973312, 'baik terima kasih admin');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rating`, `review`) VALUES
(1, 4, 'kerennnnnnnnnn'),
(2, 4, 'mantap'),
(3, 5, 'sangat puas dengan hasil print\n'),
(4, 3, 'kualitas tinta kurang bagus, tapi admin ramah'),
(5, 4, 'lumayan, adminnya ramah, dan fast respon');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 1006206650, 'ADMIN', 'JAPRI', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1686658382detected_edges (8).png', 'Offline now'),
(2, 1208973312, 'Andrew', 'Suadnya', 'andrew@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1686658476IMG_20230604_225312_825.jpg', 'Offline now'),
(3, 542095966, 'aulya', 'haidir', 'aulyaadlaini@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '1686659596LennaRGB.png', 'Active now'),
(4, 1020280067, 'Samuel', 'Kaunang', 'samuel@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '1686660693DSC00369.jpg', 'Offline now'),
(5, 238163912, 'Andreas', 'Turangan', 'andreas@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '1686664020detected_edges (14).png', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `document`
--
ALTER TABLE `document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
