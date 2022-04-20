-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 03:21 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

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
-- Table structure for table `tourismlistplace`
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
-- Dumping data for table `tourismlistplace`
--

INSERT INTO `tourismlistplace` (`id`, `title`, `description`, `openDay`, `openTime`, `price`, `location`, `img`, `img1`, `img2`, `img3`) VALUES
(1, 'Surabaya Submarine Monument', 'Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintaned. car park cost 10k, enterance fee 15k/person, you can see KRI pasopati there, it is a russian whiskey class. you can also watch the video about the indonesian navy at the building beside the submarine', 'Tuesday - Sunday', '08.00 - 16.00', 'Rp 10.000,-', 'Jl Pemuda', 'https://res.cloudinary.com/drian/image/upload/v1650262757/Flutter-project-1/submarine_zfn1qj.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262542/Flutter-project-1/image1_crcm2a.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262557/Flutter-project-1/image2_pfotdo.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262572/Flutter-project-1/image3_lcnfv8.jpg'),
(2, 'Kelenteng Sanggar Agung', 'Sanggar Agung Temple or Hong San Tang (Chinese: 宏善堂) is a Chinese temple in Surabaya dedicated to Chinese deities and other Asian religious icons. It is located within the Pantai Ria amusement park and has become a tourist destination, even though it is originally a worship place for Tridharma followers. The name of Sanggar Agung is derived from Indonesian language which can be translated as Great Hall.', 'Open Everyday', '07.00 - 20.00', 'Rp 5.000,-', 'Kenjeran', 'https://res.cloudinary.com/drian/image/upload/v1650262722/Flutter-project-1/kelenteng_mljrrw.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262587/Flutter-project-1/image4_s6rcbh.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262601/Flutter-project-1/image5_nzh7zq.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262618/Flutter-project-1/image6_fwv9pr.jpg'),
(3, 'House of Sampoerna', 'Open to the public since October 9, 2003, House of Sampoerna (HoS) is a Dutch colonial-style heritage building complex built in 1862 and located in the “Old Surabaya” area.This complex was initially an orphanage for boys managed by the Dutch. In 1932, it was purchased by Liem Seeng Tee then became the first Sampoerna’s production facility.House of Sampoerna complex consists of a large central auditorium, two smaller buildings in the East and West wings.These outbuildings were used for tobacco and cloves processing inclusive of blending, rolling, packing, printing up to become finished goods. In 2002, the central auditorium and two smaller buildings in The East and West wings were carefully restored.The central auditorium currently serves as a Museum, while The East wing has been transformed into a unique building for The Café and Gift Shop and The West wing is currently an exhibition hall of Galeri Paviliun and The Residence.', 'Open Everyday', '09.00 - 18.00', 'Rp 5.000,-', 'Krembengan Utara', 'https://res.cloudinary.com/drian/image/upload/v1650262480/Flutter-project-1/House_x0s6ik.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262628/Flutter-project-1/image7_g5rdey.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262642/Flutter-project-1/image8_antrtg.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262654/Flutter-project-1/image9_nhtmj5.jpg'),
(5, 'Museum 10 November', 'The Heroes Monument is a monument in Surabaya, Indonesia. It is the main symbol of the city, dedicated to the people who died during the Battle of Surabaya on 10 November 1945. The 10 November Museum is located under the monument.The groundbreaking was led by Sukarno, the first Indonesian President, accompanied by Surabaya Mayor, Doel Arnowo on 10 November 1951. It was officially opened one year later, also by Sukarno, on 10 November 1952 witnessed by Surabaya Mayor, R. Moestadjab Soemowidigdo.The 10 November Museum was built to explain the meaning behind the Heroes Monument. The building consists of 2 floors, with exhibitions symbolizing the spirit of the Surabayan people struggle. There is an auditorium on the first floor. The museum contains reproductions of documentary photographs, and there are dioramas that presents eight events that happened around the 10 November 1945 clashes.', 'Open Everyday', '08.00 - 16.00', 'Rp 5.000,-', 'jl pahlawan', 'https://res.cloudinary.com/drian/image/upload/v1650262749/Flutter-project-1/museum_kckekl.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262662/Flutter-project-1/image10_ktvfjy.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262671/Flutter-project-1/image11_mgzi5q.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262676/Flutter-project-1/image12_dmb206.jpg'),
(6, 'Suroboyo Bridge', 'Suroboyo Bridge is a through arch bridge across the coastal area of Eastern Surabaya in Kenjeran Beach, District Kenjeran, Surabaya, East Java, Indonesia. This bridge has a length of 800 meters with a width of 18 meters and a height of 12 meters which is held with 150 stakes. The design of the bridge is built in a circle with a view of the fountain in the center of bridge.', 'Open Everyday', '06.00 - 21.00', 'Free', 'Jl. Pantai Kenjeran No.600', 'https://res.cloudinary.com/drian/image/upload/v1650262768/Flutter-project-1/suroboyo_y7yah5.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262684/Flutter-project-1/image13_lu58o4.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262694/Flutter-project-1/image14_hg0hmj.jpg', 'https://res.cloudinary.com/drian/image/upload/v1650262703/Flutter-project-1/image15_jz7awd.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tourismlistplace`
--
ALTER TABLE `tourismlistplace`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tourismlistplace`
--
ALTER TABLE `tourismlistplace`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
