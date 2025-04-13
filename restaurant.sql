-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Ápr 13. 20:04
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `restaurant`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `chefs`
--

CREATE TABLE `chefs` (
  `chid` int(11) NOT NULL,
  `chname` varchar(35) NOT NULL,
  `e-mail` varchar(40) NOT NULL,
  `michelin-stars` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `chefs`
--

INSERT INTO `chefs` (`chid`, `chname`, `e-mail`, `michelin-stars`) VALUES
(1, 'Balázs', 'bazsavagyok69xd@gmail.com', 5),
(2, 'Dominik', 'nihenjeezdodo693369@gmail.com', 4),
(3, 'Bence', 'cibirolifortnite@gmail.com', 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `cname` varchar(48) NOT NULL,
  `e-mail` varchar(56) NOT NULL,
  `phonenummer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `customer`
--

INSERT INTO `customer` (`cid`, `cname`, `e-mail`, `phonenummer`) VALUES
(1, 'Aloe Vera', 'aloevera1@gmail.com', 2147483647),
(2, 'Bármi Áraon', 'barmiaron2@gmail.com', 2147483647),
(3, 'Bekre Pál', 'bekrepa3@gmail.com', 2147483647),
(4, 'Kleiszthenész', 'kleiszthenesz4@gmail.com', 2147483647),
(5, 'Cserép Virág', 'cserepvirag5@gmail.com', 2147483647),
(6, 'Füty Imre', 'fugyimre6@gmail.com', 2147483647),
(7, 'Har Mónika', 'harmonika7@gmail.com', 2147483647),
(8, 'Erdélyi Mónika', 'GRILLÁZSLover@gmail.com', 2147483647),
(9, 'Olcsó Áron', 'olcsoaron8@gmail.com', 2147483647),
(10, 'Pofá Zoltán', 'pofazoltan9@gmail.com', 2147483647),
(11, 'Rabsz Olga', 'rabszolga10@gmail.com', 2147483647),
(12, 'Rend Elek', 'rendelek11@gmail.com', 2147483647),
(13, 'Szikla Szilárd', 'sziklaszilard12@gmail.com', 2147483647),
(14, 'Orbán Viktor', 'orbanviktor13@gmail.com', 2147483647),
(15, 'Schmuck Andor', 'schmuckandor14@gmail.com', 2147483647),
(16, 'Tóth Gabriella', 'tothgabi15@gmail.com', 2147483647),
(17, 'Trab Antal', 'trabantal16@gmail.com', 2147483647),
(18, 'Trap Pista', 'trappista17@gmail.com', 2147483647),
(19, 'Vég Béla', 'vegbela18@gmail.com', 2147483647),
(20, 'Wincs Eszter', 'wincseszter19@gmail.com', 2147483647),
(21, 'Víz Elek', 'vizelek20@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `food`
--

CREATE TABLE `food` (
  `fid` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `category` varchar(16) NOT NULL,
  `cost` int(11) NOT NULL,
  `cuisine` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `food`
--

INSERT INTO `food` (`fid`, `fname`, `category`, `cost`, `cuisine`) VALUES
(1, 'Tatar beefsteak', 'Előétel', 1690, 'Francia'),
(2, 'Ráktorta', 'Előétel', 1890, 'Amerikai'),
(3, 'Bruschetta', 'Előétel', 1290, 'Francia'),
(4, 'Lyoni libamáj héjas steak burgonyával', 'Főétel', 12590, 'Francia'),
(5, 'Egész pisztráng salátaágyon ', 'Főétel', 4590, 'Kína'),
(6, 'Serpenyős szűzérme erdei gombaraguval', 'Főétel', 5590, 'Magyar'),
(7, 'Pekándiós praliné', 'Desszert', 1790, 'Belgium'),
(8, 'Maracuja soufflé', 'Desszert', 2390, 'Francia'),
(9, 'Gundel-palacsinta', 'Desszert', 1890, 'Magyar'),
(10, 'Fokhagymás padlizsánkrém', 'Előétel', 1290, 'olasz'),
(11, 'Fokhagymakrémleves', 'Előétel', 1490, 'spanyol'),
(12, 'Májgombóc leves', 'Előétel', 1690, 'magyar'),
(13, 'Carbonara', 'Főétel', 2190, 'olasz'),
(14, 'Bőrén sült lazac', 'Főétel', 4290, 'Egyesült államok'),
(15, 'Pad thai ', 'Főétel', 2290, 'thaiföld'),
(16, 'Képviselő fánk', 'Desszert', 1290, 'francia'),
(17, 'Tres leches', 'Desszert', 1590, 'mexikó'),
(18, 'Tiramisu', 'Desszert', 1390, 'olasz'),
(19, 'Meggyleves', 'Előétel', 1590, 'Magyar'),
(20, 'Caprese saláta', 'Előétel', 2790, 'Olasz'),
(21, 'Jiaozi', 'Előétel', 2090, 'Kínai'),
(22, 'Túrós csusza༼ つ ◕_◕ ༽つ', 'Főétel', 3190, 'Magyar'),
(23, 'Bolognai spagetti', 'Főétel', 2990, 'Olasz'),
(24, 'Szezámmagos csirke, pirított tésztával', 'Főétel', 2190, 'Kína'),
(25, 'Aranygaluska vaníliasodóval', 'Desszert', 2290, 'Magyar'),
(26, 'Francia krémes', 'Desszert', 2490, 'Francia'),
(27, 'Somlói galuska', 'Desszert', 1790, 'Magyar');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `quantity` int(11) NOT NULL,
  `chid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `chefs`
--
ALTER TABLE `chefs`
  ADD PRIMARY KEY (`chid`);

--
-- A tábla indexei `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`);

--
-- A tábla indexei `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`fid`);

--
-- A tábla indexei `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `foodordercustomer` (`cid`),
  ADD KEY `foodorderfood` (`fid`),
  ADD KEY `foodorderchefs` (`chid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `chefs`
--
ALTER TABLE `chefs`
  MODIFY `chid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT a táblához `food`
--
ALTER TABLE `food`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customer` (`cid`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `food` (`fid`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`chid`) REFERENCES `chefs` (`chid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
