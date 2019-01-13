-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-01-2019 a las 23:17:49
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `storemanager`
--
CREATE DATABASE IF NOT EXISTS `storemanager` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `storemanager`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fiados`
--

DROP TABLE IF EXISTS `fiados`;
CREATE TABLE `fiados` (
  `idfiados` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `estado` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `fiados`
--

TRUNCATE TABLE `fiados`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `idproducto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio_de_compra` int(11) NOT NULL,
  `precio_de_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `productos`
--

TRUNCATE TABLE `productos`;
--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`idproducto`, `nombre`, `precio_de_compra`, `precio_de_venta`, `cantidad`) VALUES
(1, 'Bretaña  350 ml', 1200, 1400, 100),
(2, 'Cocacola 192 ml', 600, 1000, 100),
(3, 'Premio 250 ml', 600, 1000, 100),
(4, 'Tostadas 160g', 1000, 1300, 100),
(5, 'Oreo', 500, 700, 100),
(6, 'Glacitas', 0, 700, 100),
(7, 'Big cola 535 ml', 0, 1100, 100),
(8, 'Chusquitas', 300, 500, 100),
(9, 'Cuatro 192 ml', 600, 1000, 100),
(10, 'Big  2 (maquinilla de afeitar )', 1000, 1200, 100),
(11, 'Dorco', 0, 1000, 100),
(12, 'Aguila normal pequeña', 1400, 2300, 100),
(13, 'Schick prestobarba', 0, 2300, 100),
(14, 'Pony malta 330 cm', 1000, 1400, 100),
(15, 'Dolex niÃ±o', 0, 900, 100),
(16, 'Aguila light pequeña', 1600, 2500, 100),
(17, 'Noraver Gripa y tos', 1000, 1300, 100),
(18, 'Pilsen', 1700, 2300, 100),
(19, 'Cocacola 3 Litros', 0, 6300, 100),
(20, 'Sevedol', 1300, 1500, 100),
(21, 'Buscapina', 1000, 1300, 100),
(22, 'Quatro 1 litro y cuatro', 0, 2200, 100),
(23, 'Dolex', 0, 2200, 100),
(24, 'Sprite 1 litro y cuatro', 0, 2200, 100),
(25, 'Distran Niños', 0, 2650, 100),
(26, 'Movidol', 1000, 1300, 100),
(27, 'Cocacola 1.5 Litros', 0, 3400, 100),
(28, 'Advil Fem', 0, 1500, 100),
(29, 'Colik Forten', 0, 1200, 100),
(30, 'Cocacola 2L plastica', 0, 3000, 100),
(31, 'Gillette', 0, 2100, 100),
(32, 'Premio 1.5 Litro', 2400, 2700, 100),
(33, 'Alvil Ultra', 0, 1500, 100),
(34, 'Advil FASTGEL', 1300, 1500, 100),
(35, 'Advil Max', 1300, 1500, 100),
(36, 'Pony malta 1 Litro plastica', 0, 2600, 100),
(37, 'Suavitel Sobre ', 0, 600, 100),
(38, 'Pantene 18', 500, 700, 100),
(39, 'Speed Stick', 0, 800, 100),
(40, 'Big cola 1 Litro', 0, 1600, 100),
(41, 'Lady Speed Stick', 0, 800, 100),
(42, 'Del valle caja ', 0, 700, 100),
(43, 'Gatorade 500 ml', 0, 2700, 100),
(44, 'Vive 100 240ml', 0, 1700, 100),
(45, 'Agua cristal 300 ml', 0, 600, 100),
(46, 'Balance', 0, 800, 100),
(47, 'Balance for Woman', 0, 800, 100),
(48, 'Agua brisa 280 ml', 0, 700, 100),
(49, 'PaÃ±itos PequeÃ±in', 0, 250, 100),
(50, 'Big cola 250 ml', 0, 700, 100),
(51, 'Pony malta 200 cm', 0, 1200, 100),
(52, 'Head & shoulders 18 ml', 0, 700, 100),
(53, 'Cifrut 250 ml', 0, 700, 100),
(54, 'Pantene Acondicionados  10 ml', 0, 700, 100),
(55, 'Postobon 1.250 ml', 0, 1700, 100),
(56, '7up 1 litro', 0, 1700, 100),
(57, 'Supercheese 48g ', 700, 1000, 100),
(58, 'Postobon 2 litros plastica', 0, 2700, 100),
(59, 'Tajamiel', 0, 0, 100),
(60, 'Tajamiel', 0, 0, 100),
(61, 'Postobon 1.5 litros plastica', 0, 2700, 100),
(62, 'Super Crocantes', 1000, 1300, 100),
(63, 'Todo Rico', 0, 0, 100),
(64, 'Hit refresh 2 litros', 2400, 2700, 100),
(65, 'Postobon 3.125 litros', 0, 6300, 100),
(66, 'Mekato nachos', 0, 0, 100),
(67, 'Chiricos natural 55g (grandes )', 800, 1100, 100),
(68, 'Tosti Nachos', 0, 0, 100),
(69, 'Tosti Empanadas ', 0, 0, 100),
(70, 'Pepsi 250 ml', 700, 1000, 100),
(71, 'Gudiz', 0, 0, 100),
(72, 'Papitas Aburra', 0, 0, 100),
(73, 'Choco krispis', 900, 1100, 100),
(74, 'Postobon 250 ml ', 0, 1000, 100),
(75, 'Froot Loops', 900, 1100, 100),
(76, 'Zucaritas', 900, 1100, 100),
(77, '7up 250 ml', 0, 1000, 100),
(78, 'Postobon 350 ml', 0, 1400, 100),
(79, 'Colombiana 350 ml', 0, 1400, 100),
(80, 'Super Pega', 0, 0, 100),
(81, 'Nectar 220 ml', 0, 1600, 100),
(82, 'Tampones con Aplicador ', 0, 0, 100),
(83, 'Aloe vera 240 ml lata', 0, 2000, 100),
(84, 'Mr tea  200 ml caja ', 0, 600, 100),
(85, 'Agua siente 250 ml plastico', 0, 1800, 100),
(86, 'Aroma', 0, 0, 100),
(87, 'Tropi kola 500 ml plastico', 0, 1000, 100),
(88, 'Esponja Dagon', 0, 0, 100),
(89, 'Speed 250 ml ', 0, 1200, 100),
(90, 'Choclitos', 500, 700, 100),
(91, 'Aguilon Light', 3000, 4000, 100),
(92, 'Pilsenon', 3000, 3700, 100),
(93, 'Pepsi 2 litros', 2100, 2400, 100),
(94, 'Crema la Sopera', 0, 0, 100),
(95, 'Nestea', 0, 0, 100),
(96, 'Milo', 700, 900, 100),
(97, 'Eliminador de Olores Familia', 0, 0, 100),
(98, 'Nosotras', 0, 300, 100),
(99, 'Klim', 0, 0, 100),
(100, 'Huevos', 100, 350, 100),
(101, 'Cepillos fluo cardent', 0, 0, 100),
(102, 'Halls', 0, 0, 100),
(103, 'Barra Bianchi', 0, 0, 100),
(104, 'Aceite rica palma 1000cm', 0, 0, 100),
(105, 'Aceite rica palma 450 cm', 0, 0, 100),
(106, 'Aceite rica palma 500 ml', 0, 0, 100),
(107, 'Bary salsa rosada', 0, 0, 100),
(108, 'Shampoo Pantene', 0, 700, 100),
(109, 'Hit refresh caja 200 ml', 0, 0, 100),
(110, 'Colcafe 10g', 0, 1000, 100),
(111, 'Tubito', 500, 700, 100),
(112, 'Limpido 500 ml', 0, 0, 100),
(113, 'Linterna Tronex', 0, 9000, 100),
(114, 'Pegaloca Roket', 0, 850, 100),
(115, 'Alqueria en Polvo', 0, 900, 100),
(116, 'Panelitas de Coco', 0, 400, 100),
(117, 'Linaza', 0, 150, 100),
(118, 'Clavos de Canela', 0, 150, 100),
(119, 'Canela en Astilla', 0, 150, 100),
(120, 'Bicarbonato de sodio', 0, 150, 100),
(121, 'Manzanilla', 0, 150, 100),
(122, 'Pimienta', 0, 150, 100),
(123, 'Canela en Polvo', 0, 150, 100),
(124, 'Club colombia', 0, 600, 100),
(125, 'Sparkies', 0, 100, 100),
(126, 'Almohabana', 0, 1000, 100),
(127, 'Almohabana Grande', 0, 600, 100),
(128, 'Pan de Queso pequeño', 0, 6, 100),
(129, 'Pan de Queso', 0, 1100, 100),
(130, 'Todo Rico original 45g', 1200, 1700, 100),
(131, 'Super ricas onditas 32.5 g', 1000, 1300, 100),
(132, 'Super ricas onditas 115 g (Grandes)', 2200, 2700, 100),
(133, 'Leche colanta', 2000, 2200, 100),
(134, 'Tarrito rojo sobre 25g', 900, 1100, 100),
(135, 'Starlite cigarrillo', 200, 300, 100),
(136, 'Advil Ultra', 1300, 1500, 100),
(137, 'Arepa Paisa x 5', 1000, 1200, 100),
(138, 'Arepa Paisa x 10', 1100, 1300, 100),
(139, 'Candela Gil', 600, 800, 100),
(140, 'Candela Clipper', 1500, 1800, 100),
(141, 'Candela Swiss Lite Texas Rodeo', 1000, 1200, 100),
(142, 'Candela Swiss Lite Miami neon', 800, 1000, 100),
(143, 'Big cola 1.75 L', 1800, 2200, 100),
(144, 'Golosia', 600, 800, 100),
(145, 'Suntea sobre', 900, 1100, 100),
(146, 'Colgate Triple Accion grande 60 mL', 2200, 2600, 100),
(147, 'Colgate Triple Accion pequeño 22 mL', 1000, 1400, 100),
(148, 'Chocolate Luker', 450, 600, 100),
(149, 'Doritos', 1000, 1400, 100),
(150, 'Dragon brillo', 700, 900, 100),
(151, 'Maggi Sobre desmenuzado', 700, 800, 100),
(152, 'Pan blanco mamaines', 2400, 2600, 100),
(153, 'Chesterfield white cigarrillo', 400, 500, 100),
(154, 'Chesterfield blue cigarrillo', 400, 500, 100),
(155, 'Lucky strike cigarrillo', 400, 500, 100),
(156, 'Marlboro cigarrillo', 500, 600, 100),
(157, 'Leche ricura', 1600, 1800, 100),
(158, 'Color', 600, 800, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `usuarios`
--

TRUNCATE TABLE `usuarios`;
--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idusuarios`, `nombre`) VALUES
(1, 'Lucas Casemiro Perez'),
(2, 'Juan Perez'),
(3, 'Carlos Villagran'),
(4, 'Manuel Patiño'),
(5, 'Liliana Perez'),
(6, 'Mariana Valtazar'),
(7, 'Lauriña'),
(8, 'Camilo Guarin'),
(9, 'MArcelo'),
(10, 'Julian Perecedero'),
(11, 'Marcos Galperin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas` (
  `idventa` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `ventas_total` int(11) NOT NULL,
  `ganancias` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `ventas`
--

TRUNCATE TABLE `ventas`;
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fiados`
--
ALTER TABLE `fiados`
  ADD PRIMARY KEY (`idfiados`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idproducto` (`idproducto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idproducto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idusuarios`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`idventa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fiados`
--
ALTER TABLE `fiados`
  MODIFY `idfiados` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idusuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `idventa` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fiados`
--
ALTER TABLE `fiados`
  ADD CONSTRAINT `idproductos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idusuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuarios`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
