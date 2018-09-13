-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 13 2018 г., 17:33
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `holiday`
--

-- --------------------------------------------------------

--
-- Структура таблицы `route`
--

CREATE TABLE `route` (
  `id` int(50) NOT NULL,
  `tour_id` int(50) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `route`
--

INSERT INTO `route` (`id`, `tour_id`, `city`) VALUES
(1, 1, 'Минск'),
(2, 1, 'Несвиж'),
(3, 1, 'Минск'),
(4, 2, 'Минск'),
(5, 2, 'Несвиж'),
(6, 2, 'Брест'),
(7, 2, 'Минск'),
(8, 3, 'Минск'),
(9, 3, 'Нарочь'),
(10, 3, 'Минск'),
(11, 4, 'Минск'),
(12, 4, 'Мир'),
(13, 4, 'Несвиж'),
(14, 4, 'Минск'),
(15, 5, 'Минск'),
(16, 5, 'Лида'),
(17, 5, 'Минск'),
(18, 6, 'Минск'),
(19, 6, 'Мядель'),
(20, 6, 'Нарочь'),
(21, 6, 'Минск'),
(22, 7, 'Минск'),
(23, 7, 'Мир'),
(24, 7, 'Несвиж'),
(25, 7, 'Минск'),
(26, 8, 'Минск'),
(27, 9, 'Минск'),
(28, 9, 'Гервяты'),
(29, 9, 'Минск'),
(30, 10, 'Минск'),
(31, 10, 'Дудутки'),
(32, 10, 'Минск Минск'),
(33, 10, 'Птичь'),
(34, 10, 'Минск'),
(35, 11, 'Минск'),
(36, 12, 'Минск'),
(37, 12, 'Минск'),
(38, 13, 'Минск'),
(39, 13, 'Несвиж'),
(40, 13, 'Минск'),
(41, 14, 'Минск'),
(42, 14, 'Слоним'),
(43, 14, 'Жировичи'),
(44, 14, 'Сынковичи'),
(45, 14, 'Минск'),
(46, 15, 'Минск'),
(47, 15, 'Лида'),
(48, 15, 'Березовка'),
(49, 15, 'Новогрудок'),
(50, 15, 'Минск'),
(51, 16, 'Минск'),
(52, 16, 'Мир'),
(53, 16, 'Минск'),
(54, 17, 'Минск'),
(55, 17, 'Лида'),
(56, 17, 'Минск'),
(57, 18, 'Минск'),
(58, 18, 'Мокрадь'),
(59, 18, 'Минск'),
(60, 19, 'Минск'),
(61, 19, 'Мир'),
(62, 19, 'Минск'),
(63, 20, 'Минск'),
(64, 21, 'Минск'),
(65, 21, 'Полоцк'),
(66, 21, 'Минск'),
(67, 22, 'Минск'),
(68, 22, 'Мир'),
(69, 22, 'Минск'),
(70, 23, 'Минск'),
(71, 23, 'Ивенец'),
(72, 23, 'Раков'),
(73, 23, 'Минск'),
(74, 24, 'Минск'),
(75, 24, 'Мир'),
(76, 24, 'Новогрудок'),
(77, 24, 'Минск'),
(78, 25, 'Минск'),
(79, 26, 'Минск'),
(80, 26, 'Гродно'),
(81, 26, 'Коробчицы'),
(82, 26, 'Минск'),
(83, 27, 'Минск'),
(84, 27, 'Мир'),
(85, 27, 'Несвиж'),
(86, 27, 'Минск');

-- --------------------------------------------------------

--
-- Структура таблицы `tour`
--

CREATE TABLE `tour` (
  `id` int(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(50) NOT NULL,
  `source_url` varchar(256) NOT NULL,
  `route_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tour`
--

INSERT INTO `tour` (`id`, `name`, `price`, `source_url`, `route_id`) VALUES
(1, 'Экскурсия по Беларуси на 1 день: «Владения рода Радзивиллов» (Мир + Несвиж)', 80, 'https://holiday.by/countries/Belarus/tours/403746-jekskursija-po-belarusi-na-1-den-vladenija-roda-radzivillov-mir-nesvizh', 0),
(2, 'Белорусские каникулы (для детских групп)', 667, 'https://holiday.by/countries/Belarus/tours/300814-belorusskie-kanikuly-dlja-detskih-grupp', 0),
(3, 'Отдых на Нарочи (Нарочанка - Наносы), питание полный пансион!', 82, 'https://holiday.by/countries/Belarus/tours/316499-otdyh-na-narochi-narochanka-nanosy-pitanie-polnyj-pansion', 0),
(4, 'Супер-тур выходного дня по Беларуси (только для организованных групп)', 92, 'https://holiday.by/countries/Belarus/tours/239600-super-tur-vyhodnogo-dnja-po-belarusi', 0),
(5, 'Автобусный тур на «Lidbeer 2018»', 20, 'https://holiday.by/countries/Belarus/tours/447280-avtobusnyj-tur-na-lidbeer-2018', 0),
(6, 'В краю Нарочанском ( Молодечно- Мядель) для организованных групп', 27, 'https://holiday.by/countries/Belarus/tours/71498-v-kraju-narochanskom-molodechno--mjadel', 0),
(7, 'Мир и Несвиж. Две резиденции Радзивиллов – прошлое и настоящее. Для заказных групп', 46, 'https://holiday.by/countries/Belarus/tours/225985-mir-i-nesvizh-dve-rezidencii-radzivillov-proshloe-i-nastojashhee', 0),
(8, '25 августа  - Стра­ни­цы ка­мен­ной ле­то­пи­си: Сло­ним—Ру­жа­ны—Ме­ре­чев­щи­на—Кос­со­во (Та­де­уш Ко­стюш­ко)', 45, 'https://holiday.by/countries/Belarus/tours/256976-9-ijulja-v-8-00-stra-ni-cy-ka-men-noj-le-to-pi-si-slo-nim-ru-zha-ny-me-re-chev-shhi-na-kos-so-vo-ta-de-ush-ko-stjush-ko', 0),
(9, 'В 9.00 каждый четверг - Белорусская мозаика (с обедом и анимацией)', 60, 'https://holiday.by/countries/Belarus/tours/419339-v-9-00-kazhdyj-chetverg-belorusskaja-mozaika-s-obedom-i-animaciej', 0),
(10, 'Музейно-этнографичеcкий комплекс Дудутки', 36, 'https://holiday.by/countries/Belarus/tours/443052-muzejno-jetnograficheckij-kompleks-dudutki', 0),
(11, 'Мирский и Несвижский замки с 50% скидкой', 44, 'https://holiday.by/countries/Belarus/tours/456040-mirskij-i-nesvizhskij-zamki-s-50-skidkoj', 0),
(12, 'Хатынь – Курган Славы', 28, 'https://holiday.by/countries/Belarus/tours/411004-hatyn-kurgan-slavy', 0),
(13, 'Мирский и Несвижский замки', 74, 'https://holiday.by/countries/Belarus/tours/444101-mirskij-i-nesvizhskij-zamki', 0),
(14, 'Архитектурное наследие Слонимщины ( Слоним- Жировичи- Сынкович) для школьных, паломнических и организованных групп', 28, 'https://holiday.by/countries/Belarus/tours/71571-arhitekturnoe-nasledie-slonimshhiny-slonim--zhirovichi--synkovich', 0),
(15, 'Экскурсия Лида- стеклозавод ( для организованных групп)', 24, 'https://holiday.by/countries/Belarus/tours/71589-lida--steklozavod', 0),
(16, 'Памятники Мира и Несвижа', 78, 'https://holiday.by/countries/Belarus/tours/411006-pamjatniki-mira-i-nesvizha', 0),
(17, 'Посвящение в рыцари в Лидском замке. Для заказных групп', 43, 'https://holiday.by/countries/Belarus/tours/213195-posvjashhenie-v-rycari-v-lidskom-zamke', 0),
(18, 'Хатынь и курган Славы для сборных групп', 29, 'https://holiday.by/countries/Belarus/tours/76675-hatyn-i-kurgan-slavy', 0),
(19, 'Несвиж-Мир, 2 дня', 169, 'https://holiday.by/countries/Belarus/tours/413821-nesvizh-mir', 0),
(20, '8 сентября - Архитектурные памятники Слонимщины (Слоним-Жировичи-Сынковичи)', 45, 'https://holiday.by/countries/Belarus/tours/254960-1-ja-subbota-mesjaca-v-8-00-arhitekturnye-pamjatniki-slonimshhiny-slonim-zhirovichi-synkovichi', 0),
(21, 'Город Полоцк для организованных групп', 24, 'https://holiday.by/countries/Belarus/tours/71477-gorod', 0),
(22, 'Минск - Замки, 4 дня', 633, 'https://holiday.by/countries/Belarus/tours/444965-minsk-zamki', 0),
(23, 'Экскурсия для заказных школьных групп: Белорусские местечки, цветы, лошадки и разговоры у печки. Для заказных групп', 24, 'https://holiday.by/countries/Belarus/tours/165391-jekskursija-dlja-zakaznyh-shkolnyh-grupp-belorusskie-mestechki-cvety-loshadki-i-razgovory-u-pechki', 0),
(24, 'Архитектурные памятники Мира и Новогрудка для школьных и организованных групп', 25, 'https://holiday.by/countries/Belarus/tours/71569-arhitekturnye-pamjatniki-mira-i-novogrudka', 0),
(25, 'в 10.00 каждый вторник- Об­зор­ная экскурсия по Мин­ску (3,5 часа)', 29, 'https://holiday.by/countries/Belarus/tours/254860-kazhdyj-vtornik-v-10-00-ob-zor-naja-jekskursija-po-min-sku-3-5-chasa', 0),
(26, 'Гродно-Коробчицы, 2 дня', 170, 'https://holiday.by/countries/Belarus/tours/440970-grodno-korobchicy-2-dnja', 0),
(27, 'Памятники Мира и Несвижа', 80, 'https://holiday.by/countries/Belarus/tours/443318-pamjatniki-mira-i-nesvizha', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `route`
--
ALTER TABLE `route`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT для таблицы `tour`
--
ALTER TABLE `tour`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
