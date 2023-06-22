-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2023 at 08:55 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `from_pesan` varchar(50) NOT NULL,
  `to_email` varchar(50) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tgl_pesan` date NOT NULL,
  `is_read` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `from_pesan`, `to_email`, `subject`, `isi_pesan`, `tgl_pesan`, `is_read`) VALUES
(16, 'wildan', 'super admin', 'welcome', '<p>WELCOME TO IMPORTER 3.0</p>\r\n\r\n<p>SALAM KENAL</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>WILDAN</p>\r\n', '2022-04-15', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sys_bidang`
--

CREATE TABLE `sys_bidang` (
  `id` int(11) NOT NULL,
  `bidang` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sys_bidang`
--

INSERT INTO `sys_bidang` (`id`, `bidang`, `date`) VALUES
(27, 'Dokumen Mahasiswa', '0000-00-00'),
(28, 'DATA INTRUMEN AKREDITASI', '0000-00-00'),
(29, 'DOK LEGALITAS', '0000-00-00'),
(30, 'DOK STATUTA', '0000-00-00'),
(31, 'DOK RIP', '0000-00-00'),
(33, ' DOK RENSTRA', '0000-00-00'),
(34, 'DOK BEASISWA', '0000-00-00'),
(35, 'DOK CUTI MAHASISWA & KARYAWAN', '0000-00-00'),
(36, 'DOK DOSEN & JAD', '0000-00-00'),
(37, 'DOK RENOP', '0000-00-00'),
(38, 'DOK ASESOR', '0000-00-00'),
(40, 'DOK BUKU PEDOMAN AKADEMIK', '0000-00-00'),
(41, 'DOK DENAH GEDUNG', '0000-00-00'),
(42, 'DOK KERJASAMA', '0000-00-00'),
(43, 'DOK DOSEN DAN KARYAWAN', '0000-00-00'),
(44, 'DOK KURIKULUM', '0000-00-00'),
(45, 'DOK HAKI', '0000-00-00'),
(46, 'DOK LKPS (borang)', '0000-00-00'),
(47, 'DOK KEMAHASISWAAN', '0000-00-00'),
(48, 'DOK KODE ETIK TENDIK DAN PENDIK', '0000-00-00'),
(49, 'DOK LED', '0000-00-00'),
(50, 'DOK MAGANG', '0000-00-00'),
(51, 'DOK LPPM', '0000-00-00'),
(52, 'DOK MARKETING', '0000-00-00'),
(53, 'DOK MAHASISWA', '0000-00-00'),
(54, 'DOK MOU', '0000-00-00'),
(55, 'DOK QUISIONER KEPUSASAN MAHASISWA', '0000-00-00'),
(56, 'DOK SK AKREDITASI', '0000-00-00'),
(57, 'DOK SURAT PERNYATAAN', '0000-00-00'),
(58, 'TTD DIGITAL', '0000-00-00'),
(60, 'DOKUMEN KERJA POLITEKNIK SSR', '0000-00-00'),
(61, 'DOK PEMBIAYAAN', '0000-00-00'),
(62, 'DOK PENGAJARAN (PKBM)', '0000-00-00'),
(63, 'DOK PRODI', '0000-00-00'),
(64, 'DOK REKOMENDASI AKREDITASI SSR', '0000-00-00'),
(65, 'DOK SISTEM INFORMASI', '0000-00-00'),
(66, 'DOK SKKNI', '0000-00-00'),
(67, 'DOK SOP', '0000-00-00'),
(68, 'DOK RPS', '0000-00-00'),
(69, 'DOK PENGURUSAN ADMINISTRASI AKREDITASI', '0000-00-00'),
(70, 'DOK TA MHS', '0000-00-00'),
(71, 'DOK. KURIKULUM', '0000-00-00'),
(72, 'SURAT-MENYURAT', '0000-00-00'),
(73, 'DOKUMEN DOSEN DAN KARYAWAN', '0000-00-00'),
(74, 'DOK SPMI', '0000-00-00'),
(75, 'LOGO', '0000-00-00'),
(76, 'SK FIX SSR', '0000-00-00'),
(77, 'DOK SK DOSEN TETAP', '0000-00-00'),
(78, 'AMI', '0000-00-00'),
(80, '.DOKUMEN MUTU - POLTEK SSR', '0000-00-00'),
(81, 'SK Pengelolaaan Orang', '0000-00-00'),
(82, 'SK SDM', '0000-00-00'),
(85, 'SK KEMAHASISWAAN', '0000-00-00'),
(86, 'AMI 19-20', '0000-00-00'),
(87, 'D3-DKV', '0000-00-00'),
(88, 'D4-DESPAR', '0000-00-00'),
(90, 'LEGALITAS, LKPS, LED', '0000-00-00'),
(91, 'RTM', '0000-00-00'),
(92, 'DOKUMEN', '0000-00-00'),
(93, 'Berita Acara', '0000-00-00'),
(94, 'ILKP', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `sys_file`
--

CREATE TABLE `sys_file` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `tgl` date NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `file` varchar(100) NOT NULL,
  `tahun` int(5) NOT NULL,
  `status` enum('N','Y') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sys_file`
--

INSERT INTO `sys_file` (`id`, `id_menu`, `nama_file`, `tgl`, `deskripsi`, `file`, `tahun`, `status`) VALUES
(20, 11, 'SK Pengangkatan Pak darwin', '2022-11-03', '123/SK-YRTI/VII/2019', '44.-SK- Yayasan tentang Mekanisme dan prosedur rekrutmen dosen dan tenaga kependidikan.pdf', 19, 'N'),
(21, 11, 'SK Pengangkatan Husna', '2022-11-03', '123/SK-YRTI/VII/2019', '43.-SK- Direktur tentang Pengangkatan Pejabat Struktural di lingkungan Politeknik SSR.pdf', 2019, 'N'),
(23, 18, 'surat pendirian politeknik', '2022-11-04', '703/KPT/I/2019', '06. DOK SK MENTRI IJIN PENDIRIAN POLTEK SSR.pdf', 2019, 'N'),
(24, 18, 'SK Pendirian Yayasan RTI', '2022-11-04', '02  Tanggal 02-11-2016', '1. DOK AKTA NOTARIS YAYASAN 2 nov 2016 - 4 Agustus 2017 - 4 Sep 2018 - 29 Oktober 2018.pdf', 2016, 'N'),
(25, 18, 'SK Perubahan YRTI 2020', '2022-11-04', '09  Tanggal 12 Maret 2020', '2. DOK AKTA PERUBAHAN YRTI 12 MARET 2020.pdf', 2020, 'N'),
(26, 18, 'Sertifikat YRTI', '2022-11-04', '-', '5. DOK Sertifikan  Pengesahan Yayasan RTI.pdf', 2020, 'N'),
(27, 13, 'RENOP DKV 2021', '2022-11-04', '-', 'Renop Politeknik SSR DKV 2021.pdf', 2021, 'N'),
(28, 14, 'RENOP DESPAR 2021', '2022-11-04', '-', 'Renop Politeknik SSR Destinasi Pariwisata 2021 .pdf', 2021, 'N'),
(29, 21, 'SKKNI PRODI ANIMASI', '2022-11-04', '-', 'SKKNI 2011-286 (ANIMASI).pdf', 2014, 'N'),
(30, 15, 'RENOP ANIMASI 2021', '2022-11-04', '-', 'Renop Politeknik SSR ANIMASI 2021.pdf', 2021, 'N'),
(31, 21, 'SKKNI PRODI DESPAR', '2022-11-04', '02', 'SKKNI 2011-286 (DESPAR).pdf', 2011, 'N'),
(32, 21, 'SKKNI PRODI DKV', '2022-11-04', '03', 'SKKNI-Nomor-301 (DKV).pdf', 2016, 'N'),
(33, 21, 'SKKNI ANIMASI 2020', '2022-11-04', '01', 'SKKNI 2020-173.pdf.pdf', 2020, 'N'),
(34, 32, 'RENSTRA POLITEKNIK', '2022-11-04', '-', '041118 Rencana Strategis Politeknik SSR.pdf', 2018, 'N'),
(35, 33, 'SK Kelompok riset', '2022-11-04', '031/SK/Dir-SSR/V/2019', '22.- SK-Kelompok-Riset.pdf', 2019, 'N'),
(36, 34, 'AMI DKV 2020', '2022-11-04', '02', 'AMI komplit matrik 19-20 ganjil-DKV.pdf', 2019, 'N'),
(37, 37, 'DENAH KAMPUS', '2022-11-04', '-', 'denah politeknik.pdf', 2022, 'N'),
(39, 38, 'DATA DOSEN TETAP', '2022-11-04', '-', 'Data Dosen Tetap Politeknik SSR lengkap.htm', 2022, 'N'),
(41, 40, 'PRODI ANIMASI', '2022-11-04', '-', 'LKPS ANIMASI.htm', 2021, 'N'),
(42, 40, 'PRODI DKV', '2022-11-04', '-', 'LKPS DKV SSR.htm', 2021, 'N'),
(44, 40, 'PRODI DESPAR', '2022-11-04', '-', 'LKPS DESPAR.htm', 2021, 'N'),
(45, 44, 'GREEN SCREEN', '2022-11-05', '1', 'IMG_3515.JPG', 2022, 'Y'),
(46, 45, 'NUSANTARA - AUDIOTORIUM', '2022-11-05', '-', 'IMG_3483.JPG', 2022, 'Y'),
(47, 0, 'MEETING ROOM 1', '2022-11-05', '-', 'IMG_3555.JPG', 2022, 'Y'),
(48, 0, 'MEETING ROOM 2', '2022-11-05', '-', '_MG_9990.JPG', 2022, 'Y'),
(49, 0, 'LABORATORIUM KOMPUTER 1', '2022-11-05', '-', 'IMG_3712.JPG', 2022, 'Y'),
(50, 46, '1. SOP Penerimaan Mahasiswa Baru', '2022-11-05', '-', '1. SOP Penerimaan Mahasiswa Baru.pdf', 0, 'Y'),
(51, 0, 'LABORATORIUM KOMPUTER 2', '2022-11-05', '-', 'IMG_3533.JPG', 2022, 'Y'),
(52, 47, '2. SOP Her Registrasi Akademik', '2022-11-05', '-', '2. SOP Her Registrasi Akademik.pdf', 0, 'Y'),
(53, 48, '3. SOP Pembimbing Akademik', '2022-11-05', '-', '3. SOP Pembimbing Akademik.pdf', 0, 'Y'),
(54, 0, 'HOTEL ROOM 101', '2022-11-05', '-', '_MG_9977.JPG', 2022, 'Y'),
(55, 0, 'HOTEL ROOM 102', '2022-11-05', '-', '_MG_9982.JPG', 2022, 'Y'),
(56, 0, 'HOTEL ROOM 101', '2022-11-05', '-', '_MG_9983.JPG', 2002, 'Y'),
(57, 0, 'HOTEL ROOM 101', '2022-11-05', '-', '_MG_9977.JPG', 2022, 'Y'),
(58, 49, '4. SOP Dosen Pengampu MK', '2022-11-05', '-', '4. SOP Dosen Pengampu MK.pdf', 0, 'Y'),
(59, 78, 'LABORATORIUM KOMPUTER 1', '2022-11-05', '-', 'IMG_3712.JPG', 2022, 'Y'),
(60, 50, '5. SOP Penyelenggaraan UTS UAS', '2022-11-05', '-', '5. SOP Penyelenggaraan UTS UAS.pdf', 0, 'Y'),
(61, 51, '6. SOP Pengajuan Judul Skripsi', '2022-11-05', '-', '6. SOP Pengajuan Judul Skripsi.pdf', 0, 'Y'),
(62, 52, '7. SOP Pembimbing Skripsi', '2022-11-05', '-', '7. SOP Pembimbing Skripsi.pdf', 0, 'Y'),
(63, 53, '8. SOP Seminar Proposal', '2022-11-05', '-', '8. SOP Seminar Proposal.pdf', 0, 'Y'),
(64, 0, 'HOTEL ROOM 101', '2022-11-05', '-', '_MG_9977.JPG', 2011, 'Y'),
(65, 54, '9. SOP Sidang Skripsi', '2022-11-05', '-', '9. SOP Sidang Skripsi.pdf', 0, 'Y'),
(66, 0, 'HOTEL ROOM 101', '2022-11-05', '-', '_MG_9983.JPG', 2022, 'Y'),
(67, 55, '10. SOP Yudisium', '2022-11-05', '-', '10. SOP Yudisium.pdf', 0, 'Y'),
(68, 56, '11. SOP Wisuda', '2022-11-05', '-', '11. SOP Wisuda.pdf', 0, 'Y'),
(69, 57, '12. SOP Pengambilan Ijazah', '2022-11-05', '-', '12. SOP Pengambilan Ijazah.pdf', 0, 'Y'),
(70, 58, '13. SOP Perencanaan Pembelajaran FIX', '2022-11-05', '-', '13. SOP Perencanaan Pembelajaran FIX.pdf', 0, 'Y'),
(71, 59, '14. SOP Pelaksanaan Pembelajaran', '2022-11-05', '-', '14. SOP Pelaksanaan Pembelajaran.pdf', 0, 'Y'),
(72, 0, 'LABORATORIUM KOMPUTER 2', '2022-11-05', '-', 'IMG_3533.JPG', 2022, 'Y'),
(73, 60, '15. SOP Evaluasi Pembelajaran', '2022-11-05', '-', '15. SOP Evaluasi Pembelajaran.pdf', 0, 'Y'),
(74, 61, '16. SOP Monitoring Pembelajaran oleh KaProdi dan Mahasiswa', '2022-11-05', '-', '16. SOP Monitoring Pembelajaran oleh KaProdi dan Mahasiswa.pdf', 0, 'Y'),
(76, 62, '17. SOP Evaluasi Pembelajaran oleh KaProdi', '2022-11-05', '-', '17. SOP Evaluasi Pembelajaran oleh KaProdi.pdf', 0, 'Y'),
(77, 63, '18. SOP Evaluasi Pembelajaran oleh UPM', '2022-11-05', '-', '18. SOP Evaluasi Pembelajaran oleh UPM.pdf', 0, 'Y'),
(78, 84, 'LABORATORIUM KOMPUTER 2', '2022-11-05', '-', 'IMG_3533.JPG', 2022, 'Y'),
(79, 64, '19. SOP Pengangkatan Ketua Prodi', '2022-11-05', '-', '19. SOP Pengangkatan Ketua Prodi.pdf', 0, 'Y'),
(80, 65, '20. SOP Pengelolaan LPPM', '2022-11-05', '-', '20. SOP Pengelolaan LPPM.pdf', 0, 'Y'),
(81, 66, '21. SOP Pengelolaan Perpustakaan', '2022-11-05', '-', '21. SOP Pengelolaan Perpustakaan.pdf', 0, 'Y'),
(82, 67, '22. SOP Penelusuran Alumni dan Pengguna Alumni (Tracer Study)', '2022-11-05', '-', '22. SOP Penelusuran Alumni dan Pengguna Alumni (Tracer Study).pdf', 0, 'Y'),
(83, 68, '23 SOP Kepuasan Mahasiswa', '2022-11-05', '-', '23 SOP Kepuasan Mahasiswa.pdf', 0, 'Y'),
(84, 69, '23. SOP Bantuan Dana Lanjut Studi', '2022-11-05', '-', '23. SOP Bantuan Dana Lanjut Studi.pdf', 0, 'Y'),
(85, 70, '24. SOP Perancangan & Pengembangan Kurikulum dan Prodi', '2022-11-05', '-', '24. SOP Perancangan & Pengembangan Kurikulum dan Prodi.pdf', 0, 'Y'),
(86, 87, 'MEETING ROOM 1', '2022-11-05', '-', 'IMG_3555.JPG', 2022, 'Y'),
(87, 72, '25 SOP Administrsi Kemahasiswaan', '2022-11-05', '-', '25 SOP Administrsi Kemahasiswaan.pdf', 0, 'Y'),
(88, 73, '25. SOP Rekruitmen Dosen Baru', '2022-11-05', '-', '25. SOP Rekruitmen Dosen Baru.pdf', 0, 'Y'),
(89, 88, 'MEETING ROOM 2', '2022-11-05', '-', '_MG_9990.JPG', 2022, 'Y'),
(90, 75, '26. SOP Pembuatan Buku Ajar', '2022-11-05', '-', '26. SOP Pembuatan Buku Ajar.pdf', 0, 'Y'),
(91, 85, 'HOTEL ROOM 101', '2022-11-05', '-', '_MG_9977.JPG', 2022, 'Y'),
(92, 76, '27. SOP Pengelolaan LAB', '2022-11-05', '-', '27. SOP Pengelolaan LAB.pdf', 0, 'Y'),
(93, 77, '28 SOP Penempatan Magang & Kerja', '2022-11-05', '-', '28 SOP Penempatan Magang & Kerja.pdf', 0, 'Y'),
(94, 86, 'HOTEL ROOM 102', '2022-11-05', '-', '_MG_9982.JPG', 2022, 'Y'),
(98, 92, 'ADINDA RENAN KUSUMAWARDANI', '2023-04-11', 'Animasi', 'Adinda Renan Kusumawardani.pdf', 2022, 'Y'),
(99, 92, 'ARDIYA EBIET SISWANTO', '2023-04-11', 'Animasi', 'Ardiya Ebiet Siswanto.pdf', 2022, 'Y'),
(100, 92, 'ARIEL PUTRA PARSAULIAN HUTAURUK', '2023-04-11', 'Animasi', 'Ariel Putra Parsaulian Hutauruk.pdf', 2022, 'Y'),
(101, 92, 'FAIZ ABRAR', '2023-04-11', 'Animasi', 'Faiz Abrar.pdf', 2022, 'Y'),
(102, 92, 'JEREMY EVAN', '2023-04-11', 'Animasi', 'Jeremy Evan.pdf', 2022, 'Y'),
(103, 92, 'LIANDRY RIZKY ALFIANO', '2023-04-11', 'Animasi', 'Liandry Rizky Alfiano.pdf', 2022, 'Y'),
(104, 92, 'LINTANG CANNA PRAJNA PARAMITHA', '2023-04-11', 'Animasi', 'Lintang Canna Prajna Paramitha.pdf', 2022, 'Y'),
(105, 92, 'MUFLIHUL ANAM', '2023-04-11', 'Animasi', 'Muflihul Anam.pdf', 2022, 'Y'),
(106, 92, 'MUHAMMAD FARIS RIYADI', '2023-04-11', 'Animasi', 'Muhammad Faris Riyadi.pdf', 2022, 'Y'),
(108, 92, 'MUHAMMAD FAWWAZ ABHINAYA', '2023-04-11', 'Animasi', 'Muhammad Fawwaz Abhinaya.pdf', 2022, 'Y'),
(109, 92, 'MUTIARA RAMADHANI', '2023-04-11', 'Animasi', 'Mutiara Ramadhani.pdf', 2022, 'Y'),
(110, 92, 'NATHANIA CHRISTY KURNIADI', '2023-04-11', 'Animasi', 'Nathania Christy Kurniadi.pdf', 2022, 'Y'),
(111, 92, 'REINHARDT MOZES WAYONG', '2023-04-11', 'Animasi', 'Reinhardt Mozes Wayong.pdf', 2022, 'Y'),
(112, 92, 'RIAN HANIF', '2023-04-11', 'Animasi', 'Rian Hanif.pdf', 2022, 'Y'),
(113, 92, 'NAUFAL SABILUN FIRDAUSI', '2023-04-11', 'Animasi', 'Naufal Sabilun Firdaus.pdf', 2022, 'Y'),
(114, 92, 'AMAN SETIAWAN', '2023-04-11', 'Animasi', 'Aman Setiawan.pdf', 2022, 'Y'),
(115, 92, 'ARYA REYNATA TRIASPUTRA', '2023-04-11', 'Despar', 'Arya Reynata Triasputra.pdf', 2022, 'Y'),
(116, 92, 'BRIAN YUDHA PRATAMA', '2023-04-11', 'Despar', 'Brian Yudha Pratama.pdf', 2022, 'Y'),
(117, 92, 'SAFFAANA SABRINA HIDAYATI', '2023-04-11', 'animasi - 9034520004', 'saffaana Sabrina_animasi 2020_9034520004.pdf', 2020, 'Y'),
(118, 92, 'DIAN FAIRUZ PUTRI HARTONO', '2023-04-11', 'Despar', 'Dian Fairuz Putri Hartono.pdf', 2022, 'Y'),
(119, 92, 'MARSELINA KRISTIN', '2023-04-11', 'Despar', 'Marselina Kristin.pdf', 2022, 'Y'),
(120, 92, 'MUHAMMAD RAFIF RAMADHAN', '2023-04-11', 'Despar', 'Muhammad Rafif Ramadhan.pdf', 2022, 'Y'),
(121, 92, 'TARA STEFHANI MELVA', '2023-04-11', 'Despar', 'Tara Stefhani Melva.pdf', 2022, 'Y'),
(122, 92, 'ABDULLAH ABID RAZZAN', '2023-04-11', 'DKV', 'Abdullah Abid Razzan.pdf', 2022, 'Y'),
(123, 92, 'ALI ABDULLAH AL FARISI', '2023-04-11', 'DKV', 'Ali Abdullah Al Farisi.pdf', 2022, 'Y'),
(124, 92, 'ARYO PUTRA RIZQULLAH', '2023-04-11', 'DKV', 'Aryo Putra Rizqullah.pdf', 2022, 'Y'),
(126, 92, 'FAUZAN DEVA IRFAN ARDIANSYAH', '2023-04-11', 'DKV', 'Fauzan Deva Ivan Ardiansyah.pdf', 2022, 'Y'),
(127, 92, 'FAUZI DEVA IVAN ARDIANSYAH', '2023-04-11', 'DKV', 'Fauzi Deva Ivan Ardiansyah.pdf', 2022, 'Y'),
(128, 92, 'FIKRI YUDHA AL JAZEERA', '2023-04-11', 'DKV', 'Fikri Yudha Al Jazeera.pdf', 2022, 'Y'),
(129, 92, 'JAUHAR LUTHFI SETYO', '2023-04-11', 'DKV', 'Jauhar Lutfi Setyo.pdf', 2022, 'Y'),
(130, 92, 'JOANNE BINTANG PRIMASITA', '2023-04-11', 'DKV', 'Joanne Bintang Primasita.pdf', 2022, 'Y'),
(131, 92, 'LABIB MUHAMMAD', '2023-04-11', 'DKV', 'Labib Muhammad.pdf', 2022, 'Y'),
(132, 92, 'M. AGIL ZHAFRAN ALRIZKY', '2023-04-11', 'DKV', 'M.Agil Zhafran Alrizky.pdf', 2022, 'Y'),
(133, 92, 'MAULANA FIKRY RAMADHAN', '2023-04-11', 'DKV', 'Maulana Fikry Ramadhan.pdf', 2022, 'Y'),
(134, 92, 'MOCH. FAZNI MUBAROQ', '2023-04-11', 'DKV', 'Moch. Fazni Mubaroq.pdf', 2022, 'Y'),
(135, 92, 'MUHAMMAD ALAWI', '2023-04-11', 'DKV', 'Muhammad Alawi.pdf', 2022, 'Y'),
(136, 92, 'PRISCILLA SULIAWAN', '2023-04-11', '9034520028', 'PriscillaSuliawan_Animasi_9034520028.pdf', 2020, 'Y'),
(137, 92, 'MUHAMMAD BAGUS AFRIZA ALY', '2023-04-11', 'DKV', 'Muhammad Bagus Afriza Aly.pdf', 2022, 'Y'),
(138, 92, 'NABIL', '2023-04-11', 'DKV', 'Nabil.pdf', 2022, 'Y'),
(139, 92, 'NUR SARGIAH', '2023-04-11', 'DKV', 'Nur Sargiah.pdf', 2022, 'Y'),
(140, 92, 'RAFLI ARDHANA', '2023-04-11', 'DKV', 'Rafli Ardhana.pdf', 2022, 'Y'),
(141, 92, 'ROBY ALDIO NOVANTARA', '2023-04-11', 'DKV', 'Roby Aldio Novantara.pdf', 2022, 'Y'),
(142, 92, 'ROCKY ALFARIDZHI', '2023-04-11', 'DKV', 'Rocky Alfaridzhi.pdf', 2022, 'Y'),
(143, 92, 'YOHANES RANGGA KELANA MAKUWINDI', '2023-04-11', 'DKV', 'Yohanes Kelangga Kelana Makuwindi.pdf', 2022, 'Y'),
(144, 92, 'ROBBY JUNANTO', '2023-04-11', 'DKV', 'Robby Junanto.pdf', 2022, 'Y'),
(145, 92, 'ALIYA DWIFITRIANI ICHWANSYAH', '2023-04-11', 'DKV', 'Aliya Dwifitriani Ichwansyah.pdf', 2022, 'Y'),
(147, 92, ' MUHAMMAD NAUFAL AFIF ANANTA SAKTI', '2023-04-11', 'Despar', 'Afif Naufal Sakti- DESPAR .pdf', 2020, 'Y'),
(149, 92, 'WISNU CAHYO PRATAMA', '2023-04-11', 'DKV', 'akte_ijazah_kk_ktp_merged.pdf', 2020, 'Y'),
(151, 92, 'AILSA AZZAHRAH', '2023-04-11', 'Animasi', 'Ailsa Azzahrah.pdf', 2021, 'Y'),
(152, 0, ' BILLY GERARDO EMANUEL BOLUNG', '2023-04-11', '9044121027', 'FILE BILLY.pdf', 2021, 'Y'),
(153, 92, 'AQIYAK JOHAR A', '2023-04-11', 'Animasi', 'Aqiyak Johar A.pdf', 2021, 'Y'),
(154, 92, 'BILLY GERARDO EMANUEL BOLUNG', '2023-04-11', '9044121027', 'FILE BILLY.pdf', 2021, 'Y'),
(155, 92, 'AYUNDA PUJA KASUMA', '2023-04-11', 'Animasi', 'Ayunda Puja Kusuma.pdf', 2021, 'Y'),
(156, 92, 'MUHAMMAD RAIHAN RIVALDI BARUS', '2023-04-11', '9044121009', 'MHD. RAIHAN R. BARUS_DKV21_9044121009_compressed.pdf', 2021, 'Y'),
(157, 92, 'SAYYID SYEICHAN ALWI MAPPASEWA', '2023-04-11', 'DKV', 'BIODATA SSR - Sayyid Syeichan Alwi Mappasewa.pdf', 2021, 'Y'),
(158, 92, 'AUDREY SAVATIARA KRISNER', '2023-04-11', 'Despar', 'Audrey Savatiara.pdf', 2021, 'Y'),
(159, 93, 'Ceklist Doc Prodi 9 Criteria', '2023-04-13', '0', 'Ceklist Doc Prodi 9 Criteria.htm', 2023, 'Y'),
(160, 93, 'Instrumen Monev', '2023-04-13', '-', 'Instrumen Monev.pdf', 2023, 'Y'),
(161, 93, 'List Data Dokumen Akreditasi', '2023-04-13', '-', 'List Data Dokumen Akreditasi.htm', 2023, 'Y'),
(162, 93, 'LIST DATA KOMPONEN AKREDITASI', '2023-04-13', '-', 'LIST DATA KOMPONEN AKREDITASI.htm', 2023, 'Y'),
(163, 93, 'Monitoring PPKS', '2023-04-13', '-', 'Monitoring PPKS.pdf', 2023, 'Y'),
(164, 93, 'ST. Asesor Politeknik Sains Seni Rekakresi -DESPAR', '2023-04-13', '-', 'ST. Asesor Politeknik Sains Seni Rekakresi -DESPAR.pdf', 2023, 'Y'),
(165, 93, 'Undangan Monev Sarana dan Prasarana serta Kelembagaan Agustus 2022', '2023-04-13', '-', 'Undangan Monev Sarana dan Prasarana serta Kelembagaan Agustus 2022.pdf', 2023, 'Y'),
(166, 94, 'DOK AKTA NOTARIS YAYASAN 2 nov 2016 - 4 Agustus 2017 - 4 Sep 2018 - 29 Oktober 2018', '2023-04-13', '0', '1. DOK AKTA NOTARIS YAYASAN 2 nov 2016 - 4 Agustus 2017 - 4 Sep 2018 - 29 Oktober 2018.pdf', 2023, 'Y'),
(167, 93, 'Ceklist Doc Prodi 9 Criteria', '2023-04-13', '-', 'Ceklist Doc Prodi 9 Criteria.htm', 2023, 'Y'),
(168, 93, 'CHECK LIST Data Dukung Prodi Manajemen Administrasi UPG', '2023-04-13', '-', 'CHECK LIST Data Dukung Prodi Manajemen Administrasi UPG.pdf', 2023, 'Y'),
(169, 94, 'DOK AKTA PERUBAHAN YRTI 12 MARET 2020', '2023-04-13', '0', '2. DOK AKTA PERUBAHAN YRTI 12 MARET 2020.pdf', 2023, 'Y'),
(170, 94, 'DOK AKTA PENDIRIAN DAN SK KEMENKUMHAM YRTI', '2023-04-13', '0', '3. DOK AKTA PENDIRIAN DAN SK KEMENKUMHAM YRTI.pdf', 2023, 'Y'),
(171, 95, 'Statuta Politeknik PP.pdf (1)', '2023-04-13', '-', 'Statuta Politeknik PP doc (1).pdf', 2023, 'Y'),
(172, 95, 'Statuta Politeknik PP.pdf', '2023-04-13', '-', 'Statuta Politeknik PP.pdf.pdf', 2023, 'Y'),
(173, 95, 'Statuta PoliteknikSSR 2019 ', '2023-04-13', '-', 'Statuta PoliteknikSSR 2019 .pdf', 2023, 'Y'),
(174, 95, 'Statuta PoliteknikSSR 2021 (1)', '2023-04-13', '-', 'Statuta PoliteknikSSR 2021 (1).pdf', 2023, 'Y'),
(175, 95, 'Statuta PoliteknikSSR 2021 (1)-dikonversi (3)', '2023-04-13', '-', 'Statuta PoliteknikSSR 2021 (1)-dikonversi (3).pdf', 2023, 'Y'),
(176, 95, 'Statuta PoliteknikSSR 2021 (1)-dikonversi (4)', '2023-04-13', '-', 'Statuta PoliteknikSSR 2021 (1)-dikonversi (4).pdf', 2023, 'Y'),
(177, 95, 'Statuta PoliteknikSSR 2021 (1)-dikonversi', '2023-04-13', '-', 'Statuta PoliteknikSSR 2021 (1)-dikonversi.pdf', 2023, 'Y'),
(178, 95, 'Statuta PoliteknikSSR 2021 ', '2023-04-13', '-', 'Statuta PoliteknikSSR 2021 .pdf', 2023, 'Y'),
(179, 95, 'Statuta PoliteknikSSR 2021 ', '2023-04-13', '-', 'Statuta PoliteknikSSR 2021 .pdf', 2023, 'Y'),
(180, 0, 'DOK  AKTA Yayasan YRTI 2016', '2023-04-13', '0', '4. DOK  AKTA Yayasan YRTI 2016.pdf', 2023, 'Y'),
(181, 95, 'Statuta PoliteknikSSR 2021 1607 (SYD_EM)', '2023-04-13', '-', 'Statuta PoliteknikSSR 2021 1607 (SYD_EM).pdf', 2023, 'Y'),
(182, 95, 'Statuta PoliteknikSSR 2021', '2023-04-13', '-', 'Statuta PoliteknikSSR 2021.pdf', 2023, 'Y'),
(183, 95, 'Statuta SSR 2020', '2023-04-13', '-', 'Statuta SSR 2020.pdf', 2023, 'Y'),
(184, 95, 'Statuta PoliteknikSSR 2019', '2023-04-13', '-', 'Statuta PoliteknikSSR 2019.pdf', 2023, 'Y'),
(185, 95, '00. Statuta Politeknik-SSR 2021', '2023-04-13', '-', '00. Statuta Politeknik-SSR 2021.pdf', 2023, 'Y'),
(186, 0, 'DOK AKTA Yayasan YRTI 2016', '2023-04-13', '0', '4. DOK  AKTA Yayasan YRTI 2016.pdf', 2023, 'Y'),
(187, 95, 'Statuta PoliteknikSSR 2021', '2023-04-13', '-', 'Statuta PoliteknikSSR 2021.pdf', 2023, 'Y'),
(188, 94, ' DOK  AKTA Yayasan YRTI 2016', '2023-04-13', '0', '4. DOK  AKTA Yayasan YRTI 2016.pdf', 2023, 'Y'),
(189, 96, 'RIP Politeknik Sains Seni Rekakreasi', '2023-04-13', '-', 'RIP Politeknik Sains Seni Rekakreasi.pdf', 2023, 'Y'),
(190, 94, 'DOK  AKTA Yayasan YRTI 2016', '2023-04-13', '0', '4. DOK  AKTA Yayasan YRTI 2016.pdf', 2023, 'Y'),
(191, 96, ' RIP Universitas Ichsan Satya', '2023-04-13', '-', '2. RIP Universitas Ichsan Satya.pdf', 2023, 'Y'),
(192, 96, 'RIP Politeknik Sains Seni Rekakreasi', '2023-04-13', '-', 'RIP Politeknik Sains Seni Rekakreasi.pdf', 2023, 'Y'),
(193, 94, 'DOK Sertifikan  Pengesahan Yayasan RTI', '2023-04-13', '0', '5. DOK Sertifikan  Pengesahan Yayasan RTI.pdf', 2023, 'Y'),
(194, 96, 'RIP Politeknik Sains Seni Rekakreasi', '2023-04-13', '-', 'RIP Politeknik Sains Seni Rekakreasi.pdf', 2023, 'Y'),
(195, 96, 'RIP POLITEKNIK SSR. fix', '2023-04-13', '-', 'RIP POLITEKNIK SSR. fix.pdf', 2023, 'Y'),
(196, 94, 'DOK SK MENTRI IJIN PENDIRIAN POLTEK SSR', '2023-04-13', '0', '06. DOK SK MENTRI IJIN PENDIRIAN POLTEK SSR.pdf', 2023, 'Y'),
(197, 94, 'Akta Notaris Pendirian Yay RTI', '2023-04-13', '0', 'Akta Notaris Pendirian Yay RTI.pdf', 2023, 'Y'),
(198, 97, '_MG_9977', '2023-04-13', '-', '_MG_9977.JPG', 2023, 'Y'),
(199, 97, '_MG_9982', '2023-04-13', '-', '_MG_9982.JPG', 2023, 'Y'),
(200, 97, '_MG_9990', '2023-04-13', '-', '_MG_9990.JPG', 2023, 'Y'),
(201, 97, '041118 Rencana Strategis Politeknik SSR', '2023-04-13', '-', '041118 Rencana Strategis Politeknik SSR.pdf', 2023, 'Y'),
(202, 94, 'Akta Notaris Yay RTI- 2020', '2023-04-13', '0', 'Akta Notaris Yay RTI- 2020.pdf', 2023, 'Y'),
(203, 97, 'AMI komplit matrik 19-20 ganjil-DKV', '2023-04-13', '-', 'AMI komplit matrik 19-20 ganjil-DKV.pdf', 2023, 'Y'),
(204, 0, 'AKTA NOTARIS YAYASAN 2 nov 2016 - 4 Agustus 2017 - 4 Sep 2018 - 29 Oktober 2018', '2023-04-13', '0', 'AKTA NOTARIS YAYASAN 2 nov 2016 - 4 Agustus 2017 - 4 Sep 2018 - 29 Oktober 2018.pdf', 2023, 'Y'),
(205, 97, 'denah politeknik', '2023-04-13', '-', 'denah politeknik.pdf', 2023, 'Y'),
(206, 97, 'IMG_3483', '2023-04-13', '-', 'IMG_3483.JPG', 2023, 'Y'),
(207, 94, 'Bagaimana menentukan visi.', '2023-04-13', '0', 'Bagaimana menentukan visi.pdf', 2023, 'Y'),
(208, 97, 'IMG_3515', '2023-04-13', '-', 'IMG_3515.JPG', 2023, 'Y'),
(209, 0, 'LAMAN YANG PERLU DIPERBAIKI', '2023-04-13', '0', 'LAMAN YANG PERLU DIPERBAIKI.pdf', 2023, 'Y'),
(210, 97, 'IMG_3533', '2023-04-13', '-', 'IMG_3533.JPG', 2023, 'Y'),
(211, 94, 'SURAT PERNYATAAN', '2023-04-13', '0', 'SURAT PERNYATAAN.pdf', 2023, 'Y'),
(212, 97, 'IMG_3555', '2023-04-13', '-', 'IMG_3555.JPG', 2023, 'Y'),
(213, 97, 'IMG_3712', '2023-04-13', '-', 'IMG_3712.JPG', 2023, 'Y'),
(214, 97, 'LKPS ANIMASI', '2023-04-13', '-', 'LKPS ANIMASI.htm', 2023, 'Y'),
(215, 97, 'LKPS DESPAR', '2023-04-13', '-', 'LKPS DESPAR.htm', 2023, 'Y'),
(216, 94, 'DOK  AKTA Yayasan YRTI 2016', '2023-04-13', '0', '4. DOK  AKTA Yayasan YRTI 2016.pdf', 2023, 'N'),
(217, 97, 'LKPS DKV SSR', '2023-04-13', '-', 'LKPS DKV SSR.htm', 2023, 'Y'),
(218, 98, '041118 Rencana Strategis Politeknik SSR', '2023-04-13', '0', '041118 Rencana Strategis Politeknik SSR.pdf', 2023, 'Y'),
(219, 97, 'Renop Politeknik SSR ANIMASI 2021', '2023-04-13', '-', 'Renop Politeknik SSR ANIMASI 2021.pdf', 2023, 'Y'),
(220, 98, '028_Rek_SK_Renstra-IT-Del-2020-2024-beserta-lampiran', '2023-04-13', '0', '028_Rek_SK_Renstra-IT-Del-2020-2024-beserta-lampiran.pdf', 2023, 'Y'),
(221, 97, 'Renop Politeknik SSR Destinasi Pariwisata 2021 ', '2023-04-13', '-', 'Renop Politeknik SSR Destinasi Pariwisata 2021 .pdf', 2023, 'Y'),
(222, 97, 'Renop Politeknik SSR DKV 2021', '2023-04-13', '-', 'Renop Politeknik SSR DKV 2021.pdf', 2023, 'Y'),
(223, 98, '041118 Rencana Strategis Politeknik SSR', '2023-04-13', '0', '041118 Rencana Strategis Politeknik SSR.pdf', 2023, 'Y'),
(224, 97, 'SKKNI 2011-286 (ANIMASI)', '2023-04-13', '2011-286', 'SKKNI 2011-286 (ANIMASI).pdf', 2023, 'Y'),
(225, 0, '041118 Rencana Strategis Politeknik SSR-1', '2023-04-13', '0', '041118 Rencana Strategis Politeknik SSR-1.pdf', 2023, 'Y'),
(226, 97, 'SKKNI 2011-286 (DESPAR)', '2023-04-13', '2011-286', 'SKKNI 2011-286 (DESPAR).pdf', 2023, 'Y'),
(227, 98, 'LEMBAR PENGESAHAN RENSTRA 3 Prodi', '2023-04-13', '0', 'LEMBAR PENGESAHAN RENSTRA 3 Prodi.pdf', 2023, 'Y'),
(228, 97, 'SKKNI-Nomor-301 - 2016 (DKV)', '2023-04-13', '301-2016', 'SKKNI-Nomor-301 - 2016 (DKV).pdf', 2023, 'Y'),
(229, 98, 'LEMBAR PENGESAHAN RENSTRA 3 Prodi', '2023-04-13', '0', 'LEMBAR PENGESAHAN RENSTRA 3 Prodi.pdf', 2023, 'Y'),
(230, 0, 'S U R A T K E P U T U S A N renstra', '2023-04-13', '0', 'S U R A T K E P U T U S A N renstra.pdf', 2023, 'Y'),
(231, 99, 'SK BEASISWA', '2023-04-13', '-', 'SK BEASISWA.pdf', 2023, 'Y'),
(232, 98, 'S U R A T K E P U T U S A N renstra', '2023-04-13', '0', 'S U R A T K E P U T U S A N renstra.pdf', 2023, 'Y'),
(233, 99, 'SK PENETAAN PENERIA BEASISWA', '2023-04-13', '-', 'SK PENETAAN PENERIA BEASISWA.pdf', 2023, 'Y'),
(234, 99, 'SK PENETAPAN PENERIMA BEASISWA', '2023-04-13', '-', 'SK PENETAPAN PENERIMA BEASISWA.pdf', 2023, 'Y'),
(235, 98, 'S U R A T K E P U T U S A N renstra', '2023-04-13', '0', 'S U R A T K E P U T U S A N renstra.pdf', 2023, 'Y'),
(236, 99, 'SOP BEASISWA', '2023-04-13', '-', 'SOP BEASISWA.pdf', 2023, 'Y'),
(237, 99, 'SURAT BALASAN', '2023-04-13', '-', 'SURAT BALASAN.pdf', 2023, 'Y'),
(238, 98, 'SK Renop Renstra FT 2015 referensi', '2023-04-13', '0', 'SK Renop Renstra FT 2015 referensi.pdf', 2023, 'Y'),
(239, 98, 'SK Renop Renstra FT 2015 referensi', '2023-04-13', '0', 'SK Renop Renstra FT 2015 referensi.pdf', 2023, 'Y'),
(240, 100, 'FRM-CUTI-MHS SSR', '2023-04-13', '-', 'FRM-CUTI-MHS SSR.pdf', 2023, 'Y'),
(241, 98, 'SK RENSTRA FIX', '2023-04-13', '0', 'SK RENSTRA FIX.pdf', 2023, 'Y'),
(242, 98, 'SK Renstra', '2023-04-13', '0', 'SK Renstra.pdf', 2023, 'Y'),
(243, 101, 'BAMBANG-Animasi-1 BAP-Pengantar animasi', '2023-04-13', '-', 'BAMBANG-Animasi-1 BAP-Pengantar animasi.pdf', 2023, 'Y'),
(244, 102, 'Renop Politeknik SSR 2020', '2023-04-13', '0', 'Renop Politeknik SSR 2020.pdf', 2023, 'Y'),
(245, 102, 'Renop Politeknik SSR ANIMASI 2020', '2023-04-13', '0', 'Renop Politeknik SSR ANIMASI 2020.pdf', 2023, 'Y'),
(246, 101, 'BAMBANG-Animasi-2 BAP-Manajemen Produksi Animasi', '2023-04-13', '-', 'BAMBANG-Animasi-2 BAP-Manajemen Produksi Animasi.pdf', 2023, 'Y'),
(247, 102, 'Renop Politeknik SSR DESPAR 2020', '2023-04-13', '0', 'Renop Politeknik SSR DESPAR 2020.pdf', 2023, 'Y'),
(248, 101, 'BAMBANG-Animasi-2 BAP-Studi budaya', '2023-04-13', '-', 'BAMBANG-Animasi-2 BAP-Studi budaya.pdf', 2023, 'Y'),
(249, 102, 'Renop Politeknik SSR Destinasi Pariwisata 2020 ww (1)', '2023-04-13', '0', 'Renop Politeknik SSR Destinasi Pariwisata 2020 ww (1).pdf', 2023, 'Y'),
(250, 102, 'Renop Politeknik SSR DKV 2020 ww (1)', '2023-04-13', '0', 'Renop Politeknik SSR DKV 2020 ww (1).pdf', 2023, 'Y'),
(251, 102, 'Renop Politeknik SSR DKV 2020', '2023-04-13', '0', 'Renop Politeknik SSR DKV 2020.pdf', 2023, 'Y'),
(252, 102, 'Renop Politeknik SSR 2020', '2023-04-13', '0', 'Renop Politeknik SSR 2020.pdf', 2023, 'Y'),
(253, 102, 'Renop Politeknik SSR ANIMASI 2020', '2023-04-13', '0', 'Renop Politeknik SSR ANIMASI 2020.pdf', 2023, 'Y'),
(254, 101, 'BAMBANG-Animasi-3 BAP-Animasi 2D', '2023-04-13', '-', 'BAMBANG-Animasi-3 BAP-Animasi 2D.pdf', 2023, 'Y'),
(255, 102, 'Renop Politeknik SSR DESPAR 2020', '2023-04-13', '0', 'Renop Politeknik SSR DESPAR 2020.pdf', 2023, 'Y'),
(256, 102, 'Renop Politeknik SSR DKV 2020', '2023-04-13', '0', 'Renop Politeknik SSR DKV 2020.pdf', 2023, 'Y'),
(257, 101, 'BAMBANG-Animasi-3 BAP-Mekanik Gerak Digital', '2023-04-13', '-', 'BAMBANG-Animasi-3 BAP-Mekanik Gerak Digital.pdf', 2023, 'Y'),
(258, 101, 'BAMBANG-Animasi-4 BAP-Effect visual', '2023-04-13', '-', 'BAMBANG-Animasi-4 BAP-Effect visual.pdf', 2023, 'Y'),
(259, 102, 'Renop Politeknik SSR Institusi 2020', '2023-04-13', '0', 'Renop Politeknik SSR Institusi 2020.pdf', 2023, 'Y'),
(260, 101, 'BAMBANG-Animasi-5 BAP-Produk Animasi', '2023-04-13', '-', 'BAMBANG-Animasi-5 BAP-Produk Animasi.pdf', 2023, 'Y'),
(261, 102, 'Renop Politeknik SSR ANIMASI 2021 em (3)', '2023-04-13', '0', 'Renop Politeknik SSR ANIMASI 2021 em (3).pdf', 2023, 'Y'),
(262, 102, 'Renop Politeknik SSR ANIMASI 2021', '2023-04-13', '0', 'Renop Politeknik SSR ANIMASI 2021.pdf', 2023, 'Y'),
(263, 101, 'Dani-Animasi-1 BAP-Dasar fotografi', '2023-04-13', '-', 'Dani-Animasi-1 BAP-Dasar fotografi.pdf', 2023, 'Y'),
(264, 102, 'Renop Politeknik SSR Destinasi Pariwisata 2021 ', '2023-04-13', '0', 'Renop Politeknik SSR Destinasi Pariwisata 2021 .pdf', 2023, 'Y'),
(265, 102, 'Renop Politeknik SSR Destinasi Pariwisata 2021 ', '2023-04-13', '0', 'Renop Politeknik SSR Destinasi Pariwisata 2021 .pdf', 2023, 'Y'),
(266, 101, 'Dani-Animasi-2 BAP-Cinematografi', '2023-04-13', '-', 'Dani-Animasi-2 BAP-Cinematografi.pdf', 2023, 'Y'),
(267, 102, 'Renop Politeknik SSR Destinasi Pariwisata 2021 ', '2023-04-13', 'Renop Politeknik SSR Destinasi Pariwisata 2021 ', 'Renop Politeknik SSR DKV 2021.pdf', 2023, 'Y'),
(268, 102, 'Renop Politeknik SSR DKV 2021', '2023-04-13', '0', 'Renop Politeknik SSR DKV 2021.pdf', 2023, 'Y'),
(269, 101, 'Dani-Animasi-2 BAP-Dasar Penyutradaraan', '2023-04-13', '-', 'Dani-Animasi-2 BAP-Dasar Penyutradaraan.pdf', 2023, 'Y'),
(270, 102, 'Renop Politeknik SSR Institusi 2021', '2023-04-13', '0', 'Renop Politeknik SSR Institusi 2021.pdf', 2023, 'Y'),
(271, 102, 'Renop Politeknik SSR Institusi 2021', '2023-04-13', '0', 'Renop Politeknik SSR Institusi 2021.pdf', 2023, 'Y'),
(272, 101, 'Dani-Animasi-3 BAP-Konsep seni', '2023-04-13', '-', 'Dani-Animasi-3 BAP-Konsep seni.pdf', 2023, 'Y'),
(273, 102, 'Renop Politeknik SSR ANIMASI 2020 em (3)', '2023-04-13', '0', 'Renop Politeknik SSR ANIMASI 2020 em (3).pdf', 2023, 'Y'),
(274, 101, 'Dani-Animasi-3 BAP-Musik animasi', '2023-04-13', '-', 'Dani-Animasi-3 BAP-Musik animasi.pdf', 2023, 'Y'),
(275, 101, 'Dani-Animasi-4 BAP-Musik animasi II', '2023-04-13', '-', 'Dani-Animasi-4 BAP-Musik animasi II.pdf', 2023, 'Y'),
(276, 102, 'Renop Politeknik SSR Destinasi pariwisata 2020 (1)', '2023-04-13', '0', 'Renop Politeknik SSR Destinasi pariwisata 2020 (1).pdf', 2023, 'Y'),
(277, 102, 'Renop Politeknik SSR Destinasi pariwisata 2020 ', '2023-04-13', '0', 'Renop Politeknik SSR Destinasi pariwisata 2020 .pdf', 2023, 'Y'),
(278, 102, 'Renop Politeknik SSR DKV 2020', '2023-04-13', '0', 'Renop Politeknik SSR DKV 2020.pdf', 2023, 'Y'),
(279, 102, 'Renop Politeknik SSR Institusi 2020', '2023-04-13', '0', 'Renop Politeknik SSR Institusi 2020.pdf', 2023, 'Y'),
(280, 102, 'SK Renop Despar', '2023-04-13', '0', 'SK Renop Despar.pdf', 2023, 'Y'),
(281, 101, 'Dani-Animasi-5 BAP-Sinematografi Lanjut', '2023-04-13', '-', 'Dani-Animasi-5 BAP-Sinematografi Lanjut.pdf', 2023, 'Y'),
(282, 101, 'Darwin -DESPAR-2 BAP-Antropologi Pariwisata', '2023-04-13', '-', 'Darwin -DESPAR-2 BAP-Antropologi Pariwisata.pdf', 2023, 'Y'),
(283, 101, 'Darwin -DESPAR-2 BAP-Sistem Transportasi Pariwisata', '2023-04-13', '-', 'Darwin -DESPAR-2 BAP-Sistem Transportasi Pariwisata.pdf', 2023, 'Y'),
(284, 101, 'DWIKA-DKV-1 BAP-BAhasa Rupa', '2023-04-13', '-', 'DWIKA-DKV-1 BAP-BAhasa Rupa.pdf', 2023, 'Y'),
(285, 101, 'DWIKA-DKV-1 BAP-Color Theory', '2023-04-13', '-', 'DWIKA-DKV-1 BAP-Color Theory.pdf', 2023, 'Y'),
(286, 101, 'DWIKA-DKV-1 BAP-Sejarah seni rupa dan desain', '2023-04-13', '-', 'DWIKA-DKV-1 BAP-Sejarah seni rupa dan desain.pdf', 2023, 'Y'),
(287, 101, 'DWIKA-DKV-2 BAP-Nirmana Trimatra', '2023-04-13', '-', 'DWIKA-DKV-2 BAP-Nirmana Trimatra.pdf', 2023, 'Y'),
(288, 101, 'DWIKA-DKV-2 BAP-Perancangan Identitas Visual', '2023-04-13', '-', 'DWIKA-DKV-2 BAP-Perancangan Identitas Visual.pdf', 2023, 'Y'),
(289, 101, 'DWIKA-DKV-4 BAP-Perancangan Promosi', '2023-04-13', '-', 'DWIKA-DKV-4 BAP-Perancangan Promosi.pdf', 2023, 'Y'),
(290, 101, 'FEBRIANA AYU-DESPAR-2 BAP-Human Resource Management', '2023-04-13', '-', 'FEBRIANA AYU-DESPAR-2 BAP-Human Resource Management.pdf', 2023, 'Y'),
(291, 101, 'FEBRIANA AYU-DESPAR-2 BAP-Pengenalan hotel Indstri', '2023-04-13', '-', 'FEBRIANA AYU-DESPAR-2 BAP-Pengenalan hotel Indstri.pdf', 2023, 'Y'),
(292, 101, 'FEBRIANA AYU-DESPAR-4 BAP-Pemasaran destinasi pariwisata 2', '2023-04-13', '-', 'FEBRIANA AYU-DESPAR-4 BAP-Pemasaran destinasi pariwisata 2.pdf', 2023, 'Y'),
(293, 101, 'GETAR-DKV-1 BAP-Desain thinking', '2023-04-13', '-', 'GETAR-DKV-1 BAP-Desain thinking.pdf', 2023, 'Y'),
(294, 103, 'kegiatan AL', '2023-04-13', '0', 'kegiatan AL.pdf', 2023, 'Y'),
(295, 101, 'GETAR-DKV-1 BAP-komputer grafis', '2023-04-13', '-', 'GETAR-DKV-1 BAP-komputer grafis.pdf', 2023, 'Y'),
(296, 103, 'kodeetik asessor', '2023-04-13', '0', 'kodeetik asessor.pdf', 2023, 'Y'),
(297, 101, 'GETAR-DKV-2 BAP-Berfikir Visual', '2023-04-13', '-', 'GETAR-DKV-2 BAP-Berfikir Visual.pdf', 2023, 'Y'),
(298, 103, 'rini', '2023-04-13', '0', 'rini.jpg', 2023, 'Y'),
(299, 101, 'GETAR-DKV-2 BAP-Digital Grafis', '2023-04-13', '-', 'GETAR-DKV-2 BAP-Digital Grafis.pdf', 2023, 'Y'),
(300, 103, 'suratala53278 (SURAT TUGAS ASEESOR)', '2023-04-13', '0', 'suratala53278 (SURAT TUGAS ASEESOR).pdf', 2023, 'Y'),
(301, 101, 'JANERU-DKV-1 BAP-Dasar fotografi', '2023-04-13', '-', 'JANERU-DKV-1 BAP-Dasar fotografi.pdf', 2023, 'Y'),
(302, 103, 'suratalp53278(Pemberitahuan AL)', '2023-04-13', '0', 'suratalp53278(Pemberitahuan AL).pdf', 2023, 'Y'),
(303, 101, 'JANERU-DKV-1 BAP-Visual Element', '2023-04-13', '-', 'JANERU-DKV-1 BAP-Visual Element.pdf', 2023, 'Y'),
(304, 101, 'JANERU-DKV-2 BAP-Fotografi Desain', '2023-04-13', '-', 'JANERU-DKV-2 BAP-Fotografi Desain.pdf', 2023, 'Y'),
(305, 101, 'JANERU-DKV-2 BAP-Tipografi Aplikatif', '2023-04-13', '-', 'JANERU-DKV-2 BAP-Tipografi Aplikatif.pdf', 2023, 'Y'),
(306, 101, 'JANERU-DKV-4 BAP- Audio Visual', '2023-04-13', '-', 'JANERU-DKV-4 BAP- Audio Visual.pdf', 2023, 'Y'),
(307, 101, 'rizcy-Animasi-1 BAP-desain elementer', '2023-04-13', '-', 'rizcy-Animasi-1 BAP-desain elementer.pdf', 2023, 'Y'),
(308, 101, 'rizcy-Animasi-5 BAP-Editing II', '2023-04-13', '-', 'rizcy-Animasi-5 BAP-Editing II.pdf', 2023, 'Y'),
(309, 101, 'rizcy-DKV-2 BAP-Dasar Penulisan Naskah', '2023-04-13', '-', 'rizcy-DKV-2 BAP-Dasar Penulisan Naskah.pdf', 2023, 'Y'),
(310, 101, 'rizcy-DKV-2 BAP-desain grafis', '2023-04-13', '-', 'rizcy-DKV-2 BAP-desain grafis.pdf', 2023, 'Y'),
(311, 101, 'rizcy-DKV-4 BAP-Editing1', '2023-04-13', '-', 'rizcy-DKV-4 BAP-Editing1.pdf', 2023, 'Y'),
(312, 101, 'TEGUH-DESPAR-2 BAP-BHS INGGRIS II', '2023-04-13', '-', 'TEGUH-DESPAR-2 BAP-BHS INGGRIS II.pdf', 2023, 'Y'),
(313, 101, 'TEGUH-DESPAR-2 BAP-Usaha jasa perhotean 1', '2023-04-13', '-', 'TEGUH-DESPAR-2 BAP-Usaha jasa perhotean 1.pdf', 2023, 'Y'),
(314, 101, 'TEGUH-DESPAR-4 BAP-Layanan Kntor Depan', '2023-04-13', '-', 'TEGUH-DESPAR-4 BAP-Layanan Kntor Depan.pdf', 2023, 'Y'),
(315, 101, ' SK PENGANGKATAN DOSEN TETAP YAYASAN SSR', '2023-04-13', '-', '01. SK PENGANGKATAN DOSEN TETAP YAYASAN SSR.pdf', 2023, 'Y'),
(316, 104, 'BUKU PEDOMAN POLITEKNIK SSR', '2023-04-13', '0', 'BUKU PEDOMAN POLITEKNIK SSR.pdf', 2023, 'Y'),
(317, 104, 'Daftar Isi', '2023-04-13', '0', 'Daftar Isi.pdf', 2023, 'Y'),
(318, 101, 'SURAT PENGAJUAN DOSEN TETAP OLEH UNIT AKADEMIK', '2023-04-13', '-', '01. SURAT PENGAJUAN DOSEN TETAP OLEH UNIT AKADEMIK.pdf', 2023, 'Y'),
(319, 104, 'Daftar Isi', '2023-04-13', '0', 'Daftar Isi.pdf', 2023, 'Y'),
(320, 101, ' BERITA ACARA PERKULIAHAN DOSEN yang diajukan', '2023-04-13', '-', '02. BERITA ACARA PERKULIAHAN DOSEN yang diajukan.pdf', 2023, 'Y'),
(321, 101, 'ABSEN MAHASISWA UNTUK JAD SSR', '2023-04-13', '-', 'ABSEN MAHASISWA UNTUK JAD SSR.htm', 2023, 'Y'),
(322, 101, 'Data Mahasiswa', '2023-04-13', '-', 'Data Mahasiswa.htm', 2023, 'Y'),
(323, 101, 'DOKUMEN DATA DOSEN DAN PERYARATAN JAD', '2023-04-13', '-', 'DOKUMEN DATA DOSEN DAN PERYARATAN JAD.htm', 2023, 'Y'),
(324, 101, 'Sk pengangkatan dosen tetap oleh yayasan', '2023-04-13', '-', 'Sk pengangkatan dosen tetap oleh yayasan.pdf', 2023, 'Y'),
(325, 101, 'SURAT  LOLOS BUTUH DOSEN', '2023-04-13', '-', 'SURAT  LOLOS BUTUH DOSEN.pdf', 2023, 'Y'),
(326, 105, 'denah politeknik', '2023-04-13', '0', 'denah politeknik.pdf', 2023, 'Y'),
(327, 106, '1 MOU THEATER IMAX KEONG EMAS TMII', '2023-04-13', '-', '1 MOU THEATER IMAX KEONG EMAS TMII.pdf', 2023, 'Y'),
(328, 106, '2  MOU STIH PAINAN', '2023-04-13', '-', '2  MOU STIH PAINAN.pdf', 2023, 'Y'),
(330, 106, '3  MOU STIKOMN AL-HAERIAH', '2023-04-13', '-', '3  MOU STIKOMN AL-HAERIAH.pdf', 2023, 'Y'),
(331, 107, 'Sandra YAP Dianggorobles', '2023-04-13', '0', 'Jobdesk.pdf', 2023, 'Y'),
(332, 106, '4  MOU STIE BANTEN', '2023-04-13', '-', '4  MOU STIE BANTEN.pdf', 2023, 'Y'),
(333, 107, 'Sandra YAP Dianggorobles', '2023-04-13', '0', 'Lamamaran Kerja.pdf', 2023, 'Y'),
(334, 106, '5 MOU SMK METLAND', '2023-04-13', '-', '5 MOU SMK METLAND.pdf', 2023, 'Y'),
(335, 107, 'Sandra YAP Dianggorobles', '2023-04-13', '0', 'Surat kontrak kerja.pdf', 2023, 'Y'),
(336, 106, '6  MOU HOTEL AVENZEL', '2023-04-13', '-', '6  MOU HOTEL AVENZEL.pdf', 2023, 'Y'),
(337, 106, '7   MOU BRAND INC', '2023-04-13', '-', '7   MOU BRAND INC.pdf', 2023, 'Y'),
(338, 106, '8   MOU STAR 4 HIRE', '2023-04-13', '-', '8   MOU STAR 4 HIRE.pdf', 2023, 'Y'),
(339, 106, '1  MOU SMK METLAND', '2023-04-13', '-', '1  MOU SMK METLAND.pdf', 2023, 'Y'),
(340, 106, '2  MOU THEATER IMAX KEONG EMAS TMII', '2023-04-13', '-', '2  MOU THEATER IMAX KEONG EMAS TMII.pdf', 2023, 'Y'),
(341, 106, '3  MOU STIH PAINAN', '2023-04-13', '-', '3  MOU STIH PAINAN.pdf', 2023, 'Y'),
(342, 106, '4  MOU STIKOMN AL-HAERIAH', '2023-04-13', '-', '4  MOU STIKOMN AL-HAERIAH.pdf', 2023, 'Y'),
(343, 106, '5  MOU STIE BANTEN', '2023-04-13', '-', '5  MOU STIE BANTEN.pdf', 2023, 'Y'),
(344, 107, 'Sandra YAP Dianggorobles', '2023-04-13', '0', 'CV.pdf', 2023, 'Y'),
(345, 106, '6  MOU IKOPIN', '2023-04-13', '-', '6  MOU IKOPIN.pdf', 2023, 'Y'),
(347, 106, '1  MOU THEATER IMAX KEONG EMAS TMII', '2023-04-13', '-', '1  MOU THEATER IMAX KEONG EMAS TMII.pdf', 2023, 'Y'),
(348, 106, '2  MOU STIH PAINAN', '2023-04-13', '-', '2  MOU STIH PAINAN.pdf', 2023, 'Y'),
(349, 106, '3  MOU STIKOMN AL-HAERIAH', '2023-04-13', '-', '3  MOU STIKOMN AL-HAERIAH.pdf', 2023, 'Y'),
(350, 106, '4  MOU STIE BANTEN', '2023-04-13', '-', '4  MOU STIE BANTEN.pdf', 2023, 'Y'),
(351, 106, '5  MOU BRAND INC', '2023-04-13', '-', '5  MOU BRAND INC.pdf', 2023, 'Y'),
(352, 106, '6  MOU SMK METLAND', '2023-04-13', '-', '6  MOU SMK METLAND.pdf', 2023, 'Y'),
(353, 108, 'Kurikulum Program Animasi SSR', '2023-04-13', '-', 'Kurikulum Program Animasi SSR.htm', 2023, 'Y'),
(354, 110, 'ilkpti9-49563-20-764240789c5e924da168d72f10e47c7c', '2023-04-13', '-', 'ilkpti9-49563-20-764240789c5e924da168d72f10e47c7c.htm', 2023, 'Y'),
(355, 111, 'SK Senat Mahasiswa 2022-2023', '2023-04-13', '0', 'SK Senat Mahasiswa 2022-2023.pdf', 2023, 'Y'),
(356, 110, 'ledi9-49563-18-f17e49691173ea4db60e20e3763dfddd', '2023-04-13', '-', 'ledi9-49563-18-f17e49691173ea4db60e20e3763dfddd.pdf', 2023, 'Y'),
(357, 110, 'li9-49563-19-4d19e47bca81ff1c2ca487514ce0f4b7', '2023-04-13', '-', 'li9-49563-19-4d19e47bca81ff1c2ca487514ce0f4b7.pdf', 2023, 'Y'),
(358, 110, 'lkpti9-49563-17-639ed35edd191aa9f27b5d44c918d4be', '2023-04-13', '-', 'lkpti9-49563-17-639ed35edd191aa9f27b5d44c918d4be.pdf', 2023, 'Y'),
(359, 110, 'sp9-49563-16-456f6336fe815ab5f1d531f8c94a5626', '2023-04-13', '-', 'sp9-49563-16-456f6336fe815ab5f1d531f8c94a5626.pdf', 2023, 'Y'),
(360, 110, 'sppi9-49563-15-13136683897c18bd094abb1a74e80d89', '2023-04-13', '-', 'sppi9-49563-15-13136683897c18bd094abb1a74e80d89.pdf', 2023, 'Y'),
(361, 112, 'Pedoman Kode etik auditor', '2023-04-13', '0', 'Pedoman Kode etik auditor.pdf', 2023, 'Y'),
(362, 112, 'SK Dewan Kode Etik', '2023-04-13', '0', 'SK Dewan Kode Etik.pdf', 2023, 'Y'),
(363, 110, 'LED PS DKV SSR', '2023-04-13', '-', 'LED PS DKV SSR.pdf', 2023, 'Y'),
(364, 112, 'SK Etika Tenaga Pendidik dan pendidikan', '2023-04-13', '0', 'SK Etika Tenaga Pendidik dan pendidikan.pdf', 2023, 'Y'),
(365, 110, 'LED PS DKV SSR', '2023-04-13', '-', 'LED PS DKV SSR.pdf', 2023, 'Y'),
(366, 110, 'LKPS DKV SSR', '2023-04-13', '-', 'LKPS DKV SSR.pdf', 2023, 'Y'),
(367, 110, 'LKPS DKV SSR', '2023-04-13', '-', 'LKPS DKV SSR.htm', 2023, 'Y'),
(368, 110, 'SK, Renstra. Renop DKV', '2023-04-13', '-', 'SK, Renstra. Renop DKV.pdf', 2023, 'Y'),
(369, 113, 'ilkpti9-49563-20-764240789c5e924da168d72f10e47c7c', '2023-04-13', '0', 'ilkpti9-49563-20-764240789c5e924da168d72f10e47c7c.htm', 2023, 'Y'),
(370, 113, 'ledi9-49563-18-f17e49691173ea4db60e20e3763dfddd', '2023-04-13', '0', 'ledi9-49563-18-f17e49691173ea4db60e20e3763dfddd.pdf', 2023, 'Y'),
(371, 110, 'LED Despar', '2023-04-13', '-', 'LED Despar.pdf', 2023, 'Y'),
(372, 113, 'li9-49563-19-4d19e47bca81ff1c2ca487514ce0f4b7', '2023-04-13', '0', 'li9-49563-19-4d19e47bca81ff1c2ca487514ce0f4b7.pdf', 2023, 'Y'),
(374, 113, 'lkpti9-49563-17-639ed35edd191aa9f27b5d44c918d4be', '2023-04-13', '0', 'lkpti9-49563-17-639ed35edd191aa9f27b5d44c918d4be.pdf', 2023, 'Y'),
(375, 110, 'LKPS Despar', '2023-04-13', '-', 'LKPS Despar.pdf', 2023, 'Y'),
(376, 113, 'sp9-49563-16-456f6336fe815ab5f1d531f8c94a5626', '2023-04-13', '0', 'sp9-49563-16-456f6336fe815ab5f1d531f8c94a5626.pdf', 2023, 'Y'),
(377, 110, 'LKPS Despar', '2023-04-13', '-', 'LKPS Despar.htm', 2023, 'Y'),
(378, 113, 'sppi9-49563-15-13136683897c18bd094abb1a74e80d89', '2023-04-13', '0', 'sppi9-49563-15-13136683897c18bd094abb1a74e80d89.pdf', 2023, 'Y'),
(379, 110, 'SK, Renstra, Renop Despar', '2023-04-13', '-', 'SK, Renstra, Renop Despar.pdf', 2023, 'Y'),
(380, 113, 'LED  ANIMASI', '2023-04-13', '0', 'LED  ANIMASI.pdf', 2023, 'Y'),
(381, 110, 'Borang_AIPT', '2023-04-13', '-', 'Borang_AIPT.pdf', 2023, 'Y'),
(382, 113, 'LED DESPAR', '2023-04-13', '0', 'LED DESPAR.pdf', 2023, 'Y'),
(383, 113, 'LED PS DKV SSR', '2023-04-13', '0', 'LED PS DKV SSR.pdf', 2023, 'Y'),
(384, 110, 'LKPS ANIMASI', '2023-04-13', '-', 'LKPS ANIMASI.htm', 2023, 'Y'),
(385, 110, 'LKPS DESPAR', '2023-04-13', '-', 'LKPS DESPAR.htm', 2023, 'Y'),
(386, 114, 'BUKU PEDOMAN PERAKTIK KERJA NYATA', '2023-04-13', '0', 'BUKU PEDOMAN PERAKTIK KERJA NYATA.pdf', 2023, 'Y'),
(387, 110, 'LKPS DKV SSR', '2023-04-13', '-', 'LKPS DKV SSR.htm', 2023, 'Y'),
(388, 114, 'BUKU PEDOMAN PRAKTEK KERJA NYATA SSR', '2023-04-13', '0', 'BUKU PEDOMAN PRAKTEK KERJA NYATA SSR.pdf', 2023, 'Y'),
(389, 114, '007 - Surat Pengantar Magang - Alexandra Rachel Deffarani Diwara', '2023-04-13', '0', '007 - Surat Pengantar Magang - Alexandra Rachel Deffarani Diwara.pdf', 2023, 'Y'),
(390, 114, 'Dokument yang harus ada', '2023-04-13', '0', 'Dokument yang harus ada.pdf', 2023, 'Y'),
(391, 115, 'SURAT TUGAS yosafat PKM', '2023-04-13', '-', 'SURAT TUGAS yosafat PKM.pdf', 2023, 'Y'),
(392, 116, 'buku tamu marketing dan umum', '2023-04-13', '0', 'buku tamu marketing dan umum.htm', 2023, 'Y'),
(393, 116, 'TATA CARA DAN FORMULA KOMISI MARKETING', '2023-04-13', '0', 'TATA CARA DAN FORMULA KOMISI MARKETING.pdf', 2023, 'Y'),
(394, 117, 'ALUR PNERIMAAN MAHASISWA BARU POLITEKNIK SAINS SENI REKAKREASI', '2023-04-13', '-', 'ALUR PNERIMAAN MAHASISWA BARU POLITEKNIK SAINS SENI REKAKREASI.pdf', 2023, 'Y'),
(395, 118, 'Apa itu MoU', '2023-04-13', '0', 'Apa itu MoU.pdf', 2023, 'Y'),
(396, 119, 'Kuesioner Survei Kepuasan Mahasiswa', '2023-04-13', '0', 'Kuesioner Survei Kepuasan Mahasiswa.pdf', 2023, 'Y'),
(397, 119, 'Kuesioner Survei Kepuasan Mahasiswa', '2023-04-13', '0', 'Kuesioner Survei Kepuasan Mahasiswa.pdf', 2023, 'Y'),
(398, 119, 'QUISIONER KEPUASAN MAHASISWA', '2023-04-13', '0', 'QUISIONER KEPUASAN MAHASISWA.pdf', 2023, 'Y'),
(399, 120, 'SSK-58475-2164554700c437e49b1f162fc0dee2b2', '2023-04-13', '0', 'SSK-58475-2164554700c437e49b1f162fc0dee2b2.pdf', 2023, 'Y'),
(400, 120, 'SSK-58485-f974cff0c6f3dabe947b4aafe6332e60', '2023-04-13', '0', 'SSK-58485-f974cff0c6f3dabe947b4aafe6332e60.pdf', 2023, 'Y'),
(401, 120, 'SSK-AKREDITASI', '2023-04-13', '0', 'SSK-AKREDITASI.pdf', 2023, 'Y'),
(402, 121, 'SURAT PERNYATAAN PENGELOLAAN PT SSR KE POLITEKNIK SSR', '2023-04-13', '0', 'SURAT PERNYATAAN PENGELOLAAN PT SSR KE POLITEKNIK SSR.pdf', 2023, 'Y'),
(403, 123, 'CamScanner 09-16-2022 11.00', '2023-04-14', '0', 'CamScanner 09-16-2022 11.00.pdf', 2023, 'Y'),
(404, 110, 'Berita Acara AK_kirim', '2023-04-14', '-', 'Berita Acara AK_kirim.htm', 2023, 'Y'),
(405, 123, 'STEMPEL POLTEK SSR(1)', '2023-04-14', '0', 'STEMPEL POLTEK SSR(1).png', 2023, 'Y'),
(406, 110, 'Copy of Berita Acara AK_kirim', '2023-04-14', '-', 'Copy of Berita Acara AK_kirim.htm', 2023, 'Y'),
(407, 123, 'Tanda Tangan dan Logo Sandra', '2023-04-14', '0', 'Tanda Tangan dan Logo Sandra.png', 2023, 'Y'),
(408, 123, 'ttd dhani agustinus kapro animasi', '2023-04-14', '0', 'ttd dhani agustinus kapro animasi.png', 2023, 'Y'),
(409, 110, 'Copy of LED Despar', '2023-04-14', '-', 'Copy of LED Despar.pdf', 2023, 'Y'),
(410, 123, 'TTD Digital yos', '2023-04-14', '0', 'TTD Digital yos.png', 2023, 'Y'),
(411, 123, 'ttd janeru kennedy kaordi DKV', '2023-04-14', '0', 'ttd janeru kennedy kaordi DKV.png', 2023, 'Y'),
(412, 123, 'TTD MAdam Sandra', '2023-04-14', '0', 'TTD MAdam Sandra.png', 2023, 'Y'),
(413, 110, 'Copy of LED Despar', '2023-04-14', '-', 'Copy of LED Despar.pdf', 2023, 'Y'),
(414, 123, 'TTD maRCELO LAKSONO', '2023-04-14', '0', 'TTD maRCELO LAKSONO.png', 2023, 'Y'),
(415, 110, 'Copy of LKPS Despar', '2023-04-14', '-', 'Copy of LKPS Despar.pdf', 2023, 'Y'),
(416, 123, 'TTD PAK SENTOT.', '2023-04-14', '0', 'TTD PAK SENTOT..png', 2023, 'Y'),
(417, 123, 'TTD PAK SENTOT', '2023-04-14', '0', 'TTD PAK SENTOT.png', 2023, 'Y'),
(418, 110, 'Copy of LKPS Despar', '2023-04-14', '-', 'Copy of LKPS Despar.htm', 2023, 'Y'),
(419, 123, 'ttd teguh pujiwioto kapro destinasi pariwisata', '2023-04-14', '0', 'ttd teguh pujiwioto kapro destinasi pariwisata.png', 2023, 'Y'),
(420, 110, 'LED Despar', '2023-04-14', '-', 'LED Despar.pdf', 2023, 'Y'),
(421, 110, 'LED Despar', '2023-04-14', '-', 'LED Despar.pdf', 2023, 'Y'),
(422, 110, 'LKPS Despar', '2023-04-14', '-', 'LKPS Despar.pdf', 2023, 'Y'),
(423, 110, 'LKPS Despar', '2023-04-14', '-', 'LKPS Despar.htm', 2023, 'Y'),
(424, 110, '041118 Rencana Strategis Politeknik SSR', '2023-04-14', '-', '041118 Rencana Strategis Politeknik SSR.pdf', 2023, 'Y'),
(425, 110, 'SK POLITEKNIK SSR', '2023-04-14', '-', 'SK POLITEKNIK SSR.pdf', 2023, 'Y'),
(426, 110, 'SK, Renstra, Renop Despar', '2023-04-14', '-', 'SK, Renstra, Renop Despar.pdf', 2023, 'Y'),
(427, 110, 'Statuta PoliteknikSSR 2021', '2023-04-14', '-', 'Statuta PoliteknikSSR 2021.pdf', 2023, 'Y'),
(428, 110, 'SURAT PENYAMPAIAN SALINAN SK POLITEKNIK SSR', '2023-04-14', '-', 'SURAT PENYAMPAIAN SALINAN SK POLITEKNIK SSR.pdf', 2023, 'Y'),
(429, 124, 'RTM 2019- jadi', '2023-04-14', '0', 'RTM 2019- jadi.pdf', 2023, 'Y'),
(430, 124, 'RTM 2020- jadi ok', '2023-04-14', '0', 'RTM 2020- jadi ok.pdf', 2023, 'Y'),
(431, 125, 'GAJI MEI 2022', '2023-04-14', '-', 'GAJI MEI 2022.htm', 2023, 'Y'),
(432, 124, 'RTM 2021- jadi', '2023-04-14', '0', 'RTM 2021- jadi.pdf', 2023, 'Y'),
(433, 125, 'GAJI OKTOBER 2022', '2023-04-14', '-', 'GAJI OKTOBER 2022.htm', 2023, 'Y'),
(434, 124, 'New Microsoft Word Document', '2023-04-14', '0', 'New Microsoft Word Document.pdf', 2023, 'Y'),
(435, 125, 'GAJI SEPTEMBER 2022', '2023-04-14', '-', 'GAJI SEPTEMBER 2022.htm', 2023, 'Y'),
(436, 125, 'PERJANJIAN KERJASAMA DOSEN RAMA DWISSA WIANA', '2023-04-14', '-', 'PERJANJIAN KERJASAMA DOSEN RAMA DWISSA WIANA.pdf', 2032, 'Y'),
(437, 125, 'PERJANJIAN KERJASAMA Rama FEE', '2023-04-14', '-', 'PERJANJIAN KERJASAMA Rama FEE.pdf', 2023, 'Y'),
(438, 125, 'ANGGARAN PELAKSANAAN PRASIDANG', '2023-04-14', '-', 'ANGGARAN PELAKSANAAN PRASIDANG.pdf', 2023, 'Y'),
(439, 125, 'PENGAJUAN DANA TA TAHUN AKADEMIK 2022-2023', '2023-04-14', '-', 'PENGAJUAN DANA TA TAHUN AKADEMIK 2022-2023.pdf', 2023, 'Y'),
(440, 125, 'PENGUMAN BIAYA TA.', '2023-04-14', '-', 'PENGUMAN BIAYA TA..pdf', 2023, 'Y'),
(441, 125, 'PENGUMAN BIAYA TA.', '2023-04-14', 'PENGUMAN BIAYA TA', 'PENGUMAN BIAYA TA.pdf', 2023, 'Y'),
(442, 125, 'PERUMUSAN BIAYA SKRPSI', '2023-04-14', '-', 'PERUMUSAN BIAYA SKRPSI.pdf', 2023, 'Y'),
(443, 125, 'New Microsoft Word Document', '2023-04-14', '-', 'New Microsoft Word Document.pdf', 2023, 'Y'),
(444, 125, 'PENGAJUAN ID CARD MABA Ta 2022-2023', '2023-04-14', '-', 'PENGAJUAN ID CARD MABA Ta 2022-2023.pdf', 2032, 'Y'),
(445, 125, 'Skala Upah', '2023-04-14', '-', 'Skala Upah.htm', 2023, 'Y'),
(446, 125, 'SK-REKTOR-TENTANG-STANDAR-BIAYA-MASUKAN-UI-TH-2021-compressed', '2023-04-14', '-', 'SK-REKTOR-TENTANG-STANDAR-BIAYA-MASUKAN-UI-TH-2021-compressed.pdf', 2023, 'Y'),
(448, 126, '17-TIF-6309-Arsitektur dan Organisasi Komputer', '2023-04-14', '-', '17-TIF-6309-Arsitektur dan Organisasi Komputer.pdf', 2023, 'Y'),
(449, 126, '17-TIF-6309-Arsitektur dan Organisasi Komputer', '2023-04-14', '-', '17-TIF-6309-Arsitektur dan Organisasi Komputer.pdf', 2023, 'Y'),
(450, 126, '18-TIF-6310-Struktur Data dan Algoritma', '2023-04-14', '-', '18-TIF-6310-Struktur Data dan Algoritma.pdf', 2023, 'Y'),
(451, 126, '18-TIF-6310-Struktur Data dan Algoritma', '2023-04-14', '-', '18-TIF-6310-Struktur Data dan Algoritma.pdf', 2023, 'Y'),
(452, 126, '26-TIF-6314-Sistem Basis Data', '2023-04-14', '-', '26-TIF-6314-Sistem Basis Data.pdf', 2023, 'Y'),
(454, 126, '26-TIF-6314-Sistem Basis Data', '2023-04-14', '-', '26-TIF-6314-Sistem Basis Data.pdf', 2023, 'Y'),
(455, 126, '28-TIF-6316-Jaringan Komputer', '2023-04-14', '-', '28-TIF-6316-Jaringan Komputer.pdf', 2023, 'Y'),
(456, 126, '28-TIF-6316-Jaringan Komputer', '2023-04-14', '-', '28-TIF-6316-Jaringan Komputer.pdf', 2023, 'Y'),
(457, 126, '51-TIF-6235-Teknologi Multimedia(3)blm', '2023-04-14', '-', '51-TIF-6235-Teknologi Multimedia(3)blm.pdf', 2023, 'Y'),
(458, 126, 'Dasar-Dasar Pemrograman - RPS', '2023-04-14', '-', 'Dasar-Dasar Pemrograman - RPS.pdf', 2023, 'Y'),
(459, 126, 'RPS  Pemrograman Berorientasi Objek', '2023-04-14', '-', 'RPS  Pemrograman Berorientasi Objek.pdf', 2023, 'Y'),
(460, 126, 'RPS - Rekayasa  Prangkat Lunak', '2023-04-14', '-', 'RPS - Rekayasa  Prangkat Lunak.pdf', 2023, 'Y'),
(461, 126, 'RPS Dasar-Dasar Pemrograman', '2023-04-14', '-', 'RPS Dasar-Dasar Pemrograman.pdf', 2023, 'Y'),
(462, 126, 'RPS Pemrograman perangkat bergerak', '2023-04-14', '-', 'RPS Pemrograman perangkat bergerak.pdf', 2023, 'Y'),
(463, 126, 'RPS Sistem Operasi', '2023-04-14', '-', 'RPS Sistem Operasi.pdf', 2023, 'Y'),
(464, 126, 'RPS_Pengantar_Manajemen_EK009', '2023-04-14', '-', 'RPS_Pengantar_Manajemen_EK009.pdf', 2023, 'Y'),
(465, 127, '1. Surat Pernyataan Prodi Animasi', '2023-04-14', '-', '1. Surat Pernyataan Prodi Animasi.pdf', 2023, 'Y'),
(466, 127, '2. Surat Pernyataan Prodi Destinasi Pariwisata', '2023-04-14', '-', '2. Surat Pernyataan Prodi Destinasi Pariwisata.pdf', 2023, 'Y'),
(467, 127, '3. Surat Pernyataan Prodi Desain Komunikasi Visual', '2023-04-14', '-', '3. Surat Pernyataan Prodi Desain Komunikasi Visual.pdf', 2023, 'Y'),
(468, 128, 'surat keterangan nama politeknis ssr', '2023-04-14', '-', 'surat keterangan nama politeknis ssr.pdf', 2023, 'Y'),
(469, 128, 'surat permohonan pembetulan nama PT 15-09-2022', '2023-04-14', '-', 'surat permohonan pembetulan nama PT 15-09-2022.pdf', 2023, 'Y'),
(470, 128, 'surat permohonan pembetulan nama PT', '2023-04-14', '-', 'surat permohonan pembetulan nama PT.pdf', 2023, 'Y'),
(471, 128, 'Surat rekomendasi akreditasi', '2023-04-14', '-', 'Surat rekomendasi akreditasi.pdf', 2023, 'Y'),
(472, 128, 'Surat rekomendasi akreditasi_SSR (3 prodi, 1 AIPT)', '2023-04-14', '-', 'Surat rekomendasi akreditasi_SSR (3 prodi, 1 AIPT).pdf', 2023, 'Y'),
(473, 128, 'Surat rekomendasi akreditasi_SSR AIPT dikti', '2023-04-14', '-', 'Surat rekomendasi akreditasi_SSR AIPT dikti.pdf', 2023, 'Y'),
(474, 128, 'Surat rekomendasi akreditasi_SSR AIPT dikti', '2023-04-14', '-', 'Surat rekomendasi akreditasi_SSR AIPT dikti.pdf', 2023, 'Y'),
(475, 128, 'Surat rekomendasi akreditasi_SSR AIPT', '2023-04-14', '-', 'Surat rekomendasi akreditasi_SSR AIPT.pdf', 2023, 'Y'),
(476, 128, 'Surat rekomendasi akreditasi_SSR all', '2023-04-14', '-', 'Surat rekomendasi akreditasi_SSR all.pdf', 2023, 'Y'),
(477, 128, 'Surat rekomendasi akreditasi_SSR prodi ANIMASI', '2023-04-14', '-', 'Surat rekomendasi akreditasi_SSR prodi ANIMASI.pdf', 2023, 'Y'),
(478, 128, 'Surat rekomendasi akreditasi_SSR prodi DESTINASI PARIWISATA', '2023-04-14', '-', 'Surat rekomendasi akreditasi_SSR prodi DESTINASI PARIWISATA.pdf', 2023, 'Y'),
(479, 128, 'Surat rekomendasi akreditasi_SSR prodi DKV', '2023-04-14', '-', 'Surat rekomendasi akreditasi_SSR prodi DKV.pdf', 2023, 'Y'),
(480, 128, 'tangkapan layar 2 thn terahir', '2023-04-14', '-', 'tangkapan layar 2 thn terahir.pdf', 2023, 'Y'),
(481, 128, 'detaildraf_Dokumen_5247_1643797157', '2023-04-14', '-', 'detaildraf_Dokumen_5247_1643797157.pdf', 2023, 'Y'),
(482, 128, 'Dokumen-Usulan-Penyesuaian-Nama-Program-Studi', '2023-04-14', '-', 'Dokumen-Usulan-Penyesuaian-Nama-Program-Studi.pdf', 2023, 'Y'),
(483, 128, 'srtket_perubahan_nama_stmik_institut', '2023-04-14', '-', 'srtket_perubahan_nama_stmik_institut.jpg', 2023, 'Y'),
(484, 128, 'standar mutu ssr', '2023-04-14', '-', 'standar mutu ssr.pdf', 2023, 'Y'),
(485, 128, 'SURAT-PERMOHONAN-PERBAIKAN-DATA-MAHASISWA', '2023-04-14', '-', 'SURAT-PERMOHONAN-PERBAIKAN-DATA-MAHASISWA.pdf', 2023, 'Y'),
(486, 129, 'NAMA ACCOUNT DAN PASWORD', '2023-04-14', '-', 'NAMA ACCOUNT DAN PASWORD.pdf', 2023, 'Y'),
(487, 129, 'DOKUMEN YANG HARUS ADA', '2023-04-14', '-', 'DOKUMEN YANG HARUS ADA.pdf', 2023, 'Y'),
(488, 130, 'SKKNI 2011-286 (ANIMASI)', '2023-04-14', '-', 'SKKNI 2011-286 (ANIMASI).pdf', 2023, 'Y'),
(489, 130, 'SKKNI 2011-286 (DESPAR)', '2023-04-14', '-', 'SKKNI 2011-286 (DESPAR).pdf', 2023, 'Y'),
(490, 130, 'SKKNI-Nomor-301 - 2016 (DKV)', '2023-04-14', '-', 'SKKNI-Nomor-301 - 2016 (DKV).pdf', 2023, 'Y'),
(491, 130, 'SKKNI-Nomor-301 (DKV)', '2023-04-14', '-', 'SKKNI-Nomor-301 (DKV).pdf', 2023, 'Y'),
(492, 131, 'LIST SOP KERJA  SSR', '2023-04-14', '-', 'LIST SOP KERJA  SSR.htm', 2023, 'Y'),
(493, 131, 'SOP Menjadi Member Marketing', '2023-04-14', '-', 'SOP Menjadi Member Marketing.pdf', 2023, 'Y'),
(494, 131, '1. Prosedur Mutu Pembimbingan Akademik', '2023-04-14', '-', '1. Prosedur Mutu Pembimbingan Akademik.pdf', 2023, 'Y'),
(495, 131, '2. Penetapan Pembimbing Akademik', '2023-04-14', '-', '2. Penetapan Pembimbing Akademik.pdf', 2023, 'Y'),
(496, 131, '3. Penetapan Dosen Pengajar Mata Kuliah', '2023-04-14', '-', '3. Penetapan Dosen Pengajar Mata Kuliah.pdf', 2023, 'Y'),
(497, 131, '4. Konversi Mata Kuliah', '2023-04-14', '-', '4. Konversi Mata Kuliah.pdf', 2023, 'Y'),
(498, 131, '5. Proses Pembelajaran', '2023-04-14', '-', '5. Proses Pembelajaran.pdf', 2023, 'Y');
INSERT INTO `sys_file` (`id`, `id_menu`, `nama_file`, `tgl`, `deskripsi`, `file`, `tahun`, `status`) VALUES
(499, 131, '6. Pembuatan SAP', '2023-04-14', '-', '6. Pembuatan SAP.pdf', 2023, 'Y'),
(500, 131, '7. Monitoring SAP', '2023-04-14', '-', '7. Monitoring SAP.pdf', 2023, 'Y'),
(501, 131, '8. Prosedur Mutu Ujian', '2023-04-14', '-', '8. Prosedur Mutu Ujian.pdf', 2023, 'Y'),
(502, 131, '9. Penerimaan Calon Mahasiswa', '2023-04-14', '-', '9. Penerimaan Calon Mahasiswa.pdf', 2023, 'Y'),
(503, 131, '10. Penetapan Dosen Pembimbing Tugas Akhir', '2023-04-14', '-', '10. Penetapan Dosen Pembimbing Tugas Akhir.pdf', 2023, 'Y'),
(504, 131, '11. Usulan Penelitian', '2023-04-14', '-', '11. Usulan Penelitian.pdf', 2023, 'Y'),
(505, 131, '12. Sudang Usulan Penelitian', '2023-04-14', '-', '12. Sudang Usulan Penelitian.pdf', 2023, 'Y'),
(506, 131, '13. Pelaksanaan Penelitian', '2023-04-14', '-', '13. Pelaksanaan Penelitian.pdf', 2023, 'Y'),
(507, 131, '14. Sidang Komprehensif Penelitian', '2023-04-14', '-', '14. Sidang Komprehensif Penelitian.pdf', 2023, 'Y'),
(508, 131, '15. Yudisium', '2023-04-14', '-', '15. Yudisium.pdf', 2023, 'Y'),
(509, 131, '15. Yudisium', '2023-04-14', '-', '15. Yudisium.pdf', 2023, 'Y'),
(510, 131, '16. Perancangan dan Pengembangan Kurikulum', '2023-04-14', '-', '16. Perancangan dan Pengembangan Kurikulum.pdf', 2023, 'Y'),
(511, 131, '17. Monitoring dan Evaluasi Kurikulum', '2023-04-14', '-', '17. Monitoring dan Evaluasi Kurikulum.pdf', 2023, 'Y'),
(512, 131, '18. Suasana Akademik', '2023-04-14', '-', '18. Suasana Akademik.pdf', 2023, 'Y'),
(513, 131, '19. Evaluasi Kinerja Dosen dan Tendik', '2023-04-14', '-', '19. Evaluasi Kinerja Dosen dan Tendik.pdf', 2023, 'Y'),
(514, 131, '20. Penanganan Dosen dan Tendik Bermasalah', '2023-04-14', '-', '20. Penanganan Dosen dan Tendik Bermasalah.pdf', 2023, 'Y'),
(515, 131, '21. Peyusunan Evaluasi Diri', '2023-04-14', '-', '21. Peyusunan Evaluasi Diri.pdf', 2023, 'Y'),
(516, 131, '22. Pengelolaan Akreditasi Prodi', '2023-04-14', '-', '22. Pengelolaan Akreditasi Prodi.pdf', 2023, 'Y'),
(517, 131, 'evaluasi kinerja dosen dan tendik', '2023-04-14', '-', 'evaluasi kinerja dosen dan tendik.pdf', 2023, 'Y'),
(518, 131, 'konversi mata kuliah', '2023-04-14', '-', 'konversi mata kuliah.pdf', 2023, 'Y'),
(519, 131, 'monitoring SAP', '2023-04-14', '-', 'monitoring SAP.pdf', 2023, 'Y'),
(520, 131, 'pembuatan SAP', '2023-04-14', '-', 'pembuatan SAP.pdf', 2023, 'Y'),
(521, 131, 'penanganan dosen dan tendik bermasalah', '2023-04-14', '-', 'penanganan dosen dan tendik bermasalah.pdf', 2023, 'Y'),
(522, 131, 'penetapan dosen pembimbing tugas akhir', '2023-04-14', '-', 'penetapan dosen pembimbing tugas akhir.pdf', 2023, 'Y'),
(523, 131, 'penetapan dosen pengajar mata kuliah', '2023-04-14', '-', 'penetapan dosen pengajar mata kuliah.pdf', 2023, 'Y'),
(524, 131, 'penetapan pembimbing akademik', '2023-04-14', '-', 'penetapan pembimbing akademik.pdf', 2023, 'Y'),
(525, 131, 'proses pembelajaran', '2023-04-14', '-', 'proses pembelajaran.pdf', 2023, 'Y'),
(526, 131, 'PK-F-02-SOP-Pemeliharaan-Sistem-Informasi', '2023-04-14', '-', 'PK-F-02-SOP-Pemeliharaan-Sistem-Informasi.pdf', 2023, 'Y'),
(527, 131, 'PK-E-07-SOP-Keterangan-Pelayanan-Pembayaran-Penghasilan-Pegawai-KP4', '2023-04-14', '-', 'PK-E-07-SOP-Keterangan-Pelayanan-Pembayaran-Penghasilan-Pegawai-KP4.pdf', 2023, 'Y'),
(528, 131, 'PK-E-10-SOP-Pembuatan-Daftar-Susunan-Pegawai-DSP', '2023-04-14', '-', 'PK-E-10-SOP-Pembuatan-Daftar-Susunan-Pegawai-DSP.pdf', 2023, 'Y'),
(529, 131, '1.2.1.4-SOP-AP-Penugasan-Dosen-Mengajar', '2023-04-14', '-', '1.2.1.4-SOP-AP-Penugasan-Dosen-Mengajar.pdf', 2023, 'Y'),
(530, 131, '1.2.2.1-SOP-AP-Pelaksanaan-Perkuliahan', '2023-04-14', '-', '1.2.2.1-SOP-AP-Pelaksanaan-Perkuliahan.pdf', 2023, 'Y'),
(531, 131, '1.3.2.1-SOP-AP-Pelaksanaan-UTS-dan-UAS', '2023-04-14', '-', '1.3.2.1-SOP-AP-Pelaksanaan-UTS-dan-UAS.pdf', 2023, 'Y'),
(532, 131, '1.3.2.2-SOP-AP-Pelaksanaan-UTS-dan-UAS-Susulan', '2023-04-14', '-', '1.3.2.2-SOP-AP-Pelaksanaan-UTS-dan-UAS-Susulan.pdf', 2023, 'Y'),
(533, 131, '1.3.2.3-SOP-AP-Pelaksanaan-Ujuan-Sidang-dan-Seminar-Tugas-Akhir', '2023-04-14', '-', '1.3.2.3-SOP-AP-Pelaksanaan-Ujuan-Sidang-dan-Seminar-Tugas-Akhir.pdf', 2023, 'Y'),
(534, 131, '1.3.4.2-SOP-AP-Evaluasi-Pendidikan', '2023-04-14', '-', '1.3.4.2-SOP-AP-Evaluasi-Pendidikan.pdf', 2023, 'Y'),
(535, 131, '7.1.1.1-SOP-AP-Perwalian-Akademik', '2023-04-14', '-', '7.1.1.1-SOP-AP-Perwalian-Akademik.pdf', 2023, 'Y'),
(536, 131, '7.1.1.2-SOP-AP-Pendaftaran-Semester-Antara', '2023-04-14', '-', '7.1.1.2-SOP-AP-Pendaftaran-Semester-Antara.pdf', 2023, 'Y'),
(537, 131, '7.1.2.1-SOP-AP-Penerbitan-Surat-Cuti-Akademik', '2023-04-14', '-', '7.1.2.1-SOP-AP-Penerbitan-Surat-Cuti-Akademik.pdf', 2023, 'Y'),
(538, 131, '7.1.2.2-SOP-AP-Penerbitan-Kartu-Ujian-Semester', '2023-04-14', '-', '7.1.2.2-SOP-AP-Penerbitan-Kartu-Ujian-Semester.pdf', 2023, 'Y'),
(539, 131, '7.1.2.3-SOP-AP-Perbaikan-Input-Nilai-Mahasiswa', '2023-04-14', '-', '7.1.2.3-SOP-AP-Perbaikan-Input-Nilai-Mahasiswa.pdf', 2023, 'Y'),
(540, 131, '7.1.2.4-SOP-AP-Penerbitan-Surat-Penugasan-Pembimbing-PKL-atau-TA', '2023-04-14', '-', '7.1.2.4-SOP-AP-Penerbitan-Surat-Penugasan-Pembimbing-PKL-atau-TA.pdf', 2023, 'Y'),
(541, 131, '7.1.2.5-SOP-AP-Surat-Permohonan-PKL-atau-TA', '2023-04-14', '-', '7.1.2.5-SOP-AP-Surat-Permohonan-PKL-atau-TA.pdf', 2023, 'Y'),
(542, 131, '7.1.2.6-SOP-AP-Permohonan-Ujian-Susulan-UTS-dan-UAS', '2023-04-14', '-', '7.1.2.6-SOP-AP-Permohonan-Ujian-Susulan-UTS-dan-UAS.pdf', 2023, 'Y'),
(543, 131, 'PK-A-01-SOP-Dokumentasi-Nilai-Hasil-Ujian-Mahasiswa', '2023-04-14', '-', 'PK-A-01-SOP-Dokumentasi-Nilai-Hasil-Ujian-Mahasiswa.pdf', 2023, 'Y'),
(544, 131, 'PK-A-02-SOP-Penyusunan-Daftar-Hadir-Mahasiswa-dan-Lembar-Materi-Realisasi-SAP-Dosen', '2023-04-14', '-', 'PK-A-02-SOP-Penyusunan-Daftar-Hadir-Mahasiswa-dan-Lembar-Materi-Realisasi-SAP-Dosen.pdf', 2023, 'Y'),
(545, 131, 'PK-A-03-SOP-Penyusunan-Daftar-Hadir-Dosen', '2023-04-14', '-', 'PK-A-03-SOP-Penyusunan-Daftar-Hadir-Dosen.pdf', 2023, 'Y'),
(546, 131, 'PK-A-05-SOP-Pembuatan-Daftar-Honor-Dosen-dan-Transport', '2023-04-14', '-', 'PK-A-05-SOP-Pembuatan-Daftar-Honor-Dosen-dan-Transport.pdf', 2023, 'Y'),
(547, 131, 'PK-A-06-SOP-Pembuatan-Jadwal-UTS-dan-UAS', '2023-04-14', '-', 'PK-A-06-SOP-Pembuatan-Jadwal-UTS-dan-UAS.pdf', 2023, 'Y'),
(548, 131, 'PK-A-07-SOP-Pembuatan-Surat-PKL-dan-TA-ke-Perusahaan', '2023-04-14', '-', 'PK-A-07-SOP-Pembuatan-Surat-PKL-dan-TA-ke-Perusahaan.pdf', 2023, 'Y'),
(549, 131, 'PK-A-08-SOP-Penyiapan-Data-untuk-Proses-Perwalian', '2023-04-14', '-', 'PK-A-08-SOP-Penyiapan-Data-untuk-Proses-Perwalian.pdf', 2023, 'Y'),
(550, 131, 'pk-A-09-SOP-Pembuatan-Ijazah', '2023-04-14', '-', 'pk-A-09-SOP-Pembuatan-Ijazah.pdf', 2023, 'Y'),
(551, 131, 'pk-A-10-SOP-Persiapan-Wisuda', '2023-04-14', '-', 'pk-A-10-SOP-Persiapan-Wisuda.pdf', 2023, 'Y'),
(552, 131, 'PK-A-11-SOP-Pembuatan-Kartu-Ujian', '2023-04-14', '-', 'PK-A-11-SOP-Pembuatan-Kartu-Ujian.pdf', 2023, 'Y'),
(553, 131, 'PK-A-12-SOP-Pembuatan-Kartu-Hasil-Studi-KHS', '2023-04-14', '-', 'PK-A-12-SOP-Pembuatan-Kartu-Hasil-Studi-KHS.pdf', 2023, 'Y'),
(554, 131, 'PK-A-13-SOP-Pembuatan-Transkrip-Nilai-Sementara', '2023-04-14', '-', 'PK-A-13-SOP-Pembuatan-Transkrip-Nilai-Sementara.pdf', 2023, 'Y'),
(555, 131, 'PK-A-15-SO-Pelaksanaan-Ujian', '2023-04-14', '-', 'PK-A-15-SO-Pelaksanaan-Ujian.pdf', 2023, 'Y'),
(556, 131, 'PK-A-15-SOP-Pembuatan-Duplikat-Transkrip-Nilai-dan-SKL', '2023-04-14', '-', 'PK-A-15-SOP-Pembuatan-Duplikat-Transkrip-Nilai-dan-SKL.pdf', 2023, 'Y'),
(557, 131, 'PK-A-17-SOP-Pengambilan-Ijazah', '2023-04-14', '-', 'PK-A-17-SOP-Pengambilan-Ijazah.pdf', 2023, 'Y'),
(558, 131, 'PK-A-18-SOP-Permohonan-Ujian-Susulan', '2023-04-14', '-', 'PK-A-18-SOP-Permohonan-Ujian-Susulan.pdf', 2023, 'Y'),
(559, 131, 'PK-C-01-SOP-Pelaksanaan-Praktikum-di-Lab-STMI', '2023-04-14', '-', 'PK-C-01-SOP-Pelaksanaan-Praktikum-di-Lab-STMI.pdf', 2023, 'Y'),
(560, 131, 'PK-C-03-SOP-Pemesanan-Bahan-Praktikum', '2023-04-14', '-', 'PK-C-03-SOP-Pemesanan-Bahan-Praktikum.pdf', 2023, 'Y'),
(561, 131, 'PK-C-04-SOP-Pelaksanaan-Praktikum-Bagi-Mhs-luar-STMI', '2023-04-14', '-', 'PK-C-04-SOP-Pelaksanaan-Praktikum-Bagi-Mhs-luar-STMI.pdf', 2023, 'Y'),
(562, 131, 'PK-C-05-SOP-Perwatan-Peralatan-Lab', '2023-04-14', '-', 'PK-C-05-SOP-Perwatan-Peralatan-Lab.pdf', 2023, 'Y'),
(563, 131, 'PK-C-06-SOP-Pengadaan-Peralatan-Lab', '2023-04-14', '-', 'PK-C-06-SOP-Pengadaan-Peralatan-Lab.pdf', 2023, 'Y'),
(564, 131, 'Sasaran-Mutu-Laboratorium', '2023-04-14', '-', 'Sasaran-Mutu-Laboratorium.pdf', 2023, 'Y'),
(565, 131, 'PK-D-01-SOP-Penelitian-1', '2023-04-14', '-', 'PK-D-01-SOP-Penelitian-1.pdf', 2023, 'Y'),
(566, 131, 'PK-D-04-SOP-Pelaksanaan-Pelatihan-dan-Evaluasi-1', '2023-04-14', '-', 'PK-D-04-SOP-Pelaksanaan-Pelatihan-dan-Evaluasi-1.pdf', 2023, 'Y'),
(567, 131, '1.3.3.1-Perencanaan-Uji-Kompetensi', '2023-04-14', '-', '1.3.3.1-Perencanaan-Uji-Kompetensi.pdf', 2023, 'Y'),
(568, 131, '1.3.3.2-Pendaftaran-Uji-Kompetensi', '2023-04-14', '-', '1.3.3.2-Pendaftaran-Uji-Kompetensi.pdf', 2023, 'Y'),
(569, 131, '1.3.3.3-Verifikasi-TUK', '2023-04-14', '-', '1.3.3.3-Verifikasi-TUK.pdf', 2023, 'Y'),
(570, 131, '1.3.3.4-Pelaksanaan-Uji-Kompetensi', '2023-04-14', '-', '1.3.3.4-Pelaksanaan-Uji-Kompetensi.pdf', 2023, 'Y'),
(571, 131, '1.3.3.5-Penerbitan-Sertifikat', '2023-04-14', '-', '1.3.3.5-Penerbitan-Sertifikat.pdf', 2023, 'Y'),
(572, 131, '1.3.3-Uji-Kompetensi-dan-Sertifikasi-Kompetensi', '2023-04-14', '-', '1.3.3-Uji-Kompetensi-dan-Sertifikasi-Kompetensi.pdf', 2023, 'Y'),
(573, 131, 'PM-S-01-SOP-Pengendalian-Dokumen-Mutu1', '2023-04-14', '-', 'PM-S-01-SOP-Pengendalian-Dokumen-Mutu1.pdf', 2023, 'Y'),
(574, 131, 'PM-S-02-SOP-Pengendalian-Rekaman-Mutu1', '2023-04-14', '-', 'PM-S-02-SOP-Pengendalian-Rekaman-Mutu1.pdf', 2023, 'Y'),
(575, 131, 'PM-S-03-SOP-Tinjauan-Manajemen1', '2023-04-14', '-', 'PM-S-03-SOP-Tinjauan-Manajemen1.pdf', 2023, 'Y'),
(576, 131, 'PM-S-04-SOP-Audit-Internal-Mutu1', '2023-04-14', '-', 'PM-S-04-SOP-Audit-Internal-Mutu1.pdf', 2023, 'Y'),
(577, 131, 'PM-S-05-SOP-Pengendalian-Produk-Tidak-Sesuai1', '2023-04-14', '-', 'PM-S-05-SOP-Pengendalian-Produk-Tidak-Sesuai1.pdf', 2023, 'Y'),
(578, 131, 'PM-S-06-SOP-Tindakan-Korektif1', '2023-04-14', '-', 'PM-S-06-SOP-Tindakan-Korektif1.pdf', 2023, 'Y'),
(579, 131, 'PM-S-07-SOP-Tindakan-Pencegahan', '2023-04-14', '-', 'PM-S-07-SOP-Tindakan-Pencegahan.pdf', 2023, 'Y'),
(580, 131, 'PM-S-08-SOP-Manajemen-Risiko-1', '2023-04-14', '-', 'PM-S-08-SOP-Manajemen-Risiko-1.pdf', 2023, 'Y'),
(581, 131, 'PM-S-10-SOP-Manajemen-Perubahan', '2023-04-14', '-', 'PM-S-10-SOP-Manajemen-Perubahan.pdf', 2023, 'Y'),
(582, 131, '6.3.2.1-SOP-AP-Penerbitan-Kartu-Anggota-Perpustakaan', '2023-04-14', '-', '6.3.2.1-SOP-AP-Penerbitan-Kartu-Anggota-Perpustakaan.pdf', 2023, 'Y'),
(583, 131, '6.3.2.2-SOP-AP-Peminjaman-Buku-Perpustakaan', '2023-04-14', '-', '6.3.2.2-SOP-AP-Peminjaman-Buku-Perpustakaan.pdf', 2023, 'Y'),
(584, 131, '6.3.2.3-SOP-AP-Pengembalian-Buku-Perpustakaan', '2023-04-14', '-', '6.3.2.3-SOP-AP-Pengembalian-Buku-Perpustakaan.pdf', 2023, 'Y'),
(585, 131, 'PK-G-01-SOP-Pengadaan-Koleksi-Buku-Baru-Perpustakaan', '2023-04-14', '-', 'PK-G-01-SOP-Pengadaan-Koleksi-Buku-Baru-Perpustakaan.pdf', 2023, 'Y'),
(586, 131, '1.1.4-Pembuatan-Laporan', '2023-04-14', '-', '1.1.4-Pembuatan-Laporan.pdf', 2023, 'Y'),
(587, 131, '1.1.4.2-Pembuatan-Laporan-Kegiatan-PMB', '2023-04-14', '-', '1.1.4.2-Pembuatan-Laporan-Kegiatan-PMB.pdf', 2023, 'Y'),
(588, 131, '1.1.4.1-Evaluasi-Kegiatan-PMB', '2023-04-14', '-', '1.1.4.1-Evaluasi-Kegiatan-PMB.pdf', 2023, 'Y'),
(589, 131, '1.1.3-SOP-AP-Pengenalan-Kampus-dan-Diklat-Bela-Negara', '2023-04-14', '-', '1.1.3-SOP-AP-Pengenalan-Kampus-dan-Diklat-Bela-Negara.pdf', 2023, 'Y'),
(590, 131, '1.1.3.3-Pelatihan-Bela-Negara', '2023-04-14', '-', '1.1.3.3-Pelatihan-Bela-Negara.pdf', 2023, 'Y'),
(591, 131, '1.1.3.2-Pengenalan-Kehidupan-Kampus-Mahasiswa-Baru-PKKMB', '2023-04-14', '-', '1.1.3.2-Pengenalan-Kehidupan-Kampus-Mahasiswa-Baru-PKKMB.pdf', 2023, 'Y'),
(592, 131, '1.1.3.1-Penyusunan-Konsep-PKKMB', '2023-04-14', '-', '1.1.3.1-Penyusunan-Konsep-PKKMB.pdf', 2023, 'Y'),
(593, 131, '1.1.2.7-Mekanisme-Daftar-Ulang', '2023-04-14', '-', '1.1.2.7-Mekanisme-Daftar-Ulang.pdf', 2023, 'Y'),
(594, 131, '1.1.2.6-Penetapan-Hasil-Kelulusan-Peserta', '2023-04-14', '-', '1.1.2.6-Penetapan-Hasil-Kelulusan-Peserta.pdf', 2023, 'Y'),
(595, 131, '1.1.1-Perencanaan-PMB', '2023-04-14', '-', '1.1.1-Perencanaan-PMB.pdf', 2023, 'Y'),
(596, 131, '1.1.1.6-Persiapan-Seleksi-Jalur-Bersama', '2023-04-14', '-', '1.1.1.6-Persiapan-Seleksi-Jalur-Bersama.pdf', 2023, 'Y'),
(597, 131, '1.1.1.5-Persiapan-Seleksi-Jalur-Mandiri', '2023-04-14', '-', '1.1.1.5-Persiapan-Seleksi-Jalur-Mandiri.pdf', 2023, 'Y'),
(598, 131, '1.1.1.4-Persiapan-Seleksi-Jalur-Prestasi', '2023-04-14', '-', '1.1.1.4-Persiapan-Seleksi-Jalur-Prestasi.pdf', 2023, 'Y'),
(599, 131, '1.1.1.3-Penyusunan-Indikator-Penilaian-dan-Bank-Soal-PMB', '2023-04-14', '-', '1.1.1.3-Penyusunan-Indikator-Penilaian-dan-Bank-Soal-PMB.pdf', 2023, 'Y'),
(600, 131, '1.1.1.2-Penyusunan-Program-Kerja-PMB', '2023-04-14', '-', '1.1.1.2-Penyusunan-Program-Kerja-PMB.pdf', 2023, 'Y'),
(601, 131, '1.1.1.1-Pembentukan-Panitia-PMB', '2023-04-14', '-', '1.1.1.1-Pembentukan-Panitia-PMB.pdf', 2023, 'Y'),
(602, 131, '1.2.1.1-SOP-AP-Pengembangan-Kurikulum', '2023-04-14', '-', '1.2.1.1-SOP-AP-Pengembangan-Kurikulum.pdf', 2023, 'Y'),
(603, 131, '1.2.1.2-SOP-AP-Penyusunan-RPS', '2023-04-14', '-', '1.2.1.2-SOP-AP-Penyusunan-RPS.pdf', 2023, 'Y'),
(604, 131, '1.2.1.4-SOP-AP-Penugasan-Dosen-Mengajar', '2023-04-14', '-', '1.2.1.4-SOP-AP-Penugasan-Dosen-Mengajar.pdf', 2023, 'Y'),
(605, 131, '1.2.2.1-SOP-AP-Pelaksanaan-Perkuliahan', '2023-04-14', '-', '1.2.2.1-SOP-AP-Pelaksanaan-Perkuliahan.pdf', 2023, 'Y'),
(606, 131, '1.2.2.2-SOP-AP-Monitoring-Pelaksanaan-Perkuliahan', '2023-04-14', '-', '1.2.2.2-SOP-AP-Monitoring-Pelaksanaan-Perkuliahan.pdf', 2023, 'Y'),
(607, 131, '1.3.2.2-SOP-AP-Pelaksanaan-UTS-dan-UAS-Susulan', '2023-04-14', '-', '1.3.2.2-SOP-AP-Pelaksanaan-UTS-dan-UAS-Susulan.pdf', 2023, 'Y'),
(608, 131, '1.3.2.3-SOP-AP-Pelaksanaan-Ujuan-Sidang-dan-Seminar-Tugas-Akhir', '2023-04-14', '-', '1.3.2.3-SOP-AP-Pelaksanaan-Ujuan-Sidang-dan-Seminar-Tugas-Akhir.pdf', 2023, 'Y'),
(609, 131, '1.3.4.1-SOP-AP-Evaluasi-Proses-Belajar-Mengajar', '2023-04-14', '-', '1.3.4.1-SOP-AP-Evaluasi-Proses-Belajar-Mengajar.pdf', 2023, 'Y'),
(610, 131, '7.1.1.1-SOP-AP-Perwalian-Akademik', '2023-04-14', '-', '7.1.1.1-SOP-AP-Perwalian-Akademik.pdf', 2023, 'Y'),
(611, 131, '7.1.2.1-SOP-AP-Penerbitan-Surat-Cuti-Akademik', '2023-04-14', '-', '7.1.2.1-SOP-AP-Penerbitan-Surat-Cuti-Akademik.pdf', 2023, 'Y'),
(612, 131, '7.1.2.4-SOP-AP-Penerbitan-Surat-Penugasan-Pembimbing-PKL-atau-TA', '2023-04-14', '-', '7.1.2.4-SOP-AP-Penerbitan-Surat-Penugasan-Pembimbing-PKL-atau-TA.pdf', 2023, 'Y'),
(613, 131, '7.1.2.5-SOP-AP-Surat-Permohonan-PKL-atau-TA', '2023-04-14', '-', '7.1.2.5-SOP-AP-Surat-Permohonan-PKL-atau-TA.pdf', 2023, 'Y'),
(614, 131, '7.1.2.6-SOP-AP-Permohonan-Ujian-Susulan-UTS-dan-UAS', '2023-04-14', '-', '7.1.2.6-SOP-AP-Permohonan-Ujian-Susulan-UTS-dan-UAS.pdf', 2023, 'Y'),
(615, 131, 'PK-B-02-SOP-Penyunan-Silabus', '2023-04-14', '-', 'PK-B-02-SOP-Penyunan-Silabus.pdf', 2023, 'Y'),
(616, 131, 'PK-B-04-SOP-Penentuan-Koordinator-Mata-Kuliah', '2023-04-14', '-', 'PK-B-04-SOP-Penentuan-Koordinator-Mata-Kuliah.pdf', 2023, 'Y'),
(617, 131, 'PK-B-07-SOP-Pembuatan-Soal-Ujian', '2023-04-14', '-', 'PK-B-07-SOP-Pembuatan-Soal-Ujian.pdf', 2023, 'Y'),
(618, 131, 'PK-B-08-SOP-Penyusunan-TA', '2023-04-14', '-', 'PK-B-08-SOP-Penyusunan-TA.pdf', 2023, 'Y'),
(619, 131, 'PK-B-11-SOP-Pembuatan-Modul', '2023-04-14', '-', 'PK-B-11-SOP-Pembuatan-Modul.pdf', 2023, 'Y'),
(620, 131, 'PK-B-12-SOP-Praktik-Kerja-Lapangan', '2023-04-14', '-', 'PK-B-12-SOP-Praktik-Kerja-Lapangan.pdf', 2023, 'Y'),
(621, 132, 'RPS Bahasa Inggris III', '2023-04-14', '0', 'RPS Bahasa Inggris III.pdf', 2023, 'Y'),
(622, 131, '1. # SOP PENYUSUNAN VISI, MISI,TUJUAN DAN SAARAN PRODI', '2023-04-14', '-', '1. # SOP PENYUSUNAN VISI, MISI,TUJUAN DAN SAARAN PRODI.pdf', 2023, 'Y'),
(623, 132, 'RPS Bahasa Mandarin 1', '2023-04-14', '0', 'RPS Bahasa Mandarin 1.pdf', 2023, 'Y'),
(624, 132, 'RPS Consumer Behavior', '2023-04-14', '0', 'RPS Consumer Behavior.pdf', 2023, 'Y'),
(625, 131, '2. # SOP PENYUSUNAN VISI, MISI,TUJUAN DAN SAARAN POLITEKNIK SSR', '2023-04-14', '-', '2. # SOP PENYUSUNAN VISI, MISI,TUJUAN DAN SAARAN POLITEKNIK SSR.pdf', 2023, 'Y'),
(626, 132, 'RPS F _ B SERVICE', '2023-04-14', '0', 'RPS F _ B SERVICE.pdf', 2023, 'Y'),
(627, 131, '3. # SOP PENYUSUNAN VISI, MISI,TUJUAN DAN SAARAN PROGRAM STUDI', '2023-04-14', '-', '3. # SOP PENYUSUNAN VISI, MISI,TUJUAN DAN SAARAN PROGRAM STUDI.pdf', 2023, 'Y'),
(628, 132, 'RPS Indonesian Cullinary', '2023-04-14', '0', 'RPS Indonesian Cullinary.pdf', 2023, 'Y'),
(629, 132, 'RPS Indonesian Cullinary', '2023-04-14', '0', 'RPS Indonesian Cullinary.pdf', 2023, 'Y'),
(630, 131, '4. # SOP PENNETAPAN VISI, MISI,TUJUAN DAN SAARAN', '2023-04-14', '-', '4. # SOP PENNETAPAN VISI, MISI,TUJUAN DAN SAARAN.pdf', 2023, 'Y'),
(631, 132, 'RPS METODOLOGI PENELITIAN PARIWISATA', '2023-04-14', '0', 'RPS METODOLOGI PENELITIAN PARIWISATA.pdf', 2023, 'Y'),
(632, 131, '5. # SOP PENGUKURAN VISI, MISI,TUJUAN DAN SAARAN PROGRAM STUDI', '2023-04-14', '-', '5. # SOP PENGUKURAN VISI, MISI,TUJUAN DAN SAARAN PROGRAM STUDI.pdf', 2023, 'Y'),
(633, 132, 'RPS MICE  1', '2023-04-14', '0', 'RPS MICE  1.pdf', 2023, 'Y'),
(634, 131, '6. # SOP TATA PAMONG PS', '2023-04-14', '-', '6. # SOP TATA PAMONG PS.pdf', 2023, 'Y'),
(635, 131, 'evaluasi kinerja dosen dan tendik', '2023-04-14', '-', 'evaluasi kinerja dosen dan tendik.pdf', 2023, 'Y'),
(636, 132, 'RPS MK EKONOMI PARIWISATA', '2023-04-14', '0', 'RPS MK EKONOMI PARIWISATA.pdf', 2023, 'Y'),
(637, 131, 'konversi mata kuliah', '2023-04-14', '-', 'konversi mata kuliah.pdf', 2023, 'Y'),
(638, 132, 'RPS MK GEOGRAFI PARIWISATA', '2023-04-14', '0', 'RPS MK GEOGRAFI PARIWISATA.pdf', 2023, 'Y'),
(639, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(640, 131, 'monitoring dan evaluasi kurikulum', '2023-04-14', '-', 'monitoring dan evaluasi kurikulum.pdf', 2023, 'Y'),
(641, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(642, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(643, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(644, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(645, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(646, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(647, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(648, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(649, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(650, 132, 'RPS MK PANCASILA', '2023-04-14', '0', 'RPS MK PANCASILA.pdf', 2023, 'Y'),
(651, 131, 'monitoring SAP', '2023-04-14', '-', 'monitoring SAP.pdf', 2023, 'Y'),
(652, 131, 'pelaksanaan penelitian', '2023-04-14', '-', 'pelaksanaan penelitian.pdf', 2023, 'Y'),
(653, 132, 'RPS MK PARIWISATA DAN LINGKUNGAN ', '2023-04-14', '0', 'RPS MK PARIWISATA DAN LINGKUNGAN .pdf', 2023, 'Y'),
(654, 131, 'pembuatan SAP', '2023-04-14', '-', 'pembuatan SAP.pdf', 2023, 'Y'),
(655, 131, 'penanganan dosen dan tendik bermasalah', '2023-04-14', '-', 'penanganan dosen dan tendik bermasalah.pdf', 2023, 'Y'),
(656, 132, 'RPS MK PARIWISATA DAN LINGKUNGAN ', '2023-04-14', '0', 'RPS MK PEMASARAN DESTINASI PARIWISATA 1.pdf', 2023, 'Y'),
(657, 131, 'penetapan dosen pembimbing tugas akhir', '2023-04-14', '-', 'penetapan dosen pembimbing tugas akhir.pdf', 2023, 'Y'),
(658, 132, 'RPS MK PENGANTAR PARIWISATA', '2023-04-14', '0', 'RPS MK PENGANTAR PARIWISATA.pdf', 2023, 'Y'),
(659, 131, 'penetapan dosen pengajar mata kuliah', '2023-04-14', '-', 'penetapan dosen pengajar mata kuliah.pdf', 2023, 'Y'),
(660, 132, 'RPS MK PENGETAHUAN PERENCANAAN PAKET WISATA', '2023-04-14', '0', 'RPS MK PENGETAHUAN PERENCANAAN PAKET WISATA.pdf', 2023, 'Y'),
(661, 131, 'penetapan pembimbing akademik', '2023-04-14', '-', 'penetapan pembimbing akademik.pdf', 2023, 'Y'),
(662, 131, 'pengelolaan akreditasi prodi', '2023-04-14', '-', 'pengelolaan akreditasi prodi.pdf', 2023, 'Y'),
(663, 132, 'RPS MK SISTEM TRANSPORTASI PARIWISATA', '2023-04-14', '0', 'RPS MK SISTEM TRANSPORTASI PARIWISATA.pdf', 2023, 'Y'),
(664, 131, 'penyusunan evaluasi diri', '2023-04-14', '-', 'penyusunan evaluasi diri.pdf', 2023, 'Y'),
(665, 132, 'RPS MK USAHA PERJALANAN WISATA', '2023-04-14', '0', 'RPS MK USAHA PERJALANAN WISATA.pdf', 2023, 'Y'),
(666, 131, 'proses pembelajaran', '2023-04-14', '-', 'proses pembelajaran.pdf', 2023, 'Y'),
(667, 131, 'sidang komprehensif penelitian', '2023-04-14', '-', 'sidang komprehensif penelitian.pdf', 2023, 'Y'),
(668, 131, 'sidang usulan penelitian', '2023-04-14', '-', 'sidang usulan penelitian.pdf', 2023, 'Y'),
(669, 131, 'SOP KEGIATAN MAHASISWA-PSSR (1)', '2023-04-14', '-', 'SOP KEGIATAN MAHASISWA-PSSR (1).pdf', 2023, 'Y'),
(670, 132, 'RPS Pemasaran Destinasi Pariwisata III', '2023-04-14', '0', 'RPS Pemasaran Destinasi Pariwisata III.pdf', 2023, 'Y'),
(671, 131, 'suasana akademik', '2023-04-14', '-', 'suasana akademik.pdf', 2023, 'Y'),
(672, 131, 'yudisium', '2023-04-14', '-', 'yudisium.pdf', 2023, 'Y'),
(673, 132, 'RPS PERENCANAAN DESTINASI PARIWISATA I', '2023-04-14', '0', 'RPS PERENCANAAN DESTINASI PARIWISATA I.pdf', 20232, 'Y'),
(674, 132, 'CONTOH RPS 2021', '2023-04-14', '0', 'CONTOH RPS 2021.pdf', 2023, 'Y'),
(675, 132, 'RPS 3D Arsitektur_Riza G', '2023-04-14', '0', 'RPS 3D Arsitektur_Riza G.pdf', 2023, 'Y'),
(676, 132, 'RPS Animasi 2D1_Niko', '2023-04-14', '0', 'RPS Animasi 2D1_Niko.pdf', 2023, 'Y'),
(677, 132, 'RPS Animasi 2D2_Niko', '2023-04-14', '0', 'RPS Animasi 2D2_Niko.pdf', 2023, 'Y'),
(678, 132, 'RPS Animasi 3D1 Basic_ Moses RG', '2023-04-14', 'R0', 'RPS Animasi 3D1 Basic_ Moses RG.pdf', 2023, 'Y'),
(679, 132, 'RPS Animasi 3D2 Body Mechanic_Moses RG', '2023-04-14', '0', 'RPS Animasi 3D2 Body Mechanic_Moses RG.pdf', 2023, 'Y'),
(680, 132, 'RPS Bahasa Inggris SSR Animasi', '2023-04-14', '0', 'RPS Bahasa Inggris SSR Animasi.pdf', 2023, 'Y'),
(681, 132, 'RPS Bahasa Inggris SSR Animasi', '2023-04-14', '0', 'RPS Bahasa Inggris SSR DKV.pdf', 2023, 'Y'),
(682, 132, 'RPS Desain Editorial_Riza G', '2023-04-14', '0', 'RPS Desain Editorial_Riza G.pdf', 2023, 'Y'),
(683, 132, 'RPS Desain Karakter_Toni H', '2023-04-14', '0', 'RPS Desain Karakter_Toni H.pdf', 2023, 'Y'),
(684, 132, 'RPS Digital Image_Edi Sarwono', '2023-04-14', '0', 'RPS Digital Image_Edi Sarwono.pdf', 2023, 'Y'),
(685, 132, 'RPS Digital Vector_Edi Sarwono', '2023-04-14', '0', 'RPS Digital Vector_Edi Sarwono.pdf', 2023, 'Y'),
(686, 132, 'RPS Editing Video_Dani', '2023-04-14', '0', 'RPS Editing Video_Dani.pdf', 2023, 'Y'),
(687, 132, 'RPS Gambar Bentuk_Toni H', '2023-04-14', '0', 'RPS Gambar Bentuk_Toni H.pdf', 2023, 'Y'),
(688, 132, 'RPS Gambar Steksa_Toni H', '2023-04-14', '0', 'RPS Gambar Steksa_Toni H.pdf', 2023, 'Y'),
(689, 132, 'RPS Marketing Campaign_Riza G', '2023-04-14', '0', 'RPS Marketing Campaign_Riza G.pdf', 2023, 'Y'),
(690, 132, 'RPS Material & tekstur_Moses RG', '2023-04-14', '0', 'RPS Material & tekstur_Moses RG.pdf', 2023, 'Y'),
(691, 132, 'RPS Model 3D Karakter_Lukas S', '2023-04-14', '0', 'RPS Model 3D Karakter_Lukas S.pdf', 2023, 'Y'),
(692, 132, 'RPS Model 3D Property_Lukas S', '2023-04-14', '0', 'RPS Model 3D Property_Lukas S.pdf', 2023, 'Y'),
(693, 132, 'RPS Model 3D Property_Lukas S', '2023-04-14', '0', 'RPS Mograph_Edi Sarwono.pdf', 2023, 'Y'),
(694, 132, 'RPS Pengantar Animasi_Lukas S', '2023-04-14', '0', 'RPS Pengantar Animasi_Lukas S.pdf', 2023, 'Y'),
(695, 132, 'RPS Penulisan Naskah_Dani', '2023-04-14', '0', 'RPS Penulisan Naskah_Dani.pdf', 2023, 'Y'),
(696, 132, 'RPS Sejarah Seni Rupa & Desain_Tupak', '2023-04-14', '0', 'RPS Sejarah Seni Rupa & Desain_Tupak.pdf', 2023, 'Y'),
(697, 132, 'RPS Videografi_Dani', '2023-04-14', '0', 'RPS Videografi_Dani.pdf', 2023, 'Y'),
(698, 132, 'RPS Visual Identity_Tupak', '2023-04-14', '0', 'RPS Visual Identity_Tupak.pdf', 2023, 'Y'),
(699, 133, 'LED PS DKV SSR', '2023-04-14', '0', 'LED PS DKV SSR.pdf', 2023, 'Y'),
(700, 133, 'LED PS DKV SSR', '2023-04-14', '0', 'LED PS DKV SSR.pdf', 2023, 'Y'),
(701, 133, 'LKPS DKV SSR', '2023-04-14', '0', 'LKPS DKV SSR.pdf', 2023, 'Y'),
(702, 133, 'LKPS DKV SSR', '2023-04-14', '0', 'LKPS DKV SSR.htm', 2023, 'Y'),
(703, 133, 'SK, Renstra. Renop DKV', '2023-04-14', '0', 'SK, Renstra. Renop DKV.pdf', 2023, 'Y'),
(704, 133, 'ijin pendirian Politeknik', '2023-04-14', '0', 'ijin pendirian Politeknik.pdf', 2023, 'Y'),
(705, 133, 'ilkp', '2023-04-14', '0', 'ilkp.htm', 2023, 'Y'),
(706, 133, 'led animasi', '2023-04-14', '0', 'led animasi.pdf', 2023, 'Y'),
(707, 133, 'LKPS ANIMASI', '2023-04-14', '0', 'LKPS ANIMASI.pdf', 2023, 'Y'),
(708, 133, 'srt PErmohonan Akreditasi animasi', '2023-04-14', '0', 'srt PErmohonan Akreditasi animasi.pdf', 2023, 'Y'),
(709, 133, 'surat pernyataan karodi animasi', '2023-04-14', '0', 'surat pernyataan karodi animasi.pdf', 2023, 'Y'),
(710, 133, 'LED Despar', '2023-04-14', '0', 'LED Despar.pdf', 2023, 'Y'),
(711, 133, 'LED Despar', '2023-04-14', '0', 'LED Despar.pdf', 2023, 'Y'),
(712, 133, 'LKPS Despar', '2023-04-14', '0', 'LKPS Despar.pdf', 2023, 'Y'),
(713, 133, 'LKPS Despar', '2023-04-14', '0', 'LKPS Despar.htm', 2023, 'Y'),
(714, 133, 'SK, Renstra, Renop Despar', '2023-04-14', '0', 'SK, Renstra, Renop Despar.pdf', 2023, 'Y'),
(715, 133, 'pengajuan perubahan tipe 2.1.1 (Recovered)', '2023-04-14', '0', 'pengajuan perubahan tipe 2.1.1 (Recovered).pdf', 2023, 'Y'),
(716, 133, 'pengajuan perubahan tipe 2.1.1', '2023-04-14', '0', 'pengajuan perubahan tipe 2.1.1.pdf', 2023, 'Y'),
(717, 133, 'pengajuan perubahan tipe 2.1', '2023-04-14', '0', 'pengajuan perubahan tipe 2.1.jpg', 2023, 'Y'),
(718, 133, 'pengajuan perubahan tipe 2.2 (Recovered)', '2023-04-14', '0', 'pengajuan perubahan tipe 2.2 (Recovered).pdf', 2023, 'Y'),
(719, 133, 'pengajuan perubahan tipe 2.2', '2023-04-14', '0', 'pengajuan perubahan tipe 2.2.jpg', 2023, 'Y'),
(720, 133, 'pengajuan perubahan tipe 2', '2023-04-14', '0', 'pengajuan perubahan tipe 2.pdf', 2023, 'Y'),
(721, 133, 'pengusulan pembukaan data type 2.1.jpeg', '2023-04-14', '0', 'pengusulan pembukaan data type 2.1.jpeg.pdf', 2023, 'Y'),
(722, 133, 'Politeknik Sains Seni Rekreasi (Recovered)', '2023-04-14', '0', 'Politeknik Sains Seni Rekreasi (Recovered).pdf', 2023, 'Y'),
(723, 133, 'Politeknik Sains Seni Rekreasi(1)', '2023-04-14', '0', 'Politeknik Sains Seni Rekreasi(1).pdf', 2023, 'Y'),
(724, 133, 'Politeknik Sains Seni Rekreasi', '2023-04-14', '0', 'Politeknik Sains Seni Rekreasi.pdf', 2023, 'Y'),
(725, 133, 'Surat rekomendasi akreditasi_SSR', '2023-04-14', '0', 'Surat rekomendasi akreditasi_SSR.pdf', 2023, 'Y'),
(726, 133, 'Surat rekomendasi akreditasi_SSR', '2023-04-14', '0', 'Surat rekomendasi akreditasi_SSR.pdf', 2023, 'Y'),
(731, 133, 'Surat rekomendasi akreditasi_SSR', '2023-04-14', '0', 'Surat rekomendasi akreditasi_SSR.pdf', 2023, 'Y'),
(732, 134, 'raihan', '2023-04-15', '-', 'raihan.pdf', 2023, 'Y'),
(733, 134, 'TA TA TA revisi TERAKHIR', '2023-04-15', '-', 'TA TA TA revisi TERAKHIR.pdf', 2023, 'Y'),
(734, 135, 'KURIKULUM DESPAR BERJALAN', '2023-04-15', '-', 'KURIKULUM DESPAR BERJALAN.htm', 2023, 'Y'),
(735, 136, 'ATURAN PENULISAN SURAT', '2023-04-15', '-', 'ATURAN PENULISAN SURAT.pdf', 2023, 'Y'),
(736, 137, 'KOP POLITEKNIK SSR BARU', '2023-04-15', '-', 'KOP POLITEKNIK SSR BARU.pdf', 2023, 'Y'),
(737, 137, 'KOP SURAT Moudy', '2023-04-15', '-', 'KOP SURAT Moudy.pdf', 2023, 'Y'),
(738, 137, 'kop surat politeknik ssr-01 copy', '2023-04-15', '-', 'kop surat politeknik ssr-01 copy.pdf', 2023, 'Y'),
(739, 137, 'KOP SURAT SSR JAKARTA', '2023-04-15', '-', 'KOP SURAT SSR JAKARTA.pdf', 2023, 'Y'),
(740, 137, 'KOP SURAT SSR JAKARTA', '2023-04-15', '-', 'KOP SURAT SSR JAKARTA.pdf', 2023, 'Y'),
(741, 137, 'KOP SURAT', '2023-04-15', '-', 'KOP SURAT.pdf', 2023, 'Y'),
(742, 138, 'Nomor Surat kluar masuk', '2023-04-15', '-', 'Nomor Surat kluar masuk.htm', 2023, 'Y'),
(743, 138, 'Nomor Surat', '2023-04-15', '-', 'Nomor Surat.htm', 2023, 'Y'),
(744, 139, 'Surat Pengumuman libur idulfitri', '2023-04-15', '-', 'Surat Pengumuman libur idulfitri.pdf', 2023, 'Y'),
(746, 177, 'AMI  matrik 19-20 ganjil-Animasi -ok', '2023-04-17', '0', '01. AMI  matrik 19-20 ganjil-Animasi -ok.pdf', 2023, 'Y'),
(747, 177, ' AMI 20-21 ganjil-ANIMASI ok', '2023-04-17', '0', '01. AMI 20-21 ganjil-ANIMASI ok.pdf', 2023, 'Y'),
(748, 177, 'AMI 20-21 Genap-ANIMASI ok', '2023-04-17', '0', '01. AMI 20-21 Genap-ANIMASI ok.pdf', 2023, 'Y'),
(749, 177, 'AMI matrik 19-20 genap-Animasi ok', '2023-04-17', '0', '01. AMI matrik 19-20 genap-Animasi ok.pdf', 2023, 'Y'),
(750, 177, 'AMI 21-22 ganjil-ANIMASI ok', '2023-04-17', '0', 'AMI 21-22 ganjil-ANIMASI ok.pdf', 2023, 'Y'),
(751, 177, ' AMI  matrik 19-20 ganjil-Animasi -ok', '2023-04-17', '0', '01. AMI  matrik 19-20 ganjil-Animasi -ok.pdf', 2023, 'Y'),
(752, 177, ' AMI matrik 19-20 genap-Animasi ok', '2023-04-17', '0', '01. AMI matrik 19-20 genap-Animasi ok.pdf', 2023, 'Y'),
(753, 177, 'AMI komplit matrik 19-20 ganjil-DESPAR', '2023-04-17', '0', 'AMI komplit matrik 19-20 ganjil-DESPAR.pdf', 2023, 'Y'),
(754, 177, 'AMI komplit matrik 19-20 ganjil-DKV', '2023-04-17', '0', 'AMI komplit matrik 19-20 ganjil-DKV.pdf', 2023, 'Y'),
(755, 177, 'AMI komplit matrik 19-20 genap-DESPAR', '2023-04-17', '0', 'AMI komplit matrik 19-20 genap-DESPAR.pdf', 2023, 'Y'),
(756, 177, 'AMI komplit matrik 19-20 genap-DKV', '2023-04-17', '0', 'AMI komplit matrik 19-20 genap-DKV.pdf', 2023, 'Y'),
(757, 177, ' AMI 20-21 ganjil-ANIMASI ok', '2023-04-17', '0', '01. AMI 20-21 ganjil-ANIMASI ok.pdf', 2023, 'Y'),
(758, 177, 'AMI 20-21 Genap-ANIMASI ok', '2023-04-17', '0', '01. AMI 20-21 Genap-ANIMASI ok.pdf', 2023, 'Y'),
(759, 177, 'AMI 20-21 ganjil-DESPAR', '2023-04-17', '0', 'AMI 20-21 ganjil-DESPAR.pdf', 2023, 'Y'),
(760, 177, 'AMI 20-21 ganjil-DKV', '2023-04-17', '0', 'AMI 20-21 ganjil-DKV.pdf', 2023, 'Y'),
(761, 177, 'AMI 20-21 Genap-DESPAR', '2023-04-17', '0', 'AMI 20-21 Genap-DESPAR.pdf', 2023, 'Y'),
(762, 177, 'AMI 20-21 Genap-DKV', '2023-04-17', '0', 'AMI 20-21 Genap-DKV.pdf', 2023, 'Y'),
(763, 177, 'AMI 21-22 ganjil-ANIMASI ok', '2023-04-17', '0', 'AMI 21-22 ganjil-ANIMASI ok.pdf', 2023, 'Y'),
(764, 177, 'AMI 21-22 ganjil-DESPAR', '2023-04-17', '0', 'AMI 21-22 ganjil-DESPAR.pdf', 2023, 'Y'),
(765, 177, 'AMI 21-22 ganjil-DKV', '2023-04-17', '0', 'AMI 21-22 ganjil-DKV.pdf', 2023, 'Y'),
(766, 177, 'AMI 21-22 Genap-ANIMASI', '2023-04-17', '0', 'AMI 21-22 Genap-ANIMASI.pdf', 2023, 'Y'),
(767, 177, 'AMI 21-22 Genap-DESPAR', '2023-04-17', '0', 'AMI 21-22 Genap-DESPAR.pdf', 2023, 'Y'),
(768, 177, 'AMI 21-22 Genap-DKV', '2023-04-17', '0', 'AMI 21-22 Genap-DKV.pdf', 2023, 'Y'),
(769, 177, 'Prosedur Mutu Pembimbingan Akademik', '2023-04-17', '0', '1. Prosedur Mutu Pembimbingan Akademik.pdf', 2023, 'Y'),
(770, 177, 'Penetapan Pembimbing Akademik', '2023-04-17', '0', '2. Penetapan Pembimbing Akademik.pdf', 2023, 'Y'),
(771, 177, 'Penetapan Dosen Pengajar Mata Kuliah', '2023-04-17', '0', '3. Penetapan Dosen Pengajar Mata Kuliah.pdf', 2023, 'Y'),
(772, 177, 'Konversi Mata Kuliah', '2023-04-17', '0', '4. Konversi Mata Kuliah.pdf', 2023, 'Y'),
(773, 177, 'Proses Pembelajaran', '2023-04-17', '0', '5. Proses Pembelajaran.pdf', 2023, 'Y'),
(774, 177, 'Pembuatan SAP', '2023-04-17', '0', '6. Pembuatan SAP.pdf', 2023, 'Y'),
(775, 177, 'Monitoring SAP', '2023-04-17', '0', '7. Monitoring SAP.pdf', 2023, 'Y'),
(776, 177, 'Prosedur Mutu Ujian', '2023-04-17', '0', '8. Prosedur Mutu Ujian.pdf', 2023, 'Y'),
(777, 177, 'Penerimaan Calon Mahasiswa', '2023-04-17', '0', '9. Penerimaan Calon Mahasiswa.pdf', 2023, 'Y'),
(778, 177, ' Penetapan Dosen Pembimbing Tugas Akhir', '2023-04-17', '0', '10. Penetapan Dosen Pembimbing Tugas Akhir.pdf', 2023, 'Y'),
(779, 177, 'Usulan Penelitian', '2023-04-17', '0', '11. Usulan Penelitian.pdf', 2023, 'Y'),
(780, 177, 'Sudang Usulan Penelitian', '2023-04-17', '0', '12. Sudang Usulan Penelitian.pdf', 2023, 'Y'),
(781, 177, ' Pelaksanaan Penelitian', '2023-04-17', '0', '13. Pelaksanaan Penelitian.pdf', 2023, 'Y'),
(782, 177, ' Sidang Komprehensif Penelitian', '2023-04-17', '0', '14. Sidang Komprehensif Penelitian.pdf', 2023, 'Y'),
(783, 177, ' Yudisium', '2023-04-17', '0', '15. Yudisium.pdf', 2023, 'Y'),
(784, 177, ' Perancangan dan Pengembangan Kurikulum', '2023-04-17', '0', '16. Perancangan dan Pengembangan Kurikulum.pdf', 2023, 'Y'),
(785, 177, ' Monitoring dan Evaluasi Kurikulum', '2023-04-17', '0', '17. Monitoring dan Evaluasi Kurikulum.pdf', 2023, 'Y'),
(786, 177, 'Suasana Akademik', '2023-04-17', '0', '18. Suasana Akademik.pdf', 2023, 'Y'),
(787, 177, ' Evaluasi Kinerja Dosen dan Tendik', '2023-04-17', '0', '19. Evaluasi Kinerja Dosen dan Tendik.pdf', 2023, 'Y'),
(788, 177, 'Penanganan Dosen dan Tendik Bermasalah', '2023-04-17', '0', '20. Penanganan Dosen dan Tendik Bermasalah.pdf', 2023, 'Y'),
(789, 177, 'Peyusunan Evaluasi Diri', '2023-04-17', '0', '21. Peyusunan Evaluasi Diri.pdf', 2023, 'Y'),
(790, 177, ' Pengelolaan Akreditasi Prodi', '2023-04-17', '0', '22. Pengelolaan Akreditasi Prodi.pdf', 2023, 'Y'),
(791, 177, 'BUKU FORMULIR_SPMI POLTEK SSR', '2023-04-17', '0', 'BUKU FORMULIR_SPMI POLTEK SSR.pdf', 2023, 'Y'),
(792, 177, 'KEBIJAKAN MUTU POLTEK SSR', '2023-04-17', '0', 'KEBIJAKAN MUTU POLTEK SSR.pdf', 2023, 'Y'),
(793, 177, 'MANUAL MUTU POLTEK SSR', '2023-04-17', '0', 'MANUAL MUTU POLTEK SSR.pdf', 2023, 'Y'),
(794, 177, 'Standar Mutu Poltek SSR final', '2023-04-17', '0', 'Standar Mutu Poltek SSR final.pdf', 2023, 'Y'),
(795, 177, 'standar mutu ssr', '2023-04-17', '0', 'standar mutu ssr.pdf', 2023, 'Y'),
(796, 177, 'KEBIJAKAN MUTU POLTEK SSR', '2023-04-17', '0', 'KEBIJAKAN MUTU POLTEK SSR.pdf', 2023, 'Y'),
(797, 177, 'MANUAL MUTU POLTEK SSR', '2023-04-17', '0', 'MANUAL MUTU POLTEK SSR.pdf', 2023, 'Y'),
(798, 177, 'Standar Mutu Poltek SSR', '2023-04-17', '0', 'Standar Mutu Poltek SSR.pdf', 2023, 'Y'),
(799, 177, ' Prosedur Mutu Pembimbingan Akademik', '2023-04-17', '0', '1. Prosedur Mutu Pembimbingan Akademik.pdf', 2023, 'Y'),
(800, 177, ' Penetapan Pembimbing Akademik', '2023-04-17', '0', '2. Penetapan Pembimbing Akademik.pdf', 2023, 'Y'),
(801, 177, ' Penetapan Dosen Pengajar Mata Kuliah', '2023-04-17', '0', '3. Penetapan Dosen Pengajar Mata Kuliah.pdf', 2023, 'Y'),
(802, 177, ' Konversi Mata Kuliah', '2023-04-17', '0', '4. Konversi Mata Kuliah.pdf', 2023, 'Y'),
(803, 177, 'Proses Pembelajaran', '2023-04-17', '0', '5. Proses Pembelajaran.pdf', 2023, 'Y'),
(804, 177, ' Pembuatan SAP', '2023-04-17', '0', '6. Pembuatan SAP.pdf', 2023, 'Y'),
(805, 177, 'Monitoring SAP', '2023-04-17', '0', '7. Monitoring SAP.pdf', 2023, 'Y'),
(806, 177, ' Prosedur Mutu Ujian', '2023-04-17', '0', '8. Prosedur Mutu Ujian.pdf', 2023, 'Y'),
(807, 177, 'Penerimaan Calon Mahasiswa', '2023-04-17', '0', '9. Penerimaan Calon Mahasiswa.pdf', 2023, 'Y'),
(808, 177, 'Penetapan Dosen Pembimbing Tugas Akhir', '2023-04-17', '0', '10. Penetapan Dosen Pembimbing Tugas Akhir.pdf', 2023, 'Y'),
(809, 177, 'Usulan Penelitian', '2023-04-17', '0', '11. Usulan Penelitian.pdf', 2023, 'Y'),
(810, 177, ' Sudang Usulan Penelitian', '2023-04-17', '0', '12. Sudang Usulan Penelitian.pdf', 2023, 'Y'),
(811, 177, 'Pelaksanaan Penelitian', '2023-04-17', '0', '13. Pelaksanaan Penelitian.pdf', 2023, 'Y'),
(812, 177, 'Sidang Komprehensif Penelitian', '2023-04-17', '0', '14. Sidang Komprehensif Penelitian.pdf', 2023, 'Y'),
(813, 177, ' Yudisium', '2023-04-17', '0', '15. Yudisium.pdf', 2023, 'Y'),
(814, 177, ' Perancangan dan Pengembangan Kurikulum', '2023-04-17', '0', '16. Perancangan dan Pengembangan Kurikulum.pdf', 2023, 'Y'),
(815, 177, 'Monitoring dan Evaluasi Kurikulum', '2023-04-17', '0', '17. Monitoring dan Evaluasi Kurikulum.pdf', 2023, 'Y'),
(816, 177, 'Suasana Akademik', '2023-04-17', '0', '18. Suasana Akademik.pdf', 2023, 'Y'),
(817, 177, 'Evaluasi Kinerja Dosen dan Tendik', '2023-04-17', '0', '19. Evaluasi Kinerja Dosen dan Tendik.pdf', 2023, 'Y'),
(818, 177, 'Penanganan Dosen dan Tendik Bermasalah', '2023-04-17', '0', '20. Penanganan Dosen dan Tendik Bermasalah.pdf', 2023, 'Y'),
(819, 177, 'Peyusunan Evaluasi Diri', '2023-04-17', '0', '21. Peyusunan Evaluasi Diri.pdf', 2023, 'Y'),
(820, 177, 'Pengelolaan Akreditasi Prodi', '2023-04-17', '0', '22. Pengelolaan Akreditasi Prodi.pdf', 2023, 'Y'),
(821, 177, 'Penerimaan dan Pembinaan Pegawai dan Dosen', '2023-04-17', '0', '23-Penerimaan dan Pembinaan Pegawai dan Dosen.pdf', 2023, 'Y'),
(822, 177, 'BUKU FORMULIR_SPMI POLTEK SSR unchek by bu edvin', '2023-04-17', '0', 'BUKU FORMULIR_SPMI POLTEK SSR unchek by bu edvin.pdf', 2023, 'Y'),
(823, 179, 'Politeknik ssr', '2023-04-17', '1', 'Logo Politeknik SSR Hitam.png', 2022, 'Y'),
(824, 0, 'RTI', '2023-04-17', '1', 'LOGO RTI.jpg', 2022, 'Y'),
(825, 179, 'logo SSR hitam', '2023-04-17', '0', 'logo SSR hitam.png', 2023, 'Y'),
(826, 179, 'LOGO RTI', '2023-04-17', '0', 'LOGO RTI.jpg', 2022, 'Y'),
(827, 180, 'AMI komplit matrik 19-20 ganjil-DKV', '2023-04-17', '0', 'AMI komplit matrik 19-20 ganjil-DKV.pdf', 2023, 'Y'),
(828, 180, 'AMI komplit matrik 19-20 genap-DKV', '2023-04-17', '0', 'AMI komplit matrik 19-20 genap-DKV.pdf', 2023, 'Y'),
(829, 180, 'AMI komplit matrik 20-21 ganjil-DKV -', '2023-04-17', '0', 'AMI komplit matrik 20-21 ganjil-DKV -.pdf', 2023, 'Y'),
(830, 180, 'AMI komplit matrik 20-21 ganjil-Teknika', '2023-04-17', '0', 'AMI komplit matrik 20-21 ganjil-Teknika.pdf', 2023, 'Y'),
(831, 180, 'AMI komplit matrik 20-21 genap-DKV', '2023-04-17', '0', 'AMI komplit matrik 20-21 genap-DKV.pdf', 2023, 'Y'),
(832, 180, 'AMI komplit matrik 20-21 genap-Nautika', '2023-04-17', '0', 'AMI komplit matrik 20-21 genap-Nautika.pdf', 2023, 'Y'),
(833, 180, 'AMI komplit matrik 20-21 genap-Teknika', '2023-04-17', '0', 'AMI komplit matrik 20-21 genap-Teknika.pdf', 2023, 'Y'),
(834, 180, 'AMI komplit matrik 19-20 genap-DKV', '2023-04-17', '0', 'AMI komplit matrik 19-20 genap-DKV.pdf', 2023, 'Y'),
(835, 180, 'AMI komplit matrik 20-21 ganjil-DKV -', '2023-04-17', '0', 'AMI komplit matrik 20-21 ganjil-DKV -.pdf', 2023, 'Y'),
(836, 180, 'AMI komplit matrik 20-21 ganjil-Teknika', '2023-04-17', '0', 'AMI komplit matrik 20-21 ganjil-Teknika.pdf', 2023, 'Y'),
(837, 180, 'AMI komplit matrik 20-21 genap-DKV', '2023-04-17', '0', 'AMI komplit matrik 20-21 genap-DKV.pdf', 2023, 'Y'),
(838, 180, 'AMI komplit matrik 20-21 genap-Nautika', '2023-04-17', '0', 'AMI komplit matrik 20-21 genap-Nautika.pdf', 2023, 'Y'),
(839, 180, 'AMI komplit matrik 20-21 genap-Teknika', '2023-04-17', '0', 'AMI komplit matrik 20-21 genap-Teknika.pdf', 2023, 'Y'),
(840, 180, 'AMI komplit matrik 21-21 ganjil-DKV', '2023-04-17', '0', 'AMI komplit matrik 21-21 ganjil-DKV.pdf', 2023, 'Y'),
(841, 180, 'AMI komplit matrik 19-20 ganjil-DKV', '2023-04-17', '0', 'AMI komplit matrik 19-20 ganjil-DKV.pdf', 2023, 'Y'),
(842, 180, 'AMI komplit matrik 19-20 genap-DKV', '2023-04-17', '0', 'AMI komplit matrik 19-20 genap-DKV.pdf', 2023, 'Y'),
(843, 180, 'AMI komplit matrik 20-21 ganjil-DKV -', '2023-04-17', '0', 'AMI komplit matrik 20-21 ganjil-DKV -.pdf', 2023, 'Y'),
(844, 180, 'AMI komplit matrik 20-21 ganjil-Teknika', '2023-04-17', '0', 'AMI komplit matrik 20-21 ganjil-Teknika.pdf', 2023, 'Y'),
(845, 180, 'AMI komplit matrik 20-21 genap-DKV', '2023-04-17', '0', 'AMI komplit matrik 20-21 genap-DKV.pdf', 2023, 'Y'),
(846, 180, 'AMI komplit matrik 20-21 genap-Nautika', '2023-04-17', '0', 'AMI komplit matrik 20-21 genap-Nautika.pdf', 2023, 'Y'),
(847, 180, 'AMI komplit matrik 20-21 genap-Teknika', '2023-04-17', '0', 'AMI komplit matrik 20-21 genap-Teknika.pdf', 2023, 'Y'),
(848, 182, 'KEHADIRAN DOSEN KPNK 2020  20201', '2023-04-17', '0', 'KEHADIRAN DOSEN KPNK 2020  20201.htm', 2023, 'Y'),
(849, 182, 'KEHADIRAN DOSEN NAUTIKA 2020  20201', '2023-04-17', '0', 'KEHADIRAN DOSEN NAUTIKA 2020  20201.htm', 2023, 'Y'),
(850, 182, 'KEHADIRAN DOSEN TEKNIKA 2020  20201', '2023-04-17', '0', 'KEHADIRAN DOSEN TEKNIKA 2020  20201.htm', 2023, 'Y'),
(851, 182, 'REKAP KEHADIRAN DOSEN 2019-2020', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2019-2020.htm', 2023, 'Y'),
(852, 182, 'REKAP KEHADIRAN DOSEN 2020-2021', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2020-2021.htm', 2023, 'Y'),
(853, 182, 'REKAP KEHADIRAN DOSEN 2021-2022', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2021-2022.htm', 2023, 'Y'),
(854, 182, 'REKAP KEHADIRAN DOSEN 2019-2020', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2019-2020.htm', 2023, 'Y'),
(855, 182, 'REKAP KEHADIRAN DOSEN 2020-2021', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2020-2021.htm', 2023, 'Y'),
(856, 182, 'REKAP KEHADIRAN DOSEN 2021-2022', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2021-2022.htm', 2023, 'Y'),
(857, 182, 'REKAP KEHADIRAN DOSEN 2019-2020', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2019-2020.htm', 2023, 'Y'),
(858, 182, 'REKAP KEHADIRAN DOSEN 2020-2021', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2020-2021.htm', 2023, 'Y'),
(859, 182, 'REKAP KEHADIRAN DOSEN 2021-2022', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2021-2022.htm', 2023, 'Y'),
(860, 183, 'REKAP KEHADIRAN MAHASISWA 19-20', '2023-04-17', '0', 'REKAP KEHADIRAN MAHASISWA 19-20.htm', 2023, 'Y'),
(861, 183, 'REKAP KEHADIRAN MAHASISWA 20-21', '2023-04-17', '0', 'REKAP KEHADIRAN MAHASISWA 20-21.htm', 2023, 'Y'),
(862, 183, 'REKAP KEHADIRAN MAHASISWA 21-22', '2023-04-17', '0', 'REKAP KEHADIRAN MAHASISWA 21-22.htm', 2023, 'Y'),
(863, 183, 'REKAP KEHADIRAN MAHASISWA 19-20', '2023-04-17', '0', 'REKAP KEHADIRAN MAHASISWA 19-20.htm', 2023, 'Y'),
(864, 183, 'REKAP KEHADIRAN MAHASISWA 20-21', '2023-04-17', '0', 'REKAP KEHADIRAN MAHASISWA 20-21.htm', 2023, 'Y'),
(865, 183, 'REKAP KEHADIRAN MAHASISWA 21-22', '2023-04-17', '0', 'REKAP KEHADIRAN MAHASISWA 21-22.htm', 2023, 'Y'),
(866, 183, 'REKAP KEHADIRAN TARUNA 2017  2018', '2023-04-17', '0', 'REKAP KEHADIRAN TARUNA 2017  2018.htm', 2023, 'Y'),
(867, 183, 'REKAP KEHADIRAN TARUNA 2018  2019', '2023-04-17', '0', 'REKAP KEHADIRAN TARUNA 2018  2019.htm', 2023, 'Y'),
(868, 183, 'REKAP KEHADIRAN TARUNA 2019  2020', '2023-04-17', '0', 'REKAP KEHADIRAN TARUNA 2019  2020.htm', 2023, 'Y'),
(869, 184, 'KEHADIRAN TARUNA ANIMASI 2020  2021', '2023-04-17', '0', 'KEHADIRAN TARUNA ANIMASI 2020  2021.htm', 2023, 'Y'),
(870, 184, 'KEHADIRAN TARUNA DKV 2020  2021', '2023-04-17', '0', 'KEHADIRAN TARUNA DKV 2020  2021.htm', 2023, 'Y'),
(871, 184, 'KEHADIRAN TARUNA DP 2020  2021', '2023-04-17', '0', 'KEHADIRAN TARUNA DP 2020  2021.htm', 2023, 'Y'),
(872, 185, 'ANISSOFIAH AZISE W, ANT I MM', '2023-04-17', '0', 'ANISSOFIAH AZISE W, ANT I MM.pdf', 2023, 'Y'),
(873, 185, 'ANUNG ADI CAHYA', '2023-04-17', '0', 'ANUNG ADI CAHYA.pdf', 2023, 'Y'),
(874, 185, 'Capt. DEDI NURYAMAN', '2023-04-17', '0', 'Capt. DEDI NURYAMAN.pdf', 2023, 'Y'),
(875, 185, 'Capt. H. ACHMAD SUHARDONO', '2023-04-17', '0', 'Capt. H. ACHMAD SUHARDONO.pdf', 2023, 'Y'),
(876, 185, 'Capt. HERMAWAN', '2023-04-17', '0', 'Capt. HERMAWAN.pdf', 2023, 'Y'),
(877, 185, 'Capt. ROCHANDA', '2023-04-17', '0', 'Capt. ROCHANDA.pdf', 2023, 'Y'),
(878, 185, 'Capt. THAMRIN LAOMANG', '2023-04-17', '0', 'Capt. THAMRIN LAOMANG.pdf', 2023, 'Y'),
(879, 185, 'DHINI WARTI, M.Si', '2023-04-17', '0', 'DHINI WARTI, M.Si.pdf', 2023, 'Y'),
(880, 185, 'Drs. H. YAHYA', '2023-04-17', '0', 'Drs. H. YAHYA.pdf', 2023, 'Y'),
(881, 185, 'Drs. YOHANES MURYADI', '2023-04-17', '0', 'Drs. YOHANES MURYADI.pdf', 2023, 'Y'),
(882, 185, 'ERI J. LESMANA, ST', '2023-04-17', '0', 'ERI J. LESMANA, ST.pdf', 2023, 'Y'),
(883, 185, 'EUIS ANTIKA, MM', '2023-04-17', '0', 'EUIS ANTIKA, MM.pdf', 2023, 'Y'),
(884, 185, 'H. SENTOT', '2023-04-17', '0', 'H. SENTOT.pdf', 2023, 'Y'),
(885, 185, 'H. SUPENA DIANSYAH, MH', '2023-04-17', '0', 'H. SUPENA DIANSYAH, MH.pdf', 2023, 'Y'),
(886, 185, 'HADI PRAMONO, M.Pd', '2023-04-17', '0', 'HADI PRAMONO, M.Pd.pdf', 2023, 'Y'),
(887, 185, 'KARNIYAH, ANT III', '2023-04-17', '0', 'KARNIYAH, ANT III.pdf', 2023, 'Y'),
(888, 184, 'M. SOHIBUL ANWAR, M.Pd.I', '2023-04-17', '0', 'M. SOHIBUL ANWAR, M.Pd.I.pdf', 2023, 'Y'),
(889, 185, 'RINA PRIHANI, S.Komp', '2023-04-17', '0', 'RINA PRIHANI, S.Komp.pdf', 2023, 'Y'),
(890, 185, 'STEVANUS FRANSISCUS', '2023-04-17', '0', 'STEVANUS FRANSISCUS.pdf', 2023, 'Y'),
(891, 185, 'TRI SUBAHAGIANTO, MPB III', '2023-04-17', '0', 'TRI SUBAHAGIANTO, MPB III.pdf', 2023, 'Y'),
(892, 185, 'ABDUL FATAH', '2023-04-17', '0', 'ABDUL FATAH.pdf', 2023, 'Y'),
(893, 185, 'ADENG DIARTO', '2023-04-17', '0', 'ADENG DIARTO.pdf', 2023, 'Y'),
(894, 185, 'ADI ROSMANA', '2023-04-17', '0', 'ADI ROSMANA.pdf', 2023, 'Y'),
(895, 185, 'AI DEWI P', '2023-04-17', '0', 'AI DEWI P.pdf', 2023, 'Y'),
(896, 185, 'DANANJAYA', '2023-04-17', '0', 'DANANJAYA.pdf', 2023, 'Y'),
(897, 185, 'Drs. SUKIMAN', '2023-04-17', '0', 'Drs. SUKIMAN.pdf', 2023, 'Y'),
(898, 185, 'ELIS SUSWATI, M.Si', '2023-04-17', '0', 'ELIS SUSWATI, M.Si.pdf', 2023, 'Y'),
(899, 185, 'ERI J. LESMANA, ST', '2023-04-17', '0', 'ERI J. LESMANA, ST.pdf', 2023, 'Y'),
(900, 185, 'ERI J. LESMANA, ST', '2023-04-17', '0', 'ERI J. LESMANA, ST.pdf', 2023, 'Y'),
(901, 185, 'FIRMAN NURWANSYAH, S.Pd', '2023-04-17', '0', 'FIRMAN NURWANSYAH, S.Pd.pdf', 2023, 'Y'),
(902, 184, 'MAYA NINGSIH', '2023-04-17', '0', 'MAYA NINGSIH.pdf', 2023, 'Y'),
(903, 185, 'SARIM, S.Sos', '2023-04-17', '0', 'SARIM, S.Sos.pdf', 2023, 'Y'),
(904, 185, 'SEPTO', '2023-04-17', '0', 'SEPTO.pdf', 2023, 'Y'),
(905, 185, 'SUMANTO', '2023-04-17', '0', 'SUMANTO.pdf', 2023, 'Y'),
(906, 185, 'YANA HERYANA', '2023-04-17', '0', 'YANA HERYANA.pdf', 2023, 'Y'),
(907, 185, 'ABDUROHMAN', '2023-04-17', '0', 'ABDUROHMAN.pdf', 2023, 'Y'),
(908, 185, 'ASEP HENDIAWAN', '2023-04-17', '0', 'ASEP HENDIAWAN.pdf', 2023, 'Y'),
(909, 185, 'ENDANG ISKANDAR', '2023-04-17', '0', 'ENDANG ISKANDAR.pdf', 2023, 'Y'),
(910, 185, 'ERI J. LESMANA, ST', '2023-04-17', '0', 'ERI J. LESMANA, ST.pdf', 2023, 'Y'),
(911, 185, 'FINO WASPODO', '2023-04-17', '0', 'FINO WASPODO.pdf', 2023, 'Y'),
(912, 185, 'H. SUTISNA', '2023-04-17', '0', 'H. SUTISNA.pdf', 2023, 'Y'),
(913, 185, 'IING MUSTA\'IN', '2023-04-17', '0', 'IING MUSTA\'IN.pdf', 2023, 'Y'),
(914, 185, 'STEVANUS FRANSISCUS', '2023-04-17', '0', 'STEVANUS FRANSISCUS.pdf', 2023, 'Y'),
(915, 185, 'TEDUH ANTAREZA', '2023-04-17', '0', 'TEDUH ANTAREZA.pdf', 2023, 'Y'),
(916, 185, 'TENI', '2023-04-17', '0', 'TENI.pdf', 2023, 'Y'),
(917, 185, 'TRI RAHARJO', '2023-04-17', '0', 'TRI RAHARJO.pdf', 2023, 'Y'),
(918, 185, 'TRI SUBAHAGIANTO, MPB III', '2023-04-17', '0', 'TRI SUBAHAGIANTO, MPB III.pdf', 2023, 'Y'),
(919, 185, 'TRISYA', '2023-04-17', '0', 'TRISYA.pdf', 2023, 'Y'),
(920, 186, 'REKAP PENCAPAIAN MATERI 2017 2018', '2023-04-17', '0', 'REKAP PENCAPAIAN MATERI 2017 2018.htm', 2023, 'Y'),
(921, 0, 'REKAP PENCAPAIAN MATERI 2018 2019', '2023-04-17', '0', 'REKAP PENCAPAIAN MATERI 2018 2019.htm', 2023, 'Y'),
(922, 186, 'REKAP PENCAPAIAN MATERI 2019  2020', '2023-04-17', '0', 'REKAP PENCAPAIAN MATERI 2019  2020.htm', 2023, 'Y'),
(923, 186, 'REKAP KEHADIRAN DOSEN 2017 2018', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2017 2018.htm', 2023, 'Y'),
(924, 186, 'REKAP KEHADIRAN DOSEN 2018 2019', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2018 2019.htm', 2023, 'Y'),
(925, 186, 'REKAP KEHADIRAN DOSEN 2018 2019', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2019  2020.htm', 2023, 'Y'),
(926, 186, 'PENCAPAIAN MATERI DOSEN 2020 2021(1)', '2023-04-17', '0', 'PENCAPAIAN MATERI DOSEN 2020 2021(1).htm', 2023, 'Y'),
(927, 186, 'PENCAPAIAN MATERI DOSEN 2020 2021', '2023-04-17', '0', 'PENCAPAIAN MATERI DOSEN 2020 2021.htm', 2023, 'Y'),
(928, 186, 'REKAP PENCAPAIAN MATERI 2020 2021', '2023-04-17', '0', 'REKAP PENCAPAIAN MATERI 2020 2021.htm', 2023, 'Y'),
(929, 186, 'REKAP KEHADIRAN DOSEN 2017 2018', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2017 2018.htm', 2023, 'Y'),
(930, 186, 'REKAP KEHADIRAN DOSEN 2018 2019', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2018 2019.htm', 2023, 'Y'),
(931, 185, 'REKAP KEHADIRAN DOSEN 2019  2020', '2023-04-17', '0', 'REKAP KEHADIRAN DOSEN 2019  2020.htm', 2023, 'Y'),
(932, 187, 'AMI_UTP_2018_-_Form_03_Checklist_Audit', '2023-04-17', '0', 'AMI_UTP_2018_-_Form_03_Checklist_Audit.pdf', 2023, 'Y'),
(933, 187, 'PEDOMAN-AMI-BERBASIS-9-KRITERIA', '2023-04-17', '0', 'PEDOMAN-AMI-BERBASIS-9-KRITERIA.pdf', 2023, 'Y'),
(934, 188, 'RTM 2019- jadi', '2023-04-17', '0', 'RTM 2019- jadi.pdf', 2023, 'Y'),
(935, 187, 'RTM 2020- jadi', '2023-04-17', '0', 'RTM 2020- jadi.pdf', 2023, 'Y'),
(936, 0, 'RTM 2021- jadi', '2023-04-17', '0', 'RTM 2021- jadi.pdf', 2023, 'Y'),
(937, 188, 'RTM 2019- jadi', '2023-04-17', '0', 'RTM 2019- jadi.pdf', 2023, 'Y'),
(938, 188, 'RTM 2020- jadi', '2023-04-17', '0', 'RTM 2020- jadi.pdf', 2023, 'Y'),
(939, 188, 'RTM 2021- jadi', '2023-04-17', '0', 'RTM 2021- jadi.pdf', 2023, 'Y'),
(940, 188, 'RTM 2019- jadi', '2023-04-17', '0', 'RTM 2019- jadi.pdf', 2023, 'Y'),
(941, 188, 'RTM 2020- jadi', '2023-04-17', '0', 'RTM 2020- jadi.pdf', 2023, 'Y'),
(942, 188, 'RTM 2021- jadi', '2023-04-17', '0', 'RTM 2021- jadi.pdf', 2023, 'Y'),
(943, 188, 'RTM - DP', '2023-04-17', '0', 'RTM 2021- jadi - akmi.pdf', 2023, 'Y'),
(944, 180, 'AMI  19-20 (Pak satya)', '2023-04-17', 'AMI  19-20 (Pak satya)', 'AMI  19-20 (Pak satya).rar', 2023, 'Y'),
(945, 188, 'AMI  20-21 (Bu Edvin)', '2023-04-17', '0', 'AMI  20-21 (Bu Edvin).rar', 2023, 'Y'),
(946, 188, 'AMI  20-21 (p.yos)', '2023-04-17', '0', 'AMI  20-21 (p.yos).rar', 2023, 'Y'),
(947, 188, 'AMI  21-22 (P. Wisnu)', '2023-04-17', '0', 'AMI  21-22 (P. Wisnu).rar', 2023, 'Y'),
(948, 188, '2023', '2023-04-17', '0', 'matrik ami TPT 19-20-21.pdf', 2023, 'Y'),
(949, 188, 'RTM (Agung)', '2023-04-17', '0', 'RTM (Agung).rar', 2023, 'Y'),
(950, 189, 'ilkps9-49553-26-498d595e5feb7cdedce0e602304366f5', '2023-04-17', '0', 'ilkps9-49553-26-498d595e5feb7cdedce0e602304366f5.htm', 2023, 'Y'),
(951, 188, 'ilkpti9-49563-20-764240789c5e924da168d72f10e47c7c', '2023-04-17', '0', 'ilkpti9-49563-20-764240789c5e924da168d72f10e47c7c.htm', 2023, 'Y'),
(952, 189, 'ilkpti9-49563-20-764240789c5e924da168d72f10e47c7c', '2023-04-17', '0', 'LED Despar.pdf', 2023, 'Y'),
(953, 189, 'LED Despar', '2023-04-17', '0', 'LED Despar.pdf', 2023, 'Y'),
(954, 189, 'LED PS DKV SSR', '2023-04-17', '0', 'LED PS DKV SSR.pdf', 2023, 'Y'),
(955, 189, 'LED PS DKV SSR', '2023-04-17', '0', 'LED PS DKV SSR.pdf', 2023, 'Y'),
(956, 189, 'LED PS DKV SSR', '2023-04-17', '0', 'ledi9-49563-18-f17e49691173ea4db60e20e3763dfddd.pdf', 2023, 'Y'),
(957, 189, 'leds9-49553-24-6b03810dccfb77792676b381b86a1df8', '2023-04-17', '0', 'leds9-49553-24-6b03810dccfb77792676b381b86a1df8.pdf', 2023, 'Y'),
(958, 189, 'li9-49563-19-4d19e47bca81ff1c2ca487514ce0f4b7', '2023-04-17', '0', 'li9-49563-19-4d19e47bca81ff1c2ca487514ce0f4b7.pdf', 2023, 'Y');
INSERT INTO `sys_file` (`id`, `id_menu`, `nama_file`, `tgl`, `deskripsi`, `file`, `tahun`, `status`) VALUES
(959, 189, 'lips9-49553-25-aec4271fb8d9dcadb24e5ff4d0ef90f5', '2023-04-17', '0', 'lips9-49553-25-aec4271fb8d9dcadb24e5ff4d0ef90f5.pdf', 2023, 'Y'),
(960, 189, 'List Data Dokumen Akreditasi (2) (1)', '2023-04-17', '0', 'List Data Dokumen Akreditasi (2) (1).htm', 2023, 'Y'),
(961, 189, 'LKPS Despar', '2023-04-17', '0', 'LKPS Despar.pdf', 2023, 'Y'),
(962, 189, 'LKPS Despar', '2023-04-17', '0', 'LKPS Despar.htm', 2023, 'Y'),
(963, 189, 'LKPS DKV SSR', '2023-04-17', '0', 'LKPS DKV SSR.pdf', 2023, 'Y'),
(964, 189, 'LKPS DKV SSR', '2023-04-17', '0', 'LKPS DKV SSR.htm', 2023, 'Y'),
(965, 189, 'lkps9-49553-23-75ad78f36d81943a9c8357b1660c3311', '2023-04-17', '0', 'lkps9-49553-23-75ad78f36d81943a9c8357b1660c3311.pdf', 2023, 'Y'),
(966, 189, 'lkpti9-49563-17-639ed35edd191aa9f27b5d44c918d4be', '2023-04-17', '0', 'lkpti9-49563-17-639ed35edd191aa9f27b5d44c918d4be.pdf', 2023, 'Y'),
(967, 189, 'SK, Renstra, Renop Despar', '2023-04-17', '0', 'SK, Renstra, Renop Despar.pdf', 2023, 'Y'),
(968, 189, 'SK, Renstra. Renop DKV', '2023-04-17', '0', 'SK, Renstra. Renop DKV.pdf', 2023, 'Y'),
(969, 189, 'sp9-49563-16-456f6336fe815ab5f1d531f8c94a5626', '2023-04-17', '0', 'sp9-49563-16-456f6336fe815ab5f1d531f8c94a5626.pdf', 2023, 'Y'),
(970, 189, 'spp9-49553-22-05abef0584e5b919f7891a36ef0f60dd', '2023-04-17', '0', 'spp9-49553-22-05abef0584e5b919f7891a36ef0f60dd.pdf', 2023, 'Y'),
(971, 189, 'sppi9-49563-15-13136683897c18bd094abb1a74e80d89', '2023-04-17', '0', 'sppi9-49563-15-13136683897c18bd094abb1a74e80d89.pdf', 2023, 'Y'),
(972, 189, 'spps9-49553-21-f3e44046a64330bcd944419f8b4a83a2', '2023-04-17', '0', 'spps9-49553-21-f3e44046a64330bcd944419f8b4a83a2.pdf', 2023, 'Y'),
(973, 190, 'Renop Politeknik SSR ANIMASI 2020 em (3)', '2023-04-17', '0', 'Renop Politeknik SSR ANIMASI 2020 em (3).pdf', 2023, 'Y'),
(974, 190, 'Renop Politeknik SSR ANIMASI 2021 em (3)(1)', '2023-04-17', '0', 'Renop Politeknik SSR ANIMASI 2021 em (3)(1).pdf', 2023, 'Y'),
(975, 190, 'Renop Politeknik SSR ANIMASI 2021 em (3)', '2023-04-17', '0', 'Renop Politeknik SSR ANIMASI 2021 em (3).pdf', 2023, 'Y'),
(976, 190, 'Renop Politeknik SSR Destinasi pariwisata 2020 (1)', '2023-04-17', '0', 'Renop Politeknik SSR Destinasi pariwisata 2020 (1).pdf', 2023, 'Y'),
(977, 190, 'Renop Politeknik SSR Destinasi pariwisata 2020 ', '2023-04-17', '0', 'Renop Politeknik SSR Destinasi pariwisata 2020 .pdf', 2023, 'Y'),
(978, 190, 'Renop Politeknik SSR Destinasi Pariwisata 2021 ', '2023-04-17', '0', 'Renop Politeknik SSR Destinasi Pariwisata 2021 .pdf', 2023, 'Y'),
(979, 190, 'Renop Politeknik SSR DKV 2020', '2023-04-17', '0', 'Renop Politeknik SSR DKV 2020.pdf', 2023, 'Y'),
(980, 190, 'Renop Politeknik SSR DKV 2021', '2023-04-17', '0', 'Renop Politeknik SSR DKV 2021.pdf', 2023, 'Y'),
(981, 190, 'Renop Politeknik SSR Institusi 2020', '2023-04-17', '0', 'Renop Politeknik SSR Institusi 2020.pdf', 2023, 'Y'),
(982, 190, 'Renop Politeknik SSR Institusi 2021', '2023-04-17', '0', 'Renop Politeknik SSR Institusi 2021.pdf', 2023, 'Y'),
(983, 190, 'RIP Politeknik Sains Seni Rekakreasi', '2023-04-17', '0', 'RIP Politeknik Sains Seni Rekakreasi.pdf', 2023, 'Y'),
(984, 191, 'BUKU PEDOMAN PENDIDIKAN', '2023-04-17', '0', 'BUKU PEDOMAN PENDIDIKAN.pdf', 2023, 'Y'),
(985, 191, 'BUKU-PEDOMAN-SPMI-SSR', '2023-04-17', '0', 'BUKU-PEDOMAN-SPMI-SSR.pdf', 2023, 'Y'),
(986, 191, 'SK Auditor', '2023-04-17', '0', 'SK Auditor.pdf', 2023, 'Y'),
(987, 191, 'SK komisi etik', '2023-04-17', '0', 'SK komisi etik.pdf', 2023, 'Y'),
(988, 192, 'ISI SOP STANDAR', '2023-04-17', '0', 'ISI SOP STANDAR.pdf', 2023, 'Y'),
(989, 192, 'SOP KEGIATAN MAHASISWA-PSSR', '2023-04-17', '0', 'SOP KEGIATAN MAHASISWA-PSSR.pdf', 2023, 'Y'),
(990, 192, 'SOP PERPUSTAKAAN-PSSR', '2023-04-17', '0', 'SOP PERPUSTAKAAN-PSSR.pdf', 2023, 'Y'),
(991, 192, 'SOP STANDAR-PSSR', '2023-04-17', '0', 'SOP STANDAR-PSSR.pdf', 2023, 'Y'),
(992, 192, '(SOP)-Umum', '2023-04-17', '0', '(SOP)-Umum.pdf', 2023, 'Y'),
(993, 192, 'MANUAL MUTU PENELITIAN-AKMIK', '2023-04-17', '0', 'MANUAL MUTU PENELITIAN-AKMIK.pdf', 2023, 'Y'),
(994, 192, 'MEKANISME PENYUSUNAN VMTS LEMBAGA', '2023-04-17', '0', 'MEKANISME PENYUSUNAN VMTS LEMBAGA.pdf', 2023, 'Y'),
(995, 192, 'MEKANISME PENYUSUNAN VMTS PRODI', '2023-04-17', '0', 'MEKANISME PENYUSUNAN VMTS PRODI.pdf', 2023, 'Y'),
(996, 192, 'SOP Audit Mutu Internal', '2023-04-17', '0', 'SOP Audit Mutu Internal.pdf', 2023, 'Y'),
(997, 192, 'SOP RTM', '2023-04-17', '0', 'SOP RTM.pdf', 2023, 'Y'),
(998, 192, 'SOP STANDAR PERGURUAN TINGG1-PSSR', '2023-04-17', '0', 'SOP STANDAR PERGURUAN TINGG1-PSSR.pdf', 2023, 'Y'),
(999, 192, 'SOP_komplit_Akmi', '2023-04-17', '0', 'SOP_komplit_Akmi.pdf', 2023, 'Y'),
(1000, 192, 'SOP-MINU AKMI-1219 FIXX', '2023-04-17', '0', 'SOP-MINU AKMI-1219 FIXX.pdf', 2023, 'Y'),
(1001, 192, 'STANDAR AKADEMIK AKMI 1219 FIXX', '2023-04-17', '0', 'STANDAR AKADEMIK AKMI 1219 FIXX.pdf', 2023, 'Y'),
(1002, 192, 'STANDAR KETARUNAAN FIXX', '2023-04-17', '0', 'STANDAR KETARUNAAN FIXX.pdf', 2023, 'Y'),
(1003, 192, 'STANDAR KOMPETENSI LULUSAN spmi', '2023-04-17', '0', 'STANDAR KOMPETENSI LULUSAN spmi.pdf', 2023, 'Y'),
(1004, 192, 'STANDAR SUASANA AKADEMIK', '2023-04-17', '0', 'STANDAR SUASANA AKADEMIK.pdf', 2023, 'Y'),
(1005, 189, 'FORMULIR SURAT', '2023-04-17', '0', 'FORMULIR SURAT.pdf', 2023, 'Y'),
(1006, 189, 'FORMULIR SURAT', '2023-04-17', '0', 'FORMULIR SURAT.pdf', 2023, 'Y'),
(1007, 189, 'LAMBANG PSSR', '2023-04-17', '0', 'LAMBANG PSSR.pdf', 2023, 'Y'),
(1008, 189, 'LED NAUTIKA OK', '2023-04-17', '0', 'LED NAUTIKA OK.pdf', 2023, 'Y'),
(1009, 189, 'LKPS AKMI 2021', '2023-04-17', '0', 'LKPS AKMI 2021.pdf', 2023, 'Y'),
(1010, 189, 'URAIAN PENJAMINAN MUTU LED', '2023-04-17', '0', 'URAIAN PENJAMINAN MUTU LED.pdf', 2023, 'Y'),
(1011, 189, 'WhatsApp Image 2022-03-08 at 13.39.23 (2)', '2023-04-17', '0', 'WhatsApp Image 2022-03-08 at 13.39.23 (2).jpeg', 2023, 'Y'),
(1012, 189, 'WhatsApp Image 2022-03-08 at 13.39.23', '2023-04-17', '0', 'WhatsApp Image 2022-03-08 at 13.39.23.jpeg', 2023, 'Y'),
(1013, 189, 'WhatsApp Image 2022-03-08 at 13.39.45', '2023-04-17', '0', 'WhatsApp Image 2022-03-08 at 13.39.45.jpeg', 2023, 'Y'),
(1014, 189, 'Buku Panduan Menggunakan Sistem Pelaporan SPMI', '2023-04-17', '0', 'Buku Panduan Menggunakan Sistem Pelaporan SPMI.pdf', 2023, 'Y'),
(1015, 189, 'DOKUMEN MUTU - POLTEK SSR(1)', '2023-04-17', '0', 'DOKUMEN MUTU - POLTEK SSR(1).rar', 2023, 'Y'),
(1016, 193, '05-SK-Penetapan-Calon-Maba-Jalur-USM-2019-2020', '2023-04-17', '-', '05-SK-Penetapan-Calon-Maba-Jalur-USM-2019-2020.pdf', 2023, 'Y'),
(1017, 193, '05-SK-Penetapan-Calon-Maba-Jalur-USM-2020-2021', '2023-04-17', '-', '05-SK-Penetapan-Calon-Maba-Jalur-USM-2020-2021.pdf', 2023, 'Y'),
(1018, 193, '05-SK-Penetapan-Calon-Maba-Jalur-USM-2021-2022', '2023-04-17', '-', '05-SK-Penetapan-Calon-Maba-Jalur-USM-2021-2022.pdf', 2023, 'Y'),
(1019, 193, '39.-SK- Direktur Pedoman Penerimaan Mahasiswa Baru Politeknik SSR', '2023-04-17', '-', '39.-SK- Direktur Pedoman Penerimaan Mahasiswa Baru Politeknik SSR.pdf', 2023, 'Y'),
(1020, 193, '41.-SK-Direktur tentang penetapan Struktur Kurikulum dan Sebaran Mata Kuliah', '2023-04-17', '-', '41.-SK-Direktur tentang penetapan Struktur Kurikulum dan Sebaran Mata Kuliah.pdf', 2023, 'Y'),
(1021, 193, '45.-SK-Direktur tentang PEMBIMBING TA', '2023-04-17', '-', '45.-SK-Direktur tentang PEMBIMBING TA.pdf', 2023, 'Y'),
(1022, 194, '22.- SK-Kelompok-Riset', '2023-04-17', '-', '22.- SK-Kelompok-Riset.pdf', 2023, 'Y'),
(1023, 194, '24.-SK-Direktur Kelompok Riset Dosen dan Mahasiswa', '2023-04-17', '-', '24.-SK-Direktur Kelompok Riset Dosen dan Mahasiswa.pdf', 2023, 'Y'),
(1024, 194, '42.-SK-Direktur tentang tentang Kewajiban Dosen dalam melaksanakan kegiatan Penelitian dan Pengabdia', '2023-04-17', '-', '42.-SK-Direktur tentang tentang Kewajiban Dosen dalam melaksanakan kegiatan Penelitian dan Pengabdia', 2023, 'Y'),
(1025, 195, '25.-SK-Direktur tentang standar isi PkM', '2023-04-17', '-', '25.-SK-Direktur tentang standar isi PkM.pdf', 2023, 'Y'),
(1026, 195, '26.-SK- Direktur tentang standar proses PkM', '2023-04-17', '-', '26.-SK- Direktur tentang standar proses PkM.pdf', 2023, 'Y'),
(1027, 195, '27.-SK-Direktur tentang standar hasil PkM', '2023-04-17', '-', '27.-SK-Direktur tentang standar hasil PkM.pdf', 2023, 'Y'),
(1028, 195, '28.-SK-Direktur tentang standar penilaian PkM', '2023-04-17', '-', '28.-SK-Direktur tentang standar penilaian PkM.pdf', 2023, 'Y'),
(1029, 195, '29.-SK- Direktur tentang standar pelaksana PkM', '2023-04-17', '-', '29.-SK- Direktur tentang standar pelaksana PkM.pdf', 2023, 'Y'),
(1030, 195, '30.-SK- Direktur tentang standar sarana dan prasarana PkM', '2023-04-17', '-', '30.-SK- Direktur tentang standar sarana dan prasarana PkM.pdf', 2023, 'Y'),
(1031, 195, '31.-SK- Direktur tentang standar pengelolaan PkM', '2023-04-17', '-', '31.-SK- Direktur tentang standar pengelolaan PkM.pdf', 2023, 'Y'),
(1032, 195, '32.-SK-Direktur tentang standar pendanaan dan pembiayaan PkM', '2023-04-17', '-', '32.-SK-Direktur tentang standar pendanaan dan pembiayaan PkM.pdf', 2023, 'Y'),
(1033, 195, '42.-SK-Direktur tentang tentang Kewajiban Dosen dalam melaksanakan kegiatan Penelitian dan Pengabdia', '2023-04-17', '-', '42.-SK-Direktur tentang tentang Kewajiban Dosen dalam melaksanakan kegiatan Penelitian dan Pengabdia', 2023, 'Y'),
(1034, 196, 'Databases Dosen tetap', '2023-04-17', '0', 'Databases Dosen tetap.htm', 2023, 'Y'),
(1035, 196, 'Databases Dosen tetap1', '2023-04-17', '0', 'Databases Dosen tetap1.htm', 2023, 'Y'),
(1036, 196, 'SK Pengangkatan DOSEN', '2023-04-17', '0', 'SK Pengangkatan DOSEN.pdf', 2023, 'Y'),
(1037, 197, '43.-SK- Direktur tentang Pengangkatan Pejabat Struktural di lingkungan Politeknik SSR', '2023-04-17', '-', '43.-SK- Direktur tentang Pengangkatan Pejabat Struktural di lingkungan Politeknik SSR.pdf', 2023, 'Y'),
(1038, 197, '44.-SK- Yayasan tentang Mekanisme dan prosedur rekrutmen dosen dan tenaga kependidikan', '2023-04-17', '-', '44.-SK- Yayasan tentang Mekanisme dan prosedur rekrutmen dosen dan tenaga kependidikan.pdf', 2023, 'Y'),
(1039, 198, '08-SK-LAYANAN-MAHASISWA', '2023-04-17', '-', '08-SK-LAYANAN-MAHASISWA.pdf', 2023, 'Y'),
(1040, 201, '43.-SK- Direktur tentang Pengangkatan Pejabat Struktural di lingkungan Politeknik SSR', '2023-04-17', '-', '43.-SK- Direktur tentang Pengangkatan Pejabat Struktural di lingkungan Politeknik SSR.pdf', 2023, 'Y'),
(1041, 201, '44.-SK- Yayasan tentang Mekanisme dan prosedur rekrutmen dosen dan tenaga kependidikan', '2023-04-17', '-', '44.-SK- Yayasan tentang Mekanisme dan prosedur rekrutmen dosen dan tenaga kependidikan.pdf', 2023, 'Y'),
(1042, 200, 'SK pemberhentian dan pengangkatan pejabat struktural', '2023-04-17', '0', 'SK pemberhentian dan pengangkatan pejabat struktural.pdf', 2023, 'Y'),
(1043, 200, 'SK pemberhentian dan pengangkatan pejabat struktural.pdf', '2023-04-17', '0', 'SK pemberhentian dan pengangkatan pejabat struktural.pdf.pdf', 2023, 'Y'),
(1044, 200, 'SK pemberhentian jabatan Pak Teguh', '2023-04-17', '0', 'SK pemberhentian jabatan Pak Teguh.pdf', 2023, 'Y'),
(1045, 200, 'SK Pengangkatan dan Pemberhentian Pejabat Struktural 2020-2025', '2023-04-17', '0', 'SK Pengangkatan dan Pemberhentian Pejabat Struktural 2020-2025.pdf', 2023, 'Y'),
(1046, 200, 'SK Pengangkatan dan Pemberhentian Pejabat Struktural 2020-2025', '2023-04-17', '0', 'SK Pengangkatan dan Pemberhentian Pejabat Struktural 2020-2025.pdf', 2023, 'Y'),
(1047, 200, 'SK Pengangkatan Kaprodi Edvin', '2023-04-17', '0', 'SK Pengangkatan Kaprodi Edvin.pdf', 2023, 'Y'),
(1048, 202, '005-SK-Penetapan-Calon-Maba-Jalur-USM-2020-2021', '2023-04-17', '-', '005-SK-Penetapan-Calon-Maba-Jalur-USM-2020-2021.pdf', 2023, 'Y'),
(1049, 202, '022- SK-Kelompok-Riset', '2023-04-17', '-', '022- SK-Kelompok-Riset.pdf', 2023, 'Y'),
(1050, 200, 'SK-Pengangkatan-PUDIR4-2017', '2023-04-17', '0', 'SK-Pengangkatan-PUDIR4-2017.pdf', 2023, 'Y'),
(1051, 202, 'sk pmb', '2023-04-17', '-', 'sk pmb.pdf', 2023, 'Y'),
(1052, 200, 'SK-Yayasan-Pengangkatan-Pejabat-Struktural-09-Agustus-2021-1', '2023-04-17', '0', 'SK-Yayasan-Pengangkatan-Pejabat-Struktural-09-Agustus-2021-1.pdf', 2023, 'Y'),
(1053, 202, 'SK-KEPENGURUSAN-HIMA', '2023-04-17', '-', 'SK-KEPENGURUSAN-HIMA.pdf', 2023, 'Y'),
(1055, 203, 'sk forlap maslih', '2023-04-17', '0', 'sk forlap maslih.pdf', 2023, 'Y'),
(1056, 203, 'Surat permohonan pengajuan akun JAD Online', '2023-04-17', '0', 'Surat permohonan pengajuan akun JAD Online.pdf', 2023, 'Y'),
(1058, 205, '45.-SK-Direktur tentang PEMBIMBING TA', '2023-04-17', '0', '45.-SK-Direktur tentang PEMBIMBING TA.pdf', 2023, 'Y'),
(1060, 206, 'SK Pemberhentian Kaprodi DKV', '2023-04-17', '0', 'SK Pemberhentian Kaprodi DKV.pdf', 2023, 'Y'),
(1062, 206, 'SK Pengangkatan dewan pembina(1)', '2023-04-17', '0', 'SK Pengangkatan dewan pembina(1).pdf', 2023, 'Y'),
(1063, 206, 'SK Pengangkatan dewan pembina', '2023-04-17', '0', 'SK Pengangkatan dewan pembina.pdf', 2023, 'Y'),
(1065, 206, 'SK Pengangkatan dosen tetap Emilia Rosalina', '2023-04-17', '0', 'SK Pengangkatan dosen tetap Emilia Rosalina.pdf', 2023, 'Y'),
(1067, 206, 'SK Pengangkatan dosen tetap Fadhli Purnama', '2023-04-17', '0', 'SK Pengangkatan dosen tetap Fadhli Purnama.pdf', 2023, 'Y'),
(1068, 206, 'SK Pengangkatan Kaprodi', '2023-04-17', '0', 'SK Pengangkatan Kaprodi.pdf', 2023, 'Y'),
(1071, 196, '0KEPUTUSAN DEKAN PENELITAIAN DOSEN', '2023-04-17', '0', '0KEPUTUSAN DEKAN PENELITAIAN DOSEN.pdf', 2023, 'Y'),
(1073, 196, '001-SK-I1.A-PP-2018 (JAlur penerimaan mahasiswa)', '2023-04-17', '0', '001-SK-I1.A-PP-2018 (JAlur penerimaan mahasiswa).pdf', 2023, 'Y'),
(1074, 206, '2.-SK-No-24-Penetapan-IKU-Renstra-Periode-2020-2024-tahun-2020', '2023-04-17', '0', '2.-SK-No-24-Penetapan-IKU-Renstra-Periode-2020-2024-tahun-2020.pdf', 2023, 'Y'),
(1076, 196, '007-SK-Penetapan-Calon-Maba-Jalur-USM-Gel-II-TA-20202021', '2023-04-17', '0', '007-SK-Penetapan-Calon-Maba-Jalur-USM-Gel-II-TA-20202021.pdf', 2023, 'Y'),
(1077, 196, '007-SK-Penetapan-Calon-Maba-Jalur-USM-Gel-II-TA-20202021', '2023-04-17', '0', '007-SK-Penetapan-Calon-Maba-Jalur-USM-Gel-II-TA-20202021.pdf', 2023, 'Y'),
(1078, 196, '007-SK-Penetapan-Panitia perumusan visi, misi 2019-2020', '2023-04-17', '0', '007-SK-Penetapan-Panitia perumusan visi, misi 2019-2020.pdf', 2023, 'Y'),
(1079, 196, '20.-peraturan-rektor-23509-tentang-Sistem-Pengelolaan-Keuangan-Unhas', '2023-04-17', '0', '20.-peraturan-rektor-23509-tentang-Sistem-Pengelolaan-Keuangan-Unhas.pdf', 2023, 'Y'),
(1080, 196, '652_20210614_Roadmap PKM Magister Informatika FINAL', '2023-04-17', '0', '652_20210614_Roadmap PKM Magister Informatika FINAL.pdf', 2023, 'Y'),
(1081, 196, '2020-PR_-26-2020-Organisasi-Kemahasiswaan-UNS', '2023-04-17', '0', '2020-PR_-26-2020-Organisasi-Kemahasiswaan-UNS.pdf', 2023, 'Y'),
(1082, 196, 'Buku Panduan Indikator Kinerja Utama PTN', '2023-04-17', '0', 'Buku Panduan Indikator Kinerja Utama PTN.pdf', 2023, 'Y'),
(1083, 196, 'C.6.4.c-A.-Pedoman-integrasi-kegiatan-penelitian-dan-PkM-ke-dalam-Pembelajaran', '2023-04-17', '0', 'C.6.4.c-A.-Pedoman-integrasi-kegiatan-penelitian-dan-PkM-ke-dalam-Pembelajaran.pdf', 2023, 'Y'),
(1084, 196, 'Keputusan Rektor-SK Rektor No 690 UN39 KU.00.01 2020 tentang Penetapan Besaran Tarif Penggunaan Laya', '2023-04-17', '0', 'Keputusan Rektor-SK Rektor No 690 UN39 KU.00.01 2020 tentang Penetapan Besaran Tarif Penggunaan Laya', 2023, 'Y'),
(1085, 196, 'Penelitian_SK-Penelitian dosen', '2023-04-17', '0', 'Penelitian_SK-Penelitian dosen.pdf', 2023, 'Y'),
(1086, 196, 'PERATURAN-KEPEGAWAIAN-UNISM', '2023-04-17', '0', 'PERATURAN-KEPEGAWAIAN-UNISM.pdf', 2023, 'Y'),
(1087, 196, 'PERATURAN-KEPEGAWAIAN-UNISM', '2023-04-17', '0', 'PERATURAN-KEPEGAWAIAN-UNISM.pdf', 2023, 'Y'),
(1088, 196, 'peraturan-kepegawaian-yayasan-widyatama-2014-2016', '2023-04-17', '0', 'peraturan-kepegawaian-yayasan-widyatama-2014-2016.pdf', 2023, 'Y'),
(1089, 196, 'RPS PENGANTAR MANAJEMEN', '2023-04-17', '0', 'SK DOSEN Alfi Zachkyelle, S.Sn.pdf', 2023, 'Y'),
(1090, 196, 'SK Lulus Seleksi 2019-2020', '2023-04-17', '0', 'SK Lulus Seleksi 2019-2020.pdf', 2023, 'Y'),
(1091, 196, 'SK Lulus Seleksi 2020-2021', '2023-04-17', '0', 'SK Lulus Seleksi 2020-2021.pdf', 2023, 'Y'),
(1092, 196, 'SK Lulus Seleksi 2021-2022', '2023-04-17', '0', 'SK Lulus Seleksi 2021-2022.pdf', 2023, 'Y'),
(1093, 196, 'SK Panitia Maru 2020', '2023-04-17', '0', 'SK Panitia Maru 2020.pdf', 2023, 'Y'),
(1094, 196, 'SK Panitia Maru SSR', '2023-04-17', '0', 'SK Panitia Maru SSR.pdf', 2023, 'Y'),
(1095, 204, '01-SK- Direktur Politeknik SSR Tentang Panitia Perumusan Visi, Misi, Tujuan dan Sasaran', '2023-04-17', '-', '01-SK- Direktur Politeknik SSR Tentang Panitia Perumusan Visi, Misi, Tujuan dan Sasaran.pdf', 2023, 'Y'),
(1096, 196, 'SK Pedoman Reviewer Penelitian dan Pengmas', '2023-04-17', '0', 'SK Pedoman Reviewer Penelitian dan Pengmas.pdf', 2023, 'Y'),
(1097, 204, '02-SK- Direktur Politeknik SSR Tentang Penetapan Visi, Misi, Tujuan dan Sasaran', '2023-04-17', '-', '02-SK- Direktur Politeknik SSR Tentang Penetapan Visi, Misi, Tujuan dan Sasaran.pdf', 2023, 'Y'),
(1098, 196, 'SK PENELITIAN DOSEN PEMULA 2019', '2023-04-17', '0', 'SK PENELITIAN DOSEN PEMULA 2019.pdf', 2023, 'Y'),
(1099, 204, '04. SK PENGELOLAAN ORG', '2023-04-17', '-', '04. SK PENGELOLAAN ORG.rar', 2023, 'Y'),
(1100, 196, 'SK Penetapan Mahasiswa Baru  2019-2020', '2023-04-17', '0', 'SK Penetapan Mahasiswa Baru  2019-2020.pdf', 2023, 'Y'),
(1101, 204, '05. SK KEMAHASISWAN', '2023-04-17', '-', '05. SK KEMAHASISWAN.rar', 2023, 'Y'),
(1102, 196, 'SK Penetapan Mahasiswa Baru  2020-2021', '2023-04-17', '0', 'SK Penetapan Mahasiswa Baru  2020-2021.pdf', 2023, 'Y'),
(1103, 204, '05-SK-Penetapan-Calon-Maba-Jalur-USM-2019-2020', '2023-04-17', '-', '05-SK-Penetapan-Calon-Maba-Jalur-USM-2019-2020.pdf', 2023, 'Y'),
(1104, 196, 'SK Penetapan Mahasiswa Baru  2021-2022', '2023-04-17', '0', 'SK Penetapan Mahasiswa Baru  2021-2022.pdf', 2023, 'Y'),
(1105, 196, 'SK Pengangkatan dewan pembina', '2023-04-17', '0', 'SK Pengangkatan dewan pembina.pdf', 2023, 'Y'),
(1106, 204, '05-SK-Penetapan-Calon-Maba-Jalur-USM-2020-2021', '2023-04-17', '-', '05-SK-Penetapan-Calon-Maba-Jalur-USM-2020-2021.pdf', 2023, 'Y'),
(1107, 196, 'SK senat', '2023-04-17', '0', 'SK senat.pdf', 2023, 'Y'),
(1108, 204, '05-SK-Penetapan-Calon-Maba-Jalur-USM-2021-2022', '2023-04-17', '-', '05-SK-Penetapan-Calon-Maba-Jalur-USM-2021-2022.pdf', 2023, 'Y'),
(1109, 204, '06. SK SDM', '2023-04-17', '-', '06. SK SDM.rar', 2023, 'Y'),
(1110, 196, 'SK. pedoman remunerasi', '2023-04-17', '0', 'SK. pedoman remunerasi.pdf', 2023, 'Y'),
(1111, 204, '07-SK- Direktur Politeknik SSR TENTANG', '2023-04-17', '-', '07-SK- Direktur Politeknik SSR TENTANG.pdf', 2023, 'Y'),
(1112, 196, 'SK-Kelompok-Riset', '2023-04-17', '0', 'SK-Kelompok-Riset.pdf', 2023, 'Y'),
(1113, 204, '07-SK-Penetapanpanitia penerimaan mahasiswa baru', '2023-04-17', '-', '07-SK-Penetapanpanitia penerimaan mahasiswa baru.pdf', 2023, 'Y'),
(1114, 196, 'SK-Kelompok-Riset-2016-2021', '2023-04-17', '0', 'SK-Kelompok-Riset-2016-2021.pdf', 2023, 'Y'),
(1115, 204, '08-SK-LAYANAN-MAHASISWA', '2023-04-17', '-', '08-SK-LAYANAN-MAHASISWA.pdf', 2023, 'Y'),
(1116, 196, 'SK-PANITIA-PKKMB... masa orientasi mahasiswa', '2023-04-17', '0', 'SK-PANITIA-PKKMB... masa orientasi mahasiswa.pdf', 2023, 'Y'),
(1117, 196, 'SK-Pembentukan-Kelompok Riset-Lampirannya', '2023-04-17', '0', 'SK-Pembentukan-Kelompok Riset-Lampirannya.pdf', 2023, 'Y'),
(1118, 196, 'SK-PembPeng-Anggota-Senat', '2023-04-17', '0', 'SK-PembPeng-Anggota-Senat.pdf', 2023, 'Y'),
(1119, 196, 'SK-Rektor-No-4-Tahun-2021-Tentang-Biaya-Pendidikan-Mahasiswa-Non-S1-Reguler-UI-Angkatan-Tahun-Akadem', '2023-04-17', '0', 'SK-Rektor-No-4-Tahun-2021-Tentang-Biaya-Pendidikan-Mahasiswa-Non-S1-Reguler-UI-Angkatan-Tahun-Akadem', 2023, 'Y'),
(1120, 202, 'SK-KEPENGURUSAN-HIMA', '2023-04-17', '-', 'SK-KEPENGURUSAN-HIMA.pdf', 2023, 'Y'),
(1121, 0, 'Teguh Pujiwioto', '2023-04-17', '0', '30. DTY. Teguh Pujiwioto.zip', 2023, 'Y'),
(1122, 207, 'DTY. Teguh Pujiwioto', '2023-04-17', '0', '30. DTY. Teguh Pujiwioto.zip', 2022, 'Y'),
(1123, 204, '13.-SK-Senat.', '2023-04-17', '-', '13.-SK-Senat..pdf', 2023, 'Y'),
(1124, 204, '14. SK Penomoran Induk Mahasiswa', '2023-04-17', '-', '14. SK Penomoran Induk Mahasiswa.pdf', 2023, 'Y'),
(1125, 204, '22.- SK-Kelompok-Riset', '2023-04-17', '-', '22.- SK-Kelompok-Riset.pdf', 2023, 'Y'),
(1126, 207, ' DT. Dhani Agustinus.,MA', '2023-04-17', '0', '31. DT. Dhani Agustinus.,MA.zip', 2023, 'Y'),
(1127, 204, '24.-SK-Direktur Kelompok Riset Dosen dan Mahasiswa', '2023-04-17', '-', '24.-SK-Direktur Kelompok Riset Dosen dan Mahasiswa.pdf', 2023, 'Y'),
(1128, 202, '25.-SK-Direktur tentang standar isi PkM', '2023-04-17', '-', '25.-SK-Direktur tentang standar isi PkM.pdf', 2023, 'Y'),
(1129, 204, '26.-SK- Direktur tentang standar proses PkM', '2023-04-17', '-', '26.-SK- Direktur tentang standar proses PkM.pdf', 2023, 'Y'),
(1130, 204, '27.-SK-Direktur tentang standar hasil PkM', '2023-04-17', '-', '27.-SK-Direktur tentang standar hasil PkM.pdf', 2023, 'Y'),
(1131, 204, '28.-SK-Direktur tentang standar penilaian PkM', '2023-04-17', '-', '28.-SK-Direktur tentang standar penilaian PkM.pdf', 2023, 'Y'),
(1132, 204, '29.-SK- Direktur tentang standar pelaksana PkM', '2023-04-17', '-', '29.-SK- Direktur tentang standar pelaksana PkM.pdf', 2023, 'Y'),
(1133, 204, '30.-SK- Direktur tentang standar sarana dan prasarana PkM', '2023-04-17', '-', '30.-SK- Direktur tentang standar sarana dan prasarana PkM.pdf', 2023, 'Y'),
(1134, 207, ' DT. Getar Kembara', '2023-04-17', '0', 'ijazah.foto.sertifikat. getar kembara.rar', 2023, 'Y'),
(1135, 204, '31.-SK- Direktur tentang standar pengelolaan PkM', '2023-04-17', '-', '31.-SK- Direktur tentang standar pengelolaan PkM.pdf', 2023, 'Y'),
(1136, 204, '32.-SK-Direktur tentang standar pendanaan dan pembiayaan PkM', '2023-04-17', '-', '32.-SK-Direktur tentang standar pendanaan dan pembiayaan PkM.pdf', 2023, 'Y'),
(1137, 204, '33.-SK-Direktur Tentang Panitia Penyusunan LED dan LKPS', '2023-04-17', '-', '33.-SK-Direktur Tentang Panitia Penyusunan LED dan LKPS.pdf', 2023, 'Y'),
(1138, 207, 'DT. Febriana Dewanti Chandra Ayu', '2023-04-17', '0', '33. DT. Febriana Dewanti Chandra Ayu.zip', 2023, 'Y'),
(1139, 204, '34.-SK- Direktur Tentang Aturan Mekanisme Kerja dan Keterlibatan Berbagai Unit dalam Penyusunan LKPS', '2023-04-17', '-', '34.-SK- Direktur Tentang Aturan Mekanisme Kerja dan Keterlibatan Berbagai Unit dalam Penyusunan LKPS', 2023, 'Y'),
(1140, 204, '35.-SK-Direktur tentang Penetapan Rencana Strategis Politeknik Sains Seni Rekakreasi (SSR)', '2023-04-17', '-', '35.-SK-Direktur tentang Penetapan Rencana Strategis Politeknik Sains Seni Rekakreasi (SSR).pdf', 2023, 'Y'),
(1141, 207, 'DT. Darwin Sebastian', '2023-04-17', '0', '35. DT. Darwin Sebastian.zip', 2023, 'Y'),
(1142, 204, '36.-SK- Direktur Standar Visi Misi Politeknik SSR', '2023-04-17', '-', '36.-SK- Direktur Standar Visi Misi Politeknik SSR.pdf', 2023, 'Y'),
(1143, 207, '36. DT. Emilia Rosalina Sitindjak', '2023-04-17', '0', '36. DT. Emilia Rosalina Sitindjak.zip', 2023, 'Y'),
(1144, 204, '37.-SK-Direktur tentang Penetapan Standar Lembaga Penjamin Mutu Politeknik SSR.', '2023-04-17', '-', '37.-SK-Direktur tentang Penetapan Standar Lembaga Penjamin Mutu Politeknik SSR..pdf', 2023, 'Y'),
(1145, 204, '38.-SK-  Direktur tentang Penetapan dan Pelaksanaan Lembaga Penjamin Mutu Politeknik SSR.', '2023-04-17', '-', '38.-SK-  Direktur tentang Penetapan dan Pelaksanaan Lembaga Penjamin Mutu Politeknik SSR..pdf', 2023, 'Y'),
(1146, 204, '39.-SK- Direktur Pedoman Penerimaan Mahasiswa Baru Politeknik SSR', '2023-04-17', '-', '39.-SK- Direktur Pedoman Penerimaan Mahasiswa Baru Politeknik SSR.pdf', 2023, 'Y'),
(1147, 204, '40.-SK-Direktur tentang Implementasi Lembaga Penjamin Mutu', '2023-04-17', '-', '40.-SK-Direktur tentang Implementasi Lembaga Penjamin Mutu.pdf', 2023, 'Y'),
(1148, 207, '37. DT. Rama Dwissa Wiana', '2023-04-17', '0', '37. DT. Rama Dwissa Wiana.zip', 2023, 'Y'),
(1149, 207, '38. DT. Bambang Gunawan Santoso (Bembi)', '2023-04-17', '0', '38. DT. Bambang Gunawan Santoso (Bembi).zip', 2023, 'Y'),
(1150, 207, ' DT. Riztcy Hardi Pangesti', '2023-04-17', '0', '39. DT. Riztcy Hardi Pangesti.zip', 2023, 'Y'),
(1151, 204, '41.-SK-Direktur tentang penetapan Struktur Kurikulum dan Sebaran Mata Kuliah', '2023-04-17', '-', '41.-SK-Direktur tentang penetapan Struktur Kurikulum dan Sebaran Mata Kuliah.pdf', 2023, 'Y'),
(1152, 207, '53. D. Janeru Kennedy,M.Sn', '2023-04-17', '0', '53. D. Janeru Kennedy,M.Sn.zip', 2023, 'Y'),
(1153, 207, '55. DTY. Dwika Lutfhi Permana', '2023-04-17', '0', '55. DTY. Dwika Lutfhi Permana.zip', 2023, 'Y'),
(1154, 0, 'Firlan', '2023-04-17', '0', '58. Firlan.zip', 2023, 'Y'),
(1155, 204, '42.-SK-Direktur tentang tentang Kewajiban Dosen dalam melaksanakan kegiatan Penelitian dan Pengabdia', '2023-04-17', '-', '42.-SK-Direktur tentang tentang Kewajiban Dosen dalam melaksanakan kegiatan Penelitian dan Pengabdia', 2023, 'Y'),
(1156, 207, '59. DT. VENIE G', '2023-04-17', '0', '59. DT. VENIE G.zip', 2023, 'Y'),
(1157, 204, '43.-SK- Direktur tentang Pengangkatan Pejabat Struktural di lingkungan Politeknik SSR', '2023-04-17', '-', '43.-SK- Direktur tentang Pengangkatan Pejabat Struktural di lingkungan Politeknik SSR.pdf', 2023, 'Y'),
(1158, 204, '44.-SK- Yayasan tentang Mekanisme dan prosedur rekrutmen dosen dan tenaga kependidikan', '2023-04-17', '-', '44.-SK- Yayasan tentang Mekanisme dan prosedur rekrutmen dosen dan tenaga kependidikan.pdf', 2023, 'Y'),
(1159, 204, '45.-SK-Direktur tentang PEMBIMBING TA', '2023-04-17', '-', '45.-SK-Direktur tentang PEMBIMBING TA.pdf', 2023, 'Y'),
(1160, 204, '100. SK-Anggota-Senat-2019-2023', '2023-04-17', '-', '100. SK-Anggota-Senat-2019-2023.pdf', 2023, 'Y'),
(1161, 207, '61. DT HUSNA', '2023-04-17', '0', '61. DT HUSNA.zip', 2023, 'Y'),
(1162, 204, 'KEPUTUSAN DEKAN', '2023-04-17', '-', 'KEPUTUSAN DEKAN.pdf', 2023, 'Y'),
(1163, 202, 'SK', '2023-04-17', '-', 'SK.rar', 2023, 'Y'),
(1164, 207, '62. DTY FADLI PURNAMA', '2023-04-17', '0', '62. DTY FADLI PURNAMA.zip', 2023, 'Y'),
(1165, 207, '63.  DWIKA LUTFHI PERMANA', '2023-04-17', '0', '63.  DWIKA LUTFHI PERMANA.zip', 2023, 'Y'),
(1166, 207, '64. ARDIAN FIROSHA', '2023-04-17', '0', '64. ARDIAN FIROSHA.zip', 2023, 'Y'),
(1167, 207, '65. Moses', '2023-04-17', '0', '65. Moses.zip', 2023, 'Y'),
(1168, 207, 'CONTOH SYARAT NIDN DOSEN', '2023-04-17', '0', 'CONTOH SYARAT NIDN DOSEN.zip', 2023, 'Y'),
(1169, 207, 'Data Dosen Tetap Politeknik SSR lengkap', '2023-04-17', '0', 'Data Dosen Tetap Politeknik SSR lengkap.htm', 2023, 'Y'),
(1170, 207, 'DATA KARYAWAN & DOSEN', '2023-04-17', '0', 'DATA KARYAWAN & DOSEN.htm', 2023, 'Y'),
(1171, 207, 'FOLLOW UP DATA PELAMAR', '2023-04-17', '0', 'FOLLOW UP DATA PELAMAR.htm', 2023, 'Y'),
(1172, 207, 'List pegaawai', '2023-04-17', '0', 'List pegaawai.htm', 2023, 'Y'),
(1180, 118, 'BERITA ACARA HARMONISASI', '2023-05-08', '-', 'Berita Acara Harmonisasi.pdf', 2021, 'Y'),
(1181, 118, 'INDONESIA CHEF ASSOCIANTION', '2023-05-08', '173', '173.pdf', 2020, 'Y'),
(1182, 118, 'LEMBAGA PENELITIAN DAN PENGEMBANGAN SOSIAL POLITEKNIK', '2023-05-08', '02', '173.pdf', 2020, 'Y'),
(1183, 118, 'LEMBAGA PENELITIAN DAN PENGEMBANGAN SOSIAL POLITEKNIK', '2023-05-08', '02', '02 (2).pdf', 2020, 'Y'),
(1184, 118, 'LEMBAGA PENELITIAN DAN PENGEMBANGAN SOSIAL POLITEKNIK', '2023-05-08', '02', '002.pdf', 2020, 'Y'),
(1185, 118, 'LEMBAGA PENELITIAN DAN PENGEMBANGAN SOSIAL POLITEKNIK', '2023-05-08', '02', '002 (2).pdf', 2020, 'Y'),
(1186, 118, 'LETTER OF INTENT', '2023-05-08', '-', 'Letter Of Intent.pdf', 2021, 'Y'),
(1187, 118, 'PT. SARANA CAHAYA BINTANG', '2023-05-08', '054', 'PT. Sarana Cahaya Bintang.pdf', 2021, 'Y'),
(1188, 118, 'PT. TGS TRANSMEDIA', '2023-05-08', '012', 'PT. TGS Transmedia.pdf', 2019, 'Y'),
(1189, 118, 'SEKOLAH TINGGI ILMU EKONOMI BANTEN', '2023-05-08', '073', '073 Sekolah Tinggi.pdf', 2020, 'Y'),
(1190, 118, 'SKILL DEVELOPMENT CENTRE BANTEN', '2023-05-08', '003', '003.pdf', 2021, 'Y'),
(1191, 118, 'SMK 1 PANTURA MAUK', '2023-05-08', '003', '003.pdf', 2021, 'Y'),
(1192, 118, 'SMK 1 PANTURA MAUK', '2023-05-08', '006', '006.pdf', 2021, 'Y'),
(1193, 118, 'SMK AL AROBI RANCAILAT', '2023-05-08', '006', '006.pdf', 2021, 'Y'),
(1194, 118, 'SMK AL AROBI RANCAILAT', '2023-05-08', '005', '005.pdf', 2021, 'Y'),
(1195, 118, 'SMK AL FAJAR', '2023-05-08', '007', '007.pdf', 2023, 'Y'),
(1196, 118, 'SMK AL FAJAR', '2023-05-08', '008', '008.pdf', 2021, 'Y'),
(1197, 118, 'AM AL-ANSHOR CIRARAB', '2023-05-08', '005', '005.pdf', 2021, 'Y'),
(1198, 118, 'SMK AL-ANSHOR CIRARAB', '2023-05-08', '006', '006.pdf', 2021, 'Y'),
(1199, 118, 'SMK ALFATTAH', '2023-05-08', '005', '005.pdf', 2021, 'Y'),
(1200, 118, 'SMK ALFATTAH', '2023-05-08', '006', '006.pdf', 2021, 'Y'),
(1201, 118, 'SMK AL-HIKMAH CURUG', '2023-05-08', '005', '005.pdf', 2021, 'Y'),
(1202, 118, 'SMK AL-HIKMAH CURUG', '2023-05-08', '006', '006.pdf', 2021, 'Y'),
(1203, 118, 'SMK BINA WISATA', '2023-05-08', '007', 'SMK BINA WISATA.pdf', 2021, 'Y'),
(1204, 118, 'SMK BINTANG NUSANTARA', '2023-05-10', '007', 'SMK BINTANG NUSANTARA.pdf', 2021, 'Y'),
(1205, 118, 'SMK BINUSTA  KOTA TANGGERANG', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1206, 118, 'SMK BINUSTA  KOTA TANGGERANG', '2023-05-10', '078', '078(2).pdf', 2021, 'Y'),
(1207, 118, 'SMK BINUSTA  KOTA TANGGERANG', '2023-05-10', '078', '078 (3).pdf', 2021, 'Y'),
(1208, 118, 'SMK CENDEKIA BANGSA', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1209, 118, 'SMK CENDEKIA BANGSA', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1210, 118, 'SMK CITRA NUSANTARA PANONGAN', '2023-05-10', '005', 'SMK Citra Nusantara.pdf', 2021, 'Y'),
(1211, 118, 'SMK DARUSSALAM PANONGAN', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1212, 118, 'SMK DARUSSALAM PANONGAN', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1213, 118, 'SMK DUA MEI', '2023-05-10', '007', 'SMK Dua Mei.pdf', 2021, 'Y'),
(1214, 118, 'SMK FADILAH', '2023-05-10', '007', 'SMK Fadilah.pdf', 2021, 'Y'),
(1215, 118, 'SMK GEMA BANGSA', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1216, 118, 'SMK GEMA BANGSA', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1217, 118, 'SMK GEMA GEWITA', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1218, 118, 'SMK GEMA GEWITA', '2023-05-10', '078', '078(4).pdf', 2021, 'Y'),
(1219, 118, 'SMK GEMA GEWITA', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1220, 118, 'SMK GEMA GEWITA', '2023-05-10', '078', '078(2).pdf', 2021, 'Y'),
(1221, 118, 'SMK GLOBAL INSAN', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1222, 118, 'SMK GGLOBAL INSAN', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1223, 118, 'SMK GLOBAL TANGERANG', '2023-05-10', '005', 'SMK Global Tangerang.pdf', 2021, 'Y'),
(1224, 118, 'SMK INSAN AQILAH RAJEG', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1225, 118, 'SMK  INSAN AQILAH RAJEG', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1226, 118, 'SMK INSAN MADANI PALASARI', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1227, 118, 'SMK INSAN MADANI PALASARI', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1228, 118, 'SMK IPTEK TANGSEL', '2023-05-10', '007', 'SMK Iptek Tangsel.pdf', 2021, 'Y'),
(1229, 118, 'SMK KARYA BANGSA NUSANTARA', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1230, 118, 'SMK KARYA BANGSA NUSANTARA', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1231, 118, 'SMK KEBANGSAAN', '2023-05-10', '007', 'SMK Kebangsaan.pdf', 2021, 'Y'),
(1232, 118, 'SMK KIRANA TALENTA', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1233, 118, 'SMK KIRANA TALENTA', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1234, 118, 'SMK MANDIRI 2 BALAJARA', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1235, 118, 'SMK MANDIRI 2 BALAJARA', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1236, 118, 'SMK MANGGALA TANGERANG', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1237, 118, 'SMK MANGGALA TANGERANG', '2023-05-10', '078', '078(4).pdf', 2021, 'Y'),
(1238, 118, 'SMK MANGGALA TANGERANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1239, 118, 'SMK MANGGALA TANGERANG', '2023-05-10', '078', '078(2).pdf', 2021, 'Y'),
(1240, 118, 'SMK MEGA BANGSA', '2023-05-10', '007', 'SMK Mega Bangsa.pdf', 2021, 'Y'),
(1241, 118, 'SMK MUHAMMADIYAH 2 CILEUNGSI', '2023-05-10', '001', 'SMK Muhammadiyah 2.pdf', 2021, 'Y'),
(1242, 118, 'SMK MUHAMMADIYAH 3', '2023-05-10', '008', '008.pdf', 2021, 'Y'),
(1243, 118, 'SMK MUHAMMADIYAH 3', '2023-05-10', '008', '008(4).pdf', 2021, 'Y'),
(1244, 118, 'SMK MUHAMMADIYAH 3', '2023-05-10', '008', '008(3).pdf', 2021, 'Y'),
(1245, 118, 'SMK MUHAMMADIYAH 3', '2023-05-10', '008', '008(2).pdf', 2021, 'Y'),
(1246, 118, 'SMK MUHAMMADIYAH PARAKAN', '2023-05-10', '007', 'SMK Muammadiyah Parakan.pdf', 2021, 'Y'),
(1247, 118, 'SMK NURUL AMIN', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1248, 118, 'SMK NURUL AMIN', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1249, 118, 'SMK PARAMARTA', '2023-05-10', '008', 'SMK Paramarta.pdf', 2021, 'Y'),
(1250, 118, 'SMK PGRI 31 LEGOK', '2023-05-10', '003', '003.pdf', 2021, 'Y'),
(1251, 118, 'SMK PGRI 31 LEGOK', '2023-05-10', '003', '006.pdf', 2021, 'Y'),
(1252, 118, 'SMK PLUS BLM', '2023-05-10', '007', 'SMK Plus Blm.pdf', 2021, 'Y'),
(1253, 118, 'SMK PRIMA BAKTI', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1254, 118, 'SMK PRIMA BAKTI', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1255, 118, 'SMK PUJANGGA PASAR KEMIS', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1256, 118, 'SMK PUJANGGA PASAR KEMIS', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1257, 118, 'SMK PUTRA PERDANA INDONESIA', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1258, 118, 'SMK PUTRA PERDANA INDONESIA', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1259, 118, 'SMK SASMITA  JAYA 1', '2023-05-10', '007', 'SMK Sasmita Jaya 1.pdf', 2021, 'Y'),
(1260, 118, 'SMK SETIA BHAKTI KOTA TANGERANG', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1261, 118, 'SMK SETIA BHAKTI KOTA TANGERANG', '2023-05-10', '078', '078(4).pdf', 2021, 'Y'),
(1262, 118, 'SMK SETIA BHAKTI KOTA TANGERANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1263, 118, 'SMK SETIA BHAKTI KOTA TANGERANG', '2023-05-10', '078', '078(2).pdf', 2021, 'Y'),
(1264, 118, 'SMK TI PGRI 11 SERPONG', '2023-05-10', '007', '007.pdf', 2021, 'Y'),
(1265, 118, 'SMK TI PGRI 11 SERPONG', '2023-05-10', '008', '008.pdf', 2021, 'Y'),
(1266, 118, 'SMKN 1 CIOMAS ', '2023-05-10', '013', 'SMKN 1 Ciomas.pdf', 2021, 'Y'),
(1267, 118, 'SMKN 1 CIOMAS ', '2023-05-10', '013', '013.pdf', 2021, 'Y'),
(1268, 118, 'SMKN 1 PADARINCANG', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1269, 118, 'SMKN 1 PADARINCANG', '2023-05-10', '078', '078(4).pdf', 2021, 'Y'),
(1270, 118, 'SMKN 1 PADARINCANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1271, 118, 'SMKN 1 PADARINCANG', '2023-05-10', '078', '078(2).pdf', 2021, 'Y'),
(1272, 118, 'SMKN 1 PANDEGLANG', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1273, 118, 'SMKN 1 PANDEGLANG', '2023-05-10', '078', '078(4).pdf', 2021, 'Y'),
(1274, 118, 'SMKN 1 PANDEGLANG', '2023-05-10', '078', '078(4).pdf', 2021, 'Y'),
(1275, 118, 'SMKN 1 PANDEGLANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1276, 0, 'SMKN 1 PANDEGLANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1277, 0, 'SMKN 1 PANDEGLANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1278, 118, 'SMKN 1 PANDEGLANG', '2023-05-10', '078', '078(2).pdf', 2021, 'Y'),
(1279, 118, 'SMKN 3 KAB. TANGERANG', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1280, 118, 'SMKN 3 KAB. TANGERANG', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1281, 118, 'SMKN 3 KOTA TANGERANG SELATAN', '2023-05-10', '007', '007.pdf', 2021, 'Y'),
(1282, 0, 'SMKN 3 KOTA TANGERANG SELATAN', '2023-05-10', '007', '007(2).pdf', 2021, 'Y'),
(1283, 118, 'SMKN 3 TANGERANG', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1284, 118, 'SMKN 3 TANGERANG', '2023-05-10', '078', '078(4).pdf', 2021, 'Y'),
(1285, 118, 'SMKN 3 TANGERANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1286, 118, 'SMKN 3 TANGERANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1287, 118, 'SMKN 3 TANGERANG', '2023-05-10', '0787', '078(2).pdf', 2021, 'Y'),
(1288, 118, 'SMKN 4  PANDEGLANG', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1289, 118, 'SMKN 4  PANDEGLANG', '2023-05-10', '0787', '078(4).pdf', 2021, 'Y'),
(1290, 118, 'SMKN 4  PANDEGLANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1291, 118, 'SMKN 4  PANDEGLANG', '2023-05-10', '078', '078(2).pdf', 2021, 'Y'),
(1292, 118, 'SMKN 6 KAB. TANGERANG', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1293, 118, 'SMKN 6 KAB. TANGERANG', '2023-05-10', '078', '006.pdf', 2023, 'Y'),
(1294, 118, 'SMKN 7 KOTA TANGERANG', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1295, 118, 'SMKN 7 KOTA TANGERANG', '2023-05-10', '078', '078(4).pdf', 2021, 'Y'),
(1296, 118, 'SMKN 7 KOTA TANGERANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1297, 118, 'SMKN 7 KOTA TANGERANG', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1298, 118, 'SMKN 7 KOTA TANGERANG', '2023-05-10', '078', '078(2).pdf', 2021, 'Y'),
(1299, 118, 'SMKN 7 TANGSEL', '2023-05-10', '078', '078.pdf', 2021, 'Y'),
(1300, 118, 'SMKN 7 TANGSEL', '2023-05-10', '078', '078(4).pdf', 2021, 'Y'),
(1301, 118, 'SMKN 7 TANGSEL', '2023-05-10', '078', '078(3).pdf', 2021, 'Y'),
(1302, 118, 'SMKN 7 TANGSEL', '2023-05-10', '078', '078(2).pdf', 2021, 'Y'),
(1303, 118, 'SMKN 8 KAB. TANGERANG', '2023-05-10', '078', '005.pdf', 2021, 'Y'),
(1304, 118, 'SMKN 8 KAB. TANGERANG', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1305, 118, 'SMKN 9 KAB. TANGERANG', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1306, 118, 'SMKN 9 KAB. TANGERANG', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1308, 118, 'SMKN 10 KAB. TANGERANG', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1309, 118, 'SMKN 10 KAB. TANGESANG', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1310, 118, 'SMKN 11 KAB. TANGERANG', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1311, 118, 'SMKN 11 KAB. TANGERANG', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1312, 118, 'SMKN 12 KAB. TANGERANG', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1313, 118, 'SMKN 12 KAB. TANGERANG', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1314, 118, 'SMK PERMATA KEMIRI', '2023-05-10', '005', '005.pdf', 2021, 'Y'),
(1315, 118, 'SMK PERMATA KEMIRI', '2023-05-10', '006', '006.pdf', 2021, 'Y'),
(1316, 118, 'SMKS PGRI 1 BALAJARA', '2023-05-10', '005', 'SMKS PGRI 1 Balajara.pdf', 2021, 'Y'),
(1317, 118, 'SMKS TECHNO MEDIA ', '2023-05-10', '007', '007.pdf', 2021, 'Y'),
(1318, 118, 'SMKS TECHNO MEDIA ', '2023-05-10', '007', '007(2).pdf', 2021, 'Y'),
(1320, 118, 'STIKOM AL- KHAIRIYAH', '2023-05-10', '069', '069(2).pdf', 2020, 'Y'),
(1321, 118, 'STIKOM AL- KHAIRIYAH', '2023-05-10', '069', '069(2).pdf', 2020, 'Y'),
(1322, 118, 'STIH PAINAN', '2023-05-10', '065', 'Stih Painan.pdf', 2020, 'Y'),
(1325, 208, 'KEBIJAKAN MUTU POLTEK SSR', '2023-05-17', '-', 'KEBIJAKAN MUTU POLTEK SSR.pdf', 2023, 'Y'),
(1327, 209, 'MANUAL MUTU POLTEK SSR', '2023-05-17', '-', 'MANUAL MUTU POLTEK SSR.pdf', 2023, 'Y'),
(1329, 211, 'Standar Mutu Poltek SSR', '2023-05-17', '-', 'Standar Mutu Poltek SSR.pdf', 2023, 'Y'),
(1330, 210, 'DIREKTUR TENTANG PENGANGKATAN PEJABAT', '2023-05-17', '018', '43.-SK- Direktur tentang Pengangkatan Pejabat Struktural di lingkungan Politeknik SSR.pdf', 2019, 'Y'),
(1331, 210, 'YAYASAN TENTANG MEKANISME DAN PROSEDUR', '2023-05-17', '040', '44.-SK- Yayasan tentang Mekanisme dan prosedur rekrutmen dosen dan tenaga kependidikan.pdf', 2019, 'Y'),
(1333, 212, '1. Prosedur Mutu Pembimbingan Akademik', '2023-05-17', '-', '1. Prosedur Mutu Pembimbingan Akademik.pdf', 2023, 'Y'),
(1335, 212, '2. Penetapan Pembimbing Akademik', '2023-05-17', '-', '2. Penetapan Pembimbing Akademik.pdf', 2023, 'Y'),
(1337, 212, '3. Penetapan Dosen Pengajar Mata Kuliah', '2023-05-17', '-', '3. Penetapan Dosen Pengajar Mata Kuliah.pdf', 2023, 'Y'),
(1338, 214, 'SK DIREKTUR TENTANG PENGANGKATAN PEJABAT STRUKTUAL', '2023-05-17', '018', '43.-SK- Direktur tentang Pengangkatan Pejabat Struktural di lingkungan Politeknik SSR.pdf', 2019, 'Y'),
(1340, 212, '4. Konversi Mata Kuliah', '2023-05-17', '-', '4. Konversi Mata Kuliah.pdf', 2023, 'Y'),
(1341, 214, 'YAYASAM TENTANG MEKANISME DAN PROSEDUR', '2023-05-17', '040', '44.-SK- Yayasan tentang Mekanisme dan prosedur rekrutmen dosen dan tenaga kependidikan.pdf', 2020, 'Y'),
(1342, 212, '5. Proses Pembelajaran', '2023-05-17', '-', '5. Proses Pembelajaran.docx', 2023, 'Y'),
(1343, 0, '5. Proses Pembelajaran', '2023-05-17', '-', '5. Proses Pembelajaran.pdf', 2023, 'Y'),
(1345, 212, '6. Pembuatan SAP', '2023-05-17', '-', '6. Pembuatan SAP.pdf', 2023, 'Y'),
(1347, 212, '7. Monitoring SAP', '2023-05-17', '-', '7. Monitoring SAP.pdf', 2023, 'Y'),
(1349, 212, '8. Prosedur Mutu Ujian', '2023-05-17', '-', '8. Prosedur Mutu Ujian.pdf', 2023, 'Y'),
(1351, 212, '9. Penerimaan Calon Mahasiswa', '2023-05-17', '-', '9. Penerimaan Calon Mahasiswa.pdf', 2023, 'Y'),
(1353, 212, '10. Penetapan Dosen Pembimbing Tugas Akhir', '2023-05-17', '-', '10. Penetapan Dosen Pembimbing Tugas Akhir.pdf', 2023, 'Y'),
(1354, 215, 'AMI KOMPLIT MATRIK 19-20 GENAP-DKV', '2023-05-17', '03', 'AMI komplit matrik 19-20 genap-DKV.docx', 2020, 'Y'),
(1355, 215, 'AMI KOMPLIT MATRIK 19-20 GENAP DKV', '2023-05-17', '03', 'AMI komplit matrik 19-20 genap-DKV.pdf', 2020, 'Y'),
(1357, 212, '11. Usulan Penelitian', '2023-05-17', '-', '11. Usulan Penelitian.pdf', 2023, 'Y'),
(1358, 215, 'AMI KOMPLIT MATRIK 20-21 GANJIL DKV', '2023-05-17', '03', 'AMI komplit matrik 20-21 ganjil-DKV -.docx', 2020, 'Y'),
(1360, 215, 'AMI KOMPLIT MATRIK 20-21 GANJIL-DKV', '2023-05-17', '03', 'AMI komplit matrik 20-21 ganjil-DKV -.pdf', 2020, 'Y'),
(1361, 212, '12. Sudang Usulan Penelitian', '2023-05-17', '-', '12. Sudang Usulan Penelitian.pdf', 2023, 'Y'),
(1363, 212, '13. Pelaksanaan Penelitian', '2023-05-17', '-', '13. Pelaksanaan Penelitian.pdf', 2023, 'Y'),
(1364, 215, 'AMI KOMPLIT MATRIK 20-21-GANJIL TEKNIKA', '2023-05-17', '03', 'AMI komplit matrik 20-21 ganjil-Teknika.docx', 2020, 'Y'),
(1366, 212, '14. Sidang Komprehensif Penelitian', '2023-05-17', '-', '14. Sidang Komprehensif Penelitian.pdf', 2023, 'Y'),
(1367, 215, 'AMI KOMPLIK MATRIK 20-21 GANJIL TEKNIKA', '2023-05-17', '003', 'AMI komplit matrik 20-21 ganjil-Teknika.pdf', 2020, 'Y'),
(1369, 212, '15. Yudisium', '2023-05-17', '-', '15. Yudisium.pdf', 2023, 'Y'),
(1370, 215, 'AMI KOMPLIK MATRIK 20-21 GENAP DKV', '2023-05-17', '003', 'AMI komplit matrik 20-21 genap-DKV.docx', 2020, 'Y'),
(1372, 212, '16. Perancangan dan Pengembangan Kurikulum', '2023-05-17', '-', '16. Perancangan dan Pengembangan Kurikulum.pdf', 2023, 'Y'),
(1374, 212, '17. Monitoring dan Evaluasi Kurikulum', '2023-05-17', '-', '17. Monitoring dan Evaluasi Kurikulum.pdf', 2023, 'Y'),
(1375, 215, 'AMI KOMPLIT MATRIK 20-21 GENAP DKV', '2023-05-17', '003', 'AMI komplit matrik 20-21 genap-DKV.pdf', 2020, 'Y'),
(1377, 212, '18. Suasana Akademik', '2023-05-17', '-', '18. Suasana Akademik.pdf', 2023, 'Y'),
(1379, 215, 'AMI KOMPLIT MATRIK 20-21 GENAP NAUTIKA', '2023-05-17', '03', 'AMI komplit matrik 20-21 genap-Nautika.docx', 2021, 'Y'),
(1380, 212, '19. Evaluasi Kinerja Dosen dan Tendik', '2023-05-17', '-', '19. Evaluasi Kinerja Dosen dan Tendik.pdf', 2023, 'Y'),
(1382, 215, 'AMI KOMPLIT MATRIK 20-21 GENAP NAUTIKA', '2023-05-17', '03', 'AMI komplit matrik 20-21 genap-Nautika.pdf', 2021, 'Y'),
(1383, 212, '20. Penanganan Dosen dan Tendik Bermasalah', '2023-05-17', '-', '20. Penanganan Dosen dan Tendik Bermasalah.pdf', 2023, 'Y'),
(1386, 215, 'AMI KOMPLIT MATRIK 20-21 GENAP  TEKNIKA', '2023-05-17', '03', 'AMI komplit matrik 20-21 genap-Teknika.docx', 2020, 'Y'),
(1387, 212, '21. Peyusunan Evaluasi Diri', '2023-05-17', '-', '21. Peyusunan Evaluasi Diri.pdf', 2023, 'Y'),
(1388, 212, '22. Pengelolaan Akreditasi Prodi', '2023-05-17', '-', '22. Pengelolaan Akreditasi Prodi.docx', 2023, 'Y'),
(1389, 215, 'AMI KOMPLIT MATRIK 20-21 GENAP TEKNIKA', '2023-05-17', '03', 'AMI komplit matrik 20-21 genap-Teknika.pdf', 2020, 'Y'),
(1390, 212, '22. Pengelolaan Akreditasi Prodi', '2023-05-17', '-', '22. Pengelolaan Akreditasi Prodi.pdf', 2023, 'Y'),
(1392, 212, '23-Penerimaan dan Pembinaan Pegawai dan Dosen', '2023-05-17', '-', '23-Penerimaan dan Pembinaan Pegawai dan Dosen.pdf', 2023, 'Y'),
(1393, 215, 'AMI KOMPLIT MATRIK 21-21 GANJIL DKV', '2023-05-17', '03', 'AMI komplit matrik 21-21 ganjil-DKV.docx', 2021, 'Y'),
(1395, 215, 'AMI KOMPLIT MATRIK 21-21 GANJIL DKV', '2023-05-17', '03', 'AMI komplit matrik 21-21 ganjil-DKV.pdf', 2021, 'Y'),
(1396, 216, 'BUKU FORMULIR_SPMI POLTEK SSR', '2023-05-17', '-', 'BUKU FORMULIR_SPMI POLTEK SSR.pdf', 2023, 'Y'),
(1398, 217, 'AMI komplit matrik 19-20 ganjil-DKV', '2023-05-17', '-', 'AMI komplit matrik 19-20 ganjil-DKV.pdf', 2023, 'Y'),
(1399, 217, 'AMI komplit matrik 19-20 genap-DKV', '2023-05-17', '-', 'AMI komplit matrik 19-20 genap-DKV.docx', 2023, 'Y'),
(1401, 217, 'AMI komplit matrik 20-21 ganjil-DKV -', '2023-05-17', '-', 'AMI komplit matrik 20-21 ganjil-DKV -.docx', 2023, 'Y'),
(1402, 217, 'AMI komplit matrik 20-21 ganjil-DKV -', '2023-05-17', '-', 'AMI komplit matrik 20-21 ganjil-DKV -.pdf', 2023, 'Y'),
(1403, 217, 'AMI komplit matrik 20-21 ganjil-Teknika', '2023-05-17', '-', 'AMI komplit matrik 20-21 ganjil-Teknika.docx', 2023, 'Y'),
(1404, 217, 'AMI komplit matrik 20-21 ganjil-Teknika', '2023-05-17', '-', 'AMI komplit matrik 20-21 ganjil-Teknika.pdf', 2023, 'Y'),
(1405, 217, 'AMI komplit matrik 20-21 genap-DKV', '2023-05-17', '-', 'AMI komplit matrik 20-21 genap-DKV.docx', 2023, 'Y'),
(1406, 217, 'AMI komplit matrik 20-21 genap-DKV', '2023-05-17', '-', 'AMI komplit matrik 20-21 genap-Nautika.pdf', 2023, 'Y'),
(1407, 217, 'AMI komplit matrik 20-21 genap-Teknika', '2023-05-17', '-', 'AMI komplit matrik 20-21 genap-Teknika.pdf', 2023, 'Y'),
(1408, 218, 'AMI komplit matrik 19-20 ganjil-DKV', '2023-05-17', '03', 'AMI komplit matrik 19-20 ganjil-DKV.pdf', 2020, 'Y'),
(1409, 219, 'SK LAYANAN MAHASISWA', '2023-05-19', '020', '08-SK-LAYANAN-MAHASISWA.pdf', 2019, 'Y'),
(1410, 217, 'ABDUL FATAH', '2023-05-19', 'Animasi', 'ABDUL FATAH.pdf', 2023, 'Y'),
(1411, 217, 'ADENG DIARTO', '2023-05-19', 'Animasi', 'ADENG DIARTO.pdf', 2023, 'Y'),
(1412, 217, 'ADI ROSMANA', '2023-05-19', 'Animasi', 'ADI ROSMANA.pdf', 2023, 'Y'),
(1413, 217, 'AI DEWI P', '2023-05-19', 'Animasi', 'AI DEWI P.pdf', 2023, 'Y'),
(1414, 217, 'ANISSOFIAH AZISE W, ANT I MM', '2023-05-19', 'Animasi', 'ANISSOFIAH AZISE W, ANT I MM.docx', 2023, 'Y'),
(1415, 217, 'ANUNG ADI CAHYA', '2023-05-19', 'Animasi', 'ANUNG ADI CAHYA.pdf', 2023, 'Y'),
(1416, 217, 'CAPT. DEDI NURYAMAN', '2023-05-19', 'Animasi', 'Capt. DEDI NURYAMAN.pdf', 2023, 'Y'),
(1417, 217, 'CAPT. H, ACHMAD SUHARDONO', '2023-05-19', 'Animasi', 'Capt. H. ACHMAD SUHARDONO.pdf', 2023, 'Y'),
(1418, 217, 'CAPT.  HERMAWAN ', '2023-05-19', 'Animasi', 'Capt. HERMAWAN.pdf', 2023, 'Y'),
(1419, 217, 'CAPT. ROCHANDA', '2023-05-19', 'Animasi', 'Capt. ROCHANDA.pdf', 2023, 'Y'),
(1420, 217, 'CAPT. THAMRIN LAOMANG', '2023-05-19', 'Animasi', 'Capt. THAMRIN LAOMANG.pdf', 2023, 'Y'),
(1421, 217, 'DANANJAYA', '2023-05-19', 'Animasi', 'DANANJAYA.pdf', 2023, 'Y'),
(1422, 217, 'DHINI WARTI, M.SI', '2023-05-19', 'Animasi', 'DHINI WARTI, M.Si.pdf', 2023, 'Y'),
(1423, 217, 'DRS. H. YAHYA', '2023-05-19', 'Animasi', 'Drs. H. YAHYA.pdf', 2023, 'Y'),
(1424, 217, 'DRS. SUKIMAN', '2023-05-19', 'Animasi', 'Drs. SUKIMAN.pdf', 2023, 'Y'),
(1425, 217, 'DRS. YOHANES MURYADI', '2023-05-20', 'Animasi', 'Drs. YOHANES MURYADI.pdf', 2023, 'Y'),
(1426, 217, 'ELIS SUSWATI, M.Si', '2023-05-20', 'Animasi', 'ELIS SUSWATI, M.Si.pdf', 2023, 'Y'),
(1427, 217, 'ERI J. LESMANA, ST', '2023-05-20', 'Animasi', 'ERI J. LESMANA, ST.pdf', 2023, 'Y'),
(1428, 217, 'EUIS ANTIKA, MM', '2023-05-20', 'Animasi', 'EUIS ANTIKA, MM.pdf', 2023, 'Y'),
(1429, 217, 'FIRMAN NURWANSYAH, S.Pd', '2023-05-20', 'Animasi', 'FIRMAN NURWANSYAH, S.Pd.pdf', 2023, 'Y'),
(1430, 217, 'H. SENTOT', '2023-05-20', 'Animasi', 'H. SENTOT.pdf', 2023, 'Y'),
(1431, 217, 'H. SUPENA DIANSYAH, MH', '2023-05-20', 'Animasi', 'H. SUPENA DIANSYAH, MH.pdf', 2023, 'Y'),
(1432, 217, 'HADI PRAMONO, M.Pd', '2023-05-20', 'Animasi', 'HADI PRAMONO, M.Pd.pdf', 2023, 'Y'),
(1433, 217, 'HADI PRAMONO, M.Pd', '2023-05-20', 'Animasi', 'HADI PRAMONO, M.Pd.pdf', 2023, 'Y'),
(1434, 217, 'KARNIYAH, ANT III', '2023-05-20', 'Animasi', 'KARNIYAH, ANT III.pdf', 2023, 'Y'),
(1435, 217, 'M. SOHIBUL ANWAR,', '2023-05-20', 'Animasi', 'M. SOHIBUL ANWAR,.pdf', 2023, 'Y'),
(1436, 217, 'MAYA NINGSIH', '2023-05-20', 'Animasi', 'MAYA NINGSIH.pdf', 2023, 'Y'),
(1437, 217, 'SARIM, S.Sos', '2023-05-20', 'Animasi', 'SARIM, S.Sos.pdf', 2023, 'Y'),
(1438, 217, 'SEPTO', '2023-05-20', 'Animasi', 'SEPTO.pdf', 2023, 'Y'),
(1439, 217, 'STEVANUS FRANSISCUS', '2023-05-20', 'Animasi', 'STEVANUS FRANSISCUS.pdf', 2023, 'Y'),
(1440, 217, 'SUMANTO', '2023-05-20', 'Animasi', 'SUMANTO.pdf', 2023, 'Y'),
(1441, 217, 'TRI SUBAHAGIANTO, MPB III', '2023-05-20', 'Animasi', 'TRI SUBAHAGIANTO, MPB III.pdf', 2023, 'Y'),
(1442, 217, 'YANA HERYANA', '2023-05-20', 'Animasi', 'YANA HERYANA.pdf', 2023, 'Y'),
(1443, 216, '(SOP)-UMUM', '2023-05-20', 'DKV', '(SOP)-Umum.pdf', 2023, 'Y'),
(1444, 217, 'ABDUL FATAH', '2023-05-20', 'DKV', 'ABDUL FATAH.pdf', 2023, 'Y'),
(1445, 217, 'ADENG DIARTO', '2023-05-20', 'DKV', 'ADENG DIARTO.pdf', 2023, 'Y'),
(1446, 217, 'ADI ROSMANA', '2023-05-20', 'DKV', 'ADI ROSMANA.pdf', 2023, 'Y'),
(1447, 217, 'AI DEWI P', '2023-05-20', 'DKV', 'AI DEWI P.pdf', 2023, 'Y'),
(1448, 217, 'DANANJAYA', '2023-05-20', 'DKV', 'DANANJAYA.pdf', 2023, 'Y'),
(1449, 217, 'DOCUMENT', '2023-05-20', 'DKV', 'document.pdf', 2023, 'Y'),
(1450, 217, 'DRS. SUKIMAN', '2023-05-20', 'DKV', 'Drs. SUKIMAN.pdf', 2023, 'Y'),
(1451, 217, 'ELIS SUSWATI, M.Si', '2023-05-20', 'DKV', 'ELIS SUSWATI, M.Si.pdf', 2023, 'Y'),
(1452, 217, 'ERI J. LESMANA, ST', '2023-05-20', 'DKV', 'ERI J. LESMANA, ST.pdf', 2023, 'Y'),
(1453, 217, 'FIRMAN NURWANSYAH, S.Pd', '2023-05-20', 'DKV', 'FIRMAN NURWANSYAH, S.Pd.pdf', 2023, 'Y'),
(1454, 217, 'INDEX', '2023-05-20', 'DKV', 'index.pdf', 2023, 'Y'),
(1455, 217, 'MAYA NINGSIH', '2023-05-20', 'DKV', 'MAYA NINGSIH.pdf', 2023, 'Y'),
(1456, 217, 'SARIM, S.Sos', '2023-05-20', 'DKV', 'SARIM, S.Sos.pdf', 2023, 'Y'),
(1457, 217, 'SEPTO', '2023-05-20', 'DKV', 'SEPTO.pdf', 2023, 'Y'),
(1458, 217, 'SUMANTO', '2023-05-20', 'DKV', 'SUMANTO.pdf', 2023, 'Y'),
(1459, 217, 'YANA HERYANA', '2023-05-20', 'DKV', 'YANA HERYANA.pdf', 2023, 'Y'),
(1467, 217, 'ABDUROHMAN', '2023-05-20', 'Despar', 'ABDUROHMAN.pdf', 2023, 'Y'),
(1468, 217, 'ASEP HENDIAWAN', '2023-05-20', 'Despar', 'ASEP HENDIAWAN.pdf', 2023, 'Y'),
(1469, 217, 'ENDANG ISKANDAR', '2023-05-20', 'Despar', 'ENDANG ISKANDAR.pdf', 2023, 'Y'),
(1470, 217, 'ERI J. LESMANA, ST', '2023-05-20', 'Despar', 'ERI J. LESMANA, ST.pdf', 2023, 'Y'),
(1471, 217, 'FINO WASPODO', '2023-05-20', 'Despar', 'FINO WASPODO.pdf', 2023, 'Y'),
(1472, 216, 'H. SUTISNA', '2023-05-20', 'Despar', 'H. SUTISNA.pdf', 2023, 'Y'),
(1473, 217, 'IING MUSTA\'IN', '2023-05-20', 'Despar', 'IING MUSTA\'IN.pdf', 2023, 'Y');
INSERT INTO `sys_file` (`id`, `id_menu`, `nama_file`, `tgl`, `deskripsi`, `file`, `tahun`, `status`) VALUES
(1474, 217, 'STEVANUS FRANSISCUS', '2023-05-20', 'Despar', 'STEVANUS FRANSISCUS.pdf', 2023, 'Y'),
(1475, 217, 'TEDUH ANTAREZA', '2023-05-20', 'Despar', 'TEDUH ANTAREZA.pdf', 2023, 'Y'),
(1476, 217, 'TENI', '2023-05-20', 'Despar', 'TENI.pdf', 2023, 'Y'),
(1477, 217, 'TRI RAHARJO', '2023-05-20', 'Despar', 'TRI RAHARJO.pdf', 2023, 'Y'),
(1478, 217, 'TRI SUBAHAGIANTO, MPB III', '2023-05-20', 'Despar', 'TRI SUBAHAGIANTO, MPB III.pdf', 2023, 'Y'),
(1479, 217, 'TRISYA', '2023-05-20', 'Despar', 'TRISYA.pdf', 2023, 'Y'),
(1480, 220, 'AMI_UTP_2018_-_Form_03_Checklist_Audit', '2023-05-20', 'AMI', 'AMI_UTP_2018_-_Form_03_Checklist_Audit.pdf', 2023, 'Y'),
(1481, 220, 'PEDOMAN-AMI-BERBASIS-9-KRITERIA', '2023-05-20', 'PEDOMAN AMI', 'PEDOMAN-AMI-BERBASIS-9-KRITERIA.pdf', 2023, 'Y'),
(1482, 221, 'RTM 2019- jadi', '2023-05-20', 'RTM', 'RTM 2019- jadi.pdf', 2019, 'Y'),
(1483, 0, 'RTM 2020- jadi', '2023-05-20', 'RTM', 'RTM 2020- jadi.pdf', 2020, 'Y'),
(1484, 221, 'RTM 2020- jadi', '2023-05-20', 'RTM', 'RTM 2020- jadi.pdf', 2020, 'Y'),
(1485, 217, 'MATRIK AMI', '2023-05-20', 'AMI', 'matrik ami TPT 19-20-21.pdf', 2021, 'Y'),
(1486, 222, 'AMI komplit matrik 19-20 ganjil-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 19-20 ganjil-DKV.pdf', 2020, 'Y'),
(1487, 222, 'AMI komplit matrik 19-20 genap-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 19-20 genap-DKV.pdf', 2020, 'Y'),
(1488, 222, 'AMI komplit matrik 20-21 ganjil-DKV -', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 ganjil-DKV -.pdf', 2020, 'Y'),
(1489, 222, 'AMI komplit matrik 20-21 ganjil-Teknika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 ganjil-Teknika.pdf', 2020, 'Y'),
(1490, 222, 'AMI komplit matrik 20-21 genap-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-DKV.pdf', 2020, 'Y'),
(1491, 222, 'AMI komplit matrik 20-21 genap-Nautika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-Nautika.pdf', 2020, 'Y'),
(1492, 222, 'AMI komplit matrik 20-21 genap-Teknika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-Teknika.pdf', 2020, 'Y'),
(1493, 223, 'AMI komplit matrik 19-20 genap-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 19-20 genap-DKV.pdf', 2021, 'Y'),
(1494, 223, 'AMI komplit matrik 19-20 genap-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 19-20 genap-DKV.pdf', 2021, 'Y'),
(1496, 223, 'AMI komplit matrik 20-21 ganjil-Teknika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 ganjil-Teknika.pdf', 2021, 'Y'),
(1497, 223, 'AMI komplit matrik 20-21 genap-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-DKV.pdf', 2021, 'Y'),
(1498, 223, 'AMI komplit matrik 20-21 genap-Nautika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-Nautika.pdf', 2021, 'Y'),
(1499, 223, 'AMI komplit matrik 20-21 genap-Teknika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-Teknika.pdf', 2021, 'Y'),
(1500, 223, 'AMI komplit matrik 21-21 ganjil-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 21-21 ganjil-DKV.pdf', 2021, 'Y'),
(1501, 223, '01. AMI komplit matrik 19-20 ganjil-DKV', '2023-05-20', 'AMI', '01. AMI komplit matrik 19-20 ganjil-DKV.pdf', 2021, 'Y'),
(1502, 223, '01. AMI komplit matrik 19-20 genap-DKV', '2023-05-20', 'AMI', '01. AMI komplit matrik 19-20 genap-DKV.pdf', 2021, 'Y'),
(1503, 223, 'AMI komplit matrik 20-21 ganjil-DKV -', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 ganjil-DKV -.pdf', 2021, 'Y'),
(1504, 223, 'AMI komplit matrik 20-21 ganjil-Teknika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 ganjil-Teknika.pdf', 2021, 'Y'),
(1505, 223, 'AMI komplit matrik 20-21 genap-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-DKV.pdf', 2021, 'Y'),
(1506, 223, 'AMI komplit matrik 20-21 genap-Nautika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-Nautika.pdf', 2021, 'Y'),
(1507, 223, 'AMI komplit matrik 20-21 genap-Teknika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-Teknika.pdf', 2021, 'Y'),
(1508, 223, 'AMI komplit matrik 19-20 ganjil-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 19-20 ganjil-DKV.pdf', 2022, 'Y'),
(1509, 223, 'AMI komplit matrik 19-20 genap-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 19-20 genap-DKV.pdf', 2022, 'Y'),
(1510, 223, 'AMI komplit matrik 20-21 ganjil-DKV -', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 ganjil-DKV -.pdf', 2022, 'Y'),
(1511, 223, 'AMI komplit matrik 20-21 ganjil-Teknika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 ganjil-Teknika.pdf', 2022, 'Y'),
(1512, 223, 'AMI komplit matrik 20-21 genap-DKV', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-DKV.pdf', 2022, 'Y'),
(1513, 223, 'AMI komplit matrik 20-21 genap-Nautika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-Nautika.pdf', 2022, 'Y'),
(1514, 223, 'AMI komplit matrik 20-21 genap-Teknika', '2023-05-20', 'AMI', 'AMI komplit matrik 20-21 genap-Teknika.pdf', 2022, 'Y'),
(1515, 224, 'LED PS DKV SSR', '2023-05-20', 'LED PS DKV', 'LED PS DKV SSR.pdf', 2023, 'Y'),
(1516, 224, 'LKPS DKV SSR', '2023-05-20', 'LKPS DKV', 'LKPS DKV SSR.pdf', 2023, 'Y'),
(1517, 224, 'SK, Renstra. Renop DKV', '2023-05-20', 'SK', 'SK, Renstra. Renop DKV.pdf', 2023, 'Y'),
(1518, 226, 'LED Despar', '2023-05-20', 'LED', 'LED Despar.pdf', 2023, 'Y'),
(1519, 226, 'LKPS Despar', '2023-05-20', 'Despar', 'LKPS Despar.pdf', 2023, 'Y'),
(1520, 226, 'SK, Renstra, Renop Despar', '2023-05-20', 'SK', 'SK, Renstra, Renop Despar.pdf', 2023, 'Y'),
(1521, 227, '041118 Rencana Strategis Politeknik SSR', '2023-05-20', '041118', '041118 Rencana Strategis Politeknik SSR.pdf', 2023, 'Y'),
(1522, 227, 'SK POLITEKNIK SSR', '2023-05-20', 'SK', 'SK POLITEKNIK SSR.pdf', 2023, 'Y'),
(1523, 227, 'SK, Renstra, Renop Despar', '2023-05-20', 'SK', 'SK, Renstra, Renop Despar.pdf', 2023, 'Y'),
(1524, 227, 'Statuta PoliteknikSSR 2021', '2023-05-20', 'STATUTA', 'Statuta PoliteknikSSR 2021.pdf', 2023, 'Y'),
(1525, 227, 'SURAT PENYAMPAIAN SALINAN SK POLITEKNIK SSR', '2023-05-20', '703', 'SURAT PENYAMPAIAN SALINAN SK POLITEKNIK SSR.pdf', 2019, 'Y'),
(1526, 227, 'Copy of LED Despar', '2023-05-20', 'LED DESPAR', 'Copy of LED Despar.pdf', 2023, 'Y'),
(1527, 227, 'Copy of LKPS Despar', '2023-05-20', 'LKPS DESPAR', 'Copy of LKPS Despar.pdf', 2023, 'Y'),
(1528, 227, 'LED Despar', '2023-05-20', 'LED DESPAR', 'LED Despar.pdf', 2023, 'Y'),
(1529, 227, 'LKPS Despar', '2023-05-20', 'LKPS', 'LKPS Despar.pdf', 2023, 'Y'),
(1530, 228, 'RTM 2019- jadi', '2023-05-20', 'RTM', 'RTM 2019- jadi.pdf', 2019, 'Y'),
(1531, 228, 'RTM 2020- jadi', '2023-05-20', 'RTM', 'RTM 2020- jadi.pdf', 2020, 'Y'),
(1532, 228, 'RTM 2021- jadi', '2023-05-20', 'RTM', 'RTM 2021- jadi.pdf', 2021, 'Y'),
(1533, 228, 'RTM 2020- jadi', '2023-05-20', 'RTM', 'RTM 2020- jadi.pdf', 2020, 'Y'),
(1534, 228, 'RTM 2021- jadi', '2023-05-20', 'RTM', 'RTM 2021- jadi.pdf', 2021, 'Y'),
(1535, 228, 'RTM 2019- jadi', '2023-05-20', 'RTM', 'RTM 2019- jadi.pdf', 2019, 'Y'),
(1536, 228, 'RTM 2020- jadi', '2023-05-20', 'RTM', 'RTM 2020- jadi.pdf', 2020, 'Y'),
(1537, 228, 'RTM 2021- jadi', '2023-05-20', 'RTM', 'RTM 2021- jadi.pdf', 2023, 'Y'),
(1538, 228, 'RTM 2021- jadi - akmi', '2023-05-20', 'RTM', 'RTM 2021- jadi - akmi.pdf', 2021, 'Y'),
(1539, 229, 'SK DOSEN TETAP', '2023-05-20', '158', '2. SK DOSEN TETAP.pdf', 2020, 'Y'),
(1540, 229, 'TRIDHARMA', '2023-05-20', '120', '4. TRIDHARMA.pdf', 2020, 'Y'),
(1541, 229, ' SPK', '2023-05-20', '120', '3. SPK.pdf', 2020, 'Y'),
(1542, 229, 'PERNYATAAN PIMPINAN', '2023-05-20', '181', '1. PERNYATAAN PIMPINAN.pdf', 2020, 'Y'),
(1543, 229, 'Harry Qurba', '2023-05-20', '-', 'Harry Qurba.pdf', 2023, 'Y'),
(1544, 0, '1-SK-', '2023-05-20', '012', '1-SK-.pdf', 2018, 'Y'),
(1545, 230, '1-SK-', '2023-05-20', '012', '1-SK-.pdf', 2018, 'Y'),
(1546, 230, '2-SK-', '2023-05-20', '016', '2-SK-.pdf', 2018, 'Y'),
(1547, 230, '005-SK-Penetapan-Calon-Maba-Jalur-USM-2020-2021', '2023-05-20', '052', '005-SK-Penetapan-Calon-Maba-Jalur-USM-2020-2021.pdf', 2019, 'Y'),
(1548, 230, '022- SK-Kelompok-Riset', '2023-05-20', '031', '022- SK-Kelompok-Riset.pdf', 2019, 'Y'),
(1549, 230, '24.-SK-', '2023-05-20', '033', '24.-SK-.pdf', 2019, 'Y'),
(1550, 230, '25.-SK-', '2023-05-20', '045', '25.-SK-.pdf', 2019, 'Y'),
(1551, 230, '26.-SK-', '2023-05-20', '045', '26.-SK-.pdf', 2019, 'Y'),
(1552, 230, '27.-SK-', '2023-05-20', '045', '27.-SK-.pdf', 2019, 'Y'),
(1553, 230, '28.-SK-', '2023-05-20', '045', '28.-SK-.pdf', 2019, 'Y'),
(1554, 230, '29.-SK-', '2023-05-20', '045', '29.-SK-.pdf', 2019, 'Y'),
(1555, 230, '30.-SK-', '2023-05-20', '045', '30.-SK-.pdf', 2019, 'Y'),
(1556, 230, '31.-SK-', '2023-05-20', '045', '31.-SK-.pdf', 2019, 'Y'),
(1557, 230, '32.-SK-', '2023-05-20', '045', '32.-SK-.pdf', 2019, 'Y'),
(1558, 230, '33.-SK-', '2023-05-20', '020', '33.-SK-.pdf', 2021, 'Y'),
(1559, 230, '34.-SK-', '2023-05-20', '051', '34.-SK-.pdf', 2021, 'Y'),
(1560, 230, '35.-SK-', '2023-05-20', '013', '35.-SK-.pdf', 2018, 'Y'),
(1561, 230, '36.-SK-', '2023-05-20', '015', '36.-SK-.pdf', 2018, 'Y'),
(1562, 230, '37.-SK-', '2023-05-20', '040', '37.-SK-.pdf', 2019, 'Y'),
(1563, 230, '38.-SK-', '2023-05-20', '041', '38.-SK-.pdf', 2019, 'Y'),
(1564, 230, '39.-SK-', '2023-05-20', '050', '39.-SK-.pdf', 2019, 'Y'),
(1565, 230, '40.-SK-', '2023-05-20', '044', '40.-SK-.pdf', 2019, 'Y'),
(1566, 230, '41.-SK-', '2023-05-20', '035', '41.-SK-.pdf', 2019, 'Y'),
(1567, 230, '42.-SK-', '2023-05-20', '017', '42.-SK-.pdf', 2019, 'Y'),
(1568, 230, '43.-SK-', '2023-05-20', '018', '43.-SK-.pdf', 2019, 'Y'),
(1569, 230, '44.-SK-', '2023-05-20', '040', '44.-SK-.pdf', 2019, 'Y'),
(1570, 230, 'untitled', '2023-05-20', '-', 'Untitled.pdf', 2023, 'Y'),
(1571, 92, 'Faris Iqbal Haidar', '2023-05-22', 'Faris Iqbal Haidar', 'Faris Iqbal Haidar_Animasi_9034520003.pdf', 2020, 'Y'),
(1572, 107, 'Skala Upah', '2023-05-23', '-', 'Skala Upah.htm', 2023, 'Y'),
(1573, 231, 'Berita Acara AK_kirim', '2023-05-23', '-', 'Berita Acara AK_kirim.htm', 2023, 'Y'),
(1574, 231, 'Copy of Berita Acara AK_kirim', '2023-05-23', '-', 'Copy of Berita Acara AK_kirim.htm', 2023, 'Y'),
(1575, 92, 'Kemal Mubinkan', '2023-05-23', 'Animasi', 'Kemal Mubinkan_Animasi_9034522017.pdf', 2022, 'Y'),
(1576, 92, 'MICHAEL ALEXANDER WIKOKTO ', '2023-05-24', '-', 'biodata michael.pdf', 2023, 'Y'),
(1577, 92, 'LILY ANGGRAINI PUTRI WIYONO ', '2023-05-24', 'DKV', 'Lily Anggraini Putri Wiyono.pdf', 2022, 'Y'),
(1578, 92, 'BINTANG TRIMAULANA', '2023-05-24', 'Animasi', 'Bintang trimaulana_Animasi_9034520022.pdf', 2020, 'Y'),
(1579, 92, 'Haykel Nathaniel', '2023-05-24', 'DKV', 'DATA HAYKEL (1) - Yehezkiel Haykel.pdf', 2020, 'Y'),
(1580, 92, 'MASAYU PRADITA INDRASWARI HAKIM', '2023-05-24', 'Animasi', 'Akte kelahiran_merged (1).pdf.pdf', 2020, 'Y'),
(1581, 92, 'MUHAMMAD ILHAN RICO ', '2023-05-24', '-', 'AKTA.pdf.pdf', 2020, 'Y'),
(1582, 92, 'Muhammad Aldi Ferdiansyah', '2023-05-25', 'DKV', 'Muhammad Aldi Ferdiansyah.pdf', 2022, 'Y'),
(1583, 92, 'INNATA RESITA', '2023-05-25', '-', 'Innata Resita.pdf', 2022, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sys_group_users`
--

CREATE TABLE `sys_group_users` (
  `id` int(11) NOT NULL,
  `level` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_group_users`
--

INSERT INTO `sys_group_users` (`id`, `level`, `deskripsi`) VALUES
(1, 'administrator', 'Administrator'),
(11, 'asesor', 'asesor');

-- --------------------------------------------------------

--
-- Table structure for table `sys_menu`
--

CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL,
  `nav_act` varchar(150) DEFAULT NULL,
  `page_name` varchar(150) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `main_table` varchar(150) DEFAULT NULL,
  `icon` varchar(150) DEFAULT NULL,
  `urutan_menu` int(11) DEFAULT 0,
  `parent` int(11) DEFAULT NULL,
  `dt_table` enum('Y','N') NOT NULL,
  `tampil` enum('Y','N') NOT NULL,
  `type_menu` enum('main','page') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_menu`
--

INSERT INTO `sys_menu` (`id`, `nav_act`, `page_name`, `url`, `main_table`, `icon`, `urutan_menu`, `parent`, `dt_table`, `tampil`, `type_menu`) VALUES
(1, NULL, 'master data', '', NULL, ' fa-folder-open', 0, 0, 'Y', 'Y', 'main'),
(2, 'cabang', 'hirarki', 'cabang', 'cabang', 'fa-folder', 0, 1, 'N', 'Y', 'page'),
(7, 'file', 'master dokumen', 'file', 'file', ' fa-folder-open', 1, 0, 'Y', 'Y', 'page'),
(5, 'dokumen', 'Dokumen', 'dokumen', 'dokumen', 'fa-folder', 2, 1, 'Y', 'Y', 'page'),
(6, 'sub_dokumen', 'Sub Dokumen', 'sub_dokumen', 'sub_dokumen', 'fa-folder', 3, 1, 'N', 'Y', 'page');

-- --------------------------------------------------------

--
-- Table structure for table `sys_menu_role`
--

CREATE TABLE `sys_menu_role` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `read_act` enum('Y','N') DEFAULT NULL,
  `insert_act` enum('Y','N') DEFAULT NULL,
  `update_act` enum('Y','N') DEFAULT NULL,
  `delete_act` enum('Y','N') DEFAULT NULL,
  `push_act` enum('Y','N') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_menu_role`
--

INSERT INTO `sys_menu_role` (`id`, `id_menu`, `group_id`, `read_act`, `insert_act`, `update_act`, `delete_act`, `push_act`) VALUES
(1, 1, 1, 'Y', 'N', 'N', 'N', 'N'),
(2, 2, 1, 'Y', 'Y', 'Y', 'Y', 'N'),
(5, 3, 1, 'Y', 'Y', 'Y', 'Y', 'N'),
(38, 7, 11, 'N', 'N', 'N', 'N', NULL),
(10, 7, 1, 'Y', 'Y', 'Y', 'Y', 'N'),
(8, 5, 1, 'Y', 'Y', 'Y', 'Y', 'Y'),
(9, 6, 1, 'Y', 'Y', 'Y', 'Y', 'N'),
(37, 6, 11, 'N', 'N', 'N', 'N', NULL),
(35, 2, 11, 'N', 'N', 'N', 'N', NULL),
(36, 5, 11, 'N', 'N', 'N', 'N', NULL),
(34, 1, 11, 'N', 'N', 'N', 'N', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sys_sub_bidang`
--

CREATE TABLE `sys_sub_bidang` (
  `id` int(11) NOT NULL,
  `sub_bidang` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `id_bidang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sys_sub_bidang`
--

INSERT INTO `sys_sub_bidang` (`id`, `sub_bidang`, `date`, `id_bidang`) VALUES
(11, 'SK DOSEN TETAP DAN TIDAK TETAP ', '0000-00-00', 11),
(13, 'RENOP DKV', '0000-00-00', 10),
(14, 'RENOP DESPAR', '0000-00-00', 10),
(15, 'RENOP ANIMASI', '0000-00-00', 10),
(16, 'SK  RENOP ', '0000-00-00', 11),
(17, 'SK STATUTA', '0000-00-00', 11),
(18, 'SK PENDIRAN', '0000-00-00', 5),
(19, 'HAKI -HAKI ', '0000-00-00', 13),
(21, 'SKKNI PRODI', '0000-00-00', 19),
(22, 'RENOP INSTITUSI', '0000-00-00', 10),
(23, 'SOP ADM UMUM DAN KEUANGAN', '0000-00-00', 7),
(24, 'SOP BAG AKADEMIK', '0000-00-00', 7),
(25, 'SOP LABORATURIUM', '0000-00-00', 7),
(26, 'SOP VISI-MISI', '0000-00-00', 7),
(27, 'SOP PERPUSTAKAAN', '0000-00-00', 7),
(28, 'SOP PRODI', '0000-00-00', 7),
(29, 'SOP MANAJEMEN', '0000-00-00', 7),
(30, 'SOP LPPM', '0000-00-00', 7),
(31, 'SOP LPM', '0000-00-00', 7),
(32, 'RESTRA POLITEKNIK', '0000-00-00', 24),
(33, 'SK LLPM', '0000-00-00', 11),
(34, 'AMI DKV', '0000-00-00', 16),
(35, 'AMI DESPAR', '0000-00-00', 16),
(36, 'AMI ANIMASI', '0000-00-00', 16),
(37, 'DENAH KAMPUS', '0000-00-00', 25),
(38, 'DATA DOSEN', '0000-00-00', 26),
(39, 'DATA TENAGA KEPENDIDIKAN ', '0000-00-00', 26),
(40, 'LKPS', '0000-00-00', 21),
(41, 'KURIKULIM ANIMASI', '0000-00-00', 12),
(42, 'KURIKULUM DESPAR', '0000-00-00', 12),
(43, 'KURIKULUM DKV', '0000-00-00', 12),
(44, 'RUANG GREEN SCREEN', '0000-00-00', 25),
(45, 'NUSANTARA - AUDITORIUM', '0000-00-00', 25),
(46, '1. SOP Penerimaan Mahasiswa Baru', '0000-00-00', 7),
(47, '2. SOP Her Registrasi Akademik', '0000-00-00', 7),
(48, '3. SOP Pembimbing Akademik', '0000-00-00', 7),
(49, '4. SOP Dosen Pengampu MK', '0000-00-00', 7),
(50, '5. SOP Penyelenggaraan UTS UAS', '0000-00-00', 7),
(51, '6. SOP Pengajuan Judul Skripsi', '0000-00-00', 7),
(52, '7. SOP Pembimbing Skripsi', '0000-00-00', 7),
(53, '8. SOP Seminar Proposal', '0000-00-00', 7),
(54, '9. SOP Sidang Skripsi', '0000-00-00', 7),
(55, '10. SOP Yudisium', '0000-00-00', 7),
(56, '11. SOP Wisuda', '0000-00-00', 7),
(57, '12. SOP Pengambilan Ijazah', '0000-00-00', 7),
(58, '13. SOP Perencanaan Pembelajaran', '0000-00-00', 7),
(59, '14. SOP Pelaksanaan Pembelajaran', '0000-00-00', 7),
(60, '15. SOP Evaluasi Pembelajaran', '0000-00-00', 7),
(61, '16. SOP Monitoring Pembelajaran oleh KaProdi dan Mahasiswa', '0000-00-00', 7),
(62, '17. SOP Evaluasi Pembelajaran oleh KaProdi', '0000-00-00', 7),
(63, '18. SOP Evaluasi Pembelajaran oleh UPM', '0000-00-00', 7),
(64, '19. SOP Pengangkatan Ketua Prodi', '0000-00-00', 7),
(65, '20. SOP Pengelolaan LPPM', '0000-00-00', 7),
(66, '21. SOP Pengelolaan Perpustakaan', '0000-00-00', 7),
(67, '22. SOP Penelusuran Alumni dan Pengguna Alumni (Tracer Study)', '0000-00-00', 7),
(68, '23 SOP Kepuasan Mahasiswa', '0000-00-00', 7),
(69, '23. SOP Bantuan Dana Lanjut Studi', '0000-00-00', 7),
(70, '24. SOP Perancangan & Pengembangan Kurikulum dan Prodi', '0000-00-00', 7),
(71, '24. SOP Perancangan & Pengembangan Kurikulum dan Prodi', '0000-00-00', 7),
(72, '25 SOP Administrsi Kemahasiswaan', '0000-00-00', 7),
(73, '25. SOP Rekruitmen Dosen Baru', '0000-00-00', 7),
(75, '26. SOP Pembuatan Buku Ajar', '0000-00-00', 7),
(76, '27. SOP Pengelolaan LAB', '0000-00-00', 7),
(77, '28 SOP Penempatan Magang & Kerja', '0000-00-00', 7),
(78, 'LABORATORIUM KOMPUTER 1', '0000-00-00', 25),
(79, 'LABORATORIUM KOMPUTER 2', '0000-00-00', 0),
(80, 'HOTEL ROOM 101', '0000-00-00', 0),
(81, 'HOTEL ROOM 102', '0000-00-00', 0),
(82, 'LABORATORIUM KOMPUTER 2', '0000-00-00', 0),
(83, 'LABORATORIUM KOMPUTER 2', '0000-00-00', 0),
(84, 'LABORATORIUM KOMPUTER 2', '0000-00-00', 25),
(85, 'HOTEL ROOM 101', '0000-00-00', 25),
(86, 'HOTEL ROOM 102', '0000-00-00', 25),
(87, 'MEETING ROOM 1', '0000-00-00', 25),
(88, 'MEETING ROOM 2', '0000-00-00', 25),
(89, 'HOTEL ROOM 101', '0000-00-00', 25),
(90, 'HOTEL ROOM 101', '0000-00-00', 25),
(91, 'HOTEL ROOM 102', '0000-00-00', 25),
(92, 'Mahasiswa', '0000-00-00', 27),
(93, 'DATA INTRUMEN AKREDITASI', '0000-00-00', 28),
(94, 'DOK LEGALITAS', '0000-00-00', 29),
(95, 'DOK STATUTA', '0000-00-00', 30),
(96, 'DOK RIP', '0000-00-00', 31),
(97, '123', '0000-00-00', 32),
(98, ' DOK RENSTRA', '0000-00-00', 33),
(99, 'DOK BEASISWA', '0000-00-00', 34),
(100, 'DOK CUTI MAHASISWA & KARYAWAN', '0000-00-00', 35),
(101, 'DOK DOSEN & JAD', '0000-00-00', 36),
(102, 'DOK RENOP', '0000-00-00', 37),
(103, 'DOK ASESOR', '0000-00-00', 38),
(104, 'DOK BUKU PEDOMAN AKADEMIK', '0000-00-00', 40),
(105, 'DOK DENAH GEDUNG', '0000-00-00', 41),
(106, 'DOK KERJASAMA', '0000-00-00', 42),
(107, 'DOK DOSEN DAN KARYAWAN', '0000-00-00', 43),
(108, 'DOK KURIKULUM', '0000-00-00', 44),
(109, 'DOK HAKI', '0000-00-00', 45),
(110, 'DOK LKPS (borang)', '0000-00-00', 46),
(111, 'DOK KEMAHASISWAAN', '0000-00-00', 47),
(112, 'DOK KODE ETIK TENDIK DAN PENDIK', '0000-00-00', 48),
(113, 'DOK LED', '0000-00-00', 49),
(114, 'DOK MAGANG', '0000-00-00', 50),
(115, 'DOK LPPM', '0000-00-00', 51),
(116, 'DOK MARKETING', '0000-00-00', 52),
(117, 'DOK MAHASISWA', '0000-00-00', 53),
(118, 'DOK MOU', '0000-00-00', 54),
(119, 'DOK QUISIONER KEPUSASAN MAHASISWA', '0000-00-00', 55),
(120, 'DOK SK AKREDITASI', '0000-00-00', 56),
(121, 'DOK SURAT PERNYATAAN', '0000-00-00', 57),
(122, 'TTD DIGITAL', '0000-00-00', 59),
(123, 'TTD DIGITAL', '0000-00-00', 58),
(124, 'DOKUMEN KERJA POLITEKNIK SSR', '0000-00-00', 60),
(125, 'DOK PEMBIAYAAN', '0000-00-00', 61),
(126, 'DOK PENGAJARAN (PKBM)', '0000-00-00', 62),
(127, 'DOK PRODI', '0000-00-00', 63),
(128, 'DOK REKOMENDASI AKREDITASI SSR', '0000-00-00', 64),
(129, 'DOK SISTEM INFORMASI', '0000-00-00', 65),
(130, 'DOK SKKNI', '0000-00-00', 66),
(131, 'DOK SOP', '0000-00-00', 67),
(132, 'DOK RPS', '0000-00-00', 68),
(133, 'DOK PENGURUSAN ADMINISTRASI AKREDITASI', '0000-00-00', 69),
(134, 'DOK TA MHS', '0000-00-00', 70),
(135, 'DOK. KURIKULUM', '0000-00-00', 71),
(136, 'ATURAN PENULISAN DAN PENOMORAN SURAT', '0000-00-00', 72),
(137, 'DOK KOP SURAT', '0000-00-00', 72),
(138, 'PENOMORAN SURAT', '0000-00-00', 72),
(139, 'SURAT-MENYURAT', '0000-00-00', 72),
(140, 'Cek List', '0000-00-00', 28),
(141, 'DOK STATUTA POLTEK SSR', '0000-00-00', 30),
(142, 'STATUTA TERAHIR', '0000-00-00', 30),
(143, 'DOK RIP POLTEK SSR', '0000-00-00', 0),
(144, 'DOK RIP POLTEK SSR', '0000-00-00', 31),
(145, 'RIP-RENOPS PRODI', '0000-00-00', 31),
(146, 'TA 2022-2023', '0000-00-00', 34),
(147, 'BAP-DOSEN dan ABsen-mhs', '0000-00-00', 36),
(148, 'Tabel 1 Bagian-1 Kerjasama Pendidikan', '0000-00-00', 42),
(149, 'Tabel 1 Bagian-2 Kerjasama Penelitian', '0000-00-00', 42),
(150, 'Tabel 1 Bagian-3 Kerjasama Pengabdian', '0000-00-00', 42),
(151, 'DOK. KURIKULUM ANIMASI', '0000-00-00', 44),
(152, 'DOK. KURIKULUM DESAIN KOMUNIKASI VISUAL', '0000-00-00', 44),
(153, 'DOK. KURIKULUM DESTINASI PARIWISATA DAN HOSPITALTY', '0000-00-00', 44),
(154, 'APT POLITEKNIK SSR', '0000-00-00', 46),
(155, 'D3 - Desain Komunikasi Visual', '0000-00-00', 46),
(156, 'D4 - Destinasi Pariwisata', '0000-00-00', 46),
(157, 'LEGALITAS, LKPS, LED', '0000-00-00', 46),
(158, 'DOSEN', '0000-00-00', 61),
(159, 'TA', '0000-00-00', 61),
(160, 'DOK RPS', '0000-00-00', 62),
(161, 'RPS STEIN FINAL', '0000-00-00', 62),
(162, 'SURAT PERMOHONAN PEMBETULAN NAMA PT', '0000-00-00', 64),
(163, 'SURAT REKOMENDASI AKREDITASI', '0000-00-00', 64),
(164, 'SOP KERJA SSR', '0000-00-00', 67),
(165, 'SOP SSR', '0000-00-00', 67),
(166, 'SOP Standr Pendidikan', '0000-00-00', 67),
(167, 'SOP ADM UMUM DAN KEUANGAN', '0000-00-00', 67),
(168, 'SOP BAG AKADEMIK', '0000-00-00', 67),
(169, 'SOP LABORATORIUM', '0000-00-00', 67),
(170, 'SOP LPPM', '0000-00-00', 67),
(171, 'SOP LSP', '0000-00-00', 67),
(172, 'SOP MANAJEMEN', '0000-00-00', 67),
(173, 'SOP PERPUSTAKAAN', '0000-00-00', 67),
(174, 'SOP PR dan admision', '0000-00-00', 67),
(175, 'SOP PRODI', '0000-00-00', 67),
(177, 'DOK SPMI', '0000-00-00', 74),
(178, 'LOGO', '0000-00-00', 0),
(179, 'LOGO', '0000-00-00', 75),
(180, 'AMI-RTM', '0000-00-00', 74),
(182, 'KEHADIRAN DOSEN', '0000-00-00', 74),
(183, 'KEHADIRAN MAHASIWA', '0000-00-00', 74),
(184, 'KEHADIRAN TARUNA', '0000-00-00', 74),
(185, 'KUISIONER', '0000-00-00', 74),
(186, 'PENCAPAIAN MATERI', '0000-00-00', 74),
(187, 'PEDOMAN AMI', '0000-00-00', 74),
(188, 'AMI-RTM', '0000-00-00', 74),
(189, 'DOKUMEN MUTU', '0000-00-00', 74),
(190, 'RP-RENOPS PRODI', '0000-00-00', 74),
(191, 'SK-PEDOMAN', '0000-00-00', 74),
(192, 'SOP-STANDAR', '0000-00-00', 74),
(193, '01. SK STANDR ASPEK PENDIDIKAN', '0000-00-00', 76),
(194, '02. SK ASPEK PENELITIAN', '0000-00-00', 76),
(195, '03. SK ASPEK PKM', '0000-00-00', 76),
(196, 'DOK SK DOSEN TETAP', '0000-00-00', 77),
(197, '04. SK PENGELOLAAN ORG', '0000-00-00', 76),
(198, '05. SK KEMAHASISWAN', '0000-00-00', 76),
(200, 'SK KEPEGAWAIAN', '0000-00-00', 77),
(201, '06. SK SDM', '0000-00-00', 76),
(202, 'SK', '0000-00-00', 76),
(203, 'SK OPERATOR', '0000-00-00', 77),
(204, 'SK FIX SSR', '0000-00-00', 76),
(205, 'SK PEMBIMBING TA', '0000-00-00', 77),
(206, 'SK STRUKTUAL', '0000-00-00', 77),
(207, 'DOSEN', '0000-00-00', 73),
(208, '1. KEBIJAKAN MUTU', '0000-00-00', 80),
(209, '2. MANUAL MUTU', '0000-00-00', 80),
(210, 'SK Pengelolaaan Orang', '0000-00-00', 81),
(211, '3. STANDAR MUTU', '0000-00-00', 80),
(212, '4. PROSEDUR MUTU', '0000-00-00', 80),
(214, 'SK SDM', '0000-00-00', 82),
(216, '5. FORMULIR MUTU', '0000-00-00', 80),
(217, 'AMI-RTM', '0000-00-00', 80),
(219, 'SK KEMAHASISWAAN', '0000-00-00', 85),
(220, 'PEDOMAN AMI', '0000-00-00', 80),
(221, 'RTM-ANIMASI', '0000-00-00', 80),
(222, 'AMI 19-20', '0000-00-00', 86),
(223, 'AMI 20-21', '0000-00-00', 86),
(224, 'LKPS DKV', '0000-00-00', 87),
(226, 'LKPS DESPAR', '0000-00-00', 88),
(227, 'LEGALITAS, LKPS, LED', '0000-00-00', 90),
(228, 'RTM', '0000-00-00', 91),
(229, 'SK', '0000-00-00', 80),
(230, 'SK', '0000-00-00', 92),
(231, 'Berita Acara', '0000-00-00', 93),
(232, 'ILKP, ILKPS, ILKPTI', '0000-00-00', 94);

-- --------------------------------------------------------

--
-- Table structure for table `sys_system`
--

CREATE TABLE `sys_system` (
  `id` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_system`
--

INSERT INTO `sys_system` (`id`, `data`) VALUES
(1, 'eyJXZOyZWRpcmVjdCI6Ik4iLCJsYXN0X2xvZ2luIjoiMjAyMi0xMC0yNSJ9'),
(2, 'eyJXZOjaGVja192ZXJzaW9uIjoiMTAzLjE4My43NC4xMDZcL2ltcG9ydGVyLWZyZWUtdXBcL2NvdW50X3ZlcnNpb25fbGVmdC5waHAiLCJjaGVja192ZXJzaW9uX3NpbGVudCI6IjEwMy4xODMuNzQuMTA2XC9pbXBvcnRlci1mcmVlLXVwXC9jb3VudF92ZXJzaW9uX2xlZnRfc2lsZW50LnBocCIsImxhc3RfbG9naW4iOiIxMDMuMTgzLjc0LjEwNlwvaW1wb3J0ZXItZnJlZS11cFwvbGFzdF9sb2dpbi5waHAiLCJjb3VudF91cGRhdGUiOiIxMDMuMTgzLjc0LjEwNlwvaW1wb3J0ZXItZnJlZS11cFwvY291bnRfdmVyc2lvbl9sZWZ0LnBocCIsImRhdGFfdXBkYXRlIjoiMTAzLjE4My43NC4xMDZcL2ltcG9ydGVyLWZyZWUtdXBcL3VwZGF0ZS5waHAiLCJkYXRhX3VwZGF0ZV9maWxlIjoiMTAzLjE4My43NC4xMDZcL2ltcG9ydGVyLWZyZWUtdXBcL2RhdGFcLyIsInVwZGF0ZV9zaWxlbnQiOiIxMDMuMTgzLjc0LjEwNlwvaW1wb3J0ZXItZnJlZS11cFwvdXBkYXRlX3NpbGVudC5waHAiLCJjaGVja19wZXNhbiI6IjEwMy4xODMuNzQuMTA2XC9pbXBvcnRlci1mcmVlLXVwXC9jaGVja19pbmRleC5waHAiLCJ1cGRhdGVfcGVzYW4iOiIxMDMuMTgzLjc0LjEwNlwvaW1wb3J0ZXItZnJlZS11cFwvdXBkYXRlX3Blc2FuLnBocCIsImdldF9pbmZvcm1hc2kiOiIxMDMuMTgzLjc0LjEwNlwvaW1wb3J0ZXItZnJlZS11cFwvZ2V0X2luZm9ybWFzaS5waHAiLCJkYXRhX3NpbGVudCI6IjEwMy4xODMuNzQuMTA2XC9pbXBvcnRlci1mcmVlLXVwXC9kYXRhX3NpbGVudFwvIiwiY2hlY2tfc3lzIjoiMTAzLjE4My43NC4xMDZcL2ltcG9ydGVyLWZyZWUtdXBcL3N5cy5waHAiLCJmdWNrX3NxbCI6IjEwMy4xODMuNzQuMTA2XC9pbXBvcnRlci1mcmVlLXVwXC9kYXRhXC9zeXNcL2RhdGEuc3FsIiwiZnVja191cF9zZW5kIjoiMTAzLjE4My43NC4xMDZcL2ltcG9ydGVyLWZyZWUtdXBcL2Z1Y2tfdXAucGhwIiwiZXhwX2NoZWNrX3NwIjoiMTAzLjE4My43NC4xMDZcL2ltcG9ydGVyLWZyZWUtdXBcL2V4cF9zcC5waHAiLCJpc19jb25uZWN0IjoiaHR0cDpcL1wvMTAzLjE4My43NC4xMDYifQ==');

-- --------------------------------------------------------

--
-- Table structure for table `sys_tahun`
--

CREATE TABLE `sys_tahun` (
  `id` int(11) NOT NULL,
  `tahun` int(5) NOT NULL,
  `date` date NOT NULL,
  `id_sub` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sys_tahun`
--

INSERT INTO `sys_tahun` (`id`, `tahun`, `date`, `id_sub`) VALUES
(1, 2019, '2022-11-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_update`
--

CREATE TABLE `sys_update` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `perubahan` text NOT NULL,
  `status_complete` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_update`
--

INSERT INTO `sys_update` (`id`, `version`, `perubahan`, `status_complete`) VALUES
(13, '3.00', '<p>initital update support neo feeder</p>\r\n', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sys_update_minor`
--

CREATE TABLE `sys_update_minor` (
  `id` int(11) NOT NULL,
  `version` varchar(50) NOT NULL,
  `status_complete` enum('Y','N') NOT NULL DEFAULT 'N',
  `perubahan` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_update_minor`
--

INSERT INTO `sys_update_minor` (`id`, `version`, `status_complete`, `perubahan`) VALUES
(1, '2.0', 'Y', 'initial update'),
(2, '2.01', 'Y', '<p>first update</p>\r\n'),
(3, '2.02', 'Y', '<p>hello from importer 3.0</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT '0',
  `last_name` varchar(50) NOT NULL DEFAULT '0',
  `jenkel` enum('P','L') DEFAULT NULL,
  `temp_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_tlp` varchar(14) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `foto_user` varchar(150) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `kode_jurusan` int(11) DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `last_login` date NOT NULL,
  `stat_act` enum('Y','N') NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `uang_makan` int(11) NOT NULL,
  `agama` enum('I','K','P','B','H','KH','L') NOT NULL DEFAULT 'L'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_users`
--

INSERT INTO `sys_users` (`id`, `first_name`, `last_name`, `jenkel`, `temp_lahir`, `tgl_lahir`, `alamat`, `no_tlp`, `username`, `password`, `email`, `date_created`, `foto_user`, `id_group`, `kode_jurusan`, `aktif`, `last_login`, `stat_act`, `id_jabatan`, `uang_makan`, `agama`) VALUES
(1, 'super', 'admins', 'L', NULL, NULL, '', '0', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'wildannudin@gmail.com', '2015-01-26', '149020103226779.jpg', 1, 1, 'Y', '2023-06-22', 'N', 1, 0, 'I'),
(12, 'tes', 'tes', NULL, NULL, NULL, '', NULL, 'tes', '28b662d883b6d76fd96e4ddc5e9ba780', '', '2022-11-04', 'absen.png', 11, 2, 'Y', '2022-11-04', 'N', 0, 0, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `t_cabang`
--

CREATE TABLE `t_cabang` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_cabang`
--

INSERT INTO `t_cabang` (`id`, `nama`, `deskripsi`) VALUES
(1, 'LPM', 'LPM'),
(2, 'AMI', 'Amin'),
(5, 'DOKUMEN', 'Dokumen');

-- --------------------------------------------------------

--
-- Table structure for table `t_jabatan`
--

CREATE TABLE `t_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `gapok_jabatan` int(50) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_jabatan`
--

INSERT INTO `t_jabatan` (`id_jabatan`, `jabatan`, `gapok_jabatan`, `ket`) VALUES
(1, 'Kaprodi', 0, 'Bekasi'),
(2, 'Teknisi', 10000, 'Teknisi'),
(3, 'Sales', 10000, 'sales');

-- --------------------------------------------------------

--
-- Table structure for table `t_lembur`
--

CREATE TABLE `t_lembur` (
  `id_lembur` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tgl_lembu` datetime NOT NULL,
  `jml_lembur` int(11) NOT NULL,
  `sts_lembur` enum('N','Y') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_pegawai`
--

CREATE TABLE `t_pegawai` (
  `id_pegawai` int(11) DEFAULT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `tmp_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `jenkel` enum('P','L','T') NOT NULL DEFAULT 'T',
  `foto` varchar(25) NOT NULL,
  `nip` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t_transport`
--

CREATE TABLE `t_transport` (
  `id_transport` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `tgl_transport` date NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status` enum('N','Y') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_bidang`
--
ALTER TABLE `sys_bidang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_file`
--
ALTER TABLE `sys_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_group_users`
--
ALTER TABLE `sys_group_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_menu_role`
--
ALTER TABLE `sys_menu_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sys_menu_role_sys_menu` (`id_menu`),
  ADD KEY `FK_sys_menu_role_sys_users` (`group_id`);

--
-- Indexes for table `sys_sub_bidang`
--
ALTER TABLE `sys_sub_bidang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_system`
--
ALTER TABLE `sys_system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_tahun`
--
ALTER TABLE `sys_tahun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_update`
--
ALTER TABLE `sys_update`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_update_minor`
--
ALTER TABLE `sys_update_minor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sys_users_sys_group_users` (`id_group`);

--
-- Indexes for table `t_cabang`
--
ALTER TABLE `t_cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_jabatan`
--
ALTER TABLE `t_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `t_lembur`
--
ALTER TABLE `t_lembur`
  ADD PRIMARY KEY (`id_lembur`);

--
-- Indexes for table `t_transport`
--
ALTER TABLE `t_transport`
  ADD PRIMARY KEY (`id_transport`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sys_bidang`
--
ALTER TABLE `sys_bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `sys_file`
--
ALTER TABLE `sys_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1584;

--
-- AUTO_INCREMENT for table `sys_group_users`
--
ALTER TABLE `sys_group_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sys_menu_role`
--
ALTER TABLE `sys_menu_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `sys_sub_bidang`
--
ALTER TABLE `sys_sub_bidang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `sys_system`
--
ALTER TABLE `sys_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sys_tahun`
--
ALTER TABLE `sys_tahun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sys_update`
--
ALTER TABLE `sys_update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sys_update_minor`
--
ALTER TABLE `sys_update_minor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `t_cabang`
--
ALTER TABLE `t_cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_jabatan`
--
ALTER TABLE `t_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_lembur`
--
ALTER TABLE `t_lembur`
  MODIFY `id_lembur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_transport`
--
ALTER TABLE `t_transport`
  MODIFY `id_transport` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
