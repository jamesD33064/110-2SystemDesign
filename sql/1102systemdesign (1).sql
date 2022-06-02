-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022-06-02 05:45:32
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `1102systemdesign`
--

-- --------------------------------------------------------

--
-- 資料表結構 `Bidding_product`
--

CREATE TABLE `Bidding_product` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_customer_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(20) NOT NULL,
  `end_time` datetime NOT NULL,
  `img_1` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_2` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `Bidding_product`
--

INSERT INTO `Bidding_product` (`id`, `from_customer_name`, `product_name`, `product_price`, `end_time`, `img_1`, `img_2`, `img_3`, `type`, `introduce`) VALUES
('bi01', 'ccc', '裡是憶花店', 3, '0000-00-00 00:00:00', '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG', '2_1', 'j4wh4sjzj4wh4sjz'),
('bi02', 'bbb', '日本uuu', 3, '0000-00-00 00:00:00', '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG', '1_2', 'j4wh4sjzj4wh4sjzj4wh4sjz'),
('bi03', 'aaa', 'dddd', 44444, '2022-06-16 00:00:00', 'mnist1.jpg', 'mnist1.jpg', 'mnist1.jpg', '1_1', 'j4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjz'),
('bi04', 'ddd', 'sssss', 123, '2022-06-22 00:00:00', 'mnist1.jpg', 'mnist1.jpg', 'mnist1.jpg', '2_2', 'j4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjzj4wh4sjz'),
('bi05', 'aaa', 'ggggg', 22222, '2022-06-29 00:00:00', '20220428040209351705.JPG', '20220428040209351705.JPG', '20220428040209351705.JPG', '1_2', 'wegWGRWEHGW34GEGVEAGT3EAW');

-- --------------------------------------------------------

--
-- 資料表結構 `changeBOOKorCD`
--

CREATE TABLE `changeBOOKorCD` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_customer_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(20) NOT NULL,
  `img_1` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_2` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `changeBOOKorCD`
--

INSERT INTO `changeBOOKorCD` (`id`, `from_customer_name`, `product_name`, `product_price`, `img_1`, `img_2`, `img_3`, `type`, `introduce`) VALUES
('cp01', 'ddd', '你好這裡是記憶花店', 1099, '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG', '1_1', ''),
('cp02', 'bbb', '日本色ttt', 8000, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG', '1_2', ''),
('cp03', 'ccc', '日b4b4b4b4', 8000, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG', '1_2', ''),
('cp05', 'aaa', 'rrrrr', 0, 'mnist1.jpg', 'mnist1.jpg', 'mnist1.jpg', '2_1', 'ewrhg3hgv'),
('cp06', 'aaa', 'qGEEWG', 0, '20220428040209351705.JPG', '20220428040209351705.JPG', '20220428040209351705.JPG', '2_2', 'NJUENJEFJEWNFJWENFJWENFJNFJ');

-- --------------------------------------------------------

--
-- 資料表結構 `coupon`
--

CREATE TABLE `coupon` (
  `coupon_name` varchar(64) NOT NULL,
  `coupon_price` varchar(16) NOT NULL,
  `max_use` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `coupon`
--

INSERT INTO `coupon` (`coupon_name`, `coupon_price`, `max_use`) VALUES
('aaa', '0.95', '2'),
('bbb', '100', '2');

-- --------------------------------------------------------

--
-- 資料表結構 `coupon_customeruse`
--

CREATE TABLE `coupon_customeruse` (
  `id` datetime NOT NULL,
  `customer_id` varchar(64) NOT NULL,
  `coupon_name` varchar(64) NOT NULL,
  `coupon_use` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `coupon_customeruse`
--

INSERT INTO `coupon_customeruse` (`id`, `customer_id`, `coupon_name`, `coupon_use`) VALUES
('2022-05-27 22:41:58', 'bbb@bbb.com', 'aaa', '1'),
('2022-05-31 16:59:12', 'aaa@aaa.com', 'aaa', '2'),
('2022-05-31 17:21:13', 'aaa@aaa.com', 'bbb', '2');

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `username` varchar(10) NOT NULL,
  `email` varchar(128) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`username`, `email`, `user_password`, `phone`, `address`) VALUES
('aaa', 'aaa@aaa.com', 'aaa', '', ''),
('bbb', 'bbb@bbb.com', 'bbb', '', ''),
('ccc', 'ccc@ccc.com', 'ccc', '', ''),
('ddd', 'ddd@ddd.com', 'ddd', '', ''),
('eee', 'eee@eee.com', 'eee', '', '');

-- --------------------------------------------------------

--
-- 資料表結構 `manager_account`
--

CREATE TABLE `manager_account` (
  `account` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `manager_account`
--

INSERT INTO `manager_account` (`account`, `password`) VALUES
('123', '123');

-- --------------------------------------------------------

--
-- 資料表結構 `message`
--

CREATE TABLE `message` (
  `from_id` varchar(50) NOT NULL,
  `to_id` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `message`
--

INSERT INTO `message` (`from_id`, `to_id`, `message`, `date`) VALUES
('aaa@aaa.com', 'ccc@ccc.com', '123', '2022-06-01 10:45:40'),
('ccc@ccc.com', 'aaa@aaa.com', '098765', '2022-06-01 16:59:40'),
('aaa@aaa.com', 'bbb@bbb.com', '45678', '2022-06-01 10:47:02'),
('bbb@bbb.com', 'aaa@aaa.com', '765433222', '2022-06-01 16:49:02');

-- --------------------------------------------------------

--
-- 資料表結構 `product`
--

CREATE TABLE `product` (
  `id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(20) NOT NULL,
  `img_1` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_2` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `img_1`, `img_2`, `img_3`, `type`, `introduce`) VALUES
('p01', '你好這裡是記憶花店', 1099, '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG', '2_1', '3wq4jhn33wq4jhn33wq4jhn33wq4jhn33wq4jhn33wq4jhn3'),
('p02', '你好這裡是我家', 2, '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG', '1_1', '3wq4jhn33wq4jhn33wq4jhn33wq4jhn33wq4jhn33wq4jhn3'),
('p03', '狗狗', 99999, '20220412033205518611.JPG', '20220412033205518611.JPG', '20220412033205518611.JPG', '1_2', '3wq4jhn33wq4jhn33wq4jhn33wq4jhn33wq4jhn33wq4jhn3'),
('p04', 'WHRHRE', 45, '20220412033205518611.JPG', '20220412033205518611.JPG', '20220412033205518611.JPG', '1_1', '325245');

-- --------------------------------------------------------

--
-- 資料表結構 `test`
--

CREATE TABLE `test` (
  `id` varchar(256) NOT NULL,
  `IGname` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `ordername` varchar(128) NOT NULL,
  `orderphone` varchar(128) NOT NULL,
  `receverphone` varchar(128) NOT NULL,
  `product_num_json` varchar(512) NOT NULL,
  `payway` varchar(10) NOT NULL,
  `sendway` varchar(128) NOT NULL,
  `address` varchar(512) NOT NULL,
  `sell_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `test`
--

INSERT INTO `test` (`id`, `IGname`, `email`, `ordername`, `orderphone`, `receverphone`, `product_num_json`, `payway`, `sendway`, `address`, `sell_date`) VALUES
('aaa@aaa.com', 's', 'james0120160379@gmail.com', 'ssssssssss', 'ssssssssss', 'ssssssssss', '[{\"name\":\"你好這裡是記憶花店\",\"count\":1},{\"name\":\"日本色ttt\",\"count\":1}]', 'pay_1', 'sendway_3', '', '2022-05-31 21:51:45'),
('aaa@aaa.com', 'ssssssssss', 'james0120160379@gmail.com', 'ssssssssss', 'ssssssssss', 'ssssssssss', '[{\"name\":\"你好這裡是記憶花店\",\"count\":1}]', 'pay_1', 'sendway_3', '', '2022-06-01 00:02:08'),
('aaa@aaa.com', 'RRRRRRRRRR', 'james0120160379@gmail.com', 'RRRRRRRRRR', 'RRRRRRRRRR', 'RRRRRRRRRR', '[{\"name\":\"WHRHRE\",\"count\":2}]', 'pay_2', 'sendway_3', '', '2022-06-01 18:11:10');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `Bidding_product`
--
ALTER TABLE `Bidding_product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `changeBOOKorCD`
--
ALTER TABLE `changeBOOKorCD`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_name`);

--
-- 資料表索引 `coupon_customeruse`
--
ALTER TABLE `coupon_customeruse`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email`);

--
-- 資料表索引 `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`sell_date`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
