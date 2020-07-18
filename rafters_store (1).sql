-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 28, 2020 at 02:15 AM
-- Server version: 10.3.20-MariaDB
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
-- Database: `rafters_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Jisna R Niar', 'jisnarnair@gmail.com', 'Admin2ceo', 'pp.jpg', 'India', 'CEO of the Company\r\nGraduated from Manipal University, Mangalore, India\r\n', '9744545377', 'Chief Operating Officer'),
(2, 'Deepak Raj', 'dpkjrn2130@gmail.com', 'Dpkjrn', '005.jpg', 'India', ' Bachelor of Computer Science - Anna University\r\nMasters in Business Administration- Cardiff Metropolitan University\r\nPost Graduate Diploma In IT- EIT ', '6238492064', 'Software Engineer | Founder');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', 'Old favourites from the 90’s, the Macpac Wingers are back — redesigned this season and featuring fresh colours and patterns. Originally designed as a classic hiking short, these Wingers are versatile adventure companions — ideal for water-based activities, casual wear and summer travel. Made from fast drying, moisture wicking nylon taslan fabric with a soft ‘peach’ finish, they’ve got a couple of self draining pockets (perfect for jumping in the river for a swim) plus a small zipped pocket built into the seam for your key and an internal drawstring for a personalised fit.'),
(2, 'Women', 'A versatile mid layer for days in the mountains, whether it be climbing or other activities, this light active insulation will help to keep you warm. Made from Polartec® Alpha® Direct — the same insulation that was originally made for the U.S. Special Forces when they needed an advanced insulating fabric in their combat uniforms — the Nitro offers pared back performance.'),
(3, 'Kid\'s', 'A versatile mid layer for days in the mountains, whether it be climbing or other activities, this light active insulation will help to keep you warm. Made from Polartec® Alpha® Direct — the same insulation that was originally made for the U.S. Special Forces when they needed an advanced insulating fabric in their combat uniforms — the Nitro offers pared back performance');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(5, 'David', 'david@yahoo.co.in', 'DavD', '', '', '0220616308', 'New Zealand', 'member2.jpg', '::1'),
(4, 'Deepak', 'deepaknarikkott@gmail.com', 'DeepakRaj', 'India', 'Calicut', '6238492064', 'Kerala', '555.jpg', '::1'),
(3, 'Jisna Deepak', 'jisnarnair@gmail.com', 'newpassword', '', '', '9744545377', 'Meppayur', 'pp.jpg', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 3, 799, 1705588593, 1, 'Medium', '2020-05-26', 'pending'),
(2, 3, 200, 1705588593, 1, 'Large', '2020-05-26', 'pending'),
(3, 3, 999, 1705588593, 1, 'Medium', '2020-05-26', 'pending'),
(4, 4, 150, 1878067815, 1, 'Medium', '2020-05-28', 'Complete'),
(5, 4, 999, 1878067815, 1, 'Medium', '2020-05-28', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 1878067815, 150, 'Western Union', 0, 3336, '30/04/2019');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(1, 3, 1705588593, '11', 1, 'Medium', 'pending'),
(2, 3, 1705588593, '1', 1, 'Large', 'pending'),
(3, 3, 1705588593, '10', 1, 'Medium', 'pending'),
(4, 4, 1878067815, '2', 1, 'Medium', 'Complete'),
(5, 4, 1878067815, '10', 1, 'Medium', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 1, 2, '2020-05-18 00:49:28', 'Women Dress', 'product_front.jpg', 'product-back.jpg', 'product_hang.jpg', 200, 'Jacket', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum harum, magni illo veritatis, iusto dolore delectus explicabo eos aliquid ipsa praesentium incidunt sint ducimus. Libero consequuntur natus adipisci praesentium architecto.</p>'),
(2, 5, 1, '2020-05-18 01:13:30', 'Manchester Jersey', 'pr2.webp', 'manc3.jpg', 'manc3.jpg', 150, 'Manchester United Jersey', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates consectetur excepturi est nobis porro aperiam, libero dicta fuga atque commodi laudantium expedita beatae impedit laboriosam sapiente mollitia deserunt sint praesentium.</p>'),
(3, 1, 1, '2020-05-18 01:16:05', 'Puffer Coat', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-2.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-3.jpg', 500, 'Hoddies', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus nemo error quibusdam hic culpa molestiae, vitae ratione deserunt facilis velit reiciendis dolorum quisquam numquam quae excepturi sunt, accusamus qui neque.</p>'),
(4, 2, 1, '2020-05-27 00:52:30', 'Mont Blanc Belt', 'Mont-Blanc-Belt-man-3.jpg', 'Mont-Blanc-Belt-man-2.jpg', 'Mont-Blanc-Belt-man-1.jpg', 69, 'Mont Blanc', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus nemo error quibusdam hic culpa molestiae, vitae ratione deserunt facilis velit reiciendis dolorum quisquam numquam quae excepturi sunt, accusamus qui neque.</p>'),
(5, 5, 1, '2020-05-18 01:18:40', 'Football Jersey', 'arsenal1.jpg', 'chelsea1.jpg', 'pr1.jpg', 150, 'Jersey', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus nemo error quibusdam hic culpa molestiae, vitae ratione deserunt facilis velit reiciendis dolorum quisquam numquam quae excepturi sunt, accusamus qui neque.</p>'),
(6, 1, 2, '2020-05-18 01:19:54', 'winter jacket', 'Red-Winter-jacket-1.jpg', 'Red-Winter-jacket-2.jpg', 'Red-Winter-jacket-3.jpg', 999, 'Winter Coat', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus nemo error quibusdam hic culpa molestiae, vitae ratione deserunt facilis velit reiciendis dolorum quisquam numquam quae excepturi sunt, accusamus qui neque.</p>'),
(7, 4, 2, '2020-05-18 01:22:55', 'Waxed Coat', 'waxed-cotton-coat-woman-1.jpg', 'waxed-cotton-coat-woman-2.jpg', 'waxed-cotton-coat-woman-3.jpg', 899, 'Coat', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus nemo error quibusdam hic culpa molestiae, vitae ratione deserunt facilis velit reiciendis dolorum quisquam numquam quae excepturi sunt, accusamus qui neque.</p>'),
(9, 1, 1, '2020-05-21 01:26:43', 'Levis-Jacket', 'levis-Trucker-Jacket.jpg', 'levis-Trucker-Jacket-2.jpg', 'levis-Trucker-Jacket-3.jpg', 499, 'Jacket', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt cum corporis excepturi quasi totam nemo magnam aliquam optio asperiores quae saepe voluptatibus, molestiae laboriosam sint ex? Vel sit ex delectus.</p>'),
(10, 1, 1, '2020-05-21 01:29:07', 'Merlin-Engineer-Jacket', 'Merlin-Enginner-Jacket.jpg', 'Merlin-Engineer-Jacket-2.jpg', 'Merlin-Engineer-Jacket-3.jpg', 999, 'Merlin', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt cum corporis excepturi quasi totam nemo magnam aliquam optio asperiores quae saepe voluptatibus, molestiae laboriosam sint ex? Vel sit ex delectus.</p>'),
(11, 1, 2, '2020-05-21 01:30:19', 'Mobile-Power-Jacket', 'Mobile-Power-Jacket.jpg', 'Mobile-Power-Jacket-2.jpg', 'Mobile-Power-Jacket-3.jpg', 799, 'Girls Jacket', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt cum corporis excepturi quasi totam nemo magnam aliquam optio asperiores quae saepe voluptatibus, molestiae laboriosam sint ex? Vel sit ex delectus.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(2, 'Accessories', ' The lightweight nylon outer fabric features a water repellent finish to help protect against moisture, while the elastic bound hem and cuffs help to trap heat inside the jacket, keeping you warmer. A fitted style, the Uber is perfect for layering up this season.'),
(3, 'Shoes', 'The Hi-Tec Ravus Vent low-rise hiking shoe is a comfortable and breathable outdoor crossover shoe. The M-D (Multi-Directional) outsole provides grip for walking both up and downhill on your adventures and ultimate comfort is ensured with a compression-moulded EVA insole. The bellows tongue makes sure you avoid debris on those challenging trails.'),
(4, 'Coats', 'Providing classic outdoor style and dependable core warmth, the Halo Down Vest is part of our beloved Halo range. Featuring ethically-sourced 600 loft RDS duck down — certified by the Responsible Down Standard — and bluesign® approved nylon fabric with a water repellent finish, the Halo is ready for cool climates and outdoor adventures. '),
(5, 'T-Shirts', 'Taking you from the mountains to the city, this merino tee is the perfect baselayer for all your adventures, whether it be hiking, travelling, working or grabbing coffee. Providing all the benefits of ultralight merino wool fabric, this tee is naturally temperature regulating and odour resistant, so you can spend more time doing what you love and less time worrying about washing your gear — a win for you and the environment. The Lyell tee is designed with a classic crew neck and slim fit.');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(8, 'slide number 8', 'slide-8.jpg', 'http://localhost/Rafters/shop.php?cat=3'),
(12, 'slide 12', 'slider-number-14.jpg', 'http://localhost/Rafters/shop.php?cat=1'),
(13, 'slide 3', 'slider-number-10.jpg', 'http://localhost/Rafters/shop.php?cat=2'),
(11, 'slide number 12', 'slider-number-12.jpg', 'http://localhost/Rafters/shop.php');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
