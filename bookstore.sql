-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2024 at 05:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `authentication`
--

CREATE TABLE `authentication` (
  `id` int(11) NOT NULL,
  `userId` int(10) NOT NULL,
  `browser` varchar(200) NOT NULL,
  `isLoggedIn` tinyint(1) NOT NULL,
  `LogTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authentication`
--

INSERT INTO `authentication` (`id`, `userId`, `browser`, `isLoggedIn`, `LogTime`) VALUES
(1, 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 1, '2024-01-24 17:08:42'),
(2, 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 1, '2024-01-24 17:27:07'),
(3, 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 0, '2024-01-24 18:06:17'),
(4, 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 1, '2024-01-29 13:13:02'),
(5, 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 1, '2024-01-31 16:42:00'),
(6, 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:121.0) Gecko/20100101 Firefox/121.0', 1, '2024-02-01 04:05:58'),
(7, 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 1, '2024-02-01 16:45:27'),
(8, 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 1, '2024-02-02 05:10:22'),
(9, 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 1, '2024-02-02 14:20:59'),
(10, 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 1, '2024-02-02 14:27:28'),
(11, 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 1, '2024-02-03 04:19:44'),
(12, 11, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 1, '2024-02-03 10:28:21'),
(13, 10, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 1, '2024-02-07 04:06:24'),
(14, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 0, '2024-02-07 09:24:21'),
(15, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 0, '2024-02-07 09:24:21'),
(16, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 0, '2024-02-07 09:24:21'),
(17, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 0, '2024-02-07 09:24:21'),
(18, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 0, '2024-02-07 09:24:21'),
(19, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 0, '2024-02-07 10:21:48'),
(20, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 0, '2024-02-07 10:21:48'),
(21, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 0, '2024-02-07 11:05:56'),
(22, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 0, '2024-02-07 11:05:56'),
(23, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 1, '2024-02-08 08:41:01'),
(24, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:122.0) Gecko/20100101 Firefox/122.0', 1, '2024-02-17 10:34:29'),
(25, 13, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 1, '2024-02-28 15:57:59'),
(26, 14, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:123.0) Gecko/20100101 Firefox/123.0', 1, '2024-03-18 16:57:03'),
(27, 12, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 1, '2024-03-22 07:09:57'),
(28, 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 0, '2024-04-04 18:33:51'),
(29, 8, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', 0, '2024-04-04 18:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description.` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(2000) NOT NULL,
  `language` varchar(50) NOT NULL,
  `publication_date` varchar(20) NOT NULL,
  `author_id` int(10) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(200) NOT NULL,
  `edition` int(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `stock` int(10) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `language`, `publication_date`, `author_id`, `price`, `image`, `edition`, `status`, `stock`, `genre`, `time`) VALUES
(2, 'abc', '', 'hindi', '2024-01-22', 8, 99, 'assets/bookImages/abc.jpg', 1, 'Available', 100, 'fantacy', '2024-01-31 14:06:58'),
(3, 'abc', '', 'hindi', '2024-01-22', 8, 99, 'assets/bookImages/abc.jpg', 1, 'Available', 100, 'fantacy', '2024-01-31 14:06:58'),
(4, 'abc', '', 'hindi', '2024-01-22', 8, 99, 'assets/bookImages/abc.jpg', 1, 'Available', 100, 'fantacy', '2024-01-31 14:06:58'),
(5, 'abc', '', 'hindi', '2024-01-22', 8, 99, 'assets/bookImages/abc.jpg', 1, 'Available', 100, 'fantacy', '2024-01-31 14:06:58'),
(6, 'guarav kumbhar', '', 'marathi', '2024-01-30', 1, 100000000000, 'assets/bookImages/guarav kumbhar.jpg', 2, 'Available', 23, 'romance', '2024-02-01 03:58:23'),
(7, 'iron', '', 'hindi,english', '2024-02-02', 1, 499, 'assets/bookImages/iron.jpg', 1, 'Available', 23, 'fantacy', '2024-02-01 04:35:40'),
(8, 'bhagwatgeeta', '', 'hindi,english', '2024-02-04', 1, 1, 'assets/bookImages/bhagwatgeeta.jpg', 1, 'Available', 100, 'adveture', '2024-02-04 13:04:04'),
(9, 'bhagwatgeeta', '', 'hindi,english', '2024-02-04', 1, 1, 'assets/bookImages/bhagwatgeeta.jpg', 1, 'Available', 100, 'adveture', '2024-02-04 13:04:50'),
(10, 'painting cats', 'In this follow-up to her hit Painting Happiness, Instagram sensation Terry Runyan shows you how to play with watercolour to create quirky cat portraits – and let go of stress. Perfect for cat lovers and watercolour artists of all skill levels, from absolute beginner to more experienced, Painting Cats teaches you how to go from blob of paint to a beautiful portrait of your fluffy friends. Drawing on art therapy techniques that emphasize fun and freedom in creativity over technical perfection, Runyan guides you step by step through the process of adding details to loosely painted shapes to create your own unique and distinct cats! ', 'english', '2024-02-07', 1, 99, 'assets/bookImages/painting cats.webp', 1, 'Available', 100, 'adventure', '2024-02-07 09:32:34'),
(11, 'The Great Gatsby', '', 'english', '2024-03-22', 1, 233, 'assets/bookImages/The Great Gatsby.jpg', 2, 'Available', 99, 'adveture', '2024-03-22 05:07:25'),
(12, 'To Kill a Mockingbird', '', 'english', '2024-03-22', 1, 799, 'assets/bookImages/To Kill a Mockingbird.jpg', 2, 'Available', 100, 'fantacy', '2024-03-22 05:09:52'),
(13, 'The Great Gatsby', '', 'english', '2024-03-22', 1, 789, 'assets/bookImages/The Great Gatsby.jpg', 3, 'Available', 799, 'adventure', '2024-03-22 05:12:42'),
(14, 'Little Miss Mary', '', 'english', '2024-03-22', 1, 499, 'assets/bookImages/Little Miss Mary.png', 3, 'Available', 50, 'adveture', '2024-03-22 05:16:49'),
(15, 'Teacher Man ', '', 'english', '2024-03-22', 1, 150, 'assets/bookImages/Teacher Man .jpg', 1, 'Available', 56, 'adveture', '2024-03-22 05:19:21'),
(16, 'The Street Lawyer', '', 'hindi,english', '2024-03-22', 1, 800, 'assets/bookImages/The Street Lawyer.jpg', 2, 'Available', 50, 'adveture', '2024-03-22 05:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `book_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `total_price` float NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `book_id`, `quantity`, `total_price`, `discount`) VALUES
(53, 8, 7, 1, 499, 0),
(55, 11, 7, 20, 9980, 0),
(88, 13, 7, 20, 9980, 0),
(89, 14, 10, 4, 396, 0),
(90, 12, 16, 5, 4000, 0),
(91, 8, 16, 1, 800, 0),
(92, 8, 10, 2, 198, 0);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `name` varchar(50) NOT NULL,
  `pincode` int(20) NOT NULL,
  `country` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`name`, `pincode`, `country`) VALUES
('pune', 29, 2),
('abc', 34, 12),
('sdfgh', 123, 3),
('baramati ', 413102, 1),
('satara', 413104, 2);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `dest_address` varchar(100) NOT NULL,
  `status` enum('processing','shipped','out of delivery','delivered','failed delivery attempt','return to sender','in transist','delayed','on hold') NOT NULL,
  `payment` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `status` enum('pending','processing','completed','failed/decline','refunded','cancelled','on hold') NOT NULL,
  `payment_method` enum('cash','credit cards','debit cards','mobile payments') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `profile_pic` varchar(400) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone number` int(12) NOT NULL,
  `role` varchar(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `profile_pic`, `email`, `password`, `dob`, `address`, `city`, `phone number`, `role`, `created`) VALUES
(8, 'Shubh', 'assets/avtar/1Shubh.jpg', 'shubham826852@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$eXBKY29hMkZ2LklTZlBVNw$rTitQglEy2xQM2uibBJC3HLIOMU7h5/1YUaFFaDslTI', '2003-08-03', 'India', 'India', 0, 'admin', '2024-01-24 12:37:39'),
(9, 'Shubh', 'assets/avtar/9Shubh.jpg', 'shubham826852@gmail.comm', '$argon2id$v=19$m=65536,t=4,p=1$a1V4R01YVmlWWWd5YWFqZA$4Gsk4gR/eoZRQ+BneZ70uOnejs9OyEEcdB78MENkvKc', '0000-00-00', '', '', 0, 'normal', '2024-01-24 12:33:48'),
(10, 'Shubh', 'assets/avtar/10Shubh.jpg', 'shubham826852@gmail.commm', '$argon2id$v=19$m=65536,t=4,p=1$cGIuLmhzVlBmbjN0QTkxOQ$QCMNGxkX9uvlgqx26s1e12F5O/fIH1D6l0aCWFJs3sY', '2024-01-24', '', '', 0, 'normal', '2024-01-24 12:35:24'),
(11, 'GAURAV', 'assets/avtar/11GAURAV.webp', 'gaurav@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$aFl1MVFiSXBiYi9nMnJ1eQ$QrZUats+G88ae1Q7zyiTe2rAJaeFtQ12I0M5VKwcTG4', '2024-02-02', '', '', 0, 'normal', '2024-02-01 04:05:44'),
(12, 'kr', 'assets/avtar/12kr.jpg', 'Kr@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$QVRhZ2hzOHBuZjY2T0JFSA$CEACof/akjeKhJPR5YyJJ2C5S4NxLyk/mHM+G+PGdcQ', '2024-02-07', '', '', 0, 'normal', '2024-02-07 04:16:54'),
(13, 'omkar kumbhar', 'assets/avtar/13omkar kumbhar.jpg', 'omkarkumbhar@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$OGNZN1gvZkh6eW1CM0doVg$VNTCJmfvBp4oRvEcWpI0YXeNviS73VXKaCmYaf/QyF4', '2003-05-06', '', '', 0, 'normal', '2024-02-28 15:57:38'),
(14, 'chex', 'assets/avtar/14chex.jpg', 'chex@gmail.com', '$argon2id$v=19$m=65536,t=4,p=1$RWR4c2MvUmxiVUpVdVdRTw$SQrdPQPUgDHoGzDSBGa4jJZvNDltJycKlhR5d3HK6Mk', '2024-03-18', '', '', 0, 'normal', '2024-03-18 16:56:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authentication`
--
ALTER TABLE `authentication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign key` (`userId`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users Fn` (`user_id`),
  ADD KEY `books Fn` (`book_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`pincode`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authentication`
--
ALTER TABLE `authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authentication`
--
ALTER TABLE `authentication`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `books Fn` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users Fn` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
