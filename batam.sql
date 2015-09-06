/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : batam

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2015-09-06 14:42:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `artikel`
-- ----------------------------
DROP TABLE IF EXISTS `artikel`;
CREATE TABLE `artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `foto` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_aktif` tinyint(1) NOT NULL DEFAULT '1',
  `kategori_artikel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of artikel
-- ----------------------------
INSERT INTO `artikel` VALUES ('1', 'Pay To', '<h3><b>Daftar Transfer</b></h3><b>Bank Mandiri</b><br>1440010025887 Taufik Ute Alfan<br><br><b>Bank BCA</b><br>1440010025887 Taufik Ute Alfan<br><br>', '', '1', '2015-07-07', '2015-07-11 04:30:52', '1', '1');
INSERT INTO `artikel` VALUES ('2', 'About Us', '<div><b>About Us</b></div><span><blockquote><div>Singkong merupakan salah satu komoditi yang ditanam di Indonesia. Singkong dapat diolah menjadi olahan setengah jadi dan olahan jadi yang siap dikonsumsi. Salah satu olahan jadi dari singkong adalah keripik singkong. Keripik singkong merupakan snack yang paling disukai oleh masyarakat Indonesia. Penggemarnya mulai dari anak-anak sampai dewasa, dari yang tinggal di desa sampai di kota. Namun dengan perkembangan jaman keripik singkong diolah dengan berbagai macam rasa. <br>Keripik singkong \"Oenlez\" merupakan inovasi keripik singkong yang cocok dinikmati untuk segala suasana, karena keripik singkong oenlez mempunyai taste yang oenak dan lezat. Keripik singkong oenlez diolah dari bahan-bahan yang alami dan berkualitas premium. Bumbu yang digunakan dari bahan yang alami (bukan flavour) seperti yang ada pada ingredient. Keripik singkong oenlez dibuat tidak menggunakan bahan pengawet, bahan tambahan pewarna dan perasa, MSG dan tidak mengandung gluten.</div></blockquote><div><br>Keripik singkong \"Oenlez\" mempunyai 4 varian rasa, yaitu :</div><ol><li>Palm soy</li>Rasa gurih manis dari perpaduan gula aren dan soya sehingga menghasilkan rasa sweet classic.<br><br><li>Cheezy<br></li>Rasa gurih keju yang membuat kita tidak bisa berhenti ngemil, karena rasa real cheese yang beda dari yang lainnya.<br><br><li>Crazy chilli</li>Rasa unique spicy dari rasa pedas yang menggigit dipadu dengan aroma jeruk purut yang segar sehingga membuat kita tergila-gila dan tak terlupakan.<br><br><li>BBQ</li>Keripik singkong yang dimix dengan keripik tales diberi bumbu bbq ditambah aroma blackpapper yang menggoda membuat kita sulit melupakan.<br></ol></span>', '558bfd9c3e8e1.jpg', '1', '2015-06-25', '2015-07-26 11:25:39', '1', '1');
INSERT INTO `artikel` VALUES ('3', 'Contact Us', '<p><b>Oenlez (O Enak Lezat).</b></p><p>935 W. Webster Ave New Streets Chicago, IL 60614, NY</p><p>Surabaya - Jawa Timur, Indonesia</p><p>Mobile 1:&nbsp;087881596699</p><p>Mobile 2:&nbsp;085770896699<br></p><p>Mobile 3:&nbsp;082311856699<br></p><p>Email: oenlezsnack@gmail.com</p>', '', '1', '2015-06-25', '2015-07-26 11:10:55', '1', '1');
INSERT INTO `artikel` VALUES ('4', 'FAQ\'s', '<h3><b>Berikut ini adalah dafar pertanyaan yang mungkin sering muncul</b></h3><ul><li>Apakah bebas MSG</li><ul><li>Ya</li></ul><li>Apakah saya perlu login dan register untuk berbelanja disini</li><ul><li>Ya</li></ul><li>Apakah bisa mentransfer dari bank lain?</li><ul><li>Bisa, asalkan bank tujuannya adalah bank kami</li></ul><li>Kapan barang akan dikirim?</li><ul><li>Setelah konfirmasi pembayaran dan check, kami akan melakukan pengemasan barang yang dilanjutkan dengan mengirim ke bagian pengiriman</li></ul><li>Kemana saja barang akan dikirim</li><ul><li>Kemana saja asal sesuai dengan data kami dan jasa kurir kami</li></ul><li>Berapa lama akan sampai di tempat?</li><ul><li>Kami menyediakan beberapa paket pegiriman, sesuaikan dengan kebutuhan anda. lama pengiriman tergantung jasa kurir yang anda gunakan</li></ul></ul>', '', '1', '2015-06-25', '2015-07-11 04:29:22', '1', '1');
INSERT INTO `artikel` VALUES ('5', 'Term Of Use', '', '', '1', '2015-06-25', '2015-06-25 20:27:59', '1', '1');
INSERT INTO `artikel` VALUES ('6', 'Aturan & Cara menjadi reseller', '<ol><li>Pilih produk yang anda suka</li><li>Minimum pembelian tertera di setiap item produk</li><li>Klik add to cart untuk mulai membeli</li><li>Update keranjang belanja jika ingin mengubah quantity pembelian, dan klik belanja lagi jika ingin belanja produk lain</li><li>Klik Checkout untuk menyelesaikan belanja dan isi data pengiriman belanja</li><li>Anda akan mendapatkan notifikasi email sesuai dengan username&nbsp;</li><li>Silahkan transfer sesuai dengan daftar transfer</li><li>Login ke akun anda dan lakukan konfirmasi pembayaran terhadap barang yang anda beli di my account &gt; history belanja</li><li>Klik detail invoice yang anda transfer, kemudian klik konfirmasi dan isi konfirmasi tentang transfer Contoh: Taufik Ute Alfan# Bank Mandiri# 125.000# 11 Juli 2015# No Invoice #NSA021</li></ol>', '', '1', '2015-06-25', '2015-08-28 16:18:05', '1', '1');
INSERT INTO `artikel` VALUES ('7', 'Company Information', '', '', '1', '2015-06-25', '2015-06-25 20:30:45', '1', '9');
INSERT INTO `artikel` VALUES ('8', 'GIRLS PINK T SHIRT ARRIVED IN STORE', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p><br><p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p><br><p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p><br><p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>', '558e2ce8d70ea.jpg', '1', '2015-06-27', '2015-06-27 11:56:09', '1', '1');

-- ----------------------------
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_aktif` tinyint(4) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `posisi` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', '1', '558da9873989e.jpg', '2015-08-17 15:14:53', '1');
INSERT INTO `banner` VALUES ('2', '0', '558daa8de095d.jpg', '2015-08-15 00:26:07', '0');
INSERT INTO `banner` VALUES ('3', '0', '558daa5532318.jpg', '2015-06-27 10:53:31', '0');
INSERT INTO `banner` VALUES ('4', '1', '558da866b89fc.jpg', '2015-08-17 15:14:48', '0');

-- ----------------------------
-- Table structure for `barang`
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(50) NOT NULL,
  `kode_barcode` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kategori_barang_id` int(11) NOT NULL,
  `qty` tinyint(4) NOT NULL,
  `harga_jual` float NOT NULL,
  `harga_beli` float NOT NULL,
  `foto` varchar(100) NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `keterangan` text NOT NULL,
  `recomended_item` tinyint(4) NOT NULL,
  `ready_stock` tinyint(4) NOT NULL,
  `berat` decimal(10,0) NOT NULL,
  `foto2` varchar(100) NOT NULL,
  `min_pembelian` int(11) NOT NULL,
  `min1` int(11) NOT NULL,
  `max1` int(11) NOT NULL,
  `harga1` int(11) NOT NULL,
  `min2` int(11) NOT NULL,
  `max2` int(11) NOT NULL,
  `harga2` int(11) NOT NULL,
  `min3` int(11) NOT NULL,
  `max3` int(11) NOT NULL,
  `harga3` int(11) NOT NULL,
  `min4` int(11) NOT NULL,
  `max4` int(11) NOT NULL,
  `harga4` int(11) NOT NULL,
  `min5` int(11) NOT NULL,
  `max5` int(11) NOT NULL,
  `harga5` int(11) NOT NULL,
  `is_grosir` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barang
-- ----------------------------
INSERT INTO `barang` VALUES ('10', 'B0004', 'T0005', 'Mix Kemasan Pack', '2', '18', '11000', '12000', '559a87fc245e7.jpg', null, null, null, null, '<b>Barbeque </b>With Black Papper<br>Cassataro Chips <b>Gluten FreeMSG<br></b><br><b>Komposisi :</b><br>Singkong, Talas, Tomat, Paprika,<br>Bawang Bombay, Bawang Putih, Kedelai,<br>Merica Hitam, Gula, Garam,<br>Minyak Kelapa Sawit', '1', '1', '80', '', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `barang` VALUES ('11', 'B0003', 'T0004', 'Cheezy Kemasan Pack', '1', '6', '11000', '12000', '559a8792651cd.jpg', null, null, null, null, '<b>Cheese,&nbsp;</b>Real Cheese Flavour<br>Cassava Chips <b>Gluten Free MSG<br><br>Komposisi:<br></b>Singkong, Keju Cheddar, Susu,&nbsp;<br>Bawang Putih, Tepung Mocaf, Gula,<br>Garam, Minyak Kelapa Sawit', '1', '1', '80', '', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `barang` VALUES ('12', 'B0002', 'T0003', 'Palm Soy Kemasan Pack', '1', '6', '11000', '12000', '559a8756c62b0.jpg', null, null, null, null, '<b>Palm Soy&nbsp;</b>Classic Sweet Flavour<br>Cassava Chips <b>Gluten Free MSG<br><br>Komposisi:<br></b>Singkong, Gula Aren Organik, Kedelai,<br>Susu, Bawang Putih, Garam, Tepung<br>Mocaf, Minyak Kelapa Sawit', '1', '1', '80', '', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `barang` VALUES ('13', 'B0001', 'T0002', 'Crazy Chili Kemasan Pack', '1', '13', '11000', '12000', '559a86de53129.jpg', null, null, null, null, 'Keripik Singkon<b>&nbsp;Gluten Free MSG,&nbsp;</b><br><b>Crazy Chili </b>Unique Spicy Flavour.<br><br><b>Komposisi:<br></b>Singkong, Paprika, Cabai, <br>Bawang Putih, Lada, Kedelai, <br>Tepung Mocaf, Gula, Garam, <br>Minyak Kelapa Sawit, Daun Jeruk Purut<b><br></b>', '1', '1', '80', '', '12', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `barang` VALUES ('14', 'B-0005', '', 'Crazy Chili Kemasan Kardus', '1', '0', '9000', '11000', '55c29cf9085b8.jpg', null, null, null, null, 'Kemasan Kardus<br>Per kardus isi 30 Pcs&nbsp;', '0', '1', '2500', '', '1', '1', '5', '270000', '6', '10', '262500', '11', '15', '255000', '16', '50', '240000', '0', '0', '0', '1');
INSERT INTO `barang` VALUES ('15', 'B-0006', '', 'Palm Soy Kemasan Kardus', '1', '0', '9000', '11000', '55c2a022f0033.jpg', null, null, null, null, '', '0', '1', '2400', '', '1', '1', '5', '270000', '6', '10', '262500', '11', '15', '255000', '16', '50', '240000', '0', '0', '0', '1');
INSERT INTO `barang` VALUES ('16', 'B-0007', '', 'Cheezy Kemasan Kardus', '1', '0', '8000', '11000', '55c2a01326047.jpg', null, null, null, null, 'Kemasan Dus<br>Isi 30 Pcs', '0', '1', '2500', '', '1', '1', '5', '270000', '6', '10', '262500', '11', '15', '255000', '16', '50', '240000', '0', '0', '0', '1');
INSERT INTO `barang` VALUES ('17', 'B-0009', '', 'Mix Kemasan Kardus', '2', '0', '9000', '0', '55c29c457f7f8.jpg', null, null, null, null, '', '0', '1', '2500', '', '1', '1', '5', '270000', '6', '10', '262500', '11', '15', '255000', '26', '50', '240000', '0', '0', '0', '1');

-- ----------------------------
-- Table structure for `barang_masuk`
-- ----------------------------
DROP TABLE IF EXISTS `barang_masuk`;
CREATE TABLE `barang_masuk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barang_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `qty_awal` tinyint(4) DEFAULT NULL,
  `qty_masuk` tinyint(4) DEFAULT NULL,
  `qty_akhir` tinyint(4) DEFAULT NULL,
  `harga_jual_awal` decimal(10,2) DEFAULT NULL,
  `harga_jual_akhir` decimal(10,2) DEFAULT NULL,
  `harga_beli_awal` decimal(10,2) DEFAULT NULL,
  `harga_beli_akhir` decimal(10,2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `keterangan` text,
  `dari` varchar(50) DEFAULT NULL,
  `no_nota` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of barang_masuk
-- ----------------------------
INSERT INTO `barang_masuk` VALUES ('1', '1', '2015-01-01', '2', '21', '23', '80000.00', '85000.00', '75000.00', '70000.00', null, null, null, null, null, 'CV ANIKA UTAMA', '9238');
INSERT INTO `barang_masuk` VALUES ('2', '5', '2015-03-01', '-2', '10', '8', '10000.00', '10000.00', '8000.00', '8000.00', null, null, null, null, null, 'CV Mulia Abadi', '433928');
INSERT INTO `barang_masuk` VALUES ('3', '19', '2015-12-01', '2', '1', '3', '500.00', '3500000.00', '350.00', '3000000.00', null, null, null, null, null, 'Lenovo Indonesia', '#829128');
INSERT INTO `barang_masuk` VALUES ('4', '18', '2015-12-01', '20', '1', '21', '450000.00', '3500000.00', '150000.00', '3000000.00', null, null, null, null, null, 'Acer Indonesia', '#98210');
INSERT INTO `barang_masuk` VALUES ('5', '17', '2015-12-01', '20', '1', '21', '110000.00', '3700000.00', '80000.00', '3200000.00', null, null, null, null, null, 'Asus Indonesia', '#42129');
INSERT INTO `barang_masuk` VALUES ('6', '16', '2015-12-01', '2', '5', '7', '125000.00', '5400000.00', '100000.00', '5000000.00', null, null, null, null, null, 'Asus Indonesia', '#82171');
INSERT INTO `barang_masuk` VALUES ('7', '14', '2015-12-01', '2', '1', '3', '150000.00', '3500000.00', '130000.00', '3000000.00', null, null, null, null, null, 'Acer Indonesia', '#43213');
INSERT INTO `barang_masuk` VALUES ('8', '15', '1970-01-01', '8', '1', '9', '60000.00', '60000.00', '48000.00', '42000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('9', '13', '1970-01-01', '10', '1', '11', '145000.00', '65000.00', '125000.00', '43000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('10', '12', '1970-01-01', '5', '1', '6', '60000.00', '60000.00', '55000.00', '55000.00', null, null, null, null, null, 'Novi', '#123');
INSERT INTO `barang_masuk` VALUES ('11', '11', '1970-01-01', '5', '1', '6', '35000.00', '65000.00', '20000.00', '43000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('12', '13', '1970-01-01', '11', '1', '12', '65000.00', '105000.00', '43000.00', '125000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('13', '10', '1970-01-01', '17', '1', '18', '45000.00', '100000.00', '20000.00', '73000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('14', '9', '1970-01-01', '9', '1', '10', '35000.00', '70000.00', '17000.00', '53000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('15', '5', '1970-01-01', '8', '1', '9', '10000.00', '125000.00', '8000.00', '100000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('16', '19', '1970-01-01', '1', '1', '2', '3500000.00', '120000.00', '3000000.00', '105000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('17', '13', '1970-01-01', '12', '1', '13', '105000.00', '125000.00', '125000.00', '105000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('18', '18', '2015-02-02', '15', '1', '16', '3500000.00', '100000.00', '3000000.00', '86000.00', null, null, null, null, null, 'Jaknot', '#213');
INSERT INTO `barang_masuk` VALUES ('19', '17', '2015-02-02', '19', '1', '20', '3700000.00', '550000.00', '3200000.00', '510000.00', null, null, null, null, null, 'Jaknot', '#123');
INSERT INTO `barang_masuk` VALUES ('20', '16', '2015-02-02', '7', '3', '10', '5400000.00', '30000.00', '5000000.00', '22500.00', null, null, null, null, null, 'Jaknot', '#241');
INSERT INTO `barang_masuk` VALUES ('21', '14', '2015-02-02', '3', '2', '5', '3500000.00', '100000.00', '3000000.00', '83000.00', null, null, null, null, null, 'jaknot', '#uwe');
INSERT INTO `barang_masuk` VALUES ('22', '22', '2015-02-02', '12', '2', '14', '25000.00', '35000.00', '35000.00', '25000.00', null, null, null, null, null, 't-code', 'wqehk');
INSERT INTO `barang_masuk` VALUES ('23', '21', '2015-02-02', '3', '2', '5', '80000.00', '90000.00', '90000.00', '80000.00', null, null, null, null, null, 'adjk', 'ljflefj');

-- ----------------------------
-- Table structure for `email_setting`
-- ----------------------------
DROP TABLE IF EXISTS `email_setting`;
CREATE TABLE `email_setting` (
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
  `fromnamer` varchar(100) NOT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of email_setting
-- ----------------------------
INSERT INTO `email_setting` VALUES ('1', 'smtp', 'ssl://smtp.gmail.com', '465', 'alfhanz@gmail.com', '010988alfhan', 'html', 'utf-8', '\\r\\n', '1', 'oenlez@gmail.com', 'OENLEZ');

-- ----------------------------
-- Table structure for `harga_kurir`
-- ----------------------------
DROP TABLE IF EXISTS `harga_kurir`;
CREATE TABLE `harga_kurir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kabkota_id` int(11) NOT NULL,
  `kecamatan_id` int(11) NOT NULL DEFAULT '0',
  `berat` tinyint(4) NOT NULL,
  `harga` int(11) NOT NULL,
  `kurir_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `est` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of harga_kurir
-- ----------------------------
INSERT INTO `harga_kurir` VALUES ('1', '783', '0', '1', '5000', '1', '15', '1');
INSERT INTO `harga_kurir` VALUES ('2', '803', '0', '1', '5000', '1', '15', '1');
INSERT INTO `harga_kurir` VALUES ('3', '780', '0', '1', '6000', '1', '15', '1');
INSERT INTO `harga_kurir` VALUES ('4', '783', '4', '1', '5000', '4', '15', '1-3');
INSERT INTO `harga_kurir` VALUES ('5', '783', '10', '1', '5000', '4', '15', '1-3');
INSERT INTO `harga_kurir` VALUES ('6', '783', '10', '1', '10000', '5', '15', '1');
INSERT INTO `harga_kurir` VALUES ('7', '783', '11', '1', '5000', '4', '15', '1-3');
INSERT INTO `harga_kurir` VALUES ('8', '783', '4', '1', '10000', '5', '15', '1');
INSERT INTO `harga_kurir` VALUES ('9', '783', '11', '1', '10000', '5', '15', '1');
INSERT INTO `harga_kurir` VALUES ('10', '545', '0', '1', '50000', '1', '1', '3-4');
INSERT INTO `harga_kurir` VALUES ('11', '700', '0', '1', '26500', '1', '12', '1-2');
INSERT INTO `harga_kurir` VALUES ('12', '717', '0', '1', '26500', '1', '12', '1-2');
INSERT INTO `harga_kurir` VALUES ('13', '701', '0', '1', '26500', '1', '12', '1-2');
INSERT INTO `harga_kurir` VALUES ('14', '702', '0', '1', '26500', '1', '12', '1-2');
INSERT INTO `harga_kurir` VALUES ('15', '770', '0', '1', '5000', '1', '15', '1-2');
INSERT INTO `harga_kurir` VALUES ('16', '771', '0', '1', '10000', '1', '15', '1-2');
INSERT INTO `harga_kurir` VALUES ('17', '772', '0', '1', '8000', '1', '15', '1-2');
INSERT INTO `harga_kurir` VALUES ('18', '773', '0', '1', '6000', '1', '15', '1-2');
INSERT INTO `harga_kurir` VALUES ('19', '774', '0', '1', '6000', '1', '15', '1-2');
INSERT INTO `harga_kurir` VALUES ('20', '789', '23', '1', '12500', '1', '15', '1-2');
INSERT INTO `harga_kurir` VALUES ('21', '909', '0', '1', '27500', '1', '23', '1-2');
INSERT INTO `harga_kurir` VALUES ('22', '670', '0', '1', '32000', '1', '8', '2-3');
INSERT INTO `harga_kurir` VALUES ('23', '884', '0', '1', '32000', '1', '21', '2-3');
INSERT INTO `harga_kurir` VALUES ('24', '885', '0', '1', '25500', '1', '21', '2-3');
INSERT INTO `harga_kurir` VALUES ('25', '687', '0', '1', '42500', '1', '10', '3-4');
INSERT INTO `harga_kurir` VALUES ('26', '595', '0', '1', '43000', '1', '3', '3-4');
INSERT INTO `harga_kurir` VALUES ('27', '585', '0', '1', '43000', '1', '3', '3-4');
INSERT INTO `harga_kurir` VALUES ('28', '586', '0', '1', '43000', '1', '3', '3-4');
INSERT INTO `harga_kurir` VALUES ('29', '587', '0', '1', '43000', '1', '3', '3-4');
INSERT INTO `harga_kurir` VALUES ('30', '1015', '0', '1', '72500', '1', '32', '3-4');
INSERT INTO `harga_kurir` VALUES ('31', '825', '0', '1', '40000', '1', '18', '2-3');
INSERT INTO `harga_kurir` VALUES ('32', '833', '0', '1', '40000', '1', '18', '2-3');
INSERT INTO `harga_kurir` VALUES ('33', '703', '0', '1', '26500', '1', '12', '1-2');
INSERT INTO `harga_kurir` VALUES ('34', '910', '0', '1', '40000', '1', '23', '2-3');
INSERT INTO `harga_kurir` VALUES ('35', '634', '0', '1', '40000', '1', '6', '2-3');
INSERT INTO `harga_kurir` VALUES ('36', '705', '0', '1', '29500', '1', '12', '1-2');
INSERT INTO `harga_kurir` VALUES ('37', '706', '0', '1', '29500', '1', '12', '1-2');
INSERT INTO `harga_kurir` VALUES ('38', '722', '0', '1', '29500', '1', '12', '1-2');
INSERT INTO `harga_kurir` VALUES ('39', '823', '0', '1', '20000', '1', '17', '1');
INSERT INTO `harga_kurir` VALUES ('40', '723', '0', '1', '23000', '1', '12', '1-2');
INSERT INTO `harga_kurir` VALUES ('41', '619', '0', '1', '55000', '1', '5', '2-3');
INSERT INTO `harga_kurir` VALUES ('42', '772', '0', '1', '10000', '6', '15', '2-3');
INSERT INTO `harga_kurir` VALUES ('43', '1020', '0', '1', '70000', '6', '32', '4-5');
INSERT INTO `harga_kurir` VALUES ('44', '1021', '0', '1', '70000', '6', '32', '4-5');
INSERT INTO `harga_kurir` VALUES ('45', '778', '0', '1', '10000', '1', '15', '1-2');
INSERT INTO `harga_kurir` VALUES ('46', '778', '0', '1', '15000', '2', '15', '1');
INSERT INTO `harga_kurir` VALUES ('47', '778', '0', '1', '7500', '6', '15', '2-3');

-- ----------------------------
-- Table structure for `jenis_barang`
-- ----------------------------
DROP TABLE IF EXISTS `jenis_barang`;
CREATE TABLE `jenis_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of jenis_barang
-- ----------------------------
INSERT INTO `jenis_barang` VALUES ('1', 'Laptop');
INSERT INTO `jenis_barang` VALUES ('2', 'Smart Phone');
INSERT INTO `jenis_barang` VALUES ('3', 'Flashdisk');
INSERT INTO `jenis_barang` VALUES ('4', 'MicroSD');
INSERT INTO `jenis_barang` VALUES ('7', 'Makanan & Minuman');
INSERT INTO `jenis_barang` VALUES ('9', 'Fashion');

-- ----------------------------
-- Table structure for `kabkota`
-- ----------------------------
DROP TABLE IF EXISTS `kabkota`;
CREATE TABLE `kabkota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi_id` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1056 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kabkota
-- ----------------------------
INSERT INTO `kabkota` VALUES ('528', '1', 'Kabupaten Aceh Barat');
INSERT INTO `kabkota` VALUES ('529', '1', 'Kabupaten Aceh Barat Daya');
INSERT INTO `kabkota` VALUES ('530', '1', 'Kabupaten Aceh Besar');
INSERT INTO `kabkota` VALUES ('531', '1', 'Kabupaten Aceh Jaya');
INSERT INTO `kabkota` VALUES ('532', '1', 'Kabupaten Aceh Selatan');
INSERT INTO `kabkota` VALUES ('533', '1', 'Kabupaten Aceh Singkil');
INSERT INTO `kabkota` VALUES ('534', '1', 'Kabupaten Aceh Tamiang');
INSERT INTO `kabkota` VALUES ('535', '1', 'Kabupaten Aceh Tengah');
INSERT INTO `kabkota` VALUES ('536', '1', 'Kabupaten Aceh Tenggara');
INSERT INTO `kabkota` VALUES ('537', '1', 'Kabupaten Aceh Timur');
INSERT INTO `kabkota` VALUES ('538', '1', 'Kabupaten Aceh Utara');
INSERT INTO `kabkota` VALUES ('539', '1', 'Kabupaten Bireuen');
INSERT INTO `kabkota` VALUES ('540', '1', 'Kabupaten Gayo Lues');
INSERT INTO `kabkota` VALUES ('541', '1', 'Kabupaten Nagan Raya');
INSERT INTO `kabkota` VALUES ('542', '1', 'Kabupaten Pidie');
INSERT INTO `kabkota` VALUES ('543', '1', 'Kabupaten Pidie Jaya');
INSERT INTO `kabkota` VALUES ('544', '1', 'Kabupaten Simeulue');
INSERT INTO `kabkota` VALUES ('545', '1', 'Kota Banda Aceh');
INSERT INTO `kabkota` VALUES ('546', '1', 'Kota Langsa');
INSERT INTO `kabkota` VALUES ('547', '1', 'Kota Lhokseumawe');
INSERT INTO `kabkota` VALUES ('548', '1', 'Kota Sabang');
INSERT INTO `kabkota` VALUES ('549', '1', 'Kota Subulussalam');
INSERT INTO `kabkota` VALUES ('550', '1', 'Propinsi Aceh');
INSERT INTO `kabkota` VALUES ('551', '2', 'Kabupaten Asahan');
INSERT INTO `kabkota` VALUES ('552', '2', 'Kabupaten Batu Bara');
INSERT INTO `kabkota` VALUES ('553', '2', 'Kabupaten Dairi');
INSERT INTO `kabkota` VALUES ('554', '2', 'Kabupaten Deli Serdang');
INSERT INTO `kabkota` VALUES ('555', '2', 'Kabupaten Humbang Haundutan');
INSERT INTO `kabkota` VALUES ('556', '2', 'Kabupaten Karo');
INSERT INTO `kabkota` VALUES ('557', '2', 'Kabupaten Labuhanbatu');
INSERT INTO `kabkota` VALUES ('558', '2', 'Kabupaten Labuhanbatu Selatan');
INSERT INTO `kabkota` VALUES ('559', '2', 'Kabupaten Labuhanbatu Utara');
INSERT INTO `kabkota` VALUES ('560', '2', 'Kabupaten Langkat');
INSERT INTO `kabkota` VALUES ('561', '2', 'Kabupaten Mandailing Natal');
INSERT INTO `kabkota` VALUES ('562', '2', 'Kabupaten Nias');
INSERT INTO `kabkota` VALUES ('563', '2', 'Kabupaten Nias Barat');
INSERT INTO `kabkota` VALUES ('564', '2', 'Kabupaten Nias Selatan');
INSERT INTO `kabkota` VALUES ('565', '2', 'Kabupaten Nias Utara');
INSERT INTO `kabkota` VALUES ('566', '2', 'Kabupaten Padang Lawas');
INSERT INTO `kabkota` VALUES ('567', '2', 'Kabupaten Padang Lawas Utara');
INSERT INTO `kabkota` VALUES ('568', '2', 'Kabupaten Pakpak Bharat');
INSERT INTO `kabkota` VALUES ('569', '2', 'Kabupaten Samosir');
INSERT INTO `kabkota` VALUES ('570', '2', 'Kabupaten Serdang Bedagai');
INSERT INTO `kabkota` VALUES ('571', '2', 'Kabupaten Simalungun');
INSERT INTO `kabkota` VALUES ('572', '2', 'Kabupaten Tapanuli Selatan');
INSERT INTO `kabkota` VALUES ('573', '2', 'Kabupaten Tapanuli Tengah');
INSERT INTO `kabkota` VALUES ('574', '2', 'Kabupaten Tapanuli Utara');
INSERT INTO `kabkota` VALUES ('575', '2', 'Kabupaten Toba Samosir');
INSERT INTO `kabkota` VALUES ('576', '2', 'Kota Binjai');
INSERT INTO `kabkota` VALUES ('577', '2', 'Kota Gunung Sitoli');
INSERT INTO `kabkota` VALUES ('578', '2', 'Kota Medan');
INSERT INTO `kabkota` VALUES ('579', '2', 'Kota Padang Sidempuan');
INSERT INTO `kabkota` VALUES ('580', '2', 'Kota Pematangsiantar');
INSERT INTO `kabkota` VALUES ('581', '2', 'Kota Sibolga');
INSERT INTO `kabkota` VALUES ('582', '2', 'Kota Tanjung Balai');
INSERT INTO `kabkota` VALUES ('583', '2', 'Kota Tebing Tinggi');
INSERT INTO `kabkota` VALUES ('584', '2', 'Propinsi Sumatera Utara');
INSERT INTO `kabkota` VALUES ('585', '3', 'Kabupaten Bengkulu Selatan');
INSERT INTO `kabkota` VALUES ('586', '3', 'Kabupaten Bengkulu Tengah');
INSERT INTO `kabkota` VALUES ('587', '3', 'Kabupaten Bengkulu Utara');
INSERT INTO `kabkota` VALUES ('588', '3', 'Kabupaten Benteng');
INSERT INTO `kabkota` VALUES ('589', '3', 'Kabupaten Kaur');
INSERT INTO `kabkota` VALUES ('590', '3', 'Kabupaten Kepahiang');
INSERT INTO `kabkota` VALUES ('591', '3', 'Kabupaten Lebong');
INSERT INTO `kabkota` VALUES ('592', '3', 'Kabupaten Mukomuko');
INSERT INTO `kabkota` VALUES ('593', '3', 'Kabupaten Rejang Lebong');
INSERT INTO `kabkota` VALUES ('594', '3', 'Kabupaten Seluma');
INSERT INTO `kabkota` VALUES ('595', '3', 'Kabupaten Bengkulu');
INSERT INTO `kabkota` VALUES ('597', '4', 'Kabupaten Batang Hari');
INSERT INTO `kabkota` VALUES ('598', '4', 'Kabupaten Bungo');
INSERT INTO `kabkota` VALUES ('599', '4', 'Kabupaten Kerinci');
INSERT INTO `kabkota` VALUES ('600', '4', 'Kabupaten Merangin');
INSERT INTO `kabkota` VALUES ('601', '4', 'Kabupaten Muaro Jambi');
INSERT INTO `kabkota` VALUES ('602', '4', 'Kabupaten Sarolangun');
INSERT INTO `kabkota` VALUES ('603', '4', 'Kabupaten Tanjung Jabung Barat');
INSERT INTO `kabkota` VALUES ('604', '4', 'Kabupaten Tanjung Jabung Timur');
INSERT INTO `kabkota` VALUES ('605', '4', 'Kabupaten Tebo');
INSERT INTO `kabkota` VALUES ('606', '4', 'Kabupaten Jambi');
INSERT INTO `kabkota` VALUES ('607', '4', 'Kabupaten Sungai Penuh');
INSERT INTO `kabkota` VALUES ('608', '4', 'Propinsi Jambi');
INSERT INTO `kabkota` VALUES ('609', '5', 'Kabupaten Bengkalis');
INSERT INTO `kabkota` VALUES ('610', '5', 'Kabupaten Indragiri Hilir');
INSERT INTO `kabkota` VALUES ('611', '5', 'Kabupaten Indragiri Hulu');
INSERT INTO `kabkota` VALUES ('612', '5', 'Kabupaten Kampar');
INSERT INTO `kabkota` VALUES ('613', '5', 'Kabupaten Kuantan Singingi ');
INSERT INTO `kabkota` VALUES ('614', '5', 'Kabupaten Pelalawan');
INSERT INTO `kabkota` VALUES ('615', '5', 'Kabupaten Rokan Hilir');
INSERT INTO `kabkota` VALUES ('616', '5', 'Kabupaten Rokan Hulu');
INSERT INTO `kabkota` VALUES ('617', '5', 'Kabupaten Siak');
INSERT INTO `kabkota` VALUES ('618', '5', 'Kota Pekanbaru');
INSERT INTO `kabkota` VALUES ('619', '5', 'Kota Dumai');
INSERT INTO `kabkota` VALUES ('620', '5', 'Kabupaten Kepulauan Meranti');
INSERT INTO `kabkota` VALUES ('621', '5', 'Propinsi Riau');
INSERT INTO `kabkota` VALUES ('622', '6', 'Kabupaten Agam');
INSERT INTO `kabkota` VALUES ('623', '6', 'Kabupaten Dharmasraya');
INSERT INTO `kabkota` VALUES ('624', '6', 'Kabupaten Kepulauan Mentawai');
INSERT INTO `kabkota` VALUES ('625', '6', 'Kabupaten Lima Puluh Kota');
INSERT INTO `kabkota` VALUES ('626', '6', 'Kabupaten Padang Pariaman');
INSERT INTO `kabkota` VALUES ('627', '6', 'Kabupaten Pasaman');
INSERT INTO `kabkota` VALUES ('628', '6', 'Kabupaten Pasaman Barat');
INSERT INTO `kabkota` VALUES ('629', '6', 'Kabupaten Pesisir Selatan');
INSERT INTO `kabkota` VALUES ('630', '6', 'Kabupaten Sijunjung');
INSERT INTO `kabkota` VALUES ('631', '6', 'Kabupaten Solok');
INSERT INTO `kabkota` VALUES ('632', '6', 'Kabupaten Solok Selatan');
INSERT INTO `kabkota` VALUES ('633', '6', 'Kabupaten Tanah Datar');
INSERT INTO `kabkota` VALUES ('634', '6', 'Kabupaten Bukittinggi');
INSERT INTO `kabkota` VALUES ('635', '6', 'Kota Padang');
INSERT INTO `kabkota` VALUES ('636', '6', 'Kota padangpanjang');
INSERT INTO `kabkota` VALUES ('637', '6', 'Kota Pariaman');
INSERT INTO `kabkota` VALUES ('638', '6', 'Kota Payakumbuh');
INSERT INTO `kabkota` VALUES ('639', '6', 'Kota Sawahlunto');
INSERT INTO `kabkota` VALUES ('640', '6', 'Kota solok');
INSERT INTO `kabkota` VALUES ('641', '6', 'Propinsi Sumatera Barat');
INSERT INTO `kabkota` VALUES ('642', '7', 'Kabupaten Banyuasin');
INSERT INTO `kabkota` VALUES ('643', '7', 'Kabupaten Empat Lawang');
INSERT INTO `kabkota` VALUES ('644', '7', 'Kabupaten Lahat');
INSERT INTO `kabkota` VALUES ('645', '7', 'Kabupaten Muara Enim');
INSERT INTO `kabkota` VALUES ('646', '7', 'Kabupaten Musi Banyuasin');
INSERT INTO `kabkota` VALUES ('647', '7', 'Kabupaten Musi Rawas');
INSERT INTO `kabkota` VALUES ('648', '7', 'Kabupaten Ogan llir');
INSERT INTO `kabkota` VALUES ('649', '7', 'Kabupaten Ogan Komering llir');
INSERT INTO `kabkota` VALUES ('650', '7', 'Kabupaten Komering Ulu');
INSERT INTO `kabkota` VALUES ('651', '7', 'Kabupaten Ogan Komering Ulu Selatan');
INSERT INTO `kabkota` VALUES ('652', '7', 'Kabupaten Ogan Komering Ulu Timur');
INSERT INTO `kabkota` VALUES ('653', '7', 'Kota Lubuklinggau');
INSERT INTO `kabkota` VALUES ('654', '7', 'Kota Pagar Alam');
INSERT INTO `kabkota` VALUES ('655', '7', 'Kota Palembang');
INSERT INTO `kabkota` VALUES ('656', '7', 'Kota Prabumulih');
INSERT INTO `kabkota` VALUES ('657', '7', 'Propinsi Sumatera Selatan');
INSERT INTO `kabkota` VALUES ('658', '8', 'Kabupaten Lampung Barat');
INSERT INTO `kabkota` VALUES ('659', '8', 'Kabupaten Lampung Selatan');
INSERT INTO `kabkota` VALUES ('660', '8', 'Kabupaten Lampung Tengah');
INSERT INTO `kabkota` VALUES ('661', '8', 'Kabupaten Lampung Timur');
INSERT INTO `kabkota` VALUES ('662', '8', 'Kabupaten Lampung Utara');
INSERT INTO `kabkota` VALUES ('663', '8', 'Kabupaten Mesuji');
INSERT INTO `kabkota` VALUES ('664', '8', 'Kabupaten Pesawaran');
INSERT INTO `kabkota` VALUES ('665', '8', 'Kabupaten Pringsewu');
INSERT INTO `kabkota` VALUES ('666', '8', 'Kabupaten Tanggamus');
INSERT INTO `kabkota` VALUES ('667', '8', 'Kabupaten Tulang Bawang');
INSERT INTO `kabkota` VALUES ('668', '8', 'Kabupaten Tulang Bawang Barat');
INSERT INTO `kabkota` VALUES ('669', '8', 'Kabupaten Way Kanan');
INSERT INTO `kabkota` VALUES ('670', '8', 'Kota Bandar Lampung');
INSERT INTO `kabkota` VALUES ('671', '8', 'Kota Metro');
INSERT INTO `kabkota` VALUES ('672', '8', 'Kabupaten Pesisir Barat');
INSERT INTO `kabkota` VALUES ('673', '8', 'Propinsi Lampung');
INSERT INTO `kabkota` VALUES ('674', '9', 'Kabupaten Bangka');
INSERT INTO `kabkota` VALUES ('675', '9', 'Kabupaten Bangka Barat');
INSERT INTO `kabkota` VALUES ('676', '9', 'Kabupaten Bangka Selatan');
INSERT INTO `kabkota` VALUES ('677', '9', 'Kabupaten Bangka Tengah');
INSERT INTO `kabkota` VALUES ('678', '9', 'Kabupaten Belitung');
INSERT INTO `kabkota` VALUES ('679', '9', 'Kabupaten Belitung Timur');
INSERT INTO `kabkota` VALUES ('680', '9', 'Kota Pangkal Pinang');
INSERT INTO `kabkota` VALUES ('681', '9', 'Propinsi Kepulauan Bangka Belitung');
INSERT INTO `kabkota` VALUES ('682', '10', 'Kabupaten Bintan');
INSERT INTO `kabkota` VALUES ('683', '10', 'Kabupaten Karimun');
INSERT INTO `kabkota` VALUES ('684', '10', 'Kabupaten Kepulauan Anambas');
INSERT INTO `kabkota` VALUES ('685', '10', 'Kabupaten Lingga');
INSERT INTO `kabkota` VALUES ('686', '10', 'Kabupaten Natuna');
INSERT INTO `kabkota` VALUES ('687', '10', 'Kota Batam');
INSERT INTO `kabkota` VALUES ('688', '10', 'Kota Tanjung Pinang');
INSERT INTO `kabkota` VALUES ('689', '10', 'Propinsi Kepulauan Riau');
INSERT INTO `kabkota` VALUES ('690', '11', 'Kabupaten Lebak');
INSERT INTO `kabkota` VALUES ('691', '11', 'Kabupaten Pandeglang');
INSERT INTO `kabkota` VALUES ('692', '11', 'Kabupaten Serang');
INSERT INTO `kabkota` VALUES ('693', '11', 'Kabupaten Tangerang');
INSERT INTO `kabkota` VALUES ('694', '11', 'Kota Cilegon');
INSERT INTO `kabkota` VALUES ('695', '11', 'Kabupaten Serang');
INSERT INTO `kabkota` VALUES ('696', '11', 'Kabupaten Tangerang');
INSERT INTO `kabkota` VALUES ('697', '11', 'Kota Tangerang');
INSERT INTO `kabkota` VALUES ('698', '11', 'Kota Tangerang Selatan');
INSERT INTO `kabkota` VALUES ('699', '11', 'Propinsi Banten');
INSERT INTO `kabkota` VALUES ('700', '12', 'Kabupaten Bandung');
INSERT INTO `kabkota` VALUES ('701', '12', 'Kabupaten Bandung Barat');
INSERT INTO `kabkota` VALUES ('702', '12', 'Kabupaten Bekasi');
INSERT INTO `kabkota` VALUES ('703', '12', 'Kabupaten Bogor');
INSERT INTO `kabkota` VALUES ('704', '12', 'Kabupaten Ciamis');
INSERT INTO `kabkota` VALUES ('705', '12', 'Kabupaten Cianjur');
INSERT INTO `kabkota` VALUES ('706', '12', 'Kabupaten Cirebon');
INSERT INTO `kabkota` VALUES ('707', '12', 'Kabupaten Garut');
INSERT INTO `kabkota` VALUES ('708', '12', 'Kabupaten Indramayu');
INSERT INTO `kabkota` VALUES ('709', '12', 'Kabupaten Karawang');
INSERT INTO `kabkota` VALUES ('710', '12', 'Kabupaten Kuningan');
INSERT INTO `kabkota` VALUES ('711', '12', 'Kabupaten Majalengka');
INSERT INTO `kabkota` VALUES ('712', '12', 'Kabupaten Purwakarta');
INSERT INTO `kabkota` VALUES ('713', '12', 'Kabupaten Subang');
INSERT INTO `kabkota` VALUES ('714', '12', 'Kabupaten Sukabumi');
INSERT INTO `kabkota` VALUES ('715', '12', 'Kabupaten Sumedang');
INSERT INTO `kabkota` VALUES ('716', '12', 'Kabupaten Tasikmalaya');
INSERT INTO `kabkota` VALUES ('717', '12', 'Kota Bandung');
INSERT INTO `kabkota` VALUES ('718', '12', 'Kota Banjar');
INSERT INTO `kabkota` VALUES ('719', '12', 'Kota Bekasi');
INSERT INTO `kabkota` VALUES ('720', '12', 'Kota Bogor');
INSERT INTO `kabkota` VALUES ('721', '12', 'Kota Cimahi');
INSERT INTO `kabkota` VALUES ('722', '12', 'Kota Cirebon');
INSERT INTO `kabkota` VALUES ('723', '12', 'Kota Depok');
INSERT INTO `kabkota` VALUES ('724', '12', 'Kota Sukabumi');
INSERT INTO `kabkota` VALUES ('725', '12', 'Kota Tasikmalaya');
INSERT INTO `kabkota` VALUES ('726', '12', 'Propinsi Jawa Barat');
INSERT INTO `kabkota` VALUES ('727', '13', 'Kabupaten Administrasi Kepulauan Seribu');
INSERT INTO `kabkota` VALUES ('728', '13', 'Kota Administrasi Jakarta Barat');
INSERT INTO `kabkota` VALUES ('729', '13', 'Kota Administrasi Jakarta Pusat');
INSERT INTO `kabkota` VALUES ('730', '13', 'Kota Administrasi Jakarta Selatan');
INSERT INTO `kabkota` VALUES ('731', '13', 'Kota Administrasi Jakarta Timur');
INSERT INTO `kabkota` VALUES ('732', '13', 'Kota Administrasi Jakarta Utara');
INSERT INTO `kabkota` VALUES ('733', '13', 'Propinsi 13');
INSERT INTO `kabkota` VALUES ('734', '14', 'Kabupaten Banjarnegara');
INSERT INTO `kabkota` VALUES ('735', '14', 'Kabupaten Banyumas');
INSERT INTO `kabkota` VALUES ('736', '14', 'Kabupaten Batang');
INSERT INTO `kabkota` VALUES ('737', '14', 'Kabupaten Blora');
INSERT INTO `kabkota` VALUES ('738', '14', 'Kabupaten Boyolali');
INSERT INTO `kabkota` VALUES ('739', '14', 'Kabupaten Brebes');
INSERT INTO `kabkota` VALUES ('740', '14', 'Kabupaten Cilacap');
INSERT INTO `kabkota` VALUES ('741', '14', 'Kabupaten Demak');
INSERT INTO `kabkota` VALUES ('742', '14', 'Kabupaten Grobogan');
INSERT INTO `kabkota` VALUES ('743', '14', 'Kabupaten Jepara');
INSERT INTO `kabkota` VALUES ('744', '14', 'Kabupaten Karanganyar');
INSERT INTO `kabkota` VALUES ('745', '14', 'Kabupaten Kebumen');
INSERT INTO `kabkota` VALUES ('746', '14', 'Kabupaten Kedal');
INSERT INTO `kabkota` VALUES ('747', '14', 'Kabupaten Klaten');
INSERT INTO `kabkota` VALUES ('748', '14', 'Kabupaten Kudus');
INSERT INTO `kabkota` VALUES ('749', '14', 'Kabupaten Magelang');
INSERT INTO `kabkota` VALUES ('750', '14', 'Kabupaten Pati');
INSERT INTO `kabkota` VALUES ('751', '14', 'Kabupaten Pekalongan');
INSERT INTO `kabkota` VALUES ('752', '14', 'Kabupaten Pemalang');
INSERT INTO `kabkota` VALUES ('753', '14', 'Kabupaten Purbalingga');
INSERT INTO `kabkota` VALUES ('754', '14', 'Kabupaten Purworejo');
INSERT INTO `kabkota` VALUES ('755', '14', 'Kabupaten Rembang');
INSERT INTO `kabkota` VALUES ('756', '14', 'Kabupaten Semarang');
INSERT INTO `kabkota` VALUES ('757', '14', 'Kabupaten Sragen');
INSERT INTO `kabkota` VALUES ('758', '14', 'Kabupaten Sukoharjo');
INSERT INTO `kabkota` VALUES ('759', '14', 'Kabupaten Tegal');
INSERT INTO `kabkota` VALUES ('760', '14', 'Kabupaten Temanggung');
INSERT INTO `kabkota` VALUES ('761', '14', 'Kabupaten Wonogiri');
INSERT INTO `kabkota` VALUES ('762', '14', 'Kabupaten Wonosobo');
INSERT INTO `kabkota` VALUES ('763', '14', 'Kota Magelang');
INSERT INTO `kabkota` VALUES ('764', '14', 'Kota Pekalongan');
INSERT INTO `kabkota` VALUES ('765', '14', 'Kota Salatiga');
INSERT INTO `kabkota` VALUES ('766', '14', 'Kota Semarang');
INSERT INTO `kabkota` VALUES ('767', '14', 'Kota Surakarta');
INSERT INTO `kabkota` VALUES ('768', '14', 'Kota Tegal');
INSERT INTO `kabkota` VALUES ('769', '14', 'Propinsi Jawa Tengah');
INSERT INTO `kabkota` VALUES ('770', '15', 'Kabupaten Bangkalan');
INSERT INTO `kabkota` VALUES ('771', '15', 'Kabupaten Banyuwangi');
INSERT INTO `kabkota` VALUES ('772', '15', 'Kabupaten Blitar');
INSERT INTO `kabkota` VALUES ('773', '15', 'Kabupaten Bojonegoro');
INSERT INTO `kabkota` VALUES ('774', '15', 'Kabupaten Bondowoso');
INSERT INTO `kabkota` VALUES ('775', '15', 'Kabupaten Gresik');
INSERT INTO `kabkota` VALUES ('776', '15', 'Kabupaten Jember');
INSERT INTO `kabkota` VALUES ('777', '15', 'Kabupaten Jombang');
INSERT INTO `kabkota` VALUES ('778', '15', 'Kabupaten Kediri');
INSERT INTO `kabkota` VALUES ('779', '15', 'Kabupaten Lamongan');
INSERT INTO `kabkota` VALUES ('780', '15', 'Kabupaten Lumajang');
INSERT INTO `kabkota` VALUES ('781', '15', 'Kabupaten Madiun');
INSERT INTO `kabkota` VALUES ('782', '15', 'Kabupaten Magetan');
INSERT INTO `kabkota` VALUES ('783', '15', 'Kabupaten Malang');
INSERT INTO `kabkota` VALUES ('784', '15', 'Kabupaten Mojokerto');
INSERT INTO `kabkota` VALUES ('785', '15', 'Kabupaten Nganjuk');
INSERT INTO `kabkota` VALUES ('786', '15', 'Kabupaten Ngawi');
INSERT INTO `kabkota` VALUES ('787', '15', 'Kabupaten Pacitan');
INSERT INTO `kabkota` VALUES ('788', '15', 'Kabupaten Pemekasan');
INSERT INTO `kabkota` VALUES ('789', '15', 'Kabupaten Pasuruan');
INSERT INTO `kabkota` VALUES ('790', '15', 'Kabupaten Ponorogo');
INSERT INTO `kabkota` VALUES ('791', '15', 'Kabupaten Probolinggo');
INSERT INTO `kabkota` VALUES ('792', '15', 'Kabupaten Sampang');
INSERT INTO `kabkota` VALUES ('793', '15', 'Kabupaten Sidoarjo');
INSERT INTO `kabkota` VALUES ('794', '15', 'Kabupaten Situbondo');
INSERT INTO `kabkota` VALUES ('795', '15', 'Kabupaten Sumenep');
INSERT INTO `kabkota` VALUES ('796', '15', 'Kabupaten Trenggalek');
INSERT INTO `kabkota` VALUES ('797', '15', 'Kabupaten Tuban');
INSERT INTO `kabkota` VALUES ('798', '15', 'Kabupaten Tulungagung');
INSERT INTO `kabkota` VALUES ('799', '15', 'Kota Batu');
INSERT INTO `kabkota` VALUES ('800', '15', 'Kota Blitar');
INSERT INTO `kabkota` VALUES ('801', '15', 'Kota Kediri');
INSERT INTO `kabkota` VALUES ('802', '15', 'Kota Madiun');
INSERT INTO `kabkota` VALUES ('803', '15', 'Kota Malang');
INSERT INTO `kabkota` VALUES ('804', '15', 'Kota Mojokerto');
INSERT INTO `kabkota` VALUES ('805', '15', 'Kota Pasuruan');
INSERT INTO `kabkota` VALUES ('806', '15', 'Kota Probolinggo');
INSERT INTO `kabkota` VALUES ('807', '15', 'Kota Surabaya');
INSERT INTO `kabkota` VALUES ('809', '16', 'Kabupaten Bantul');
INSERT INTO `kabkota` VALUES ('810', '16', 'Kabupaten Gunung Kidul');
INSERT INTO `kabkota` VALUES ('811', '16', 'Kabupaten Kulon Progo');
INSERT INTO `kabkota` VALUES ('812', '16', 'Kabupaten Sleman');
INSERT INTO `kabkota` VALUES ('813', '16', 'Kota Yogyakarta');
INSERT INTO `kabkota` VALUES ('814', '16', 'Propinsi D.I.Yogyakarta');
INSERT INTO `kabkota` VALUES ('815', '17', 'Kabupaten Badung');
INSERT INTO `kabkota` VALUES ('816', '17', 'Kabupaten Bangli');
INSERT INTO `kabkota` VALUES ('817', '17', 'Kabupaten Buleleng');
INSERT INTO `kabkota` VALUES ('818', '17', 'Kabupaten Gianyar');
INSERT INTO `kabkota` VALUES ('819', '17', 'Kabupaten Jembrana');
INSERT INTO `kabkota` VALUES ('820', '17', 'Kabupaten Karangasem');
INSERT INTO `kabkota` VALUES ('821', '17', 'Kabupaten Klungkung');
INSERT INTO `kabkota` VALUES ('822', '17', 'Kabupaten Tabanan');
INSERT INTO `kabkota` VALUES ('823', '17', 'Kota Denpasar');
INSERT INTO `kabkota` VALUES ('824', '17', 'Propinsi Bali');
INSERT INTO `kabkota` VALUES ('825', '18', 'Kabupaten Bima');
INSERT INTO `kabkota` VALUES ('826', '18', 'Kabupaten Dompu');
INSERT INTO `kabkota` VALUES ('827', '18', 'Kabupaten Lombok Barat');
INSERT INTO `kabkota` VALUES ('828', '18', 'Kabupaten Lombok Tengah');
INSERT INTO `kabkota` VALUES ('829', '18', 'Kabupaten Lombok Timur');
INSERT INTO `kabkota` VALUES ('830', '18', 'Kabupaten Lombok Utara');
INSERT INTO `kabkota` VALUES ('831', '18', 'Kabupaten Sumbawa');
INSERT INTO `kabkota` VALUES ('832', '18', 'Kabupaten Sumbawa Barat');
INSERT INTO `kabkota` VALUES ('833', '18', 'Kota Bima');
INSERT INTO `kabkota` VALUES ('834', '18', 'Kota Mataram');
INSERT INTO `kabkota` VALUES ('835', '18', 'Propinsi Nusa Tenggara Barat');
INSERT INTO `kabkota` VALUES ('836', '19', 'Kabupaten Kupang');
INSERT INTO `kabkota` VALUES ('837', '19', 'Kabupaten Timor Tengah Selatan');
INSERT INTO `kabkota` VALUES ('838', '19', 'Kabupaten Timor Tengah Utara');
INSERT INTO `kabkota` VALUES ('839', '19', 'Kabupaten Belu');
INSERT INTO `kabkota` VALUES ('840', '19', 'Kabupaten Alor');
INSERT INTO `kabkota` VALUES ('841', '19', 'Kabupaten Flores Timur');
INSERT INTO `kabkota` VALUES ('842', '19', 'Kabupaten Sikka');
INSERT INTO `kabkota` VALUES ('843', '19', 'Kabupaten Ende');
INSERT INTO `kabkota` VALUES ('844', '19', 'Kabupaten Ngada');
INSERT INTO `kabkota` VALUES ('845', '19', 'Kabupaten Manggarai');
INSERT INTO `kabkota` VALUES ('846', '19', 'Kabupaten Sumba Timur');
INSERT INTO `kabkota` VALUES ('847', '19', 'Kabupaten Sumba Barat');
INSERT INTO `kabkota` VALUES ('848', '19', 'Kabupaten Lembata');
INSERT INTO `kabkota` VALUES ('849', '19', 'Kabupaten Rote Ndao');
INSERT INTO `kabkota` VALUES ('850', '19', 'Kabupaten Manggarai Barat');
INSERT INTO `kabkota` VALUES ('851', '19', 'Kabupaten Nagekeo');
INSERT INTO `kabkota` VALUES ('852', '19', 'Kabupaten Sumba Tengah');
INSERT INTO `kabkota` VALUES ('853', '19', 'Kabupaten Sumba Barat Daya');
INSERT INTO `kabkota` VALUES ('854', '19', 'Kabupaten Manggarai Timur');
INSERT INTO `kabkota` VALUES ('855', '19', 'Kabupaten Sabu Raijua');
INSERT INTO `kabkota` VALUES ('856', '19', 'Kota Kupang');
INSERT INTO `kabkota` VALUES ('857', '19', 'Propinsi Nusa Tenggara Timur');
INSERT INTO `kabkota` VALUES ('858', '20', 'Kabupaten Bengkayang');
INSERT INTO `kabkota` VALUES ('859', '20', 'Kabupaten Kapuas Hulu');
INSERT INTO `kabkota` VALUES ('860', '20', 'Kabupaten Kayong Utara');
INSERT INTO `kabkota` VALUES ('861', '20', 'Kabupaten Ketepang');
INSERT INTO `kabkota` VALUES ('862', '20', 'Kabupaten Kubu Raya');
INSERT INTO `kabkota` VALUES ('863', '20', 'Kabupaten Landak');
INSERT INTO `kabkota` VALUES ('864', '20', 'Kabupaten Melawi');
INSERT INTO `kabkota` VALUES ('865', '20', 'Kabupaten Pontianak');
INSERT INTO `kabkota` VALUES ('866', '20', 'Kabupaten Sambas');
INSERT INTO `kabkota` VALUES ('867', '20', 'Kabupaten Sanggau');
INSERT INTO `kabkota` VALUES ('868', '20', 'Kabupaten Sekadau');
INSERT INTO `kabkota` VALUES ('869', '20', 'Kabupaten Sintang');
INSERT INTO `kabkota` VALUES ('870', '20', 'Kota Pontianak');
INSERT INTO `kabkota` VALUES ('871', '20', 'Kota Singkawang');
INSERT INTO `kabkota` VALUES ('872', '20', 'Propinsi Kalimantan Barat');
INSERT INTO `kabkota` VALUES ('873', '21', 'Kabupaten Balangan');
INSERT INTO `kabkota` VALUES ('874', '21', 'Kabupaten Banjar');
INSERT INTO `kabkota` VALUES ('875', '21', 'Kabupaten Barito Kuala');
INSERT INTO `kabkota` VALUES ('876', '21', 'Kabupaten Hulu Sungai Selatan');
INSERT INTO `kabkota` VALUES ('877', '21', 'Kabupaten Hulu Sungai Tengah');
INSERT INTO `kabkota` VALUES ('878', '21', 'Kabupaten Hulu Sungai Utara');
INSERT INTO `kabkota` VALUES ('879', '21', 'Kabupaten Kotabaru');
INSERT INTO `kabkota` VALUES ('880', '21', 'Kabupaten Tabalong');
INSERT INTO `kabkota` VALUES ('881', '21', 'Kabupaten Tanah Bumbu');
INSERT INTO `kabkota` VALUES ('882', '21', 'Kabupaten Tanah Laut');
INSERT INTO `kabkota` VALUES ('883', '21', 'Kabupaten Tapin');
INSERT INTO `kabkota` VALUES ('884', '21', 'Kota Banjarbaru');
INSERT INTO `kabkota` VALUES ('885', '21', 'Kota Banjarmasin');
INSERT INTO `kabkota` VALUES ('886', '21', 'Propinsi Kalimantan Selatan');
INSERT INTO `kabkota` VALUES ('887', '22', 'Kabupaten Barito Selatan');
INSERT INTO `kabkota` VALUES ('888', '22', 'Kabupaten Barito Timur');
INSERT INTO `kabkota` VALUES ('889', '22', 'Kabupaten Barito Utara');
INSERT INTO `kabkota` VALUES ('890', '22', 'Kabupaten Gunung Mas');
INSERT INTO `kabkota` VALUES ('891', '22', 'Kabupaten Kapuas');
INSERT INTO `kabkota` VALUES ('892', '22', 'Kabupaten Katingan');
INSERT INTO `kabkota` VALUES ('893', '22', 'Kabupaten Kotawaringin Barat');
INSERT INTO `kabkota` VALUES ('894', '22', 'Kabupaten Kotawaringin Timur');
INSERT INTO `kabkota` VALUES ('895', '22', 'Kabupaten Lamandau');
INSERT INTO `kabkota` VALUES ('896', '22', 'Kabupaten Murung Raya');
INSERT INTO `kabkota` VALUES ('897', '22', 'Kabupaten Pulang Pisau');
INSERT INTO `kabkota` VALUES ('898', '22', 'Kabupaten Sukamara');
INSERT INTO `kabkota` VALUES ('899', '22', 'Kabupaten Seruyan');
INSERT INTO `kabkota` VALUES ('900', '22', 'Kota Palangka Raya');
INSERT INTO `kabkota` VALUES ('901', '22', 'Propinsi kalimantan Tengah');
INSERT INTO `kabkota` VALUES ('902', '23', 'Kabupaten Berau');
INSERT INTO `kabkota` VALUES ('903', '23', 'Kabupaten Kutai Barat');
INSERT INTO `kabkota` VALUES ('904', '23', 'Kabupaten Kutai Kartanegara');
INSERT INTO `kabkota` VALUES ('905', '23', 'Kabupaten Kutai Timur');
INSERT INTO `kabkota` VALUES ('906', '23', 'Kabupaten Mahakam Ulu');
INSERT INTO `kabkota` VALUES ('907', '23', 'Kabupaten Paser');
INSERT INTO `kabkota` VALUES ('908', '23', 'Kabupaten Penajam Paser Utara');
INSERT INTO `kabkota` VALUES ('909', '23', 'Kota Balikpapan');
INSERT INTO `kabkota` VALUES ('910', '23', 'Kota Bontang');
INSERT INTO `kabkota` VALUES ('911', '23', 'Kota Samarinda');
INSERT INTO `kabkota` VALUES ('912', '23', 'Propinsi Kalimantan Timur');
INSERT INTO `kabkota` VALUES ('913', '24', 'Kabupaten Boalemo');
INSERT INTO `kabkota` VALUES ('914', '24', 'Kabupaten Bone Bolango');
INSERT INTO `kabkota` VALUES ('915', '24', 'Kabupaten Gorontalo');
INSERT INTO `kabkota` VALUES ('916', '24', 'Kabupaten Gorontalo Utara');
INSERT INTO `kabkota` VALUES ('917', '24', 'Kabupaten Pohuwato');
INSERT INTO `kabkota` VALUES ('918', '24', 'Kota Gorontalo');
INSERT INTO `kabkota` VALUES ('919', '24', 'Propinsi Gorontalo');
INSERT INTO `kabkota` VALUES ('920', '25', 'Kabupaten Bantaeng');
INSERT INTO `kabkota` VALUES ('921', '25', 'Kabupaten Barru');
INSERT INTO `kabkota` VALUES ('922', '25', 'Kabupaten Bone');
INSERT INTO `kabkota` VALUES ('923', '25', 'Kabupaten Bulukumba');
INSERT INTO `kabkota` VALUES ('924', '25', 'Kabupaten Enrekang');
INSERT INTO `kabkota` VALUES ('925', '25', 'Kabupaten Gowa');
INSERT INTO `kabkota` VALUES ('926', '25', 'Kabupaten Jeneponto');
INSERT INTO `kabkota` VALUES ('927', '25', 'Kabupaten Jepulauan Selayar');
INSERT INTO `kabkota` VALUES ('928', '25', 'Kabupaten Luwu');
INSERT INTO `kabkota` VALUES ('929', '25', 'Kabupaten Luwu Timur');
INSERT INTO `kabkota` VALUES ('930', '25', 'Kabupaten Luwu Utara');
INSERT INTO `kabkota` VALUES ('931', '25', 'Kabupaten Maros');
INSERT INTO `kabkota` VALUES ('932', '25', 'Kabupaten Pangkajene dan Kepulauan');
INSERT INTO `kabkota` VALUES ('933', '25', 'Kabupaten Pinrang');
INSERT INTO `kabkota` VALUES ('934', '25', 'Kabupaten Sindenreng Rappang');
INSERT INTO `kabkota` VALUES ('935', '25', 'Kabupaten Sinjai');
INSERT INTO `kabkota` VALUES ('936', '25', 'Kabupaten Soppeng');
INSERT INTO `kabkota` VALUES ('937', '25', 'Kabupaten Takalar');
INSERT INTO `kabkota` VALUES ('938', '25', 'Kabupaten Tana Toraja');
INSERT INTO `kabkota` VALUES ('939', '25', 'Kabupaten Toraja Utara');
INSERT INTO `kabkota` VALUES ('940', '25', 'Kabupaten Wajo');
INSERT INTO `kabkota` VALUES ('941', '25', 'Kota Makasar');
INSERT INTO `kabkota` VALUES ('942', '25', 'Kota Palopo');
INSERT INTO `kabkota` VALUES ('943', '25', 'Kota Parepare');
INSERT INTO `kabkota` VALUES ('944', '25', 'Propinsi Sulawesi Selatan');
INSERT INTO `kabkota` VALUES ('945', '26', 'Kabupaten Bombana');
INSERT INTO `kabkota` VALUES ('946', '26', 'Kabupaten Buton');
INSERT INTO `kabkota` VALUES ('947', '26', 'Kabupaten Buton Utara');
INSERT INTO `kabkota` VALUES ('948', '26', 'Kabupaten Kolaka');
INSERT INTO `kabkota` VALUES ('949', '26', 'Kabupaten Kolaka Utara');
INSERT INTO `kabkota` VALUES ('950', '26', 'Kabupaten Konawe');
INSERT INTO `kabkota` VALUES ('951', '26', 'Kabupaten Konawe Selatan');
INSERT INTO `kabkota` VALUES ('952', '26', 'Kabupaten Konawe Utara');
INSERT INTO `kabkota` VALUES ('953', '26', 'Kabupaten Muna');
INSERT INTO `kabkota` VALUES ('954', '26', 'Kabupaten Wakatobi');
INSERT INTO `kabkota` VALUES ('955', '26', 'Kota Bau-Bau');
INSERT INTO `kabkota` VALUES ('956', '26', 'Kota Kendari');
INSERT INTO `kabkota` VALUES ('957', '26', 'Propinsi Sulawesi Tenggara');
INSERT INTO `kabkota` VALUES ('958', '27', 'Kabupaten Banggai');
INSERT INTO `kabkota` VALUES ('959', '27', 'Kabupaten Banggai Kepulauan');
INSERT INTO `kabkota` VALUES ('960', '27', 'Kabupaten Buol');
INSERT INTO `kabkota` VALUES ('961', '27', 'Kabupaten Donggala');
INSERT INTO `kabkota` VALUES ('962', '27', 'Kabupaten Morowali');
INSERT INTO `kabkota` VALUES ('963', '27', 'Kabupaten Parigi Moutong');
INSERT INTO `kabkota` VALUES ('964', '27', 'Kabupaten Poso');
INSERT INTO `kabkota` VALUES ('965', '27', 'Kabupaten Tojo Una-Una');
INSERT INTO `kabkota` VALUES ('966', '27', 'Kabupaten Toli-Toli');
INSERT INTO `kabkota` VALUES ('967', '27', 'Kabupaten Sigi');
INSERT INTO `kabkota` VALUES ('968', '27', 'Kota Palu');
INSERT INTO `kabkota` VALUES ('969', '27', 'Propinsi Sulawesi Tengah');
INSERT INTO `kabkota` VALUES ('970', '28', 'Kabupaten Bolaang Mongondow');
INSERT INTO `kabkota` VALUES ('971', '28', 'Kabupaten Bolaang Mongondow Selatan');
INSERT INTO `kabkota` VALUES ('972', '28', 'Kabupaten Bolaang Mongondow Timur');
INSERT INTO `kabkota` VALUES ('973', '28', 'Kabupaten Bolaang Mongondow Utara');
INSERT INTO `kabkota` VALUES ('974', '28', 'Kabupaten Kepulauan Sangihe');
INSERT INTO `kabkota` VALUES ('975', '28', 'Kabupaten Kepulauan Siau Tagulandang Biaro');
INSERT INTO `kabkota` VALUES ('976', '28', 'Kabupaten Kepulauan Talaud');
INSERT INTO `kabkota` VALUES ('977', '28', 'Kabupaten Minahasa');
INSERT INTO `kabkota` VALUES ('978', '28', 'Kabupaten Minahasa Selatan');
INSERT INTO `kabkota` VALUES ('979', '28', 'Kabupaten Minahasa Tenggara');
INSERT INTO `kabkota` VALUES ('980', '28', 'Kabupaten Minahasa Utara');
INSERT INTO `kabkota` VALUES ('981', '28', 'Kota Bitung');
INSERT INTO `kabkota` VALUES ('982', '28', 'Kota Kotomobagu');
INSERT INTO `kabkota` VALUES ('983', '28', 'Kota Manado');
INSERT INTO `kabkota` VALUES ('984', '28', 'Kota Tomohon');
INSERT INTO `kabkota` VALUES ('985', '28', 'Propinsi Sulawesi Utara');
INSERT INTO `kabkota` VALUES ('986', '29', 'Kabupaten Majene');
INSERT INTO `kabkota` VALUES ('987', '29', 'Kabupaten Mamasa');
INSERT INTO `kabkota` VALUES ('988', '29', 'Kabupaten Mamuju');
INSERT INTO `kabkota` VALUES ('989', '29', 'Kabupaten Mamuju Utara');
INSERT INTO `kabkota` VALUES ('990', '29', 'Kabupaten Polewali Mandar');
INSERT INTO `kabkota` VALUES ('991', '29', 'Propinsi Sulawesi Barat');
INSERT INTO `kabkota` VALUES ('992', '30', 'Kabupaten Baru');
INSERT INTO `kabkota` VALUES ('993', '30', 'Kabupaten Baru Selatan');
INSERT INTO `kabkota` VALUES ('994', '30', 'Kabupaten Kepulauan Aru');
INSERT INTO `kabkota` VALUES ('995', '30', 'Kabupaten Maluku Barat Daya');
INSERT INTO `kabkota` VALUES ('996', '30', 'Kabupaten Maluku Tengah');
INSERT INTO `kabkota` VALUES ('997', '30', 'Kabupaten Maluku Tenggara');
INSERT INTO `kabkota` VALUES ('998', '30', 'Kabupaten Maluku Tenggara Barat');
INSERT INTO `kabkota` VALUES ('999', '30', 'Kabupaten Serem Bagian Barat');
INSERT INTO `kabkota` VALUES ('1000', '30', 'Kabupaten Serem Bagian Timur');
INSERT INTO `kabkota` VALUES ('1001', '30', 'Kota Ambon');
INSERT INTO `kabkota` VALUES ('1002', '30', 'Kota Tual');
INSERT INTO `kabkota` VALUES ('1003', '30', 'Propinsi Maluku');
INSERT INTO `kabkota` VALUES ('1004', '31', 'Kabupaten Halmahera Barat');
INSERT INTO `kabkota` VALUES ('1005', '31', 'Kabupaten Halmahera Tengah');
INSERT INTO `kabkota` VALUES ('1006', '31', 'Kabupaten Halmahera Utara');
INSERT INTO `kabkota` VALUES ('1007', '31', 'Kabupaten Halmahera Selatan');
INSERT INTO `kabkota` VALUES ('1008', '31', 'Kabupaten Kepulauan Sula');
INSERT INTO `kabkota` VALUES ('1009', '31', 'Kabupaten Halmahera Timur');
INSERT INTO `kabkota` VALUES ('1010', '31', 'Kabupaten Pulau Morotai');
INSERT INTO `kabkota` VALUES ('1011', '31', 'Kota Ternate');
INSERT INTO `kabkota` VALUES ('1012', '31', 'Kota Tidore Kepulauan');
INSERT INTO `kabkota` VALUES ('1013', '31', 'Propinsi Maluku Utara');
INSERT INTO `kabkota` VALUES ('1014', '32', 'Kabupaten Asmat');
INSERT INTO `kabkota` VALUES ('1015', '32', 'Kabupaten Biak Numfor');
INSERT INTO `kabkota` VALUES ('1016', '32', 'Kabupaten Boven Digoel');
INSERT INTO `kabkota` VALUES ('1017', '32', 'Kabupaten Deiyai');
INSERT INTO `kabkota` VALUES ('1018', '32', 'Kabupaten Dogiyai');
INSERT INTO `kabkota` VALUES ('1019', '32', 'Kabupaten Intan Jaya');
INSERT INTO `kabkota` VALUES ('1020', '32', 'Kabupaten Jayapura');
INSERT INTO `kabkota` VALUES ('1021', '32', 'Kabupaten Jayawijaya');
INSERT INTO `kabkota` VALUES ('1022', '32', 'Kabupaten Keerom');
INSERT INTO `kabkota` VALUES ('1023', '32', 'Kabupaten Kepulauan Yapen');
INSERT INTO `kabkota` VALUES ('1024', '32', 'Kabupaten Lanny Jaya');
INSERT INTO `kabkota` VALUES ('1025', '32', 'Kabupaten Mamberamo Raya');
INSERT INTO `kabkota` VALUES ('1026', '32', 'Kabupaten Mamberamo Tengah');
INSERT INTO `kabkota` VALUES ('1027', '32', 'Kabupaten Mappi');
INSERT INTO `kabkota` VALUES ('1028', '32', 'Kabupaten Merauke');
INSERT INTO `kabkota` VALUES ('1029', '32', 'Kabupaten Mimika');
INSERT INTO `kabkota` VALUES ('1030', '32', 'Kabupaten Nabire');
INSERT INTO `kabkota` VALUES ('1031', '32', 'Kabupaten Nduga');
INSERT INTO `kabkota` VALUES ('1032', '32', 'Kabupaten Paniai');
INSERT INTO `kabkota` VALUES ('1033', '32', 'Kabupaten Pegunungan Bintang');
INSERT INTO `kabkota` VALUES ('1034', '32', 'Kabupaten Puncak');
INSERT INTO `kabkota` VALUES ('1035', '32', 'Kabupaten Puncak Jaya');
INSERT INTO `kabkota` VALUES ('1036', '32', 'Kabupaten Sarmi');
INSERT INTO `kabkota` VALUES ('1037', '32', 'Kabupaten Supiori');
INSERT INTO `kabkota` VALUES ('1038', '32', 'Kabupaten Talikara');
INSERT INTO `kabkota` VALUES ('1039', '32', 'Kabupaten Waropen');
INSERT INTO `kabkota` VALUES ('1040', '32', 'Kabupaten Yahukimo');
INSERT INTO `kabkota` VALUES ('1041', '32', 'Kabupaten Yalimo');
INSERT INTO `kabkota` VALUES ('1042', '32', 'Propinsi Papua');
INSERT INTO `kabkota` VALUES ('1043', '33', 'Kabupaten Fakfak');
INSERT INTO `kabkota` VALUES ('1044', '33', 'Kabupaten Kaimana');
INSERT INTO `kabkota` VALUES ('1045', '33', 'Kabupaten Manokwari');
INSERT INTO `kabkota` VALUES ('1046', '33', 'Kabupaten Maybrat');
INSERT INTO `kabkota` VALUES ('1047', '33', 'Kabupaten Raja Ampat');
INSERT INTO `kabkota` VALUES ('1048', '33', 'Kabupaten Sorong');
INSERT INTO `kabkota` VALUES ('1049', '33', 'Kabupaten Sorong Selatan');
INSERT INTO `kabkota` VALUES ('1050', '33', 'Kabupaten Tambrauw');
INSERT INTO `kabkota` VALUES ('1051', '33', 'Kabupaten Teluk Bintuni');
INSERT INTO `kabkota` VALUES ('1052', '33', 'Kabupaten Teluk Wondama');
INSERT INTO `kabkota` VALUES ('1053', '33', 'Kota Sorong');
INSERT INTO `kabkota` VALUES ('1054', '33', 'Propinsi Papua Barat');
INSERT INTO `kabkota` VALUES ('1055', '1', 'Kabupaten Bener Meriah');

-- ----------------------------
-- Table structure for `kategori_artikel`
-- ----------------------------
DROP TABLE IF EXISTS `kategori_artikel`;
CREATE TABLE `kategori_artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori_artikel
-- ----------------------------
INSERT INTO `kategori_artikel` VALUES ('1', 'Berita');
INSERT INTO `kategori_artikel` VALUES ('9', 'Profil Web');

-- ----------------------------
-- Table structure for `kategori_barang`
-- ----------------------------
DROP TABLE IF EXISTS `kategori_barang`;
CREATE TABLE `kategori_barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori_barang
-- ----------------------------
INSERT INTO `kategori_barang` VALUES ('1', 'Cassava Chips');
INSERT INTO `kategori_barang` VALUES ('2', 'Casstaro Chips');

-- ----------------------------
-- Table structure for `kategori_umum`
-- ----------------------------
DROP TABLE IF EXISTS `kategori_umum`;
CREATE TABLE `kategori_umum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `golongan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori_umum
-- ----------------------------
INSERT INTO `kategori_umum` VALUES ('1', null, '1');

-- ----------------------------
-- Table structure for `kecamatan`
-- ----------------------------
DROP TABLE IF EXISTS `kecamatan`;
CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kabkota_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `provinsi_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kecamatan
-- ----------------------------
INSERT INTO `kecamatan` VALUES ('3', '702', 'Tambun', '2015-07-02 20:35:47', '12');
INSERT INTO `kecamatan` VALUES ('4', '783', 'Blimbing', '2015-07-24 00:48:29', '15');
INSERT INTO `kecamatan` VALUES ('5', '803', 'Klojen', '2015-07-03 04:21:17', '15');
INSERT INTO `kecamatan` VALUES ('10', '783', 'Klojen', '2015-07-24 00:48:18', '15');
INSERT INTO `kecamatan` VALUES ('11', '783', 'Sukun', '2015-07-24 00:48:47', '15');
INSERT INTO `kecamatan` VALUES ('12', '702', 'Kranji', '2015-07-03 19:46:44', '12');
INSERT INTO `kecamatan` VALUES ('13', '807', 'Sukolilo', '2015-07-03 19:47:00', '15');
INSERT INTO `kecamatan` VALUES ('14', '807', 'Benowo', '2015-07-03 19:47:05', '15');
INSERT INTO `kecamatan` VALUES ('15', '793', 'Tanggulangin', '2015-07-03 19:47:54', '15');
INSERT INTO `kecamatan` VALUES ('16', '793', 'Porong', '2015-07-03 19:47:58', '15');
INSERT INTO `kecamatan` VALUES ('17', '791', 'Kraksaan', '2015-07-03 19:49:26', '15');
INSERT INTO `kecamatan` VALUES ('18', '791', 'Prasi', '2015-07-03 19:50:06', '15');
INSERT INTO `kecamatan` VALUES ('19', '791', 'Leces', '2015-07-03 19:50:24', '15');
INSERT INTO `kecamatan` VALUES ('20', '791', 'Pajarakan', '2015-07-03 19:50:31', '15');
INSERT INTO `kecamatan` VALUES ('21', '791', 'Paiton', '2015-07-03 19:50:36', '15');
INSERT INTO `kecamatan` VALUES ('22', '791', 'Maron', '2015-07-03 19:50:40', '15');
INSERT INTO `kecamatan` VALUES ('23', '789', 'Bangil', '2015-07-26 15:07:07', '15');

-- ----------------------------
-- Table structure for `kurir`
-- ----------------------------
DROP TABLE IF EXISTS `kurir`;
CREATE TABLE `kurir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kurir
-- ----------------------------
INSERT INTO `kurir` VALUES ('1', 'Pandu Logistic -  Over Night Service', '');
INSERT INTO `kurir` VALUES ('2', 'Pandu Logistic - Same Day Service', '');
INSERT INTO `kurir` VALUES ('3', 'Pandu Logistic - Regular', '');
INSERT INTO `kurir` VALUES ('4', 'Wahana - Service Normal', '');
INSERT INTO `kurir` VALUES ('5', 'Wahana - Service Express', '');
INSERT INTO `kurir` VALUES ('6', 'JNE Regular', '');
INSERT INTO `kurir` VALUES ('7', 'JNE YES', '');

-- ----------------------------
-- Table structure for `main_menu`
-- ----------------------------
DROP TABLE IF EXISTS `main_menu`;
CREATE TABLE `main_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `nama` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `aktif` tinyint(1) NOT NULL,
  `tipe` enum('Internal Link','Eksternal Link') NOT NULL DEFAULT 'Internal Link',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of main_menu
-- ----------------------------
INSERT INTO `main_menu` VALUES ('1', '0', 'Warga', '#', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('2', '0', 'Bisnis', '#', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('3', '0', 'Pemerintah', '#', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('4', '0', 'Pariwisata', '#', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('5', '1', 'Kesehatan', 'menu/kesehatan', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('6', '1', 'Pendidikan', 'menu/pendidikan', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('7', '1', 'Perumahan', 'menu/perumahan', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('8', '1', 'Transportasi', 'menu/transportasi', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('9', '1', 'Pelabuhan', 'menu/pelabuhan', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('10', '2', 'Bisnis di batam', 'menu/bisnis_di_batam', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('11', '2', 'Infrastruktur', 'menu/infrastruktur', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('12', '2', 'Kawasan Bisnis', 'menu/kawasan_bisnis', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('13', '2', 'Koperasi & UKM', 'menu/koperasi_ukm', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('14', '2', 'Sispadu', 'menu/sispadu', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('15', '3', 'Profil Kota', 'menu/profil_kota', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('16', '3', 'Visi dan Misi', 'menu/visi_misi', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('17', '3', 'Pemerintahan', 'menu/pemerintahan', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('18', '3', 'Surat Kependudukan', 'menu/surat_kependudukan', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('19', '3', 'JDIH Batam', 'menu/jdih', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('20', '4', 'Wisata Bahari', 'menu/wisata_bahari', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('21', '4', 'Wisata Belanja', 'menu/wisata_belanja', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('22', '4', 'Wisata Religi', 'menu/wisata_religi', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('23', '4', 'Wisata Budaya', 'menu/wisata_budaya', '1', 'Internal Link');
INSERT INTO `main_menu` VALUES ('24', '4', 'Wisata Kuliner', 'menu/wisata_kuliner', '1', 'Internal Link');

-- ----------------------------
-- Table structure for `menu_icon`
-- ----------------------------
DROP TABLE IF EXISTS `menu_icon`;
CREATE TABLE `menu_icon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `aktif` tinyint(1) DEFAULT '1',
  `url` varchar(150) DEFAULT NULL,
  `tipe` enum('Internal Link','Eksternal Link') DEFAULT 'Internal Link',
  `image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu_icon
-- ----------------------------
INSERT INTO `menu_icon` VALUES ('1', 'Pengaduan Masyarakat', '1', '#', 'Internal Link', 'asset/images/pesan.png');
INSERT INTO `menu_icon` VALUES ('2', 'Layanan Perizinan', '1', '#', 'Internal Link', 'asset/images/cek-list.png');
INSERT INTO `menu_icon` VALUES ('3', 'Informasi Keuangan', '1', '#', 'Internal Link', 'asset/images/grafik.png');
INSERT INTO `menu_icon` VALUES ('4', 'Aplikasi Informasi Publik', '1', '#', 'Internal Link', 'asset/images/info.png');
INSERT INTO `menu_icon` VALUES ('5', 'Statistik Batam', '1', '#', 'Internal Link', 'asset/images/grafik.png');
INSERT INTO `menu_icon` VALUES ('6', 'Pajak & Retribusi', '1', '#', 'Internal Link', 'asset/images/cek-list.png');
INSERT INTO `menu_icon` VALUES ('7', 'Layanan Publik', '1', '#', 'Internal Link', 'asset/images/info.png');
INSERT INTO `menu_icon` VALUES ('8', 'Sub Domain', '1', '#', 'Internal Link', 'asset/images/pesan.png');
INSERT INTO `menu_icon` VALUES ('9', 'Open Data', '1', '#', 'Internal Link', 'asset/images/grafik.png');

-- ----------------------------
-- Table structure for `pelanggan`
-- ----------------------------
DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_pelanggan` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `kab_kota` varchar(50) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktif` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `is_new` tinyint(4) NOT NULL DEFAULT '1',
  `fb` varchar(100) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pelanggan
-- ----------------------------
INSERT INTO `pelanggan` VALUES ('13', 'CUST-PRDY', 'Taufik', '', '', '0', '', '2015-08-17 15:20:47', '0', 'alfhan@yahoo.co.id', '08d27a38374d4ed1ac22999f3a40dd5b3891460d', '', '1', '');
INSERT INTO `pelanggan` VALUES ('11', 'CUST-001', 'Taufik Ute Alfan', 'Jl. Semolowaru Indah II N-14', 'Surabaya', '610928', '08993484898', '2015-08-28 11:07:39', '0', 'alfhanz@gmail.com', '63982e54a7aeb0d89910475ba6dbd3ca6dd4e5a1', '55dfde8b343aa.jpg', '1', 'https://www.facebook.com/Agen.Pulsa.Online');
INSERT INTO `pelanggan` VALUES ('12', 'CUST-TOMG', 'inneke', '', '', '0', '', '2015-07-11 19:15:40', '0', 'kusumaningrum.inneke@gmail.com', '5e8e5e91c1bc68d05ad079b9b3632a9e6641c64a', '', '1', '');
INSERT INTO `pelanggan` VALUES ('14', 'CUST-RG0H', 'Kusumaningrum', '', '', '0', '', '2015-08-28 10:48:01', '0', 'kusumaningruminneke@gmail.com', '08d27a38374d4ed1ac22999f3a40dd5b3891460d', '', '1', 'https://www.facebook.com/Agen.Pulsa.Online');

-- ----------------------------
-- Table structure for `pesan`
-- ----------------------------
DROP TABLE IF EXISTS `pesan`;
CREATE TABLE `pesan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pelanggan_id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `tipe` varchar(25) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `waktu` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pesan
-- ----------------------------
INSERT INTO `pesan` VALUES ('1', '11', 'Sudah Saya transfer\nNO Invoice 6SI10E\nTotal 285.000\nBank Mandiri Atas Nama Sutrisno', 'Order Barang', '2015-08-14 14:45:18', '0', '2015-08-14 14:44:53', '1', '0', 'alfhanz@gmail.com', 'Konfirmasi Pembayaran');
INSERT INTO `pesan` VALUES ('2', '0', 'Terimakasih, Pembayaran telah kami terima', '', '2015-08-14 14:47:31', '1', '2015-08-14 14:47:31', '0', '1', '', '');
INSERT INTO `pesan` VALUES ('3', '0', 'Ada harga khusus reseller?', 'Contact Us', '2015-08-14 19:48:00', '0', '2015-08-14 00:00:00', '1', '0', 'alfhanz@gmail.com', '(Taufik Ute Alfan) Reseller');
INSERT INTO `pesan` VALUES ('4', '0', 'Sudah kami proses, dalam pengiriman ke JNE. resi menyusul', '', '2015-08-14 19:49:13', '1', '2015-08-14 19:49:13', '0', '1', '', '');
INSERT INTO `pesan` VALUES ('5', '11', 'no invoice BRZ26A\nBANK MANDIRI\n555000\nTAUFIK UTE ALFAN\n17-08-2015', 'Order Barang', '2015-08-17 15:03:50', '0', '2015-08-17 15:02:33', '1', '0', 'alfhanz@gmail.com', 'Konfirmasi Pembayaran');
INSERT INTO `pesan` VALUES ('6', '0', 'oke sudah kami terima', '', '2015-08-17 15:04:31', '5', '2015-08-17 15:04:31', '0', '1', '', '');

-- ----------------------------
-- Table structure for `profil`
-- ----------------------------
DROP TABLE IF EXISTS `profil`;
CREATE TABLE `profil` (
  `id` tinyint(1) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `kabkota` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of profil
-- ----------------------------
INSERT INTO `profil` VALUES ('1', 'Batam Website', 'Jl. Semolowaru Indah II N-14', '087881596699', 'oenlezsnack@gmail.com', 'logo.jpg', '', '', 'Surabaya, Jawa Timur');

-- ----------------------------
-- Table structure for `provinsi`
-- ----------------------------
DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provinsi
-- ----------------------------
INSERT INTO `provinsi` VALUES ('1', 'Aceh');
INSERT INTO `provinsi` VALUES ('2', 'Sumatera Utara');
INSERT INTO `provinsi` VALUES ('3', 'Bengkulu');
INSERT INTO `provinsi` VALUES ('4', 'Jambi');
INSERT INTO `provinsi` VALUES ('5', 'Riau');
INSERT INTO `provinsi` VALUES ('6', 'Sumatera Barat');
INSERT INTO `provinsi` VALUES ('7', 'Sumatera Selatan');
INSERT INTO `provinsi` VALUES ('8', 'Lampung');
INSERT INTO `provinsi` VALUES ('9', 'Kepulauan Bangka Belitung');
INSERT INTO `provinsi` VALUES ('10', 'Kepulauan Riau');
INSERT INTO `provinsi` VALUES ('11', 'Banten');
INSERT INTO `provinsi` VALUES ('12', 'Jawa Barat');
INSERT INTO `provinsi` VALUES ('13', 'DKI Jakarta');
INSERT INTO `provinsi` VALUES ('14', 'Jawa Tengah');
INSERT INTO `provinsi` VALUES ('15', 'Jawa Timur');
INSERT INTO `provinsi` VALUES ('16', 'Derah Istimewa Yogyakarta');
INSERT INTO `provinsi` VALUES ('17', 'Bali');
INSERT INTO `provinsi` VALUES ('18', 'Nusa Tenggara Barat');
INSERT INTO `provinsi` VALUES ('19', 'Nusa Tenggara Timur');
INSERT INTO `provinsi` VALUES ('20', 'Kalimantan Barat');
INSERT INTO `provinsi` VALUES ('21', 'Kalimantan Selatan');
INSERT INTO `provinsi` VALUES ('22', 'Kalimantan Tengah');
INSERT INTO `provinsi` VALUES ('23', 'Kalimantan Timur');
INSERT INTO `provinsi` VALUES ('24', 'Gorontalo');
INSERT INTO `provinsi` VALUES ('25', 'Sulawesi Selatan');
INSERT INTO `provinsi` VALUES ('26', 'Sulawesi Tenggara');
INSERT INTO `provinsi` VALUES ('27', 'Sulawesi Tengah');
INSERT INTO `provinsi` VALUES ('28', 'Sulawesi Utara');
INSERT INTO `provinsi` VALUES ('29', 'Sulawesi Barat');
INSERT INTO `provinsi` VALUES ('30', 'Maluku');
INSERT INTO `provinsi` VALUES ('31', 'Maluku Utara');
INSERT INTO `provinsi` VALUES ('32', 'Papua');
INSERT INTO `provinsi` VALUES ('33', 'Papua Barat');

-- ----------------------------
-- Table structure for `reviews`
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `barang_id` int(11) NOT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reviews
-- ----------------------------

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `id` char(36) NOT NULL,
  `tanggal` date NOT NULL,
  `no_invoice` varchar(10) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `kabkota_id` int(11) NOT NULL,
  `kecamatan_id` int(11) NOT NULL,
  `harga_kirim_id` int(11) NOT NULL,
  `harga_kirim` decimal(10,0) NOT NULL,
  `total` int(11) NOT NULL COMMENT 'total tanpa harga_kirim',
  `pelanggan_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status_order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES ('5fe799ba-ec76-4e1a-873b-533967b1a4e2', '2015-08-17', 'BRZ26A', '15', '783', '0', '1', '15000', '540000', '11', 'taufik ute alfan', 'jl. tirtomulyo 21', '65151', '08993484898', 'Campur ya ', '2015-08-17 15:07:12', '5');

-- ----------------------------
-- Table structure for `shop_detail`
-- ----------------------------
DROP TABLE IF EXISTS `shop_detail`;
CREATE TABLE `shop_detail` (
  `id` char(36) NOT NULL,
  `shop_id` char(36) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `harga` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shop_detail
-- ----------------------------
INSERT INTO `shop_detail` VALUES ('8cce35f9-86dc-4f42-991f-fdec37339024', '5fe799ba-ec76-4e1a-873b-533967b1a4e2', '16', '2', '2500', '270000');

-- ----------------------------
-- Table structure for `slide_show`
-- ----------------------------
DROP TABLE IF EXISTS `slide_show`;
CREATE TABLE `slide_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `judul` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slide_show
-- ----------------------------
INSERT INTO `slide_show` VALUES ('2', '55d44aa123bbb.jpg', 'No Artificial Flavour,&nbsp;No Artificial Colour,&nbsp;No MSG added,&nbsp;No Preservatives,&nbsp;No Gluten', '2015-08-19 16:21:38', 'Fresh From Nature');
INSERT INTO `slide_show` VALUES ('3', '55d44a9730e52.jpg', '<b>What Is Oenlez? OENLEZ&nbsp;</b>is the Abreviation og Oenal Lezat which means the food has an incridible <b>DELICIOUS </b>taste.', '2015-08-19 16:21:28', 'Gluten Free MSG');
INSERT INTO `slide_show` VALUES ('4', '55d44a8e22807.jpg', '<b>Barang baru<br></b>adasda<br><b>asdasdad</b>', '2015-08-19 16:21:19', 'New Face 1');

-- ----------------------------
-- Table structure for `sys_group`
-- ----------------------------
DROP TABLE IF EXISTS `sys_group`;
CREATE TABLE `sys_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_group
-- ----------------------------
INSERT INTO `sys_group` VALUES ('1', 'ADMIN');

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `nama` varchar(35) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `icon` varchar(25) DEFAULT NULL,
  `urutan` tinyint(3) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', 'Main', '#', 'fa fa-th', '1', '1');
INSERT INTO `sys_menu` VALUES ('2', '1', 'Jenis Barang', 'jenis_barang', null, '1', '2');
INSERT INTO `sys_menu` VALUES ('3', '1', 'Kategori Produk', 'kategori_barang', null, '2', '2');
INSERT INTO `sys_menu` VALUES ('4', '1', 'Pengguna Aplikasi', 'usermanagement', null, '1', '2');
INSERT INTO `sys_menu` VALUES ('5', '0', 'Sales Management', '#', 'fa fa-shopping-cart', '2', '1');
INSERT INTO `sys_menu` VALUES ('6', '5', 'Customers', 'daftar_pelanggan', null, '1', '2');
INSERT INTO `sys_menu` VALUES ('7', '1', 'Daftar Produk', 'barang', null, '4', '2');
INSERT INTO `sys_menu` VALUES ('8', '5', 'Daftar Penjualan', 'daftar_penjualan', null, '2', '2');
INSERT INTO `sys_menu` VALUES ('9', '0', 'Article Management', '#', 'fa fa-file-o', '3', '1');
INSERT INTO `sys_menu` VALUES ('10', '5', 'Rekap Penjualan', 'rekap', null, '3', '2');
INSERT INTO `sys_menu` VALUES ('11', '5', 'Notifikasi', 'notifikasi', null, '4', '2');
INSERT INTO `sys_menu` VALUES ('12', '9', 'Kategori Artikel', 'kategori_artikel', null, '1', '2');
INSERT INTO `sys_menu` VALUES ('13', '1', 'Profil Usaha', 'profil', null, '2', '2');
INSERT INTO `sys_menu` VALUES ('14', '9', 'Daftar Artikel', 'daftar_artikel', null, '2', '2');
INSERT INTO `sys_menu` VALUES ('15', '1', 'Menu Management', 'menu_management', null, '5', '2');
INSERT INTO `sys_menu` VALUES ('16', '9', 'Slide Show', 'slide_show', null, '3', '2');
INSERT INTO `sys_menu` VALUES ('17', '0', 'Other', '#', 'fa fa-th', '4', '1');
INSERT INTO `sys_menu` VALUES ('18', '17', 'Banner', 'banner_management', null, '1', '2');
INSERT INTO `sys_menu` VALUES ('19', '17', 'Shipping Payment', 'wilayah', null, '2', '2');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(35) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `pegawai_id` varchar(40) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `id` (`id`),
  KEY `pegawai_id` (`pegawai_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'Administrator', '1', 'alfhan@yahoo.co.id', '', '08993484898', null, '8b3fa3bfbc79f7cc1a626a7a68e612a8.jpg');
INSERT INTO `sys_user` VALUES ('3', 'operator2', '81dc9bdb52d04dc20036dbd8313ed055', 'Operator 2', '1', '', '', '', null, null);

-- ----------------------------
-- Table structure for `sys_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group`;
CREATE TABLE `sys_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_user_group
-- ----------------------------
INSERT INTO `sys_user_group` VALUES ('1', '1', '1');
INSERT INTO `sys_user_group` VALUES ('2', '2', null);
INSERT INTO `sys_user_group` VALUES ('3', '3', '1');
INSERT INTO `sys_user_group` VALUES ('4', '4', '1');
INSERT INTO `sys_user_group` VALUES ('5', '5', '1');
INSERT INTO `sys_user_group` VALUES ('6', '6', '1');
INSERT INTO `sys_user_group` VALUES ('7', '7', '1');
INSERT INTO `sys_user_group` VALUES ('8', '8', '1');
INSERT INTO `sys_user_group` VALUES ('9', '9', '1');
INSERT INTO `sys_user_group` VALUES ('10', '10', '1');
INSERT INTO `sys_user_group` VALUES ('11', '11', '1');
INSERT INTO `sys_user_group` VALUES ('12', '14', '1');
INSERT INTO `sys_user_group` VALUES ('13', '15', null);
INSERT INTO `sys_user_group` VALUES ('14', '16', '1');
INSERT INTO `sys_user_group` VALUES ('15', '17', '1');
INSERT INTO `sys_user_group` VALUES ('16', '18', '1');
INSERT INTO `sys_user_group` VALUES ('17', '19', '1');
INSERT INTO `sys_user_group` VALUES ('18', '7', '3');
INSERT INTO `sys_user_group` VALUES ('19', '12', '1');
INSERT INTO `sys_user_group` VALUES ('20', '12', '3');
INSERT INTO `sys_user_group` VALUES ('21', '10', null);
INSERT INTO `sys_user_group` VALUES ('22', '11', '1');
INSERT INTO `sys_user_group` VALUES ('23', '13', '1');

-- ----------------------------
-- Table structure for `temp_jual`
-- ----------------------------
DROP TABLE IF EXISTS `temp_jual`;
CREATE TABLE `temp_jual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sesi_id` varchar(100) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `qty` tinyint(4) NOT NULL,
  `harga` float NOT NULL,
  `pelanggan_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tanggal` date NOT NULL,
  `berat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of temp_jual
-- ----------------------------
INSERT INTO `temp_jual` VALUES ('5', '9ce5a821234b1ab782670896f08c294c', '10', '12', '4500', '3', '2015-07-09 19:38:50', '2015-07-09', '80');
INSERT INTO `temp_jual` VALUES ('6', '36221bc3ffea6ef9fdbd0291b3bf3535', '10', '1', '11000', '0', '2015-08-14 14:27:37', '2015-08-14', '80');
INSERT INTO `temp_jual` VALUES ('7', 'd224234c34a4c04f577d4353b2050591', '17', '1', '270000', '0', '2015-08-14 14:35:18', '2015-08-14', '2500');
INSERT INTO `temp_jual` VALUES ('8', '5544fcd1859a69d95162f1956ff6e5de', '18', '2', '11000', '11', '2015-08-27 16:16:53', '2015-08-27', '2500');
