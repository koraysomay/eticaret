-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 19 Eyl 2018, 15:26:52
-- Sunucu sürümü: 10.1.34-MariaDB
-- PHP Sürümü: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basket`
--

CREATE TABLE `basket` (
  `basket_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` decimal(10,0) NOT NULL,
  `urun_kod` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `resim_path` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `musteri_id` int(11) NOT NULL,
  `musteri_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `musteri_soyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `basket_status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `basket`
--

INSERT INTO `basket` (`basket_id`, `urun_id`, `urun_ad`, `urun_fiyat`, `urun_kod`, `resim_path`, `musteri_id`, `musteri_ad`, `musteri_soyad`, `basket_status`, `created_at`) VALUES
(48, 1, 'COCO - COCO', '35', '1CO20', '/eticaret/images/Coco_DVD.jpg', 23, 'Emrah', 'Yerli', 2, '2018-09-03 10:20:21'),
(49, 16, 'TROLLS - TROLLER', '25', '1TR21', '/eticaret/images/1689522001.jpg', 23, 'Emrah', 'Yerli', 2, '2018-09-03 10:20:21'),
(51, 13, 'STAR WARS THE LAST JEDI  - SON JEDI', '35', '1ST24', '/eticaret/images/LAST_JEDI.jpg', 25, 'Onur', 'Saka', 2, '2018-09-03 10:59:46'),
(52, 4, 'CHRISTMAS & CO - YENİ YIL TEHLİKEDE', '35', '1CH15', '/eticaret/images/Christmas&Co_DVD.jpg', 25, 'Onur', 'Saka', 2, '2018-09-03 10:59:46'),
(53, 8, 'LEGO DC SUPERVILLAIN HIGH - LEGO DC SÜPER KÖTÜLER ', '30', '1LE23', '/eticaret/images/LegoDCSHGSuperVillainHigh_DVD.jpg', 25, 'Onur', 'Saka', 2, '2018-09-03 10:59:46'),
(55, 18, 'SNOWMAN - KARDAN ADAM', '35', '1SN04', '/eticaret/images/TheSnowman_DVD.jpg', 25, 'Onur', 'Saka', 2, '2018-09-03 11:00:23'),
(56, 5, 'GEOSTORM - UZAYDAN GELEN FIRTINA', '35', '1GE07', '/eticaret/images/Geostorm_DVD.jpg', 25, 'Onur', 'Saka', 2, '2018-09-03 11:00:23'),
(58, 2, 'TOMB RAIDER - TOMB RAIDER', '35', '1TO24', '/eticaret/images/TombRaider_DVD.jpg', 25, 'Onur', 'Saka', 2, '2018-09-03 11:00:42'),
(60, 5, 'GEOSTORM - UZAYDAN GELEN FIRTINA', '35', '1GE07', '/eticaret/images/Geostorm_DVD.jpg', 23, 'Emrah', 'Yerli', 2, '2018-09-03 11:01:26'),
(61, 3, 'DAPHNE & WELMA - DAPHNE & WELMA', '30', '1DA11', '/eticaret/images/PACK-DVD-DAPHNE.jpg', 23, 'Emrah', 'Yerli', 2, '2018-09-03 11:01:26'),
(62, 4, 'CHRISTMAS & CO - YENİ YIL TEHLİKEDE', '35', '1CH15', '/eticaret/images/Christmas&Co_DVD.jpg', 23, 'Emrah', 'Yerli', 2, '2018-09-03 11:01:44'),
(63, 1, 'COCO - COCO', '35', '1CO20', '/eticaret/images/Coco_DVD.jpg', 23, 'Emrah', 'Yerli', 2, '2018-09-03 11:16:45'),
(64, 11, 'PITCH PERFECT 3 - MÜKEMMEL UYUM 3', '30', '1PI10', '/eticaret/images/PitchPerfect3_DVD.jpg', 23, 'Emrah', 'Yerli', 2, '2018-09-03 11:17:36'),
(65, 31, 'MALEFICENT - MALEFİZ', '25', '1MA17', '/eticaret/images/maleficent.jpg', 26, 'Koray', 'Somay', 2, '2018-09-03 12:48:24'),
(67, 29, 'MOANA - MOANA', '30', '1MO09', '/eticaret/images/moana.jpg', 26, 'Koray', 'Somay', 2, '2018-09-03 12:48:24'),
(68, 21, 'MAD MAX FURY ROAD - MAD MAX FURY ROAD', '15', '1MA12', '/eticaret/images/madmaxfuryroad.jpg', 26, 'Koray', 'Somay', 2, '2018-09-03 12:48:24'),
(69, 1, 'COCO - COCO', '35', '1CO20', '/eticaret/images/Coco_DVD.jpg', 26, 'Koray', 'Somay', 2, '2018-09-04 13:09:11'),
(70, 22, 'EDGE OF TOMORROW - YARININ SINIRINDA', '15', '1ED01', '/eticaret/images/edgeoftomorrow.jpg', 26, 'Koray', 'Somay', 2, '2018-09-04 13:09:11'),
(71, 32, 'MAMMA MIA - MAMMA MIA', '15', '1MA20', '/eticaret/images/mammamia.jpg', 26, 'Koray', 'Somay', 2, '2018-09-04 13:09:11'),
(72, 4, 'CHRISTMAS & CO - YENİ YIL TEHLİKEDE', '35', '1CH15', '/eticaret/images/Christmas&Co_DVD.jpg', 26, 'Koray', 'Somay', 2, '2018-09-04 13:09:51'),
(73, 30, 'EVEREST - EVEREST', '15', '1EV03', '/eticaret/images/everest.jpg', 26, 'Koray', 'Somay', 2, '2018-09-04 13:09:51'),
(74, 19, 'A QUIET PLACE - SESSİZ BİR YER', '35', '1AQ01', '/eticaret/images/aquiteplace.jpg', 26, 'Koray', 'Somay', 2, '2018-09-04 13:09:51'),
(75, 31, 'MALEFICENT - MALEFİZ', '25', '1MA17', '/eticaret/images/maleficent.jpg', 27, 'Bora', 'Somay', 2, '2018-09-05 14:14:09'),
(76, 28, 'FROZEN - KARLAR ÜLKESİ', '25', '1FR06', '/eticaret/images/frozen.jpg', 27, 'Bora', 'Somay', 2, '2018-09-05 14:14:09'),
(77, 25, 'LADY BIRD - UĞUR BÖCEĞİ', '30', '1LA14', '/eticaret/images/ladybird.jpg', 27, 'Bora', 'Somay', 2, '2018-09-05 14:14:09'),
(78, 31, 'MALEFICENT - MALEFİZ', '25', '1MA17', '/eticaret/images/maleficent.jpg', 26, 'Koray', 'Somay', 2, '2018-09-06 08:37:31'),
(80, 23, 'INCEPTION - BAŞLANGIÇ', '15', '1IN01', '/eticaret/images/inception.jpg', 26, 'Koray', 'Somay', 2, '2018-09-06 13:41:30'),
(81, 24, 'DOWNSIZING - KÜÇÜLEN HAYATLAR', '35', '1DO13', '/eticaret/images/downsizing.jpg', 26, 'Koray', 'Somay', 2, '2018-09-06 13:41:30'),
(83, 17, 'HAPPY DEATH DAY - ÖLÜM GÜNÜN KUTLU OLSUN', '35', '1HA31', '/eticaret/images/HappyDD_dvd_pack.jpg', 26, 'Koray', 'Somay', 2, '2018-09-13 17:01:01'),
(84, 5, 'GEOSTORM - UZAYDAN GELEN FIRTINA', '35', '1GE07', '/eticaret/images/Geostorm_DVD.jpg', 26, 'Koray', 'Somay', 2, '2018-09-13 17:01:01'),
(85, 7, 'LEGO BATMAN MOVIE - LEGO BATMAN FİLMİ', '35', '1LE18', '/eticaret/images/LegoBatmanMovie_DVD.jpg', 28, 'Salih', 'Hanifeoğlu', 2, '2018-09-13 17:01:47'),
(86, 32, 'MAMMA MIA - MAMMA MIA', '15', '1MA20', '/eticaret/images/mammamia.jpg', 28, 'Salih', 'Hanifeoğlu', 2, '2018-09-13 17:01:47'),
(87, 5, 'GEOSTORM - UZAYDAN GELEN FIRTINA', '35', '1GE07', '/eticaret/images/Geostorm_DVD.jpg', 28, 'Salih', 'Hanifeoğlu', 2, '2018-09-13 17:02:32'),
(89, 2, 'TOMB RAIDER - TOMB RAIDER', '35', '1TO24', '/eticaret/images/TombRaider_DVD.jpg', 26, 'Koray', 'Somay', 2, '2018-09-13 17:51:31'),
(91, 5, 'GEOSTORM - UZAYDAN GELEN FIRTINA', '35', '1GE07', '/eticaret/images/Geostorm_DVD.jpg', 26, 'Koray', 'Somay', 2, '2018-09-13 17:51:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`) VALUES
(1, 'Animasyon'),
(2, 'Korku-Gerilim'),
(3, 'Komedi'),
(4, 'Macera'),
(5, 'Romantik-Dram'),
(6, 'Bilim-Kurgu'),
(7, 'Aile');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

CREATE TABLE `musteri` (
  `musteri_id` int(11) NOT NULL,
  `musteri_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `musteri_soyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `musteri_email` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `musteri_password` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `musteri_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`musteri_id`, `musteri_ad`, `musteri_soyad`, `musteri_email`, `musteri_password`, `musteri_status`) VALUES
(20, 'Oktay', 'Somay', 'oktay@somay.com', '02bc528f101952568c13ef4357268e34e0c6ae07', NULL),
(22, 'Arzu', 'Somay', 'arzu@somay.com', '691696d672e2d354d609954cd8eaa146c9acdea0', NULL),
(23, 'Emrah', 'Yerli', 'emrahyerli@yenifilm.com.tr', 'df2983700ffecb52e6649f0cb3981b66537083a4', NULL),
(25, 'Onur', 'Saka', 'onursaka@yenifilm.com.tr', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(26, 'Koray', 'Somay', 'koraysomay@hotmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL),
(27, 'Bora', 'Somay', 'bora@bora.com', '48058e0c99bf7d689ce71c360699a14ce2f99774', NULL),
(28, 'Salih', 'Hanifeoğlu', 'salih@hani.com', 'c079fdb36524e05977b8a868a98085755e89e13e', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `musteri_id` int(11) NOT NULL,
  `toplam_tutar` decimal(10,0) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `musteri_id`, `toplam_tutar`, `created_at`) VALUES
(8, 23, '60', '2018-09-03 10:20:21'),
(9, 25, '100', '2018-09-03 10:59:47'),
(10, 25, '70', '2018-09-03 11:00:23'),
(11, 25, '70', '2018-09-03 11:00:42'),
(12, 23, '65', '2018-09-03 11:01:26'),
(13, 23, '35', '2018-09-03 11:01:44'),
(14, 23, '35', '2018-09-03 11:16:45'),
(15, 23, '30', '2018-09-03 11:17:37'),
(16, 26, '150', '2018-09-03 12:48:24'),
(17, 26, '65', '2018-09-04 13:09:11'),
(18, 26, '85', '2018-09-04 13:09:51'),
(19, 27, '80', '2018-09-05 14:14:09'),
(20, 26, '60', '2018-09-06 08:37:31'),
(21, 26, '50', '2018-09-06 13:41:30'),
(22, 26, '70', '2018-09-13 17:01:01'),
(23, 28, '50', '2018-09-13 17:01:47'),
(24, 28, '35', '2018-09-13 17:02:32'),
(25, 26, '70', '2018-09-13 17:51:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `urun_kod` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` decimal(10,2) NOT NULL,
  `urun_status` int(11) DEFAULT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `resim_path` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `urun_ozet` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `urun_studyo` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `urun_rating` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `urun_kod`, `urun_ad`, `urun_fiyat`, `urun_status`, `kategori_ad`, `resim_path`, `created_at`, `urun_ozet`, `urun_studyo`, `urun_rating`) VALUES
(1, '1CO20', 'COCO - COCO', '35.00', NULL, 'Animasyon', '/eticaret/images/Coco_DVD.jpg', '2018-08-29 11:04:28', 'Disney * Pixar’ın bu etkileyici aile, eğlence ve macera dolu hikayesi Coco’da müzisyen olmaya hevesli genç Miguel atalarının yaşadığı renkli ve etkileyici Ölüler Şehri’ne doğru olağanüstü bir yolculuğa çıkar. \r\n', 'Walt Disney', 'Genel İzleyici'),
(2, '1TO24', 'TOMB RAIDER - TOMB RAIDER', '35.00', NULL, 'Macera', '/eticaret/images/TombRaider_DVD.jpg', '2018-08-30 14:48:23', 'Yıllar önce gizemli bir şekilde ortadan kaybolan bir maceraperestin kızı olan cesur ve asi Lara Croft bu babasının esrarengiz ölümünü çözmeye karar verir.  Keskin zekâsı, cesareti ve asi ruhundan başka bir şeyi olmayan Lara, kimsenin ayak basmaya cesaret edemediği sırlarla dolu mistik bir adaya doğru yola çıkar. Lara, limitlerini sonuna kadar zorlayacak bu zorlu yolculukta Tomb Raider adını kazanacaktır.\r\n', 'Warner Bros', '7+'),
(3, '1DA11', 'DAPHNE & WELMA - DAPHNE & WELMA', '30.00', NULL, 'Aile', '/eticaret/images/PACK-DVD-DAPHNE.jpg', '2018-08-29 11:03:48', 'Ridge Valley Lisesi’nde geleceğin robotları, birbirinden çılgın cihazlar ve parlak öğrenciler olması son derece sıradan bir durumdur. Zeki ve yetenekli Daphne Blake (Sarah Jeffery) ve en yakın online arkadaşı, teknoloji delisi Velma Dinkley’de (Sarah Gilman) okulun yeni öğrencileridir. Ancak ikili kampüste hiçbir şeyin göründüğü gibi masum olmadığını fark ederler. Okulun en başarılı öğrencileri gizemli bir şekilde birer birer ortadan kaybolup eski hayat dolu, neşeli hallerinden uzak bir şekilde ', 'Warner Bros', 'Genel İzleyici'),
(4, '1CH15', 'CHRISTMAS & CO - YENİ YIL TEHLİKEDE', '35.00', NULL, 'Aile', '/eticaret/images/Christmas&Co_DVD.jpg', '2018-08-30 14:47:44', 'Tam da Yeni Yıl öncesi heyecan doruktayken hiç beklenmedik bir şey olur. Noel Baba’nın 92.000 elfi yatak döşek hastalanır. Hem de aynı zamanda! Hep neşeli görmeye alıştığımız Noel Baba için bu ağır bir darbe olur. Peki şimdi dünyadaki bütün çocuklar için hediyeleri kim hazırlayacak? \r\n', 'Yeni Film', 'Genel İzleyici'),
(5, '1GE07', 'GEOSTORM - UZAYDAN GELEN FIRTINA', '35.00', NULL, 'Bilim-Kurgu', '/eticaret/images/Geostorm_DVD.jpg', '2018-08-30 17:40:57', 'Daha önce eşi benzeri görülmemiş bir dizi doğal afetin dünyayı vurması üzerine liderler biraraya gelerek iklimi kontrol altına almak ve insanların güvenliğini sağlamak için bir dizi karmaşık uydu networkü yaratmaya karar verirler. Ancak bir şeyler ters gider ve dünyayı kurtarmak için yaratılan sistem ona karşı işlemeye başlar.\r\n', 'Warner Bros', '7+'),
(6, '1HA28', 'HAIL CAESAR - YÜCE SEZAR', '30.00', NULL, 'Komedi', '/eticaret/images/HAIL_CAESAR.jpg', '2018-08-29 11:13:30', 'Tam dört Oscar® ödüllü Joel ve Ethan Coen’in (İhtiyarlara Yer Yok, İz Peşinde, Fargo) yazıp yönettiği YÜCE SEZAR!, Hollywood’un Altın Çağını gözler önüne seren, oyuncularının tamamı yıldız olan müthiş bir komedi. \r\n', 'Universal', '7+'),
(7, '1LE18', 'LEGO BATMAN MOVIE - LEGO BATMAN FİLMİ', '35.00', NULL, 'Animasyon', '/eticaret/images/LegoBatmanMovie_DVD.jpg', '2018-08-30 14:49:18', 'LEGO Filmi’ni dünyada çapında bir fenomen haline getiren eğlence dolu maceralar, şimdi de süper kahraman Batman’in kendi gösterisi LEGO Batman ile devam ediyor. \r\n', 'Warner Bros', 'Genel İzleyici'),
(8, '1LE23', 'LEGO DC SUPERVILLAIN HIGH - LEGO DC SÜPER KÖTÜLER ', '30.00', NULL, 'Animasyon', '/eticaret/images/LegoDCSHGSuperVillainHigh_DVD.jpg', '2018-08-30 14:49:51', 'Aralarında Catwoman, Cheetah ve Poison Ivy’nin de blunduğu bazı kızların “daha az ev ödevi, daha çok eğlence” vaad eden Uber High için Super Hero High’dan ayrılmaları Wonder Woman, Supergirl ve Batgirl’i harekete geçirir. \r\n', 'Warner Bros', 'Genel İzleyici'),
(9, '1MO12', 'MOTHER - ANNE', '35.00', NULL, 'Korku-Gerilim', '/eticaret/images/Mother!_dvd_pack.jpg', '2018-08-30 18:23:03', 'Siyah Kuğu\'nun Yönetmeninden. Görsel olarak son derece etkileyici olan bu psikolojik gerilim kalp atışlarınızı hızlandırmakla kalmayıp aklınızın sınırlarını da zorlayacak!\r\n', 'Paramount', '13+'),
(10, '1PA16', '15:17 PARIS - 15:17 PARİS TRENİ', '35.00', NULL, 'Macera', '/eticaret/images/1517ToParis_DVD.jpg', '2018-08-30 14:47:27', '21 Ağustos 2015’te tüm dünya Amsterdam’dan Paris’e giden hızlı trende meydana gelen terörist saldırı ve saldırıya engel olan üç cesur Amerikalı gencin haberine kilitlenmişti. Yönetmen Clint Eastwood kamerasını bu üç gencin yaşamlarına çeviriyor ve bizi çocukluklarından başlayarak bu talihsiz olayın yaşandığı ana getiriyor. \r\n', 'Warner Bros', '13+'),
(11, '1PI10', 'PITCH PERFECT 3 - MÜKEMMEL UYUM 3', '30.00', NULL, 'Komedi', '/eticaret/images/PitchPerfect3_DVD.jpg', '2018-08-30 14:50:54', 'Çok sevilen serinin bu son bölümünde üniversiteden yeni mezun olan kızlar birarada olmanın değerini keşfediyor. \r\n', 'Universal', '7+'),
(12, '1SC12', 'SCHINDLER\'S LIST - SCHINDLER\'İN LİSTESİ', '20.00', NULL, 'Romantik-Dram', '/eticaret/images/SchindlersList_dvd_pack.jpg', '2018-08-30 18:23:28', 'Steven Spielberg’in tüm zamanların en önemli tarihi dönemine ışık tutan sinemada bir yapı taşı sayılan filminin 2 Disk Özel Versiyonu’nu mutlaka izleyin. \r\n', 'Universal', '7+'),
(13, '1ST24', 'STAR WARS THE LAST JEDI  - SON JEDI', '35.00', NULL, 'Bilim-Kurgu', '/eticaret/images/LAST_JEDI.jpg', '2018-08-30 17:41:09', 'Skywalker efsanesi devam ediyor! Güç Uyanıyor\'un kahramanları galaktik efsanelere katılıp Güç\'ün asırlık sırlarının çözüleceği destansı bir maceraya atılıyor. \r\n', 'Walt Disney', '7+'),
(14, '1BO17', 'BOSS BABY - PATRON BEBEK', '30.00', NULL, 'Animasyon', '/eticaret/images/1738233001.jpg', '2018-08-29 11:25:40', 'Patron Bebek, takım elbise giyip elindeki evrak çantasıyla dolaşan bir bebeğin yürüttüğü gizli görevi anlatıyor.\r\n', 'Dreamworks', 'Genel İzleyici'),
(15, '1CA20', 'CAPTAIN UNDERPANTS  -KAPTAN DÜŞÜKDON', '25.00', NULL, 'Animasyon', '/eticaret/images/1738235001.jpg', '2018-08-29 11:26:38', 'Hayal gücü yüksek George ve Harold\'ın, okul müdürünü hipnotize etmelerini ve bunun sonucunda müdürün kendisini şapşal bir süper kahraman olan Kaptan Düşükdon zannetmesi ile gelişen olayları konu ediniyor.\r\n', 'Dreamworks', 'Genel İzleyici'),
(16, '1TR21', 'TROLLS - TROLLER', '25.00', NULL, 'Animasyon', '/eticaret/images/1689522001.jpg', '2018-08-29 11:27:37', 'Poppy kendisini bildiği tek dünyadan çok uzaklara taşıyan destansı bir macerada güçlerini daima umutsuz olan Branch (Justin Timberlake) ile birleştirir. \r\n', 'Dreamworks', 'Genel İzleyici'),
(17, '1HA31', 'HAPPY DEATH DAY - ÖLÜM GÜNÜN KUTLU OLSUN', '35.00', NULL, 'Korku-Gerilim', '/eticaret/images/HappyDD_dvd_pack.jpg', '2018-08-30 18:23:41', 'Uyan.Günü Yaşa. Öldürülmeyi Bekle. Tekrar. Parçalanmış, Kapan ve Whiplash filmlerini size getiren Blumhouse yine son derece yaratıcı ve orijinal bir gerilim filmiyle karşınızda! Bencil ve kendini beğenmiş lise öğrencisi Tree her gün maskeli bir katil tarafından öldürüldüğü yeni bir güne uyanmakla lanetlenmiştir. Tek kurtuluş yolu bu maskenin arkasındaki katilin kim olduğunu öğrenmesidir.\r\n', 'Universal', '18+'),
(18, '1SN04', 'SNOWMAN - KARDAN ADAM', '35.00', NULL, 'Korku-Gerilim', '/eticaret/images/TheSnowman_DVD.jpg', '2018-08-30 18:23:53', 'Deneyimli bir cinayet araştırma ekibinin baş dedektifi (Michael Fassbender) ilk karın düştüğü bir kış günü ortadan kaybolan kurbanın akıbetini araştırmaya başladıkça hiçbir zaman yakalanamamış eski bir seri katilin yeniden harekete geçmiş olabileceğinden şüphelenmeye başlar. Dedektif, bir sonraki kar yağışı başlamadan bu akıl almaz şeytanı durdurmak istiyorsa keskin zekâlı genç bir dedektifin de (Rebecca Ferguson) yardımıyla çoktan kapatılmış eski vakalarla günümüzün vahşi cinayeti arasındaki ba', 'Universal', '13+'),
(19, '1AQ01', 'A QUIET PLACE - SESSİZ BİR YER', '35.00', NULL, 'Korku-Gerilim', '/eticaret/images/aquiteplace.jpg', '2018-09-03 12:22:16', 'Aklınızın Sınırlarını Zorlayacak Bu Tansiyonu Yüksek Gerilim, Sese Duyarlı Ölüm Saçan Yaratıklardan Korunmak İçin Hayatlarını Sessizlik İçinde Sürdürmek Zorunda Olan Bir Aileyi Anlatıyor. Bir Fısıltı Ya Da Çıtırtının Bile Ölüme Neden Olduğu Bir Hayatta Çocuklarını Yaratıklara Karşı Korumaya Çalışan Evelyn (Emıly Blunt) Ve Lee (John Krasınskı) Bir Yandan Da Bu Yaratıklarla Savaşmanın Bir Yolunu Aramaktadır. Eleştirmenlerin “Kalbinizi Durduracak” Kadar “Enteresan Ve Ürkütücü” Olarak Nitelendirdiği', 'Paramount', '18+'),
(20, '1BL10', 'BLACK PANTHER - BLACK PANTHER', '35.00', NULL, 'Bilim-Kurgu', '/eticaret/images/blackpanther.jpg', '2018-09-03 12:24:50', 'Yeni Kralla Tanışın\r\nBabasının Trajik Ölümünün Ardından Wakanda’Nın Yeni Kralı Olan Prens T’Challa Hem Kendi Ülkesinin Hem De Dünyanın Geleceğini Tehdit Eden Güçlü Bir Düşmanın Ortaya Çıkmasıyla İlk Sınavını Verecektir. Kendi Ailesiyle Karşı Karşıya Kalan Genç Kral, Müttefiklerini Harekete Geçirip Black Panther’İn Gücünü Ortaya Koymalı Ve Yenilmezler Arasındaki Yerini Almalıdır.\r\n', 'Walt Disney', '7+'),
(21, '1MA12', 'MAD MAX FURY ROAD - MAD MAX FURY ROAD', '15.00', NULL, 'Macera', '/eticaret/images/madmaxfuryroad.jpg', '2018-09-03 12:27:02', 'Kıyamet sonrası türünün yaratıcısı ve efsanevi Mad Max serisinin ardındaki dâhi yönetmen George Miller, Yol Savaşçısı Max’in  dünyasına geri dönüyor. Çalkantılı geçmişi tarafından sarılmış Max Rockatansky (Tom Hardy), İmparator Furiosa (Charlize Theron) komutasındaki Çorak Topraklar’dan kaçan bir grup tarafından sürüklenene kadar yalnız başınaydı. Artık sıcak takip başlamıştır:  acımasız bir savaş lordu tüm çeteleri toplar ve yüksek oktanlı bu yol savaşında  asilerin peşine düşer.\r\n', 'Warner Bros', '7+'),
(22, '1ED01', 'EDGE OF TOMORROW - YARININ SINIRINDA', '15.00', NULL, 'Bilim-Kurgu', '/eticaret/images/edgeoftomorrow.jpg', '2018-09-03 12:29:04', 'Yaşa. Öl. Tekrar Et. \r\nYakın gelecekte dünyadaki hiçbir askeri gücün yenemeyeceği uzaylı bir ırk Dünya´ya saldırır. Binbaşı William Cage (Tom Cruise) intihar sayılabilecek bu savaş görevine gayri resmi olarak atanmıştır. Birkaç dakika içinde öldürülür ve hemen ardından kendisini açıklanamaz bir zaman döngüsünün içinde bulur. Cage, her çarpışmada artan becerisiyle düşmanlarını alt edebilecek midir?\r\n', 'Warner Bros', '7+'),
(23, '1IN01', 'INCEPTION - BAŞLANGIÇ', '15.00', NULL, 'Bilim-Kurgu', '/eticaret/images/inception.jpg', '2018-09-03 12:30:20', 'Göz Kamaştırıcı, Nefes Kesici Bir Aksiyon\r\nDom Cobb insanların rüyalarını ve bilinçaltlarını ustalıkla ele geçiren bir soyguncudur. İnsanların rüyadaki bilinçsizlik durumundan faydalanarak zihinlerindeki değerli bilgileri çalmaktadır. Bu yeteneği ona uluslararası arenada casusluk yapabilme avantajını sağlasa da, bir kaçak durumuna düşmekten kurtulamaz.\r\n', 'Warner Bros', '7+'),
(24, '1DO13', 'DOWNSIZING - KÜÇÜLEN HAYATLAR', '35.00', NULL, 'Komedi', '/eticaret/images/downsizing.jpg', '2018-09-03 12:32:54', 'Oscar® Ödüllü Yönetmen Alexander Payne (The Descendants, Nebraska) Küçük Matt Damon’La Büyük Bir Komediye İmza Atıyor. Bilimadamlarının İnsanoğlunu 5 Cm’E Kadar Küçültmenin Yolunu Keşfetmeleri Üzerine Sıradan Hayatlarından Bunalan Paul Safranek (Oscar® Ödüllü Matt Damon) Ve Karısı Audrey (Kristen Wigg) Daha Zengin Ve Bolluk İçinde Bir Hayat Vaadiyle Küçülmeye İkna Olurlar. Hayatlarını Sonsuza Dek Değiştirecek Maceralar Ve Sınırsız İmkanlar Sunacak Olan Bu Yeni Küçülmüş Hayat Çok Geçmeden Paul’Ün', 'Paramount', 'Genel İzleyici'),
(25, '1LA14', 'LADY BIRD - UĞUR BÖCEĞİ', '30.00', NULL, 'Romantik-Dram', '/eticaret/images/ladybird.jpg', '2018-09-03 12:34:31', 'Uğur Böceği” Christine Mcpherson (Saoırse Ronan) Her Ne Kadar Aksi Olmak İçin Çabalasa Da Tıpkı Annesi (Laurıe Metcalf) Gibi Sevecen, İnatçı Ve Dediğim Dedik Birisidir. Uğur Böceği’Nin Babası (Tracy Letts) İşini Kaybedince, Aileyi Gece Gündüz Demeden Çalışan Hemşire Annesi Ayakta Tutmaktadır. Uğur Böceği Bizi Şekillendiren İlişkilere, İnançlara Ve Yuva Dediğimiz Yerin Benzersiz Güzelliğine Dair Çok Etkileyici Bir Hikâye.\r\n', 'Universal', '7+'),
(26, '1GA12', 'GAME OF THRONES SEASON 7', '80.00', NULL, 'Bilim-Kurgu', '/eticaret/images/got7.jpg', '2018-09-03 12:36:07', 'Birbirinden heyecan ve gerilim yüklü altı sezonun ardından Game of Thrones Sezon 7 artık yıllar süren gerilimin ardından ortaya çıkan yeni ittifaklara ve anlaşmazlıklara odaklanıyor. Ancak yeni işbirliklerin ortaya çıktığı bir dönemde Ak Gezenlerin mevcut düzene karşı bir tehdit olması herşeyi değiştirecektir.\r\n', 'Warner Bros', '13+'),
(27, '1GO01', 'GAME OF THRONES SEASON 3', '60.00', NULL, 'Bilim-Kurgu', '/eticaret/images/gots3.jpg', '2018-09-03 12:38:35', 'İktidar mücadelesindeki beş savaşçıdan birinin ölmüş, bir diğerinin gözden düşmüş olmasına rağmen savaş tüm şiddetiyle sürmektedir. Yedi Krallık\'ın zor durumdaki hükümdarı Joffrey, Demir Taht\'ta oturmaya devam etmektedir. En amansız düşmanı Stannis, takip ettiği büyücü kadının kurbanı olmuş ve bozguna uğramıştır.\r\n', 'Warner Bros', '13+'),
(28, '1FR06', 'FROZEN - KARLAR ÜLKESİ', '25.00', NULL, 'Animasyon', '/eticaret/images/frozen.jpg', '2018-09-03 12:41:01', '  En İyi Animasyon Film ve Orijinal Şarkı “Let It Go” olmak üzere 2 Oscar Ödüllü!\r\n\r\n“Şimdiden bir Klasik. Bu Film Kuşaklar Boyunca İzlenecek ve Çok Sevilecek!”\r\nMark S. Allen, CBS/CW\r\nBuzlu güçleri yüzünden Arendelle Krallığı’nı sonsuz kışa mahkûm eden Elsa’yı bulmak için Elsa’nın kız kardeşi korkusuz ve iyimser Anna, güçlü dağ adamı Kristoff ve onun sadık dostu geyik Sven’le birlikte destansı bir yolculuğa çıkar. Anna ve Kristoff, Olaf adındaki komik kardan adam ve gizemli trollerle birlikte k', 'Walt Disney', 'Genel İzleyici'),
(29, '1MO09', 'MOANA - MOANA', '30.00', NULL, 'Animasyon', '/eticaret/images/moana.jpg', '2018-09-03 12:42:09', 'Walt Disney Animation Studios halkını kurtarmak için cesaret dolu bir yolculuğa yelken açan cesur genç kız Moana’nın destansı macerasıyla karşınızda.\r\n', 'Walt Disney', 'Genel İzleyici'),
(30, '1EV03', 'EVEREST - EVEREST', '15.00', NULL, 'Macera', '/eticaret/images/everest.jpg', '2018-09-03 12:43:16', 'Uzman Dağcılar Rob Hall (Jason Clarke) Ve Scott Fischer (Jake Gyllenhaal) Dünyanın En Yüksek Zirvesi Olan Everest\'E Bir Keşif Tırmanışı Yapmak Üzere Yola Çıkarlar. Ekip Tırmanış Sırasında Tarihin En Kuvvetli Kar Fırtınasının Ortasında Kalır. Bedeni Uyuşturan Dondurucu Soğuğa Ve Şiddetli Tipinin Yarattığı Tehlikelere Karşı Mücadele Veren Ekip, İnsan Psikolojisini Zorlayan Destansı Bir Ölüm Kalım Mücadelesi İçine Girerler. Gerçek Olaylardan Esinlenilerek Senaryolaştırılan Everest\'İ İzlerken Tüyler', 'Universal', '7+'),
(31, '1MA17', 'MALEFICENT - MALEFİZ', '25.00', NULL, 'Aile', '/eticaret/images/maleficent.jpg', '2018-09-03 12:44:58', 'Tam bir Disney klasiği olan Uyuyan Güzel’in kötü karakterinin daha önce hiç anlatılmamış hikayesi!\r\n\r\nMalefiz (Angelina Jolie) intikam hırsıyla ve yaşadığı toprakları korumak için duyduğu şiddetli arzuyla insanların kralının yeni doğan kızı Aurora’yı merhametsizce lanetler. Yıllar geçtikçe, Aurora kendisini büyüdüğü orman krallığı ile atalarının ülkesi olan insan krallığı arasındaki bitmeyen çatışmanın tam ortasında bulur.\r\n', 'Walt Disney', '7+'),
(32, '1MA20', 'MAMMA MIA - MAMMA MIA', '15.00', NULL, 'Romantik-Dram', '/eticaret/images/mammamia.jpg', '2018-09-03 12:46:03', 'Müstakbel Gelin Sophie (Amanda Seyfried) Evlenmeden Önce Babasını Bulmak İster. Ancak Bir Problem Vardır... Babasının Kim Olduğundan Emin Değildir. Annesinin (Meryl Streep) Eski Günlüğünü Karıştıran Sophie, Annesinin Üç Eski Sevgilisinden Birinin Babası Olduğundan Emin Olur. Annesinin Onaylamayacağını Bile Bile Üçünü De Düğüne Davet Eder. Ancak Onları Annesinden Saklamak Konusunda Pek Becerikli Davranamaz Ve Sırrının Açığa Çıkmasıyla Eğlence De Başlamış Olur.\r\n', 'Universal', '7+');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`basket_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `musteri`
--
ALTER TABLE `musteri`
  ADD PRIMARY KEY (`musteri_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `basket`
--
ALTER TABLE `basket`
  MODIFY `basket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `musteri`
--
ALTER TABLE `musteri`
  MODIFY `musteri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
