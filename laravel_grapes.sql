-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 24 2021 г., 14:33
-- Версия сервера: 10.4.13-MariaDB
-- Версия PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `laravel.grapes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `g3kgofff4gr_categories`
--

CREATE TABLE `g3kgofff4gr_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `g3kgofff4gr_categories`
--

INSERT INTO `g3kgofff4gr_categories` (`id`, `title`, `desc`, `img`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Phones', 'teeeeeeetxteeeeeeetx', 'categories.jpg', 'phones', NULL, NULL),
(2, 'Cameras', 'teeeeeeetx teeeeeeetx teeeeeeetx', 'cart.jpg', 'cameras', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `g3kgofff4gr_failed_jobs`
--

CREATE TABLE `g3kgofff4gr_failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `g3kgofff4gr_migrations`
--

CREATE TABLE `g3kgofff4gr_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `g3kgofff4gr_migrations`
--

INSERT INTO `g3kgofff4gr_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_29_122900_create_products_table', 1),
(5, '2021_03_29_123009_add_new_price_to_products_table', 2),
(6, '2021_03_31_113231_create_product_images_table', 3),
(7, '2021_04_03_222304_create_categories_table', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `g3kgofff4gr_password_resets`
--

CREATE TABLE `g3kgofff4gr_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `g3kgofff4gr_products`
--

CREATE TABLE `g3kgofff4gr_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `new_price` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `g3kgofff4gr_products`
--

INSERT INTO `g3kgofff4gr_products` (`id`, `title`, `price`, `in_stock`, `description`, `created_at`, `updated_at`, `new_price`, `category_id`) VALUES
(1, 'Product 0', 607, 0, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, 200, 1),
(2, 'Product 1', 257, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 1),
(3, 'Product 2', 1450, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 2),
(4, 'Product 3', 584, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 2),
(5, 'Product 4', 1366, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 2),
(6, 'Product 5', 352, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 1),
(7, 'Product 6', 482, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 2),
(8, 'Product 7', 450, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 1),
(9, 'Product 8', 577, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 2),
(10, 'Product 9', 355, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 1),
(11, 'Product 10', 624, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellendus, iste?', NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `g3kgofff4gr_product_images`
--

CREATE TABLE `g3kgofff4gr_product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `g3kgofff4gr_product_images`
--

INSERT INTO `g3kgofff4gr_product_images` (`id`, `img`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 'details_1.jpg', 1, NULL, NULL),
(4, 'details_2.jpg', 1, NULL, NULL),
(5, 'details_3.jpg', 1, NULL, NULL),
(6, 'details_4.jpg', 1, NULL, NULL),
(7, 'no_image.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `g3kgofff4gr_users`
--

CREATE TABLE `g3kgofff4gr_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `g3kgofff4gr_categories`
--
ALTER TABLE `g3kgofff4gr_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `g3kgofff4gr_failed_jobs`
--
ALTER TABLE `g3kgofff4gr_failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g3kgofff4gr_failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `g3kgofff4gr_migrations`
--
ALTER TABLE `g3kgofff4gr_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `g3kgofff4gr_password_resets`
--
ALTER TABLE `g3kgofff4gr_password_resets`
  ADD KEY `g3kgofff4gr_password_resets_email_index` (`email`);

--
-- Индексы таблицы `g3kgofff4gr_products`
--
ALTER TABLE `g3kgofff4gr_products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `g3kgofff4gr_product_images`
--
ALTER TABLE `g3kgofff4gr_product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `g3kgofff4gr_product_images_product_id_foreign` (`product_id`);

--
-- Индексы таблицы `g3kgofff4gr_users`
--
ALTER TABLE `g3kgofff4gr_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g3kgofff4gr_users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `g3kgofff4gr_categories`
--
ALTER TABLE `g3kgofff4gr_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `g3kgofff4gr_failed_jobs`
--
ALTER TABLE `g3kgofff4gr_failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `g3kgofff4gr_migrations`
--
ALTER TABLE `g3kgofff4gr_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `g3kgofff4gr_products`
--
ALTER TABLE `g3kgofff4gr_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `g3kgofff4gr_product_images`
--
ALTER TABLE `g3kgofff4gr_product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `g3kgofff4gr_users`
--
ALTER TABLE `g3kgofff4gr_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `g3kgofff4gr_product_images`
--
ALTER TABLE `g3kgofff4gr_product_images`
  ADD CONSTRAINT `g3kgofff4gr_product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `g3kgofff4gr_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
