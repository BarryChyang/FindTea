-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2023-03-31 03:34:06
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
-- 資料表結構 `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '產品ID',
  `Pindex` int(11) DEFAULT NULL,
  `Sort_ID` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '茶類' COMMENT '分類別-產品',
  `Pname` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '品名',
  `Pdimg` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '圖片',
  `Information` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT '產品介紹',
  `Price` int(64) NOT NULL COMMENT '價格',
  `DisPrice` int(64) NOT NULL DEFAULT '0' COMMENT '特價',
  `Points` int(64) NOT NULL DEFAULT '5' COMMENT '紅利點數',
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '創建日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product`
--

INSERT INTO `product` (`ID`, `Pindex`, `Sort_ID`, `Pname`, `Pdimg`, `Information`, `Price`, `DisPrice`, `Points`, `Created_at`) VALUES
(1, 0, '11', '冰糖洛神梅', 'C:fakepathdrink.jpg', 'good', 25, 5, 5, '2023-02-02 01:51:08'),
(2, 0, '1', '養樂多綠', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(3, 0, '1', '冬瓜青茶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:08'),
(4, 0, '1', '冬瓜檸檬　', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(5, 0, '1', '白甘蔗青茶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:08'),
(6, 0, '1', '香柚綠茶　', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(7, 0, '1', '青檸香茶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:08'),
(8, 0, '1', '冬瓜麥茶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(9, 0, '1', '冰萃檸檬　', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(10, 0, '1', '蜂蜜檸檬晶凍', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(11, 0, '1', '原鄉冬瓜茶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(12, 0, '1', '焙香決明大麥', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(13, 0, '1', '琥珀高峰烏龍', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(14, 0, '1', '原片初露青茶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(15, 0, '1', '娜杯紅茶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(16, 0, '1', '伯爵紅茶拿鐵', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(17, 0, '1', '娜杯紅茶拿鐵', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(18, 0, '1', '琥珀烏龍拿鐵', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(19, 0, '1', '焙香大麥拿鐵', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(20, 0, '1', '伯爵可可拿鐵', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(21, 0, '1', '蜂蜜麥茶拿鐵', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(22, 0, '1', '大正紅茶拿鐵', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(23, 0, '1', '茉香綠茶拿鐵', '/Web/Photo/drink.jpg', '好喝', 55, 5, 5, '2023-02-02 01:51:11'),
(24, 0, '1', '珍珠鮮奶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(25, 0, '1', '嫩仙草凍奶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(26, 0, '1', '法芙娜純可可鮮奶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(27, 0, '1', '芋頭鮮奶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(28, 0, '1', '手炒黑糖鮮奶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(29, 0, '1', '小資生活鮮奶', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(30, 0, '1', '鮮奶可可', '/Web/Photo/drink.jpg', '好喝', 50, 5, 5, '2023-02-02 01:51:11'),
(31, NULL, '奶', '奶茶', 'C:fakepathegg.png', '普普', 30, 30, 0, '2023-03-31 03:33:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
