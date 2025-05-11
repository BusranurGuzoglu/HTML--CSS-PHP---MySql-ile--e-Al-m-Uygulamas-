-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 May 2025, 15:24:52
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `user_database`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basvuru_formu`
--

CREATE TABLE `basvuru_formu` (
  `id` int(11) NOT NULL,
  `ad_soyad` varchar(255) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `sehir` varchar(100) NOT NULL,
  `universite` varchar(255) NOT NULL,
  `universite_bolumu` varchar(255) NOT NULL,
  `deneyim` text NOT NULL,
  `bdenetim` text NOT NULL,
  `cinsiyet` varchar(10) NOT NULL,
  `ms_office` text NOT NULL,
  `ingilizce` varchar(50) NOT NULL,
  `sap` varchar(255) NOT NULL,
  `ufrs` varchar(255) NOT NULL,
  `takim` varchar(255) NOT NULL,
  `is_deneyimi` varchar(255) DEFAULT NULL,
  `is_deneyimi_metni` text DEFAULT NULL,
  `askerlik` varchar(50) DEFAULT NULL,
  `cv_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `basvuru_formu`
--

INSERT INTO `basvuru_formu` (`id`, `ad_soyad`, `telefon`, `sehir`, `universite`, `universite_bolumu`, `deneyim`, `bdenetim`, `cinsiyet`, `ms_office`, `ingilizce`, `sap`, `ufrs`, `takim`, `is_deneyimi`, `is_deneyimi_metni`, `askerlik`, `cv_path`) VALUES
(1, 'Metin Yaşar', '05051232132', 'Bursa', 'Bolu Abant İzzet Baysal Üniversitesi', 'Finans', '1-3 yıl', 'Var', 'Erkek', 'Hakim', 'B1', 'Acemi', '0-1 yıl', 'evet', NULL, 'deneme', 'Muaf', 'uploads/cv/676191494d3ee5.46757798.pdf'),
(3, 'Feride Tekin', '05052133625', 'Çorum', 'Bartın Üniversitesi', 'Ekonomi', '+3 yıl', 'Var', 'Kadın', 'Hakim', 'B1', 'Uzman', '+3 yıl', 'evet', 'Hayır', '', NULL, 'uploads/cv/67619caecc1070.58790748.pdf'),
(4, 'Şahika Sever', '05052133625', 'Çorum', 'Bartın Üniversitesi', 'Finans', '+3 yıl', 'Var', 'Kadın', 'Hakim', 'B1', 'Uzman', '+3 yıl', 'evet', 'Hayır', '', NULL, 'uploads/cv/67619d4b7726d9.54775188.pdf'),
(5, 'Büşra Güz', '05052106565', 'Ankara', 'Karadeniz Teknik Üniversitesi', 'Ekonomi', '0-1 yıl', 'Yok', 'Kadın', 'Hakim', 'C1', 'Hakim', '0-1 yıl', 'evet', 'Evet', 'bir yıl çalıştım', NULL, 'uploads/cv/6761a82f0b2689.43640407.pdf'),
(6, 'ferudun kafkas', '5053623626', 'Van', 'Boğaziçi Üniversitesi', 'Bankacılık', '0-1 yıl', 'Yok', 'Erkek', 'Acemi', 'C2', 'Acemi', '1-3 yıl', 'hayır', 'Hayır', '', 'Tecilli', 'uploads/cv/6761b4c0ab0824.88444659.pdf'),
(7, 'Fatih Sever', '05414104141', 'Mersin', 'Atatürk Üniversitesi', 'Ekonometri', '1-3 yıl', 'Var', 'Erkek', 'Acemi', 'B1', 'Acemi', '0-1 yıl', 'evet', 'Evet', 'çalış çalış', 'Tamamlandi', 'uploads/cv/6761e923c2e060.31253959.pdf'),
(8, 'Hakan Tan', '05053214152', 'Yalova', 'Selçuk Üniversitesi', 'Siyaset Bilimi ve Kamu Yönetimi', '1-3 yıl', 'Var', 'Erkek', 'Hakim', 'A2', 'Uzman', '+3 yıl', 'evet', 'Evet', 'Çalışma deneyimim var', 'Tecilli', 'uploads/cv/6762e643e74015.87163570.pdf'),
(9, 'Büşranur Güzoğlu', '5052151515', 'Ankara', 'Karadeniz Teknik Üniversitesi', 'Yönetim Bilişim Sistemleri', 'Deneyimsiz', 'Yok', 'Kadın', 'Hakim', 'A1', 'Acemi', 'Deneyimsiz', 'evet', 'Hayır', '', NULL, 'uploads/cv/676c447b0a14e9.40005355.docx'),
(10, 'Kübra Güz', '05052034545', 'Zonguldak', 'Bartın Üniversitesi', 'Hukuk', 'Deneyimsiz', 'Var', 'Kadın', 'Uzman', 'C2', 'Uzman', '0-1 yıl', 'evet', 'Evet', 'Daha önce bir kurumunda iki yıl sözleşmeli avukatlık yaptım', NULL, 'uploads/cv/676c470bb0ce98.27373025.docx'),
(11, 'Atilla Sansargil', '05423696996', 'İstanbul', 'Boğaziçi Üniversitesi', 'Tıp', '0-1 yıl', 'Yok', 'Erkek', 'Acemi', 'A2', 'Acemi', 'Deneyimsiz', 'evet', 'Evet', 'Devlet hastanesi acilinde pratisyen hekimlik yaptım.', 'Tamamlandi', 'uploads/cv/676c47ee53c3a1.15318879.docx'),
(12, 'Tarık Şen', '05051452321', 'Çankırı', 'Çankaya Üniversitesi', 'İşletme', '+3 yıl', 'Var', 'Erkek', 'Hakim', 'B2', 'Hakim', '1-3 yıl', 'evet', 'Evet', 'deneyimliyim', 'Tecilli', 'uploads/cv/676c4cc9da2d09.30603381.pdf'),
(13, 'Fetir Taş', '5055555555', 'Çankırı', 'Siirt Üniversitesi', 'Sigortacılık ve Risk Yönetimi', 'Deneyimsiz', 'Yok', 'Erkek', 'Acemi', 'B2', 'Uzman', '1-3 yıl', 'hayır', 'Hayır', '', 'Tecilli', 'uploads/cv/676cff7b5a45a5.31974029.pdf'),
(14, 'Şevval Oluk', '05367745786', 'İstanbul', 'Karadeniz Teknik Üniversitesi', 'Yönetim Bilişim Sistemleri', '+3 yıl', 'Var', 'Kadın', 'Uzman', 'C2', 'Uzman', '+3 yıl', 'evet', 'Evet', 'Deneyimliyim', NULL, 'uploads/cv/676d000d817640.11042969.pdf'),
(15, 'Feride Saç', '5055555555', 'Çanakkale', 'Bolu Abant İzzet Baysal Üniversitesi', 'Finans', '1-3 yıl', 'Yok', 'Kadın', 'Uzman', 'B2', 'Hakim', '1-3 yıl', 'evet', 'Evet', 'Deneyimim var', NULL, 'uploads/cv/676d08a7004b42.22949705.pdf');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `dogumtarihi` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `dogumtarihi`, `email`, `phone`, `username`, `password`) VALUES
(1, 'Test', 'Kullanıcı', '1990-01-01', 'test@example.com', '+905555555555', 'testuser', '$2y$10$XK9wFvJa6pgBo8cTBdk6fuEgk2gk7s6jVxe9Cj46wkBwda32DdXiC'),
(2, 'Test', 'Kullanıcı', '1990-01-01', 'test@example.com', '+905555555555', 'testuser', '$2y$10$h3W9RkowtIzHiFf4kWWYX.gIReBEdqO7vZ0orNwscT3vWFL0KK3FG'),
(3, 'Büş', 'Güz', '2000-01-01', 'b@b.b', '+905555555555', 'denem', '1234d'),
(4, 'Büşranur', 'Güzoğlu', '2004-03-16', 'b@b.nn', '+905555555555', 'Büşra', '1234'),
(5, 'Hande', 'Yılmaz', '2004-03-16', 'h@h.nn', '+905555555555', 'hande', '1234'),
(6, 'Filiz', 'akın', '1995-03-02', 'f@f.gg', '+905051116633', 'filizakın', '1234'),
(7, 'Büşranur', 'Güzoğlu', '2004-03-16', 'bus@gmail.com', '05052153545', 'Büşra', '1234'),
(8, 'Ferit', 'Taş', '2000-12-12', 'sdgf@dsfs.dfds', '05055555555', 'Ferit', '1234'),
(9, 'Feride', 'saç', '2000-12-12', 'feride@f.ds', '05055555555', 'Feride', '1234');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `basvuru_formu`
--
ALTER TABLE `basvuru_formu`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `basvuru_formu`
--
ALTER TABLE `basvuru_formu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
