-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 26 日 17:46
-- 伺服器版本： 10.4.21-MariaDB
-- PHP 版本： 7.4.29

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
  `img_3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `Bidding_product`
--

INSERT INTO `Bidding_product` (`id`, `from_customer_name`, `product_name`, `product_price`, `end_time`, `img_1`, `img_2`, `img_3`) VALUES
('bi01', 'aaa', '裡是憶花店', 0, '0000-00-00 00:00:00', '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('bi02', 'ccc', '日本uuu', 0, '0000-00-00 00:00:00', '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG');

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
  `img_3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `changeBOOKorCD`
--

INSERT INTO `changeBOOKorCD` (`id`, `from_customer_name`, `product_name`, `product_price`, `img_1`, `img_2`, `img_3`) VALUES
('cp01', 'aaa', 'test', 0, '20220412033205518611.JPG', '20220412033205518611.JPG', '20220412033205518611.JPG'),
('cp02', 'ccc', 'test_2', 0, '20220412033205518611.JPG', '20220412033205518611.JPG', '20220412033205518611.JPG');

-- --------------------------------------------------------

--
-- 資料表結構 `customer`
--

CREATE TABLE `customer` (
  `username` varchar(10) NOT NULL,
  `email` varchar(128) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `customer`
--

INSERT INTO `customer` (`username`, `email`, `user_password`) VALUES
('aaa', 'aaa@aaa.com', 'aaa'),
('bbb', 'bbb@bbb.com', 'bbb'),
('ccc', 'ccc@ccc.com', 'ccc'),
('ddd', 'ddd@ddd.com', 'ddd'),
('eee', 'eee@eee.com', 'eee');

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
  `img_3` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_price`, `img_1`, `img_2`, `img_3`) VALUES
('p01', '你好這裡是記憶花店', 1099, '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p02', '你好這裡是記憶花店', 2, '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p03', '你好這裡是記憶花店', 999, '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p04', '你好這裡是記憶花店', 4, '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p05', '日本色彩寫真物語', 5, '20220428040209351705.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p06', '日本色彩寫真物語', 6, '20220428040209351705.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p07', '日本色彩寫真物語', 7, '20220428040209351705.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p08', '日本色彩寫真物語', 8, '20220428040209351705.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG');

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
  `sendway` varchar(128) NOT NULL,
  `address` varchar(512) NOT NULL,
  `sell_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
