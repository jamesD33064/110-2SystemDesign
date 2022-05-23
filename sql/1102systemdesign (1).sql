-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2022 年 05 月 23 日 13:29
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
('p01', '你好', '你好這裡是記憶花店', 1099, '20220412033205518611.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p02', '花店', '日本色ttt', 8000, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p03', '333花店', '日b4b4b4b4', 8000, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG');

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
('p05', '日本色彩寫真物語', 5, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p06', '日本色彩寫真物語', 6, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p07', '日本色彩寫真物語', 7, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p08', '日本色彩寫真物語', 8, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p09', '日本色彩寫真物語999', 8, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG'),
('p10', '日本色ttt', 8000, 'IMG_0400.JPG', 'IMG_0400.JPG', 'IMG_0400.JPG');

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
-- 傾印資料表的資料 `test`
--

INSERT INTO `test` (`id`, `IGname`, `email`, `ordername`, `orderphone`, `receverphone`, `product_num_json`, `sendway`, `address`, `sell_date`) VALUES
('20220501', 'cccccccccc', 'james0120160379@gmail.com', 'cccccccccc', 'cccccccccc', 'cccccccccc', '[{\"name\":\"p1\",\"count\":0},{\"name\":\"p2\",\"count\":1},{\"name\":\"p3\",\"count\":1},{\"name\":\"p4\",\"count\":0},{\"name\":\"p5\",\"count\":0},{\"name\":\"p6\",\"count\":0},{\"name\":\"p7\",\"count\":0},{\"name\":\"p8\",\"count\":0}]', 'sendway_3', '', '2022-05-01 22:58:00'),
('20220503', 'ggg', 'james0120160379@gmail.com', 'ggg', 'gggggggggg', 'gggggggggg', '[{\"name\":\"p1\",\"count\":0},{\"name\":\"p2\",\"count\":5},{\"name\":\"p3\",\"count\":0},{\"name\":\"p4\",\"count\":5},{\"name\":\"p5\",\"count\":0},{\"name\":\"p6\",\"count\":0},{\"name\":\"p7\",\"count\":0},{\"name\":\"p8\",\"count\":0}]', 'sendway_2', 'g', '2022-05-03 13:46:29'),
('20220503', 'fff', 'james0120160379@gmail.com', 'd', 'dddddddddd', 'dddddddddd', '[{\"name\":\"p1\",\"count\":0},{\"name\":\"p2\",\"count\":2},{\"name\":\"p3\",\"count\":0},{\"name\":\"p4\",\"count\":1},{\"name\":\"p5\",\"count\":0},{\"name\":\"p6\",\"count\":1},{\"name\":\"p7\",\"count\":0},{\"name\":\"p8\",\"count\":0}]', 'sendway_3', '', '2022-05-03 13:50:04'),
('20220503', 'r', 'james0120160379@gmail.com', 'rrrrrrrrrr', 'rrrrrrrrrr', 'rrrrrrrrrr', '[{\"name\":\"p1\",\"count\":0},{\"name\":\"p2\",\"count\":1},{\"name\":\"p3\",\"count\":0},{\"name\":\"p4\",\"count\":0},{\"name\":\"p5\",\"count\":0},{\"name\":\"p6\",\"count\":0},{\"name\":\"p7\",\"count\":0},{\"name\":\"p8\",\"count\":0}]', 'sendway_3', '', '2022-05-03 13:52:21'),
('20220503', 'd', 'james0120160379@gmail.com', 'dddddddddd', 'dddddddddd', 'dddddddddd', '[{\"name\":\"p1\",\"count\":0},{\"name\":\"p2\",\"count\":1},{\"name\":\"p3\",\"count\":0},{\"name\":\"p4\",\"count\":0},{\"name\":\"p5\",\"count\":1},{\"name\":\"p6\",\"count\":0},{\"name\":\"p7\",\"count\":0},{\"name\":\"p8\",\"count\":1}]', 'sendway_3', '', '2022-05-03 13:56:32'),
('20220507', 'r', 'james0120160379@gmail.com', 'r', 'rrrrrrrrrr', 'rrrrrrrrrr', '[{\"name\":\"p1\",\"count\":11},{\"name\":\"p2\",\"count\":6},{\"name\":\"p3\",\"count\":0},{\"name\":\"p4\",\"count\":0},{\"name\":\"p5\",\"count\":0},{\"name\":\"p6\",\"count\":0},{\"name\":\"p7\",\"count\":0},{\"name\":\"p8\",\"count\":0}]', 'sendway_2', 'rrrrrrrrrr', '2022-05-07 12:34:27'),
('20220507', 'v', 'james0120160379@gmail.com', 'v', 'vvvvvvvvvv', 'vvvvvvvvvv', '[{\"name\":\"p1\",\"count\":0},{\"name\":\"p2\",\"count\":1},{\"name\":\"p3\",\"count\":0},{\"name\":\"p4\",\"count\":0},{\"name\":\"p5\",\"count\":0},{\"name\":\"p6\",\"count\":0},{\"name\":\"p7\",\"count\":0},{\"name\":\"p8\",\"count\":0}]', 'sendway_1', 'vvvvvvvvvv', '2022-05-07 12:36:22'),
('20220507', 'f', 'james0120160379@gmail.com', 'v', 'vvvvvvvvvv', 'vvvvvvvvvv', '[{\"name\":\"p1\",\"count\":0},{\"name\":\"p2\",\"count\":1},{\"name\":\"p3\",\"count\":0},{\"name\":\"p4\",\"count\":0},{\"name\":\"p5\",\"count\":0},{\"name\":\"p6\",\"count\":0},{\"name\":\"p7\",\"count\":0},{\"name\":\"p8\",\"count\":0}]', 'sendway_3', '', '2022-05-07 12:37:57'),
('20220519', 'v', 'james0120160379@gmail.com', 's', 'ssssssssss', 'ssssssssss', '[{\"name\":\"p1\",\"count\":0},{\"name\":\"p2\",\"count\":0},{\"name\":\"p3\",\"count\":2},{\"name\":\"p4\",\"count\":4},{\"name\":\"p5\",\"count\":0},{\"name\":\"p6\",\"count\":0},{\"name\":\"p7\",\"count\":0},{\"name\":\"p8\",\"count\":0}]', 'sendway_3', '', '2022-05-19 16:39:57'),
('20220523', 'rrr', 'james0120160379@gmail.com', 'fff', 'ffffffffff', 'ffffffffff', '[{\"name\":\"p02\",\"count\":2},{\"name\":\"p10\",\"count\":2},{\"name\":\"p09\",\"count\":2}]', 'sendway_3', '', '2022-05-23 16:35:34');

--
-- 已傾印資料表的索引
--

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
