-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2019 at 09:21 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_review`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_07_27_163754_create_movies_table', 1),
(4, '2019_07_27_190313_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
CREATE TABLE IF NOT EXISTS `movies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `cover_image`, `poster_image`, `created_at`, `updated_at`) VALUES
(1, 'Dark Phoenix', 'This is the story of one of the X-Men’s most beloved characters, Jean Grey, as she evolves into the iconic DARK PHOENIX', 'slider-1.jpg', 'movie-1.jpg', '2019-07-27 19:10:36', '2019-07-27 19:10:36'),
(2, 'Godzilla: King of the Monsters', 'Members of the crypto-zoological agency Monarch face off against a battery of god-sized monsters, including the mighty Godzilla, who collides with Mothra, Rodan, and his ultimate nemesis, the three-headed King Ghidorah.', 'slider-2.jpg', 'movie-2.jpg', '2019-07-27 19:10:36', '2019-07-27 19:10:36'),
(3, 'Avengers: Endgame', 'Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle', 'slider-3.jpg', 'movie-3.jpg', '2019-07-27 19:12:00', '2019-07-27 19:12:00'),
(4, 'Shazam!', 'We all have a superhero inside of us -- it just takes a bit of magic to bring it out. In 14-year-old Billy Batson\'s case, all he needs to do is shout out one word to transform into the adult superhero Shazam', 'slider-4.jpg', 'movie-4.jpg', '2019-07-27 19:12:00', '2019-07-27 19:12:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(3,1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `movie_id`, `body`, `rating`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'This movie is so bad , i just fell asleep in the hall ! Bad CGI !', 3.8, '2019-07-27 14:13:11', '2019-07-27 15:05:12'),
(5, 1, 2, 'Its actually better than i thought', 4.4, '2019-07-27 15:08:43', '2019-07-27 15:09:05'),
(6, 1, 3, 'henomenally entertaining and a masterpiece!!! The Russo brothers nailed it again!!! I\'m so grateful they\'re directing these movies. It makes them so much better and everything is so well thought out. Love it!! It\'s so on-point. Has everything drama, suspense, some funny comedy moments, full of adventure, mystery, and impressive action sequences I\'ve ever seen. It\'s the most best superhero movie I\'ve ever seen in my life.', 5.0, '2019-07-27 15:09:54', '2019-07-27 15:09:54'),
(3, 2, 1, 'Even though I heard the film received extremely and unbelievably negative reviews all over, I didn\'t change my mind and went for an afternoon show today in IMAX 3D. I found it enjoyable to the core as I didn\'t look for flaws or something even close to that. The audience turnout had also been quite lower than usual following the negative talk but I still enjoyed it like any other X-Men movie.', 5.0, '2019-07-27 14:39:52', '2019-07-27 14:39:52'),
(4, 3, 2, 'One of the things I love most about this movie is right from the start, it jumps right in. No slow paced beginning it literally starts us off with a Kaiju and from then on it\'s nothing but the best. They do give you moments to breath because boy would you need it, the action packed fighting scenes will have you breathless and on the edge of your seat! The soundtrack gave me goosebumps along with it as well, as soon as I got home I downloaded the album. Unlike the first one, we get to see a lot of Godzilla, but not to the point where you get tired of him. I\'m not gonna get into full spoil territory but I\'ll just say, in the movie they state he has a relationship with the Queen of Monsters and I am behind and on board with it 100 percent. Its honestly quite sweet. You go a little more in backstory of Godzilla and that was a lot fun. Another thing that was awesome was that the heavy foreshadowing of Godzilla vs King Kong.', 4.0, '2019-07-27 15:04:03', '2019-07-27 15:04:03'),
(7, 3, 3, 'A FITTING CONCLUSION TO AN EPIC SAGA\r\nHow do you conclude a 11-year old saga in a way that doesn\'t mess things up? It does sound like a near impossible task, but the Russo Brothers have surprisingly accomplished it.', 4.8, '2019-07-27 15:10:33', '2019-07-27 15:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'Johndoe@gmail.com', NULL, '$2y$10$DEj2F1XCslTkriEc6TSLlO7qcX8r6Btv7es8Q7sOffcCEUqufeyrO', NULL, '2019-07-27 13:43:07', '2019-07-27 13:43:07'),
(2, 'Jane Doe', 'janedoe@gmail.com', NULL, '$2y$10$pixQ9yCDCajKHhgFFoRxbeHFcO2WiZkOGBB8e6YkA8AqzSinpyUm6', NULL, '2019-07-27 14:39:23', '2019-07-27 14:39:23'),
(3, 'Junaed Siam', 'junaed@gmail.com', NULL, '$2y$10$3jG5p1Eg7fE6GTRONcfeT.iGSY7ST8gbRjd5Ruj1ie/g8wgtXMztu', NULL, '2019-07-27 15:03:34', '2019-07-27 15:03:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
