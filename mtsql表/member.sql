-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2023-03-30 02:26:24
-- 伺服器版本： 5.7.36
-- PHP 版本： 7.4.26

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
-- 資料表結構 `member`
--

DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '會員ID',
  `Username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '帳號',
  `Pwd` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密碼',
  `Sex` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '性別',
  `Tel` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '電話',
  `Address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '送貨地址',
  `Usertype` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT 'VIP' COMMENT '會員級別 (分類名-會員)',
  `Photo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '個人照',
  `LineID` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'LineID',
  `Bonuspoint` int(11) NOT NULL DEFAULT '0' COMMENT '紅利積點',
  `Userstate` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'y' COMMENT 'y:啟用,n:停權',
  `UID01` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UID02` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UID03` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '創建日期',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`ID`, `Username`, `Pwd`, `Sex`, `Tel`, `Address`, `Usertype`, `Photo`, `LineID`, `Bonuspoint`, `Userstate`, `UID01`, `UID02`, `UID03`, `Created_at`) VALUES
(7, 'demomap', '$2y$10$frjJjHh3bE4ceIzRkxJbiugZ7FYM5LwFdlXOylHh448RNnmaWGUei', 'girl', '1234567890', '0', '100', '0', '0', 0, 'y', 'c2b78698cf9a236d8a136253b2428d1', '5aa2ea1248c42248d9202e931a87c47', '08480b39ac51a71b0ecb34d9d0bd427', '2023-02-14 07:50:33'),
(15, '11111', '$2y$10$EZjIWzCndm9NhkjVSGoVge1RDWsHpvLhE47Y4Qx4eZsVakW/3FfoW', '男', '09111111', NULL, 'VIP', NULL, NULL, 0, 'y', '6c2064a1d95aad9ffe345e4aafa6b5e', 'b392f80366542bc4a030f2b3acedc03', 'd23aeb8da1e3573ee177479c459c3e9', '2023-03-29 07:43:10'),
(16, '22222', '$2y$10$OXwnKNnnpiUgbW.wBuVAxesXxKieMfUjVhPkGs6gvXunzjv/cL0CO', '女', '09222222', NULL, 'VIP', NULL, NULL, 0, 'y', NULL, NULL, NULL, '2023-03-29 07:48:14'),
(17, '55555', '$2y$10$iQ7fHcMIAZMw5mylWNeiO.m58Mcs/c8aTajeZlvxhEm60KOIe85pi', '男', '09555555', NULL, 'VIP', NULL, NULL, 0, 'y', NULL, NULL, NULL, '2023-03-29 07:56:32'),
(18, 'geese0', '$2y$10$YnGrRNNblqdr4Hhhddfl..8YRuL6/ao7SZ5dm8BZnOq3DC70t5BrK', '男', '0911111111', NULL, 'VIP', NULL, NULL, 0, 'y', NULL, NULL, NULL, '2023-03-30 02:22:40');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
