-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 02 2019 г., 11:40
-- Версия сервера: 5.6.41
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `calc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `country`
--

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `currency` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `program_base`
--

CREATE TABLE `program_base` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `sum` int(10) NOT NULL,
  `per_day` float NOT NULL,
  `days` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `program_multi`
--

CREATE TABLE `program_multi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `sum` int(10) NOT NULL,
  `per_day` float NOT NULL,
  `month` int(2) NOT NULL,
  `day_limit` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `purpose`
--

CREATE TABLE `purpose` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `radio_other`
--

CREATE TABLE `radio_other` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ratio` float NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ratio_sport`
--

CREATE TABLE `ratio_sport` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `child_to_16` float NOT NULL,
  `proff_sport` float NOT NULL,
  `athletes_disabled` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `program_base`
--
ALTER TABLE `program_base`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `program_multi`
--
ALTER TABLE `program_multi`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `purpose`
--
ALTER TABLE `purpose`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `radio_other`
--
ALTER TABLE `radio_other`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ratio_sport`
--
ALTER TABLE `ratio_sport`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `program_base`
--
ALTER TABLE `program_base`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `program_multi`
--
ALTER TABLE `program_multi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `purpose`
--
ALTER TABLE `purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `radio_other`
--
ALTER TABLE `radio_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ratio_sport`
--
ALTER TABLE `ratio_sport`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
