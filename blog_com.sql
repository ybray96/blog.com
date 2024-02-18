-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 18 2024 г., 19:45
-- Версия сервера: 5.7.39
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
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: active 1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: not delete 1: delete',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `title`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'php', 'php', 'php', 'php ', 'php php', 'php', 0, 0, '2024-02-05 22:41:28', '2024-02-17 22:41:28'),
(2, 'c#', 'c#', 'c#', 'c#', 'c#', 'c#', 0, 0, '2024-02-01 22:43:20', '2024-02-08 22:43:20');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0:user, 1:admin',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: not verify 1: verify',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '0: not delete 1: deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@mail.ru', '2024-02-16 15:52:15', '$2y$12$5qTQOpKBec9iIZok6o2NtukNfLWxEbkF41RihRl.kbZH3xPZbp0.q', 'MxLp4L3IQyZ5QBi9rVxSQWj6OtZ9YpdTAJba46TYHUOt9of1zcprkUXrcv7n', 1, 0, 0, '2024-02-15 18:02:40', '2024-02-16 15:52:15'),
(2, 'sample', 'sample@mail.ru', NULL, '$2y$12$IDeh92GF.neuamcTL//B7esKclNdimY0EOMhqZ9M39XTz4FhGxqBi', NULL, 0, 0, 0, '2024-02-15 18:07:27', '2024-02-15 18:07:27'),
(3, 'Sample', 'example@mil.ru', NULL, '$2y$12$2LaZHAuoBkKoUxkHbse9cOtver4VPj.qn0Lcq7HJMzx475V2mmOru', NULL, 0, 0, 0, '2024-02-15 18:15:58', '2024-02-15 18:15:58'),
(4, 'example', 'example@mail.ru', '2024-02-16 15:50:49', '$2y$12$UiXs3NxFDsdoi/z71Sff7.rnc1JqV50bNzh8djjVlFqm.eYNkdmeO', 'TWyetg3HG1A2k0rk9TfEaXg7ErcN4vr21PORLXPn', 0, 0, 0, '2024-02-15 18:26:44', '2024-02-16 15:50:49'),
(5, 'example1', 'example1@mil.ru', NULL, '$2y$12$1GmuWENej7yFzA/ZzTgowex3FrOsE989wccRErUQAGtsLeb98b/hW', NULL, 0, 0, 0, '2024-02-15 18:38:03', '2024-02-15 18:38:03'),
(6, 'admin', 'admin@mail.kz', NULL, '$2y$12$gzAG2IY.Mrv1I8JwJC6/s.xuGRHgpZQfL.0hUQMF0DHMPUgmOhDl2', 'Gd7H7PhpcEjfmaiJ5UA5rD91MjdbQWRxjUJSVT08', 0, 0, 0, '2024-02-16 15:45:59', '2024-02-16 15:45:59'),
(7, 'das', 'das@m.ru', '2024-02-16 15:50:12', '$2y$12$MUUqEOZ4RV4PorDs70jQlu7qHD5YRbx3OG3lVc7xBKKAY.3o64SLW', 'Fx0dIjVh0rvt3w2jDE1Rsr9XhoFJW28S3QovYRh9', 0, 0, 0, '2024-02-16 15:50:00', '2024-02-16 15:50:12'),
(8, 'fffff', 'ffffffff@fff.fff', NULL, '$2y$12$S4MJHweopt48Rz/kbsMxLeBk48NzuiZj5N3J0raY0WrpCcBpnqC0m', NULL, 0, 1, 0, '2024-02-18 11:48:30', '2024-02-18 11:48:30'),
(9, 'dddd', 'ddd@dddd.dddd', NULL, '$2y$12$oxKSHKIqdKKz9dNuqyDhDee9.KpLLQ9796nuAutQ9LmW2qiXcfBiO', NULL, 0, 1, 0, '2024-02-18 11:50:50', '2024-02-18 11:50:50'),
(10, 'ffffffffffffff', 'fffffffff@ffffff.fffff', NULL, '$2y$12$vXP1LBA8TOQ.RVWhlMr7PuwV3pHLjopvCaZRf3ZEL/5Ze4qGUyZbW', NULL, 0, 1, 1, '2024-02-18 11:51:39', '2024-02-18 12:25:55');

--
-- Индексы сохранённых таблиц
--

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
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
