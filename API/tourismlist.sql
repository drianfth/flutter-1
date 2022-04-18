-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Mar 2022 pada 00.45
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourismlist`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tourismlistplace`
--

CREATE TABLE `tourismlistplace` (
  `id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `openDay` varchar(255) NOT NULL,
  `openTime` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tourismlistplace`
--

INSERT INTO `tourismlistplace` (`id`, `title`, `description`, `openDay`, `openTime`, `price`, `location`, `img`, `img1`, `img2`, `img3`) VALUES
(1, 'Namsan Tower', 'The N Seoul Tower (Korean: N서울타워), officially the YTN Seoul Tower and commonly known as Namsan Tower or Seoul Tower, is a communication and observation tower located on Namsan Mountain in central Seoul, South Korea. The 236-meter (774 ft)-tall tower marks the second highest point in Seoul\\n\\nBuilt in 1969, the N Seoul Tower is South Korea\'s first general radio wave tower, providing TV and radio broadcasting in Seoul. Currently, the tower broadcasts signals for Korean media outlets, such as KBS, MBC, and SBS.', 'Open Everyday', '10:00 - 23:00', 'Rp 185.000,-', '105 Namsangongwon-gil, Yongsan-gu, Seoul, South Korea', 'http://192.168.100.201/img/NamsanTower.jpg', 'http://192.168.100.201/img/NamsanTower1.jpg', 'http://192.168.100.201/img/NamsanTower2.jpg', 'http://192.168.100.201/img/NamsanTower3.jpg'),
(2, 'Gyeongbokgung Palace', 'Gyeongbokgung Palace was the first and largest of the royal palaces built during the Joseon Dynasty. Built in 1395, Gyeongbokgung Palace was located at the heart of the newly appointed capital of Seoul (then known as Hanyang) and represented the sovereignty of the Joseon Dynasty. The largest of the Five Grand Palaces (the others being Gyeonghuigung Palace, Deoksugung Palace, Changgyeonggung Palace, Changdeokgung Palace), Gyeongbokgung served as the main palace of the Joseon Dynasty.', 'Open Everyday', '09:00 - 17:00', 'Rp 35.000,-', '161 Sajik-ro, Jongno-gu, Seoul, South Korea', 'http://192.168.100.201/img/Gyeongbokgung.jpg', 'http://192.168.100.201/img/Gyeongbokgung1.jpg', 'http://192.168.100.201/img/Gyeongbokgung2.jpg', 'http://192.168.100.201/img/Gyeongbokgung3.jpg'),
(3, 'Seoul Central Mosque', 'The Seoul Central Mosque was established to be a place to worship for Muslims in Korea as well as to educate the larger public about Islam and Islamic cultures. The first floor of the mosque houses the Korea Muslim Federation office and a meeting room. On the second floor is the men\'s musalla (prayer hall), and on the third floor is the women\'s musalla (prayer hall). The mosque is open to worshippers and visitors.', 'Open Everyday', '24 Hours', 'Free', '39 Usadan-ro 10-gil, Yongsan-gu, Seoul, South Korea', 'http://192.168.100.201/img/SeoulMosque.jpg', 'http://192.168.100.201/img/SeoulMosque1.jpg', 'http://192.168.100.201/img/SeoulMosque2.jpg', 'http://192.168.100.201/img/SeoulMosque3.jpg'),
(5, 'Changdeokgung Palace', 'Changdeokgung Palace is the second UNESCO World Heritage Site in Seoul. It was selected as a representative palace for its notable beauty in the history of palace architecture in East Asia and for its excellent arrangement with the surrounding naturalenvironment. Changdeokgung Palace was built by King Taejong in 1405.\\n\\nDuring the Imjin War, Joseon lost both Gyeongbokgung Palace and Changdeokgung Palace. Reconstructed in the 2nd year of Gwanghaegun (1610), Changdeokgung was used as the royal palace of Joseon for about 270 years.', 'Open Everyday', '09:00 - 17:30', 'Rp 35.000,-', '2-71 Waryong-dong, Jongno-gu, Seoul, South Korea', 'http://192.168.100.201/img/Changdeokgung.jpg', 'http://192.168.100.201/img/Changdeokgung1.jpg', 'http://192.168.100.201/img/Changdeokgung2.jpg', 'http://192.168.100.201/img/Changdeokgung3.jpg'),
(6, 'Banpo Bridge', 'The Banpo Bridge (Korean: 반포대교; Hanja: 盤浦大橋) is a major bridge in downtown Seoul over the Han River, South Korea, connecting the Seocho and Yongsan districts. The bridge is on top of Jamsu Bridge, forming the upper half of a double-deck bridge; it is the first double deck bridge built in South Korea. During periods of high rainfall, the Jamsu Bridge is designed to submerge as the water level of the river rises, as the lower deck lies close to the waterline. The bridge was built as a girder bridge and was completed in 1982.', 'Open Everyday', '24 Hours', 'Free', 'Seocho-gu, Yongsan-gu, Seoul, South Korea', 'http://192.168.100.201/img/BanpoBridge.jpg', 'http://192.168.100.201/img/BanpoBridge1.jpg', 'http://192.168.100.201/img/BanpoBridge2.jpg', 'http://192.168.100.201/img/BanpoBridge3.jpg'),
(7, 'Caribbean Bay', 'Caribbean Bay is an indoor/outdoor water park located in Yongin, South Korea, on the outskirts of Seoul. Opened in 1996, it is the Largest Indoor and Outdoor Waterpark in the world,[citation needed] covering a total area of about 242,321,000 square yards (78.2 sq mi; 202.6 km2). Caribbean Bay is part of the Everland Resort, but requires a separate admission fee.\\n\\nWith the opening in 2008 of its newest attraction, the \"Wild River Zone\", Caribbean Bay expanded its capacity by 30%. The park includes a wave pool, the world\'s Longest Lazy river Ride, a Sandy Pool, a Wading Pool for young children, Various Water Slides, and a Salt Sauna.', 'Closed Every Tue & Wed', '10.00 - 18:00', 'Rp 500.000,-', '199 Everland-ro, Pogog-eup, Cheoin-gu, Yongin-si, Gyeonggi-do, South Korea', 'http://192.168.100.201/img/CaribbeanBay.jpg', 'http://192.168.100.201/img/CaribbeanBay1.jpg', 'http://192.168.100.201/img/CaribbeanBay2.jpg', 'http://192.168.100.201/img/CaribbeanBay3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tourismlistplace`
--
ALTER TABLE `tourismlistplace`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tourismlistplace`
--
ALTER TABLE `tourismlistplace`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;