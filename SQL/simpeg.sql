SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `tb_admin` (
  `id_user` int(255) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `namalengkap` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `tb_admin` (`id_user`, `username`, `email`, `namalengkap`, `password`, `type`, `avatar`) VALUES
(1, 'fadhiilrachman', 'admin@gmail.com', 'M Fadhiil Rachman', '21232f297a57a5a743894a0e4a801fc3', 'admin', '41241cacd6a56d9cb6bef52fb1d337b1.jpg');

CREATE TABLE `tb_bidang` (
  `id_bidang` int(255) NOT NULL,
  `nama_bidang` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `tb_bidang` (`id_bidang`, `nama_bidang`) VALUES
(1, 'Enterprise'),
(2, 'Data Solutions');

CREATE TABLE `tb_cuti` (
  `id_cuti` int(255) NOT NULL,
  `nama_cuti` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `tb_cuti` (`id_cuti`, `nama_cuti`) VALUES
(1, 'Cuti Hamil'),
(4, 'Cuti Lebaran');

CREATE TABLE `tb_izincuti` (
  `id_cuti` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `tglawal` date NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tglakhir` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `tb_izinsekolah` (
  `id_sekolah` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `tglawal` date NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tglakhir` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `tb_izinseminar` (
  `id_seminar` int(255) NOT NULL,
  `id` int(255) NOT NULL,
  `tglawal` date NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tglakhir` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

CREATE TABLE `tb_jabatan` (
  `id_jabatan` int(255) NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `tb_jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Deputi'),
(3, 'Sekretaris'),
(5, 'Bendahara');

CREATE TABLE `tb_pegawai` (
  `id` int(255) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nip` int(255) NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pendidikan_terakhir` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status_perkawinan` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status_pegawai` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_jabatan` int(255) NOT NULL,
  `id_bidang` int(255) NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `no_ktp` int(255) NOT NULL,
  `no_rumah` int(255) NOT NULL,
  `no_handphone` int(255) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `id_user` int(255) NOT NULL,
  `tanggal_pengangkatan` date NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `tb_pegawai` (`id`, `nama`, `nip`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `pendidikan_terakhir`, `status_perkawinan`, `status_pegawai`, `id_jabatan`, `id_bidang`, `agama`, `alamat`, `no_ktp`, `no_rumah`, `no_handphone`, `email`, `password`, `id_user`, `tanggal_pengangkatan`, `avatar`) VALUES
(5, 'Fadhiil Rachman', 312556, 'Jakarta Selatan', '2018-07-01', 'Laki-laki', 'S3', 'Belum kawin', 'Karyawan tetap', 1, 1, 'Islam', 'Komplek Permata Hijau No. 12', 2147483647, 41, 2147483647, 'fadhiilrachman@gmail.com', '478d60e7f087bcc03eb9d569c48a74ec', 0, '2018-07-01', '4d22c451cf3399d24764979e19e479ab.jpg'),
(6, 'Fadhiil Rachman', 214214, 'Jakarta Selatan', '2018-07-01', 'Laki-laki', 'SMP/SMA', 'Belum kawin', 'Karyawan tetap', 1, 2, 'Islam', 'Komplek Permata Hijau No. 12', 12412, 24, 2147483647, 'fdlrcn@gmail.com', '3f2cf36a0963cf127ce8b5f1eb91a447', 0, '2018-07-11', 'f80f50b99cd70300317649263a15beb7.jpg'),
(8, 'Fadhiil Rachman', 2412412, 'Jakarta Selatan', '2018-05-30', 'Laki-laki', 'SMP/SMA', 'Kawin', 'Karyawan tetap', 1, 1, 'Islam', 'Komplek Permata Hijau No. 12', 14124, 412, 2147483647, 'dloetz7@gmail.com', '0a040ec34abbfb7f3030345244a913c9', 0, '2018-03-01', '128ed002fa3ff1948e5a9db412e05729.jpg');

CREATE TABLE `tb_sekolah` (
  `id_sekolah` int(255) NOT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `tb_sekolah` (`id_sekolah`, `nama_sekolah`) VALUES
(1, 'SMA Negeri 4 Jakarta'),
(4, 'SMA Negeri 31 Jakarta');

CREATE TABLE `tb_seminar` (
  `id_seminar` int(255) NOT NULL,
  `nama_seminar` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `tb_seminar` (`id_seminar`, `nama_seminar`) VALUES
(1, 'Seminar Bela Negara'),
(3, 'Seminar Compfest'),
(4, 'Seminar Sinaptika 2018');


ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_user`);

ALTER TABLE `tb_bidang`
  ADD PRIMARY KEY (`id_bidang`);

ALTER TABLE `tb_cuti`
  ADD PRIMARY KEY (`id_cuti`);

ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

ALTER TABLE `tb_seminar`
  ADD PRIMARY KEY (`id_seminar`);


ALTER TABLE `tb_admin`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tb_bidang`
  MODIFY `id_bidang` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tb_cuti`
  MODIFY `id_cuti` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tb_jabatan`
  MODIFY `id_jabatan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `tb_pegawai`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tb_sekolah`
  MODIFY `id_sekolah` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tb_seminar`
  MODIFY `id_seminar` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
