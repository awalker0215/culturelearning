-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-01-07 05:57:49
-- 伺服器版本: 10.1.19-MariaDB
-- PHP 版本： 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `culture`
--

-- --------------------------------------------------------

--
-- 資料表結構 `class_ activity`
--

CREATE TABLE `class_ activity` (
  `a_id` int(11) NOT NULL,
  `a_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `a_name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `c_id` int(11) NOT NULL,
  `a_cloumn` int(11) DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `class_ activity`
--

INSERT INTO `class_ activity` (`a_id`, `a_type`, `a_name`, `c_id`, `a_cloumn`, `username`) VALUES
(6, '活動', '澎科大校慶', 1, 0, 'root');

-- --------------------------------------------------------

--
-- 資料表結構 `class_all`
--

CREATE TABLE `class_all` (
  `c_id` int(11) NOT NULL,
  `c_type` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `class_all`
--

INSERT INTO `class_all` (`c_id`, `c_type`) VALUES
(1, '活動');

-- --------------------------------------------------------

--
-- 資料表結構 `class_field`
--

CREATE TABLE `class_field` (
  `f_id` int(11) NOT NULL,
  `f_column` varchar(20) CHARACTER SET utf8 NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `class_field`
--

INSERT INTO `class_field` (`f_id`, `f_column`, `c_id`) VALUES
(3, '人數', 1),
(4, '內容', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `class_vaule`
--

CREATE TABLE `class_vaule` (
  `v_id` int(11) NOT NULL,
  `v_vaule` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `class_vaule`
--

INSERT INTO `class_vaule` (`v_id`, `v_vaule`, `a_id`, `f_id`) VALUES
(3, '200人', 6, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `filename`
--

CREATE TABLE `filename` (
  `f_id` int(11) NOT NULL,
  `f_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `f_name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `f_filename` varchar(20) CHARACTER SET utf8 NOT NULL,
  `f_filetype` varchar(20) CHARACTER SET utf8 NOT NULL,
  `a_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `laction`
--

CREATE TABLE `laction` (
  `l_id` int(11) NOT NULL,
  `l_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `l_name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `l_xaxis` decimal(9,6) NOT NULL,
  `l_yaxis` decimal(9,6) NOT NULL,
  `a_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `laction`
--

INSERT INTO `laction` (`l_id`, `l_type`, `l_name`, `l_xaxis`, `l_yaxis`, `a_id`) VALUES
(1, '活動', '路跑', '23.574574', '119.580891', 6),
(3, '活動', '收發室', '23.575864', '119.580784', 6),
(4, '活動', '抗議校長只開給物流專任', '23.575440', '119.581155', 6),
(5, '活動', '中興國小運動會', '23.574710', '119.574374', 6),
(7, '活動', '文光國中運動會', '23.573196', '119.569460', 6);

-- --------------------------------------------------------

--
-- 資料表結構 `profile`
--

CREATE TABLE `profile` (
  `p_sex` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_age` int(100) NOT NULL,
  `c_id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `profile`
--

INSERT INTO `profile` (`p_sex`, `p_age`, `c_id`, `username`) VALUES
('M', 44, 1, 'fsfsfrfrrgre'),
('F', 54, 2, 'greg'),
('F', 542, 3, 'gfergdr'),
('M', 45, 4, 'frsfsfgsg'),
('F', 45, 5, 'reetrrere'),
('M', 458, 6, 'dgd'),
('M', 458, 7, 'dgd'),
('F', 47, 8, 'efewff'),
('M', 20, 9, 'awalker0215'),
('M', 20, 10, 'awalker0215'),
('M', 0, 11, 'DD'),
('M', 23, 12, 'test'),
('M', 58, 13, 'fsedfsf'),
('M', 20, 14, 'qqqq'),
('M', 45, 15, 'aaaaaa'),
('M', 45, 16, 'aaaaaa');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `password` varchar(45) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `enabled`) VALUES
('aaaaaa', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', 'aaaaaa@aaaaaa.aaaaaa', 1),
('alex', 'e10adc3949ba59abbe56e057f20f883e', 'alex@test.org.tw', 1),
('amelia', 'e10adc3949ba59abbe56e057f20f883e', 'adf@123.123.123', 1),
('awalker0215', '63a9f0ea7bb98050796b649e85481845', 'awalker0215@gmail.com', 1),
('DD', '350bfcb1e3cfb28ddff48ce525d4f139', 'DD.DD@DD.DD', 1),
('fsedfsf', '1e8332770f09e315c53a6863192ff464', 'fsdf@54.54', 1),
('maokao', 'e10adc3949ba59abbe56e057f20f883e', 'asdfs@123.123.213', 1),
('qqqq', '437599f1ea3514f8969f161a6606ce18', 'qqqqq@qqqq.qqqq', 1),
('ranma', 'e10adc3949ba59abbe56e057f20f883e', 'maokao25@gmail.com', 1),
('root', 'e10adc3949ba59abbe56e057f20f883e', 'mkyong@test.org.tw', 1),
('test', '098f6bcd4621d373cade4e832627b4f6', 'test@test.test', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL,
  `role` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `username`, `role`) VALUES
(5, 'amelia', 'ROLE_ADMIN'),
(4, 'maokao', 'ROLE_ADMIN'),
(2, 'root', 'ROLE_ADMIN'),
(15, 'aaaaaa', 'ROLE_USER'),
(3, 'alex', 'ROLE_USER'),
(10, 'awalker0215', 'ROLE_USER'),
(11, 'DD', 'ROLE_USER'),
(13, 'fsedfsf', 'ROLE_USER'),
(14, 'qqqq', 'ROLE_USER'),
(1, 'root', 'ROLE_USER'),
(12, 'test', 'ROLE_USER');

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `webtest`
--
CREATE TABLE `webtest` (
`c_type` varchar(20)
,`a_name` varchar(20)
,`f_column` varchar(20)
,`v_vaule` varchar(200)
);

-- --------------------------------------------------------

--
-- 檢視表結構 `webtest`
--
DROP TABLE IF EXISTS `webtest`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `webtest`  AS  select `cal`.`c_type` AS `c_type`,`ca`.`a_name` AS `a_name`,`cf`.`f_column` AS `f_column`,`cv`.`v_vaule` AS `v_vaule` from (((`class_ activity` `ca` left join `class_all` `cal` on((`ca`.`c_id` = `cal`.`c_id`))) left join `class_field` `cf` on((`cf`.`c_id` = `ca`.`c_id`))) left join `class_vaule` `cv` on((`cf`.`f_id` = `cv`.`f_id`))) ;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `class_ activity`
--
ALTER TABLE `class_ activity`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `a_cloumn` (`a_cloumn`),
  ADD KEY `username` (`username`),
  ADD KEY `c_id` (`c_id`);

--
-- 資料表索引 `class_all`
--
ALTER TABLE `class_all`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `c_id` (`c_id`);

--
-- 資料表索引 `class_field`
--
ALTER TABLE `class_field`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `f_id` (`f_id`),
  ADD KEY `c_id` (`c_id`);

--
-- 資料表索引 `class_vaule`
--
ALTER TABLE `class_vaule`
  ADD PRIMARY KEY (`v_id`),
  ADD UNIQUE KEY `a_id` (`a_id`),
  ADD KEY `v_id` (`v_id`),
  ADD KEY `f_id` (`f_id`);

--
-- 資料表索引 `filename`
--
ALTER TABLE `filename`
  ADD PRIMARY KEY (`f_id`),
  ADD UNIQUE KEY `a_id` (`a_id`),
  ADD KEY `f_id` (`f_id`);

--
-- 資料表索引 `laction`
--
ALTER TABLE `laction`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `l_id` (`l_id`),
  ADD KEY `a_id` (`a_id`);

--
-- 資料表索引 `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `username` (`username`),
  ADD KEY `c_id` (`c_id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD UNIQUE KEY `uni_username_role` (`role`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `class_ activity`
--
ALTER TABLE `class_ activity`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用資料表 AUTO_INCREMENT `class_all`
--
ALTER TABLE `class_all`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用資料表 AUTO_INCREMENT `class_field`
--
ALTER TABLE `class_field`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用資料表 AUTO_INCREMENT `class_vaule`
--
ALTER TABLE `class_vaule`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用資料表 AUTO_INCREMENT `filename`
--
ALTER TABLE `filename`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用資料表 AUTO_INCREMENT `laction`
--
ALTER TABLE `laction`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用資料表 AUTO_INCREMENT `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `class_ activity`
--
ALTER TABLE `class_ activity`
  ADD CONSTRAINT `class_ activity_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `class_all` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `class_field`
--
ALTER TABLE `class_field`
  ADD CONSTRAINT `class_field_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `class_all` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `class_vaule`
--
ALTER TABLE `class_vaule`
  ADD CONSTRAINT `class_vaule_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `class_ activity` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_vaule_ibfk_2` FOREIGN KEY (`f_id`) REFERENCES `class_field` (`f_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `filename`
--
ALTER TABLE `filename`
  ADD CONSTRAINT `filename_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `class_ activity` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `laction`
--
ALTER TABLE `laction`
  ADD CONSTRAINT `laction_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `class_ activity` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
