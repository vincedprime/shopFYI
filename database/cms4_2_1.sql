-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 08:55 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms4.2.1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `aname` varchar(30) NOT NULL,
  `aheadline` varchar(30) NOT NULL,
  `abio` varchar(500) NOT NULL,
  `aimage` varchar(60) NOT NULL DEFAULT 'avatar.png',
  `addedby` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `datetime`, `username`, `password`, `aname`, `aheadline`, `abio`, `aimage`, `addedby`) VALUES
(14, 'May-03-2020 12:35:57', 'admin', 'admin', 'Admin', 'I Am Admin', 'yes yes i am admin', 'Nozomi_Sasaki-.jpg', 'tarun');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `datetime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `author`, `datetime`) VALUES
(1, 'Technology', 'Jazeb', 'December-01-2018 21:05:43'),
(3, 'Fitness', 'Jazeb', 'December-01-2018 21:09:29'),
(5, 'Science', 'Tom', 'January-14-2019 11:24:52'),
(6, 'Politics', 'jazeb', 'January-14-2019 11:25:42'),
(7, 'Sports', 'Xerox121', 'January-15-2019 12:25:37'),
(8, 'World', 'Xerox121', 'January-15-2019 12:25:45'),
(9, 'News', 'Xerox121', 'January-15-2019 12:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `approvedby` varchar(50) NOT NULL,
  `status` varchar(3) NOT NULL,
  `post_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `datetime`, `name`, `email`, `comment`, `approvedby`, `status`, `post_id`) VALUES
(8, 'January-26-2019 10:37:16', 'Quen', 'aa@mm.dd.dsd', 'this is not satisfying post', 'Zee Lu', 'ON', 52),
(9, 'January-26-2019 10:47:55', 'Name', 'asdaw', 'i support this initiative', 'Zee Lu', 'ON', 51),
(10, 'January-26-2019 10:48:28', 'Dawn Mol', 'DAD', 'This is very inspiring', 'Zee Lu', 'ON', 51),
(11, 'January-26-2019 12:15:46', 'Alaska', 'aDSDFF', 'Disappointed', 'Zee Lu', 'ON', 49),
(12, 'January-26-2019 12:16:14', 'Jerry Gose', 'ksfs', 'the last game was not a fun ', 'Zee Lu', 'ON', 49),
(13, 'January-26-2019 12:17:21', 'Gibs Rib', 'Ssdas', 'labore et dolore magna aliqua. Ut enim ad', 'Zee Lu', 'ON', 49),
(14, 'January-26-2019 12:17:57', 'Lucky Loose', 'wdw', 'labore et dolore magna aliqua. Ut enim ad', 'Zee Lu', 'ON', 49),
(15, 'January-26-2019 12:18:47', 'Heath Roker', 'Thanks', 'Thanks for the great advice', 'David Miller', 'ON', 52),
(16, 'January-26-2019 12:19:54', 'Ready Doope', 'wrefgr', 'labore et dolore magna aliqua. Ut enim ad', 'Zee Lu', 'ON', 49),
(17, 'January-26-2019 12:20:31', 'Asad Rahim', 'sdsad@sadsa.asccdad', 'Let the game begins', 'Zee Lu', 'OFF', 49),
(22, 'January-27-2019 19:34:49', 'Pindi Boy', 'sdf', 'ÙØ§ØµÙ„Û Ø±Ú©Ú¾ÛŒÚº ÙˆØ±Ù†Û Ù¾ÛŒØ§Ø± ÛÙˆ Ø¬Ø§Û“ Ú¯Ø§', 'Pending', 'OFF', 52),
(24, 'January-27-2019 20:00:24', 'Tome Hanks', 'tom@example.com', 'great to see this post.', 'John Doe', 'ON', 48),
(31, 'May-02-2020 12:52:53', 'trial', 'trail@gmail.com', 'trial no 1', 'Jazeb Akram', 'ON', 52),
(32, 'May-02-2020 18:05:41', 'sagar', 'sagar@gmail.com', 'sagar', 'admin', 'ON', 51),
(36, 'May-03-2020 00:30:00', 'admin', 'admin@admin.com', 'This is just a trial.', 'tarun', 'OFF', 52),
(37, 'May-03-2020 12:39:02', 'check', 'check@gmail.com', 'let seeeeee', 'admin', 'OFF', 66);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `datetime` varchar(50) NOT NULL,
  `title` varchar(300) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `post` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `datetime`, `title`, `category`, `author`, `image`, `post`) VALUES
(16, 'January-15-2019 12:20:29', 'The New Educational Initiative', 'Technology', 'Tom', '3.jpg', '                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, qu              '),
(17, 'January-15-2019 12:20:47', 'What is Chip 8547', 'Technology', 'Tom', 'agi-banner-ai1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(18, 'January-15-2019 12:21:14', 'Black Money', 'Politics', 'Tom', '_102968357_diverse_politics.jpg', '    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(19, 'January-15-2019 12:22:54', 'Post 4', 'Politics', 'Zoe333', 'safe_image.jpg', ''),
(20, 'January-15-2019 12:23:09', 'Losing weight is a thing of Past', 'Fitness', 'Zoe333', 'fit.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut '),
(21, 'January-15-2019 12:23:38', 'Post 6 ', 'Science', 'Zoe333', 'safe_image.jpg', ''),
(22, 'January-15-2019 12:24:05', 'Post 7', 'Science', 'Zoe333', 'HTML5 CSS3.jpg', ''),
(23, 'January-15-2019 12:24:52', 'Fun Exercises for Kids', 'Fitness', 'Xerox121', 'children-running-t.jpg', 'Sarah Palen a famous physician says letting kids play the way they want make them happy, active and healthy. Parent advice on thing which they can do or dont leave a bad effect on children, she maintained. '),
(25, 'January-15-2019 12:26:22', 'Watchdog groups say oil Refineries are causing Pollution in African peninsula ', 'News', 'Xerox121', 'gas.jpg', '                              '),
(26, 'January-15-2019 12:26:35', 'Cold Gujjars ', 'Movies', 'Xerox121', 'tt.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(27, 'January-15-2019 12:26:53', 'The Beautiful Wazir Khan Mosque', 'World', 'Xerox121', 'rt.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis '),
(28, 'January-15-2019 12:27:34', 'Learn HTML5 and CSS3', 'Technology', 'Xerox121', 'htmlcourse.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, qu'),
(34, 'January-16-2019 10:04:22', 'The most awaited laptop by Dell', 'Technology', 'Xerox121', 'safe_image.jpg', '                                                                                                                                                                                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\n<h2 class=\"display-4\">The wait is finally over</h1>\r\n\r\n  <div style=\"height:10px; background:#27aae1;\"></div>\r\n <p class=\"lead\">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. </p>\r\n<div style=\"height:10px; background:#27aae1;\"></div>\r\n<img src=\"uploads/laptop.jpg\" class=\"d-block img-fluid\" />       \r\n<h2 class=\"display-4\"> Specification</h2>\r\n<ul>\r\n<li>Memory</li>\r\n<li>Hard drive</li>\r\n<li>Processor</li>\r\n<li>Cache</li>\r\n<li>Metallic Body</li>\r\n</ul>\r\n<img src=\"uploads/laptop1.jpg\" class=\"d-block img-fluid\" />  \r\n<p class=\"text-justify\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. \r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.   </p>                                                                               '),
(35, 'January-26-2019 07:47:52', 'Is intensive work-out bad for health?', 'Fitness', 'jazeb', 'asasas.jpg', '                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in \r\n              '),
(36, 'January-26-2019 07:48:40', 'post 15', 'Politics', 'jazeb', 'unnamed.jpg', ''),
(37, 'January-26-2019 07:49:27', 'Lahore Open Rainy Tennis ', 'Sports', 'jazeb', 'ty.jpg', '                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco l              '),
(38, 'January-26-2019 07:49:42', 'France offers citizenship to Malian immigrant', 'News', 'Tom', 'download.jpg', '                              '),
(39, 'January-26-2019 07:49:54', 'The Hall of Hog', 'Movies', 'jazeb', 'ddd.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(40, 'January-26-2019 07:50:05', 'Heat Wave in Australia', 'News', 'Zoe333', 'sc.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi u'),
(41, 'January-26-2019 07:50:13', 'Ashes Series is upon us', 'Sports', 'jazeb', 'cc.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis '),
(42, 'January-26-2019 07:50:22', 'Brain Mineralogy ', 'Technology', 'jazeb', 'dd.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.               '),
(43, 'January-26-2019 07:51:02', 'The New Honda Phurr', 'Technology', 'zoe333', 'jj.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(44, 'January-26-2019 07:51:09', 'Machine Learning and If-Else statements', 'Technology', 'DavidM', 'ss.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.                   '),
(45, 'January-26-2019 07:51:14', 'The Future of AI', 'Technology', 'jazeb', 'aa.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(46, 'January-26-2019 07:51:19', 'Tesla III is ready to launch', 'Technology', 'jazeb', 'Tesla-Model-X-Silver.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. '),
(47, 'January-26-2019 07:51:33', 'The new iphone update slows phone | Chacha Accepted', 'Technology', 'Xerox121', 'iphone.jpg', '                              '),
(48, 'January-26-2019 07:51:38', 'The Travel diary 2050', 'World', 'jazeb', 'travelBlogger.jpg', '                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat                             '),
(49, 'January-26-2019 07:51:41', 'Manchester United is going for a twist', 'Sports', 'DavidM', 'ronaldo.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat '),
(51, 'January-26-2019 07:51:50', 'Education for Syrian Refugee Children', 'News', 'Zoe333', 'education.jpg', '                Symbolic Syrian Woman Alkuman-Made is asking for Free Education to all under-privileges . This will definitely a milestone in the middle eastern region.               '),
(52, 'January-26-2019 07:52:01', 'Relaying on Veges is good? Study Says...', 'Technology', 'DavidM', 'food.jpg', '                                                              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.                                          '),
(65, 'May-03-2020 00:01:05', 'Trial Post ', 'Politics', 'admin', '4.jpg', 'This is again a trial post'),
(66, 'May-03-2020 12:08:37', 'Trial Post ', 'Technology', 'admin', 'zoe.jpg', 'This i s a trial postttttttt.....');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `Foreign_Relation` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
