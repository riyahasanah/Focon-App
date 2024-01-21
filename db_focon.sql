-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22 Mei 2019 pada 07.35
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_focon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `tanggal` varchar(100) NOT NULL,
  `kode_part` varchar(100) NOT NULL,
  `nama_part` varchar(250) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`tanggal`, `kode_part`, `nama_part`, `kategori`, `jumlah`, `keterangan`) VALUES
('11-05-2019', 'BPPBLHL', 'Bushing Pen Per Belakang Hino Lohan', 'Truck Mixer Hino Lohan ', 1, 'Untuk TM Hino Lohan'),
('11-05-2019', 'BPPDPHL', 'Bushing Pen Per Depan Hino Lohan', 'Truck Mixer Hino Lohan ', 7, ''),
('11-05-2019', 'FS1242FG', 'Filter Solar Fleetguard', 'Wheel Loader Liugong CLG-835', 2, ''),
('11-05-2019', 'FS1280FG', 'Filter Separator Fleetguard', 'Wheel Loader Liugong CLG-835', 2, ''),
('11-05-2019', 'J8532431', 'Filter Udara Jimco', 'Wheel Loader Komatsu WA300', 0, ''),
('11-05-2019', 'J8610120', 'Filter Oli Donaldson', 'Wheel Loader Komatsu WA350', 6, ''),
('11-05-2019', 'J8622221', 'Filter Solar Donaldson', 'Wheel Loader Komatsu WA350', 14, ''),
('11-05-2019', 'J8640071', 'Filter Water Donaldson', 'Wheel Loader Komatsu WA300', 0, ''),
('11-05-2019', 'KDHLHOP', 'Karet Dingdong Hino Lohan HOP', 'Truck Mixer Hino Lohan ', 0, ''),
('11-05-2019', 'LF3959FG', 'Filter Oli Fleetguard', 'Wheel Loader Liugong CLG-835', 2, ''),
('11-05-2019', 'P181139', 'Filter Udara Donaldson', 'Wheel Loader Komatsu WA350', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_brg_keluar`
--

CREATE TABLE `tb_brg_keluar` (
  `tanggal` varchar(100) NOT NULL,
  `id_bk` varchar(100) NOT NULL,
  `gudang` varchar(250) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_brg_keluar`
--

INSERT INTO `tb_brg_keluar` (`tanggal`, `id_bk`, `gudang`, `keterangan`) VALUES
('01-05-2019', 'BK-000001', 'Jakarta Pusat', ''),
('01-05-2019', 'BK-000002', 'Jakarta Pusat', ''),
('18-05-2019', 'BK-000003', 'HEAD OFFICE', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_brg_masuk`
--

CREATE TABLE `tb_brg_masuk` (
  `tanggal` varchar(100) NOT NULL,
  `id_bm` varchar(100) NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_brg_masuk`
--

INSERT INTO `tb_brg_masuk` (`tanggal`, `id_bm`, `supplier`, `keterangan`) VALUES
('13-05-2019', 'BM-000001', 'Cahaya Autopart', ''),
('11-05-2019', 'BM-000002', 'Damindo Utama', ''),
('13-05-2019', 'BM-000003', 'Cahaya Autopart', 'TM 106 CISUMDAWU 2'),
('18-05-2019', 'BM-000004', 'Damindo Utama', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_brg_keluar`
--

CREATE TABLE `tb_detail_brg_keluar` (
  `tanggal` varchar(100) NOT NULL,
  `id_detail_bk` varchar(100) NOT NULL,
  `id_bk` varchar(100) NOT NULL,
  `gudang` varchar(250) NOT NULL,
  `kode_part` varchar(100) NOT NULL,
  `nama_part` varchar(250) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_detail_brg_keluar`
--

INSERT INTO `tb_detail_brg_keluar` (`tanggal`, `id_detail_bk`, `id_bk`, `gudang`, `kode_part`, `nama_part`, `jumlah`, `keterangan`) VALUES
('01-05-2019', 'DTBK-0001', 'BK-000001', 'Jakarta Pusat', 'MTLAK01', 'Aki Kering', 7, ''),
('01-05-2019', 'DTBK-0002', 'BK-000002', 'Jakarta Pusat', 'MTLCP01', 'Sembarangan', 10, ''),
('01-05-2019', 'DTBK-0003', 'BK-000002', 'Jakarta Pusat', 'MTLAK01', 'Aki Kering', 5, ''),
('18-05-2019', 'DTBK-0004', 'BK-000003', 'HEAD OFFICE', 'BPPBLHL', 'Bushing Pen Per Belakang Hino Lohan', 2, ''),
('18-05-2019', 'DTBK-0005', 'BK-000003', 'HEAD OFFICE', 'BPPDPHL', 'Bushing Pen Per Depan Hino Lohan', 5, '');

--
-- Trigger `tb_detail_brg_keluar`
--
DELIMITER $$
CREATE TRIGGER `batal_keluar` AFTER DELETE ON `tb_detail_brg_keluar` FOR EACH ROW BEGIN
	UPDATE tb_barang SET jumlah = jumlah+OLD.jumlah
    WHERE kode_part = OLD.kode_part;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `keluar` AFTER INSERT ON `tb_detail_brg_keluar` FOR EACH ROW BEGIN
	UPDATE tb_barang SET jumlah = jumlah-NEW.jumlah
    WHERE kode_part = NEW.kode_part;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_detail_brg_masuk`
--

CREATE TABLE `tb_detail_brg_masuk` (
  `tanggal` varchar(100) NOT NULL,
  `id_detail_bm` varchar(100) NOT NULL,
  `id_bm` varchar(100) NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `kode_part` varchar(100) NOT NULL,
  `nama_part` varchar(250) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_detail_brg_masuk`
--

INSERT INTO `tb_detail_brg_masuk` (`tanggal`, `id_detail_bm`, `id_bm`, `supplier`, `kode_part`, `nama_part`, `jumlah`, `keterangan`) VALUES
('11-05-2019', 'DTBM-0001', 'BM-000001', 'Damindo Utama', 'FS1242FG', 'Filter Solar Fleetguard', 2, 'Loader Liugong CLG835 MCC2B'),
('11-05-2019', 'DTBM-0002', 'BM-000001', 'Damindo Utama', 'FS1280FG', 'Filter Separator Fleetguard', 2, 'Loader Liugong CLG835 MCC2B'),
('11-05-2019', 'DTBM-0003', 'BM-000001', 'Damindo Utama', 'LF3959FG', 'Filter Oli Fleetguard', 2, 'Loader Liugong CLG835 MCC2B'),
('12-05-2019', 'DTBM-0004', 'BM-000002', 'Damindo Utama', 'J8610120', 'Filter Oli Donaldson', 3, 'Loader Komatsu WA350 CIPANAS'),
('12-05-2019', 'DTBM-0005', 'BM-000002', 'Damindo Utama', 'J8610120', 'Filter Oli Donaldson', 3, 'Loader Komatsu WA300 CIPANAS'),
('11-05-2019', 'DTBM-0006', 'BM-000002', 'Damindo Utama', 'J8622221', 'Filter Solar Donaldson', 8, 'Loader Komatsu WA350 CIPANAS'),
('12-05-2019', 'DTBM-0007', 'BM-000002', 'Damindo Utama', 'J8622221', 'Filter Solar Donaldson', 6, 'Loader Komatsu WA300 CIPANAS'),
('13-05-2019', 'DTBM-0008', 'BM-000003', 'Cahaya Autopart', 'BPPBLHL', 'Bushing Pen Per Belakang Hino Lohan', 8, 'TM 107 CISUMDAWU 2'),
('13-05-2019', 'DTBM-0009', 'BM-000003', 'Cahaya Autopart', 'BPPDPHL', 'Bushing Pen Per Depan Hino Lohan', 4, 'TM 106 CISUMDAWU 2'),
('13-05-2019', 'DTBM-0010', 'BM-000003', 'Cahaya Autopart', 'KDHLHOP', 'Karet Dingdong Hino Lohan HOP', 14, 'Stok TM CISUMDAWU 2'),
('18-05-2019', 'DTBM-0011', 'BM-000004', 'Damindo Utama', 'BPPBLHL', 'Bushing Pen Per Belakang Hino Lohan', 3, ''),
('18-05-2019', 'DTBM-0012', 'BM-000004', 'Damindo Utama', 'BPPDPHL', 'Bushing Pen Per Depan Hino Lohan', 8, '');

--
-- Trigger `tb_detail_brg_masuk`
--
DELIMITER $$
CREATE TRIGGER `batal_tambah` AFTER DELETE ON `tb_detail_brg_masuk` FOR EACH ROW BEGIN
	UPDATE tb_barang SET jumlah = jumlah-OLD.jumlah
    WHERE kode_part = OLD.kode_part;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah` AFTER INSERT ON `tb_detail_brg_masuk` FOR EACH ROW BEGIN
	UPDATE tb_barang SET jumlah = jumlah+NEW.jumlah
    WHERE kode_part = NEW.kode_part;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_gudang`
--

CREATE TABLE `tb_gudang` (
  `tanggal` varchar(100) NOT NULL,
  `kode_gudang` varchar(100) NOT NULL,
  `nama_gudang` varchar(250) NOT NULL,
  `alamat` varchar(500) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_gudang`
--

INSERT INTO `tb_gudang` (`tanggal`, `kode_gudang`, `nama_gudang`, `alamat`, `keterangan`) VALUES
('01-05-2019', 'GD01MS', 'MEKARSARI', 'Jln. Cileungsi KM 05, Mekarsari', 'Gudang Pusat'),
('01-05-2019', 'GD02HO', 'HEAD OFFICE', 'Jln. Boulevard Barat, Kelapa Gading', 'Gudang Sementara'),
('01-05-2019', 'GD03CD', 'CISUMDAWU 2', 'Jln. Panyindangan, Sumedang', 'Gudang Plant Cisumdawu 2'),
('01-05-2019', 'GD04M2', 'MCC2B', 'Ciherang Selatan, Sumedang', 'Gudang Plant MCC2B'),
('01-05-2019', 'GD05CS', 'CIPANAS', 'Ds. Cibuluh, Ujung Jaya, Sumedang', 'Gudang Plant Cipanas'),
('01-05-2019', 'GD06B5', 'BALSAM 5', 'Jln. Ampera NO.90, Kalimantan', 'Gudang Plant Balsam 5'),
('01-05-2019', 'GD07B6', 'BALSAM 6', 'Kec. Palaran, Samarinda', 'Gudang Plant Balsam 6'),
('01-05-2019', 'GD08B9', 'BALSAM 9', 'Rawa Makmur, Kalimantan Timur', 'Gudang Plant Balsam 9'),
('01-05-2019', 'GD09SP', 'SORONG', 'Jln. Jendral Sudirman No.50, Papua', 'Gudang Plant Sorong');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `tanggal` varchar(100) NOT NULL,
  `kode_kategori` varchar(100) NOT NULL,
  `nama_kategori` varchar(250) NOT NULL,
  `keterangan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`tanggal`, `kode_kategori`, `nama_kategori`, `keterangan`) VALUES
('01-05-2019', 'TMHLJO8C', 'Truck Mixer Hino Lohan ', 'Sparepart Kendaraan Hino Lohan '),
('01-05-2019', 'WLKWA300', 'Wheel Loader Komatsu WA300', 'Sparepart Kendaraan Alat Berat Loader'),
('01-05-2019', 'WLKWA350', 'Wheel Loader Komatsu WA350', 'Sparepart Kendaraan Alat Berat Loader'),
('11-05-2019', 'WLLCL835', 'Wheel Loader Liugong CLG-835', 'Sparepart Kendaraan Alat Berat Loader ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `tanggal` varchar(100) NOT NULL,
  `kode_supplier` varchar(100) NOT NULL,
  `nama_supplier` varchar(250) NOT NULL,
  `notelpon_supplier` varchar(20) NOT NULL,
  `alamat_supplier` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_supplier`
--

INSERT INTO `tb_supplier` (`tanggal`, `kode_supplier`, `nama_supplier`, `notelpon_supplier`, `alamat_supplier`) VALUES
('01-05-2019', 'CA01TMPR', 'Cahaya Autopart', '021-6598414', 'Jln. Karang Anyar No.10B, Jakarta'),
('01-05-2019', 'DU01TGLS', 'Damindo Utama', '021-22685616', 'Jln. Taman Sari, Asam Reges, Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_part`);

--
-- Indexes for table `tb_brg_keluar`
--
ALTER TABLE `tb_brg_keluar`
  ADD PRIMARY KEY (`id_bk`);

--
-- Indexes for table `tb_brg_masuk`
--
ALTER TABLE `tb_brg_masuk`
  ADD PRIMARY KEY (`id_bm`);

--
-- Indexes for table `tb_detail_brg_keluar`
--
ALTER TABLE `tb_detail_brg_keluar`
  ADD PRIMARY KEY (`id_detail_bk`);

--
-- Indexes for table `tb_detail_brg_masuk`
--
ALTER TABLE `tb_detail_brg_masuk`
  ADD PRIMARY KEY (`id_detail_bm`);

--
-- Indexes for table `tb_gudang`
--
ALTER TABLE `tb_gudang`
  ADD PRIMARY KEY (`kode_gudang`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indexes for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`kode_supplier`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
