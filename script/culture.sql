-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-02-07 07:14:33
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
-- 資料表結構 `class_activity`
--

CREATE TABLE `class_activity` (
  `a_id` int(11) NOT NULL,
  `a_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `a_name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `c_id` int(11) NOT NULL,
  `a_cloumn` int(11) DEFAULT NULL,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `class_activity`
--

INSERT INTO `class_activity` (`a_id`, `a_type`, `a_name`, `c_id`, `a_cloumn`, `username`) VALUES
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
  `v_vaule` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `class_vaule`
--

INSERT INTO `class_vaule` (`v_vaule`, `l_id`) VALUES
('200人', 1);

-- --------------------------------------------------------

--
-- 替換檢視表以便查看 `details`
--
CREATE TABLE `details` (
`l_id` int(11)
,`l_type` varchar(20)
,`l_name` varchar(20)
,`l_xaxis` decimal(9,6)
,`l_yaxis` decimal(9,6)
,`a_id` int(11)
,`username` varchar(45)
,`v_vaule` varchar(200)
,`f_filename` varchar(20)
,`f_filetype` varchar(20)
);

-- --------------------------------------------------------

--
-- 資料表結構 `filename`
--

CREATE TABLE `filename` (
  `f_filename` varchar(20) CHARACTER SET utf8 NOT NULL,
  `f_filetype` varchar(20) CHARACTER SET utf8 NOT NULL,
  `l_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `filename`
--

INSERT INTO `filename` (`f_filename`, `f_filetype`, `l_id`) VALUES
('run', '.jpg', 1);

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
  `a_id` int(11) NOT NULL,
  `username` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 資料表的匯出資料 `laction`
--

INSERT INTO `laction` (`l_id`, `l_type`, `l_name`, `l_xaxis`, `l_yaxis`, `a_id`, `username`) VALUES
(1, '活動', '路跑', '23.574574', '119.580891', 6, 'awalker0215'),
(3, '活動', '收發室', '23.575864', '119.580784', 6, 'awalker0215'),
(4, '活動', '抗議校長只開給物流專任', '23.575440', '119.581155', 6, 'root'),
(5, '活動', '中興國小運動會', '23.574710', '119.574374', 6, 'awalker0215'),
(7, '活動', '文光國中運動會', '23.573196', '119.569460', 6, 'awalker0215');

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
('M', 44, 1, 'root'),
('F', 54, 2, 'root'),
('F', 542, 3, 'alex'),
('M', 45, 4, 'maokao'),
('F', 45, 5, 'amelia'),
('M', 21, 6, 'awalker0215'),
('M', 21, 7, 'awalker0215'),
('M', 20, 8, 'willseed'),
('M', 20, 9, 'admin'),
('M', 20, 10, 'admin'),
('M', 20, 11, 'admin2'),
('M', 99, 12, 'admin3');

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
('admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.admin', 1),
('admin2', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.admin', 1),
('admin3', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.admin', 1),
('alex', 'e10adc3949ba59abbe56e057f20f883e', 'alex@test.org.tw', 1),
('amelia', 'e10adc3949ba59abbe56e057f20f883e', 'adf@123.123.123', 1),
('awalker0215', '63a9f0ea7bb98050796b649e85481845', 'test@test.test', 1),
('maokao', 'e10adc3949ba59abbe56e057f20f883e', 'asdfs@123.123.213', 1),
('ranma', 'e10adc3949ba59abbe56e057f20f883e', 'maokao25@gmail.com', 1),
('root', 'e10adc3949ba59abbe56e057f20f883e', 'mkyong@test.org.tw', 1),
('willseed', '21232f297a57a5a743894a0e4a801fc3', 'littlehorse@sub2.sub2', 1);

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
(6, 'awalker0215', 'ROLE_ADMIN'),
(4, 'maokao', 'ROLE_ADMIN'),
(2, 'root', 'ROLE_ADMIN'),
(9, 'admin', 'ROLE_USER'),
(11, 'admin2', 'ROLE_USER'),
(12, 'admin3', 'ROLE_USER'),
(3, 'alex', 'ROLE_USER'),
(1, 'root', 'ROLE_USER'),
(8, 'willseed', 'ROLE_USER');

-- --------------------------------------------------------

--
-- 檢視表結構 `details`
--
DROP TABLE IF EXISTS `details`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `details`  AS  select `l`.`l_id` AS `l_id`,`l`.`l_type` AS `l_type`,`l`.`l_name` AS `l_name`,`l`.`l_xaxis` AS `l_xaxis`,`l`.`l_yaxis` AS `l_yaxis`,`l`.`a_id` AS `a_id`,`l`.`username` AS `username`,`v`.`v_vaule` AS `v_vaule`,`f`.`f_filename` AS `f_filename`,`f`.`f_filetype` AS `f_filetype` from ((`laction` `l` left join `filename` `f` on((`l`.`l_id` = `f`.`l_id`))) left join `class_vaule` `v` on((`l`.`l_id` = `v`.`v_vaule`))) ;

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `class_activity`
--
ALTER TABLE `class_activity`
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
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `l_id` (`l_id`);

--
-- 資料表索引 `filename`
--
ALTER TABLE `filename`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `l_id` (`l_id`);

--
-- 資料表索引 `laction`
--
ALTER TABLE `laction`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `l_id` (`l_id`),
  ADD KEY `a_id` (`a_id`),
  ADD KEY `username` (`username`);

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
-- 使用資料表 AUTO_INCREMENT `class_activity`
--
ALTER TABLE `class_activity`
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
-- 使用資料表 AUTO_INCREMENT `laction`
--
ALTER TABLE `laction`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用資料表 AUTO_INCREMENT `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `class_activity`
--
ALTER TABLE `class_activity`
  ADD CONSTRAINT `class_activity_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `class_all` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `class_field`
--
ALTER TABLE `class_field`
  ADD CONSTRAINT `class_field_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `class_all` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `class_vaule`
--
ALTER TABLE `class_vaule`
  ADD CONSTRAINT `class_vaule_ibfk_1` FOREIGN KEY (`l_id`) REFERENCES `laction` (`l_id`);

--
-- 資料表的 Constraints `filename`
--
ALTER TABLE `filename`
  ADD CONSTRAINT `filename_ibfk_1` FOREIGN KEY (`l_id`) REFERENCES `laction` (`l_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `laction`
--
ALTER TABLE `laction`
  ADD CONSTRAINT `laction_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `class_activity` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laction_ibfk_2` FOREIGN KEY (`username`) REFERENCES `profile` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
