-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2023-03-31 03:46:35
-- 伺服器版本： 5.7.36
-- PHP 版本： 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `myshop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `member_buy`
--

DROP TABLE IF EXISTS `member_buy`;
CREATE TABLE IF NOT EXISTS `member_buy` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(64) NOT NULL COMMENT '使用者ID',
  `Orderno` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `Phone` int(11) NOT NULL COMMENT '電話',
  `Take_mael` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '自取/外送',
  `Adress` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '地址',
  `Pay` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '付款方式',
  `Money` int(11) NOT NULL COMMENT '總金額',
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `member_buy`
--

INSERT INTO `member_buy` (`ID`, `userId`, `Orderno`, `Name`, `Phone`, `Take_mael`, `Adress`, `Pay`, `Money`, `Created_at`) VALUES
(9, 0, '2212250001', '456', 123, '外送', '123', '現金', 145, '2023-03-21 06:08:08'),
(10, 0, '2212250001', '213', 123, '自取', '台中市西屯區工業區一路100號', '現金', 145, '2023-03-21 06:08:27'),
(11, 0, '2212250001', '123123', 123, '外送', '123', '現金', 145, '2023-03-21 06:13:58'),
(12, 0, '2212250001', '123', 123, '自取', '台中市西屯區工業區一路100號', '現金', 145, '2023-03-21 06:14:09'),
(13, 0, '2212250001', '123', 123, '自取', '台中市西屯區工業區一路100號', '現金', 145, '2023-03-21 06:14:10'),
(14, 0, '2212250001', '你好', 985, '自取', '台中市西屯區工業區一路100號', '現金', 145, '2023-03-21 06:26:19'),
(15, 0, '2212250001', '你好', 985, '自取', '台中市西屯區工業區一路100號', '現金', 145, '2023-03-21 06:26:19'),
(16, 0, '2212250001', '你好', 985, '自取', '台中市西屯區工業區一路100號', '現金', 145, '2023-03-21 06:26:20'),
(17, 0, '2212250001', '你好', 9813, '外送', '地址', '刷卡', 145, '2023-03-21 06:27:43'),
(18, 0, '2212250001', '你好', 9813, '外送', '地址', '刷卡', 145, '2023-03-21 06:28:12'),
(19, 0, '1680092784934', 'AAA', 111111111, '自取', '台中市西屯區工業區一路100號', '現金', 150, '2023-03-29 15:38:35'),
(20, 7, '1680234152327', 'AAA', 0, '自取', '台中市西屯區工業區一路100號', '現金', 125, '2023-03-31 03:46:15');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
