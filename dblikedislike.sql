-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Feb 2021 pada 16.43
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblikedislike`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `likes`
--

CREATE TABLE `likes` (
  `likeid` int(11) NOT NULL,
  `postID` varchar(11) NOT NULL,
  `ke_idpengguna` varchar(100) NOT NULL,
  `dari_idpengguna` varchar(100) NOT NULL,
  `tanggalsuka` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `postingan`
--

CREATE TABLE `postingan` (
  `idpostingan` int(11) NOT NULL,
  `postingan_idpengguna` varchar(17) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `captions` text NOT NULL,
  `tglposting` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `postingan`
--

INSERT INTO `postingan` (`idpostingan`, `postingan_idpengguna`, `gambar`, `captions`, `tglposting`) VALUES
(111, '222222', 'buildings-5528981_1920.jpg', 'Selamat Pagi ', '2021-01-21 07:29:54'),
(112, '333333', 'mountain-5795883_1920.jpg', 'Pegunungan yang indah', '2021-01-20 07:33:42'),
(113, '333333', 'mountains-5750804_1920.jpg', 'Mountains', '2021-01-21 08:59:38'),
(114, '111111', 'alley-89197_1920.jpg', 'Night', '2021-01-21 09:00:46'),
(115, '333333', '089 copy.jpg', 'a kingdom', '2021-01-21 09:02:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `idpengguna` varchar(10) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `pengguna` varchar(100) NOT NULL,
  `katasandi` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`idpengguna`, `fullname`, `pengguna`, `katasandi`, `tanggal`) VALUES
('111111', 'Jordan', 'pengguna1', '0192023a7bbd73250516f069df18b500', '2021-01-21 06:38:05'),
('222222', 'Fir', 'pengguna2', '0192023a7bbd73250516f069df18b500', '2021-01-21 06:38:05'),
('333333', 'Rudy', 'pengguna3', '0192023a7bbd73250516f069df18b500', '2021-01-21 06:53:24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`likeid`);

--
-- Indeks untuk tabel `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`idpostingan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idpengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `likes`
--
ALTER TABLE `likes`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `postingan`
--
ALTER TABLE `postingan`
  MODIFY `idpostingan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
