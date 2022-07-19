-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jul 2022 pada 08.07
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_bimbingan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `Password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `Password`) VALUES
(0, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ideskripsi`
--

CREATE TABLE `ideskripsi` (
  `IDIde` bigint(20) NOT NULL,
  `IDIdeMahasiswa` bigint(20) NOT NULL,
  `JudulIde` varchar(100) NOT NULL,
  `DeskripsiIde` text NOT NULL,
  `TanggalIde` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `IDJurusan` bigint(20) NOT NULL,
  `Jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`IDJurusan`, `Jurusan`) VALUES
(1, 'Teknik Informatika'),
(2, 'Teknik Sipil'),
(3, 'Kimia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kartubimbingan`
--

CREATE TABLE `kartubimbingan` (
  `IDKartu` int(11) NOT NULL,
  `IDKartuMahasiswa` bigint(30) NOT NULL,
  `IDDosenPembimbing` varchar(30) NOT NULL,
  `Catatan` text NOT NULL,
  `TanggalBimbingan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kartubimbingan`
--

INSERT INTO `kartubimbingan` (`IDKartu`, `IDKartuMahasiswa`, `IDDosenPembimbing`, `Catatan`, `TanggalBimbingan`) VALUES
(1, 12345, '100', 'coba kirim bab 1 dulu ya\r\ndan di file ini sudah ada revisian dari sya yg harus kamu perbaiki', '2022-07-19'),
(2, 12345, '100', 'bab 1 oke , lanjut bab 2 ya', '2022-07-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `IDKegiatan` int(11) NOT NULL,
  `IDUsers` bigint(20) NOT NULL,
  `Kegiatan` varchar(100) NOT NULL,
  `Tempat` varchar(100) NOT NULL,
  `JamKegiatan` time NOT NULL,
  `TanggalKegiatan` date NOT NULL,
  `Finish` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsentrasi`
--

CREATE TABLE `konsentrasi` (
  `IDKonsentrasi` int(11) NOT NULL,
  `IDJurusanKsn` int(11) NOT NULL,
  `IDDosen` bigint(20) NOT NULL,
  `Konsentrasi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsentrasi`
--

INSERT INTO `konsentrasi` (`IDKonsentrasi`, `IDJurusanKsn`, `IDDosen`, `Konsentrasi`) VALUES
(1, 1, 100, 'Kecerdasan  Buatan'),
(2, 1, 103, 'Robotic');

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `IDNotifikasi` int(11) NOT NULL,
  `Notifikasi` varchar(300) NOT NULL,
  `Catatan` text NOT NULL,
  `TanggalNotifikasi` varchar(40) NOT NULL,
  `IDPenerima` bigint(20) NOT NULL,
  `IDPengirim` bigint(20) NOT NULL,
  `StatusNotifikasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `notifikasi`
--

INSERT INTO `notifikasi` (`IDNotifikasi`, `Notifikasi`, `Catatan`, `TanggalNotifikasi`, `IDPenerima`, `IDPengirim`, `StatusNotifikasi`) VALUES
(1, 'Deteksi Objek', 'Anda Di Tetapkan Sebagai Dosen Pembimbing Yoga Anda sekarang bisa mengacc proposal maupun skripsi Yogadan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 1', '2020-07-29', 103, 100, 'Informasi'),
(2, 'Deteksi Objek', 'Anda Di Tetapkan Sebagai Dosen Pembimbing Yoga Anda sekarang bisa mengacc proposal maupun skripsi Yogadan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 2', '2020-07-29', 100, 100, 'Informasi'),
(3, 'Deteksi Objek', 'Tambahkan rancangan metode dan spek raspberry nya', '2020-07-29', 12345, 100, 'Diterima'),
(4, 'Proposal Deteksi Objek Telah Di ACC', 'Proposal Telah Di ACC Oleh : <br>Hartono Sebagai Pembimbing 2', '2020-07-29', 12345, 100, 'Proposal'),
(5, 'Proposal Deteksi Objek Telah Di ACC', 'Proposal Telah Di ACC Oleh : <br>Lisnawati Sebagai Pembimbing 1', '2021-01-21', 12345, 103, 'Proposal'),
(6, 'Skripsi Deteksi Objek Telah Di ACC', 'Skripsi Telah Di ACC Oleh : <br>Lisnawati Sebagai Pembimbing 1', '2021-01-21', 12345, 103, 'Skripsi'),
(7, 'Skripsi Deteksi Objek Telah Di ACC', 'Skripsi Telah Di ACC Oleh : <br>Hartono Sebagai Pembimbing 2', '2021-01-21', 12345, 100, 'Skripsi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembimbing`
--

CREATE TABLE `pembimbing` (
  `IDPembimbing` int(11) NOT NULL,
  `IDDosenPmb` bigint(20) NOT NULL,
  `IDSkripsiPmb` int(11) NOT NULL,
  `StatusProposal` tinyint(1) NOT NULL,
  `StatusSkripsi` tinyint(1) NOT NULL,
  `StatusPembimbing` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembimbing`
--

INSERT INTO `pembimbing` (`IDPembimbing`, `IDDosenPmb`, `IDSkripsiPmb`, `StatusProposal`, `StatusSkripsi`, `StatusPembimbing`) VALUES
(1, 103, 1596017627, 1, 1, 1),
(2, 100, 1596017627, 1, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `skripsi`
--

CREATE TABLE `skripsi` (
  `IDSkripsi` int(20) NOT NULL,
  `IDMahasiswaSkripsi` bigint(20) NOT NULL,
  `JudulSkripsi` varchar(200) NOT NULL,
  `QRCode` varchar(100) NOT NULL,
  `FileProposal` varchar(100) NOT NULL,
  `FileSkripsi` varchar(100) NOT NULL,
  `Uploader` bigint(20) DEFAULT NULL,
  `Deskripsi` text NOT NULL,
  `Tanggal` date NOT NULL,
  `Nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `skripsi`
--

INSERT INTO `skripsi` (`IDSkripsi`, `IDMahasiswaSkripsi`, `JudulSkripsi`, `QRCode`, `FileProposal`, `FileSkripsi`, `Uploader`, `Deskripsi`, `Tanggal`, `Nilai`) VALUES
(1596017627, 12345, 'Deteksi Objek', '12345.png', '1596017627.pdf', '12345.pdf', 100, 'Perancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.\r\nPerancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.\r\nPerancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.\r\nPerancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.\r\nPerancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.', '2020-07-29', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `ID` bigint(20) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `IDJurusanUser` bigint(20) NOT NULL,
  `IDKonsentrasiUser` bigint(20) NOT NULL,
  `NoHP` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Foto` varchar(30) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`ID`, `Nama`, `Password`, `IDJurusanUser`, `IDKonsentrasiUser`, `NoHP`, `Email`, `Foto`, `Status`) VALUES
(100, 'Hartono', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'hartono@gmail.com', '', 'Dosen'),
(101, 'Ridwan', '827ccb0eea8a706c4c34a16891f84e7b', 1, 2, '', 'ridwan101@yahoo.com', '', 'Dosen'),
(102, 'Permana', '827ccb0eea8a706c4c34a16891f84e7b', 1, 2, '', 'permana102@gmail.com', '', 'Dosen'),
(103, 'Lisnawati', '827ccb0eea8a706c4c34a16891f84e7b', 1, 2, '', 'lisna@outlook.com', '', 'Dosen'),
(12345, 'Yoga', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '089707865', 'nama@gmail.com', '12345.png', 'Skripsi'),
(12346, 'Udin', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'udin@gmail.com', '', 'Skripsi'),
(13451, 'Siti', '827ccb0eea8a706c4c34a16891f84e7b', 1, 2, '', 'siti@kampus.ac.id', '', 'Skripsi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ideskripsi`
--
ALTER TABLE `ideskripsi`
  ADD PRIMARY KEY (`IDIde`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`IDJurusan`);

--
-- Indexes for table `kartubimbingan`
--
ALTER TABLE `kartubimbingan`
  ADD PRIMARY KEY (`IDKartu`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`IDKegiatan`);

--
-- Indexes for table `konsentrasi`
--
ALTER TABLE `konsentrasi`
  ADD PRIMARY KEY (`IDKonsentrasi`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`IDNotifikasi`);

--
-- Indexes for table `pembimbing`
--
ALTER TABLE `pembimbing`
  ADD PRIMARY KEY (`IDPembimbing`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`IDSkripsi`),
  ADD KEY `nim_mhs_skripsi` (`IDMahasiswaSkripsi`),
  ADD KEY `uploader` (`Uploader`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_jurusan_mhs` (`IDJurusanUser`),
  ADD KEY `id_konsentrasi_mhs` (`IDKonsentrasiUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kartubimbingan`
--
ALTER TABLE `kartubimbingan`
  MODIFY `IDKartu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `IDKegiatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konsentrasi`
--
ALTER TABLE `konsentrasi`
  MODIFY `IDKonsentrasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `IDNotifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pembimbing`
--
ALTER TABLE `pembimbing`
  MODIFY `IDPembimbing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `skripsi`
--
ALTER TABLE `skripsi`
  ADD CONSTRAINT `uploader` FOREIGN KEY (`Uploader`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
