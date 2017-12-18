-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 18 2017 г., 07:34
-- Версия сервера: 10.1.26-MariaDB
-- Версия PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hibernate_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `contact_hobby_detail`
--

CREATE TABLE `contact_hobby_detail` (
  `contact_id` int(11) NOT NULL,
  `hobby_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `contact_tel_detail`
--

CREATE TABLE `contact_tel_detail` (
  `id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `tel_type` varchar(20) NOT NULL,
  `tel_number` varchar(20) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `hobby`
--

CREATE TABLE `hobby` (
  `hobby_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_contact_1` (`first_name`,`last_name`);

--
-- Индексы таблицы `contact_hobby_detail`
--
ALTER TABLE `contact_hobby_detail`
  ADD PRIMARY KEY (`contact_id`,`hobby_id`),
  ADD KEY `fk_contact_hobby_detail_2` (`hobby_id`);

--
-- Индексы таблицы `contact_tel_detail`
--
ALTER TABLE `contact_tel_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_contact_tel_detail_1` (`contact_id`,`tel_type`);

--
-- Индексы таблицы `hobby`
--
ALTER TABLE `hobby`
  ADD PRIMARY KEY (`hobby_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `contact_tel_detail`
--
ALTER TABLE `contact_tel_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `contact_hobby_detail`
--
ALTER TABLE `contact_hobby_detail`
  ADD CONSTRAINT `fk_contact_hobby_detail_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_contact_hobby_detail_2` FOREIGN KEY (`hobby_id`) REFERENCES `hobby` (`hobby_id`);

--
-- Ограничения внешнего ключа таблицы `contact_tel_detail`
--
ALTER TABLE `contact_tel_detail`
  ADD CONSTRAINT `fk_contact_tel_detail_1` FOREIGN KEY (`contact_id`) REFERENCES `contact` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
