-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 05:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'Hi', 'abraham_sylvester', 'geoffrey_sylvester', '2019-02-20 20:11:54', 'no', 3),
(2, 'What\'s up?', 'abraham_sylvester', 'geoffrey_sylvester', '2019-02-20 20:12:20', 'no', 3),
(3, 'Hi Captain?', 'abraham_sylvester', 'captain_nigeria', '2019-02-20 20:12:34', 'no', 2),
(4, 'Abraham, that\'s nice!', 'abraham_sylvester', 'abraham_sylvester', '2019-02-20 20:12:51', 'no', 1),
(5, '', 'abraham_sylvester', 'captain_nigeria', '2019-02-20 20:50:00', 'no', 2),
(6, '', 'abraham_sylvester', 'geoffrey_sylvester', '2019-02-20 21:00:25', 'no', 3),
(7, '', 'abraham_sylvester', 'geoffrey_sylvester', '2019-02-23 22:08:01', 'no', 3),
(8, '', 'abraham_sylvester', 'geoffrey_sylvester', '2019-02-23 22:08:26', 'no', 3),
(9, '', 'abraham_sylvester', 'geoffrey_sylvester', '2019-02-24 23:13:46', 'no', 3),
(10, '', 'abraham_sylvester', 'geoffrey_sylvester', '2019-02-24 23:15:07', 'no', 3),
(11, '', 'captain_nigeria', 'captain_nigeria', '2019-03-05 16:39:20', 'no', 10),
(12, 'Yeah, Count me in!', 'captain_nigeria', 'captain_nigeria', '2019-03-05 16:40:17', 'no', 9),
(13, 'Let\'s go for sky diving.. ', 'geoffrey_sylvester', 'geoffrey_sylvester', '2019-03-05 17:23:09', 'no', 7),
(14, '', 'captain_nigeria', 'captain_nigeria', '2019-03-15 21:12:59', 'no', 10),
(15, 'There will be match this Friday!', 'abraham_sylvester', 'captain_nigeria', '2019-03-20 15:56:18', 'no', 10),
(16, '', 'abraham_sylvester', 'abraham_sylvester', '2019-03-20 16:05:09', 'no', 13),
(17, 'Wanna go bowling!', 'abraham_sylvester', 'geoffrey_sylvester', '2019-03-20 16:18:00', 'no', 7),
(18, 'Hi Abraham!', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-24 08:29:51', 'no', 23),
(19, 'I am current working on my personal project? ', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-24 08:33:14', 'no', 23),
(20, 'Hi!', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-24 08:35:42', 'no', 22),
(21, 'I am all in:)', 'abraham_sylvester', 'geoffrey_sylvester', '2019-04-24 14:18:51', 'no', 24),
(22, 'Common, say something!', 'abraham_sylvester', 'geoffrey_sylvester', '2019-04-24 14:27:46', 'no', 24),
(23, 'Nothing much!', 'abraham_sylvester', 'geoffrey_sylvester', '2019-04-24 21:56:50', 'no', 25),
(24, 'Hey Yo!', 'abraham_sylvester', 'geoffrey_sylvester', '2019-04-24 22:08:19', 'no', 25),
(25, 'Are you there?', 'abraham_sylvester', 'geoffrey_sylvester', '2019-04-24 22:10:31', 'no', 25),
(26, 'Common say something!', 'abraham_sylvester', 'geoffrey_sylvester', '2019-04-24 22:11:24', 'no', 25),
(27, 'Yeah, I am here!', 'geoffrey_sylvester', 'geoffrey_sylvester', '2019-04-24 22:18:52', 'no', 25),
(28, 'Hello!', 'geoffrey_sylvester', 'geoffrey_sylvester', '2019-04-24 22:36:27', 'no', 26),
(29, 'You hit a jackpot:)', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-25 08:15:50', 'no', 27),
(30, 'Tell me what is it?\r\n', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-25 08:20:56', 'no', 27),
(31, 'What\'s Up?', 'geoffrey_sylvester', 'geoffrey_sylvester', '2019-04-25 08:33:56', 'no', 26),
(32, 'Are you there?', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-25 08:34:37', 'no', 27),
(33, 'Oh, That\'s great news! I wish you the best.', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-25 08:37:59', 'no', 23),
(34, 'I am so honored to have you as my brother!', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-25 09:42:56', 'no', 28),
(35, 'Come and get it!', 'abraham_sylvester', 'chinenye_abraham', '2019-05-01 17:22:24', 'no', 29);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(2, 'messsagesphp', 'abraham_sylvester'),
(3, 'chandler_nathan', 'abraham_sylvester'),
(4, 'chinenye_abraham', 'captain_nigeria'),
(7, 'emmanuel_onah', 'abraham_sylvester');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(6, 'abraham_sylvester', 2),
(12, 'abraham_sylvester', 3),
(13, 'geoffrey_sylvester', 6),
(14, 'captain_nigeria', 9),
(15, 'abraham_sylvester', 17),
(16, 'abraham_sylvester', 21),
(19, 'abraham_sylvester', 20),
(21, 'geoffrey_sylvester', 22),
(24, 'abraham_sylvester', 10),
(25, 'abraham_sylvester', 1),
(26, 'geoffrey_sylvester', 24),
(32, 'geoffrey_sylvester', 26),
(36, 'abraham_sylvester', 24),
(38, 'abraham_sylvester', 23),
(41, 'geoffrey_sylvester', 23),
(43, 'abraham_sylvester', 25),
(44, 'abraham_sylvester', 16),
(45, 'geoffrey_sylvester', 27),
(46, 'abraham_sylvester', 26),
(47, 'geoffrey_sylvester', 28),
(55, 'abraham_sylvester', 28),
(56, 'abraham_sylvester', 27),
(57, 'captain_nigeria', 28),
(58, 'abraham_sylvester', 29),
(59, 'chinenye_abraham', 64);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'geoffrey_sylvester', 'abraham_sylvester', 'Hello Geoffrey!', '2019-03-26 06:43:09', 'yes', 'yes', 'no'),
(2, 'abraham_sylvester', 'geoffrey_sylvester', 'Hi Abraham!', '2019-03-27 12:11:54', 'yes', 'yes', 'no'),
(3, 'abraham_sylvester', 'geoffrey_sylvester', ' I am planning to registering for gym this month!', '2019-04-01 21:44:29', 'yes', 'yes', 'no'),
(4, 'abraham_sylvester', 'geoffrey_sylvester', ' I am planning to registering for gym this month!', '2019-04-01 22:44:54', 'yes', 'yes', 'no'),
(5, 'abraham_sylvester', 'geoffrey_sylvester', ' I am planning to registering for gym this month!', '2019-04-01 22:47:27', 'yes', 'yes', 'no'),
(6, 'abraham_sylvester', 'geoffrey_sylvester', ' I am planning to registering for gym this month!', '2019-04-01 22:51:00', 'yes', 'yes', 'no'),
(7, 'abraham_sylvester', 'geoffrey_sylvester', ' I am planning to registering for gym this month!', '2019-04-01 22:55:06', 'yes', 'yes', 'no'),
(8, 'abraham_sylvester', 'geoffrey_sylvester', 'I was able to register for my Gym workout yesterday 03.04.2019\r\n\r\n', '2019-04-04 17:46:50', 'yes', 'yes', 'no'),
(9, 'captain_nigeria', 'geoffrey_sylvester', 'Hello man!', '2019-04-07 06:17:23', 'no', 'no', 'no'),
(10, 'chinenye_abraham', 'abraham_sylvester', 'Hello my love!', '2019-04-07 06:56:39', 'yes', 'yes', 'no'),
(11, 'abraham_sylvester', 'chinenye_abraham', 'Yes darling! How are you doing?', '2019-04-07 08:54:25', 'yes', 'yes', 'no'),
(12, 'geoffrey_sylvester', 'abraham_sylvester', ' Today is  a beautiful day..', '2019-04-07 09:20:11', 'yes', 'yes', 'no'),
(13, '', 'abraham_sylvester', 'What do you want to be remembered for?', '2019-04-07 09:42:17', 'yes', 'no', 'no'),
(14, '', 'abraham_sylvester', 'What do you want to be remembered for?', '2019-04-07 09:42:30', 'yes', 'no', 'no'),
(15, '', 'abraham_sylvester', 'What do you want to be remembered for?', '2019-04-07 09:42:40', 'yes', 'no', 'no'),
(16, '', 'abraham_sylvester', 'Hey Today I spoke with my place of work about my propose research solution!\r\n\r\n\r\nWhat do you think?', '2019-04-10 19:19:18', 'yes', 'no', 'no'),
(17, '', 'emmanuel_onah', 'Hello Royalty', '2019-04-22 16:47:57', 'no', 'no', 'no'),
(18, '', 'abraham_sylvester', 'Hook me up!', '2019-04-22 17:04:06', 'no', 'no', 'no'),
(19, '', 'abraham_sylvester', 'I will be traveling to Finland soon!', '2019-04-24 01:28:47', 'no', 'no', 'no'),
(20, '', 'abraham_sylvester', 'I will be traveling to Finland soon!', '2019-04-24 01:29:20', 'no', 'no', 'no'),
(21, 'abraham_sylvester', 'geoffrey_sylvester', 'Hello', '2019-04-24 02:50:01', 'yes', 'yes', 'no'),
(22, 'abraham_sylvester', 'geoffrey_sylvester', 'Hello', '2019-04-24 02:53:13', 'yes', 'yes', 'no'),
(23, 'abraham_sylvester', 'geoffrey_sylvester', 'Hello', '2019-04-24 02:54:51', 'yes', 'yes', 'no'),
(24, 'abraham_sylvester', 'geoffrey_sylvester', 'What\'s up?\r\n', '2019-04-24 04:11:44', 'yes', 'yes', 'no'),
(25, 'abraham_sylvester', 'geoffrey_sylvester', 'Hey', '2019-04-24 04:12:58', 'yes', 'yes', 'no'),
(26, 'geoffrey_sylvester', 'abraham_sylvester', 'Hi big guy!', '2019-04-24 05:01:22', 'yes', 'yes', 'no'),
(27, 'abraham_sylvester', 'geoffrey_sylvester', 'Big bro, how\'re you doing today?', '2019-04-24 05:19:19', 'yes', 'yes', 'no'),
(28, 'abraham_sylvester', 'geoffrey_sylvester', 'Big bro, how\'re you doing today?', '2019-04-24 05:46:41', 'yes', 'yes', 'no'),
(29, 'abraham_sylvester', 'geoffrey_sylvester', 'Big bro, how\'re you doing today?', '2019-04-24 05:48:02', 'yes', 'yes', 'no'),
(30, 'abraham_sylvester', 'geoffrey_sylvester', 'Big bro, how\'re you doing today?', '2019-04-24 06:19:29', 'yes', 'yes', 'no'),
(31, 'abraham_sylvester', 'geoffrey_sylvester', 'I am doing good, what about?', '2019-04-24 06:20:11', 'yes', 'yes', 'no'),
(32, 'abraham_sylvester', 'geoffrey_sylvester', 'Same here!\r\n', '2019-04-24 07:27:41', 'yes', 'yes', 'no'),
(33, 'abraham_sylvester', 'geoffrey_sylvester', 'Good!', '2019-04-24 14:17:19', 'yes', 'yes', 'no'),
(34, 'geoffrey_sylvester', 'geoffrey_sylvester', 'Hello!', '2019-04-25 08:22:14', 'yes', 'yes', 'no'),
(35, 'geoffrey_sylvester', 'geoffrey_sylvester', 'Hi', '2019-04-25 08:22:54', 'yes', 'yes', 'no'),
(36, 'geoffrey_sylvester', 'geoffrey_sylvester', 'Hey!', '2019-04-25 08:23:05', 'yes', 'yes', 'no'),
(37, 'geoffrey_sylvester', 'geoffrey_sylvester', 'What\'s up?', '2019-04-25 08:23:14', 'yes', 'yes', 'no'),
(38, 'geoffrey_sylvester', 'geoffrey_sylvester', 'Are you there?', '2019-04-25 08:23:35', 'yes', 'yes', 'no'),
(39, 'chinenye_abraham', 'chinenye_abraham', 'Hey!', '2019-04-27 13:24:29', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(50) NOT NULL,
  `user_from` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'abraham_sylvester', 'geoffrey_sylvester', 'Geoffrey Sylvester commented on your post', 'post.php?id=27', '2019-04-25 08:20:56', 'no', 'yes'),
(2, 'abraham_sylvester', 'geoffrey_sylvester', 'Geoffrey Sylvester commented on your post', 'post.php?id=23', '2019-04-25 08:37:59', 'yes', 'yes'),
(3, 'geoffrey_sylvester', 'abraham_sylvester', 'Abraham Sylvester liked your post', 'post.php?id=26', '2019-04-25 09:41:24', 'no', 'yes'),
(4, 'abraham_sylvester', 'geoffrey_sylvester', 'Geoffrey Sylvester liked your post', 'post.php?id=28', '2019-04-25 09:42:26', 'yes', 'yes'),
(5, 'abraham_sylvester', 'geoffrey_sylvester', 'Geoffrey Sylvester commented on your post', 'post.php?id=28', '2019-04-25 09:42:56', 'yes', 'yes'),
(6, 'abraham_sylvester', 'captain_nigeria', 'Captain Nigeria liked your post', 'post.php?id=28', '2019-04-27 07:59:30', 'no', 'no'),
(7, 'chinenye_abraham', 'abraham_sylvester', 'Abraham Sylvester liked your post', 'post.php?id=29', '2019-05-01 17:22:02', 'no', 'no'),
(8, 'chinenye_abraham', 'abraham_sylvester', 'Abraham Sylvester commented on your post', 'post.php?id=29', '2019-05-01 17:22:24', 'no', 'no'),
(9, 'abraham_sylvester', 'chinenye_abraham', 'Chinenye Abraham liked your post', 'post.php?id=64', '2019-05-02 10:32:04', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'This is my first post!', 'abraham_sylvester', 'none', '2019-02-20 10:39:00', 'no', 'no', 1, ''),
(2, 'Hello everyone!', 'captain_nigeria', 'none', '2019-02-20 12:13:04', 'no', 'no', 1, ''),
(3, 'Hello world:)', 'geoffrey_sylvester', 'none', '2019-02-20 12:18:12', 'no', 'no', 1, ''),
(4, 'Alpha Team, can you copy?', 'chandler_nathan', 'none', '2019-02-20 19:53:10', 'no', 'no', 0, ''),
(5, 'Alpha Team, can you copy?', 'chandler_nathan', 'none', '2019-02-20 19:53:33', 'no', 'no', 0, ''),
(6, 'What\'s the plan for today?\r\n', 'geoffrey_sylvester', 'none', '2019-03-02 21:40:54', 'no', 'no', 1, ''),
(7, 'What\'s the plan for today?\r\n', 'geoffrey_sylvester', 'none', '2019-03-02 21:41:42', 'no', 'no', 0, ''),
(8, 'Hey yo!', 'captain_nigeria', 'none', '2019-03-03 20:07:49', 'no', 'no', 0, ''),
(9, 'Anyone in for football today?', 'captain_nigeria', 'none', '2019-03-03 20:10:27', 'no', 'no', 1, ''),
(10, 'Abe, what\'s up?', 'captain_nigeria', 'abraham_sylvester', '2019-03-03 20:11:19', 'no', 'no', 1, ''),
(11, 'Did I put on somebody\'s cap?\r\n\r\nlet me know!', 'abraham_sylvester', 'geoffrey_sylvester', '2019-03-19 12:43:08', 'no', 'yes', 0, ''),
(12, 'There will be training this Friday!', 'abraham_sylvester', 'none', '2019-03-20 16:01:00', 'no', 'no', 0, ''),
(13, 'There will be training this Friday!', 'abraham_sylvester', 'none', '2019-03-20 16:04:55', 'no', 'no', 0, ''),
(14, 'There will be training this Friday!', 'abraham_sylvester', 'none', '2019-03-20 16:16:48', 'no', 'no', 0, ''),
(15, 'There will be training this Friday!', 'abraham_sylvester', 'none', '2019-03-20 16:58:35', 'no', 'no', 0, ''),
(16, 'When is the end of the world?', 'geoffrey_sylvester', 'none', '2019-03-31 14:22:47', 'no', 'no', 1, ''),
(17, 'I am ready to rumble with Abraham!\r\n', 'chinenye_abraham', 'abraham_sylvester', '2019-04-07 06:52:30', 'no', 'no', 1, ''),
(18, 'I feel it coming!', 'abraham_sylvester', 'none', '2019-04-10 19:20:34', 'no', 'no', 0, ''),
(19, 'Happy Easter to you all:)', 'abraham_sylvester', 'none', '2019-04-22 08:00:13', 'no', 'no', 0, ''),
(20, 'Hello World:)', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-24 06:21:42', 'no', 'no', 1, ''),
(21, 'Hey there!', 'abraham_sylvester', 'none', '2019-04-24 07:22:07', 'no', 'no', 1, ''),
(22, 'Hey buddy!', 'abraham_sylvester', 'none', '2019-04-24 07:31:31', 'no', 'yes', 1, ''),
(23, 'Hey big guy!', 'abraham_sylvester', 'geoffrey_sylvester', '2019-04-24 08:22:36', 'no', 'no', 2, ''),
(24, 'Gym time!', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-24 14:16:52', 'no', 'no', 2, ''),
(25, 'What\'s going on today?', 'geoffrey_sylvester', 'abraham_sylvester', '2019-04-24 21:55:04', 'no', 'no', 2, ''),
(26, 'Hey!', 'geoffrey_sylvester', 'none', '2019-04-24 22:35:09', 'no', 'no', 2, ''),
(27, 'Guess what?', 'abraham_sylvester', 'geoffrey_sylvester', '2019-04-24 22:43:20', 'no', 'no', 2, ''),
(28, 'I am proud of you!', 'abraham_sylvester', 'geoffrey_sylvester', '2019-04-25 09:41:44', 'no', 'no', 3, ''),
(29, 'I want donuts!', 'chinenye_abraham', 'abraham_sylvester', '2019-04-27 08:01:12', 'no', 'no', 1, ''),
(30, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:10:27', 'no', 'yes', 0, ''),
(31, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:10:46', 'no', 'yes', 0, ''),
(32, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:30:51', 'no', 'yes', 0, ''),
(33, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:31:04', 'no', 'yes', 0, ''),
(34, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:31:19', 'no', 'yes', 0, ''),
(35, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:31:30', 'no', 'yes', 0, ''),
(36, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:31:53', 'no', 'yes', 0, ''),
(37, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:32:04', 'no', 'yes', 0, ''),
(38, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:32:15', 'no', 'yes', 0, ''),
(39, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:32:30', 'no', 'yes', 0, ''),
(40, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:32:42', 'no', 'yes', 0, ''),
(41, 'https://youtu.be/s7jXASBWwwI?list=RDXLLj_xo2Jkc', 'abraham_sylvester', 'none', '2019-05-01 19:33:05', 'no', 'yes', 0, ''),
(42, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/s7jXASBWwwI\'></iframe><br>', 'abraham_sylvester', 'none', '2019-05-01 19:38:30', 'no', 'no', 0, ''),
(43, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/s7jXASBWwwI\'></iframe><br>', 'abraham_sylvester', 'none', '2019-05-01 19:41:18', 'no', 'no', 0, ''),
(44, 'Hello everyone, I am looking for an Internship!', 'abraham_sylvester', 'none', '2019-05-01 20:56:41', 'no', 'yes', 0, ''),
(45, 'Hello everyone, I am looking for an Internship!', 'abraham_sylvester', 'none', '2019-05-01 20:57:33', 'no', 'yes', 0, ''),
(46, 'Hello everyone, I am looking for an Internship!', 'abraham_sylvester', 'none', '2019-05-01 20:57:47', 'no', 'yes', 0, ''),
(47, 'Hello everyone, I am looking for an Internship!', 'abraham_sylvester', 'none', '2019-05-01 20:58:05', 'no', 'no', 0, ''),
(48, 'Hello everyone, I am looking for an Internship!', 'abraham_sylvester', 'none', '2019-05-01 20:58:18', 'no', 'no', 0, ''),
(49, 'Hello World:)', 'abraham_sylvester', 'none', '2019-05-02 09:52:05', 'no', 'yes', 0, ''),
(50, 'Hello World:)', 'abraham_sylvester', 'none', '2019-05-02 09:57:49', 'no', 'yes', 0, ''),
(51, 'Hello World:)', 'abraham_sylvester', 'none', '2019-05-02 10:07:59', 'no', 'yes', 0, ''),
(52, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:15:19', 'no', 'no', 0, 'assets/images/posts/5ccab52768720Arvato Team.jpg'),
(53, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:19:33', 'no', 'yes', 0, 'assets/images/posts/5ccab625ea976Arvato Team.jpg'),
(54, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:25:30', 'no', 'yes', 0, 'assets/images/posts/5ccab78a034f4Arvato Team.jpg'),
(55, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:25:43', 'no', 'no', 0, 'assets/images/posts/5ccab797162c1Arvato Team.jpg'),
(56, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:25:54', 'no', 'yes', 0, 'assets/images/posts/5ccab7a20e60fArvato Team.jpg'),
(57, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:26:14', 'no', 'yes', 0, 'assets/images/posts/5ccab7b633870Arvato Team.jpg'),
(58, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:26:29', 'no', 'no', 0, 'assets/images/posts/5ccab7c5f2616Arvato Team.jpg'),
(59, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:26:45', 'no', 'no', 0, 'assets/images/posts/5ccab7d596bbaArvato Team.jpg'),
(60, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:26:58', 'no', 'yes', 0, 'assets/images/posts/5ccab7e24993aArvato Team.jpg'),
(61, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:27:18', 'no', 'yes', 0, 'assets/images/posts/5ccab7f6b55b7Arvato Team.jpg'),
(62, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:27:30', 'no', 'no', 0, 'assets/images/posts/5ccab8024d76dArvato Team.jpg'),
(63, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:27:40', 'no', 'no', 0, 'assets/images/posts/5ccab80c69fe9Arvato Team.jpg'),
(64, 'Hey!', 'abraham_sylvester', 'none', '2019-05-02 10:27:59', 'no', 'no', 1, 'assets/images/posts/5ccab81f9098eArvato Team.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 7),
('Looking', 4),
('Internship', 4),
('World', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Abraham', 'Sylvester', 'abraham_sylvester', 'Mrabblessedslyst4christ099@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2019-02-20', 'assets/images/profile_pics/abraham_sylvester0e089526d18bf36dabc6d55d5cd9a83cn.jpeg', 53, 13, 'no', ',geoffrey_sylvester,captain_nigeria,chinenye_abraham,'),
(2, 'Captain', 'Nigeria', 'captain_nigeria', 'Captain.ngr@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-02-20', 'assets/images/profile_pics/defaults/head_amethyst.png', 4, 5, 'no', ',abraham_sylvester,geoffrey_sylvester,'),
(3, 'Geoffrey', 'Sylvester', 'geoffrey_sylvester', 'Geoffrey@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2019-02-20', 'assets/images/profile_pics/defaults/head_amethyst.png', 5, 11, 'no', ',abraham_sylvester,captain_nigeria,'),
(4, 'Chandler', 'Nathan', 'chandler_nathan', 'Chandler@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-02-20', 'assets/images/profile_pics/defaults/head_amethyst.png', 2, 0, 'no', ',geoffrey_sylvester,'),
(5, 'Chinenye', 'Abraham', 'chinenye_abraham', 'Chinenye.abraham@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2019-04-07', 'assets/images/profile_pics/chinenye_abraham174ecd001dfc872e97cd72913abd3a48n.jpeg', 2, 2, 'no', ',abraham_sylvester,'),
(6, 'Emmanuel', 'Onah', 'emmanuel_onah', 'Emmyjerry2016@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-04-07', 'assets/images/profile_pics/defaults/head_amethyst.png', 0, 0, 'no', ',');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
