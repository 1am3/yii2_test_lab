-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 25 2018 г., 13:25
-- Версия сервера: 5.7.21-0ubuntu0.16.04.1
-- Версия PHP: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii`
--

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` text,
  `status` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `subject`, `text`, `status`, `user_id`, `receiver`) VALUES
(3, 'test', 'test123', 0, 100, 100),
(4, 'test', 'test123', 0, 100, 101),
(5, 'test', 'test123', 0, 100, 101),
(6, 'test', 'test123', 0, 100, 101),
(7, 'test', 'test123', 0, 100, 101),
(8, 'test', 'test123', 0, 100, 101),
(9, 'test', 'test123', 0, 100, 101),
(10, 'test', 'test123', 0, 100, 101),
(11, 'test', 'test123', 0, 100, 101),
(12, 'test', 'test123', 0, 100, 101),
(13, 'test', 'test123', 0, 100, 101),
(14, 'test', 'test123', 0, 100, 101),
(15, 'test', 'test123', 0, 100, 101),
(16, 'test', 'test123', 0, 100, 101),
(17, 'test', 'test123', 0, 100, 101),
(18, 'test', 'test123', 0, 100, 101),
(19, 'test', 'test123', 0, 100, 101),
(20, 'test', 'test123', 0, 100, 101),
(21, 'test', 'test123', 0, 100, 101),
(22, 'test', 'test123', 0, 100, 101),
(23, 'test', 'test123', 0, 100, 101),
(24, 'test', 'test123', 0, 100, 101),
(25, 'test', 'test123', 0, 100, 101),
(26, 'test', 'test123', 0, 100, 101),
(27, 'test', 'test123', 0, 100, 101),
(28, 'test', 'test123', 0, 100, 101),
(29, 'test', 'test123', 0, 100, 101),
(30, 'test', 'test123', 0, 100, 101),
(31, 'test', 'test123', 0, 100, 101),
(32, 'test', 'test123', 0, 100, 101),
(33, 'test', 'test123', 0, 100, 101),
(34, 'test', 'test123', 0, 100, 101),
(35, 'test', 'test123', 0, 100, 101),
(36, 'test', 'test123', 0, 100, 101),
(37, 'test', 'test123', 0, 100, 101),
(38, 'test', 'test123', 0, 100, 101),
(39, 'test', 'test123', 0, 100, 101),
(40, 'test', 'test123', 0, 100, 101),
(41, 'test', 'test123', 0, 100, 101),
(42, 'test', 'test123', 0, 100, 101),
(43, 'test', 'test123', 0, 100, 101),
(44, 'test', 'test123', 0, 100, 101),
(45, 'test', 'test123', 0, 100, 101),
(46, 'test', 'test123', 0, 100, 101),
(47, 'test', 'test123', 0, 100, 101),
(48, 'test', 'test123', 0, 100, 101),
(49, 'test', 'test123', 0, 100, 101),
(50, 'test', 'test123', 0, 100, 101),
(51, 'test', 'test123', 0, 100, 101),
(52, 'test', 'test123', 0, 100, 101),
(53, 'test', 'test123', 0, 100, 101),
(54, 'test', 'test123', 0, 100, 101),
(55, 'test', 'test123', 0, 100, 101),
(56, 'test', 'test123', 0, 100, 101),
(57, 'test', 'test123', 0, 100, 101),
(58, 'test', 'test123', 0, 100, 101),
(59, 'test', 'test123', 0, 100, 101),
(60, 'test', 'test123', 0, 100, 101),
(61, 'test', 'test123', 0, 100, 101),
(62, 'test', 'test123', 0, 100, 101),
(63, 'test', 'test123', 0, 100, 101),
(64, 'test', 'test123', 0, 100, 101),
(65, 'test', 'test123', 0, 100, 101),
(66, 'test', 'test123', 0, 100, 101),
(67, 'test', 'test123', 0, 100, 101),
(68, 'test', 'test123', 0, 100, 101),
(69, 'test', 'test123', 0, 100, 101),
(70, 'test', 'test123', 0, 100, 101),
(71, 'test', 'test123', 0, 100, 101),
(72, 'test', 'test123', 0, 100, 101),
(73, 'test', 'test123', 0, 100, 101),
(74, 'test', 'test123', 0, 100, 101),
(75, 'test', 'test123', 0, 100, 101),
(76, 'test', 'test123', 0, 100, 101),
(77, 'test', 'test123', 0, 100, 101),
(78, 'test', 'test123', 0, 100, 101),
(79, 'test', 'test123', 0, 100, 101),
(80, 'test', 'test123', 0, 100, 101),
(81, 'test', 'test123', 0, 100, 101),
(82, 'test', 'test123', 0, 100, 101),
(83, 'test', 'test123', 0, 100, 101),
(84, 'test', 'test123', 0, 100, 101),
(85, 'test', 'test123', 0, 100, 101),
(86, 'test', 'test123', 0, 100, 101),
(87, 'test', 'test123', 0, 100, 101),
(88, 'test', 'test123', 0, 100, 101),
(89, 'test', 'test123', 0, 100, 101),
(90, 'test', 'test123', 0, 100, 101),
(91, 'test', 'test123', 0, 100, 101),
(92, 'test', 'test123', 0, 100, 101),
(93, 'test', 'test123', 0, 100, 101),
(94, 'test', 'test123', 0, 100, 101),
(95, 'test', 'test123', 0, 100, 101),
(96, 'test', 'test123', 0, 100, 101),
(97, 'test', 'test123', 0, 100, 101),
(98, 'test', 'test123', 0, 100, 101),
(99, 'test', 'test123', 0, 100, 101),
(100, 'test', 'test123', 0, 100, 101),
(101, 'test', 'test123', 0, 100, 101),
(102, 'test', 'test123', 0, 100, 101),
(103, 'test', 'test123', 0, 100, 101),
(104, 'test', 'test123', 0, 100, 101),
(105, 'test', 'test123', 0, 100, 101),
(106, 'test', 'test123', 0, 100, 101),
(107, 'test', 'test123', 0, 100, 101),
(108, 'test', 'test123', 0, 100, 101),
(109, 'test', 'test123', 0, 100, 101),
(110, 'test', 'test123', 0, 100, 101),
(111, 'test', 'test123', 0, 100, 101),
(112, 'test', 'test123', 0, 100, 101),
(113, 'test', 'test123', 0, 100, 101),
(114, 'test', 'test123', 0, 100, 101),
(115, 'test', 'test123', 0, 100, 101),
(116, 'test', 'test123', 0, 100, 101),
(117, 'test', 'test123', 0, 100, 101),
(118, 'test', 'test123', 0, 100, 101),
(119, 'test', 'test123', 0, 100, 101),
(120, 'test', 'test123', 0, 100, 101),
(121, 'test', 'test123', 0, 100, 101),
(122, 'test', 'test123', 0, 100, 101),
(123, 'test', 'test123', 0, 100, 101),
(124, 'test', 'test123', 0, 100, 101),
(125, 'test', 'test123', 0, 100, 101),
(126, 'test', 'test123', 0, 100, 101),
(127, 'test', 'test123', 0, 100, 101),
(128, 'test', 'test123', 0, 100, 101),
(129, 'test', 'test123', 0, 100, 101),
(130, 'test', 'test123', 0, 100, 101),
(131, 'test', 'test123', 0, 100, 101),
(132, 'test', 'test123', 0, 100, 101),
(133, 'test', 'test123', 0, 100, 101),
(134, 'test', 'test123', 0, 100, 101),
(135, 'test', 'test123', 0, 100, 101),
(136, 'test', 'test123', 0, 100, 101),
(137, 'test', 'test123', 0, 100, 101),
(138, 'test', 'test123', 0, 100, 101),
(139, 'test', 'test123', 0, 100, 101),
(140, 'test', 'test123', 0, 100, 101),
(141, 'test', 'test123', 0, 100, 101),
(142, 'test', 'test123', 0, 100, 101),
(143, 'test', 'test123', 0, 100, 101),
(144, 'test', 'test123', 0, 100, 101),
(145, 'test', 'test123', 0, 100, 101),
(146, 'test', 'test123', 0, 100, 101),
(147, 'test', 'test123', 0, 100, 101),
(148, 'test', 'test123', 0, 100, 101),
(149, 'test', 'test123', 0, 100, 101),
(150, 'test', 'test123', 0, 100, 101),
(151, 'test', 'test123', 0, 100, 101),
(152, 'test', 'test123', 0, 100, 101),
(153, 'test', 'test123', 0, 100, 101),
(154, 'test', 'test123', 0, 100, 101),
(155, 'test', 'test123', 0, 100, 101),
(156, 'test', 'test123', 0, 100, 101),
(157, 'test', 'test123', 0, 100, 101),
(158, 'test', 'test123', 0, 100, 101),
(159, 'test', 'test123', 0, 100, 101),
(160, 'test', 'test123', 0, 100, 101),
(161, 'test', 'test123', 0, 100, 101),
(162, 'test', 'test123', 0, 100, 101),
(163, 'test', 'test123', 0, 100, 101),
(164, 'test', 'test123', 0, 100, 101),
(165, 'test', 'test123', 0, 100, 101),
(166, 'test', 'test123', 0, 100, 101),
(167, 'test', 'test123', 0, 100, 101),
(168, 'test', 'test123', 0, 100, 101),
(169, 'test', 'test123', 0, 100, 101),
(170, 'test', 'test123', 0, 100, 101),
(171, 'test', 'test123', 0, 100, 101),
(172, 'test', 'test123', 0, 100, 101),
(173, 'test', 'test123', 0, 100, 101),
(174, 'test', 'test123', 0, 100, 101),
(175, 'test', 'test123', 0, 100, 101),
(176, 'test', 'test123', 0, 100, 101),
(177, 'test', 'test123', 0, 100, 101),
(178, 'test', 'test123', 0, 100, 101),
(179, 'test', 'test123', 0, 100, 101),
(180, 'test', 'test123', 0, 100, 101),
(181, 'test', 'test123', 0, 100, 101),
(182, 'test', 'test123', 0, 100, 101),
(183, 'test', 'test123', 0, 100, 101),
(184, 'test', 'test123', 0, 100, 101),
(185, 'test', 'test123', 0, 100, 101),
(186, 'test', 'test123', 0, 100, 101),
(187, 'test', 'test123', 0, 100, 101),
(188, 'test', 'test123', 0, 100, 101),
(189, 'test', 'test123', 0, 100, 101),
(190, 'test', 'test123', 0, 100, 101),
(191, 'test', 'test123', 0, 100, 101),
(192, 'test', 'test123', 0, 100, 101),
(193, 'test', 'test123', 0, 100, 101),
(194, 'test', 'test123', 0, 100, 101),
(195, 'test', 'test123', 0, 100, 101),
(196, 'test', 'test123', 0, 100, 101),
(197, 'test', 'test123', 0, 100, 101),
(198, 'test', 'test123', 0, 100, 101),
(199, 'test', 'test123', 0, 100, 101),
(200, 'test', 'test123', 0, 100, 101),
(201, 'test', 'test123', 0, 100, 101),
(202, 'test', 'test123', 0, 100, 101),
(203, 'test', 'test123', 0, 100, 101),
(204, 'test', 'test123', 0, 100, 101),
(205, 'test', 'test123', 0, 100, 101),
(206, 'test', 'test123', 0, 100, 101),
(207, 'test', 'test123', 0, 100, 101),
(208, 'test', 'test123', 0, 100, 101),
(211, 'test', 'test123', 0, 100, 101),
(212, 'test', 'test123', 0, 100, 101),
(214, 'test', 'test123', 0, 100, 101),
(216, 'test', 'test123', 0, 100, 101),
(218, 'test', 'test123', 0, 100, 101),
(225, 'test', 'test123', 1, 100, 101),
(231, 'test', 'test123', 0, 100, 101),
(244, 'test', 'test123', 1, 100, 101),
(271, 'test', 'test123', 0, 100, 101),
(281, 'teasdasdasdasda', 'd12edsadcasdasda', 0, NULL, 104),
(282, 'dsadas', '423423423cdasdasda', 1, 101, 100);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1527075580),
('m180523_113027_create_message_table', 1527075582),
('m180524_133335_create_sent_table', 1527168929);

-- --------------------------------------------------------

--
-- Структура таблицы `sent`
--

CREATE TABLE `sent` (
  `id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `sent`
--
ALTER TABLE `sent`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT для таблицы `sent`
--
ALTER TABLE `sent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
