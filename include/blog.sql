-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 06, 2020 at 05:59 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postid` mediumtext DEFAULT NULL,
  `name` varchar(10000) DEFAULT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `jstime` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `postid`, `name`, `message`, `jstime`, `timestamp`) VALUES
(88, '31', 'Tunde', 'Cool', '1585384545501', '2020-03-28 08:37:16'),
(89, '31', 'Dele', 'ihfkldsjdsf', '1585384545501', '2020-03-28 08:37:48'),
(90, '31', 'Tunji', 'jksdnksd', '1585384545501', '2020-03-28 08:38:12'),
(91, '31', 'jhdj', 'dskc', '1585384853045', '2020-03-28 08:40:53'),
(92, '31', 'kkjnjds', 'mksdmc', '1585384866226', '2020-03-28 08:41:06'),
(93, '31', 'kdcmkds', 'dmdjksjk', '1585384880797', '2020-03-28 08:41:20'),
(94, '31', 'dsklm', 'sdkcsk', '1585384933085', '2020-03-28 08:42:13'),
(95, '31', 'Boy', 'Fantastic', '1585385010538', '2020-03-28 08:43:30'),
(96, '31', 'dfd', 'dsfs', '1585385066895', '2020-03-28 08:44:26'),
(97, '32', 'Dayo', 'Awesome post', '1585407407199', '2020-03-28 14:56:48'),
(98, '34', 'Okwuchukwu Godwill', 'I love this post', '1586097371560', '2020-04-05 14:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `pics`
--

DROP TABLE IF EXISTS `pics`;
CREATE TABLE IF NOT EXISTS `pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` mediumtext NOT NULL,
  `text` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`id`, `image`, `text`) VALUES
(4, 'coding-dojo.png', 'sdsadasdsadsd asdsadsadsadwdwbbdwubdw wkduwuidiwudniuwniudnwd wdiuwiudwiudwnbdbwdwdiuwddwdwd'),
(5, 'Capture.PNG', 'asdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsdasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsd'),
(6, 'nigeriantech.PNG', 'sadsadsadasdsasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsdasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsdasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsd'),
(7, 'nigeriantech.PNG', 'sadsadsadasdsasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsdasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsdasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsd'),
(8, 'nigeriantech.PNG', 'sadsadsadasdsasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsdasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsdasdsadsdsadasdasd\r\nsadasdasdasdsadsad\r\nsdsadsadasdasdasdsd');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `search` varchar(10000) DEFAULT NULL,
  `category` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `date` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `search`, `category`, `title`, `text`, `image`, `date`) VALUES
(11, 'My', 'Programming', 'My Strategy and Skills', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'FB_IMG_15359946402223797.jpg', 'May 18, 2019'),
(12, 'Ni', 'Technology', 'Nigerian Technology', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'betterdaysguesthouse.PNG', 'May 18, 2019'),
(14, 'Bo', 'Lifestyle', 'Book with pleasure', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Bishop-Oyedepo-Speaks.jpg', 'May 18, 2019'),
(16, 'Da', 'Sport', 'Dayo Nigga 7777', '		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '39728048-learning-wallpapers.jpg', 'May 28, 2019'),
(19, 'Ho', 'Programming', 'How to code a program', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '20190608_180521.jpg', 'June 22, 2019'),
(20, 'Le', 'Programming', 'Learn to CODE', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'download.jpg', 'June 22, 2019'),
(21, NULL, 'Programming', 'BiggiDroid Simple PHP', '      Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n      		          tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n      		          quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n      		          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n      		          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n      		          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '485120-learn-to-code.jpg', 'June 24, 2019'),
(22, NULL, 'Lifestyle', 'Chuks the Hacker', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '_DSC6198.JPG.jpeg', 'June 25, 2019'),
(23, NULL, 'Technology', 'Simple PHP CMS  ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n   				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n   				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n   				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n   				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n   				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'code.jpg', 'June 25, 2019'),
(25, NULL, 'Technology', 'Been a good friend', '		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n		cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n		proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '_DSC6185.JPG_cr.jpg', 'July 20, 2019'),
(31, NULL, 'Technology', 'How to code a program', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n                  		     tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n                  		     quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n                  		     consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n                  		     cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n                  		     proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'dims.jpg', 'August 2, 2019'),
(32, NULL, 'Lifestyle', 'Cross over service 2020', 'All top athletes have great coaches and use comprehensive data and analytics to help tune their performance. We believe all top performers in business crave the same data and analytics to help them get even better.\r\nAs a result, we&#39;ve developed a data-driven productivity appâ€”a Fitbit for how you work. It effortlessly collects more than 30 data points and provides analytics that enable individuals and teams to use real data on how they work to bring their performance to another level.\r\n', 'Screenshot (1).png', 'August 2, 2019'),
(33, NULL, 'Technology', 'What is html', 'Hypertext Markup Language is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets and scripting languages such as JavaScript.', '170427-637199537009510295-16x9.jpg', 'April 5, 2020'),
(34, NULL, 'Technology', 'What Is Coding and How Does It Work?', 'Computer code is very important. Almost every electronic device you use relies on code. The way things work can seem quite confusing, but when you break it down itâ€™s actually simple.\r\n\r\nPeople who make code are called programmers, coders or developers. They all work with computers to create websites, apps, and even games! Today youâ€™ll learn what code it, what it is for, and how to start learning code yourself.', 'something_awesome-670x214.png', 'April 5, 2020'),
(35, NULL, 'Technology', 'Elementor page builder is awesome', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n   				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n   				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n   				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n   				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n   				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '69740476_2377427442375501_3994055470561099776_n.jpg', 'April 5, 2020'),
(36, NULL, 'Technology', 'The training was fantastic ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n   				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n   				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n   				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n   				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n   				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'new.jpg', 'April 5, 2020'),
(37, NULL, 'Technology', 'New to programming', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n   				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n   				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n   				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n   				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n   				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'IMG_20190625_085903.jpg', 'April 5, 2020'),
(38, NULL, 'Technology', 'Writting computer CODE is awesome', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n   				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n   				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n   				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n   				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n   				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'crop.jpg', 'April 5, 2020');

-- --------------------------------------------------------

--
-- Table structure for table `sitedetails`
--

DROP TABLE IF EXISTS `sitedetails`;
CREATE TABLE IF NOT EXISTS `sitedetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sitelogo` mediumtext DEFAULT NULL,
  `sitetitle` mediumtext DEFAULT NULL,
  `sitetagline` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sitedetails`
--

INSERT INTO `sitedetails` (`id`, `sitelogo`, `sitetitle`, `sitetagline`) VALUES
(1, 'p.png', 'BiggiDroid Simple PHP CMS', 'Anybody can CODE');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(10000) DEFAULT NULL,
  `last` varchar(10000) DEFAULT NULL,
  `username` varchar(10000) DEFAULT NULL,
  `password` varchar(10000) DEFAULT NULL,
  `apitoken` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first`, `last`, `username`, `password`, `apitoken`) VALUES
(1, 'Admin', 'Page', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'c5c19e98afe0827d801f158abcde8d63'),
(4, 'Tunde', 'Oluwabamidele', 'tunde', '1b0e5f02623d653f0f5ce09f6b1e0f54', '46bedeb833f03fc0194bad79a7e1c26b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
