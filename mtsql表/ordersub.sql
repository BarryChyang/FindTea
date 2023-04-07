-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 
-- 伺服器版本： 10.4.10-MariaDB
-- PHP 版本： 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `myshop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `ordersub`
--

DROP TABLE IF EXISTS `ordersub`;
CREATE TABLE IF NOT EXISTS `ordersub` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Orderno` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '訂單編號',
  `UserId` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '產品ID',
  `Pname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '品名',
  `Price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '價格',
  `Pnum` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '數量',
  `Points` int(11) NOT NULL DEFAULT 0 COMMENT '紅利點數',
  `Sweet` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '甜度',
  `Temp` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '溫度',
  `Capacity` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '容量(大中小)',
  `Account` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '小計',
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT '創建日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `ordersub`
--

INSERT INTO `ordersub` (`ID`, `Orderno`, `UserId`, `Pname`, `Price`, `Pnum`, `Points`, `Sweet`, `Temp`, `Capacity`, `Account`, `Created_at`) VALUES
(7, '1680091948275', '15', '娜杯紅茶', '50', '1', 0, '微糖', '少冰', 'L', '50', '2023-03-29 12:12:29'),
(8, '1680092781269', '15', '原片初露青茶', '50', '1', 0, '微糖', '少冰', 'M', '50', '2023-03-29 12:26:28'),
(9, '1680092784934', '15', '大正紅茶拿鐵', '50', '1', 0, '微糖', '少冰', 'M', '50', '2023-03-29 12:26:28'),
(12, '1680108794823', '15', '焙香決明大麥', '50', '1', 0, '半糖', '少冰', 'L', '50', '2023-03-29 16:53:21'),
(13, '1680108797289', '15', '焙香大麥拿鐵', '50', '1', 0, '半糖', '少冰', 'L', '50', '2023-03-29 16:53:21'),
(14, '1680109099343', '15', '原片初露青茶', '50', '1', 0, '微糖', '少冰', 'L', '50', '2023-03-29 16:58:25'),
(15, '1680109101799', '15', '伯爵紅茶拿鐵', '50', '1', 0, '微糖', '少冰', 'L', '50', '2023-03-29 16:58:25'),
(16, '1680109216456', '15', '伯爵可可拿鐵', '50', '1', 0, '全糖', '熱', 'XL', '50', '2023-03-29 17:00:27'),
(17, '1680109221768', '15', '法芙娜純可可鮮奶', '50', '1', 0, '全糖', '正常', 'XL', '50', '2023-03-29 17:00:27'),
(18, '1680109409295', '15', '琥珀高峰烏龍', '50', '1', 0, '微糖', '微冰', 'L', '50', '2023-03-29 17:03:33'),
(19, '1680110000960', '15', '焙香決明大麥', '50', '1', 0, '微糖', '少冰', 'L', '50', '2023-03-29 17:13:24'),
(20, '1680110142465', '15', '焙香決明大麥', '50', '1', 0, '微糖', '少冰', 'L', '50', '2023-03-29 17:15:45'),
(21, '1680110298305', '15', '冬瓜青茶', '50', '1', 0, '微糖', '少冰', 'L', '50', '2023-03-29 17:18:23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
