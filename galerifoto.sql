-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Mar 2024 pada 03.53
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galerifoto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `albumid` int(11) NOT NULL,
  `namaalbum` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggaldibuat` date NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`albumid`, `namaalbum`, `deskripsi`, `tanggaldibuat`, `userid`) VALUES
(19, 'Album', ' some of the greatest album of all time.', '2023-11-03', 11),
(21, 'Painting', 'legendary painting by the maestro', '2024-02-29', 11),
(22, 'Movie/Series', 'highly recommended movie or series', '2024-03-01', 11),
(23, 'blue', 'blue', '2024-03-01', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `foto`
--

CREATE TABLE `foto` (
  `fotoid` int(11) NOT NULL,
  `judulfoto` varchar(255) NOT NULL,
  `deskripsifoto` text NOT NULL,
  `tanggalunggah` date NOT NULL,
  `lokasifile` varchar(255) NOT NULL,
  `albumid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `foto`
--

INSERT INTO `foto` (`fotoid`, `judulfoto`, `deskripsifoto`, `tanggalunggah`, `lokasifile`, `albumid`, `userid`) VALUES
(43, 'SOS', 'SOS is the second studio album by American singer-songwriter SZA. It was released through Top Dawg Entertainment and RCA Records on December 9, 2022.', '2024-02-29', 'SOS.jpg', 19, 11),
(48, 'Wheatfield with Crows', 'Wheatfield with Crows is a July 1890 painting by Vincent van Gogh. It has been cited by several critics as one of his greatest works.', '2024-02-29', 'Vincent_van_Gogh_-_Wheatfield_Under_Thunderclouds_-_VGM_F778.jpg', 21, 11),
(49, 'The Starry Night', 'The Starry Night is an oil-on-canvas painting by the Dutch Post-Impressionist painter Vincent van Gogh. Painted in June 1889, it depicts the view from the east-facing window of his asylum room at Saint-Rémy-de-Provence', '2024-02-29', 'hero-image-1.jpg', 21, 12),
(50, 'Melodrama', 'Melodrama is the second studio album by New Zealand singer-songwriter Lorde. It was released on 16 June 2017 by Lava and Republic Records and distributed through Universal.  she wrote Melodrama to capture heartbreak and solitude after her first breakup.', '2024-02-29', '98 Aesthetic Album Covers Blue.jpg', 19, 12),
(51, 'Planet Her', 'Planet Her is the third studio album by American rapper and singer Doja Cat. It was released on June 25, 2021, by Kemosabe Records and RCA Records. The album, titled after a fictional planet created by Doja Cat, is an amalgamation of pop, hip hop, and R&B styles. Lyrically, the album touches on femininity, solitude, romance, and sexuality, among other topics.', '2024-03-01', 'Doja_Cat_-_Planet_Her.png', 19, 11),
(52, 'Moving', 'Moving (무빙) is a 2023 South Korean web series directed by Park In-je. It is a Disney+ original starring Ryu Seung-ryong, Han Hyo-joo, Zo In-sung, Cha Tae-hyun, Ryoo Seung-bum, Kim Sung-kyun, Lee Jung-ha, Go Youn-jung, and Kim Do-hoon. Based on the eponymous webtoon by Kang Full, the series is a supernatural drama that deals with three teenager high school students and their parents who discover their super powers. It premiered on August 9, 2023. After seven days of availability, it became the most watched Korean original series on Disney+ globally and Hulu in the United States, based on hours streamed.', '2024-03-01', 'moving.jpg', 22, 11),
(54, 'Call Me by Your Name', 'Call Me by Your Name (Italian: Chiamami col tuo nome) is a 2017 coming-of-age romantic drama film directed by Luca Guadagnino. Its screenplay, by James Ivory, who also co-produced, is based on the 2007 novel of the same title by André Aciman. Set in 1983 in northern Italy, Call Me by Your Name chronicles the romantic relationship between a 17-year-old, Elio Perlman (Timothée Chalamet), and Oliver (Armie Hammer), a 24-year-old graduate-student assistant to Elio father Samuel (Michael Stuhlbarg), an archaeology professor. The film also stars actresses Amira Casar, Esther Garrel, and Victoire Du Bois.', '2024-03-01', 'cm.jpg', 22, 12),
(55, 'Snowdrop', 'Snowdrop (설강화) is a South Korean television series starring Jung Hae-in and Jisoo. Snowdrop takes place in 1987, a pivotal year in South Korean history that included the June 1987 Democracy Movement, a mass protest movement with the purpose of forcing the dictatorship in South Korea to hold fair elections, and the resulting December 1987 democratic elections, which led to the end of the authoritarian Fifth Republic of Korea and the establishment of the democratic Sixth Republic of Korea.', '2024-03-01', 'snow.jpg', 22, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarfoto`
--

CREATE TABLE `komentarfoto` (
  `komentarid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `isikomentar` text NOT NULL,
  `tanggalkomentar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `likefoto`
--

CREATE TABLE `likefoto` (
  `likeid` int(11) NOT NULL,
  `fotoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tanggallike` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `alamat`) VALUES
(11, 'dendra1', '827ccb0eea8a706c4c34a16891f84e7b', 'den@gmail.com', 'dendra 1', 'semboro'),
(12, 'adam', 'ae057aebf678c6848ed7d0e0b7e44511', 'pnknnggnfbwlndr@gmail.com', 'adam hidayat', '-'),
(13, 'user', '827ccb0eea8a706c4c34a16891f84e7b', 'user@gmail.com', 'user 1', 'jawatimur');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD PRIMARY KEY (`fotoid`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD PRIMARY KEY (`komentarid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD PRIMARY KEY (`likeid`),
  ADD KEY `fotoid` (`fotoid`),
  ADD KEY `userid` (`userid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `foto`
--
ALTER TABLE `foto`
  MODIFY `fotoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  MODIFY `komentarid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  MODIFY `likeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `foto`
--
ALTER TABLE `foto`
  ADD CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`albumid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `foto_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `komentarfoto`
--
ALTER TABLE `komentarfoto`
  ADD CONSTRAINT `komentarfoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `komentarfoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `likefoto`
--
ALTER TABLE `likefoto`
  ADD CONSTRAINT `likefoto_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likefoto_ibfk_2` FOREIGN KEY (`fotoid`) REFERENCES `foto` (`fotoid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
