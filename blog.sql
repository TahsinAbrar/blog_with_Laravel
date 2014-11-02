-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2014 at 07:05 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_11_01_063545_create_posts_table', 1),
('2014_11_01_072736_create_users_table', 2),
('2014_11_01_074815_add_some_users', 2),
('2014_11_02_041208_add_remember_token_column_to_users', 3),
('2014_11_02_041704_correct_author_id_in_posts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`, `author_id`) VALUES
(1, 'Hello! - This is my first Post', 'Hi, this is my first blog post. I am really happy.', '2014-11-01 22:27:01', '2014-11-01 22:27:01', 1),
(2, 'Second Post', 'This is the second post I am writing in my blog.', '2014-11-01 22:28:16', '2014-11-01 22:28:16', 1),
(3, 'Third Post', 'This is the third post.', '2014-11-01 22:28:44', '2014-11-01 22:28:44', 1),
(4, 'Fourth Post', 'This is the Fourth post.', '2014-11-01 22:29:05', '2014-11-01 22:29:05', 1),
(5, 'Fifth Post', 'This is the fifth post.', '2014-11-01 22:29:26', '2014-11-01 22:29:26', 1),
(6, 'Sixth Post', 'This is the sixth post.', '2014-11-01 22:29:49', '2014-11-01 22:29:49', 1),
(7, 'Seventh Post', 'This is the seventh post.', '2014-11-01 22:30:07', '2014-11-01 22:30:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'abrar.cste@gmail.com', '$2y$10$Cf2CQiw74aXMUqsYgXw25OoZOPVqh9UY3ZrfCKzCHI2tEwIvZJacu', 'John Doe', '2014-11-01 01:52:36', '2014-11-01 22:14:49', 'BN77tF6KkKB1olWzw5jUvsrT6djKCXS9XD3iHLxxAseDTl5NQWgqkd39z36n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
