-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2015 at 03:25 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `batam`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
`id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_aktif` tinyint(1) NOT NULL DEFAULT '1',
  `kategori_artikel_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `isi`, `foto`, `user_id`, `tanggal`, `updated_at`, `is_aktif`, `kategori_artikel_id`) VALUES
(1, 'Pay To', '<h3><b>Daftar Transfer</b></h3><b>Bank Mandiri</b><br>1440010025887 Taufik Ute Alfan<br><br><b>Bank BCA</b><br>1440010025887 Taufik Ute Alfan<br><br>', '', 1, '2015-07-07', '2015-07-10 21:30:52', 1, 1),
(2, 'About Us', '<div><b>About Us</b></div><span><blockquote><div>Singkong merupakan salah satu komoditi yang ditanam di Indonesia. Singkong dapat diolah menjadi olahan setengah jadi dan olahan jadi yang siap dikonsumsi. Salah satu olahan jadi dari singkong adalah keripik singkong. Keripik singkong merupakan snack yang paling disukai oleh masyarakat Indonesia. Penggemarnya mulai dari anak-anak sampai dewasa, dari yang tinggal di desa sampai di kota. Namun dengan perkembangan jaman keripik singkong diolah dengan berbagai macam rasa. <br>Keripik singkong "Oenlez" merupakan inovasi keripik singkong yang cocok dinikmati untuk segala suasana, karena keripik singkong oenlez mempunyai taste yang oenak dan lezat. Keripik singkong oenlez diolah dari bahan-bahan yang alami dan berkualitas premium. Bumbu yang digunakan dari bahan yang alami (bukan flavour) seperti yang ada pada ingredient. Keripik singkong oenlez dibuat tidak menggunakan bahan pengawet, bahan tambahan pewarna dan perasa, MSG dan tidak mengandung gluten.</div></blockquote><div><br>Keripik singkong "Oenlez" mempunyai 4 varian rasa, yaitu :</div><ol><li>Palm soy</li>Rasa gurih manis dari perpaduan gula aren dan soya sehingga menghasilkan rasa sweet classic.<br><br><li>Cheezy<br></li>Rasa gurih keju yang membuat kita tidak bisa berhenti ngemil, karena rasa real cheese yang beda dari yang lainnya.<br><br><li>Crazy chilli</li>Rasa unique spicy dari rasa pedas yang menggigit dipadu dengan aroma jeruk purut yang segar sehingga membuat kita tergila-gila dan tak terlupakan.<br><br><li>BBQ</li>Keripik singkong yang dimix dengan keripik tales diberi bumbu bbq ditambah aroma blackpapper yang menggoda membuat kita sulit melupakan.<br></ol></span>', '558bfd9c3e8e1.jpg', 1, '2015-06-25', '2015-07-26 04:25:39', 1, 1),
(3, 'Contact Us', '<p><b>Oenlez (O Enak Lezat).</b></p><p>935 W. Webster Ave New Streets Chicago, IL 60614, NY</p><p>Surabaya - Jawa Timur, Indonesia</p><p>Mobile 1:&nbsp;087881596699</p><p>Mobile 2:&nbsp;085770896699<br></p><p>Mobile 3:&nbsp;082311856699<br></p><p>Email: oenlezsnack@gmail.com</p>', '', 1, '2015-06-25', '2015-07-26 04:10:55', 1, 1),
(4, 'FAQ''s', '<h3><b>Berikut ini adalah dafar pertanyaan yang mungkin sering muncul</b></h3><ul><li>Apakah bebas MSG</li><ul><li>Ya</li></ul><li>Apakah saya perlu login dan register untuk berbelanja disini</li><ul><li>Ya</li></ul><li>Apakah bisa mentransfer dari bank lain?</li><ul><li>Bisa, asalkan bank tujuannya adalah bank kami</li></ul><li>Kapan barang akan dikirim?</li><ul><li>Setelah konfirmasi pembayaran dan check, kami akan melakukan pengemasan barang yang dilanjutkan dengan mengirim ke bagian pengiriman</li></ul><li>Kemana saja barang akan dikirim</li><ul><li>Kemana saja asal sesuai dengan data kami dan jasa kurir kami</li></ul><li>Berapa lama akan sampai di tempat?</li><ul><li>Kami menyediakan beberapa paket pegiriman, sesuaikan dengan kebutuhan anda. lama pengiriman tergantung jasa kurir yang anda gunakan</li></ul></ul>', '', 1, '2015-06-25', '2015-07-10 21:29:22', 1, 1),
(5, 'Term Of Use', '', '', 1, '2015-06-25', '2015-06-25 13:27:59', 1, 1),
(6, 'Aturan & Cara menjadi reseller', '<ol><li>Pilih produk yang anda suka</li><li>Minimum pembelian tertera di setiap item produk</li><li>Klik add to cart untuk mulai membeli</li><li>Update keranjang belanja jika ingin mengubah quantity pembelian, dan klik belanja lagi jika ingin belanja produk lain</li><li>Klik Checkout untuk menyelesaikan belanja dan isi data pengiriman belanja</li><li>Anda akan mendapatkan notifikasi email sesuai dengan username&nbsp;</li><li>Silahkan transfer sesuai dengan daftar transfer</li><li>Login ke akun anda dan lakukan konfirmasi pembayaran terhadap barang yang anda beli di my account &gt; history belanja</li><li>Klik detail invoice yang anda transfer, kemudian klik konfirmasi dan isi konfirmasi tentang transfer Contoh: Taufik Ute Alfan# Bank Mandiri# 125.000# 11 Juli 2015# No Invoice #NSA021</li></ol>', '', 1, '2015-06-25', '2015-08-28 09:18:05', 1, 1),
(7, 'Company Information', '', '', 1, '2015-06-25', '2015-06-25 13:30:45', 1, 9),
(9, 'SDN 1 KOTA BATAM', 'Jumlah Siswa 400<br>Laki-laki 250<br>Perempuan 150', '', 1, '2015-09-10', '2015-09-10 15:10:03', 0, 25),
(10, 'Pendidikan Di Batam', 'Kami jabarkan pendidikan yang ada dikota kami <b>BATAM<br>asdd<br>asd<br>asddadava d asda dasd asd afasd afsffsad aasf ss ass</b>', '55f24d0115cdf.jpg', 1, '2015-09-11', '2015-09-11 03:40:06', 0, 6),
(11, 'Warga', '<b>WELCOME </b>sekilas info warga kota batam', '55f24eabd4564.jpg', 1, '2015-09-11', '2015-09-11 03:46:52', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `background_show`
--

CREATE TABLE IF NOT EXISTS `background_show` (
`id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `judul` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background_show`
--

INSERT INTO `background_show` (`id`, `foto`, `keterangan`, `updated_at`, `judul`) VALUES
(8, '55f20fdca81bb.jpg', '', '2015-09-10 23:18:56', 'Balio Batam'),
(9, '55f20ffe0a197.jpg', '', '2015-09-10 23:19:27', 'Batam'),
(10, '55f21010d346d.jpg', '', '2015-09-10 23:19:45', 'Vu de Batam');

-- --------------------------------------------------------

--
-- Table structure for table `email_setting`
--

CREATE TABLE IF NOT EXISTS `email_setting` (
  `id` int(11) NOT NULL,
  `protocol` varchar(100) NOT NULL,
  `host` varchar(100) NOT NULL,
  `port` int(11) NOT NULL DEFAULT '465',
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `mailtype` varchar(100) NOT NULL DEFAULT 'html',
  `charset` varchar(100) NOT NULL DEFAULT 'utf-8',
  `newline` varchar(100) NOT NULL DEFAULT '\\r\\n',
  `wordwrap` tinyint(1) NOT NULL,
  `mailfrom` varchar(100) NOT NULL,
  `fromnamer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_setting`
--

INSERT INTO `email_setting` (`id`, `protocol`, `host`, `port`, `user`, `pass`, `mailtype`, `charset`, `newline`, `wordwrap`, `mailfrom`, `fromnamer`) VALUES
(1, 'smtp', 'ssl://smtp.gmail.com', 465, 'alfhanz@gmail.com', '010988alfhan', 'html', 'utf-8', '\\r\\n', 1, 'oenlez@gmail.com', 'OENLEZ');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_barang`
--

CREATE TABLE IF NOT EXISTS `jenis_barang` (
`id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id`, `nama`) VALUES
(1, 'Laptop'),
(2, 'Smart Phone'),
(3, 'Flashdisk'),
(4, 'MicroSD'),
(7, 'Makanan & Minuman'),
(9, 'Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_artikel`
--

CREATE TABLE IF NOT EXISTS `kategori_artikel` (
`id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id`, `nama`) VALUES
(1, 'Berita'),
(9, 'Profil Web');

-- --------------------------------------------------------

--
-- Table structure for table `link_instansi`
--

CREATE TABLE IF NOT EXISTS `link_instansi` (
`id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT '1',
  `url` varchar(150) DEFAULT NULL,
  `tipe` enum('Internal Link','Eksternal Link') DEFAULT 'Internal Link',
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link_instansi`
--

INSERT INTO `link_instansi` (`id`, `nama`, `aktif`, `url`, `tipe`, `image`) VALUES
(1, 'dekranasda', 1, 'http://dekranasda.batamkota.go.id', 'Internal Link', 'asset/images/dekranasda.png'),
(2, 'Transaransi', 1, 'http://transparansi.batamkota.go.id/', 'Internal Link', 'asset/images/transparansi.png'),
(3, 'DPRD', 1, 'http://skpd.batamkota.go.id/setdrpd', 'Internal Link', 'asset/images/dprd.png'),
(4, 'LPSE', 1, 'http://lpse.batamkota.go.id/', 'Internal Link', 'asset/images/lpse.png'),
(5, 'logo', 1, 'http://pkk.batamkota.go.id/', 'Internal Link', 'asset/images/logo-gak-jelas.png'),
(6, 'humas', 1, 'http://www.humasbatam.com/', 'Internal Link', 'asset/images/humas.png'),
(7, 'media-center', 1, 'http://mediacenter.batamkota.go.id/', 'Internal Link', 'asset/images/media-center.png'),
(8, 'Y-Port', 1, 'http://www.city.yokohama.lg.jp/kokusai/yport/en/', 'Internal Link', 'asset/images/y-port.png');

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE IF NOT EXISTS `main_menu` (
`id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `tipe` enum('Internal Link','Eksternal Link') NOT NULL DEFAULT 'Internal Link',
  `icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`id`, `parent_id`, `nama`, `url`, `aktif`, `tipe`, `icon`) VALUES
(1, 0, 'Warga', '#', 1, 'Internal Link', 'fa fa-user'),
(2, 0, 'Bisnis', '#', 1, 'Internal Link', 'glyphicon glyphicon-signal'),
(3, 0, 'Pemerintah', '#', 1, 'Internal Link', 'glyphicon glyphicon-calendar'),
(4, 0, 'Pariwisata', '#', 1, 'Internal Link', 'glyphicon glyphicon-plane'),
(5, 1, 'Kesehatan', '#', 1, 'Internal Link', NULL),
(6, 1, 'Pendidikan', 'http://getbootstrap.com/css/#tables-condensed', 1, 'Internal Link', NULL),
(7, 1, 'Perumahan', 'http://data.batamkota.go.id/bankdata/home/pariwisata/wisata_religi', 1, 'Eksternal Link', NULL),
(8, 1, 'Transportasi', '', 1, 'Internal Link', NULL),
(9, 1, 'Pelabuhan', '', 1, 'Internal Link', NULL),
(10, 2, 'Bisnis di batam', '', 1, 'Internal Link', NULL),
(11, 2, 'Infrastruktur', '', 1, 'Internal Link', NULL),
(12, 2, 'Kawasan Bisnis', '', 1, 'Internal Link', NULL),
(13, 2, 'Koperasi & UKM', '', 1, 'Internal Link', NULL),
(14, 2, 'Sispadu', '', 1, 'Internal Link', NULL),
(15, 3, 'Profil Kota', '', 1, 'Internal Link', NULL),
(16, 3, 'Visi dan Misi', '', 1, 'Internal Link', NULL),
(17, 3, 'Pemerintahan', '', 1, 'Internal Link', NULL),
(18, 3, 'Surat Kependudukan', '', 1, 'Internal Link', NULL),
(19, 3, 'JDIH Batam', '', 1, 'Internal Link', NULL),
(20, 4, 'Wisata Bahari', '', 1, 'Internal Link', NULL),
(21, 4, 'Wisata Belanja', '', 1, 'Internal Link', NULL),
(22, 4, 'Wisata Religi', '', 1, 'Internal Link', NULL),
(23, 4, 'Wisata Budaya', '', 1, 'Internal Link', NULL),
(24, 4, 'Wisata Kuliner', '', 1, 'Internal Link', NULL),
(25, 6, 'SD', '', 0, 'Internal Link', NULL),
(26, 6, 'SMP', '', 0, 'Internal Link', NULL),
(27, 6, 'SMA', '', 0, 'Internal Link', NULL),
(28, 6, 'SMK', '', 0, 'Internal Link', NULL),
(29, 6, 'MA', '', 0, 'Internal Link', NULL),
(30, 6, 'PERGURUAN TINGGI', '', 0, 'Internal Link', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_icon`
--

CREATE TABLE IF NOT EXISTS `menu_icon` (
`id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT '1',
  `url` varchar(150) DEFAULT NULL,
  `tipe` enum('Internal Link','Eksternal Link') DEFAULT 'Internal Link',
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_icon`
--

INSERT INTO `menu_icon` (`id`, `nama`, `aktif`, `url`, `tipe`, `image`) VALUES
(1, 'Pengaduan Masyarakat', 1, '#', 'Internal Link', 'asset/images/pesan.png'),
(2, 'Layanan Perizinan', 1, '#', 'Internal Link', 'asset/images/cek-list.png'),
(3, 'Informasi Keuangan', 1, '#', 'Internal Link', 'asset/images/grafik.png'),
(4, 'Aplikasi Informasi Publik', 1, '#', 'Internal Link', 'asset/images/info.png'),
(5, 'Statistik Batam', 1, '#', 'Internal Link', 'asset/images/grafik.png'),
(6, 'Pajak & Retribusi', 1, '#', 'Internal Link', 'asset/images/cek-list.png'),
(7, 'Layanan Publik', 1, '#', 'Internal Link', 'asset/images/info.png'),
(8, 'Sub Domain', 1, '#', 'Internal Link', 'asset/images/pesan.png'),
(9, 'Open Data', 1, '#', 'Internal Link', 'asset/images/grafik.png');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
`id` int(11) NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `tipe` varchar(25) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `waktu` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `pelanggan_id`, `isi`, `tipe`, `updated_at`, `parent_id`, `waktu`, `status`, `user_id`, `email`, `subject`) VALUES
(1, 11, 'Sudah Saya transfer\nNO Invoice 6SI10E\nTotal 285.000\nBank Mandiri Atas Nama Sutrisno', 'Order Barang', '2015-08-14 07:45:18', 0, '2015-08-14 14:44:53', 1, 0, 'alfhanz@gmail.com', 'Konfirmasi Pembayaran'),
(2, 0, 'Terimakasih, Pembayaran telah kami terima', '', '2015-08-14 07:47:31', 1, '2015-08-14 14:47:31', 0, 1, '', ''),
(3, 0, 'Ada harga khusus reseller?', 'Contact Us', '2015-08-14 12:48:00', 0, '2015-08-14 00:00:00', 1, 0, 'alfhanz@gmail.com', '(Taufik Ute Alfan) Reseller'),
(4, 0, 'Sudah kami proses, dalam pengiriman ke JNE. resi menyusul', '', '2015-08-14 12:49:13', 1, '2015-08-14 19:49:13', 0, 1, '', ''),
(5, 11, 'no invoice BRZ26A\nBANK MANDIRI\n555000\nTAUFIK UTE ALFAN\n17-08-2015', 'Order Barang', '2015-08-17 08:03:50', 0, '2015-08-17 15:02:33', 1, 0, 'alfhanz@gmail.com', 'Konfirmasi Pembayaran'),
(6, 0, 'oke sudah kami terima', '', '2015-08-17 08:04:31', 5, '2015-08-17 15:04:31', 0, 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
  `id` tinyint(1) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `kabkota` varchar(100) NOT NULL,
  `fax` varchar(25) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `nama`, `alamat`, `telp`, `email`, `foto`, `fb`, `twitter`, `kabkota`, `fax`, `gambar`) VALUES
(1, 'Batam Website', 'Jl. Engku Puteri No 1 Batam Center - Batam', '(+62778) 462164', 'kominfo@batamkota.go.id', 'logo.jpg', '#', '#', 'Kota Batam', '(+62778) 461813', 'logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `slide_show`
--

CREATE TABLE IF NOT EXISTS `slide_show` (
`id` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `judul` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide_show`
--

INSERT INTO `slide_show` (`id`, `foto`, `keterangan`, `updated_at`, `judul`) VALUES
(5, '55f1f8b4d2e81.jpg', '', '2015-09-10 21:40:06', 'First Slide'),
(6, '55f1f8d5aac36.jpg', '', '2015-09-10 21:40:38', 'Second Slide'),
(7, '55f1f8ea49c9f.jpg', '', '2015-09-10 21:40:59', 'Third Slide');

-- --------------------------------------------------------

--
-- Table structure for table `sys_group`
--

CREATE TABLE IF NOT EXISTS `sys_group` (
`id` int(11) NOT NULL,
  `nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_group`
--

INSERT INTO `sys_group` (`id`, `nama`) VALUES
(1, 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `sys_menu`
--

CREATE TABLE IF NOT EXISTS `sys_menu` (
`id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `nama` varchar(35) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `icon` varchar(25) DEFAULT NULL,
  `urutan` tinyint(3) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_menu`
--

INSERT INTO `sys_menu` (`id`, `parent_id`, `nama`, `url`, `icon`, `urutan`, `level`) VALUES
(1, 0, 'Setting', '#', 'fa fa-th', 1, 1),
(4, 1, 'User Management', 'usermanagement', NULL, 1, 2),
(9, 0, 'Content & Module', '#', 'fa fa-file-o', 3, 1),
(10, 5, 'Rekap Penjualan', 'rekap', NULL, 3, 2),
(11, 5, 'Notifikasi', 'notifikasi', NULL, 4, 2),
(12, 9, 'Main Menu', 'main_menu', NULL, 2, 2),
(13, 1, 'Profile Website', 'profile_company', NULL, 2, 2),
(14, 9, 'Artikel', 'daftar_artikel', NULL, 3, 2),
(15, 9, 'Module', 'the_module', NULL, 1, 2),
(16, 9, 'Slide Show', 'slide_show', NULL, 4, 2),
(17, 9, 'Background Slide', 'background_show', NULL, 5, 2),
(18, 9, 'Menu Icon', 'menu_icon', NULL, 6, 2),
(19, 9, 'Link Instansi', 'link_instansi', NULL, 7, 2),
(20, 9, 'Website SKPD', 'website_skpd', NULL, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sys_user`
--

CREATE TABLE IF NOT EXISTS `sys_user` (
`id` int(11) unsigned NOT NULL,
  `username` varchar(16) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `pegawai_id` varchar(40) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_user`
--

INSERT INTO `sys_user` (`id`, `username`, `password`, `nama`, `group_id`, `email`, `telp`, `hp`, `pegawai_id`, `foto`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Administrator', 1, 'alfhan@yahoo.co.id', '', '08993484898', NULL, '1b51b9ae0a75135d0592f86567519fc6.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `sys_user_group`
--

CREATE TABLE IF NOT EXISTS `sys_user_group` (
`id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_user_group`
--

INSERT INTO `sys_user_group` (`id`, `menu_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, NULL),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 14, 1),
(13, 15, 1),
(14, 16, 1),
(15, 17, NULL),
(16, 18, 1),
(17, 19, 1),
(18, 20, 1),
(19, 12, 1),
(20, 12, 3),
(21, 10, NULL),
(22, 11, 1),
(23, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `the_module`
--

CREATE TABLE IF NOT EXISTS `the_module` (
`id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `posisi` enum('Tengah 1','Tengah 2','Tengah 3') DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `the_module`
--

INSERT INTO `the_module` (`id`, `nama`, `posisi`, `keterangan`) VALUES
(1, 'MEDIA CENTER', 'Tengah 1', NULL),
(2, 'KABAR SKPD', 'Tengah 2', NULL),
(3, 'HUMAS SETDAKO BATAM', 'Tengah 3', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `the_module_detail`
--

CREATE TABLE IF NOT EXISTS `the_module_detail` (
`id` int(11) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `isi` text,
  `updated_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `sys_user_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `show_title` tinyint(1) DEFAULT '1',
  `url` text
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `the_module_detail`
--

INSERT INTO `the_module_detail` (`id`, `module_id`, `judul`, `isi`, `updated_date`, `sys_user_id`, `tanggal`, `show_title`, `url`) VALUES
(2, 1, 'Pemilik Bongkar Sendiri Bangunan Liarnya', 'Tim Terpadu Kota Batam yang terdiri dari Satpol PP, TNI, Polri, Dinas Pekerjaan Umum serta Kecamatan Bengkong menertibkan rumah liar yang berada di Bengkong Palapa, Kamis (<a target="_blank" rel="nofollow">10/9</a>). Namun saat tiba di lokasi...', '2015-09-13 03:02:20', NULL, '2015-09-10', 1, 'http://mediacenter.batamkota.go.id/mari-ikuti-lomba-desain-prangko-berhadiah-jutaan-rupiah/'),
(3, 1, 'JuPe Batam Bagikan Masker ke Pengguna Jalan', 'Selama ini kami terus memberitakan kabut asap yang kian pekat di Batam dan membuat masyarakat resah. Jadi kami ingin ikut...', '2015-09-13 03:03:21', NULL, '2015-09-10', 1, 'http://mediacenter.batamkota.go.id/jupe-batam-bagikan-masker-ke-pengguna-jalan/'),
(4, 1, 'Insentif Guru Akan dicairkan Bertahap', 'Sekretaris Daerah Provinsi Kepulauan Riau, Robert Iwan Loreaux meminta guru-guru bersabar terkait belum cairnya...', '2015-09-13 03:05:07', NULL, '2015-09-10', 1, 'http://mediacenter.batamkota.go.id/insentif-guru-akan-dicairkan-bertahap'),
(5, 1, 'Revolusi Mental: Membangun Jiwa Merdeka Menuju Bangsa Besar', 'Revolusi Mental adalah suatu gerakan untuk menggembleng manusia Indonesia agar menjadi manusia baru, yang berhati putih, berkemauan baja, bersemangat elang...', '2015-09-13 03:06:01', NULL, '2015-09-10', 1, 'http://mediacenter.batamkota.go.id/revolusi-mental-membangun-jiwa-merdeka-menuju-bangsa-besar/'),
(6, 1, 'Mari Ikuti Lomba Desain Prangko Berhadiah Jutaan Rupiah', 'Direktorat Penyelenggaraan Pos dan Informatika Kementerian Komunikasi dan Informatika menggelar Lomba Desain Prangko Nasional 2015. Adapun ...<br>', '2015-09-13 03:06:36', NULL, '2015-09-10', 1, 'http://mediacenter.batamkota.go.id/mari-ikuti-lomba-desain-prangko-berhadiah-jutaan-rupiah/'),
(7, 2, 'Indeks Standar Pencemar Udara (ISPU) Kota Batam', 'Pemerintah Kota Batam tidak dapat mencegah semakin memburuknya kualitas udara di Batam akibat asap kiriman ini. Bapedal Kota Batam bersama Dinas...', '2015-09-13 03:10:49', NULL, '2015-09-10', 1, 'http://skpd.batamkota.go.id/dampaklingkungan/2015/09/indeks-standar-pencemar-udara-ispu-kota-batam/'),
(8, 2, ' Warga Proaktif Tertibkan Sendiri Rumah Liar', 'Tim terpadu Kota Batam yang terdiri dari Satpol PP, TNI, Polri, Dinas PU (pekerjaan umum) serta kecamatan Bengkong melakukan penertiban rumah liar (ruli) di ...', '2015-09-13 03:11:26', NULL, '2015-09-10', 1, 'http://skpd.batamkota.go.id/satpolpp/2015/09/10/warga-proaktif-tertibakn-sendiri-rumah-liar-mereka/'),
(11, 3, ' HR. Rudi, SE menghadiri acara Pesta Anak Pantai di Tanjung Riau Kecamatan Sekupang', 'Ketua panitia kegiatan sekaligus camat Sekupang, Zurniati mengatakan Pesta Anak Pantai ini digelar setiap tahun diadakan untuk melestarikan budaya...', '2015-09-13 03:13:27', NULL, '2015-09-10', 1, 'http://www.humasbatam.com/2015/09/05/hr-rudi-se-menghadiri-acara-pesta-anak-pantai-di-tanjung-riau-kecamatan-sekupang/'),
(12, 3, ' Revolusi Mental : Membangun Jiwa Merdeka Menuju Bangsa Besar', 'Kita tahu, negeri ini telah mengalami penjajahan selama 350 tahun. Selama itu pula bangsa kita mendapat penindasan, diperbudak, diperas setiap tetes sumber daya manusia maupun alamnya...<br>', NULL, NULL, '2015-09-13', 1, 'http://www.humasbatam.com/2015/09/08/revolusi-mental-membangun-jiwa-merdeka-menuju-bangsa-besar/');

-- --------------------------------------------------------

--
-- Table structure for table `website_skpd`
--

CREATE TABLE IF NOT EXISTS `website_skpd` (
`id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '#',
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `tipe` enum('Internal Link','Eksternal Link') NOT NULL DEFAULT 'Eksternal Link'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `website_skpd`
--

INSERT INTO `website_skpd` (`id`, `parent_id`, `nama`, `url`, `aktif`, `tipe`) VALUES
(1, 0, 'Web SKPD', '#', 1, 'Eksternal Link'),
(2, 0, 'Badan', '#', 1, 'Eksternal Link'),
(3, 0, 'Dinas', '#', 1, 'Eksternal Link'),
(4, 0, 'Kantor', '#', 1, 'Eksternal Link'),
(5, 0, 'Bagian', '#', 1, 'Eksternal Link'),
(6, 0, 'Kecamatan', '#', 1, 'Eksternal Link'),
(7, 1, 'Inspektorat', 'http://skpd.batamkota.go.id/inspektorat', 1, 'Eksternal Link'),
(8, 1, 'Sekertariat DPRD', 'http://skpd.batamkota.go.id/setdprdbatam/', 1, 'Eksternal Link'),
(9, 1, 'RSUD Embung Fatimah', 'http://skpd.batamkota.go.id/rsud', 1, 'Eksternal Link'),
(10, 1, 'Satpol PP', 'http://skpd.batamkota.go.id/satpolpp', 1, 'Eksternal Link'),
(11, 1, 'Sekertariat KORPRI', 'http://skpd.batamkota.go.id/korpri', 1, 'Eksternal Link'),
(12, 2, 'Badan Kepegawaian dan Diklat', 'http://skpd.batamkota.go.id/kepegawaian', 1, 'Eksternal Link'),
(13, 2, 'Badan Kesbangpol', 'http://skpd.batamkota.go.id/kesbang', 1, 'Eksternal Link'),
(14, 2, 'Badan Komunikasi dan Informatika', 'http://skpd.batamkota.go.id/kominfo', 1, 'Eksternal Link'),
(15, 2, 'Badan Pemberdayaan Perempuan,Perlindungan Anak dan Keluarga Berencana', 'http://skpd.batamkota.go.id/pemberdayaanperempuan', 1, 'Eksternal Link'),
(17, 2, 'Badan Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'http://skpd.batamkota.go.id/penanamanmodal', 1, 'Eksternal Link'),
(18, 2, 'Badan Pengendalian Dampak Lingkungan', 'http://skpd.batamkota.go.id/dampaklingkungan', 1, 'Eksternal Link'),
(19, 2, 'Badan Perencanaan Pembangunan Daerah', 'http://skpd.batamkota.go.id/bapeda', 1, 'Eksternal Link'),
(20, 2, 'Badan Pengelola Perbatasan dan Pertanahan Daerah', 'http://skpd.batamkota.go.id/pertanahan', 1, 'Eksternal Link'),
(21, 2, 'Badan Penanggulangan Bencana Daerah', 'http://skpd.batamkota.go.id/damkar', 1, 'Eksternal Link'),
(22, 3, 'Dinas Pendapatan Daerah', 'http://skpd.batamkota.go.id/dispenda', 1, 'Eksternal Link'),
(23, 3, 'Dinas Kebersihan dan Pertamanan', 'http://skpd.batamkota.go.id/kebersihan', 1, 'Eksternal Link'),
(24, 3, 'Dinas Kependudukan dan Catatan Sipil', 'http://skpd.batamkota.go.id/kependudukan', 1, 'Eksternal Link'),
(25, 3, 'Dinas Kesehatan', 'http://skpd.batamkota.go.id/kesehatan', 1, 'Eksternal Link'),
(26, 3, 'Dinas Kelautan, Perikanan, Peternakan dan Kehutanan', 'http://dkp2kbatamkota.com/', 1, 'Eksternal Link'),
(27, 3, 'Dinas Pariwisata dan Kebudayaan', 'http://skpd.batamkota.go.id/pariwisata', 1, 'Eksternal Link'),
(28, 3, 'Dinas Pekerjaan Umum', 'http://pu.batamkota.go.id/', 1, 'Eksternal Link'),
(29, 3, 'Dinas Pemberdayaan Masyarkat,Pasar, Koperasi dan Usaha Kecil Menengah', 'http://skpd.batamkota.go.id/koperasi', 1, 'Eksternal Link'),
(30, 3, 'Dinas Pendidikan', 'http://disdik.batamkota.go.id/', 1, 'Eksternal Link'),
(31, 3, 'Dinas Perhubungan', 'http://skpd.batamkota.go.id/perhubungan', 1, 'Eksternal Link'),
(32, 3, 'Dinas Perindustrian, Perdagangan dan Energi Sumber Daya Mineral', 'http://skpd.batamkota.go.id/indag', 1, 'Eksternal Link'),
(33, 3, 'Dinas Sosial Dan Pemakaman', 'http://skpd.batamkota.go.id/sosial', 1, 'Eksternal Link'),
(34, 3, 'Dinas Tata Kota', 'http://skpd.batamkota.go.id/tatakota', 1, 'Eksternal Link'),
(35, 3, 'Dinas Tenaga Kerja', 'http://skpd.batamkota.go.id/tenagakerja', 1, 'Eksternal Link'),
(36, 4, 'Kantor Pemuda dan Olahraga', 'http://skpd.batamkota.go.id/pemuda', 1, 'Eksternal Link'),
(37, 4, 'Kantor Perpustakaan Dan Arsip', 'http://skpd.batamkota.go.id/perpustakaan', 1, 'Eksternal Link'),
(38, 5, 'Bagian Umum', 'http://skpd.batamkota.go.id/umum', 1, 'Eksternal Link'),
(39, 5, 'Bagian Perlengkapan & Aset', 'http://skpd.batamkota.go.id/perlengkapan', 1, 'Eksternal Link'),
(40, 5, 'Bagian Protoko', 'http://skpd.batamkota.go.id/protokol', 1, 'Eksternal Link'),
(41, 5, 'Bagian Bina Program', 'http://skpd.batamkota.go.id/binaprogram', 1, 'Eksternal Link'),
(42, 5, 'Bagian Humas', 'http://skpd.batamkota.go.id/humas', 1, 'Eksternal Link'),
(43, 5, 'Bagian Organisasi', 'http://skpd.batamkota.go.id/ortal', 1, 'Eksternal Link'),
(44, 5, 'Bagian Keuangan', 'http://skpd.batamkota.go.id/keuangan', 1, 'Eksternal Link'),
(45, 5, 'Bagian Kesejahteraa Rayat', 'http://skpd.batamkota.go.id/kesra', 1, 'Eksternal Link'),
(46, 5, 'Bagian Perekonomian', 'http://skpd.batamkota.go.id/perekonomian', 1, 'Eksternal Link'),
(47, 5, 'Bagian Hukum', 'http://skpd.batamkota.go.id/hukum', 1, 'Eksternal Link'),
(48, 6, 'Kec Sekupang', 'http://skpd.batamkota.go.id/sekupang', 1, 'Eksternal Link'),
(49, 6, 'Kec Batu Aji', 'http://skpd.batamkota.go.id/batuaji', 1, 'Eksternal Link'),
(50, 6, 'Kec Sagulung', 'http://skpd.batamkota.go.id/sagulung', 1, 'Eksternal Link'),
(51, 6, 'Kec Bulang', 'http://skpd.batamkota.go.id/bulang', 1, 'Eksternal Link'),
(52, 6, 'Kec Galang', 'http://skpd.batamkota.go.id/galang', 1, 'Eksternal Link'),
(53, 6, 'Kec Sungai Beduk', 'http://skpd.batamkota.go.id/seibeduk#', 1, 'Eksternal Link'),
(54, 6, 'Kec Batam Kota', 'http://skpd.batamkota.go.id/batamkota', 1, 'Eksternal Link'),
(55, 6, 'Kec Nongsa', 'http://skpd.batamkota.go.id/nongsa', 1, 'Eksternal Link'),
(56, 6, 'Kec Lubuk Baja', 'http://skpd.batamkota.go.id/lubukbaja', 1, 'Eksternal Link'),
(57, 6, 'Kec Batu Ampar', 'http://skpd.batamkota.go.id/batuampar', 1, 'Eksternal Link'),
(58, 6, 'Kec Bengkong', 'http://skpd.batamkota.go.id/bengkong', 1, 'Eksternal Link'),
(59, 6, 'Kec Belakang Padang', 'http://skpd.batamkota.go.id/belakangpadang', 1, 'Eksternal Link'),
(60, 5, 'Bagian Tata Pemerintahan', 'http://skpd.batamkota.go.id/pemerintahan', 1, 'Eksternal Link');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `background_show`
--
ALTER TABLE `background_show`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_setting`
--
ALTER TABLE `email_setting`
 ADD PRIMARY KEY (`user`);

--
-- Indexes for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link_instansi`
--
ALTER TABLE `link_instansi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_icon`
--
ALTER TABLE `menu_icon`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide_show`
--
ALTER TABLE `slide_show`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_group`
--
ALTER TABLE `sys_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_menu`
--
ALTER TABLE `sys_menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_user`
--
ALTER TABLE `sys_user`
 ADD PRIMARY KEY (`username`), ADD KEY `id` (`id`), ADD KEY `pegawai_id` (`pegawai_id`);

--
-- Indexes for table `sys_user_group`
--
ALTER TABLE `sys_user_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `the_module`
--
ALTER TABLE `the_module`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `the_module_detail`
--
ALTER TABLE `the_module_detail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_skpd`
--
ALTER TABLE `website_skpd`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `background_show`
--
ALTER TABLE `background_show`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `link_instansi`
--
ALTER TABLE `link_instansi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `menu_icon`
--
ALTER TABLE `menu_icon`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `slide_show`
--
ALTER TABLE `slide_show`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sys_group`
--
ALTER TABLE `sys_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sys_menu`
--
ALTER TABLE `sys_menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `sys_user`
--
ALTER TABLE `sys_user`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sys_user_group`
--
ALTER TABLE `sys_user_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `the_module`
--
ALTER TABLE `the_module`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `the_module_detail`
--
ALTER TABLE `the_module_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `website_skpd`
--
ALTER TABLE `website_skpd`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
