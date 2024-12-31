-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2024 pada 01.42
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `doctor_record`
--

CREATE TABLE `doctor_record` (
  `id` varchar(100) NOT NULL,
  `DoctorName` text NOT NULL,
  `Specialization` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `doctor_record`
--

INSERT INTO `doctor_record` (`id`, `DoctorName`, `Specialization`) VALUES
('01', 'Kaif', 'cadio'),
('02', 'Zahid', 'Cardio'),
('123', 'Tez', 'Jantung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `patient_record`
--

CREATE TABLE `patient_record` (
  `id` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Disease` varchar(100) NOT NULL,
  `Date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `patient_record`
--

INSERT INTO `patient_record` (`id`, `Name`, `Disease`, `Date`) VALUES
('01', 'Zahid', 'Fever', '28-07-2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_login`
--

CREATE TABLE `user_login` (
  `id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_login`
--

INSERT INTO `user_login` (`id`, `username`, `password`) VALUES
('1', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `doctor_record`
--
ALTER TABLE `doctor_record`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `patient_record`
--
ALTER TABLE `patient_record`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
