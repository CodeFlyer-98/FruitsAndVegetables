-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 02:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fruitsandvegetables`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` bigint(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cart', 7, 'add_cart'),
(26, 'Can change cart', 7, 'change_cart'),
(27, 'Can delete cart', 7, 'delete_cart'),
(28, 'Can view cart', 7, 'view_cart'),
(29, 'Can add cart item', 8, 'add_cartitem'),
(30, 'Can change cart item', 8, 'change_cartitem'),
(31, 'Can delete cart item', 8, 'delete_cartitem'),
(32, 'Can view cart item', 8, 'view_cartitem'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add quantity', 10, 'add_quantity'),
(38, 'Can change quantity', 10, 'change_quantity'),
(39, 'Can delete quantity', 10, 'delete_quantity'),
(40, 'Can view quantity', 10, 'view_quantity'),
(41, 'Can add size', 11, 'add_size'),
(42, 'Can change size', 11, 'change_size'),
(43, 'Can delete size', 11, 'delete_size'),
(44, 'Can view size', 11, 'view_size'),
(45, 'Can add product', 12, 'add_product'),
(46, 'Can change product', 12, 'change_product'),
(47, 'Can delete product', 12, 'delete_product'),
(48, 'Can view product', 12, 'view_product'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order'),
(53, 'Can add ordered product', 14, 'add_orderedproduct'),
(54, 'Can change ordered product', 14, 'change_orderedproduct'),
(55, 'Can delete ordered product', 14, 'delete_orderedproduct'),
(56, 'Can view ordered product', 14, 'view_orderedproduct'),
(57, 'Can add address', 15, 'add_address'),
(58, 'Can change address', 15, 'change_address'),
(59, 'Can delete address', 15, 'delete_address'),
(60, 'Can view address', 15, 'view_address');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$ZFcnWTibxHjhUoQ47DgsRs$suk6NVdBBJZjypFW07ndMcWo85IW5gyiWPlUyINax2U=', '2024-04-20 10:37:35.318636', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2024-04-19 09:59:57.729752'),
(2, 'pbkdf2_sha256$720000$hq88SL92oTvzArPpSOhFgc$FgwIed3nQSOG7PXwsOh9yP5EvLu6jcnUPrgf6LQ2isk=', '2024-04-20 08:33:38.884107', 0, 'Hustler', 'Jash', 'Kothari', 'jashkothari@gmail.com', 0, 1, '2024-04-19 10:43:22.819548'),
(3, 'pbkdf2_sha256$720000$RkfWMgdTlPBHdKGhcoDUwt$IlrQvMclqhYJ646YHDHIlegFXHEv3GJtttxZLVuyUAs=', '2024-04-20 12:01:54.738809', 0, 'Aditya_1982', 'Aditya', 'Kapoor', 'adityakapoor@gmail.com', 0, 1, '2024-04-20 12:01:26.886482');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 2, 45),
(2, 2, 46);

-- --------------------------------------------------------

--
-- Table structure for table `core_address`
--

CREATE TABLE `core_address` (
  `id` bigint(20) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `address` longtext NOT NULL,
  `country` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal` varchar(10) NOT NULL,
  `address_type` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_address`
--

INSERT INTO `core_address` (`id`, `phone1`, `phone2`, `address`, `country`, `state`, `city`, `postal`, `address_type`, `user_id`) VALUES
(1, '8547632101', '9875698321', '66 Moore Avenue, Near Regent Square', 'India', 'Maharashtra', 'Mumbai', '400065', 'Apartment', 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_cart`
--

CREATE TABLE `core_cart` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_cart`
--

INSERT INTO `core_cart` (`id`, `user_id`) VALUES
(1, 1),
(2, 3),
(3, 4),
(4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `core_cartitem`
--

CREATE TABLE `core_cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `cart_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_cartitem`
--

INSERT INTO `core_cartitem` (`id`, `quantity`, `cart_id`, `product_id`) VALUES
(1, 1, 1, 1),
(3, 1, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `core_order`
--

CREATE TABLE `core_order` (
  `id` bigint(20) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_amount` double NOT NULL,
  `order_address_id` bigint(20) DEFAULT NULL,
  `razorpay_order_id` varchar(250) DEFAULT NULL,
  `razorpay_payment_id` varchar(250) DEFAULT NULL,
  `razorpay_payment_signeture` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_order`
--

INSERT INTO `core_order` (`id`, `payment_status`, `user_id`, `order_amount`, `order_address_id`, `razorpay_order_id`, `razorpay_payment_id`, `razorpay_payment_signeture`) VALUES
(1, '', 3, 0, NULL, 'order_O0rxosEefwCiGI', NULL, NULL),
(2, '', 3, 0, NULL, 'order_O0ryPaJd8Uif1E', NULL, NULL),
(3, 'paid', 3, 40, NULL, 'order_O0s2O5HaKaUN0H', NULL, NULL),
(4, '', 3, 0, NULL, 'order_O0s6zpqMnjOdyu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_orderedproduct`
--

CREATE TABLE `core_orderedproduct` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_date` date NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `core_orderedproduct`
--

INSERT INTO `core_orderedproduct` (`id`, `quantity`, `order_id`, `product_id`, `order_date`, `user_id`) VALUES
(1, 2, 3, 4, '2024-04-20', 3);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-04-20 08:44:28.555151', '5', 'Pieces', 2, '[{\"changed\": {\"fields\": [\"Quantity name\", \"Quantity desc\"]}}]', 10, 1),
(2, '2024-04-20 08:51:11.607952', '0', 'Fruits', 1, '[{\"added\": {}}]', 9, 1),
(3, '2024-04-20 08:54:24.479921', '0', 'Vegetables', 1, '[{\"added\": {}}]', 9, 1),
(4, '2024-04-20 08:59:11.106732', '0', 'Herbs', 1, '[{\"added\": {}}]', 9, 1),
(5, '2024-04-20 09:06:35.294160', '0', 'Exotic Fruits And Vegetables', 1, '[{\"added\": {}}]', 9, 1),
(6, '2024-04-20 09:16:40.158520', '0', 'Organic Produce', 1, '[{\"added\": {}}]', 9, 1),
(7, '2024-04-20 09:36:06.014797', '6', 'Seasonal Picks', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-04-20 09:41:30.279311', '7', 'Dried Fruits And Vegetables', 1, '[{\"added\": {}}]', 9, 1),
(9, '2024-04-20 09:44:51.634223', '8', 'Fresh Juices', 1, '[{\"added\": {}}]', 9, 1),
(10, '2024-04-20 09:57:27.578078', '9', 'Speciality Products', 1, '[{\"added\": {}}]', 9, 1),
(11, '2024-04-20 10:00:12.996985', '10', 'Nuts And Seeds', 1, '[{\"added\": {}}]', 9, 1),
(12, '2024-04-20 10:41:34.957923', '1', 'Apple', 1, '[{\"added\": {}}]', 12, 1),
(13, '2024-04-20 10:45:28.153730', '2', 'Banana', 1, '[{\"added\": {}}]', 12, 1),
(14, '2024-04-20 10:51:01.685531', '3', 'Grapes', 1, '[{\"added\": {}}]', 12, 1),
(15, '2024-04-20 11:23:52.398168', '4', 'Cabbage', 1, '[{\"added\": {}}]', 12, 1),
(16, '2024-04-20 11:27:13.716987', '5', 'Tomato', 1, '[{\"added\": {}}]', 12, 1),
(17, '2024-04-20 11:28:59.947729', '6', 'Spinach', 1, '[{\"added\": {}}]', 12, 1),
(18, '2024-04-20 11:44:10.820787', '7', 'Organic Tomato', 1, '[{\"added\": {}}]', 12, 1),
(19, '2024-04-20 11:46:41.426185', '8', 'Organic Carrot', 1, '[{\"added\": {}}]', 12, 1),
(20, '2024-04-20 11:58:00.910764', '9', 'Organic Potato', 1, '[{\"added\": {}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'core', 'cart'),
(8, 'core', 'cartitem'),
(9, 'product', 'category'),
(10, 'product', 'quantity'),
(11, 'product', 'size'),
(12, 'product', 'product'),
(13, 'core', 'order'),
(14, 'core', 'orderedproduct'),
(15, 'core', 'address');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('tu9za3rtyvfan4ieac8z0fgduk0xkuz5', '.eJxVjEEOwiAQRe_C2pBSRtpx6d4zkIEZpGogKe3KeHdD0oVu_3vvv5Wnfct-b7L6hdVFGXX63QLFp5QO-EHlXnWsZVuXoLuiD9r0rbK8rof7d5Cp5V5DMhgcugHmhAJkkHCKFKwlISswRHFo05kAYTIjcKJAjE5m60YG9fkC7y84QQ:1rxl4h:DBiyLF7X6L5o5b-c-PePrqEWsFZ2ix1lP6ojFqhh36Y', '2024-05-03 10:02:31.781188'),
('2f3rjky5jy1ce2b25a9vh9x8mt0qhwnb', '.eJxVjEEOwiAQRe_C2pA60AFcuvcMZIYBqZo2Ke3KeHfbpAvd_vfef6tI61Lj2vIcB1EXZdTpd2NKzzzuQB403iedpnGZB9a7og_a9G2S_Loe7t9BpVa3OhToLGYr54wgYL1hQIbABAG8MJDxgdA5KRiwFIOhl83qE6OjDtXnC9FgN14:1ry9Pm:rQF01CtpoHkrTZmUo5PH1xyzwUuDR2jdho0o-iVtyLk', '2024-05-04 12:01:54.747060');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_slug` varchar(100) NOT NULL,
  `category_image` varchar(100) DEFAULT NULL,
  `category_desc` longtext NOT NULL,
  `category_created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `category_name`, `category_slug`, `category_image`, `category_desc`, `category_created_at`) VALUES
(1, 'Fruits', 'fruits', 'Category_Images/colorful-fruits-tasty-fresh-ripe-juicy-white-desk_nY05gJa.jpg', 'Discover nature\'s treasures with our assortment of fresh fruits. From crisp apples to juicy oranges, our selection promises exceptional flavor and quality. Packed with vitamins and antioxidants, these fruits offer a delicious way to fuel your body and satisfy your cravings. Elevate your meals, snacks, and smoothies with our farm-fresh fruits, sourced for their premium taste and nutritional value.', '2024-04-20'),
(2, 'Vegetables', 'vegetables', 'Category_Images/vegetables_8UaFR1i.jpg', 'Explore a world of freshness with our collection of vibrant vegetables. From crunchy carrots to leafy greens, our selection offers an array of colors, textures, and flavors to enhance your culinary creations. Packed with essential nutrients and bursting with flavor, our vegetables are the perfect addition to any meal. Sourced from trusted growers, our produce is guaranteed to be fresh, delicious, and full of goodness. Elevate your dishes with our premium vegetables and savor the taste of wholesome goodness with every bite', '2024-04-20'),
(3, 'Herbs', 'herbs', 'Category_Images/Herbs_JXhGPic.jpg', 'Enhance your culinary creations with our aromatic herbs. From the freshness of basil to the zest of cilantro, our selection of herbs adds depth and flavor to any dish. Picked at peak freshness, our herbs bring a burst of fragrance and taste to your cooking. Elevate your meals with our premium herbs, sourced for their exceptional quality and culinary versatility', '2024-04-20'),
(4, 'Exotic Fruits And Vegetables', 'exotic-fruits-and-vegetables', 'Category_Images/ExoticFruit_F5iv0JX.jpg', 'Embark on a journey of taste with our exotic fruits. From the vibrant hues of dragon fruit to the tropical sweetness of lychee, our selection offers a unique and unforgettable culinary experience. Indulge in the exotic flavors and textures of these rare treasures, sourced from around the globe for their exceptional taste and quality. Elevate your fruit selection with our premium exotic offerings and tantalize your taste buds with every bite.', '2024-04-20'),
(5, 'Organic Produce', 'organic-produce', 'Category_Images/OrganicProduce_YGfj0oV.jpg', 'Experience the pure essence of nature with our organic vegetables. Grown without synthetic pesticides or fertilizers, our produce embodies the true essence of freshness and purity. Packed with essential nutrients and bursting with flavor, our organic vegetables offer a deliciously wholesome addition to your meals. Sourced from trusted organic farms, our produce is cultivated with care and respect for the environment, ensuring premium quality and sustainability. Elevate your culinary creations with our premium organic vegetables and savor the taste of nature\'s bounty with every bite', '2024-04-20'),
(6, 'Seasonal Picks', 'seasonal-picks', 'Category_Images/SeasonalPicks_29ACcIh.jpg', 'Savor the flavors of the season with our selection of seasonal pick vegetables. From the sweet crunch of freshly harvested corn to the earthy richness of Brussels sprouts, our seasonal picks offer a taste of nature\'s bounty at its peak. Bursting with freshness and vitality, these vegetables are the perfect addition to your seasonal dishes. Sourced from local farms during their prime, our produce promises exceptional flavor and quality. Elevate your meals with our seasonal picks and enjoy the delicious taste of nature\'s bounty, straight from the fields to your table.', '2024-04-20'),
(7, 'Dried Fruits And Vegetables', 'dried-fruits-and-vegetables', 'Category_Images/DriedFruitsandVegetables_xmru3g8.jpg', 'Experience nature\'s sweetness in a convenient form with our dried fruits and vegetables. Bursting with flavor and nutrition, our carefully dehydrated produce offers a deliciously satisfying snack for any occasion. From the chewy sweetness of dried apricots to the tangy zest of sun-dried tomatoes, our selection captures the essence of freshness in every bite. Perfect for on-the-go snacking or adding a burst of flavor to your favorite recipes, our dried fruits and vegetables are a versatile and wholesome choice. Indulge in the natural goodness of our dried produce and elevate your snacking experience with every delicious mouthful.', '2024-04-20'),
(8, 'Fresh Juices', 'fresh-juices', 'Category_Images/glass-fresh-fruit-juice_9PFise6_q9Be79Y.jpg', 'Revitalize your day with the refreshing taste of our fresh juices. Bursting with vibrant flavors and packed with essential vitamins and nutrients, each sip is a celebration of health and vitality. From the zesty tang of freshly squeezed orange juice to the invigorating blend of green smoothies, our selection offers a deliciously wholesome option for every palate. Sourced from the finest fruits and vegetables, our juices are pressed to perfection to preserve their natural goodness and flavor. Whether you\'re starting your morning on a refreshing note or replenishing after a workout, our fresh juices are the perfect choice for a nourishing pick-me-up. Elevate your hydration routine with our premium selection of fresh juices and experience the taste of pure vitality with every sip', '2024-04-20'),
(9, 'Speciality Products', 'speciality-products', 'Category_Images/SpecialityProducts.jpg', 'Indulge in the delightful taste of our specialty fruit jams, crafted with care to capture the essence of ripe, juicy fruits. Each jar is brimming with luscious flavor and homemade charm, perfect for spreading on toast, topping desserts, or adding a sweet twist to your favorite recipes. Made from hand-selected fruits at their peak ripeness, our jams are lovingly cooked in small batches to preserve their natural sweetness and vibrant taste. Treat yourself to a spoonful of pure indulgence with our premium fruit jams, and elevate every meal with a burst of fruity goodness.', '2024-04-20'),
(10, 'Nuts And Seeds', 'nuts-and-seeds', 'Category_Images/NutsAndSeeds.jpg', 'Discover the wholesome goodness of our premium nuts and seeds, nature\'s perfect snack packed with flavor and nutrition. From the satisfying crunch of almonds to the creamy richness of walnuts, our selection offers a variety of textures and tastes to satisfy every craving. Rich in protein, fiber, and healthy fats, our nuts and seeds make a nutritious addition to your daily routine, whether enjoyed on their own, sprinkled over salads, or incorporated into your favorite recipes. Sourced from trusted growers and carefully roasted to perfection, our nuts and seeds are the ideal choice for a deliciously wholesome snack that nourishes your body and delights your taste buds. Elevate your snacking experience with our premium selection of nuts and seeds and savor the natural goodness of nature\'s bounty with every bite.', '2024-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `product_product`
--

CREATE TABLE `product_product` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_short_desc` varchar(250) NOT NULL,
  `product_long_desc` longtext NOT NULL,
  `product_image` varchar(100) DEFAULT NULL,
  `product_price` double NOT NULL,
  `product_created_at` date NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `product_sell_count` bigint(20) NOT NULL,
  `Quantity_id` bigint(20) NOT NULL,
  `Size_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_product`
--

INSERT INTO `product_product` (`id`, `product_name`, `product_short_desc`, `product_long_desc`, `product_image`, `product_price`, `product_created_at`, `product_id`, `product_sell_count`, `Quantity_id`, `Size_id`, `category_id`) VALUES
(1, 'Apple', 'An Apple a day keeps doctor away', 'The apple is a popular fruit known for its crisp texture, sweet or tart flavor, and nutritional benefits. It belongs to the Rosaceae family and comes in various colors, including red, green, and yellow. Apples are versatile and can be enjoyed fresh, baked into pies, pressed into juice, or dried as snacks. They are rich in fiber, vitamins, and antioxidants, making them a healthy addition to any diet. With a long history dating back thousands of years, apples are cultivated worldwide and are celebrated for their refreshing taste and culinary versatility.', 'Product_images/Apple-fruit.jpg', 87, '2024-04-20', 'Apple_TPtsfSofke', 0, 1, 3, 1),
(2, 'Banana', 'Eat Banana to stay healthy', 'Bananas are elongated, curved fruits with a vibrant yellow peel when ripe. They belong to the genus Musa in the family Musaceae. Known for their sweet flavor and creamy texture, bananas are enjoyed worldwide as a nutritious snack and versatile ingredient in various dishes. Rich in potassium, vitamin C, vitamin B6, and dietary fiber, bananas offer numerous health benefits, including support for heart health, digestion, and energy levels. They can be eaten fresh, added to smoothies, baked into desserts, or used as a natural sweetener in recipes. Bananas are one of the most widely consumed fruits globally and are prized for their convenience, affordability, and delicious taste.', 'Product_images/Banana.jpg', 30, '2024-04-20', 'Banana_ev9hHBDmi3', 0, 1, 3, 1),
(3, 'Grapes', 'Grapes are very tasty.', 'Grapes are small, round berries that grow in clusters on vines belonging to the Vitaceae family. They come in various colors, including green, red, and purple, and are typically eaten fresh or used to make wine, juices, jams, and raisins. Grapes are prized for their sweet and juicy flavor, as well as their nutritional value. They are rich in antioxidants, vitamins (such as vitamin C and vitamin K), and minerals (such as potassium), offering several health benefits, including supporting heart health and aiding digestion. Grapes are enjoyed as a refreshing snack and are a staple in cuisines around the world, appreciated for their versatility and delicious taste.', 'Product_images/Grapes.jpg', 53, '2024-04-20', 'Grapes_1sRc8SbMTS', 0, 1, 3, 1),
(4, 'Cabbage', 'Cabbage is good for health.', 'Cabbage is a leafy vegetable belonging to the Brassica oleracea species, which also includes broccoli, cauliflower, and Brussels sprouts. It is characterized by its dense, round or elongated head of leaves with a smooth or crinkled texture. Cabbage comes in various colors, including green, red, and purple, and offers a mildly sweet or peppery flavor depending on the variety. It is commonly used in salads, coleslaw, stir-fries, soups, stews, and fermented dishes like sauerkraut and kimchi. Rich in vitamins C and K, dietary fiber, and antioxidants, cabbage is prized for its nutritional value and potential health benefits, such as supporting immune function and aiding digestion. With its versatility and long shelf life, cabbage is a popular and nutritious addition to many cuisines worldwide.', 'Product_images/Cabbage.jpg', 20, '2024-04-20', 'Cabbage_nDOBWbDGXj', 0, 1, 2, 2),
(5, 'Tomato', 'Tomato is good to eat.', 'Tomato is a versatile fruit commonly used as a vegetable in cooking. It belongs to the Solanaceae family and is native to western South America. Tomatoes come in various sizes, shapes, and colors, including red, yellow, orange, and even purple. Known for their juicy flesh and mildly sweet or tangy flavor, tomatoes are a staple ingredient in countless dishes worldwide, from salads and sandwiches to soups, sauces, and stews. They are rich in essential nutrients like vitamins C and K, as well as antioxidants such as lycopene, which may have health benefits including reducing the risk of certain chronic diseases. Tomatoes are easy to grow and are cultivated in gardens and farms globally, making them readily available year-round in many regions.', 'Product_images/Tomato.jpg', 15, '2024-04-20', 'Tomato_O4rJX8c1Uq', 0, 1, 3, 2),
(6, 'Spinach', 'Spinach is a good green leafy vegetable', 'Spinach is a leafy green vegetable packed with nutrients and versatility. Belonging to the Amaranthaceae family, spinach is known for its vibrant green leaves and slightly bitter flavor. It can be eaten raw in salads or cooked in various dishes, including stir-fries, soups, omelets, and pasta dishes. Spinach is rich in vitamins and minerals, particularly vitamins A, C, and K, as well as folate, iron, and magnesium. It\'s renowned for its health benefits, including supporting bone health, promoting healthy digestion, and boosting the immune system. Spinach is a popular ingredient in cuisines around the world and is readily available fresh, frozen, or canned, making it a convenient and nutritious addition to any meal.', 'Product_images/Spinach.jpg', 20, '2024-04-20', 'Spinach_4M1UIEZF0H', 0, 1, 3, 2),
(7, 'Organic Tomato', 'Fresh Organic Tomato', 'Organic tomatoes are grown without the use of synthetic pesticides, herbicides, or fertilizers. They are cultivated using natural methods such as composting, crop rotation, and biological pest control. These tomatoes are typically richer in flavor and nutrients compared to conventionally grown ones, as they are allowed to ripen naturally on the vine. Additionally, organic farming practices promote soil health and biodiversity, making organic tomatoes a sustainable and environmentally friendly choice.', 'Product_images/OrganicTomato.jpeg', 25, '2024-04-20', 'Organic Tomato_PmuvIVPpfX', 0, 1, 3, 5),
(8, 'Organic Carrot', 'Organic Carrot is good to eat.', 'Organic carrots are cultivated without the use of synthetic pesticides, herbicides, or chemical fertilizers. Instead, they are grown using natural methods such as composting, crop rotation, and biological pest control. These carrots are typically sweeter and more flavorful than conventionally grown ones, as they are allowed to develop fully in nutrient-rich soil. Organic farming practices also promote soil health and biodiversity, making organic carrots a sustainable and environmentally friendly choice.', 'Product_images/Organic_Carrot.jpg', 17, '2024-04-20', 'Organic Carrot_LNo2ctNzx2', 0, 1, 3, 5),
(9, 'Organic Potato', 'Organic potatoes are grown without synthetic pesticides or fertilizers, promoting soil health and producing wholesome spuds.', 'Organic potatoes are cultivated without synthetic pesticides or fertilizers, relying on natural methods like composting and crop rotation. This ensures they\'re free from harmful chemicals and often richer in flavor and nutrients, while also supporting sustainable farming practices.', 'Product_images/OrganicPotato.jpg', 20, '2024-04-20', 'Organic Potato_RWYwQOuZJW', 0, 1, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_quantity`
--

CREATE TABLE `product_quantity` (
  `id` bigint(20) NOT NULL,
  `quantity_name` varchar(100) NOT NULL,
  `quantity_desc` varchar(250) NOT NULL,
  `quantity_created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_quantity`
--

INSERT INTO `product_quantity` (`id`, `quantity_name`, `quantity_desc`, `quantity_created_at`) VALUES
(1, 'KG', 'Kilo Gram', '2024-04-19'),
(2, 'gram', 'Gram', '2024-04-19'),
(3, 'liter', 'Liter', '2024-04-19'),
(4, 'ml', 'Mili Liter', '2024-04-19'),
(5, 'Pieces', 'Per Pieces', '2024-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `product_size`
--

CREATE TABLE `product_size` (
  `id` bigint(20) NOT NULL,
  `size_name` varchar(100) NOT NULL,
  `size_name_desc` varchar(250) NOT NULL,
  `size_created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_size`
--

INSERT INTO `product_size` (`id`, `size_name`, `size_name_desc`, `size_created_at`) VALUES
(1, 'Large', 'Large', '2024-04-19'),
(2, 'Medium', 'Medium', '2024-04-19'),
(3, 'Small', 'Small', '2024-04-19'),
(4, 'None', 'None', '2024-04-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permission_content_type_id_2f476e4b_fk_django_co` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_address`
--
ALTER TABLE `core_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_address_user_id_7681a39c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_cart`
--
ALTER TABLE `core_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_cartitem`
--
ALTER TABLE `core_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_cartitem_cart_id_5256d769_fk_core_cart_id` (`cart_id`),
  ADD KEY `core_cartitem_product_id_2640c4a2_fk_product_product_id` (`product_id`);

--
-- Indexes for table `core_order`
--
ALTER TABLE `core_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_order_order_address_id_7cdf985c_fk_core_address_id` (`order_address_id`),
  ADD KEY `core_order_user_id_b03bbffd_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_orderedproduct`
--
ALTER TABLE `core_orderedproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_orderedproduct_order_id_663776f6_fk_core_order_id` (`order_id`),
  ADD KEY `core_orderedproduct_product_id_4d33e6be_fk_product_product_id` (`product_id`),
  ADD KEY `core_orderedproduct_user_id_b694a318_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_product`
--
ALTER TABLE `product_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_quantity`
--
ALTER TABLE `product_quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_address`
--
ALTER TABLE `core_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_cart`
--
ALTER TABLE `core_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_cartitem`
--
ALTER TABLE `core_cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_order`
--
ALTER TABLE `core_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_orderedproduct`
--
ALTER TABLE `core_orderedproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_product`
--
ALTER TABLE `product_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_quantity`
--
ALTER TABLE `product_quantity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_size`
--
ALTER TABLE `product_size`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `core_address`
--
ALTER TABLE `core_address`
  ADD CONSTRAINT `core_address_user_id_7681a39c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_cartitem`
--
ALTER TABLE `core_cartitem`
  ADD CONSTRAINT `core_cartitem_cart_id_5256d769_fk_core_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `core_cart` (`id`),
  ADD CONSTRAINT `core_cartitem_product_id_2640c4a2_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`);

--
-- Constraints for table `core_order`
--
ALTER TABLE `core_order`
  ADD CONSTRAINT `core_order_order_address_id_7cdf985c_fk_core_address_id` FOREIGN KEY (`order_address_id`) REFERENCES `core_address` (`id`),
  ADD CONSTRAINT `core_order_user_id_b03bbffd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_orderedproduct`
--
ALTER TABLE `core_orderedproduct`
  ADD CONSTRAINT `core_orderedproduct_order_id_663776f6_fk_core_order_id` FOREIGN KEY (`order_id`) REFERENCES `core_order` (`id`),
  ADD CONSTRAINT `core_orderedproduct_product_id_4d33e6be_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  ADD CONSTRAINT `core_orderedproduct_user_id_b694a318_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
