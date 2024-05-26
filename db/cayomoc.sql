-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 08:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `rrp` decimal(10,0) NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'Football (Soccer)', 'Perhaps the most popular sport globally, played with a round ball between two teams of eleven players. The objective is to score goals by kicking the ball into the opposing team\'s net.', 800, 800, 100, 'https://imgs.search.brave.com/_qqfnKiyrkdECSqg7a0U2Nfst9s_vzrvnCQfvy-Cf5c/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvOTM4/ODkyOTEvcGhvdG8v/Zm9vdGJhbGwtdXNl/ZC1pc29sYXRlZC1v/bGQtc3R5bGUtc29j/Y2VyLWJhbGwtb24t/d2hpdGUtYmFja2dy/b3VuZC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9clJEVW92/Z2JjQVFoWGNZeFo3/OV9MRUFsNzNxRC1m/M18zNS1VeUNFOURo/TT0', '2024-05-12 00:00:00'),
(2, 'Basketball', 'Arai helmets are synonymous with meticulous craftsmanship and attention to detail. They prioritize safety above all else and are known for their innovative design features aimed at maximizing protection and comfort for riders.\r\n\r\n', 1000, 1000, 333, 'https://imgs.search.brave.com/FeDL3KtSVAlGDF99mAsfB9asyjpZOTDKCNNAJXLTUCw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTg0/OTE0NTM1L3Bob3Rv/L2Jhc2tldGJhbGwu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PVNoeEoyaWJDUzFu/dEkzUTZLVGt2MU83/VkQ2ejVUNXFnYmha/eVpDSG9NMUU9', '2024-05-12 00:00:00'),
(3, 'American Football', 'A team sport played between two teams of eleven players on a rectangular field with goalposts at each end. The primary objective is to score points by advancing the ball into the opposing team\'s end zone.', 1500, 1500, 96, 'https://imgs.search.brave.com/Os3zLeMpzWYTt_g0Nj0rrPsH-RV50AVhk_Yxfvwxo50/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNzE5/MTU1MTgvcGhvdG8v/YW1lcmljYW4tZm9v/dGJhbGwuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWw2QUVF/X2JybTJXVG0yMURt/alNUQmRZcXBOai0x/Q29BSTZwT2lySi10/eGM9', '2024-05-12 00:00:00'),
(4, 'Cricket', 'A bat-and-ball game played between two teams of eleven players on a circular field. The bowler delivers the ball to the batsman who tries to hit it and score runs while the opposing team fields and tries to dismiss the batsmen.\r\n\r\n', 600, 600, 40, 'https://imgs.search.brave.com/AmXgm7fyBE8asYTqjBdWp7VSK2_EHrg9OdIOPJvcnt0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/OTFySUswQ2NHSEwu/anBn', '2024-05-12 00:00:00'),
(5, 'Tennis', 'Played individually against a single opponent (singles) or between two teams of two players each (doubles). Players use a racket to hit a ball over a net into the opponent\'s court. The objective is to score points by making the opponent unable to return the ball.\r\n\r\n', 200, 200, 30, 'https://imgs.search.brave.com/hVL3brEJuc0hz5e_NQkn7LzjotdRojN8UJrbXta7oak/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTM3/MzQ1MTQ5L3Bob3Rv/L3Rlbm5pcy1iYWxs/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz0xVjFuVEptREhE/LUZGeElLSi14YW16/dElmbTcwZ2tuTFF5/OWhjTVNsSmJRPQ', '2024-05-12 00:00:00'),
(6, 'Volleyball', 'A team sport in which two teams of six players are separated by a net. The teams try to score points by grounding a ball on the other team\'s court.\r\n\r\n', 600, 600, 30, 'https://imgs.search.brave.com/R38u78Ah3b96-5Yzrj4a2bTk5Xvhk6MOHHm_T_lT_Kc/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQy/MjM1NDkzL3Bob3Rv/L3ZvbGxleWJhbGwu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PTlVdnY0elM1U2tf/aHhJaU1yOEtPVFRE/TFNhTzRpa2ttMlRJ/UDhVNGQteTg9', '2024-05-12 00:00:00'),
(7, 'Baseball', 'A bat-and-ball game played between two teams of nine players each. Players take turns batting and fielding. The batting team tries to score runs by hitting a ball thrown by the pitcher and running counter-clockwise around a series of four bases.\r\n\r\n\r\n', 300, 300, 36, 'https://imgs.search.brave.com/NNqiq9d9Y0ZnGDo8NAOZ3BFyJ3fJLo_Chf_8dSCIPvs/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTcz/NTg4ODExL3Bob3Rv/L2Jhc2ViYWxsLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz0z/RGhpS01ZdEh0cWFB/UzFWUWpEV19mTEdV/ZkxTNUxvMjFQQ3lW/endZeVA4PQ', '2024-05-12 00:00:00'),
(8, 'Rugby', 'Played with an oval-shaped ball by two teams of 15 players. The objective is to carry, pass, or kick the ball over the opposing team\'s goal line to score points.', 459, 459, 30, 'https://imgs.search.brave.com/BVMT_Zp3Lk1G7joXlRapp2EsycZFU2LcS43uiCepZjk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAwLzk2LzU1Lzc4/LzM2MF9GXzk2NTU3/ODA3X2dEWWlrUTll/YXBmV1QxalBuVzMz/OFJtNGJFUXp3UEtU/LmpwZw', '2024-05-12 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
