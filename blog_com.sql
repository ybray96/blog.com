-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 27 2024 г., 13:39
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog.com`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `image_file` varchar(255) DEFAULT NULL,
  `description` longtext,
  `meta_description` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `is_publish` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_delete` tinyint NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `user_id`, `title`, `slug`, `category_id`, `image_file`, `description`, `meta_description`, `meta_keywords`, `is_publish`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 'testtt', '11111111', 2, '11111111.py', '<p>testtt</p>', 'testtt', 'testtt', 0, 0, 1, '2024-02-27 09:40:20', '2024-02-27 10:37:32'),
(2, 1, 'ttttttttt', 'rrrrrrrrrrrr', 4, 'rrrrrrrrrrrr.jpg', '<p>tttttttt</p>', 'tttttttt', 'ttttttttttt', 0, 1, 0, '2024-02-27 10:37:11', '2024-02-27 10:37:27'),
(3, 1, 'yyyyyyy', 'yyyyyyy', 1, 'yyyyyyy.jpg', '<p>yyyyyyyy</p>', 'yyyyyyyy', 'yyyyyyyy', 1, 1, 0, '2024-02-27 10:38:08', '2024-02-27 10:38:08');

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '1: active 0:inactive',
  `is_delete` tinyint NOT NULL DEFAULT '0' COMMENT '0: not delete 1: delete',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `title`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'php test', 'php-test', 'php test', 'php test', '', 'php test', 1, 0, '2024-02-20 07:02:45', '2024-02-20 07:02:45'),
(2, 'C++', 'c', 'C++', 'C++', '', '', 1, 0, '2024-02-20 07:07:35', '2024-02-20 07:07:35'),
(3, 'emaxple1', 'emaxple1', 'emaxple', 'emaxple', '', '', 0, 1, '2024-02-20 07:19:11', '2024-02-20 07:24:48'),
(4, 'C', 'c', 'cc', 'c', '', 'c', 1, 0, '2024-02-27 05:03:52', '2024-02-27 05:04:01');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint DEFAULT '0' COMMENT '0: user 1:admin',
  `is_delete` tinyint NOT NULL DEFAULT '0' COMMENT '0: not delete 1: deleted',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0: not verify 1: verify',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `is_delete`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.ru', '2024-02-16 08:06:59', 1, 0, 0, '$2y$12$3Z/0gOmVWwEfLQhb4vCwaOwoGUzMq2RDNy4A38yIk/b.I5MpXY0rK', 't2zPFeX0jOqkSlTjnbBK3acpucl3W3MFV2s1JF99Q7AzIuvN1Cp7rTtgvOrB', '2024-02-16 05:30:17', '2024-02-20 02:52:01'),
(2, 'emaxple', 'example@mail.ru', NULL, 0, 0, 0, '$2y$12$z8O6fM0qPhT18kxMH1KbLumirH2I8/Rq20EeAQ6DRLSrwrg47jOTq', 'V8Rl7GWqWNbg4e1pVdOTDslnRmzjgh31apuGYwAc', '2024-02-16 05:32:20', '2024-02-16 08:11:51'),
(3, 'emaxple1', 'example1@mail.ru', NULL, 0, 0, 0, '$2y$12$Tj5NyOZ1L9CTntob6A/FaO89pYibNFY1JnChS2sQIh44LiE3hYtQy', 'koBBw2388yDYx6IOqZBh9L6jNiUFlIxyZZ26lqQq', '2024-02-16 05:32:46', '2024-02-16 08:08:46'),
(4, 'dastan', 'dastan@mi.ln', NULL, 0, 0, 0, '$2y$12$JMj6H9PIBSFgdlsH6Rg5..xuzHSp3YEz/Ac6PL5LiBhB.82jYQEqe', 'kyejRaBET7uUONQRUFcHlsV6ItRNJWxxJQBUGVZN', '2024-02-16 06:04:17', '2024-02-16 06:04:17'),
(5, 'dastan1', 'dastan1@mi.ln', NULL, 0, 0, 0, '$2y$12$HoCetjqlZxzcdw5SWjDCjeqOap0rqfcH6ADIjU57/tIUYHEuhXzuG', 'UmxXczdDiRpMNHyzAiLli9HAlKrOKRSNRwPf3Flt', '2024-02-16 06:06:27', '2024-02-16 06:06:27'),
(6, 'ascacsa', 'das@dfs.ru', NULL, 0, 0, 0, '$2y$12$BW/BACddwq7YBMSFuKI1xuJ/UNQQ9u0GBqvwrbv.2ou.Zh4FElfFC', 'BFow37yL8ZJOcO59TRrhhhmyjbYqYfCc3H5pF7Nm', '2024-02-16 06:10:20', '2024-02-16 08:19:50'),
(7, 'dsa', 'aaaaaa@nnm.ru', '2024-02-16 06:28:42', 0, 0, 0, '$2y$12$lcHQhbKUfjCB8O3x.BuIaOIjW9te.kO71/GHuyFq5Uv98H4KVNb/e', 'LMHlIXqaNzeblW1n0IHDTLWonOEQ7HZEYqKyPki3', '2024-02-16 06:11:38', '2024-02-16 06:28:42'),
(8, 'testtt', 'test@mail.ru', '2024-02-16 06:25:06', 0, 0, 0, '$2y$12$2ArQEAxaDq6/cZCmdHflcOTAmYv3Zj8B6c8vTgUCqYHf2MJp5keAe', 'sBcgoxF5z4KIVX6tFnP83Caj3mlW8L1P076Dl2e9', '2024-02-16 06:17:54', '2024-02-16 06:25:06'),
(9, 'test', 'test@gmail.com', '2024-02-16 06:29:40', 0, 0, 0, '$2y$12$caxmhCgwhrcW7DQMY9vC2OUN3sgL9ROoRpuSNnVe5j5R7IqWU4qq.', '6LhirHMTWQAdkK1T7g6FSnSyyS0NU8M50ZQI4tCJ', '2024-02-16 06:29:24', '2024-02-16 06:29:40'),
(10, 'test2', 'test2@mail.ru', '2024-02-16 07:10:49', 0, 0, 0, '$2y$12$KiEPDK3foskwOzALrrd1FOxefK/0Yb5xfiX853kfL/xZs0rqmVoBK', 'ARUGKZukVhtdg21Cy31YLkPyaQnvoGYfLgN2QBmN', '2024-02-16 07:09:54', '2024-02-16 07:10:49'),
(11, 'das', 'das@das.ru', NULL, 0, 0, 0, '$2y$12$.BKIQNlPIQt.BV5iVwYGyuVFlpf.QmYoPmZKklgb5LVzqi28YHgxS', 'CqQMrZRTjWnWJAy2CjqTYeP2zwUDBaaYItLgit5m', '2024-02-16 08:21:23', '2024-02-16 08:21:56'),
(12, 'das1', 'das1@d.ru', '2024-02-16 08:23:38', 0, 0, 0, '$2y$12$oEQLEZO1VqThYk8se5uL.uoD4M5uU6iH6DT76VIswQkHgffNmPUmC', 'snodKOvEyhDw85t8fkAJCwVkTpPm3P1MlY4ROTAN', '2024-02-16 08:23:28', '2024-02-16 08:23:38'),
(13, 'ffff', 'ffff@ffff.ru', '2024-02-16 08:28:07', 0, 0, 0, '$2y$12$fjjGPdAGDl3JywST9jBSWeDFhh4/1BTY.18idshKCWt.qE9vZhF7O', 'lEtvLKbg2LgkfEVahumV1TaGxgYhG3oBxVhuZzjE', '2024-02-16 08:27:41', '2024-02-16 08:28:07'),
(14, 'dastand', 'dastand@fgdfg.kj', NULL, 0, 0, 1, '$2y$12$GKjt9JZ2IJXkJeE7Yv7gU.B6M5keHnU1nd/HR8HuYfka8Y9Ho3M8S', NULL, '2024-02-20 02:54:57', '2024-02-20 02:54:57');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
