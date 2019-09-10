-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2019 at 07:50 PM
-- Server version: 5.5.55
-- PHP Version: 5.6.39-1~dotdeb+7.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `c0bpbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(6) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT '1',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `keterangan`, `gbr_album`, `dibaca`, `tanggal`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(1, 'Audiensi DPD PDI-P Provinsi Jambi ke KPU Provinsi Jambi', '<p>Audiensi DPD PDI-P Provinsi Jambi ke KPU Provinsi Jambi</p>', '', 505, '2015-06-02', 'Y', 1, '2015-06-02', '23:08:37', 'Selasa', ''),
(2, 'Kunjungan Kerja Komisi I DPRD Bungo ke KPU Provinsi Jambi  ', '<p>Kunjungan Kerja Komisi I DPRD Bungo ke KPU Provinsi Jambi &nbsp;</p>', '', 544, '2015-06-02', 'Y', 1, '2015-06-02', '23:08:55', 'Selasa', ''),
(3, 'KPU Provinsi Jambi Gelar Doa Bersama Launching Pilkada Serentak', '<p>KPU Provinsi Jambi Gelar Doa Bersama Launching Pilkada Serentak</p>', '', 827, '2015-06-06', 'Y', 1, '2015-06-10', '13:48:46', 'Rabu', ''),
(4, 'KPU Provinsi Jambi Launching Pilkada Serentak Tahun 2015', '<p>KPU Provinsi Jambi Launching Pilkada Serentak Tahun 2015</p>', '', 1183, '2015-06-08', 'Y', 1, '2015-06-10', '13:49:45', 'Rabu', ''),
(5, 'Maskot Pemilihan Serentak Provinsi Jambi Tahun 2015', '<p>Maskot yang digunakan KPU Provinsi Jambi dan KPU Kab/Kota dalam Provinsi Jambi dalam pelaksanaan Pemilihan Serentak Provinsi Jambi Tahun 2015.</p>', '18mang KORO.png', 1501, '2015-06-08', 'Y', 1, '2015-06-16', '14:55:05', 'Selasa', 'admin'),
(6, 'Kunjungan Kapolda ke KPU Provinsi Jambi', '<p>Kunjungan Kapolda ke KPU Provinsi Jambi</p>', '', 1262, '2015-06-26', 'Y', 1, '2015-06-30', '11:53:23', 'Selasa', ''),
(7, 'Pendaftaran Pasangan Calon Gubernur Zumi Zola dan Wakil Gubernur Fachrori Umar', '', '', 507, '2015-07-27', 'N', 1, '2015-07-27', '13:09:06', 'Senin', ''),
(13, 'Rapat Pleno Terbuka Pengundian Nomor Urut Pasangan Calon', '<p style="text-align: justify;" align="center">Rapat Pleno Terbuka Pengundian Nomor Urut Pasangan Calon</p>', '57peserta-yang-hadir-dalam-Pengundian-Nomor-Urut-Pasangan-Calon.jpg', 1171, '2015-08-25', 'Y', 1, '2015-09-14', '11:51:12', 'Senin', ''),
(14, 'Deklarasi Kampanye Damai peserta Pemilihan Gubernur dan Wakil Gubernur Jambi Tahun 2015 ', '<p style="text-align: justify;" align="center">Deklarasi Kampanye Damai peserta Pemilihan Gubernur dan Wakil Gubernur Jambi Pemilihan Serentak Tahun 2015&nbsp;</p>', '42Deklarasi-Kampanye-Damai-peserta-Pemilihan-Gubernur-dan-Wakil-Gubernur-Jambi.jpg', 1082, '2015-08-27', 'Y', 1, '2015-09-14', '12:42:19', 'Senin', ''),
(15, 'Rekor Persiapan Debat Publik', '<p>Rapat&nbsp;Rekor Persiapan Debat Publik</p>', '691.jpg', 1147, '0015-09-22', 'Y', 1, '2015-10-07', '11:39:06', 'Rabu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE IF NOT EXISTS `aplikasi` (
  `id_aplikasi` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_aplikasi`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id_aplikasi`, `nama`, `keterangan`, `aktif`, `css`, `tanggal`, `tanggal_modif`, `icon`, `gambar`, `username`) VALUES
(1, 'Sistem Informasi Penduduk Miskin', 'Sistem Informasi Penduduk Miskin Kab. Tanjung Jabung Timur', 'Y', 'phone', '2017-08-06', '2017-08-06', 'email.png', 'email.jpg', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id_artikel` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `id_subkategori` int(2) NOT NULL,
  `id_subdomain` int(2) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kutipan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `headline_utama` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `pilihan` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_foto` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kredit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `isi_artikel` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_artikel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `id_kategori`, `id_subkategori`, `id_subdomain`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `utama`, `pilihan`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`, `rating`, `isi_artikel`) VALUES
(9, 0, 0, 0, 'asiap', '', '', '', '', '', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', '', 'Kamis', '2019-07-08', '2019-07-08', '09:11:54', '93whatsapp-image-20190708-at-09.09.42.jpeg', 1, '', 0, ''),
(10, 0, 0, 0, 'asiap', '', '', '', '', '', 'Y', 'Y', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-07-17', '2019-07-17', '10:05:46', '74jumat.jpeg', 1, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `aspirasi`
--

CREATE TABLE IF NOT EXISTS `aspirasi` (
  `id_aspirasi` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `namaadu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lembaga` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_aspirasi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  PRIMARY KEY (`id_aspirasi`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `aspirasi`
--

INSERT INTO `aspirasi` (`id_aspirasi`, `nama`, `email`, `alamat`, `namaadu`, `lembaga`, `judul_aspirasi`, `pesan`, `ip`, `tanggal`, `jam`) VALUES
(6, 'Angga Pratama', 'jangkrik@gmail.com', 'Pemayung RT. 12', 'Pedagang', 'Mohon Perbaiki Akses Jalan', '', 'Kepada Anggota Dewan yang terhormat mohon anggarkan untuk perbaikan jalan di tempat kami, sangat susah untuk akses keluar, karena jalan berlumpur, sebagai pedangan kami sangat dirugikan. terima kasih', '202.67.42.8', '2013-12-18', '15:26:42'),
(5, 'Joni Trimulya', 'joni.trumanbe@gmail.com', 'Kec. Muara Bulian', 'Buruh', 'Jalan Rusak', '', 'Mohon Pak Dewan Sidak jalan-jalan yang rusak akibat kegiatan truk batu bara sangat-sangat mengganggu aktivitas warga. Terima Kasih', '202.67.42.8', '2013-12-18', '15:19:29'),
(7, 'Novan Suseno', 'novan.suseno@yahoo.com', 'Jembatan Mas, Rt.02', 'Pelajar', 'Jangan Asal Janji', '', 'Mohon kepada anggota dewan Kab. Batanghari yang terhormat untuk memperhatikan sekolah2 tempat kami, karena kurang diperhatikan, jangan asal janji, setelah ''jadi'' malah lupa. terima kasih', '202.67.42.8', '2013-12-18', '15:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `id_subkategori` int(2) NOT NULL,
  `id_subdomain` int(2) NOT NULL,
  `id_daerah` int(2) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kutipan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `headline_utama` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `pilihan` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_foto` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `kredit` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penulis` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `isi_berita` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=109 ;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `id_subkategori`, `id_subdomain`, `id_daerah`, `username`, `judul`, `sub_judul`, `kutipan`, `youtube`, `judul_seo`, `headline`, `headline_utama`, `aktif`, `utama`, `pilihan`, `text_foto`, `kredit`, `penulis`, `editor`, `sumber`, `hari`, `tanggal`, `tanggal_modif`, `jam`, `gambar`, `dibaca`, `tag`, `rating`, `isi_berita`) VALUES
(93, 1, 0, 0, 5, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', '', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Selasa', '2019-07-18', '2019-07-18', '11:35:09', '98whatsapp-image-20190718-at-11.29.13.jpeg', 15, '', 0, '<p>Prakiraan Cuaca Kabupaten Tanjung Jabung Timur</p>\r\n<p>Beraku Mulai : 19 Juli 2019 /07:00 WIB</p>\r\n<p>Hingga         : 20 Juli 2019 /07:00 WIB</p>'),
(94, 1, 0, 0, 5, 'asiap', 'Prakiraan Cuaca Kabupaten Tanjung Jabung Timur', '', '', '', 'prakiraan-cuaca-kabupaten-tanjung-jabung-timur', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Rabu', '2019-07-19', '2019-07-19', '09:17:28', '4sabtu.jpeg', 8, '', 0, '<p>Prakiraan Cuaca Kabupaten Tanjung Jabung Timur</p>\r\n<p>Berlaku Mulai : Sabtu 20 Juli 2019 /07:00 WIB</p>\r\n<p>Hingga          : Minggu 21 Juli 2019/07:00 WIB</p>'),
(89, 1, 0, 0, 5, 'asiap', 'Upacara Peringatan Hut Bhayangkara ke - 73 Tahun 2019 ', 'Upacara Peringatan Hut Bhayangkara ke - 73 Tahun 2019', '', '', 'upacara-peringatan-hut-bhayangkara-ke--73-tahun-2019-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Sabtu', '2019-07-10', '2019-07-10', '11:16:29', '10whatsapp-image-20190710-at-10.58.14.jpeg', 8, '', 0, '<p>Muara Sabak, Rabu 10 Juli 2019</p>\r\n<p>Anggota Team Reaksi Cepat (TRC) BPBD Kabupaten Tanjung Jabung Timur mengikuti upacara peringatan Hut Bhayangkara ke - 73 Tahun 2019 di lapangan Kantor Kecamatan Dendang.</p>'),
(90, 1, 0, 0, 5, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', '', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Minggu', '2019-07-11', '2019-07-11', '14:47:55', '17whatsapp-image-20190711-at-14.27.50.jpeg', 20, '', 0, '<p>Prakiraan Cuaca Kab. Tanjung Jabung Timur</p>\r\n<p>Berlaku Mulai  : Jumat/12 Juli 2019 / 07:00 WIB</p>\r\n<p>Hingga           : Sabtu/13 Juli 2019 / 07:00WIB</p>'),
(91, 1, 0, 0, 5, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', '', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Jumat', '2019-07-15', '2019-07-15', '14:17:50', '12whatsapp-image-20190715-at-10.35.24.jpeg', 12, '', 0, '<p>Prakiraan Cuaca Kabbupaten Tanjung Jabung Timur </p>\r\n<p>Berlaku Mulai  : Selasa 16/ Juli / 2019 / 07:00 WIB</p>\r\n<p>Hingga           : Rabu 17 / Juli / 2019 / 07 :00 WIB</p>\r\n<p> </p>\r\n<p> </p>'),
(96, 0, 0, 0, 0, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', '', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Minggu', '2019-07-22', '2019-07-22', '14:17:16', '92whatsapp-image-20190722-at-09.20.44.jpeg', 7, '', 0, ''),
(97, 3, 0, 0, 5, 'asiap', 'Rapat Teknis Penanggulangan Kebakaran Hutan dan Lahan', 'Rapat Teknis Penanggulangan Kebakaran Hutan dan Lahan  ', '', '', 'rapat-teknis-penanggulangan-kebakaran-hutan-dan-lahan', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Minggu', '2019-07-22', '2019-07-22', '14:39:54', '11whatsapp-image-20190722-at-11.10.42.jpeg', 19, '', 0, '<p>Muara Sabak, Jumat 19 Juli 2019</p>\r\n<p>Badan Penanggulangan Bencana Daerah Kab. Tanjung Jabung Timur melaksanakan rapat teknis penanggulangan bencana kebakaran hutan dan lahan diruang rapat kepala pelaksana BPBD Kab. Tanjung Jabung Timur, rapat tersebut dihadiri oleh beberapa instansi terkait dan dibuka langsung oleh kepala pelaksana BPBD Kab. Tanjung Jabung Timur</p>'),
(98, 1, 0, 0, 5, 'asiap', 'Prakiraan Cuaca Kabupaten Tanjung Jabung Timur', 'Prakiraan Cuaca Kabupaten Tanjung Jabung Timur', '', '', 'prakiraan-cuaca-kabupaten-tanjung-jabung-timur', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-07-23', '2019-07-23', '14:09:37', '51whatsapp-image-20190723-at-13.59.46.jpeg', 7, '', 0, '<p>Prakiraan Cuaca Kabupaten Tanjung Jabung Timur</p>\r\n<p>Berlaku Mulai : Selasa 23 Juli 2019 / 07:WIB</p>\r\n<p>Hingga          : Rabu 24 Juli 2019   / 07:WIB</p>'),
(99, 1, 0, 0, 5, 'asiap', 'Kebakaran Permukiman Kecamatan Nipah Panjang', 'Kebakaran Permukiman Kecamatan Nipah Panjang', '', '', 'kebakaran-permukiman-kecamatan-nipah-panjang', 'Y', '', 'Y', 'Y', '', '', '', '', '', '', 'Rabu', '2019-07-24', '2019-07-24', '09:01:43', '87kebakaran-nipah-panjang.jpg', 11, '', 0, '<p>Muara Sabak, Rabu 24 Juli 2019</p>\r\n<p>Kebakaran terjadi di<span class="example1"> Jln. Nelayan RT 19. RW 04. Kel. Nipah Panjang 1 Kecamatan Nipah Panjang Kabupaten Tanjung Jabung Timur kebakaran terjadi pada Selasa 23 Juli 2019 kebakaran tersebut menghanguskan 16 unit rumah warga terbakar dan sedikitnya 4 rumah warga dirobohkan untuk menghindari meluasnya api tersebut.</span></p>\r\n<p><span class="example1">Untuk saat ini pihak Kecamatan dan Kelurahan telah menyiapkan Posko Kesehatan dan Posko Pengungsian sementara.</span></p>'),
(100, 1, 0, 0, 5, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', 'Prakiraan Cuaca Kab. Tanjung Jabung Timur', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Jumat', '2019-08-07', '2019-08-07', '15:43:40', '96whatsapp-image-20190807-at-15.36.53.jpeg', 6, '', 0, '<p>Prakiraan Cuaca Kab. Tanjung Jabung Timur</p>'),
(101, 1, 0, 0, 0, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', 'Prakiraan Cuaca Kab. Tanjung Jabung Timur', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-08-09', '2019-08-09', '10:30:55', '7whatsapp-image-20190809-at-10.29.24.jpeg', 8, '', 0, ''),
(102, 0, 0, 0, 0, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', 'Prakiraan Cuaca Kab. Tanjung Jabung Timur', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-08-09', '2019-08-09', '14:04:50', '34whatsapp-image-20190809-at-13.28.59.jpeg', 12, '', 0, ''),
(103, 1, 0, 0, 5, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', 'Prakiraan Cuaca Kab. Tanjung Jabung Timur', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Jumat', '2019-08-12', '2019-08-12', '08:54:42', '95whatsapp-image-20190811-at-22.02.05.jpeg', 12, '', 0, ''),
(104, 1, 0, 0, 5, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', 'Prakiraan Cuaca Kab. Tanjung Jabung Timur', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Jumat', '2019-08-12', '2019-08-12', '11:00:46', '51whatsapp-image-20190812-at-10.44.53.jpeg', 11, '', 0, ''),
(105, 0, 0, 0, 0, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', '', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-08-15', '2019-08-15', '08:46:38', '900001.jpg', 11, '', 0, ''),
(106, 0, 0, 0, 0, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', 'Prakiraan Cuaca Kab. Tanjung Jabung Timur', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Senin', '2019-08-15', '2019-08-15', '11:43:00', '43whatsapp-image-20190815-at-10.43.21.jpeg', 10, '', 0, ''),
(108, 0, 0, 0, 0, 'asiap', 'Prakiraan Cuaca KAB. TANJUNG JABUNG TIMUR ', '', '', '', 'prakiraan-cuaca-kab-tanjung-jabung-timur-', 'Y', '', 'Y', '', '', '', '', '', '', '', 'Selasa', '2019-08-21', '2019-08-21', '14:32:45', '44whatsapp-image-20190821-at-14.25.39.jpeg', 10, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `daerah`
--

CREATE TABLE IF NOT EXISTS `daerah` (
  `id_daerah` int(3) NOT NULL AUTO_INCREMENT,
  `nama_daerah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_daerah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_daerah`),
  FULLTEXT KEY `seo_subdomain` (`seo_daerah`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `daerah`
--

INSERT INTO `daerah` (`id_daerah`, `nama_daerah`, `seo_daerah`, `username`, `tgl_upload`) VALUES
(1, 'Kota Jambi', 'kotajambi', 'ngadmin', '2013-09-05'),
(2, 'Muarojambi', 'muarojambi', 'ngadmin', '2013-09-05'),
(3, 'Batanghari', 'batanghari', 'ngadmin', '2013-09-05'),
(4, 'Tanjab Barat', 'tanjabbar', 'ngadmin', '2013-09-05'),
(5, 'Tanjab Timur', 'tanjabtim', 'ngadmin', '2013-09-05'),
(6, 'Sarolangun', 'sarolangun', 'ngadmin', '2013-09-05'),
(7, 'Merangin', 'merangin', 'ngadmin', '2013-09-05'),
(8, 'Bungo', 'bungo', 'ngadmin', '2013-09-05'),
(9, 'Tebo', 'tebo', 'ngadmin', '2013-09-05'),
(10, 'Sungaipenuh', 'sungaipenuh', 'ngadmin', '2013-09-05'),
(11, 'Kerinci', 'kerinci', 'ngadmin', '2013-09-05');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen`
--

CREATE TABLE IF NOT EXISTS `dokumen` (
  `id_dokumen` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year(4) NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode_link` int(2) NOT NULL,
  `id_katdokumen` int(2) NOT NULL,
  `nama_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dl` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_dokumen`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `judul`, `tahun`, `keterangan`, `metode_link`, `id_katdokumen`, `nama_file`, `link_file`, `tgl_upload`, `tanggal_modif`, `username`, `sumber`, `dibaca`, `aktif`, `dl`) VALUES
(1, 'Netter Curiga Tora Sudiro Sudah Lama Pakai Narkoba', 2017, '', 1, 1, '3screenshotwww.usnews.com20170729112702.png', '', '2017-08-03', '2017-08-04', 'ngadmin', '', '208', 'Y', ''),
(2, 'Chronology of Beating of UNSRI Students by Strangers', 2017, '', 1, 1, '86screenshotwww.usnews.com20170729112832.png', '', '2017-08-04', '2017-08-04', 'ngadmin', '', '216', 'Y', ''),
(3, 'Daftar Website Lingkup Organisasi Perangkat Daerah Tahun 2018', 2018, '', 2, 5, '', 'http://www.diskominfo.tanjabtimkab.go.id/file/2018/05/08/4daftar-website-tjt.pdf', '2018-05-08', '2018-05-30', 'ngadmin', '', '472', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id_download` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode_link` int(2) NOT NULL,
  `nama_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `jam` time NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `keterangan`, `metode_link`, `nama_file`, `link_file`, `aktif`, `username`, `tgl_posting`, `tanggal_modif`, `jam`) VALUES
(9, 'Daftar Wesite Lingkup Organisasi Perangkat Daerah Tahun 2018', '', 1, '52daftarwebsitetjt.pdf', '', 'Y', 'ngadmin', '2018-05-08', '2018-05-30', '00:00:00'),
(11, 'Penyelenggaraan Urusan Pemerintah Daerah Bidang Komunikasi dan Informatika', '', 1, '445_6204123462148030526.pdf', '', 'Y', 'ngadmin', '2019-01-21', '2019-01-21', '00:00:00'),
(15, 'Daftar Lokasi BTS di Kabupaten Tanjung Jabung Timur Tahun 2016', '', 1, '24data-bangunan-tower-tahun-2016.pdf', '', 'Y', 'ngadmin', '2019-04-04', '2019-04-04', '00:00:00'),
(4, 'Daftar Area Blank Spot Kab. Tanjabtim', '', 1, '65data-blank-sport-11-april-2018.pdf', '', 'Y', 'ngadmin', '2018-01-11', '2018-05-04', '00:00:00'),
(5, 'Data pelatihan', '', 1, '511.png', '', 'Y', 'ngadmin', '2018-02-01', '2018-02-01', '00:00:00'),
(6, 'Data Desa Tiap Kecamatan', '', 2, '', '', 'Y', 'ngadmin', '2018-03-12', '2018-03-19', '00:00:00'),
(8, 'Blank Spot 11 April 2018', '', 1, '34blank-spot-24-titik_web.pdf', '', 'Y', 'ngadmin', '2018-05-08', '2018-12-21', '00:00:00'),
(10, 'PTT programer', '', 1, '7pengumuman-nomor-810009.pdf', '', 'Y', 'ngadmin', '2019-01-07', '2019-01-07', '00:00:00'),
(12, 'Hasil Lulus Administrasi dan Berhak Mengikuti SKB', '', 1, '14hasil-lulus-administrasi-dan-berhak-mengikuti-seleksi-kompetensi-bidang-skb.pdf', '', 'Y', 'ngadmin', '2019-01-24', '2019-01-24', '00:00:00'),
(13, 'Pengumuman Peserta Lulus Seleksi Kompetensi Bidang', '', 1, '43pengumuman-peserta-lulus-skb.pdf', '', 'Y', 'ngadmin', '2019-01-30', '2019-01-30', '00:00:00'),
(14, 'Pengumuman Peserta Lulus Programmer Diskominfo Kab. TJT Tahun 2019', '', 1, '31pengumuman-peserta-lulus-programmer.pdf', '', 'Y', 'ngadmin', '2019-02-04', '2019-02-04', '00:00:00'),
(16, 'Daftar Lokasi BTS di Kabupaten Tanjung Jabung Timur Tahun 2017', '', 1, '53data-bangunan-tower-tahun-2017.pdf', '', 'Y', 'ngadmin', '2019-04-04', '2019-04-04', '00:00:00'),
(17, 'Daftar Lokasi BTS di Kabupaten Tanjung Jabung Timur Tahun 2018', '', 1, '93data-bangunan-tower-tahun-2018.pdf', '', 'Y', 'ngadmin', '2019-04-04', '2019-04-04', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fotoberita`
--

CREATE TABLE IF NOT EXISTS `fotoberita` (
  `id_fotoberita` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_fotoberita` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_fotoberita` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(6) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_fotoberita`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fotoberita`
--

INSERT INTO `fotoberita` (`id_fotoberita`, `judul_fotoberita`, `keterangan`, `gambar_fotoberita`, `dibaca`, `tanggal`, `aktif`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
('24062019236', 'Kebakaran Hutan dan Lahan', '<p>Pemadaman Kebakaran Hutan dan Lahan</p>', '', 22, '2019-06-24', 'Y', '2019-06-24', '15:55:36', 'Senin', 'asiap'),
('24072019244', 'Kebakaran Permukiman Kecamatan Nipah Panjang 23 Juli 2019', '', '', 11, '2019-07-24', 'Y', '2019-07-24', '09:05:05', 'Rabu', 'asiap');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id_gallery` int(5) NOT NULL AUTO_INCREMENT,
  `id_fotoberita` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=719 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_fotoberita`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`, `tanggal`, `tanggal_modif`, `aktif`) VALUES
(715, '24062019236', 'asiap', '', '', 'Pemadaman Kebakaran Hutan dan Lahan', '34-20170730_134548.jpg', '2019-06-24', '2019-06-24', 'Y'),
(716, '24062019236', 'asiap', '', '', 'Pemadaman Kebakaran Hutan dan Lahan', '42-GERAGAI 2.jpg', '2019-06-24', '2019-06-24', 'Y'),
(717, '24072019244', 'asiap', '', '', '', '94-kebakaran nipah panjang.jpg', '2019-07-24', '2019-07-24', 'Y'),
(718, '24072019244', 'asiap', '', '', '', '61-WhatsApp Image 2019-07-23 at 16.10.33.jpeg', '2019-07-24', '2019-07-24', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE IF NOT EXISTS `golongan` (
  `id_pangkat` int(2) NOT NULL AUTO_INCREMENT,
  `pangkat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gol_ruang` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pangkat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id_pangkat`, `pangkat`, `gol_ruang`) VALUES
(1, 'JURU MUDA ', 'I/a'),
(2, 'JURU MUDA TK.I', 'I/b'),
(3, 'JURU', 'I/c'),
(4, 'JURU TK.I', 'I/d'),
(5, 'PENGATUR MUDA', 'II/a'),
(6, 'PENGATUR MUDA TK.I', 'II/b'),
(7, 'PENGATUR', 'II/c'),
(8, 'PENGATUR TK.I', 'II/d'),
(9, 'PENATA MUDA', 'III/a'),
(10, 'PENATA MUDA TK.I', 'III/b'),
(11, 'PENATA', 'III/c'),
(12, 'PENATA TK.I ', 'III/d'),
(13, 'PEMBINA', 'IV/a'),
(14, 'PEMBINA TK.I', 'IV/b'),
(15, 'PEMBINA UTAMA MUDA', 'IV/c'),
(16, 'PEMBINA UTAMA MADYA', 'IV/d'),
(17, 'PEMBINA UTAMA', 'IV/e');

-- --------------------------------------------------------

--
-- Table structure for table `halamaniklan`
--

CREATE TABLE IF NOT EXISTS `halamaniklan` (
  `id_halamaniklan` int(2) NOT NULL AUTO_INCREMENT,
  `nama_halamaniklan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_halamaniklan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `halamaniklan`
--

INSERT INTO `halamaniklan` (`id_halamaniklan`, `nama_halamaniklan`) VALUES
(1, 'Halaman Home');

-- --------------------------------------------------------

--
-- Table structure for table `halamanprofil`
--

CREATE TABLE IF NOT EXISTS `halamanprofil` (
  `id_halamanprofil` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_halaman` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_foto` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_halamanprofil`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `halamanprofil`
--

INSERT INTO `halamanprofil` (`id_halamanprofil`, `judul`, `judul_seo`, `isi_halaman`, `tanggal`, `tanggal_modif`, `gambar`, `text_foto`, `username`, `dibaca`, `jam`, `hari`, `aktif`) VALUES
(1, 'Sambutan Kepala Dinas Kominfo Kab. Tanjabtim', 'sambutan-kepala-dinas-kominfo-kab-tanjabtim', '<p><em>Assalamu&rsquo;alaikum wa rahmatullahi wabarokatuh</em></p>\r\n<p>Segala Puji Syukur kita panjatkan kehadirat Allah SWT, yang dengan rahmat-Nya telah mengantarkan Dinas Komunikasi dan Informatika&nbsp;Kab. Tanjung Jabung Timur semakin berkembang dalam menghadapi tantangan era globalisasi, terutama menghadapi penyelenggaraan pemerintahan yang transparan, efisien dan efektif melalui pemanfaatan Teknologi Informasi dan Komunikasi (TIK).</p>\r\n<p>Melalui visinya terwujudnya&nbsp; pelayanan komunikasi dan informatika yang berbasis teknologi dan berkualitas menuju merakyat, Dinas KOMINFO Kab. Tanjung Jabung Timur berusaha untuk memenuhi akan kebutuhan infrastruktur TIK. Dalam pelaksanaannya Dinas KOMINFO&nbsp;Kab. Tanjung Jabung Timur&nbsp;telah&nbsp; membangun infrastruktur jaringan komunikasi di seluruh OPD, 11&nbsp;Kecamatan. Selain memenuhi kebutuhan infrastruktur jaringan Dinas KOMINFO juga membangun sistem aplikasi guna mendukung penyebaran informasi kepada masyarakat. Melalui media informasi dan komunikasi ini diharapkan mampu menjembatani dan menampung aspirasi masyarakat &nbsp;Kab. Tanjung Jabung Timur&nbsp; menuju masyarakat informasi.</p>\r\n<p>Akhirnya, semoga yang telah kami bangun ini dapat memberikan manfaat bagi masyarakat&nbsp;Kab. Tanjung Jabung Timur&nbsp;dan kami mengharap kritik dan saran yang membangun demi peningkatan pelayanan pada masyarakat.</p>\r\n<p><em>Wassalamu&rsquo;alaikum wa rahmatullahi wabarokatuh</em></p>\r\n<p>Kepala Dinas Komunikasi dan Informatika&nbsp;Kab. Tanjung Jabung Timur&nbsp;</p>\r\n<p>ttd</p>\r\n<p><strong>Herman Toni, SE, ME</strong></p>', '2015-06-02', '0000-00-00', '', '', 'ngadmin', 2960, '23:46:44', 'Selasa', 'N'),
(2, 'Visi & Misi Badan Penanggulangan Bencana Daerah Kab. Tanjung Jabung Timur', 'visi--misi-badan-penanggulangan-bencana-daerah-kab-tanjung-jabung-timur', '<p><strong>VISI DAN MISI</strong></p>\r\n<p><strong>"BADAN PENANGGULANGAN BENCANA DAERAH (BPBD)"</strong></p>\r\n<p> </p>\r\n<p><strong>VISI :</strong></p>\r\n<p>"MEWUJUDKAN</p>\r\n<p>KETANGGUHAN DAN KESIAPSIAGAAN</p>\r\n<p>TANJUNG JABUNG TIMUR</p>\r\n<p>DALAM MENGHADAPI BENCANA"</p>\r\n<p> </p>\r\n<p><strong>MISI :</strong></p>\r\n<ol>\r\n<li>MELINDUNGI MASYARAKAT DARI ANCAMAN BENCANA MELALUI PENGURANGAN RESIKO BENCANA DI SEGALA ASPEK.</li>\r\n<li>MEMBANGUN SISTEM DAN PENGUATAN KAPASITAS PENANGGULANGAN BENCANA YANG HANDAL.</li>\r\n<li>MENYELENGGARAKAN PENANGGULANGAN SECARA TERENCANA TERPADU DAN MENYELURUH.</li>\r\n</ol>\r\n<p> </p>', '2019-06-24', '2017-05-09', '', '', 'ngadmin', 2452, '11:20:08', 'Rabu', 'Y'),
(10, 'Tugas Pokok & Wewenang', 'tugas-pokok--wewenang', '<p><strong>Tugas </strong><strong>d</strong><strong>an Fungsi Badan Penanggulangan Bencana Daerah</strong></p>\r\n<p><strong>Badan</strong></p>\r\n<p>Badan Penanggulangan Bencana Daerah mempunyai tugas membantu Bupati dalam pengkoordinasian, fasilitasi perumusan kebijakan dan pelaksanaan penanggulangan bencana yang menjadi kewenangan pemerintahan Daerah.</p>\r\n<p>Badan Penanggulangan Bencana Daerah dalam melaksanakan tugas menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>penyelenggaraan penanggulangan bencana yang mencakup pencegahan bencana, penanganan darurat, rehabilitasi, serta rekonstruksi secara adil dan setara;</li>\r\n<li>pelaksanaan pelaporan penyelenggaraan penanggulangan bencana yang mencakup pencegahan bencana, penanganan darurat, rehabilitasi, serta rekonstruksi secara adil dan setara;</li>\r\n<li>pelaksanaan administrasi Badan Penanggulangan Bencana Daerah; dan</li>\r\n<li>pelaksanaan fungsi lain yang terkait dengan penanggulangan bencana yang diberikan oleh Bupati.</li>\r\n</ol>\r\n<p><strong>Unsur Pengarah</strong></p>\r\n<ul>\r\n<li>Unsur Pengarah Badan Penanggulangan Bencana Daerah mempunyai tugas menyusun rencana pelaksanaan, memantau dan mengevaluasi dalam penyelenggaraan penanggulangan bencana daerah.</li>\r\n<li>Unsur Pengarah Badan Penanggulangan Bencana Daerah dalam melaksanakan tugasnya sebagaimana dimaksud pada ayat (1) menyelenggarakan fungsi :</li>\r\n</ul>\r\n<ol>\r\n<li>penyusunan konsep pelaksanaan kebijakan penanggulangan bencana daerah; dan</li>\r\n<li>pemantauan dan pengevaluasi dalam penyelenggaraan penanggulangan bencana daerah.</li>\r\n</ol>\r\n<p> </p>\r\n<p><strong>Unsur Pelaksana</strong></p>\r\n<ul>\r\n<li>Unsur Pelaksana Penanggulangan Bencana mempunyai tugas membantu Kepala Badan Penanggulangan Bencana Daerah dalam melaksanakan penanggulangan yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi.</li>\r\n<li>Unsur Pelaksana Penanggulangan Bencana dalam melaksanakan tugas sebagaimana dimaksud pada ayat (1) menyelenggarakan fungsi :</li>\r\n</ul>\r\n<ol>\r\n<li>pelaksanaan koordinasi dengan satuan kerja perangkat daerah lainnya di daerah, instansi vertikal yang ada di daerah, lembaga usaha, dan/atau pihak lain yang diperlukan pada tahap pra bencana dan              pasca bencana;</li>\r\n<li>pelaksanaan pengerahan sumber daya manusia, peralatan, logistik dari satuan kerja perangkat daerah lainnya, instansi vertikal yang ada di daerah serta langkah-langkah lain yang diperlukan dalam rangka penanganan darurat bencana; dan</li>\r\n<li>pelaksanaan tugas dinas lain yang diberikan oleh pimpinan baik di dalam maupun di luar organisasi sesuai tugas dan fungsinya.</li>\r\n</ol>\r\n<p><strong>Sekretariat</strong></p>\r\n<p>Sekretariat mempunyai tugas memberikan pelayanan teknis dan administratif kepada seluruh satuan organisasi di lingkungan Badan Penanggulangan Bencana Daerah.</p>\r\n<p>Sekretariat dalam melaksanakan tugas menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pengelolaan urusan kepegawaian;</li>\r\n<li>pengelolaan urusan keuangan;</li>\r\n<li>pelaksanaan urusan tata usaha; dan</li>\r\n<li>pengelolaan urusan umum.</li>\r\n</ol>\r\n<p>Sub Bagian Umum mempunyai tugas melakukan penyiapan bahan pelaksanaan pengelolaan urusan umum dan urusan ketatausahaan yang meliputi:</p>\r\n<ol>\r\n<li>penyiapan bahan urusan surat menyurat, pengagendaan dan pengiriman;</li>\r\n<li>penyiapan bahan pelaksanaan pengelolaan sistem informasi;</li>\r\n<li>penyiapan bahan pengelolaan arsip dan dokumentasi;</li>\r\n<li>penyiapan bahan pelaksanaan urusan tata usaha pimpinan dan protokol;</li>\r\n<li>penyiapan bahan pengelolaan urusan perlengkapan;</li>\r\n<li>penyiapan bahan pengelolaan urusan rumah tangga dan pengamanan;</li>\r\n<li>penyiapan bahan pelaksanaan urusan kendaraan dan perjalanan dinas; dan</li>\r\n<li>penyiapan bahan pelaksanaan hubungan masyarakat.</li>\r\n</ol>\r\n<p>Sub Bagian Kepegawaian mempunyai tugas melakukan penyiapan bahan pelaksanaan pengelolaan urusan kepegawaian yang meliputi:</p>\r\n<ol>\r\n<li>penyiapan bahan penyusunan formasi, pendataan dan pengembangan pegawai, serta penyusunan laporan kegiatan kepegawaian di lingkungan badan;</li>\r\n<li>penyiapan bahan penetapan mutasi dan administrasi jabatan fungsional di lingkungan badan; dan</li>\r\n<li>penyiapan bahan penetapan pemberhentian dan pensiun pegawai di  lingkungan badan.</li>\r\n</ol>\r\n<p>Sub Bagian Keuangan mempunyai tugas melakukan penyiapan bahan pelaksanaan pengelolaan urusan keuangan yang meliputi:</p>\r\n<ol>\r\n<li>penyiapan bahan pelaksanaan anggaran, pembuatan daftar gaji, dan pembayaran gaji pegawai;</li>\r\n<li>penyiapan bahan pelaksanaan urusan perbendaharaan dan tata usaha keuangan; dan</li>\r\n<li>penyiapan bahan pelaksanaan urusan pembukuan, perhitungan, dan penyusunan laporan keuangan.</li>\r\n</ol>\r\n<p><strong>Bidang Bina Program</strong></p>\r\n<p>Bidang Bina Program mempunyai tugas melaksanakan penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan penyusunan rencana program serta evaluasi dan pelaporan pelaksanaan program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi.</p>\r\n<p>Bidang Bina Program dalam melaksanakan tugas sebagaimana dimaksud menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pelaksanaan koordinasi dan penyusunan rencana program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi;</li>\r\n<li>pelaksanaan pengumpulan, pengolahan, penyajian data dan informasi yang berkaitan dengan pelaksanaan program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi; dan</li>\r\n<li>pelaksanaan penyusunan laporan penyelenggaraan program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi.</li>\r\n</ol>\r\n<p>Sub Bidang Perencanaan dan Penyusunan Program mempunyai tugas melakukan penyiapan bahan perumusan dan pelaksanaan koordinasi dan penyusunan rencana program serta pengumpulan, pengolahan, penyajian data dan informasi  yang berkaitan dengan pelaksanaan program program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegras.</p>\r\n<p>Sub Bidang Evaluasi dan Pelaporan mempunyai tugas melakukan  pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan penyusunan laporan penyelenggaraan program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca  bencana secara terintegrasi.</p>\r\n<p><strong>Bidang Pencegahan dan Kesiapsiagaan</strong></p>\r\n<p>Bidang Pencegahan dan Kesiapsiagaan mempunyai tugas melaksanakan penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan pencegahan bencana pada situasi tidak terjadi bencana dan kesiapsiagaan dalam situasi terdapat ancaman bencana.    </p>\r\n<p>Bidang Pencegahan dan Kesiapsiagaan dalam melaksanakan tugas  menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pelaksanaan analisis dan pengembangan informasi potensi bencana daerah;</li>\r\n<li>pelaksanaan penyusunan peta rawan bencana;</li>\r\n<li>pelaksanaan bimbingan teknis dan kerjasama pendidikan, pelatihan dan penyuluhan pembinaan kegiatan pencegahan dan mitigasi bencana;</li>\r\n<li>pelaksanaan fasilitasi pencegahan dan mitigasi bencana dalam penyusunan rencana tata ruang, pembangunan infrastruktur dan tata bangunan;</li>\r\n<li>pelaksanaan pengembangan, pengujian dan penerapan sistem peringatan dini terjadinya bencana; dan</li>\r\n<li>pelaksanaan bimbingan teknis pengorganisasian, penyuluhan dan simulasi tentang mekanisme tanggap darurat.</li>\r\n</ol>\r\n<p>Sub Bidang Pencegahan mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan analisis dan pengembangan informasi potensi bencana daerah, penyusunan peta rawan bencana, bimbingan teknis dan kerjasama pendidikan, pelatihan dan penyuluhan pembinaan kegiatan pencegahan dan mitigasi bencana serta fasilitasi pencegahan dan mitigasi bencana dalam penyusunan rencana tata ruang, pembangunan infrastruktur dan tata bangunan.</p>\r\n<p>Sub Bidang Kesiapsiagaan mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan  pengembangan, pengujian dan penerapan sistem peringatan dini terjadinya bencana serta bimbingan teknis pengorganisasian, penyuluhan dan simulasi tentang mekanisme tanggap darurat.</p>\r\n<p><strong>Bidang Kedaruratan dan Logistik.</strong></p>\r\n<p>Bidang Kedaruratan dan Logistik mempunyai tugas melaksanakan penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan penanganan darurat pada saat terjadinya bencana serta penyediaan kebutuhan dasar dan logistik setelah terjadinya bencana.</p>\r\n<p>Bidang Kedaruratan dan Logistik dalam melaksanakan tugas sebagaimana menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pelaksanaan persiapan penetapan status keadaan darurat bencana;</li>\r\n<li>pelaksanaan koordinasi, kerjasama dan pengerahan sumber daya dalam penyelamatan dan evakuasi masyarakat korban bencana;</li>\r\n<li>pelaksanaan, inventarisasi, identifikasi dan perlindungan terhadap kelompok rentan korban bencana;</li>\r\n<li>pelaksanaan inventarisasi dan identifikasi cakupan lokasi dan jumlah korban bencana;</li>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<li>pelaksanaan pengkajian secara cepat dan tepat terhadap lokasi, kerusakan dan kerugian terjadinya bencana;</li>\r\n<li>pelaksanaan inventarisasi, identifikasi dan analisis gangguan pelayanan umum dan pemerintahan;</li>\r\n<li>pelaksanaan kerjasama penyediaan pangan, sandang, pelayanan kesehatan, psikososial serta penyediaan tempat penampungan dan tempat hunian; dan</li>\r\n<li>pelaksanaan kerjasama pemenuhan kebutuhan air bersih dan sanitasi bagi masyarakat korban bencana.</li>\r\n</ol>\r\n<p>Sub Bidang Tanggap Darurat mempunyai tugas melakukan pengumpulan data, penyiapan bahan perumusan dan pelaksanaan persiapan penetapan status keadaan darurat bencana, koordinasi, kerjasama dan pengerahan sumber daya dalam penyelamatan dan evakuasi masyarakat korban bencana, inventarisasi, identifikasi dan perlindungan terhadap kelompok rentan korban bencana, inventarisasi dan identifikasi cakupan lokasi dan jumlah korban bencana, pengkajian secara cepat dan tepat terhadap lokasi, kerusakan dan kerugian terjadinya bencana serta inventarisasi, identifikasi dan analisis gangguan pelayanan umum dan pemerintahan.</p>\r\n<p>Sub Bidang Logistik mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan kerjasama penyediaan pangan, sandang, pelayanan kesehatan, psikososial          serta penyediaan tempat penampungan dan tempat hunian serta kerjasama pemenuhan kebutuhan air bersih dan sanitasi bagi masyarakat korban bencana.</p>\r\n<p><strong>Bidang Rehabilitasi dan Rekonstruksi</strong></p>\r\n<p>Bidang Rehabilitasi dan Rekonstruksi mempunyai tugas penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan rehabilitasi dan rekonstruksi kerusakan akibat bencana.</p>\r\n<p>Bidang Rehabilitasi dan Rekonstruksi dalam melaksanakan tugas menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pelaksanaan kegiatan pemulihan sosial psikologis, sosial ekonomis, sosial budaya, pelayanan kesehatan, fungsi pemerintahan, pelayanan publik, keamanan dan ketertiban;</li>\r\n<li>pelaksanaan kegiatan peningkatan fungsi pelayanan publik dan kondisi sosial, ekonomi dan budaya;</li>\r\n<li>pelaksanaan kegiatan pembangkitan kembali kehidupan sosial budaya masyarakat;</li>\r\n<li>pelaksanaan kegiatan perbaikan lingkungan, sarana dan prasarana umum;</li>\r\n<li>pelaksanaan kegiatan pembangunan kembali prasarana dan sarana sosial masyarakat dan keagamaan; dan</li>\r\n<li>pelaksanaan kerjasama dan pengembangan partisipasi lembaga dan organisasi kemasyarakatan, dan dunia usaha dalam perbaikan dan pembangunan kembali lingkungan, sarana dan prasarana yang rusak akibat bencana.</li>\r\n</ol>\r\n<p>Sub Bidang Rehabilitasi mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan kegiatan pemulihan sosial psikologis, sosial ekonomis, sosial budaya, pelayanan  kesehatan, fungsi pemerintahan, pelayanan publik, keamanan dan ketertiban, kegiatan peningkatan fungsi pelayanan publik dan kondisi sosial, ekonomi dan budaya serta kegiatan pembangkitan kembali kehidupan sosial budaya masyarakat.</p>\r\n<p>Sub Bidang Rekonstruksi mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan  pelaksanaan kegiatan perbaikan lingkungan, sarana dan prasarana umum, kegiatan pembangunan kembali prasarana dan sarana sosial masyarakat dan keagamaan serta kerjasama dan pengembangan partisipasi lembaga dan organisasi kemasyarakatan, dan dunia usaha dalam perbaikan dan pembangunan kembali lingkungan, sarana dan prasarana yang rusak akibat bencana.</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>', '2017-11-21', '2017-11-21', '', '', 'ngadmin', 1, '13:20:17', 'Senin', 'Y'),
(4, 'Sejarah', 'sejarah', '<p>Badan Penanggulangan Bencana Daerah merupakan SKPD yang baru terbentuk pada akhir tahun 2013 dengan Peraturan Daerah Kabupaten Tanjung Jabung Timur No 14 Tahun 2013, tentang Pembentukan Organisasi dan tata Kerja Lambaga lain. Kelembagaan BPBD tersebut dibentuk berdasarkan Undang-Undang Nomor 24 Tahun 2007 tentang Penanggulangan Bencana.</p>\r\n<p> </p>', '2013-12-18', '2019-06-28', '34kantor-bpbd-baru.jpg', '', 'ngadmin', 1, '21:02:24', 'Jumat', 'Y'),
(17, 'Tugas dan Fungsi Sekretariat Badan Penanggulangan Bencana Daerah Kabupaten Tanjung Jabung Timur', 'tugas-dan-fungsi-sekretariat-badan-penanggulangan-bencana-daerah-kabupaten-tanjung-jabung-timur', '<p><strong>Sekretariat</strong></p>\r\n<p>Sekretariat mempunyai tugas memberikan pelayanan teknis dan administratif kepada seluruh satuan organisasi di lingkungan Badan Penanggulangan Bencana Daerah.</p>\r\n<p>Sekretariat dalam melaksanakan tugas sebagaimana menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pengelolaan urusan kepegawaian;</li>\r\n<li>pengelolaan urusan keuangan;</li>\r\n<li>pelaksanaan urusan tata usaha; dan</li>\r\n<li>pengelolaan urusan umum.</li>\r\n</ol>\r\n<p> Sub Bagian Umum mempunyai tugas melakukan penyiapan bahan pelaksanaan pengelolaan urusan umum dan urusan ketatausahaan yang meliputi:</p>\r\n<ol>\r\n<li>penyiapan bahan urusan surat menyurat, pengagendaan dan pengiriman;</li>\r\n<li>penyiapan bahan pelaksanaan pengelolaan sistem informasi;</li>\r\n<li>penyiapan bahan pengelolaan arsip dan dokumentasi;</li>\r\n<li>penyiapan bahan pelaksanaan urusan tata usaha pimpinan dan protokol;</li>\r\n<li>penyiapan bahan pengelolaan urusan perlengkapan;</li>\r\n<li>penyiapan bahan pengelolaan urusan rumah tangga dan pengamanan;</li>\r\n<li>penyiapan bahan pelaksanaan urusan kendaraan dan perjalanan dinas; dan</li>\r\n<li>penyiapan bahan pelaksanaan hubungan masyarakat.</li>\r\n</ol>\r\n<p>Sub Bagian Kepegawaian mempunyai tugas melakukan penyiapan bahan pelaksanaan pengelolaan urusan kepegawaian yang meliputi:</p>\r\n<ol>\r\n<li>penyiapan bahan penyusunan formasi, pendataan dan pengembangan pegawai, serta penyusunan laporan kegiatan kepegawaian di lingkungan badan;</li>\r\n<li>penyiapan bahan penetapan mutasi dan administrasi jabatan fungsional di lingkungan badan; dan</li>\r\n<li>penyiapan bahan penetapan pemberhentian dan pensiun pegawai di  lingkungan badan.</li>\r\n</ol>\r\n<p>Sub Bagian Keuangan mempunyai tugas melakukan penyiapan bahan pelaksanaan pengelolaan urusan keuangan yang meliputi:</p>\r\n<ol>\r\n<li>penyiapan bahan pelaksanaan anggaran, pembuatan daftar gaji, dan pembayaran gaji pegawai;</li>\r\n<li>penyiapan bahan pelaksanaan urusan perbendaharaan dan tata usaha keuangan; dan</li>\r\n<li>penyiapan bahan pelaksanaan urusan pembukuan, perhitungan, dan penyusunan laporan keuangan.</li>\r\n</ol>', '2019-04-09', '2019-04-09', '', '', 'ngadmin', 1, '08:36:05', 'Jumat', 'Y'),
(6, 'Tugas dan Fungsi Bidang Rehabilitasi dan Rekonstruksi Badan Penanggulangan Bencana Daerah Kabupaten ', 'tugas-dan-fungsi-bidang-rehabilitasi-dan-rekonstruksi-badan-penanggulangan-bencana-daerah-kabupaten-', '<p><strong>Bidang Rehabilitasi dan Rekonstruksi</strong></p>\r\n<p>Bidang Rehabilitasi dan Rekonstruksi mempunyai tugas penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan rehabilitasi dan rekonstruksi kerusakan akibat bencana.</p>\r\n<p>Bidang Rehabilitasi dan Rekonstruksi dalam melaksanakan tugas sebagaiman dalam menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pelaksanaan kegiatan pemulihan sosial psikologis, sosial ekonomis, sosial budaya, pelayanan kesehatan, fungsi pemerintahan, pelayanan                  publik, keamanan dan ketertiban;</li>\r\n<li>pelaksanaan kegiatan peningkatan fungsi pelayanan publik dan kondisi sosial, ekonomi dan budaya;</li>\r\n<li>pelaksanaan kegiatan pembangkitan kembali kehidupan sosial budaya masyarakat;</li>\r\n<li>pelaksanaan kegiatan perbaikan lingkungan, sarana dan prasarana umum;</li>\r\n<li>pelaksanaan kegiatan pembangunan kembali prasarana dan sarana sosial masyarakat dan keagamaan; dan</li>\r\n<li>pelaksanaan kerjasama dan pengembangan partisipasi lembaga dan organisasi kemasyarakatan, dan dunia usaha dalam perbaikan dan pembangunan kembali lingkungan, sarana dan prasarana yang rusak akibat bencana.</li>\r\n</ol>\r\n<p>Sub Bidang Rehabilitasi mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan kegiatan pemulihan sosial psikologis, sosial ekonomis, sosial budaya, pelayanan              kesehatan, fungsi pemerintahan, pelayanan publik, keamanan dan ketertiban, kegiatan peningkatan fungsi pelayanan publik dan kondisi sosial, ekonomi                 dan budaya serta kegiatan pembangkitan kembali kehidupan sosial budaya masyarakat.</p>\r\n<p>Sub Bidang Rekonstruksi mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan  pelaksanaan kegiatan perbaikan lingkungan, sarana dan prasarana umum, kegiatan pembangunan kembali prasarana dan sarana sosial masyarakat dan keagamaan serta           kerjasama dan pengembangan partisipasi lembaga dan organisasi kemasyarakatan, dan dunia usaha dalam perbaikan dan pembangunan kembali lingkungan,  sarana dan prasarana yang rusak akibat bencana.</p>\r\n<p> </p>\r\n<p> </p>', '2017-08-07', '2017-08-07', '', '', 'ngadmin', 1, '14:07:09', 'Rabu', 'Y'),
(8, 'Tugas dan Fungsi Bidang Kedaruratan dan Logistik Badan Penanggulangan Bencana Daerah Kab. Tanjung Ja', 'tugas-dan-fungsi-bidang-kedaruratan-dan-logistik-badan-penanggulangan-bencana-daerah-kab-tanjung-jab', '<p><strong>Bidang Kedaruratan dan Logistik</strong></p>\r\n<p>Bidang Kedaruratan dan Logistik mempunyai tugas melaksanakan penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan penanganan darurat pada saat terjadinya bencana serta penyediaan kebutuhan dasar dan logistik setelah terjadinya bencana.</p>\r\n<p>Bidang Kedaruratan dan Logistik dalam melaksanakan tugas menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pelaksanaan persiapan penetapan status keadaan darurat bencana;</li>\r\n<li>pelaksanaan koordinasi, kerjasama dan pengerahan sumber daya dalam penyelamatan dan evakuasi masyarakat korban bencana;</li>\r\n<li>pelaksanaan, inventarisasi, identifikasi dan perlindungan terhadap kelompok rentan korban bencana;</li>\r\n<li>pelaksanaan inventarisasi dan identifikasi cakupan lokasi dan jumlah korban bencana;</li>\r\n</ol>\r\n<p> </p>\r\n<ol>\r\n<li>pelaksanaan pengkajian secara cepat dan tepat terhadap lokasi, kerusakan dan kerugian terjadinya bencana;</li>\r\n<li>pelaksanaan inventarisasi, identifikasi dan analisis gangguan pelayanan umum dan pemerintahan;</li>\r\n<li>pelaksanaan kerjasama penyediaan pangan, sandang, pelayanan kesehatan, psikososial serta penyediaan tempat penampungan dan tempat hunian; dan</li>\r\n<li>pelaksanaan kerjasama pemenuhan kebutuhan air bersih dan sanitasi bagi masyarakat korban bencana.</li>\r\n</ol>\r\n<p>Sub Bidang Tanggap Darurat mempunyai tugas melakukan pengumpulan data, penyiapan bahan perumusan dan pelaksanaan persiapan penetapan status keadaan darurat bencana, koordinasi, kerjasama dan pengerahan sumber daya dalam penyelamatan dan evakuasi masyarakat korban bencana, inventarisasi, identifikasi dan perlindungan terhadap kelompok rentan korban bencana, inventarisasi dan identifikasi cakupan lokasi dan jumlah korban bencana, pengkajian secara cepat dan tepat terhadap lokasi, kerusakan dan kerugian terjadinya bencana serta inventarisasi, identifikasi dan analisis gangguan pelayanan umum dan pemerintahan.</p>\r\n<p>Sub Bidang Logistik mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan kerjasama penyediaan pangan, sandang, pelayanan kesehatan, psikososial            serta penyediaan tempat penampungan dan tempat hunian serta kerjasama pemenuhan kebutuhan air bersih dan sanitasi bagi masyarakat korban bencana.</p>', '2017-08-10', '2017-08-10', '', '', 'ngadmin', 1, '00:00:02', 'Minggu', 'Y'),
(9, 'Struktur Organisasi', 'struktur-organisasi', '<p>Struktur Organisasi Badan Penanggulangan Bencana Daerah Kabupaten Tanjung Jabung Timur</p>', '2017-10-12', '2019-07-02', '94struktur-baru.jpg', '', 'ngadmin', 1, '11:44:58', 'Senin', 'Y'),
(15, 'Alamat E-mail OPD', 'alamat-email-opd', '<table width="744">\r\n<tbody>\r\n<tr>\r\n<td width="28">NO</td>\r\n<td width="287">OPD</td>\r\n<td width="136">NAMA OPERATOR/  CONTACT PERSON</td>\r\n<td colspan="3" width="191">EMAIL KANTOR</td>\r\n<td width="102">KETERANGAN</td>\r\n</tr>\r\n<tr>\r\n<td width="28">1</td>\r\n<td width="287">SEKRETARIAT DAERAH </td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:setda@tanjabtimkab.go.id">setda@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">2</td>\r\n<td width="287">SEKRETARIAT DEWAN PERWAKILAN RAKYAT DAERAH </td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:sekwan@tanjabtimkab.go.id">sekwan@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">3</td>\r\n<td width="287">BADAN PENANGULANGAN BENCANA DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:bpbd@tanjabtimkab.go.id">bpbd@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">4</td>\r\n<td width="287">BADAN KESATUAN BANGSA DAN POLITIK</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:kesbangpol@tanjabtimkab.go.id">kesbangpol@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">5</td>\r\n<td width="287">BADAN KEUANGAN DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:bkd@tanjabtimkab.go.id">bkd@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">6</td>\r\n<td width="287">BADAN PERENCANAAN PEMBANGUNAN DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:bappeda@tanjabtimkab.go.id">bappeda@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">7</td>\r\n<td width="287">BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:bkpsdmd@tanjabtimkab.go.id">bkpsdmd@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">8</td>\r\n<td width="287">BADAN PENELITIAN DAN PENGEMBANGAN DAERAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:litbang@tanjabtimkab.go.id">litbang@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">9</td>\r\n<td width="287">INSPEKTORAT</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:inspektorat@tanjabtimkab.go.id">inspektorat@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">10</td>\r\n<td width="287">DINAS PERPUSTAKAAN DAN KEARSIPAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:perpus@tanjabtimkab.go.id">perpus@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">11</td>\r\n<td width="287">DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dpmptsp@tanjabtimkab.go.id">dpmptsp@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">12</td>\r\n<td width="287">SATUAN POLISI PAMONG PRAJA DAN PEMADAM KEBAKARAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:polpp@tanjabtimkab.go.id">polpp@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">13</td>\r\n<td width="287">DINAS SOSIAL PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dinsos@tanjabtimkab.go.id">dinsos@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">14</td>\r\n<td width="287">DINAS PARIWISATA, KEBUDAYAAN, PEMUDA DAN OLAH RAGA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:disbudparpora@tanjabtimkab.go.id">disbudparpora@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">15</td>\r\n<td width="287">DINAS PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:ppkb@tanjabtimkab.go.id">ppkb@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">16</td>\r\n<td width="287">DINAS KOMUNIKASI DAN INFORMATIKA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:diskominfo@tanjabtimkab.go.id">diskominfo@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">17</td>\r\n<td width="287">DINAS PERUMAHAN DAN KAWASAN PERMUKIMAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:perkim@tanjabtimkab.go.id">perkim@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">18</td>\r\n<td width="287">DINAS PERHUBUNGAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dishub@tanjabtimkab.go.id">dishub@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">19</td>\r\n<td width="287">DINAS TENAGA KERJA DAN TRANSMIGRASI</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:nakertrans@tanjabtimkab.go.id">nakertrans@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">20</td>\r\n<td width="287">DINAS PERKEBUNAN DAN PETERNAKAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:disbunak@tanjabtimkab.go.id">disbunak@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">21</td>\r\n<td width="287">DINAS TANAMAN PANGAN DAN HORTIKULTURA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dtph@tanjabtimkab.go.id">dtph@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">22</td>\r\n<td width="287">DINAS PEKERJAAN UMUM DAN PENATAAN RUANG</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:pupr@tanjabtimkab.go.id">pupr@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">23</td>\r\n<td width="287">DINAS PENDIDIKAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:disdik@tanjabtimkab.go.id">disdik@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">24</td>\r\n<td width="287">DINAS KESEHATAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dinkes@tanjabtimkab.go.id">dinkes@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">25</td>\r\n<td width="287">DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dukcapil@tanjabtimkab.go.id">dukcapil@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">26</td>\r\n<td width="287">DINAS PEMBERDAYAAN MASYARAKAT DAN DESA</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:pmd@tanjabtimkab.go.id">pmd@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">27</td>\r\n<td width="287">DINAS PERINDUSTRIAN DAN PERDAGANGAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:disperindag@tanjabtimkab.go.id">disperindag@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">28</td>\r\n<td width="287">DINAS KOPERASI DAN USAHA KECIL DAN MENENGAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:koperasi@tanjabtimkab.go.id">koperasi@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">29</td>\r\n<td width="287">DINAS KETAHANAN PANGAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dkp@tanjabtimkab.go.id">dkp@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">30</td>\r\n<td width="287">DINAS LINGKUNGAN HIDUP</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:dlh@tanjabtimkab.go.id">dlh@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">31</td>\r\n<td width="287">DINAS PERIKANAN</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:perikanan@tanjabtimkab.go.id">perikanan@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n<tr>\r\n<td width="28">32</td>\r\n<td width="287">RUMAH SAKIT UMUM NURDIN HAMZAH</td>\r\n<td width="136"> </td>\r\n<td colspan="3" width="191"><a href="mailto:rsudnh@tanjabtimkab.go.id">rsudnh@tanjabtimkab.go.id</a></td>\r\n<td width="102"> </td>\r\n</tr>\r\n</tbody>\r\n</table>', '2018-11-27', '2018-11-27', '', '', 'ngadmin', 1, '15:06:17', 'Selasa', 'Y'),
(18, 'Tugas dan Fungsi Bidang Bina Program Kabupaten Tanjung Jabung Timur', 'tugas-dan-fungsi-bidang-bina-program-kabupaten-tanjung-jabung-timur', '<p><strong>Bidang Bina Program</strong></p>\r\n<p> </p>\r\n<p>Bidang Bina Program mempunyai tugas melaksanakan penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan penyusunan rencana program serta evaluasi dan pelaporan pelaksanaan program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi.</p>\r\n<p>Bidang Bina Program dalam melaksanakan tugas sebagaimana dimaksud menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pelaksanaan koordinasi dan penyusunan rencana program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi;</li>\r\n<li>pelaksanaan pengumpulan, pengolahan, penyajian data dan informasi yang berkaitan dengan pelaksanaan program penanggulangan bencana yang  meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi; dan</li>\r\n<li>pelaksanaan penyusunan laporan penyelenggaraan program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi.</li>\r\n</ol>\r\n<p>Sub Bidang Perencanaan dan Penyusunan Program mempunyai tugas melakukan penyiapan bahan perumusan dan pelaksanaan koordinasi dan penyusunan rencana program serta pengumpulan, pengolahan, penyajian data  dan informasi  yang berkaitan dengan pelaksanaan program program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegras.</p>\r\n<p>Sub Bidang Evaluasi dan Pelaporan mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan penyusunan laporan penyelenggaraan program penanggulangan bencana yang meliputi pra bencana, saat tanggap darurat dan pasca bencana secara terintegrasi.</p>', '2019-04-11', '2019-04-11', '', '', 'ngadmin', 1, '09:33:39', 'Minggu', 'Y'),
(19, 'Tugas dan Fungsi Bidang Pencegahan dan Kesiapsiagaan Kabupaten Tanjung Jabung Timur', 'tugas-dan-fungsi-bidang-pencegahan-dan-kesiapsiagaan-kabupaten-tanjung-jabung-timur', '<p><strong> </strong></p>\r\n<p><strong>Bidang Pencegahan dan Kesiapsiagaan</strong></p>\r\n<p>Bidang Pencegahan dan Kesiapsiagaan mempunyai tugas melaksanakan penyiapan koordinasi, fasilitasi perumusan dan pelaksanaan pencegahan bencana pada situasi tidak terjadi bencana dan kesiapsiagaan dalam situasi terdapat ancaman bencana.    </p>\r\n<p>Bidang Pencegahan dan Kesiapsiagaan dalam melaksanakan tugas menyelenggarakan fungsi:</p>\r\n<ol>\r\n<li>pelaksanaan analisis dan pengembangan informasi potensi bencana daerah;</li>\r\n<li>pelaksanaan penyusunan peta rawan bencana;</li>\r\n<li>pelaksanaan bimbingan teknis dan kerjasama pendidikan, pelatihan dan penyuluhan pembinaan kegiatan pencegahan dan mitigasi bencana;</li>\r\n<li>pelaksanaan fasilitasi pencegahan dan mitigasi bencana dalam penyusunan rencana tata ruang, pembangunan infrastruktur dan tata bangunan;</li>\r\n<li>pelaksanaan pengembangan, pengujian dan penerapan sistem peringatan dini terjadinya bencana; dan</li>\r\n<li>pelaksanaan bimbingan teknis pengorganisasian, penyuluhan dan simulasi tentang mekanisme tanggap darurat.</li>\r\n</ol>\r\n<p>Sub Bidang Pencegahan mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan analisis dan pengembangan informasi potensi bencana daerah, penyusunan peta rawan bencana, bimbingan teknis dan kerjasama pendidikan, pelatihan dan penyuluhan pembinaan kegiatan pencegahan dan mitigasi bencana serta fasilitasi pencegahan dan mitigasi bencana dalam penyusunan rencana tata ruang, pembangunan infrastruktur dan tata bangunan.</p>\r\n<p>Sub Bidang Kesiapsiagaan mempunyai tugas melakukan pengumpulan data, identifikasi, analisis, penyiapan bahan perumusan dan pelaksanaan  pengembangan, pengujian dan penerapan sistem peringatan dini terjadinya bencana serta bimbingan teknis pengorganisasian, penyuluhan dan simulasi tentang mekanisme tanggap darurat.</p>', '2019-04-11', '2019-04-11', '', '', 'ngadmin', 1, '09:36:24', 'Minggu', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE IF NOT EXISTS `halamanstatis` (
  `id_halaman` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_halaman` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_foto` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_halaman`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `text_foto`, `username`, `dibaca`, `jam`, `hari`) VALUES
(1, 'Sekretariat KPU Provinsi Jambi', 'sekretariat-kpu-provinsi-jambi', '<p><strong>Sekretaris</strong>&nbsp;: Drs. H. HERI MUJONO</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Kepala Bagian Keuangan, Umum &amp; Logistik : </strong>KHOIRUL BAHRI LUBIS, S.Sos<strong><br /></strong></p>\r\n<p><strong>Kepala Bagian Hukum, Teknis &amp; Hupmas : </strong>NASUHAIDI, S.Pd., S.Sos., M.Si<strong><br /></strong></p>\r\n<p><strong>Kepala Bagian SDM, Program &amp; Data : </strong>ARMEN SIREGAR, SE<strong><br /></strong></p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Kabag Keuangan: </strong>H. KAZIM, S.Sos</p>\r\n<p><strong>Kasubbag Umum &amp; Logistik :</strong> THAMRIN</p>\r\n<p><strong>Kasubbag Hukum : </strong>INDARTO PRIYADI, SH<strong><br /></strong></p>\r\n<p><strong>Kasubbag Teknis &amp; Hupmas : </strong>MUHAMMAD ASFIHANI, SE., ME.<strong><br /></strong></p>\r\n<p><strong>Kasubbag SDM : </strong>SRI ASTUTI, SE<strong><br /></strong></p>\r\n<p><strong>Kasubbag Program Dan Data&nbsp;</strong>: SAYUTI, SE</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Staf Keuangan </strong>:</p>\r\n<ul>\r\n<li>Garmien Melia, S.IP</li>\r\n<li>Prenadia Paramita, SE</li>\r\n<li>Paisul Amdani Lubis, A.Md</li>\r\n</ul>\r\n<p><strong>Staf Umum &amp; Logistik </strong>:</p>\r\n<ul>\r\n<li>Ningsihati, S.Pd.I</li>\r\n<li>Ryen Arisandi, SH</li>\r\n<li>Adi Susanto, A.Md</li>\r\n<li>Kiki Maryatul Qibtiyah</li>\r\n<li>Edi Sanjaya</li>\r\n</ul>\r\n<p><strong>Staf Hukum&nbsp;</strong>:</p>\r\n<ul>\r\n<li>Nina Sopia, SE</li>\r\n<li>Ratna Juwita, S.IP</li>\r\n<li>Jifrimon, S.IP</li>\r\n</ul>\r\n<p><strong>Staf Teknis dan Hupmas</strong>&nbsp;:</p>\r\n<ul>\r\n<li>Abdul Aziz, SE</li>\r\n<li>Arnawati</li>\r\n</ul>\r\n<p><strong>Staf SDM </strong>:</p>\r\n<ul>\r\n<li>Dedy Herawan, S.Kom</li>\r\n</ul>\r\n<p><strong>Staf Program &amp; Data</strong> :</p>\r\n<ul>\r\n<li>Zainah, SE</li>\r\n<li>Agung Nugroho, S.IP</li>\r\n</ul>', '2015-06-02', '', '', 'admin', 2960, '23:46:44', 'Selasa'),
(2, 'VISI & MISI KPU PROVINSI JAMBI', 'visi--misi-kpu-provinsi-jambi', '<p style="text-align: left;"><strong>VISI</strong></p>\r\n<p style="text-align: left;" align="justify">Terwujudnya Komisi Pemilihan Umum sebagai penyelenggara Pemilihan Umum yang memiliki integritas, profesional, mandiri, transparan dan akuntabel, demi terciptanya demokrasi Indonesia yang berkualitas berdasarkan Pancasila dan UUD 1945 dalam wadah Negara Kesatuan Republik Indonesia.<br /><br /><strong>MISI</strong></p>\r\n<ol>\r\n<li style="text-align: left;">\r\n<p align="justify">Membangun lembaga penyelenggara Pemilihan Umum yang memiliki kompetensi, kredibilitas dan kapabilitas dalam menyelenggarakan Pemilihan Umum;</p>\r\n</li>\r\n<li style="text-align: left;">\r\n<p align="justify">Menyelenggarakan Pemilihan Umum untuk memilih Anggota Dewan Perwakilan Rakyat, Dewan Perwakilan Daerah, Dewan Perwakilan Rakyat Daerah, Presiden dan Wakil Presiden serta Kepala Daerah dan Wakil Kepala Daerah secara langsung, umum, bebas, rahasia, jujur, adil, akuntabel, edukatif dan beradab;</p>\r\n</li>\r\n<li style="text-align: left;">\r\n<p align="justify">Meningkatkan kualitas penyelenggaraan Pemilihan Umum yang bersih, efisien dan efektif;</p>\r\n</li>\r\n<li style="text-align: left;">\r\n<p align="justify">Melayani dan memperlakukan setiap peserta Pemilihan Umum secara adil dan setara, serta menegakkan peraturan Pemilihan Umum secara konsisten sesuai dengan peraturan perundang-undangan yang berlaku;</p>\r\n</li>\r\n<li>\r\n<p style="text-align: left;" align="justify">Meningkatkan kesadaran politik rakyat untuk berpartisipasi aktif dalam Pemilihan Umum demi terwujudnya cita-cita masyarakat Indonesia yang demokratis.</p>\r\n</li>\r\n</ol>', '2015-06-03', '', '', 'admin', 2452, '11:20:08', 'Rabu');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE IF NOT EXISTS `identitas` (
  `id_identitas` int(5) NOT NULL AUTO_INCREMENT,
  `nama_website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kantor` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foursquare` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleplus` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bottom` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telp` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gmap` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_deskripsi` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keyword` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_identitas`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `kantor`, `twiter`, `youtube`, `foursquare`, `instagram`, `googleplus`, `email`, `alamat`, `title_bottom`, `copyright`, `url`, `facebook`, `no_telp`, `fax`, `gmap`, `meta_deskripsi`, `meta_keyword`, `favicon`, `logo`) VALUES
(1, 'Badan Penanggulangan Bencana Daerah', 'Badan Penanggulangan Bencana Daerah Kabupaten Tanjung Jabung Timur', '', '', '', '', '', 'bpbd@tanjabtimkab.go.id', 'Jalan Bhayangkara Kelurahan Rano Kode Pos 36561', '', '', 'bpbd.tanjabtimkab.go.id', '', '085839905400', '', '', 'BPBD.TANJABTIMKAB.GO.ID merupakan Official Website Badan Penanggulangan Bencana Daerah Kab. Tanjung Jabung Timur.', 'bpbd tanjabtim, e-gov tanjabtim, zumi zola, internet tanjabtim, sabak online, jaringan sabak, e-gov sabak,', '', '57logo-baru.png');

-- --------------------------------------------------------

--
-- Table structure for table `ijazah`
--

CREATE TABLE IF NOT EXISTS `ijazah` (
  `id_ijazah` int(2) NOT NULL AUTO_INCREMENT,
  `nama_ijazah` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_ijazah`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `ijazah`
--

INSERT INTO `ijazah` (`id_ijazah`, `nama_ijazah`) VALUES
(1, 'SD / MI / Sederajat'),
(2, 'SMP / MTs / Sederajat'),
(3, 'SMA / SMK / Sederajat'),
(4, 'D1'),
(5, 'D2'),
(6, 'D3'),
(7, 'S1'),
(8, 'S2'),
(9, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `iklan`
--

CREATE TABLE IF NOT EXISTS `iklan` (
  `id_iklan` int(4) NOT NULL AUTO_INCREMENT,
  `id_mode` int(2) NOT NULL,
  `mobile` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan_mobile` int(3) NOT NULL,
  `id_halamaniklan` int(2) NOT NULL,
  `id_posisiiklan` int(2) NOT NULL,
  `urutan` int(2) NOT NULL,
  `nama_iklan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `tanggal_modif` date NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_iklan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `iklan`
--

INSERT INTO `iklan` (`id_iklan`, `id_mode`, `mobile`, `urutan_mobile`, `id_halamaniklan`, `id_posisiiklan`, `urutan`, `nama_iklan`, `link`, `gambar`, `aktif`, `keterangan`, `tgl_posting`, `jam`, `tanggal_modif`, `tgl_mulai`, `tgl_akhir`, `username`) VALUES
(1, 0, 'N', 0, 1, 2, 0, 'Iklan Kominfo', '', '87img20180518wa0000.jpg', 'N', '', '2017-08-07', '13:42:27', '2018-05-18', '2018-08-09', '2017-09-09', 'ngadmin'),
(2, 0, 'N', 0, 1, 1, 0, 'jenis 2', '', '12selfi_harganas-xxv_1_web.jpg', 'N', '', '2017-08-07', '13:42:57', '2018-08-09', '2017-08-07', '2017-08-07', 'ngadmin'),
(19, 0, 'Y', 0, 1, 1, 0, 'Hapri Pendidikan Nasional Tahun 2019', '', '75hari-pendidikan.jpg', 'Y', '', '2019-05-02', '08:28:54', '2019-05-03', '2019-05-03', '2019-05-10', 'ngadmin'),
(20, 0, 'Y', 0, 1, 2, 0, 'Selamat Ramadhan 2019', '', '70puasa2-copy.jpg', 'Y', '', '2019-05-07', '08:48:05', '2019-05-07', '2019-05-07', '2019-05-14', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `imageslide`
--

CREATE TABLE IF NOT EXISTS `imageslide` (
  `id_imageslide` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_imageslide`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `imageslide`
--

INSERT INTO `imageslide` (`id_imageslide`, `judul`, `aktif`, `keterangan`, `gambar`, `urutan`, `tgl_upload`, `tgl_modif`, `username`) VALUES
(1, 'ASDsdsd', 'Y', 'ADDF sdfsdfsf', '84pks1.jpg', 0, '2017-06-22', '2018-10-22', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `jabatankomisioner`
--

CREATE TABLE IF NOT EXISTS `jabatankomisioner` (
  `id_jabatankomisioner` int(5) NOT NULL AUTO_INCREMENT,
  `nama_jabatankomisioner` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatankomisioner_seo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_jabatankomisioner`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jabatankomisioner`
--

INSERT INTO `jabatankomisioner` (`id_jabatankomisioner`, `nama_jabatankomisioner`, `jabatankomisioner_seo`) VALUES
(1, 'Ketua KPU', 'ketua-kpu'),
(2, 'Anggota KPU', 'anggota-kpu');

-- --------------------------------------------------------

--
-- Table structure for table `jabatanpegawai`
--

CREATE TABLE IF NOT EXISTS `jabatanpegawai` (
  `id_jabatan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_jabatanpegawai` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_seo` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `jabatanpegawai`
--

INSERT INTO `jabatanpegawai` (`id_jabatan`, `nama_jabatanpegawai`, `jabatan_seo`, `aktif`, `username`) VALUES
(1, 'Kepala Pelaksana BPBD', '', 'Y', 'ngadmin'),
(2, 'Sekretaris BPBD', '', 'Y', 'ngadmin'),
(3, 'Kabid Bina Program', ' ', 'Y', 'ngadmin'),
(4, 'Kabid Rehabilitasi dan Rekonstruksi', ' ', 'Y', 'ngadmin'),
(5, 'Kabid Pencegahan dan Kesiapsiagaan ', ' ', 'Y', 'ngadmin'),
(6, 'Kabid Kedaruratan dan Logistik', ' ', 'Y', 'ngadmin'),
(7, 'Kasubbid Perencanaan dan Penyusunan Program', ' ', 'Y', 'ngadmin'),
(8, 'Kasubbid Evaluasi dan Pelaporan', ' ', 'Y', 'ngadmin'),
(9, 'Kasubbid Rehabilitasi ', ' ', 'Y', 'ngadmin'),
(10, 'Kasubbid Rekonstruksi', ' ', 'Y', 'ngadmin'),
(11, 'Kasubbid Pencegahan ', ' ', 'Y', 'ngadmin'),
(12, 'Kasubbid Kesiapsiagaan ', ' ', 'Y', 'ngadmin'),
(13, 'Kasubbid Kedaruratan ', ' ', 'Y', 'ngadmin'),
(14, 'Kasubbid Logistik ', ' ', 'Y', 'ngadmin'),
(15, 'Kasubbag Umum ', ' ', 'Y', 'ngadmin'),
(16, 'Kasubbag Keuangan ', ' ', 'Y', 'ngadmin'),
(19, 'Kasubbag Kepegawaian ', '', 'Y', 'ngadmin'),
(20, 'Staff Pelaksana', '', 'Y', 'ngadmin'),
(21, 'Operator Computer', '', 'Y', 'ngadmin'),
(23, 'Team Reaksi Cepat ( TRC )', '', 'Y', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `katdokumen`
--

CREATE TABLE IF NOT EXISTS `katdokumen` (
  `id_katdokumen` int(3) NOT NULL AUTO_INCREMENT,
  `nama_katdokumen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_katdokumen`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `katdokumen`
--

INSERT INTO `katdokumen` (`id_katdokumen`, `nama_katdokumen`, `aktif`, `username`, `keterangan`) VALUES
(1, 'RPJMD', 'Y', '', 'Statistik'),
(5, 'Daftar Website Lingkup Organisasi Perangkat Daerah Tahun 2018 Dinas KOMINFO Kab. Tanjung Jabung Timu', 'Y', 'ngadmin', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`) VALUES
(1, 'Berita Tanjabtim', '', 'berita-tanjabtim', 'Y'),
(2, 'Berita Kementrian', '', 'berita-kementrian', 'Y'),
(3, 'Berita Umum', '', 'berita-umum', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `katlaporan`
--

CREATE TABLE IF NOT EXISTS `katlaporan` (
  `id_katlaporan` int(3) NOT NULL AUTO_INCREMENT,
  `nama_katlaporan` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_katlaporan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `katlaporan`
--

INSERT INTO `katlaporan` (`id_katlaporan`, `nama_katlaporan`) VALUES
(1, 'SP2HP RESKRIM'),
(2, ' SP2HP LANTAS');

-- --------------------------------------------------------

--
-- Table structure for table `katprodukhukum`
--

CREATE TABLE IF NOT EXISTS `katprodukhukum` (
  `id_katprodukhukum` int(3) NOT NULL AUTO_INCREMENT,
  `nama_katprodukhukum` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_katprodukhukum`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `katprodukhukum`
--

INSERT INTO `katprodukhukum` (`id_katprodukhukum`, `nama_katprodukhukum`, `keterangan`, `aktif`, `username`) VALUES
(1, 'Undang Undang', 'undang-undang', 'Y', 'ngadmin'),
(2, 'Peraturan Daerah', 'peraturan-presiden', 'Y', 'ngadmin'),
(4, 'Peraturan Pemerintah', 'peraturan-pemerintah', 'Y', 'ngadmin'),
(10, 'Keputusan Bupati', '', 'Y', 'ngadmin'),
(11, 'Peraturan Kementerian Kominfo', '', 'Y', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE IF NOT EXISTS `kegiatan` (
  `id_kegiatan` int(3) NOT NULL AUTO_INCREMENT,
  `namakegiatan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_kegiatan` date NOT NULL,
  `pengisi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perihal` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwalkegiatan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_kegiatan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=52 ;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE IF NOT EXISTS `level` (
  `idlevel` int(2) NOT NULL AUTO_INCREMENT,
  `namalevel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idlevel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`idlevel`, `namalevel`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'view');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE IF NOT EXISTS `link` (
  `id_link` int(3) NOT NULL AUTO_INCREMENT,
  `nama_link` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_link`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id_link`, `nama_link`, `aktif`) VALUES
(1, 'dari Kategori Berita', 'Y'),
(2, 'dari Item Berita', 'Y'),
(3, 'dari Kategori Produk Hukum/Peraturan', 'Y'),
(4, 'dari Item Produk Hukum/Peraturan', 'Y'),
(5, 'dari Kategori Dokumen', 'Y'),
(6, 'dari Item Dokumen', 'Y'),
(7, 'dari Artikel', 'Y'),
(8, 'dari Album Photo', 'Y'),
(9, 'dari Pengumuman', 'Y'),
(10, 'dari Halaman Profil', 'Y'),
(12, 'Custom Link', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(5) NOT NULL AUTO_INCREMENT,
  `id_parent` int(5) NOT NULL DEFAULT '0',
  `id_position` int(3) NOT NULL,
  `nama_menu` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `id_position`, `nama_menu`, `link`, `aktif`, `urutan`, `tgl_posting`, `username`, `keterangan`, `css`) VALUES
(3, 0, 2, 'PROFIL', '', 'Y', 1, '0000-00-00', '', '', ''),
(6, 0, 2, 'BERITA', 'berita', 'Y', 2, '0000-00-00', '', '', ''),
(7, 0, 2, 'BIDANG', '', 'Y', 7, '0000-00-00', '', '', ''),
(8, 0, 2, 'REGULASI', 'peraturan', 'Y', 3, '0000-00-00', '', '', ''),
(11, 0, 2, 'BASIS DATA', '', 'Y', 4, '0000-00-00', '', '', ''),
(12, 0, 2, 'GALERI', '', 'Y', 9, '0000-00-00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `menuadmin`
--

CREATE TABLE IF NOT EXISTS `menuadmin` (
  `idmenu` int(5) NOT NULL AUTO_INCREMENT,
  `namamenu` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `level` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bagian` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(5) NOT NULL,
  PRIMARY KEY (`idmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=42 ;

--
-- Dumping data for table `menuadmin`
--

INSERT INTO `menuadmin` (`idmenu`, `namamenu`, `link`, `aktif`, `level`, `bagian`, `urutan`) VALUES
(1, 'Home', 'media.php?module=home', 'N', 'admin,user,view', '', 1),
(2, 'Menu Backend', '#', 'Y', 'admin', '', 3),
(5, 'Manajemen', '#', 'Y', 'admin,user', '', 2),
(6, 'Report/Laporan', '#', 'N', 'admin,user,view', '', 14),
(30, 'Database Kepegawaian', '?module=pegawai', 'Y', 'admin,user,view', '', 6),
(36, 'Peraturan/Produk Hukum', '#', 'Y', 'admin,user', '', 10),
(37, 'Menu Frontend', '', 'Y', 'admin', '', 4),
(38, 'Content Frontend', '', 'Y', 'admin,user', '', 5),
(39, 'Database Umum', '', 'N', 'admin,user', '', 8),
(40, 'Peraturan/Produk Hukum', '', 'N', 'admin,user', '', 15),
(41, 'Anggota Dewan', '', 'Y', 'admin,user', '', 16);

-- --------------------------------------------------------

--
-- Table structure for table `menu_position`
--

CREATE TABLE IF NOT EXISTS `menu_position` (
  `id_posisi` int(4) NOT NULL AUTO_INCREMENT,
  `nama_posisi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_posisi`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menu_position`
--

INSERT INTO `menu_position` (`id_posisi`, `nama_posisi`, `keterangan`, `username`, `tgl_upload`) VALUES
(2, 'Top Menu Main Menu', 'Top Menu warna biru', 'ngadmin', '2013-09-05'),
(4, 'Bottom Menu', 'Menu Bawah', 'ngadmin', '2013-09-05'),
(5, 'Left Menu (Menu Kiri)', 'Pilih Menu Kiri', 'admin', '2014-02-25'),
(6, 'Right Menu (Menu Kanan)', 'Pilih Menu Kanan', 'admin', '2014-02-25');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE IF NOT EXISTS `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `tgl_posting` date NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `link`, `publish`, `status`, `aktif`, `urutan`, `tgl_posting`, `keterangan`, `username`) VALUES
(1, 'Modul Berita', 'berita', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(2, 'Modul Kategori Berita', 'kategori', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(3, 'Modul Tagging', 'tag', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(4, 'Modul Polling', 'polling', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(5, 'Modul Iklan', 'iklan', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(6, 'Modul Filter Berita', 'filterberita', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(7, 'Modul File Download', 'download', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(8, 'Modul Berita Foto', 'fotoberita', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(9, 'Modul Users', 'users', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(10, 'Modul Identitas Website', 'identitas', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(11, 'Modul Menu Front-End', 'menu', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(12, 'Modul Sub Menu Front-End', 'submenu', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(13, 'Modul Sub Submenu Front-End', 'subsubmenu', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(14, 'Modul Halaman Profil', 'halamanprofil', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(15, 'Modul Pegawai', 'pegawai', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin'),
(16, 'Modul Video Kegiatan', 'video', 'Y', 'user', 'Y', 0, '0000-00-00', '', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(3) NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pangkat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tmtpangkat` date NOT NULL,
  `id_jabatan` int(5) NOT NULL,
  `tmtjabatan` date NOT NULL,
  `masa_bulan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masa_tahun` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namalatihan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulanlatihan` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahunlatihan` year(4) NOT NULL,
  `jamlatihan` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pendidikan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_lulus` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_tingkat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `mutasi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tgl_lahir` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tmtpangkat` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_tmtjabatan` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_latihan` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=89 ;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `nip`, `tempat`, `tgl_lahir`, `alamat`, `id_pangkat`, `tmtpangkat`, `id_jabatan`, `tmtjabatan`, `masa_bulan`, `masa_tahun`, `namalatihan`, `bulanlatihan`, `tahunlatihan`, `jamlatihan`, `pendidikan`, `tahun_lulus`, `id_tingkat`, `kelamin`, `mutasi`, `gambar`, `keterangan`, `username`, `no_tgl_lahir`, `no_tmtpangkat`, `no_tmtjabatan`, `no_latihan`, `aktif`, `tgl_upload`, `tgl_modif`) VALUES
(77, 'FAJRIN PUTRAMA, SH', '19830622 200604 1 004', 'Kampung Laut', '1983-06-22', '', '10', '2017-10-01', 20, '2014-06-28', '', '', '', '00', 0000, '', 'UNBARI', '2012', '7', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(78, 'AL AZIZ IMAM MURA, SE', '19780401 200012 1 001', 'JAMBI', '1978-04-01', '', '8', '2017-04-01', 20, '0000-00-00', '', '', '', '00', 0000, '', '', '', '0', 'L', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(79, 'MUHAMMAD HAVIS', '19830123 201001 1 002', 'JAMBI', '1983-01-23', '', '7', '2018-04-01', 20, '2014-06-09', '', '', '', '00', 0000, '', 'SLTA', '2003', '3', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(80, 'SINARTI', '19840412 200701 2 002', 'Desa ARO', '1984-04-12', '', '8', '2019-04-01', 20, '2014-06-16', '', '', '', '00', 0000, '', 'SLTA', '2003', '3', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(81, 'MUHAMMAD TAHER', '19790818 200701 1 004', 'Muara Sabak', '1979-08-18', '', '7', '2018-10-01', 20, '2015-05-31', '', '', '', '00', 0000, '', 'SLTA', '2006', '3', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(82, 'HADISUN', '19770318 201212 1 001', 'Purbalingga', '1977-03-18', '', '5', '2017-10-01', 20, '2015-12-01', '', '', '', '00', 0000, '', 'SLTP', '', '2', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(84, 'SAPARIDAH', '19850227 201212 2 001', '', '1949-01-01', '', '6', '2017-12-01', 20, '0000-00-00', '', '', '', '00', 0000, '', 'SLTA', '2003', '3', 'L', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-07-01', '2019-07-01'),
(86, 'CHANDRA AFRIZAL,SE', '19780716 201101 1 002', '', '2019-06-24', '', '0', '0000-00-00', 19, '2019-06-24', '', '', '', '00', 0000, '', '', '', '0', 'L', '', '', '', '', 'N', 'Y', 'N', 'Y', 'Y', '2019-07-01', '2019-07-01'),
(87, 'SAMSON', '19740710 200801 1 002', 'Muara Sabak', '1974-07-10', '', '5', '2015-10-01', 20, '2016-01-14', '', '', '', '00', 0000, '', 'SLTA', '', '0', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-07-01', '2019-07-01'),
(88, 'MUHAMMAD ALI', '19750506 200906 1 001', 'Alang-Alang', '1975-05-06', '', '5', '2018-10-01', 20, '2018-05-01', '', '', '', '00', 0000, '', 'SLTA', '', '3', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-07-01', '2019-07-01'),
(59, 'JAKFAR, S. Sos', '10680612 198810 1 001', 'TANJUNG JABUNG', '1949-01-01', '', '15', '2018-10-01', 1, '1949-01-01', '', '', 'ADUM', '1', 2000, '', 'STAI LAN RI', '1998', '7', 'L', '', '', '', '', 'N', 'N', 'N', 'N', 'Y', '2019-06-27', '2019-06-27'),
(61, 'MUSTAFA, SE', '19640404 198703 1 007', 'RANO', '1949-01-01', '', '', '0000-00-00', 2, '1949-01-01', '', '', '', '00', 0000, '', '', '', '', 'L', '', '', '', '', 'N', 'Y', 'N', 'Y', 'Y', '2019-06-26', '2019-06-26'),
(62, 'MENHENDRI, S.Pd.SD', '196511277 198507 1 001', '', '0000-00-00', '', '0', '0000-00-00', 3, '0000-00-00', '', '', '', '00', 0000, '', '', '', '0', 'L', '', '', '', '', 'Y', 'Y', 'Y', 'Y', 'Y', '2019-06-27', '2019-06-27'),
(63, 'DAMRIS, S.IP,MM', '19661002 198610 1 001', '', '1949-01-01', '', '13', '2010-04-01', 4, '1949-01-01', '', '', 'DIKLAT PIM IV', '1', 2009, '', 'UNJA', '2013', '8', 'L', '', '', '', '', 'N', 'N', 'N', 'N', 'Y', '2019-06-27', '2019-06-27'),
(64, 'RAHMAD HIDAYAT, S.Pt', '197330725 200212 1 003', '', '0000-00-00', '', '13', '2016-04-01', 5, '0000-00-00', '', '', 'DIKLAT PIM IV', '1', 2006, '', 'UNJA', '1998', '7', 'L', '', '', '', '', 'Y', 'N', 'Y', 'N', 'Y', '2019-06-27', '2019-06-27'),
(65, 'INDRA SAKTI GUNAWAN, SE', '19731214 199303 1 001', '', '1973-12-14', '', '11', '2018-03-15', 6, '0000-00-00', '', '', '', '00', 0000, '', '', '', '0', 'L', '', '', '', '', 'N', 'N', 'Y', 'Y', 'Y', '2019-06-27', '2019-06-27'),
(66, 'HENDRA KURNIAWAN, SE', '19781223 201101 1 002', 'JAMBI', '1978-12-12', '', '11', '2017-04-01', 7, '2017-04-01', '', '', '', '00', 0000, '', 'UNBARI', '2002', '7', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(67, 'M. HERIYATNO, S.Sos', '19740430 199403 1 002', '', '0000-00-00', '', '14', '0000-00-00', 8, '0000-00-00', '', '', '', '00', 0000, '', '', '', '', 'L', '', '', '', '', 'Y', 'Y', 'Y', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(68, 'ISMAIL FAHMI, SE', '19741119 200212 1 003', '', '1974-11-19', '', '11', '2014-04-01', 9, '2017-03-31', '', '', '', '00', 0000, '', 'STIE IKABAMA JAMBI', '2009', '7', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(69, 'ALPUTRA DIHASPURI,SH', '19730704 200012 1 002', '', '0000-00-00', '', '13', '2015-12-01', 10, '0000-00-00', '', '', 'PIM IV', '1', 2003, '', 'UNJA', '1999', '7', 'L', '', '', '', '', 'Y', 'N', 'Y', 'N', 'Y', '2019-06-28', '2019-06-28'),
(70, 'NOPI ARDIANSYAH, SH', '19800904 201001 1 014', 'Ma. BUNGO', '1980-09-04', '', '', '0000-00-00', 11, '1980-04-02', '', '', '', '00', 0000, '', '', '', '', 'L', '', '', '', '', 'N', 'Y', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(71, 'ROMI JON PUTRA, SE', '19760617 201101 1 003', '', '0000-00-00', '', '0', '0000-00-00', 12, '2019-06-24', '', '', '', '00', 0000, '', '', '', '0', 'L', '', '', '', '', 'Y', 'Y', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(72, 'DJON ASPIAN', '19650627 199108 1 001', 'JAMBI', '1965-06-27', '', '12', '2017-04-01', 13, '1949-01-01', '', '', '', '00', 0000, '', '', '', '', 'L', '', '', '', '', 'N', 'N', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(73, 'Drs. BUHARI', '19650708 199203 1 000', '', '0000-00-00', '', '0', '0000-00-00', 14, '2019-06-24', '', '', '', '00', 0000, '', '', '', '0', 'L', '', '', '', '', 'Y', 'Y', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(74, 'KAMAL FIRDAUS', '19630212 199203 1 003', '', '1963-02-12', '', '0', '0000-00-00', 15, '2017-04-01', '', '', '', '00', 0000, '', '', '', '0', 'L', '', '', '', '', 'N', 'Y', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28'),
(75, 'HUSNI THAMRIN, SH', '19820913 201101 1 004', '', '0000-00-00', '', '11', '0000-00-00', 16, '2019-06-24', '', '', '', '00', 0000, '', '', '', '0', 'L', '', '', '', '', 'Y', 'Y', 'N', 'Y', 'Y', '2019-06-28', '2019-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE IF NOT EXISTS `pendidikan` (
  `id_pend` int(2) NOT NULL AUTO_INCREMENT,
  `nama_pend` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pend`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pend`, `nama_pend`) VALUES
(1, 'Belum Sekolah/Tidak Sekolah'),
(2, 'SD / SDLB / MI / Paket A'),
(3, 'SMP / SMPLB / MTs / Paket B'),
(4, 'SMA / SMK / MA / Paket C'),
(5, 'D1'),
(6, 'D2'),
(7, 'D3'),
(8, 'S1'),
(9, 'S2'),
(10, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE IF NOT EXISTS `pengaduan` (
  `id_pengaduan` int(3) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `judulpengaduan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lembaga` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` time NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pengaduan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `nama`, `email`, `alamat`, `judulpengaduan`, `lembaga`, `pesan`, `jawaban`, `ip`, `tanggal`, `aktif`, `jam`, `keterangan`) VALUES
(8, '1111111111111111', '11111111111', '1111111111111111111111 I located it to be fascinating and loaded with exclusive points of interest. I like to read material that makes me believe. Thank you for writing this fantastic content. cadfgkedebdc', '11111111111', 'teuewroo', '11111111111 es me believe. Thank you for writing this fantastic content. cadfgkedebdc', '11111 sdsdsd', '191.37.33.78', '2016-10-26', 'Y', '23:41:56', 'adasdasd'),
(9, 'Johnk155', 'johnk184@gmail.com', 'Hello my family member! I want to say that this article is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', 'yrrtitor', 'teuewroo', 'Hello my family member! I want to say that this article is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', 'is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', '191.37.33.78', '2016-10-26', 'Y', '23:42:04', ''),
(11, 'Johnk713', 'johnk38@gmail.com', '1 Program you&#039;r planting of crops to coincide whenever you can log onto your farm to reap them. dfebegeeedag', 'iuworewy', 'oiwropee', '1 Program you&#039;r planting of crops to coincide whenever you can log onto your farm to reap them. dfebegeeedag', 'is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', '88.198.151.153', '2016-12-15', 'Y', '03:36:27', ''),
(12, 'Johnd997', 'johnd836@gmail.com', ' time to make some plans for the long run and it is time to be happy. I have learn this publish and if I may I want to suggest you few attentiongrabbing things or advice. Maybe you could write next articles regarding this article. I desire to read even more things about it! bbfedaebfcfd', 'iuworewysdfsdf', 'oiwropeedfdf', ' make some plans for the long run and it is time to be happy. I have learn this publish and if I may I want to suggest you few attentiongrabbing things or advice. Maybe you could write next articles regarding this article. I desire to read even more things about it! bbfedaebfcfd', 'is amazing, great written and come with almost all significant infos. Id like to peer extra posts like this . eggkakeegccd', '88.198.151.153', '2016-12-15', 'N', '03:36:29', 'sadasd');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE IF NOT EXISTS `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi_pengumuman` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `tanggal_pengumuman` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `file1` int(3) NOT NULL,
  `file2` int(3) NOT NULL,
  `file3` int(3) NOT NULL,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `username`, `judul`, `isi_pengumuman`, `hari`, `tanggal`, `tanggal_pengumuman`, `jam`, `gambar`, `sumber`, `keterangan`, `dibaca`, `aktif`, `file1`, `file2`, `file3`) VALUES
(15, 'ngadmin', 'Open Recruitment Tenaga Ahli Non PNS', '<p xss=removed>Open Recruitment Tenaga Ahli Non PNS</p>\r\n<p xss=removed>PENGUMUMAN :</p>\r\n<p xss=removed>NOMOR : 810/16/DISKOMINFO/2019</p>\r\n<p xss=removed>SELEKSI PENERIMAAN TENAGA KONTRAK/PTT PROGRAMER DINAS KOMUNIKASI DAN INFORMATIKA KABUPATEN TANJUNG JABUNG TIMUR</p>\r\n<p> </p>', '', '2019-01-07', '2019-01-07', '16:28:16', '37ed07e5357eb6434f91fc89f4ebf3e970.jpg', 'Dinas Komunikasi dan Informatika Kabupaten Tanjung Jabung Timur', '', 891, 'Y', 10, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `polling`
--

CREATE TABLE IF NOT EXISTS `polling` (
  `id_polling` int(5) NOT NULL,
  `pertanyaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` time NOT NULL,
  PRIMARY KEY (`id_polling`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `polling`
--

INSERT INTO `polling` (`id_polling`, `pertanyaan`, `tgl_posting`, `aktif`, `username`, `jam`) VALUES
(413, 'Bagaimana Menurut Anda Informasi Yang kami Sediakan?', '2014-03-02', 'Y', 'ngadmin', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pollingpilihan`
--

CREATE TABLE IF NOT EXISTS `pollingpilihan` (
  `id_pollingpilihan` int(5) NOT NULL AUTO_INCREMENT,
  `id_polling` int(3) NOT NULL,
  `pilihan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT '0',
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pollingpilihan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `pollingpilihan`
--

INSERT INTO `pollingpilihan` (`id_pollingpilihan`, `id_polling`, `pilihan`, `rating`, `aktif`) VALUES
(1, 413, 'Sangat Lengkap', 1463, 'Y'),
(2, 413, 'Lengkap', 142, 'Y'),
(3, 413, 'Tidak lengkap', 190, 'Y'),
(4, 413, 'Sangat Tidak Lengkap', 188, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `polsek`
--

CREATE TABLE IF NOT EXISTS `polsek` (
  `id_polsek` int(3) NOT NULL AUTO_INCREMENT,
  `kode_pos` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_polsek` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_kapolsek` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_polsek`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `polsek`
--

INSERT INTO `polsek` (`id_polsek`, `kode_pos`, `nama_polsek`, `alamat`, `website`, `telp`, `hp`, `nama_kapolsek`, `gambar`, `keterangan`, `username`, `tgl_upload`) VALUES
(1, '', 'Polsek Wolo', 'Jl. Desa Pembengis, Kelurahan Bram Itam Kiri, Kecamatan Bram Itam, Kab Tanjung Jabung Barat', 'polreskolaka.com', '0741 - 668844', '0821 7525 6464', 'AKP BENNY  PORNIKA', 'Paal Lima.jpg', '<div align="center"><span><strong>TUGAS POKOK<br />KAPOLSEK TUNGKAL ILIR</strong></span></div>\r\n<p><br /><br /></p>\r\n<div align="center"><span><strong>DASAR</strong></span></div>\r\n<ol>\r\n<li><span>Peraturan Kepala Kepolisian Negara Republik Indonesia Nomor : PERKAP/23/IX/2010 tentang Susunan Organisasi dan Tata Kerja Pada Tingkat Kepolisian Resort dan Kepolisian Sektor;</span></li>\r\n<li><span>Kapolsek Tungkal Ilir merupakan Pimpinan Polsek Tungkal Ilir yang berada di bawah dan bertanggung jawab kepada Kapolres Tanjung jabung Barat.</span></li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<div align="center"><strong>TUGAS POKOK</strong></div>\r\n<div align="center"><br />&nbsp;</div>\r\n<div><span>Dalam melaksanakan tugas sebagaimana dimaksud dalam rujukan tersebut diatas, Kapolsek Tungkal Ilir bertugas :</span></div>\r\n<ol>\r\n<li><span>Memimpin satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya;</span></li>\r\n<li><span>Membina satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya;</span></li>\r\n<li><span>Mengawasi satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya;</span></li>\r\n<li><span>Mengatur satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya;</span></li>\r\n<li><span>Mengendalikan satuan Organisasi di lingkungan Polsek dan unsur pelaksana kewilayahan dalam jajarannya termasuk kegiatan pengamanan markas; dan</span></li>\r\n<li><span>Memberikan saran Pertimbangan kepada Kapolres yang terkait dengan pelaksanaan tugasnya.</span></li>\r\n</ol>', 'ngadmin', '2016-04-04'),
(2, '', 'Polsek Samataru', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-04'),
(3, '', 'Polsek Lambandia', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(4, '', 'Polsek Uluiwoi', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(5, '', 'Polsek Mowewe', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(6, '', 'Polsek Rate-rate', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(7, '', 'Polsek Watubangga', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(8, '', 'Polsek Pomalaa', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(9, '', 'Polsek Kolaka', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17'),
(10, '', 'Polsek Ladongi', '-', '-', '-', '-', '-', '', '', 'ngadmin', '2016-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `posisiiklan`
--

CREATE TABLE IF NOT EXISTS `posisiiklan` (
  `id_posisiiklan` int(2) NOT NULL AUTO_INCREMENT,
  `id_halamaniklan` int(3) NOT NULL,
  `nama_posisiiklan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_posisiiklan`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `posisiiklan`
--

INSERT INTO `posisiiklan` (`id_posisiiklan`, `id_halamaniklan`, `nama_posisiiklan`, `aktif`) VALUES
(1, 1, 'IKLAN KD[1]', 'Y'),
(2, 1, 'IKLAN KD[2]', 'Y'),
(3, 1, 'IKLAN KD[3]', 'Y'),
(4, 1, 'IKLAN KD[4]', 'Y'),
(5, 1, 'IKLAN KD[5]', 'Y'),
(6, 2, 'KAT-DETAIL KD[1]', 'Y'),
(7, 2, 'KAT-DETAIL KD[2]', 'Y'),
(8, 2, 'KAT-DETAIL KD[3]', 'Y'),
(9, 2, 'KAT-DETAIL KD[4]', 'Y'),
(10, 2, 'KAT-DETAIL KD[5]', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `produkhukum`
--

CREATE TABLE IF NOT EXISTS `produkhukum` (
  `id_produkhukum` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode_link` int(2) NOT NULL,
  `id_katprodukhukum` int(2) NOT NULL,
  `nama_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `tanggal_modif` date NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dl` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_produkhukum`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=27 ;

--
-- Dumping data for table `produkhukum`
--

INSERT INTO `produkhukum` (`id_produkhukum`, `judul`, `tahun`, `keterangan`, `metode_link`, `id_katprodukhukum`, `nama_file`, `link_file`, `tgl_upload`, `tanggal_modif`, `sumber`, `dibaca`, `username`, `aktif`, `dl`) VALUES
(26, 'PERATURAN DAERAH KABUPATEN TANJUNG JABUNG TIMUR NOMOR 14 TAHUN 2013', '2019', '', 1, 2, '32peraturan-daerah-kabupaten-tanjung-jabung-timur-nomor-14-tahun-2013.pdf', '', '2019-07-08', '2019-07-08', '', '', 'asiap', 'Y', ''),
(23, 'UNDANG-UNDANG REPUBLIK INDONESIA NOMOR 25 TAHUN 2009 TENTANG PELAYANAN PUBLIK', '2009', 'TENTANG\r\nPELAYANAN PUBLIK', 1, 1, '25uuno25thn2009ttgpelayananpublik.pdf', '', '2019-03-12', '2019-03-12', '', '13', 'ngadmin', 'Y', ''),
(25, 'Undang-Undang Nomor 24 Tahun 2007 Tentang Penanggulangan Bencana', '2019', '', 1, 1, '24uu-24-tahun-2007-badan-penanggulangan-bencana.pdf', '', '2019-07-08', '2019-07-08', '', '', 'asiap', 'Y', '');

-- --------------------------------------------------------

--
-- Table structure for table `produkhukum--`
--

CREATE TABLE IF NOT EXISTS `produkhukum--` (
  `id_produkhukum` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` year(4) NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode_link` int(2) NOT NULL,
  `id_katprodukhukum` int(2) NOT NULL,
  `nama_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `sumber` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dibaca` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dl` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_produkhukum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE IF NOT EXISTS `subkategori` (
  `id_subkategori` int(4) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(4) NOT NULL,
  `nama_subkategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_subkategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  PRIMARY KEY (`id_subkategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=74 ;

--
-- Dumping data for table `subkategori`
--

INSERT INTO `subkategori` (`id_subkategori`, `id_kategori`, `nama_subkategori`, `seo_subkategori`, `username`, `aktif`, `tgl_upload`) VALUES
(1, 2, 'Industri & Perdagangan', 'industri-perdagangan', 'ngadmin', 'Y', '2013-09-15'),
(2, 2, 'Perbankan', 'perbankan', 'ngadmin', 'Y', '2013-09-15'),
(3, 2, 'Makro', 'makro', 'ngadmin', 'Y', '2013-09-15'),
(4, 2, 'Asuransi', 'asuransi', 'ngadmin', 'Y', '2013-09-15'),
(5, 2, 'Karier', 'karier', 'ngadmin', 'Y', '2013-09-15'),
(6, 1, 'Gema Pendidikan', 'gema-pendidikan', 'ngadmin', 'Y', '2013-09-15'),
(7, 1, 'Beasiswa', 'beasiswa', 'ngadmin', 'Y', '2013-09-15'),
(8, 3, 'Politik', 'politik', 'ngadmin', 'Y', '2013-09-15'),
(9, 3, 'Pilkada', 'pilkada', 'ngadmin', 'Y', '2013-09-15'),
(10, 3, 'Pemilu 2014', 'pemilu-2014', 'ngadmin', 'Y', '2013-09-15'),
(11, 5, 'Politik Nasional', 'politik-nasional', 'ngadmin', 'Y', '2013-09-15'),
(12, 5, 'Hukum', 'hukum', 'ngadmin', 'Y', '2013-09-15'),
(13, 5, 'Nusantara', 'nusantara', 'ngadmin', 'Y', '2013-09-15'),
(14, 26, 'Asia', 'asia', 'ngadmin', 'Y', '2013-09-15'),
(15, 26, 'Eropa', 'eropa', 'ngadmin', 'Y', '2013-09-15'),
(16, 26, 'Amerika', 'amerika', 'ngadmin', 'Y', '2013-09-15'),
(17, 26, 'Afrika', 'afrika', 'ngadmin', 'Y', '2013-09-15'),
(18, 26, 'Timur Tengah', 'timur-tengah', 'ngadmin', 'Y', '2013-09-15'),
(20, 6, 'Jambi', 'jambi', 'ngadmin', 'Y', '2013-09-15'),
(21, 6, 'Indonesia', 'indonesia', 'ngadmin', 'Y', '2013-09-15'),
(22, 6, 'Internasional', 'internasional', 'ngadmin', 'Y', '2013-09-15'),
(23, 6, 'UEFA', 'uefa', 'ngadmin', 'Y', '2013-09-15'),
(24, 6, 'Inggris', 'inggris', 'ngadmin', 'Y', '2013-09-15'),
(25, 6, 'Spanyol', 'spanyol', 'ngadmin', 'Y', '2013-09-15'),
(26, 6, 'Italia', 'italia', 'ngadmin', 'Y', '2013-09-15'),
(27, 7, 'Bulu Tangkis', 'bulu-tangkis', 'ngadmin', 'Y', '2013-09-15'),
(28, 7, 'Basket', 'basket', 'ngadmin', 'Y', '2013-09-15'),
(29, 7, 'Tenis', 'tenis', 'ngadmin', 'Y', '2013-09-15'),
(30, 7, 'Moto GP', 'moto-gp', 'ngadmin', 'Y', '2013-09-15'),
(31, 7, 'F1', 'f1', 'ngadmin', 'Y', '2013-09-15'),
(32, 7, 'Tinju', 'tinju', 'ngadmin', 'Y', '2013-09-15'),
(33, 7, 'Lainnya', 'lainnya', 'ngadmin', 'Y', '2013-09-15'),
(34, 8, 'Jambi Selebriti', 'jambi-selebriti', 'ngadmin', 'Y', '2013-09-15'),
(35, 8, 'Nasional', 'nasional', 'ngadmin', 'Y', '2013-09-15'),
(36, 8, 'Luar Negeri', 'luar-negeri', 'ngadmin', 'Y', '2013-09-15'),
(39, 9, 'Visit Jambi 2014', 'visit-jambi-2014', 'ngadmin', 'Y', '2013-09-15'),
(40, 9, 'Backpacker', 'backpaker', 'ngadmin', 'Y', '2013-09-15'),
(41, 9, 'Wisata Jambi', 'wisata-jambi', 'ngadmin', 'Y', '2013-09-15'),
(42, 2, 'Bisnis', 'bisnis', 'ngadmin', '', '2013-09-17'),
(44, 2, 'Pertambangan', 'pertambangan', '', 'Y', '0000-00-00'),
(45, 12, 'Srikandi', 'srikandi', '', 'Y', '0000-00-00'),
(46, 12, 'Buah Bibir', 'buah-bibir', '', 'Y', '0000-00-00'),
(47, 7, 'Sepak Bola', 'sepak-bola', '', '', '0000-00-00'),
(48, 19, 'Seremonial', 'seremonial', '', 'Y', '0000-00-00'),
(49, 19, 'Insight', 'insight', '', 'Y', '0000-00-00'),
(50, 17, 'Selamat Sore | Editorial Harian Jambi', 'selamat-sore--editorial-harian-jambi', '', 'Y', '0000-00-00'),
(51, 17, 'Perspektif', 'perspektif', '', 'Y', '0000-00-00'),
(52, 3, 'Wajah Baru', 'wajah-baru', '', 'Y', '0000-00-00'),
(54, 12, 'Gaya', 'gaya', '', 'Y', '0000-00-00'),
(55, 12, 'Mom & Kids', 'mom--kids', '', 'Y', '0000-00-00'),
(56, 34, 'Humaniora', 'humaniora', '', 'Y', '0000-00-00'),
(57, 34, 'Sekitar Kita', 'sekitar-kita', '', 'Y', '0000-00-00'),
(58, 8, 'Ada-Ada Saja', 'adaada-saja', '', 'Y', '0000-00-00'),
(59, 34, 'Tak Biasa', 'tak-biasa', '', 'Y', '0000-00-00'),
(60, 17, 'Gagasan', 'gagasan', '', 'Y', '0000-00-00'),
(61, 2, 'Kiat', 'kiat', '', 'Y', '0000-00-00'),
(62, 16, 'Hari Ini Dalam Sejarah', 'hari-ini-dalam-sejarah', '', 'Y', '0000-00-00'),
(63, 12, 'Teen', 'teen', '', 'Y', '0000-00-00'),
(64, 34, 'Horison', 'horison', '', 'Y', '0000-00-00'),
(65, 39, 'Khazanah', 'khazanah', '', 'Y', '0000-00-00'),
(66, 39, 'Tadabbur', 'tadabbur', '', 'Y', '0000-00-00'),
(67, 39, 'Hikmah', 'hikmah', '', 'Y', '0000-00-00'),
(68, 37, 'Health', 'health', '', 'Y', '0000-00-00'),
(69, 37, 'Think Smart', 'think-smart', '', 'Y', '0000-00-00'),
(70, 37, 'Sex Sehat', 'sex-sehat', '', 'Y', '0000-00-00'),
(72, 37, 'Aneh', 'aneh', '', 'Y', '0000-00-00'),
(73, 8, 'HOT!', 'hot', '', 'Y', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `id_submenu` int(5) NOT NULL AUTO_INCREMENT,
  `nama_submenu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_submenu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_menu` int(5) NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_submenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id_submenu`, `nama_submenu`, `link_submenu`, `id_menu`, `urutan`, `tgl_posting`, `username`, `keterangan`, `css`, `aktif`) VALUES
(6, 'Sejarah ', 'profil/detail/4/sejarah', 3, 0, '0000-00-00', '', 'Dinas komunikasi dan informatika kabupaten tanjung jabung timur merupakan Organisasi Perangkat Daerah yang terbentuk sejak januari 2017.\r\nDinas Komunikasi dan Informatika telah diatur dengan peraturan yang ada yaitu Peraturan Daerah Kabupaten Tanjung Jabung Timur Nomor 6 Tahun 2016 tentang Pembentukkan dan Susunan Perangkat Daerah dan Peraturan Bupati Tanjung Jabung Timur Nomor 31 Tahun 2016 tentang Kedudukan, Susunan Organisasi, tugas dan Fungsi serta Tata Kerja Perangkat Daerah.\r\nDinas Kominfo merupakan penggabungan urusan komunikasi dan informatika (yang sebelumya digabung di Dinas Perhubungan, Komunikasi dan Informatika).\r\n', '', 'Y'),
(7, 'Sekretariat', 'profil/detail/17/tugas-dan-fungsi-sekretariat-dinas-komunikasi-dan-informatika-kabupaten-tanjung-jab', 7, 1, '0000-00-00', '', '', '', 'Y'),
(8, 'Bidang Pencegahan dan Kesiapsiagaan', 'profil/detail/19/tugas-dan-fungsi-bidang-layanan-egovernment-dinas-kominfo-kabupaten-tanjung-jabung-', 7, 4, '0000-00-00', '', '', '', 'Y'),
(9, 'Bidang Bina Program', 'profil/detail/18/tugas-dan-fungsi-bidang-pengelolaan-informasi-dan-komunikasi-publik-dinas-kominfo-k', 7, 3, '0000-00-00', '', '', '', 'Y'),
(14, 'Undang-undang', 'peraturan/kategori/1/undang-undang', 8, 0, '0000-00-00', '', '', '', 'Y'),
(15, 'Peraturan Daerah', 'peraturan/kategori/2/peraturan-daerah', 8, 0, '0000-00-00', '', '', '', 'Y'),
(16, 'Peraturan Pemerintah', 'peraturan/kategori/4/peraturan-pemerintah', 8, 0, '0000-00-00', '', '', '', 'Y'),
(17, 'Berita Tanjabtim', 'kategori/berita-tanjabtim', 6, 0, '0000-00-00', '', '', '', 'Y'),
(18, 'Banjir dan Longsor', 'kategori/berita-kementrian', 6, 0, '0000-00-00', '', '', '', 'Y'),
(19, 'Galeri Foto', 'galeri', 12, 0, '0000-00-00', '', '', '', 'Y'),
(20, 'Galeri Video', 'video', 12, 0, '0000-00-00', '', '', '', 'N'),
(21, 'Agenda Kegiatan', 'kegiatan', 18, 0, '0000-00-00', '', '', '', 'Y'),
(22, 'Pengumuman', 'pengumuman', 18, 0, '0000-00-00', '', '', '', 'Y'),
(23, 'Data Pegawai/Staff', 'pegawai', 9, 0, '0000-00-00', '', '', '', 'Y'),
(25, 'Link Terkait', 'weblinks', 18, 0, '0000-00-00', '', '', '', 'Y'),
(26, 'Pengaduan Masyarakat', 'pengaduan/data', 18, 0, '0000-00-00', '', '', '', 'Y'),
(27, 'e-Polling', 'polling', 18, 0, '0000-00-00', '', '', '', 'Y'),
(28, 'Karhutla dan Permukiman', 'kategori/berita-umum', 6, 0, '0000-00-00', '', '', '', 'Y'),
(29, 'Struktur Organisasi', 'profil/detail/9/struktur-organisasi', 3, 0, '0000-00-00', '', '', '', 'Y'),
(30, 'Visi & Misi', 'profil/detail/2/visimisidinasperhubunganprovinsijambi', 3, 0, '0000-00-00', '', '', '', 'Y'),
(31, 'Tugas Pokok & Wewenang', 'profil/detail/10/tugas-pokok--wewenang', 3, 0, '0000-00-00', '', '', '', 'Y'),
(32, 'Program Kegiatan', '', 3, 0, '0000-00-00', '', '', '', 'Y'),
(33, 'Daftar Informasi Publik', '', 11, 0, '0000-00-00', '', '', '', 'Y'),
(34, 'Alamat Email OPD', 'profil/detail/15/alamat-email-opd', 11, 0, '0000-00-00', '', '', '', 'N'),
(51, 'Bidang Kedaruratan dan Logistik', 'profil/detail/8/tugas-dan-fungsi-bidang-kedaruratan-dan-logistik-badan-penanggulangan-bencana-daerah', 7, 0, '2019-07-03', 'asiap', '', '', 'Y'),
(52, 'Bidang Rahabilitasi dan Rekonstruksi', 'profil/detail/6/tugas-dan-fungsi-bidang-rehabilitasi-dan-rekonstruksi-badan-penanggulangan-bencana-d', 7, 0, '2019-07-03', 'asiap', '', '', 'Y'),
(54, 'Cuaca', 'berita/detail/86/prakiraan-cuaca-kab-tanjung-jabung-timur-', 20, 0, '2019-07-07', 'muh.ramadhan', '', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `submenuadmin`
--

CREATE TABLE IF NOT EXISTS `submenuadmin` (
  `idsubmenu` int(5) NOT NULL AUTO_INCREMENT,
  `menuutama` int(5) NOT NULL,
  `namasubmenu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linksubmenu` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan2` int(5) NOT NULL,
  PRIMARY KEY (`idsubmenu`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=226 ;

--
-- Dumping data for table `submenuadmin`
--

INSERT INTO `submenuadmin` (`idsubmenu`, `menuutama`, `namasubmenu`, `linksubmenu`, `level`, `publish`, `urutan2`) VALUES
(1, 2, 'Menu Utama Admin', '?module=menuadmin', 'admin', 'Y', 1),
(2, 2, 'Sub Menu Administrator', '?module=submenuadmin', 'admin', 'Y', 2),
(219, 30, 'Jabatan Pegawai', '?module=jabatanpegawai', 'admin', 'Y', 93),
(121, 5, 'Backup Database', '?module=backup', 'admin', 'Y', 16),
(207, 38, 'Pengaduan Online', '?module=pengaduan', 'admin', 'Y', 82),
(148, 5, 'Manejemen User', '?module=user', 'admin,user', 'Y', 25),
(136, 5, 'Profil Institusi', '?module=identitas', 'admin', 'Y', 20),
(161, 5, 'Manajemen Modul', '?module=modul', 'admin', 'Y', 38),
(162, 30, 'Data Pegawai', '?module=pegawai', 'admin,user', 'Y', 39),
(215, 38, 'Banner Web', '?module=iklan', 'admin', 'Y', 89),
(212, 36, 'Data Produk Hukum', '?module=produkhukum', 'admin,user', 'Y', 86),
(213, 36, 'Kategori Produk Hukum', '?module=katprodukhukum', 'admin', 'Y', 87),
(214, 38, 'Telp Penting', '?module=telppenting', 'admin', 'Y', 88),
(180, 37, 'Menu Frontend (Lvl 1)', '?module=menu', 'admin', 'Y', 57),
(181, 37, 'Sub Menu Frontend (Lvl 2)', '?module=submenu', 'admin', 'Y', 58),
(182, 37, 'Sub Sub Menu Frontend (Lvl 3)', '?module=subsubmenu', 'admin', 'Y', 59),
(183, 38, 'Berita', '?module=berita', 'admin,user', 'Y', 60),
(184, 38, 'Kategori Berita', '?module=kategori', 'admin', 'Y', 61),
(186, 38, 'File Download', '?module=download', 'admin,user', 'Y', 63),
(187, 38, 'Image Slide', '?module=slideimage', 'admin', 'Y', 64),
(188, 38, 'Polling', '?module=polling', 'admin', 'Y', 65),
(189, 38, 'Jadwal Kegiatan', '?module=kegiatan', 'admin,user', 'Y', 66),
(190, 38, 'Weblink', '?module=weblink', 'admin,user', 'Y', 67),
(191, 38, 'Halaman Profil', '?module=halamanstatis', 'admin,user', 'Y', 68),
(192, 38, 'Album Photo', '?module=album', 'admin,user', 'Y', 69),
(193, 38, 'Gallery Photo', '?module=galerifoto', 'admin,user', 'Y', 70),
(217, 38, 'Video Youtube', '?module=video', 'admin,user', 'Y', 91),
(218, 38, 'Pengumuman', '?module=pengumuman', 'admin,user', 'Y', 92),
(220, 40, 'Kategori Produk Hukum', '?module=katprodukhukum', 'admin,user', 'Y', 95),
(221, 40, 'Data Peraturan/Produk Hukum', '?module=produkhukum', 'admin,user', 'Y', 96),
(222, 41, 'Data Anggota Dewan', '?module=dewan', 'admin,user', 'Y', 97),
(225, 41, 'Dapil', '?module=dapil', 'admin,user', 'Y', 100),
(224, 41, 'Data Fraksi', '?module=fraksi', 'admin,user', 'Y', 99);

-- --------------------------------------------------------

--
-- Table structure for table `subsubmenu`
--

CREATE TABLE IF NOT EXISTS `subsubmenu` (
  `id_subsubmenu` int(5) NOT NULL AUTO_INCREMENT,
  `nama_subsubmenu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_subsubmenu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_menu` int(5) NOT NULL,
  `id_submenu` int(11) NOT NULL,
  `urutan` int(2) NOT NULL,
  `tgl_posting` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `css` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_subsubmenu`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `subsubmenuadmin`
--

CREATE TABLE IF NOT EXISTS `subsubmenuadmin` (
  `id_subsubmenuadmin` int(5) NOT NULL AUTO_INCREMENT,
  `nama_subsubmenu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_subsubmenu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_menuadmin` int(3) NOT NULL,
  `id_submenuadmin` int(3) NOT NULL,
  `publish` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_subsubmenuadmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE IF NOT EXISTS `support` (
  `id_support` int(2) NOT NULL,
  `id_yahoo1` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_yahoo2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id_support`, `id_yahoo1`, `id_yahoo2`) VALUES
(1, 'i_walkbesideyou@yahoo.com', 'fff');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(5) NOT NULL,
  `trending` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` time NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`, `trending`, `jam`, `tgl_upload`, `tgl_modif`, `aktif`) VALUES
(1, 'Trending Topic', 'ngadmin', 'trending-topic', 0, 'Y', '07:24:27', '2015-09-03', '2017-05-05', 'Y'),
(2, 'Kebakaran Hutan', 'ngadmin', 'kebakaran-hutan', 2, 'Y', '21:29:29', '2015-09-03', '2015-09-03', 'Y'),
(3, 'Kabut Asap', 'ngadmin', 'kabut-asap', 0, 'Y', '07:20:12', '2015-09-03', '2017-05-05', 'Y'),
(4, 'Pilgub Jambi 2015', 'ngadmin', 'pilgub-jambi-2015', 4, 'Y', '21:29:30', '2015-09-03', '2015-09-03', 'Y'),
(5, 'PAN Gabung KIH', 'ngadmin', 'pan-gabung-kih', 8, 'Y', '21:29:24', '2015-09-03', '2015-09-03', 'Y'),
(6, 'Pencabulan', 'ngadmin', 'pencabulan', 1, 'Y', '07:20:58', '2015-09-03', '2017-05-05', 'N'),
(7, 'Krisis Global', 'ngadmin', 'krisis-global', 2, 'N', '07:23:02', '2015-09-03', '2017-05-05', 'Y'),
(8, 'Corruption Watch selama tdanga', 'ngadmin', 'corruption-watch-selama-tdanga', 0, 'Y', '07:41:50', '2015-09-16', '2017-05-05', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `telpon`
--

CREATE TABLE IF NOT EXISTS `telpon` (
  `id_telpon` int(3) NOT NULL AUTO_INCREMENT,
  `nama_telpon` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telpon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(3) NOT NULL,
  `tgl_upload` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_telpon`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `telpon`
--

INSERT INTO `telpon` (`id_telpon`, `nama_telpon`, `no_telpon`, `alamat`, `website`, `email`, `keterangan`, `aktif`, `urutan`, `tgl_upload`, `username`) VALUES
(1, 'Pemadam Kebakaran', '0741 - 0000000', '', '', '', '', 'Y', 0, '2016-04-04', 'ngadmin'),
(2, 'PLN', '0741 - 0000000', '', '', '', '', 'Y', 0, '2016-04-04', 'ngadmin'),
(3, 'RSUD Raden Mataher', '0741 - 0000000', '', '', '', '', 'Y', 0, '2016-04-04', 'ngadmin'),
(4, '', 'tes 1', 'tes 1', 'tes 1', 'tes 1', '', 'Y', 0, '0000-00-00', 'ngadmin'),
(5, 'tes2 sdsdsd', 'tes2 sdsdsd', 'tes2 sdsdsd', 'tes2 sdsdsd', 'tes2 sdsdsd', '', 'N', 0, '0000-00-00', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id_templates` int(5) NOT NULL AUTO_INCREMENT,
  `desktop` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembuat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `desktop`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(16, 'N', 'Mobile Templates', 'admin', 'bermultimedia.com', 'templates/jambinews-mobile', 'N'),
(17, 'Y', 'Jambi News', 'admin', 'Johny Truman', 'templates/jambinews', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tingkatpendidikan`
--

CREATE TABLE IF NOT EXISTS `tingkatpendidikan` (
  `id_pend` int(2) NOT NULL AUTO_INCREMENT,
  `nama_pend` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_pend`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tingkatpendidikan`
--

INSERT INTO `tingkatpendidikan` (`id_pend`, `nama_pend`) VALUES
(1, 'SD / SDLB / MI '),
(2, 'SMP / SMPLB / MTs '),
(3, 'SMA / SMK / MA '),
(4, 'D1'),
(5, 'D2'),
(6, 'D3'),
(7, 'S1'),
(8, 'S2'),
(9, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(3) NOT NULL,
  `nama_lengkap` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kontak` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blokir` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `id`, `nama_lengkap`, `email`, `kontak`, `alamat`, `jabatan`, `level`, `blokir`, `id_session`, `tanggal`, `jam`, `keterangan`) VALUES
('asiap', '202cb962ac59075b964b07152d234b70', 0, 'Asiap', 'Asiap', 'Asiap', '', 'Asiap', 'admin', 'N', '202cb962ac59075b964b07152d234b70asiap', '2019-05-17', '20:26:41', 'Asiap'),
('muh.ramadhan', '098f1a0a40052bfa7d146c0b7a4b76d6', 0, 'Muh. Ramadhan', 'muh.ramadhan@email.com', '082191272636', '', 'Programmer', 'admin', 'N', '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', '2019-07-01', '16:47:09', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE IF NOT EXISTS `users_modul` (
  `id_umod` int(11) NOT NULL AUTO_INCREMENT,
  `id_session` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_modul` int(11) NOT NULL,
  PRIMARY KEY (`id_umod`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=87 ;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(11, '202cb962ac59075b964b07152d234b70joni', 5),
(10, '202cb962ac59075b964b07152d234b70joni', 3),
(3, '202cb962ac59075b964b07152d234b70joni', 4),
(4, '202cb962ac59075b964b07152d234b70joni', 14),
(5, '', 2),
(6, '', 5),
(7, '202cb962ac59075b964b07152d234b70joni', 2),
(9, '202cb962ac59075b964b07152d234b70joni', 1),
(13, '202cb962ac59075b964b07152d234b70nurti', 2),
(14, '75d896e2fbcf22f509615ba98451b005suryaaa', 1),
(15, '75d896e2fbcf22f509615ba98451b005suryaaa', 7),
(16, '75d896e2fbcf22f509615ba98451b005suryaaa', 8),
(17, '75d896e2fbcf22f509615ba98451b005suryaaa', 14),
(18, '75d896e2fbcf22f509615ba98451b005suryaaa', 9),
(19, '75d896e2fbcf22f509615ba98451b005suryaaa', 15),
(20, '75d896e2fbcf22f509615ba98451b005suryaaa', 16),
(21, '202cb962ac59075b964b07152d234b70asiap', 1),
(22, '202cb962ac59075b964b07152d234b70asiap', 2),
(23, '202cb962ac59075b964b07152d234b70asiap', 3),
(24, '202cb962ac59075b964b07152d234b70asiap', 4),
(25, '202cb962ac59075b964b07152d234b70asiap', 5),
(26, '202cb962ac59075b964b07152d234b70asiap', 6),
(27, '202cb962ac59075b964b07152d234b70asiap', 7),
(28, '202cb962ac59075b964b07152d234b70asiap', 8),
(29, '202cb962ac59075b964b07152d234b70asiap', 9),
(30, '202cb962ac59075b964b07152d234b70asiap', 10),
(31, '202cb962ac59075b964b07152d234b70asiap', 11),
(32, '202cb962ac59075b964b07152d234b70asiap', 12),
(33, '202cb962ac59075b964b07152d234b70asiap', 13),
(34, '202cb962ac59075b964b07152d234b70asiap', 14),
(35, '202cb962ac59075b964b07152d234b70asiap', 15),
(36, '202cb962ac59075b964b07152d234b70asiap', 16),
(37, '202cb962ac59075b964b07152d234b70ngadmin', 1),
(38, '202cb962ac59075b964b07152d234b70ngadmin', 2),
(39, '202cb962ac59075b964b07152d234b70ngadmin', 3),
(40, '202cb962ac59075b964b07152d234b70ngadmin', 4),
(41, '202cb962ac59075b964b07152d234b70ngadmin', 5),
(42, '202cb962ac59075b964b07152d234b70ngadmin', 6),
(43, '202cb962ac59075b964b07152d234b70ngadmin', 7),
(44, '202cb962ac59075b964b07152d234b70ngadmin', 8),
(45, '202cb962ac59075b964b07152d234b70ngadmin', 9),
(46, '202cb962ac59075b964b07152d234b70ngadmin', 10),
(47, '202cb962ac59075b964b07152d234b70ngadmin', 11),
(48, '202cb962ac59075b964b07152d234b70ngadmin', 12),
(49, '202cb962ac59075b964b07152d234b70ngadmin', 13),
(50, '202cb962ac59075b964b07152d234b70ngadmin', 14),
(51, '202cb962ac59075b964b07152d234b70ngadmin', 15),
(52, '202cb962ac59075b964b07152d234b70ngadmin', 16),
(53, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 1),
(54, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 2),
(55, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 3),
(56, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 4),
(57, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 5),
(58, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 6),
(59, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 7),
(60, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 8),
(61, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 9),
(62, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 10),
(63, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 11),
(64, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 12),
(65, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 13),
(66, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 14),
(67, 'f3707e311be89ba84236f8c1173d4e10wwwwww', 15),
(69, '1bde5db14048a5797610ee63dbb91d91qweqweqwe', 1),
(70, 'e93ccf5ffc90eefcc0bdb81f87d25d1aasdasd', 1),
(71, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 1),
(72, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 2),
(73, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 3),
(74, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 4),
(75, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 5),
(76, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 6),
(77, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 7),
(78, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 8),
(79, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 9),
(80, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 10),
(81, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 11),
(82, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 12),
(83, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 13),
(84, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 14),
(85, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 15),
(86, '098f1a0a40052bfa7d146c0b7a4b76d6muh.ramadhan', 16);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id_video` int(3) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=37 ;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `link`, `aktif`, `tanggal`, `username`) VALUES
(32, 'DISKOMINTO KAB. TANJUNG JABUNG TIMUR GANDENG KEMENTRIAN, BADAN SIBER DAN SANDI NEGARA ', 'https://www.youtube.com/watch?v=3dbfrSenmIE', 'Y', '2017-06-22', 'ngadmin'),
(34, 'Marhaban Ya Ramadan 1439 H Selamat Menunaikan Ibadah Puasa Kab. Tanjung Jabung Timur', 'https://www.youtube.com/watch?v=V1eABsqOaRE', 'Y', '0000-00-00', 'ngadmin'),
(35, 'Penampilan Goup Band Buterrfly dalam acara pencanangan Kampung Bersih Narkoba', 'https://www.youtube.com/watch?v=OFzuvGGalo4&feature=youtu.be', 'Y', '0000-00-00', 'ngadmin'),
(36, 'Talenta Bermusik Bupati Tanjung Jabung Timur H. Romi Hariyanto', 'https://www.youtube.com/watch?v=MexXHdWpLgM', 'Y', '0000-00-00', 'ngadmin');

-- --------------------------------------------------------

--
-- Table structure for table `weblink`
--

CREATE TABLE IF NOT EXISTS `weblink` (
  `id_weblink` int(2) NOT NULL AUTO_INCREMENT,
  `nama_weblink` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(2) NOT NULL,
  `aktif` enum('Y','N') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_upload` date NOT NULL,
  `tgl_modif` date NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_weblink`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `weblink`
--

INSERT INTO `weblink` (`id_weblink`, `nama_weblink`, `link`, `gambar`, `keterangan`, `urutan`, `aktif`, `tgl_upload`, `tgl_modif`, `username`) VALUES
(1, 'Dewan Perwakilan Rakyat RI', 'http://dpr.go.id', '', '', 0, 'Y', '2014-11-14', '0000-00-00', 'ngadmin'),
(13, 'KPU Kab. Merangin', '', '', '', 0, 'Y', '2014-12-03', '0000-00-00', 'ngadmin'),
(17, 'KPU Kab. Tanjabbar', '', '', '', 0, 'Y', '2016-07-28', '0000-00-00', 'ngadmin'),
(12, 'DRPD Kota Jambi', 'http://dprd.jambikota.go.id', '', '', 0, 'Y', '2014-12-03', '0000-00-00', 'ngadmin'),
(11, 'DPRD Kab. Batanghari', 'http://dprd.batangharikab.go.id', '', '', 0, 'Y', '2014-12-03', '0000-00-00', 'ngadmin'),
(10, 'KPU Provinsi Jambi', 'http://www.kpud-jambiprov.go.id', '', '', 0, 'Y', '2014-12-03', '0000-00-00', 'ngadmin'),
(8, 'Official Website Pemerintah Prov. Jambi', 'http://jambiprov.go.id', '', '', 0, 'Y', '2014-12-03', '0000-00-00', 'ngadmin'),
(14, 'KPU Kab. Kerinci', '', '', '', 0, 'Y', '2014-12-03', '0000-00-00', 'ngadmin'),
(15, 'KPU Kab. Bungo', '', '', '', 0, 'Y', '2014-12-03', '0000-00-00', 'ngadmin'),
(16, 'KPU Kab. Tebo', 'http://kpu-tebokab.go.id/', '', '', 0, 'Y', '2016-07-28', '0000-00-00', 'ngadmin'),
(18, 'KPU Kab. Tanjabtim', '', '', '', 0, 'Y', '2016-07-28', '0000-00-00', 'ngadmin'),
(19, 'adfasdfsf', 'http://dprd.batangharikab.go.id', '', '', 0, 'Y', '2016-07-28', '0000-00-00', 'ngadmin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
