-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2019 pada 17.03
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemparkir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(10) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` varchar(12) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `agama` varchar(10) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `agama`, `telepon`, `image`) VALUES
(1, 'Muhammad Rojikin', 'Pasuruan', '10/10/2001', 'L', 'Sidowayah', 'Islam', '087776435778', 'default.jpg'),
(2, 'Fil hadi Syahri', 'Beji', '29/01/2000', 'L', 'Gajah Bendo', 'Islam', '089998324647', '.jpg'),
(9, 'Nur Salma', 'Lamongan', '25/05/2000', 'P', 'Lamongan', 'Islam', '087776435778', '5dab0eb5be563.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `id_petugas` int(10) NOT NULL,
  `nomor_plat` varchar(10) NOT NULL,
  `jenis` enum('Mobil','Motor') NOT NULL,
  `waktu_masuk` datetime NOT NULL,
  `waktu_keluar` datetime NOT NULL,
  `tarif` int(6) NOT NULL,
  `status` enum('Parkir','Keluar') NOT NULL DEFAULT 'Parkir'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id`, `id_petugas`, `nomor_plat`, `jenis`, `waktu_masuk`, `waktu_keluar`, `tarif`, `status`) VALUES
(9, 2, 2, 'N 5124 TKA', 'Motor', '2019-10-19 15:08:23', '2019-10-19 15:08:37', 2000, 'Keluar'),
(10, 2, 2, 'N 5124 TAN', 'Motor', '2019-10-19 15:09:06', '2019-10-19 15:09:34', 2000, 'Keluar'),
(11, 2, 2, 'P 9 U', 'Motor', '2019-10-19 21:23:38', '2019-10-19 21:25:41', 2000, ''),
(12, 2, 2, 'W 5531 AC', 'Motor', '2019-10-19 21:27:16', '2019-10-19 21:27:29', 2000, ''),
(13, 2, 2, 'n', 'Motor', '2019-10-19 21:28:14', '2019-10-19 21:28:45', 2000, ''),
(14, 2, 2, 'mmmmm', 'Motor', '2019-10-19 21:38:17', '0000-00-00 00:00:00', 0, 'Parkir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `email` varchar(20) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL DEFAULT 'user',
  `status` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `jk`, `email`, `telp`, `username`, `password`, `level`, `status`) VALUES
(1, 'Sheva Putri Wahidah', 'P', 'shevapw@gmail.com', '085706643004', 'shevaputriw', 'shevaputriw', 'admin', '2'),
(2, 'Syakilla', 'P', 'syakilla@gmail.com', '087665776423', 'syakilla', 'syakilla', 'user', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id` (`id`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
