/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.9 : Database - e_surat-2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`e_surat-2` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `e_surat-2`;

/*Table structure for table `appconfig` */

DROP TABLE IF EXISTS `appconfig`;

CREATE TABLE `appconfig` (
  `idconfig` int(11) NOT NULL AUTO_INCREMENT,
  `config` varchar(30) NOT NULL,
  `configid` varchar(50) NOT NULL,
  `configorder` int(10) NOT NULL,
  `configname` varchar(100) DEFAULT NULL,
  `configdesc` varchar(200) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL,
  `is_active` char(1) DEFAULT 'Y',
  PRIMARY KEY (`idconfig`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `appconfig` */

insert  into `appconfig`(`idconfig`,`config`,`configid`,`configorder`,`configname`,`configdesc`,`ket`,`is_active`) values (1,'nosurat','2024',1,'Penomoran Surat',NULL,NULL,'Y');

/*Table structure for table `m_dispos` */

DROP TABLE IF EXISTS `m_dispos`;

CREATE TABLE `m_dispos` (
  `id_dispos` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bagian` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_dispos`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `m_dispos` */

insert  into `m_dispos`(`id_dispos`,`nama_bagian`) values (1,'Bagian Keuangan'),(2,'Bagian Perencanaan');

/*Table structure for table `ref_klasifikasi` */

DROP TABLE IF EXISTS `ref_klasifikasi`;

CREATE TABLE `ref_klasifikasi` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=latin1;

/*Data for the table `ref_klasifikasi` */

insert  into `ref_klasifikasi`(`id`,`kode`,`nama`,`uraian`) values (1,'HK','HUKUM','HUKUM'),(2,'HK.00','PERATURAN PERUNDANG-UNDANGAN','Surat-surat yang berkenaan dengan proses penyusunan peraturan perundang-undangan produk Mahkamah Agung, dari konsep / draf smpai selesai, maupun produk peraturan perundang-undangan yang diterima baik intern Mahkamah Agung maupun dari instansi lainnya.'),(3,'HK.00.1','PERATURAN PERUNDANG-UNDANGAN','Undang-undang, termasuk PERPU'),(4,'HK.00.2','PERATURAN PERUNDANG-UNDANGAN','Peraturan Pemerintah.'),(5,'HK.00.3','PERATURAN PERUNDANG-UNDANGAN','Keputusan Presiden, Instruksi Presiden, Penetapan Presiden.'),(6,'HK.00.4','PERATURAN PERUNDANG-UNDANGAN','Peraturan Ketua Mahkamah Agung RI.'),(7,'HK.00.5','PERATURAN PERUNDANG-UNDANGAN','Keputusan Ketua Mahkamah Agung, Instruksi Mahkamah Agung.'),(8,'HK.00.6','PERATURAN PERUNDANG-UNDANGAN','Keputusan Pejabat Eselon I.'),(9,'HK.00.7','PERATURAN PERUNDANG-UNDANGAN','Surat Edaran Pejabat Eselon I.'),(10,'HK.00.8','PERATURAN PERUNDANG-UNDANGAN','Peraturan Pengadilan Tingkat Banding dan Tingkat Pertama.'),(11,'HK.00.9','PERATURAN PERUNDANG-UNDANGAN','Peraturan PEMDA Tk. I, dan PEMDA Tk. II.'),(12,'HK.01','PIDANA','Surat-surat yang berkenaan dengan penyelesaian perkara pidana, baik pidana kejahatan maupun pidana pelanggaran.'),(176,'HK.02','PERDATA','Surat-surat yang berkenaan dengan penyelesaian perkara perdata, baik gugatan maupun permohonan.'),(177,'HK.03','PERDATA NIAGA','Surat-surat yang berkenaan dengan penyelesaian perkara perdata niaga.'),(178,'HK.04','PIDANA MILITER','Surat-surat yang berkenaan dengan penyelesaian perkara pidana militer.'),(179,'HK.05','PERDATA AGAMA','Surat-surat yang berkenaan dengan penyelesaian perkara perdata agama.'),(180,'HK.06','TATA USAHA NEGARA','Surat-surat yang berkenaan dengan penyelesaian perkara Tata Usaha Negara.'),(181,'HK.07','PIDANA KHUSUS','Surat-surat yang berkenaan dengan penyelesaian perkara pidana khusus.'),(182,'HM','KEHUMASAN','KEHUMASAN'),(183,'HM.00','PENERANGAN','	\r\nSurat-surat yang berkenaan dengan segala kegiatan penerangan terhadap masyarakat tentang kegiatan Mahkamah Agung RI, termasuk di dalamnya :\r\n- konferensi pers,\r\n- pameran,\r\n- wawancara,\r\n- dan penerangan dalam media massa lainnya.'),(184,'HM.01','HUBUNGAN DAN KEPROTOKOLAN','-'),(185,'HM.01.1','HUBUNGAN','Surat-surat yang berhubungan dengan segala kegiatan intern Mahkamah Agung RI, dan antara Mahkamah Agung RI dengan pihak lain, baik dalam maupun luar negeri dalam bidang kehumasan, koordinasi, antara lain :\r\n- bakohumas,\r\n- hearing DPR,\r\n- kelompok kerja (POKJA),\r\n- dan organisasi-organisasi mass media.'),(186,'HM.01.2','KEPROTOKOLAN','Surat-surat yang berkaan dengan masalah keprotokolan, seperti :\r\n- tamu-tamu pimpinan Mahkamah Agung RI baik dalam maupun luar negeri,\r\n- kunjungan kerja pimpinan dan pejabat Mahkamah Agung RI,\r\n- upacara hari nasional, dan\r\n- HUT Mahkamah Agung RI.'),(187,'HM.02','DOKUMENTASI, KEPUSTAKAAN DAN TEKNOLOGI INFORMASI','-'),(188,'HM.02.1','DOKUMENTASI','Surat-surat yang berkenaan dengan kegiatan yang berhubungan dengan penyediaan / pengumpulan bahan / dokumentasi, termasuk penyebarannya.'),(189,'HM.02.2','KEPUSTAKAAN','Surat-surat yang berkenaan dengan kegiatan yang berhubungan dengan penyediaan, pengumpulan, dan penataan bahan-bahan kepustakaan.'),(190,'HM.02.3','TEKNOLOGI INFORMASI','Surat-surat yang berkenaan dengan kegiatan yang berhubungan dengan perencanaan, penyediaan, pemeliharaan, pengelolaan dan hal-hal lain yang berkaitan dengan teknologi informasi.'),(191,'KP','KEPEGAWAIAN','-'),(192,'KP.00','PENGADAAN','-'),(193,'KP.00.1','FORMASI','Surat-surat yang berkenaan dengan perencanaan pengadaan pegawai, nota usul formasi, sampai dengan persetujuan termasuk di dalamnya besetting.'),(194,'KP.00.2','PENERIMAAN','Surat-surat yang berkenaan dengan penerimaan pegawai baru, mulai dari pengumuman penerimaan, panggilan testing / psikotes / clearance test, sampai dengan pengumuman yang diterima, termasuk di dalamnya pegawai honorer, seperti :\r\n- satpam,\r\n- pramusaji,\r\n- supir.'),(195,'KP.00.3','PENGANGKATAN','Surat-surat yang berkenaan dengan seluruh proses pengangkatan, dan penempatan calon pegawai (CPNS) sampai dengan menjadi pegawai (PNS), mulai dari persyaratan, pemeriksaan kesehatan dan keterangan-keterangan lainnya yang berhubungan dengan pengangkatan.'),(196,'KP.01','TATA USAHA KEPEGAWAIAN','-'),(197,'KP.01.1','IZIN / DISPENSASI','Surat-surat yang berkenaan dengan izin tidak masuk kerja atas permintaan yang diajukan oleh pegawai yang bersangkutan, maupun dispensasi yang diajukan oleh instansi lain termasuk tugas pada instansi lain baik tugas belajar maupun tugas di luar negeri bagi pegawai Mahkamah Agung RI.'),(198,'KP.01.2','KETERANGAN','Surat-surat yang berkenaan dengan keterangan pegawai dan keluarganya, termasuk surat-surat yang berkaitan dengan NIP, KARPEG, KARSU / KARIS dan data pegawai / pejabat.'),(199,'KP.02','PENILAIAN DAN HUKUMAN','-'),(200,'KP.02.1','PENILAIAN','Surat-surat yang berkenaan dengan penilaian pelaksanaan pekerjaan, disiplin pegawai, pemalsuan administrasi kepegawaian, rehabilitasi dan pemulihan nama baik.'),(201,'KP.02.2','HUKUMAN','Surat-surat yang berkenaan dengan hukuman pegawai, meliputi :\r\n- teguran tertulis,\r\n- pernyataan tidak puas secara tertulis,\r\n- penundaan kenaikan gaji berkala untuk paling lama 1 (satu) tahun,\r\n- penurunan gaji sebesar 1 (satu) kalli kenaikan gaji berkala untuk paling lama 1 (satu) tahun,\r\n- penundaan kenaikan pangkat untuk paling lama 1 (satu) tahun,\r\n- penurunan pangkat pada pangkat yang setingkat lebih rendah untuk paling lama 1 (satu) tahun,\r\n- pembebasan dan jabatan,\r\n- pemberhentian dengan hormat tidak atas permintaan sendiri sebagai PNS / tenaga teknis / tenaga fungsional,\r\n- pemberhentian tidak dengan hormat sebagai PNS.'),(202,'KP.03','PEMBINAAN MENTAL','Surat-surat yang berkenaan dengan pembinaan mental pegawai, termasuk di dalamnya pembinaan kerohanian.'),(203,'KP.04','MUTASI','-'),(204,'KP.04.1','KEPANGKATAN','Surat-surat yang berkenaan dengan kenaikan dengan kenaikan pangkat / golongan, termasuk di dalamnya ujian dinas, ujian penyesuaian ijazah, dan daftar urut kepangkatan.'),(205,'KP.04.2','KENAIKAN GAJI BERKALA','Surat-surat yang berkenaan dengan kenaikan gaji berkala.'),(206,'KP.04.3','PENYESUAIAN MASA KERJA','Surat-surat yang berkenaan dengan penyesuaian masa kerja untuk perubahan ruang gaji dan impassing.'),(207,'KP.04.4','PENYESUAIAN TUNJANGAN KELUARGA','Surat-surat yang berkenaan dengan penyesuaian tunjangan keluarga.'),(208,'KP.04.5','ALIH TUGAS','Surat-surat yang berkenaan dengan alih tugas bagi para pelaksana / staf, perpindahan dalam rangka pemantapan tugas kerja termasuk mengenai fasilitasnya.'),(209,'KP.04.6','JABATAN STRUKTURAL / FUNGSIONAL','Surat-surat yang berkenaan dengan pengangkatan dan pemberhentian dalam jabatan struktural / fungsional, termasuk tunjangan sewaktu penugasan atau pemberian kuasa untuk menjabat sementara.'),(210,'KP.05','KESEJAHTERAAN','-'),(211,'KP.05.1','KESEHATAN','Surat-surat yang berkenaan dengan penyelenggaraan kesehatan bagi pegawai, meliputi :\r\n- asiuansi kesehatan,\r\n- general check up bagi pimpinan dan pejabat.'),(212,'KP.05.2','CUTI','Surat-surat yang berkenaan dengan cuti pegawai, meliputi :\r\n- cuti sakit,\r\n- cuti hamil / bersalin, dan\r\n- cuti diluar tanggungan negara.'),(213,'KP.05.3','REKREASI DAN OLAH RAGA','Surat-surat yang berkenaan dengan rekreasi dan olah raga.'),(214,'KP.05.4','BANTUAN SOSIAL','Surat-surat yang berkenaan dengan pemberian bantuan / tunjangan sosial kepada pegawai dan keluarga yang mengalamai musibah, termasuk ucapan bela sungkawa'),(215,'KP.05.5','KOPERASI','Surat-surat yang berkenaan dengan organisasi koperasi termasuk didalamnya masalah pengurusan kebutuhan pokok.'),(216,'KP.05.6','PERUMAHAN','Surat-surat yang berkenaan dengan perumahan pegawai, pejabat struktural / fungsional, pimpinan dan hakim agung.'),(217,'KP.05.7','ANTAR JEMPUT','Surat-surat yang berkenaan dengan transportasi pegawai.'),(218,'KP.05.8','PENGHARGAAN','Surat-surat yang berkenaan dengan penghargaan, tanda jasa, piagam, satya lencana, dan sejenisnya.'),(219,'KP.06','PEMUTUSAN HUBUNGAN KERJA','Surat-surat yang berhubungan dengan pensiun pegawai, termasuk jaminan-jaminan asuransi karena berhenti atas permintaan sendiri, berhenti dengan hormat bukan karena hukuman, pindah / keluar dari MA RI dan meninggal dunia.'),(220,'KS','KESEKRETARIATAN','-'),(221,'KS.00','KERUMAHTANGGAN','Surat-surat yang berkenaan dengan :\r\n- penggunaan fasilitas,\r\n- ketertiban dan keamanan,\r\n- konsumsi,\r\n- pakaian dinas,\r\n- papan nama,\r\n- stempel,\r\n- lambang,\r\n- alamat kantor dan pejabat,\r\n- telekomunikasi, listrik, air,\r\n- dan lain sebagainya.'),(222,'KU','KEUANGAN','-'),(223,'KU.00','AKUNTANSI','Surat-surat yang berkenaan dengan penyiapan bahan pelaksanaan dan pembinaan pembukuan keuangan serta penyusunan perhitungan anggaran.'),(224,'KU.01','PELAKSANAAN ANGGARAN','Surat-surat yang berkenaan dengan penyiapan bahan bimbingan dalam pelaksanaan penggunaan anggaran dan pertanggung jawaban keuangan.'),(225,'KU.02','VERIVIKASI DAN TUNTUTAN GANTI RUGI','Surat-surat yang berkenaan dengan penyiapan bahan pencatatan, penelitian, pembinaan, dan penyusunan laporan tentang verivikasi dan tuntutan ganti rugi.'),(226,'KU.03','PERBENDAHARAAN','Surat-surat yang berkenaan dengan penyiapan bahan bimbingan dalam ketatausahaan perbendaharaan, penyelesaian masalah perbendaharaan, dan pelaksanaan pembinaan bendaharawan.'),(227,'KU.04','PENDAPATAN NEGARA','-'),(228,'KU.04.1','PAJAK','Surat-surat yang berkenaan dengan pendapatan negara dan hasil pajak yang meliputi :\r\n- MPO (Menghitung Pajak Orang),\r\n- PPN (Pajak Pendapatan Negara),\r\n- Pajak Jasa,\r\n- PPH (Pajak Pendapatan Penghasilan),\r\n- PPN (Pajak Pertambahan Nilai),\r\n- dan pajak lainnya.'),(229,'KU.04.2','BUKAN PAJAK','Surat-surat yang berkenaan dengan pendapatan negara dan hasil bukan pajak yang meliputi penerimaan dan :\r\n- biaya perkara,\r\n- biaya salinan putusan,\r\n- biaya sewa dari inventaris negara,\r\n- hasil penjualan barang-barang inventaris yang dihapus,\r\n- dan penerimaan negara bukan pajak lainnya.'),(230,'KU.05','PERBANKAN','Surat-surat yang berkenaan dengan perbankan, antara lain :\r\n- pembukaan rekening,\r\n- spasement tanda tangan,\r\n- valuta asing,\r\n- rekening koran, dan\r\n- proyek perbankan lainnya.'),(231,'KU.06','SUMBANGAN / BANTUAN','Surat-surat yang berkenaan dengan permintaan, pemberian sumbangan / bantuan khusus diluar tugas pokok Mahkamah Agung RI, seperti :\r\n- bencana alam,\r\n- kebakaran,\r\n- banjir,\r\n- qurban,\r\n- pekan olah raga,\r\n- dan lain sebagainya.'),(232,'OT','ORGANISASI DAN TATA LAKSANA','-'),(233,'OT.00','ORGANISASI','Surat surat yang berhubungan dengan pembentukan, perubahan organisasi, uraian pekerjaan dan pembahasannya mulai dari awal sampai akhir dan jalur pertanggung jawabannya'),(234,'OT.01.1','PERENCANAAN','Surat surat yang berhubungan dengan penyusunan perencanaan / program kerja oleh unit-unit kerja Mahkamah Agung secara keseluruhan, termasuk segala jenis pertemuan dalam rangka penentuan kebijaksanaan perencanaan.'),(235,'OT.01.2','LAPORAN','Surat surat yang berhubungan dengan laporan umum, monitoring, evaluasi dan unit kerja, baik laporan :\r\n- bulanan,\r\n- triwulan,\r\n- semester, dan\r\n- tahunan.'),(236,'OT.01.3','PENYUSUNAN PROSEDUR KERJA','Surat-surat yang berkenaan dengan penyusunan sistem, prosedur, pedoman, petunjuk pelaksanaan, tata kerja dan hubungan kerja.'),(237,'OT.01.4','PENYUSUNAN PEMBAKUAN SARANA KERJA','Surat-surat yang berhubungan dengan penyusunan pembakuan sarana kerja, yakni penentuan kualitas dan kuantitas yang meliputi :\r\n- ukuran,\r\n- jenis,\r\n- merek dan sebagainya.'),(238,'PB','PENELITIAN DAN PENGEMBANGAN','-'),(239,'PB.00','PENELITIAN HUKUM','Surat-surat yang berkenaan dengan penelitian dan pengembangan hukum, sejak dari awal perencanaan, perizinan, pelaksanaan, sampai dengan pelaporan hasil penelitian.'),(240,'PB.01','PENELITIAN PERADILAN','Surat-surat yang berkenaan dengan penelitian dan pengembangan peradilan, sejak dari perencanaan, perizinan, pelaksanaan, sampai dengan pelaporan hasil penelitian.'),(241,'PB.02','PENGEMBANGAN PENELITIAN','Surat-surat yang berkenaan dengan masalah-masalah pengembangan penelitian dan perencanaan, pelaksanaan, sampai dengan pelaporan'),(242,'PL','PERLENGKAPAN','-'),(243,'PL.01','GEDUNG DAN RUMAH DINAS','Surat-surat yang berkenaan dengan perencanaan, pengadaan, pelelangan, pendistribusian, pemeliharaan dan penghapusan, antara lain :\r\n- bangunan kantor,\r\n- rumah dinas,\r\n- mes,\r\n- pos jaga,\r\n- persetujuan gambar gedung,\r\n- dan lain sebagainya.'),(244,'PL.02','TANAH','Surat-surat yang berkenaan dengan perencanaan, pengadan /pelelangan, pemeliharaan, penghapusan dan tukar guling tanah.'),(245,'PL.03','ALAT KANTOR','Surat-surat yang berkenaan dengan perencaan, pengadaan, pelelangan, pendistribusian, pemeliharaan dan penghapusan, antara lain :\r\n- ATK (Alat Tulis Kantor),\r\n- formulir-formulir,\r\n- dan lain-lain.'),(246,'PL.04','MESIN KANTOR / ALAT-ALAT ELEKTRONIK','Surat-surat yang berkenaan dengan perencanaan, pengadaan, pelelangan, pendistribusian, pemeliharaan dan penghapusan, antara lain :\r\n- AC,\r\n- laptop,\r\n- komputer / PC,\r\n- radio,\r\n- slide,\r\n- mesin stensil,\r\n- tape recorder,\r\n- teleks,\r\n- video taper,\r\n- infocus,\r\n- amplifier,\r\n- foto copy,\r\n- kamera,\r\n- kalkulator / mesin hitung,\r\n- mesin ketik,\r\n- overhead proyektor,\r\n- proyektor film\r\n- dan sebagainya.'),(247,'PL.05','PERABOT KANTOR','Surat-surat yang berkenaan dengan perencanaan, pengadaan, pelelangan, pendistribusian, pemeliharaan, dan penghapusan, antara lain :\r\n- kursi,\r\n- meja,\r\n- lemari,\r\n- filing cabinet rak,\r\n- dan lain-lain yang sejenis.'),(248,'PL.06','KENDARAAN','Surat-surat yang berkenaan dengan masalah kendaraan dari perencanaan, pengadaan, pelelangan, pendistribusian, pemeliharaan dan penghapusan.'),(249,'PL.07','INVENTARIS PERLENGKAPAN','Surat-surat yang berkenaan dengan inventaris perlengkapan, laporan inventaris perlengkapan baik pusat maupun daerah.'),(250,'PL.08','PENAWARAN UMUM','Surat-surat yang berkenaan dengan pelelangan dari mulai persiapan pelelangan, penyusunan RKS, pelaksanaan pelelangan dan pengumuman pemenang, serta hal-hal lain yang berkaitan dengan pelaksanaan pelelangan.'),(251,'PL.09','KETATAUSAHAAN','Surat-surat yang berkenaan dengan korespondensi, kearsipan, penandatanganan surat dan wewenangnya, cap dinas, dan lain sebagainya.'),(252,'PP','PENDIDIKAN DAN PELATIHAN',''),(253,'PP.00','PENDIDIKAN DAN PELATIHAN TEKNIS',''),(254,'PP.00.1','HAKIM','Surat-surat yang berkenaan dengan perencanaan, pelaksanaan, dan evaluasi penyelenggaraan pendidikan dan pelatihan hakim.'),(255,'PP.00.2','PANITERA','Surat-surat yang berkenaan dengan perencanaan, pelaksanaan, dan evaluasi penyelenggaraan pendidikan dan pelatihan panitera.'),(256,'PP.00.3','JURU SITA','Surat-surat yang berkenaan dengan perencanaan, pelaksanaan, dan evaluasi penyelenggaraan pendidikan dan pelatihan juru sita.'),(257,'PP.00.4','TEKNIS LAINNYA','	\r\nSurat-surat yang berkenaan dengan perencanaan, pelaksanaan, dan evaluasi penyelenggaraan pendidikan dan pelatihan teknis lainnya.'),(258,'PP.01','PENDIDIKAN DAN LATIHAN MANAJEMEN',''),(259,'PP.01.1','PENJENJANGAN','Surat-surat yang berkenaan dengan pendidikan penjenjangan, antara lain :\r\n- Diklatpim tingkat IV,\r\n- Dilatpim tingkat III,\r\n- Diklatpim tingkat II,\r\n- Diklatpim tingkat I,\r\n- LEMHANAS\r\nmulai dari perencanaan, pelaksanaan dan evaluasi.'),(260,'PP.01.2','KEPANGKATAN','Surat-surat yang berkenaan dengan pendidikan dan kepangkatan, antara lain :\r\n- Pra Jabatan,\r\n- SUSCATUR (Kursus Calon Pengatur),\r\n- SUSCATA (Kursus Calon Penata),\r\n- SUSCABIN (Kursus Calon Pembina),\r\nmulai dari perencanaan, pelaksanaan dan evaluasi.'),(261,'PP.01.3','LATIHAN / KURSUS / PENATARAN MANAJEMEN','Surat-surat yang berkenaan dengan latihan tenaga administrasi, kursus, dan penataran, di bidang manajemen atau lainnya, baik dalam maupun luar negeri, mulai dari perencanaan, pelaksanaan dan evaluasi.'),(262,'PS','PENGAWASAN','-'),(263,'PS.00','ADMINISTRASI UMUM','Surat-surat yang berkenaan dengan pengawasan administrasi umum, meliputi :\r\n- pengawasan ketatausahaan,\r\n- pengawasan kepegawaian,\r\n- pengawasan keuangan,\r\n- pengawasan perlengkapan,\r\ntermasuk Laporan Hasil Pemeriksaan (LHP) dan tindak lanjut pemeriksaan.'),(264,'PS.01','TEKNIS','Surat-surat yang berkenaan dengan pengawasan di bidang teknis peradilan mulai dari perencanaan, pelaksanaan dan Laporan Hasil Pemeriksaan (LHP) dan tindak lanjut pemeriksaan.'),(265,'','','');

/*Table structure for table `ref_unit_kerja` */

DROP TABLE IF EXISTS `ref_unit_kerja`;

CREATE TABLE `ref_unit_kerja` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ref_unit_kerja` */

insert  into `ref_unit_kerja`(`id`,`nama`,`uraian`) values ('D1.0','Direktur Utama',NULL),('D1.1','Satuan Pengawasan Internal',NULL),('D1.2','Legal, Kesekretariatan dan Tata Kelola',NULL),('D2.0','Direktur Operasional',NULL),('D2.1','Departemen Pemasaran',NULL),('D2.2','Departemen Pengawasan dan Pemeliharaan Wilayah',NULL),('D2.3','Unit Demin',NULL),('D3.0','Direktur Keuangan',NULL),('D3.1','Departemen Akuntansi dan Keuangan',NULL),('D3.2','Departemen SDM dan Umum',NULL);

/*Table structure for table `tb_asal_tujuan` */

DROP TABLE IF EXISTS `tb_asal_tujuan`;

CREATE TABLE `tb_asal_tujuan` (
  `id_asal_tujuan` int(11) NOT NULL AUTO_INCREMENT,
  `asal_tujuan` varchar(255) NOT NULL,
  PRIMARY KEY (`id_asal_tujuan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_asal_tujuan` */

insert  into `tb_asal_tujuan`(`id_asal_tujuan`,`asal_tujuan`) values (2,'Kantor desa'),(3,'Kantor Pengadilan');

/*Table structure for table `tb_disposisi` */

DROP TABLE IF EXISTS `tb_disposisi`;

CREATE TABLE `tb_disposisi` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_surat` varchar(255) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `no_agenda` varchar(40) NOT NULL,
  `teruskan` varchar(255) NOT NULL,
  `ket` text NOT NULL,
  `sifat_dispos` varchar(50) NOT NULL,
  `batas` date NOT NULL,
  `indeks` varchar(100) NOT NULL,
  `kode_surat` int(11) NOT NULL,
  `tujuan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `tb_disposisi` */

insert  into `tb_disposisi`(`id`,`no_surat`,`tgl_surat`,`tanggal_terima`,`asal_surat`,`sifat_surat`,`perihal`,`no_agenda`,`teruskan`,`ket`,`sifat_dispos`,`batas`,`indeks`,`kode_surat`,`tujuan`) values (24,'1','2021-02-16','2021-02-16','3','sp','pengumuman','0001','2','Tolong segera di proses ya','Penting','2021-02-20','12',11,4);

/*Table structure for table `tb_profile` */

DROP TABLE IF EXISTS `tb_profile`;

CREATE TABLE `tb_profile` (
  `kota` varchar(255) NOT NULL,
  `lembaga` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tb_profile` */

insert  into `tb_profile`(`kota`,`lembaga`,`alamat`,`telpon`,`foto`) values ('KIKC','Kawasan Industri','Kawasan Industri Kujang Cikampek','','KIKC LOGO.png');

/*Table structure for table `tb_surat_keluar` */

DROP TABLE IF EXISTS `tb_surat_keluar`;

CREATE TABLE `tb_surat_keluar` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `kepada` int(11) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `no_agenda` varchar(50) NOT NULL,
  `kode_surat` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tujuan` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tb_surat_keluar` */

insert  into `tb_surat_keluar`(`id`,`no_surat`,`tgl_surat`,`kepada`,`sifat_surat`,`perihal`,`no_agenda`,`kode_surat`,`foto`,`tujuan`,`tahun`) values (11,'1','2021-02-16',3,'Sangat Penting','daftar inventaris kantor','0001',264,'awal bayar indihome.jpg',0,'2021'),(12,'1','2021-03-12',3,'Biasa','asdasdasdasdasd','0002',1,'1.1.jpg',4,'2021');

/*Table structure for table `tb_surat_keluar_revisi` */

DROP TABLE IF EXISTS `tb_surat_keluar_revisi`;

CREATE TABLE `tb_surat_keluar_revisi` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `id_surat` int(9) NOT NULL,
  `revisi` mediumtext NOT NULL,
  `sts` char(1) NOT NULL DEFAULT 'O' COMMENT 'O = open, F = sudah direvisi, C = ditolak',
  `createdby` varchar(100) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_surat_keluar_revisi` */

insert  into `tb_surat_keluar_revisi`(`id`,`id_surat`,`revisi`,`sts`,`createdby`,`createddate`) values (2,19,'Kurang banyak','F','1','2024-01-06 22:11:48'),(3,18,'Ga gunnjja','C','1','2024-01-06 22:42:00');

/*Table structure for table `tb_surat_keluar_tmp` */

DROP TABLE IF EXISTS `tb_surat_keluar_tmp`;

CREATE TABLE `tb_surat_keluar_tmp` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(255) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `kepada` int(11) DEFAULT NULL,
  `id_unit_kerja` varchar(20) DEFAULT NULL,
  `sifat_surat` varchar(255) DEFAULT NULL,
  `perihal` text,
  `no_agenda` varchar(50) DEFAULT NULL,
  `kode_surat` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tujuan` int(11) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `jml_surat` int(5) DEFAULT NULL,
  `id_template` int(5) DEFAULT NULL,
  `tmp_header` text,
  `tmp_body` text,
  `tmp_footer` text,
  `tmp_tembusan` text,
  `sts` char(1) DEFAULT 'O' COMMENT 'O = Open, R = Revisi, V = Verify, C = Reject',
  `verifyby` int(11) DEFAULT NULL,
  `verifydate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `updateby` int(11) DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `tb_surat_keluar_tmp` */

insert  into `tb_surat_keluar_tmp`(`id`,`no_surat`,`tgl_surat`,`kepada`,`id_unit_kerja`,`sifat_surat`,`perihal`,`no_agenda`,`kode_surat`,`foto`,`tujuan`,`tahun`,`jml_surat`,`id_template`,`tmp_header`,`tmp_body`,`tmp_footer`,`tmp_tembusan`,`sts`,`verifyby`,`verifydate`,`createdby`,`createddate`,`updateby`,`updatedate`) values (18,'','2024-01-08',3,'D3.0',NULL,'UNDANGAN',NULL,NULL,NULL,NULL,NULL,1,1,'','<div style=\"text-align:center\"><strong>TENTANG</strong><br />\r\n<strong>UNDANGAN PERESMIAN</strong></div>\r\n\r\n<div style=\"text-align:center\">\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">DIREKSI PT KAWASAN INDUSTRI KUJANG CIKAMPEK</span></span></span></p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:15%\">Menimbang</td>\r\n			<td style=\"text-align:right; vertical-align:top; width:2%\">:</td>\r\n			<td style=\"text-align:left; vertical-align:top; width:83%\">\r\n			<ol>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:15%\">Mengingat</td>\r\n			<td style=\"text-align:right; vertical-align:top; width:2%\">:</td>\r\n			<td style=\"text-align:left; vertical-align:top; width:83%\">\r\n			<ol>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">MEMUTUSKAN</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:15%\">Menetapkan</td>\r\n			<td style=\"text-align:right; vertical-align:top; width:2%\">:</td>\r\n			<td style=\"text-align:left; vertical-align:top; width:83%\">\r\n			<ol>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n','','','C',NULL,NULL,1,'2024-01-06 22:10:12',1,'2024-01-06 22:42:00'),(19,'003/SK/D3.1/I/2024','2024-01-08',2,'D3.1',NULL,'KEPUTUSAN',NULL,NULL,NULL,NULL,NULL,2,1,'<div style=\"text-align:center\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">SURAT KEPUTUSAN DIREKSI</span></span></strong></span><br />\r\n<span style=\"font-size:12pt\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">PT KAWASAN INDUSTRI KUJANG CIKAMPEK</span></span></strong></span></div>\r\n\r\n<div style=\"text-align:center\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">NOMOR 003/SK/D3.1/I/2024 TAHUN 2024</span></span></strong></span></div>\r\n','<div style=\"text-align:center\"><strong>TENTANG</strong><br />\r\n<strong>KEPUTUSAN</strong></div>\r\n\r\n<div style=\"text-align:center\">\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">DIREKSI PT KAWASAN INDUSTRI KUJANG CIKAMPEK</span></span></span></p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:15%\">Menimbang</td>\r\n			<td style=\"text-align:right; vertical-align:top; width:2%\">:</td>\r\n			<td style=\"text-align:left; vertical-align:top; width:83%\">\r\n			<ol>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:15%\">Mengingat</td>\r\n			<td style=\"text-align:right; vertical-align:top; width:2%\">:</td>\r\n			<td style=\"text-align:left; vertical-align:top; width:83%\">\r\n			<ol>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">MEMUTUSKAN</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:15%\">Menetapkan</td>\r\n			<td style=\"text-align:right; vertical-align:top; width:2%\">:</td>\r\n			<td style=\"text-align:left; vertical-align:top; width:83%\">\r\n			<ol>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n','<div>\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td>\r\n			<div>Ditetapkan di Cikampek,&nbsp;</div>\r\n\r\n			<div>Pada tanggal 06-01-2024</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div><strong>admin</strong></div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n','','V',NULL,NULL,1,'2024-01-06 22:10:57',1,'2024-01-06 22:32:24');

/*Table structure for table `tb_surat_masuk` */

DROP TABLE IF EXISTS `tb_surat_masuk`;

CREATE TABLE `tb_surat_masuk` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(255) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tanggal_terima` date NOT NULL,
  `asal_surat` int(11) NOT NULL,
  `sifat_surat` varchar(255) NOT NULL,
  `perihal` text NOT NULL,
  `no_agenda` varchar(20) NOT NULL,
  `file_surat` varchar(255) NOT NULL,
  `status` int(2) NOT NULL,
  `tujuan` int(11) NOT NULL,
  `kode_surat` int(11) NOT NULL,
  `indeks` varchar(255) NOT NULL,
  `disposisi` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `tb_surat_masuk` */

insert  into `tb_surat_masuk`(`id`,`no_surat`,`tgl_surat`,`tanggal_terima`,`asal_surat`,`sifat_surat`,`perihal`,`no_agenda`,`file_surat`,`status`,`tujuan`,`kode_surat`,`indeks`,`disposisi`,`tahun`) values (16,'1','2021-02-16','2021-02-16',3,'sp','pengumuman','0001','1..jpeg',1,4,11,'12',2,'2021'),(17,'23','2021-02-18','2021-02-18',2,'b','pengumuman','0002','Cetak Slip Alamat.pdf',0,4,1,'penting',0,'2021'),(18,'23','2021-05-11','2021-05-12',2,'b','surat pengantar kelurahan','0003','Cetak Slip Alamat.pdf',0,5,5,'23',0,'2021');

/*Table structure for table `tb_template_surat` */

DROP TABLE IF EXISTS `tb_template_surat`;

CREATE TABLE `tb_template_surat` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama_template` varchar(200) NOT NULL,
  `kode_surat` varchar(10) DEFAULT NULL,
  `tmp_header` text NOT NULL,
  `tmp_body` text NOT NULL,
  `tmp_footer` text,
  `tmp_tembusan` text,
  `path` varchar(100) DEFAULT NULL,
  `sts` char(1) NOT NULL DEFAULT 'A',
  `createdby` varchar(100) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `updatedby` varchar(100) DEFAULT NULL,
  `updateddate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_template_surat` */

insert  into `tb_template_surat`(`id`,`nama_template`,`kode_surat`,`tmp_header`,`tmp_body`,`tmp_footer`,`tmp_tembusan`,`path`,`sts`,`createdby`,`createddate`,`updatedby`,`updateddate`) values (1,'SURAT KEPUTUSAN DIREKSI','SK','<div style=\"text-align:center\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">SURAT KEPUTUSAN DIREKSI</span></span></strong></span><br />\r\n<span style=\"font-size:12pt\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">PT KAWASAN INDUSTRI KUJANG CIKAMPEK</span></span></strong></span></div>\r\n\r\n<div style=\"text-align:center\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">NOMOR {{nomorsurat}} TAHUN {{tahunsurat}}</span></span></strong></span></div>\r\n','<div style=\"text-align:center\"><strong>TENTANG</strong><br />\r\n<strong>...............................................................................................................</strong></div>\r\n\r\n<div style=\"text-align:center\">\r\n<p style=\"text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">DIREKSI PT KAWASAN INDUSTRI KUJANG CIKAMPEK</span></span></span></p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:15%\">Menimbang</td>\r\n			<td style=\"text-align:right; vertical-align:top; width:2%\">:</td>\r\n			<td style=\"text-align:left; vertical-align:top; width:83%\">\r\n			<ol>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:15%\">Mengingat</td>\r\n			<td style=\"text-align:right; vertical-align:top; width:2%\">:</td>\r\n			<td style=\"text-align:left; vertical-align:top; width:83%\">\r\n			<ol>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">MEMUTUSKAN</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:left; vertical-align:top; width:15%\">Menetapkan</td>\r\n			<td style=\"text-align:right; vertical-align:top; width:2%\">:</td>\r\n			<td style=\"text-align:left; vertical-align:top; width:83%\">\r\n			<ol>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n				<li style=\"text-align:left\">bahwa</li>\r\n			</ol>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n','<div>\r\n<table border=\"0\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n			<td>\r\n			<div>Ditetapkan di {{ditetapkandi}},&nbsp;</div>\r\n\r\n			<div>Pada tanggal {{tglditetapkan}}</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div>&nbsp;</div>\r\n\r\n			<div><strong>{{namalengkap}}</strong></div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n',NULL,NULL,'A','1','2024-01-01 13:20:52','1','2024-01-04 22:13:06');

/*Table structure for table `tb_template_surat_det` */

DROP TABLE IF EXISTS `tb_template_surat_det`;

CREATE TABLE `tb_template_surat_det` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_template` int(5) NOT NULL,
  `prm` varchar(100) NOT NULL,
  `prm_desk` varchar(200) DEFAULT NULL,
  `prm_type` varchar(300) DEFAULT NULL,
  `createdby` varchar(100) NOT NULL,
  `createddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_template_surat_det` */

insert  into `tb_template_surat_det`(`id`,`id_template`,`prm`,`prm_desk`,`prm_type`,`createdby`,`createddate`) values (1,1,'{{nomor}}',' ',' ',' ','2023-12-24 20:31:43');

/*Table structure for table `tb_tujuan` */

DROP TABLE IF EXISTS `tb_tujuan`;

CREATE TABLE `tb_tujuan` (
  `id_tujuan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_tujuan` varchar(255) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  PRIMARY KEY (`id_tujuan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tb_tujuan` */

insert  into `tb_tujuan`(`id_tujuan`,`nama_tujuan`,`no_hp`) values (4,'DIREKTUR BINGGANIS','6281214600799'),(5,'ahmad herudin','6281214600799'),(6,'KARYA','6285174471741');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `password` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_user` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `level` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `level_pimpinan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`username`,`password`,`nama_user`,`level`,`foto`,`level_pimpinan`) values (1,'admin','admin','admin','admin','KIKC LOGO.png',0),(10,'tarjo','123456','tarjo','user','1.1.jpg',4),(9,'herudin','123456','herudin','user','364.jpg',5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
