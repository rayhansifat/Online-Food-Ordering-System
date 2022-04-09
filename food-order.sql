-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 05:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(81, 'Mahdi Hasan', 'Mehedi3144', 'a'),
(85, 'Rayhan Hossain Sifat', 'Sifat3345', 'a'),
(89, 'Farzana Akter Shanchita', 'Shanchita3574', 'a'),
(90, 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL,
  `image_name` varchar(30) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(127, '  Pizza', 'Food_Category_496.jpg', 'Yes', 'Yes'),
(128, '  Burger', 'Food_Category_9.jpg', 'Yes', 'Yes'),
(129, 'Sandwich', 'Food_Category_404.jpg', 'Yes', 'Yes'),
(130, ' Roll', 'Food_Category_947.jpg', 'Yes', 'Yes'),
(131, ' Hot Dog', 'Food_Category_211.jpg', 'Yes', 'Yes'),
(132, 'Shawarma', 'Food_Category_171.jpg', 'Yes', 'Yes'),
(133, ' Noodles', 'Food_Category_916.jpg', 'Yes', 'Yes'),
(134, '  Pasta', 'Food_Category_838.jpg', 'Yes', 'Yes'),
(135, ' French Fries', 'Food_Category_943.jpg', 'Yes', 'Yes'),
(136, ' Tacos', 'Food_Category_406.jpg', 'Yes', 'Yes'),
(137, ' Chicken Nugget', 'Food_Category_661.jpg', 'Yes', 'Yes'),
(138, '    Grilled Chicken', 'Food_Category_222.jpg', 'Yes', 'Yes'),
(139, ' Tikka Kabab', 'Food_Category_453.jpg', 'Yes', 'Yes'),
(140, ' Biriyani', 'Food_Category_256.jpg', 'Yes', 'Yes'),
(141, '  Beef Fry', 'Food_Category_557.jpg', 'Yes', 'Yes'),
(142, ' Onion Rings', 'Food_Category_750.jpg', 'Yes', 'Yes'),
(143, ' Singara', 'Food_Category_258.jpg', 'Yes', 'Yes'),
(144, 'Samucha', 'Food_Category_664.jpg', 'Yes', 'Yes'),
(145, 'Soft Drinks', 'Food_Category_825.jpg', 'Yes', 'Yes'),
(146, 'Coffee Drinks', 'Food_Category_810.jpg', 'Yes', 'Yes'),
(147, '   Juice', 'Food_Category_576.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(30) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(22, 'Pizza', '', '250.00', 'Food-Name3737.jpg', 127, 'Yes', 'Yes'),
(23, 'Burger', 'A hamburger (or burger for short) is a food consisting of fillings —usually a patty of ground meat, typically beef—placed inside a sliced bun or bread roll.', '250.00', 'Food-Name8672.jpg', 128, 'Yes', 'Yes'),
(24, 'Sandwich', 'sandwich, in its basic form, slices of meat, cheese, or other food placed between two slices of bread', '80.00', 'Food-Name4065.jpeg', 127, 'Yes', 'Yes'),
(25, 'Roll', 'sandwich, in its basic form, slices of meat, cheese, or other food placed between two slices of bread', '80.00', 'Food-Name2018.jpg', 130, 'Yes', 'Yes'),
(32, 'Hot Dog', '“Hot dog” means a whole, cured, cooked sausage that is skinless or stuffed in a casing, that may be known as a frankfurter, frank, furter, wiener, red hot, vienna, bologna, garlic bologna, or knockwurst, and that may be served in a bun or roll', '120.00', 'Food-Name5763.jpeg', 131, 'Yes', 'Yes'),
(33, 'Chicken Shawarma', 'Shawarma is a Middle Eastern dish of garlicky meat or poultry served on pitas. This chicken version is flavored with a savory yogurt sauce. This quick and easy chicken recipe is one the whole family will love. It adds some flair to the usual, plain grilled chicken.', '120.00', 'Food-Name5276.jpeg', 132, 'Yes', 'Yes'),
(34, 'Chicken Noodlles', 'One of the most popular varieties of soup, Chicken Noodle Soup is simply made with egg noodles and bits of chicken cooked in a chicken stock. Often the soup will also contain several types of vegetables which may include carrots, onions and celery. Different shapes of egg noodles have been used to make Chicken Noodle Soup, which may be long and narrow noodles or short and shaped noodles. Chicken Noodle Soup is often considered to be a comfort food that is served when an illness occurs or when other foods are not desired, providing a settling effect for stomach discomforts such as cold and flu illnesses.', '80.00', 'Food-Name8426.jpeg', 133, 'Yes', 'Yes'),
(35, 'Pasta', 'Pasta is a type of food made from a mixture of flour, eggs, and water that is formed into different shapes and then boiled. Spaghetti, macaroni, and noodles are types of pasta.', '150.00', 'Food-Name4143.jpg', 134, 'Yes', 'Yes'),
(36, 'French Fries', 'A thin strip of potato, usually cut 3 to 4 inches in length and about 1/4 to 3/8 inches square that are deep fried until they are golden brown and crisp textured on the outside while remaining white and soft on the inside.', '80.00', 'Food-Name2993.webp', 135, 'Yes', 'Yes'),
(37, 'Tacos', ': a crispy or soft corn or wheat tortilla that is folded or rolled and stuffed with a mixture (as of seasoned meat, cheese, and lettuce)', '150.00', 'Food-Name9091.jpeg', 136, 'Yes', 'Yes'),
(38, 'Chicken Nugget', 'A chicken nugget is a food product consisting of a small piece of deboned chicken meat that is breaded or battered, then deep-fried or baked', '180.00', 'Food-Name984.jpeg', 137, 'Yes', 'Yes'),
(39, 'Grillend Chicken ', 'Good', '120.00', 'Food-Name4199.jpg', 138, 'Yes', 'Yes'),
(40, 'Tikka Kabab', ' tikka is deep fried, whereas kebab is always grilled.', '120.00', 'Food-Name7057.jpg', 139, 'Yes', 'Yes'),
(41, 'Kacchi Biriyani', 'Long-grained rice (like basmati) flavored with fragrant spices such as saffron and layered with lamb, chicken, fish, or vegetables and a thick gravy. ', '250.00', 'Food-Name2400.webp', 140, 'Yes', 'Yes'),
(42, 'Beef Fry', 'Kerala beef fry is a dish made of beef, slow-roasted in a mixture of spices, onions, curry leaves, and coconut slivers, fried in coconut oil.', '220.00', 'Food-Name7146.jpg', 141, 'Yes', 'Yes'),
(43, 'Onion Rings ', 'Onion rings is a type of snack where large white onions are sliced to form into rings, dipped in a batter and/or bread crumbs then deep fried, usually accompanied with a dipping sauce like ketchup, barbecue sauce and or mayonnaise.', '130.00', 'Food-Name6979.jpeg', 142, 'Yes', 'Yes'),
(44, 'Singara ', 'Freebase. Singara. Singara was a strongly fortified post at the northern extremity of Mesopotamia, which for a while, as appears from coins found, was occupied by the Romans as an advanced colony against the Persians', '20.00', 'Food-Name2055.JPG', 143, 'Yes', 'Yes'),
(45, 'Samucha', 'Good and Testy', '20.00', 'Food-Name4857.webp', 127, 'Yes', 'Yes'),
(46, 'Cocacola', 'IT IS MADE OF  CARBONATED WATER, HIGH FRUCTOSE CORN SYRUP, CARAMEL COLOR, PHOSPHORIC ACID, NATURAL FLAVORS, CAFFEINE.', '30.00', 'Food-Name6288.jpg', 145, 'Yes', 'Yes'),
(47, 'Cold Coffee', 'The iced coffee we know today usually consists of espresso, filtered coffee or coffee syrup mixed with ice cubes and milk', '150.00', 'Food-Name8524.jpg', 146, 'Yes', 'Yes'),
(48, 'Orange Juice', 'Orange juice is a fruit juice obtained by squeezing, pressing or otherwise crushing the interior of an orange. Orange juice is a nutrition powerhouse with naturally occurring vitamins and minerals and many antioxidants. All types of juice can be found in health food and grocery store', '60.00', 'Food-Name1234.jpg', 147, 'Yes', 'Yes'),
(49, 'Strawberry ', 'It is made of strawberry , lemon,sugar and pinch salt', '120.00', 'Food-Name9109.jpg', 147, 'Yes', 'Yes'),
(50, 'Hammer Burger', 'It is made of chicken and vegetables', '250.00', 'Food-Name9770.jpg', 128, 'Yes', 'Yes'),
(51, 'Hot Coffee', 'it is made of ', '60.00', 'Food-Name2853.jpg', 146, 'Yes', 'Yes'),
(52, 'Hot Coffee', 'it is made of ', '60.00', 'Food-Name4530.jpg', 146, 'Yes', 'Yes'),
(59, 'd', 'd', '12.00', 'Food-Name5717.jpg', 127, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(30) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(40) NOT NULL,
  `customer_address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(9, 'Burger', '44.00', 10, '440.00', '2022-03-23 01:22:12', 'Delivered', 'Mehedi Hasan', '01758685869', 'mehedi3144@gmail.com', 'Uttara , Dhaka 1230 , Bangladesh '),
(10, 'Burger', '250.00', 1, '250.00', '2022-03-24 05:44:30', 'Ordered', 'a', '1', 'a@email.com', 'a'),
(11, 'Pasta', '150.00', 1, '150.00', '2022-03-24 07:23:22', 'Ordered', 'Rayhan Hossain Sifat ', '01581102621', 'rayhanhossain@gamil.com', 'House no : 3002 Dhakkhinkhan , Uttara-12'),
(12, 'Pizza', '250.00', 4, '1000.00', '2022-03-24 03:03:33', 'Ordered', 'Md Ziur Rahman', '016000000', 'Zia12@email.com', 'House - 2581/1, Uttara-1230, Dhaka'),
(13, 'Hammer Burger', '250.00', 1, '250.00', '2022-03-24 05:06:21', 'Ordered', 'Farzana Akter shanchita', '015', 'shan@email.com', 'Uttara-1230 , dhaka ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
