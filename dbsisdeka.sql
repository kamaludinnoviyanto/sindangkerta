-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Des 2021 pada 02.46
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsisdeka`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pemohon`
--

CREATE TABLE `data_pemohon` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `jekel` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(13) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_pemohon`
--

INSERT INTO `data_pemohon` (`id`, `nik`, `nama`, `tanggal_lahir`, `tempat_lahir`, `jekel`, `agama`, `alamat`, `telepon`, `pekerjaan`) VALUES
(15, '320192820', 'Lukman ', '1990-04-03', 'Bandung', 'Laki-Laki', 'Islam', 'Rt.13 Rw.05', '', 'Mahasiswa'),
(16, '123456789', 'Kamal', '1995-04-05', 'Cirebon', 'Laki-Laki', '', '', '', ''),
(17, '11', 'mamn', '0000-00-00', 'cirebond', 'Laki-Laki', 'Islam', 'hhh', '089', 'mhs'),
(18, '000000000', 'Lobby Viyan', '1996-04-02', 'Palimanan', 'Laki-Laki', '', '', '', ''),
(19, '22', 'Udin', '2010-02-09', 'Plumbon', 'Laki-Laki', '', '', '', ''),
(20, '320120183995', 'Billie Joe Arsmtrong', '1991-05-21', 'Bali', 'Laki-Laki', '', '', '', ''),
(21, '32018289103', 'Putra Jakarta', '1988-06-02', 'RT.123 RW.928 Desa Sindangkert', 'Laki-Laki', 'Islam', 'Plumbon', '', 'KPU'),
(22, '1234', 'Loanse', '2007-05-31', 'Lubuk', 'Perempuan', 'Kristen', 'Rt.1 Rw.05 ', '', 'Guru'),
(23, '62728920013', 'Kinanto Vitaru', '1995-06-21', 'Padang Sidampuan', 'Laki-Laki', 'Islam', 'Rt.12 Rw.09', '', ''),
(24, '223', 'Jus', '2021-06-24', 'Kinanta', 'Laki-Laki', 'Islam', 'Bali', '', ''),
(25, '737929201', 'Anabel', '1988-06-22', 'Basaksehir', 'Perempuan', 'Islam', 'Rt.37 Rw.93', '', 'Guru'),
(27, '12356992', 'Isa Ias', '2001-04-11', 'Cirebon', 'Laki-Laki', 'Islam', 'RT.13', '', 'Mahasiswa'),
(28, '9287129388', 'Bu Darsih', '1990-08-01', 'Indramayu', 'Perempuan', 'Islam', 'Rt.12', '', 'Dosen'),
(29, '3212185107970002', 'Juliantini', '1997-07-11', 'Indramayu', 'Perempuan', 'Islam', 'Lohbener Rt 19 Rw 05', '', 'Pedagang'),
(30, '3209355708000003', 'Devina Agustin', '2000-12-08', 'Cirebon', 'Perempuan', 'Islam', 'Tengah tani ', '', 'Mahasiswa'),
(31, '321219210973001', 'Tarim', '2000-09-11', 'Indramayu', 'Laki-Laki', 'Islam', 'Desa Sindangkerta Kec. Lohbener RT 02 RW 01', '', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_request_skd`
--

CREATE TABLE `data_request_skd` (
  `id_request_skd` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tanggal_request` timestamp NOT NULL DEFAULT current_timestamp(),
  `scan_ktp` text NOT NULL,
  `scan_kk` text NOT NULL,
  `keperluan` varchar(20) NOT NULL DEFAULT '-',
  `keterangan` varchar(50) NOT NULL DEFAULT 'Data sedang diperiksa oleh Staf',
  `request` varchar(20) NOT NULL DEFAULT 'DOMISILI',
  `status` int(11) NOT NULL DEFAULT 0,
  `acc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_request_skd`
--

INSERT INTO `data_request_skd` (`id_request_skd`, `nik`, `tanggal_request`, `scan_ktp`, `scan_kk`, `keperluan`, `keterangan`, `request`, `status`, `acc`) VALUES
(21, '1234', '2021-06-01 15:05:46', '1234_.jpg', '1234_.jpg', '-', 'Surat sedang dalam proses cetak', 'DOMISILI', 2, '0000-00-00'),
(22, '223', '2021-06-01 17:53:29', '223_.jpg', '223_.jpg', '-', 'Data sedang diperiksa oleh Staf', 'DOMISILI', 1, '0000-00-00'),
(23, '3209355708000003', '2021-06-14 10:23:22', '3209355708000003_.jpg', '3209355708000003_.jpg', '-', 'Surat sedang dalam proses cetak', 'DOMISILI', 2, '2021-06-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_request_skp`
--

CREATE TABLE `data_request_skp` (
  `id_request_skp` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tanggal_request` timestamp NOT NULL DEFAULT current_timestamp(),
  `scan_ktp` text NOT NULL,
  `scan_kk` text NOT NULL,
  `instansi` varchar(30) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  `keterangan` varchar(50) NOT NULL DEFAULT 'Data sedang diperiksa oleh Staf',
  `lama` int(11) NOT NULL,
  `sampai_tanggal` date NOT NULL,
  `request` varchar(20) NOT NULL DEFAULT 'SKCK',
  `status` int(11) NOT NULL DEFAULT 0,
  `acc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_request_skp`
--

INSERT INTO `data_request_skp` (`id_request_skp`, `nik`, `tanggal_request`, `scan_ktp`, `scan_kk`, `instansi`, `jabatan`, `keperluan`, `keterangan`, `lama`, `sampai_tanggal`, `request`, `status`, `acc`) VALUES
(7, '1111111111111111', '2021-01-11 10:50:31', '1111111111111111 - Fachri Shofiyyuddin Ahmad_.jpg', '1111111111111111 - Fachri Shofiyyuddin Ahmad_.jpg', 'PT. Djarum', 'Staf IT', 'Sakit', 'Surat dicetak, bisa diambil!', 2, '2021-01-12', 'PAMIT', 3, '2021-01-11'),
(8, '4444444444444444', '2021-01-11 16:03:13', '4444444444444444 - Muhammad Farih Ahbab_.jpg', '4444444444444444 - Muhammad Farih Ahbab_.jpg', 'PT. Djarum', '', 'Ijin Sakit', 'Surat dicetak, bisa diambil!', 5, '2021-01-15', 'PAMIT', 3, '2021-01-14'),
(9, '1111111111111111', '2021-01-13 21:11:53', '1111111111111111 - Fachri Shofiyyuddin Ahmad_.jpg', '1111111111111111 - Fachri Shofiyyuddin Ahmad_.jpg', 'PT. Djarum', '', 'Sakit', 'Surat dicetak, bisa diambil!', 2, '2021-01-15', 'PAMIT', 3, '2021-01-14'),
(10, '11', '2021-12-07 15:06:23', '11_.jpg', '11_.jpg', 'Politeknik Indramayu', '', 'izin', 'Data sedang diperiksa oleh Staf', 4, '0000-00-00', 'PAMIT', 1, '0000-00-00'),
(11, '123', '2021-12-26 15:51:53', '123_.jpg', '123_.jpg', 'polindes', '', 'mama', 'Data sedang diperiksa oleh Staf', 12, '2000-04-12', 'PAMIT', 0, '0000-00-00'),
(12, '11', '2021-12-26 16:58:14', '11_.jpg', '11_.jpg', 's', '', 'aa', 'Data sedang diperiksa oleh Staf', 1, '2000-02-01', 'PAMIT', 1, '0000-00-00'),
(13, '11', '2021-12-26 17:05:19', '11_.jpg', '11_.jpg', '09090', '', 'skck', 'Data sedang diperiksa oleh Staf', 0, '0000-00-00', 'PAMIT', 0, '0000-00-00'),
(14, '11', '2021-12-26 17:06:02', '11_.jpg', '11_.jpg', '000', '', 'skck', 'Data sedang diperiksa oleh Staf', 0, '0000-00-00', 'PAMIT', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_request_sktm`
--

CREATE TABLE `data_request_sktm` (
  `id_request_sktm` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tanggal_request` timestamp NOT NULL DEFAULT current_timestamp(),
  `scan_ktp` text NOT NULL,
  `scan_kk` text NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  `request` varchar(20) NOT NULL DEFAULT 'TIDAK MAMPU',
  `keterangan` varchar(50) NOT NULL DEFAULT 'Data sedang diperiksa oleh Staf',
  `status` int(11) NOT NULL DEFAULT 0,
  `acc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_request_sktm`
--

INSERT INTO `data_request_sktm` (`id_request_sktm`, `nik`, `tanggal_request`, `scan_ktp`, `scan_kk`, `keperluan`, `request`, `keterangan`, `status`, `acc`) VALUES
(54, '11', '2021-05-14 01:56:07', '11_.jpg', '11_.jpg', 'beasiswa', 'TIDAK MAMPU', 'Surat dicetak, bisa diambil!', 3, '2021-05-04'),
(55, '11', '2021-05-21 03:04:29', '11_.jpg', '11_.jpg', 'beasiswa', 'TIDAK MAMPU', 'Surat dicetak, bisa diambil!', 3, '2021-05-03'),
(56, '11', '2021-05-30 15:29:16', '11_.jpg', '11_.jpg', 'beasiswa', 'TIDAK MAMPU', 'Surat dicetak, bisa diambil!', 3, '0000-00-00'),
(57, '11', '2021-05-30 16:20:34', '11_.jpg', '11_.jpg', 'beasiswa', 'TIDAK MAMPU', 'Surat sedang dalam proses cetak', 2, '2021-06-01'),
(58, '11', '2021-05-31 02:14:26', '11_.jpg', '11_.jpg', 'sekolah', 'TIDAK MAMPU', 'Surat sedang dalam proses cetak', 2, '2021-06-01'),
(59, '11', '2021-05-31 02:16:52', '11_.jpg', '11_.jpg', 'dd', 'TIDAK MAMPU', 'Surat sedang dalam proses cetak', 2, '2021-06-01'),
(60, '11', '2021-06-01 04:10:39', '11_.jpg', '11_.jpg', 'beasiswa', 'TIDAK MAMPU', 'Surat sedang dalam proses cetak', 2, '2021-06-01'),
(62, '11', '2021-06-01 13:33:35', '11_.jpg', '11_.jpg', 'beasiswa', 'TIDAK MAMPU', 'Surat sedang dalam proses cetak', 2, '0000-00-00'),
(63, '32018289103', '2021-06-01 14:50:52', '32018289103_.jpg', '32018289103_.jpg', 'Bensin Eceran', 'TIDAK MAMPU', 'Surat sedang dalam proses cetak', 2, '2021-06-01'),
(64, '1234', '2021-06-01 15:07:10', '1234 - Loanse_.jpg', '1234 - Loanse_.jpg', 'Print', 'TIDAK MAMPU', 'Surat sedang dalam proses cetak', 2, '2021-06-01'),
(65, '11', '2021-06-01 15:35:28', '11_.jpg', '11_.jpg', 'beasiswa', 'TIDAK MAMPU', 'Surat sedang dalam proses cetak', 2, '0000-00-00'),
(66, '737929201', '2021-06-01 18:21:08', '737929201_.jpg', '737929201_.jpg', 'Jual Baso', 'TIDAK MAMPU', 'Surat dicetak, bisa diambil!', 3, '2021-06-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_request_sku`
--

CREATE TABLE `data_request_sku` (
  `id_request_sku` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tanggal_request` timestamp NOT NULL DEFAULT current_timestamp(),
  `scan_ktp` text NOT NULL,
  `scan_kk` text NOT NULL,
  `usaha` varchar(30) NOT NULL,
  `keperluan` varchar(30) NOT NULL,
  `keterangan` varchar(50) NOT NULL DEFAULT 'Data sedang diperiksa oleh Staf',
  `request` varchar(20) NOT NULL DEFAULT 'USAHA',
  `status` int(11) NOT NULL DEFAULT 0,
  `acc` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_request_sku`
--

INSERT INTO `data_request_sku` (`id_request_sku`, `nik`, `tanggal_request`, `scan_ktp`, `scan_kk`, `usaha`, `keperluan`, `keterangan`, `request`, `status`, `acc`) VALUES
(9, '123456789', '2021-04-30 02:10:00', '', '123456789_.jpg', 'Galo', '', '', 'USAHA', 3, '0000-00-00'),
(10, '000000000', '2021-05-28 03:34:28', '', '000000000_.jpg', 'Galo', '', '', 'USAHA', 3, '0000-00-00'),
(11, '11', '2021-06-01 04:04:31', '', '11_.jpg', 'Galo', '', 'Surat sedang dalam proses cetak', 'USAHA', 2, '2021-06-01'),
(12, '320120183995', '2021-06-01 14:37:52', '', '320120183995_.jpg', 'Galo', '', 'Surat sedang dalam proses cetak', 'USAHA', 2, '2021-06-02'),
(13, '32018289103', '2021-06-01 17:13:13', '', '32018289103_.jpg', 'Galo', '', 'Surat sedang dalam proses cetak', 'USAHA', 2, '2021-06-02'),
(14, '62728920013', '2021-06-01 17:44:53', '', '62728920013_.jpg', 'Galo', '', 'Surat sedang dalam proses cetak', 'USAHA', 2, '2021-06-02'),
(15, '738290201', '2021-06-02 13:53:57', '', '738290201_.jpg', 'Galo', '', 'Data sedang diperiksa oleh Staf', 'USAHA', 1, '0000-00-00'),
(16, '12356992', '2021-06-07 09:07:19', '12356992_.jpg', '12356992_.jpg', 'Galon Aqua', 'Izin RT/RW', 'Surat sedang dalam proses cetak', 'USAHA', 2, '2021-06-07'),
(17, '321219210973001', '2021-06-14 12:09:04', '321219210973001_.jpg', '321219210973001_.jpg', 'Toko matrial', 'Member produk cat tembok', 'Surat sedang dalam proses cetak', 'USAHA', 2, '2021-06-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_user`
--

CREATE TABLE `data_user` (
  `nik` varchar(16) NOT NULL,
  `password` varchar(20) NOT NULL,
  `hak_akses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_user`
--

INSERT INTO `data_user` (`nik`, `password`, `hak_akses`) VALUES
('000000000', '000000000', 'Pemohon'),
('11', '123', 'Pemohon'),
('11111', '1234', 'Pemohon'),
('1234', 'loanser5', 'Pemohon'),
('123456789', '1', 'Staf'),
('12356992', 'isaias', 'Pemohon'),
('22', '1234', 'Pemohon'),
('223', '1213', 'Pemohon'),
('320120183995', '123456789', 'Pemohon'),
('32018289103', 'jakartakeras', 'Pemohon'),
('320192820', '2', 'Kuwu'),
('3209355708000003', '123', 'Pemohon'),
('3212185107970002', '1234', 'Pemohon'),
('321219210973001', '2', 'Pemohon'),
('62728920013', 'lodiarounda', 'Pemohon'),
('737929201', 'usgajaka', 'Pemohon'),
('738290201', 'yutub12345', 'Pemohon'),
('9287129388', 'budarsih', 'Pemohon');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_pemohon`
--
ALTER TABLE `data_pemohon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nik` (`nik`);

--
-- Indeks untuk tabel `data_request_skd`
--
ALTER TABLE `data_request_skd`
  ADD PRIMARY KEY (`id_request_skd`),
  ADD KEY `id_pemohon` (`nik`);

--
-- Indeks untuk tabel `data_request_skp`
--
ALTER TABLE `data_request_skp`
  ADD PRIMARY KEY (`id_request_skp`),
  ADD KEY `id_pemohon` (`nik`);

--
-- Indeks untuk tabel `data_request_sktm`
--
ALTER TABLE `data_request_sktm`
  ADD PRIMARY KEY (`id_request_sktm`),
  ADD KEY `id_pemohon` (`nik`);

--
-- Indeks untuk tabel `data_request_sku`
--
ALTER TABLE `data_request_sku`
  ADD PRIMARY KEY (`id_request_sku`),
  ADD KEY `id_pemohon` (`nik`);

--
-- Indeks untuk tabel `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_pemohon`
--
ALTER TABLE `data_pemohon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `data_request_skd`
--
ALTER TABLE `data_request_skd`
  MODIFY `id_request_skd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `data_request_skp`
--
ALTER TABLE `data_request_skp`
  MODIFY `id_request_skp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `data_request_sktm`
--
ALTER TABLE `data_request_sktm`
  MODIFY `id_request_sktm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT untuk tabel `data_request_sku`
--
ALTER TABLE `data_request_sku`
  MODIFY `id_request_sku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_pemohon`
--
ALTER TABLE `data_pemohon`
  ADD CONSTRAINT `data_pemohon_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_user` (`nik`);

--
-- Ketidakleluasaan untuk tabel `data_request_skd`
--
ALTER TABLE `data_request_skd`
  ADD CONSTRAINT `data_request_skd_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_user` (`nik`);

--
-- Ketidakleluasaan untuk tabel `data_request_sktm`
--
ALTER TABLE `data_request_sktm`
  ADD CONSTRAINT `data_request_sktm_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_user` (`nik`);

--
-- Ketidakleluasaan untuk tabel `data_request_sku`
--
ALTER TABLE `data_request_sku`
  ADD CONSTRAINT `data_request_sku_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `data_user` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
