-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 18 2017 г., 07:38
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

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `birth_date`, `version`) VALUES
(1, 'Clarence', 'Ho', '1980-07-30', 0),
(2, 'Scott', 'Tiger', '1990-11-02', 0),
(3, 'John', 'Smith', '1964-02-28', 0);

--
-- Дамп данных таблицы `contact_hobby_detail`
--

INSERT INTO `contact_hobby_detail` (`contact_id`, `hobby_id`) VALUES
(1, 'Movies'),
(1, 'Swimming'),
(2, 'Swimming');

--
-- Дамп данных таблицы `contact_tel_detail`
--

INSERT INTO `contact_tel_detail` (`id`, `contact_id`, `tel_type`, `tel_number`, `version`) VALUES
(1, 1, 'Mobile', '1234567890', 0),
(2, 1, 'Home', '1234567890', 0),
(3, 2, 'Home', '1234567890', 0);

--
-- Дамп данных таблицы `hobby`
--

INSERT INTO `hobby` (`hobby_id`) VALUES
('Jogging'),
('Movies'),
('Programming'),
('Reading'),
('Swimming');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
