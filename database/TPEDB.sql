-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-10-2022 a las 19:13:44
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `TPEDB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Movie`
--

CREATE TABLE `Movie` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `duration` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Movie`
--

INSERT INTO `Movie` (`id`, `title`, `description`, `img`, `genre`, `duration`) VALUES
(1, 'ARGENTINA, 1985', 'Argentina, 1985 está inspirada en la historia real de Julio Strassera, Luis Moreno Ocampo y su joven equipo jurídico que se atrevieron a acusar, contra viento y marea, a contrarreloj y bajo constante amenaza, a la más sangrienta dictadura militar argentina. Una batalla de David contra Goliat, con los héroes menos esperados.', 'https://www.cinemacenter.com.ar/img_movies/2544_img2.jpg', 'Drama', 140),
(2, 'SONRÍE', 'Después de ser testigo de un extraño y traumático accidente que involucró a una paciente, la Dr. Rose Cotter (Sosie Bacon) empieza a experimentar sucesos aterradores que no puede explicarse. A medida que el terror comienza a apoderarse de su vida, Rose debe enfrentarse a su pasado para sobrevivir y escapar de su horrible nueva realidad.', 'https://www.cinemacenter.com.ar/img_movies/2512_img2.jpg', 'Terror', 115),
(3, 'AMSTERDAM', 'Ambientada en los años \'30, sigue la historia de 3 amigos que presencian un asesinato, se convierten en sospechosos y sacan a la luz uno de los más locos complots en la historia de los Estados Unidos.', 'https://www.cinemacenter.com.ar/img_movies/2552_img2.jpg', 'Drama', 134),
(4, 'TADEO EL EXPLORADOR 3', 'A Tadeo le encantaría que sus colegas arqueólogos le aceptaran como a uno más, pero siempre acaba arruinándolo: cuando destroza un sarcófago y desata un conjuro, pone en peligro la vida de sus amigos, Momia, Jeff y Belzoni. Con todos en contra y solo ayudado por Sara, Tadeo emprenderá una huida llena de aventuras, que le llevará de México a Chicago y de París a Egipto, para encontrar la manera de acabar con la maldición de la momia.', 'https://www.cinemacenter.com.ar/img_movies/2553_img2.jpg', 'Animación Aventuras', 90),
(5, 'LA HUERFANA EL ORIGEN', 'LA HUÉRFANA: EL ORIGEN narra la historia de Leena Klammer (Isabelle Fuhrman), quien orquesta un escape brillante de un manicomio Ruso y viaja a Estados Unidos. Al llegar, se adueña de la identidad “Esther”, la hija desaparecida de una familia adinerada. Sin embargo, su nueva vida conlleva algo inesperado y se enfrentará con una madre interpretada por Julia Stiles, que hará lo que sea necesario para proteger a su familia.', 'https://www.cinemacenter.com.ar/img_movies/2528_img2.jpg', 'Terror', 98),
(6, 'BROS', 'Este otoño, Universal Pictures se enorgullece de presentar la primera comedia romántica de un importante estudio sobre dos hombres gays que tal vez, posiblemente, probablemente, están destinados al amor. Quizás, si es que sus agendas y frenéticas vidas se los permite. Bros, de la feroz y cómica mente de Billy Eichner (serie de TV Billy on the Street, El rey león del 2019 y las series Difficult People y American Crime Story) y la brillantez de los cineastas Nicholas Stoller (Buenos Vecinos, ¿Cómo sobrevivir a mi ex?) y Judd Apatow (Damas en guerra, Esta chica es un desastre, Por eso lo llaman amor), llega Bros, una comedia inteligente arrebatadora y sincera sobre encontrar sexo, amor y romance en medio de la locura. Protagonizada por Billy Eichner, el primer hombre abiertamente gay que coescribe y protagoniza su propia película para un gran estudio, Bros está dirigida por Nicholas Stoller a partir de su propio guion coescrito con Eichner. La película está producida por Judd Apatow, Stoller y Joshua Church (coproductor de Esta chica es un desastre, Hermanastros). La producción ejecutiva corre a cargo de Eichner.', 'https://www.cinemacenter.com.ar/img_movies/2509_img2.jpg', 'Romance/Comedia', 115),
(7, 'LA SEÑORA HARRIS VA A PARIS', 'LA SEÑORA HARRIS VA A PARÍS es la encantadora historia de una aparentemente ordinaria ama de casa británica cuyo sueño de poseer un vestido de alta costura de Christian Dior la lleva a una extraordinaria aventura en París.', 'https://www.cinemacenter.com.ar/img_movies/2526_img2.jpg', 'Comedia Aventuras', 120),
(8, 'PANTERA NEGRA 2: WAKANDA POR SIEMPRE', 'En PANTERA NEGRA: WAKANDA POR SIEMPRE de Marvel Studios, la reina Ramonda (Angela Bassett), Shuri (Letitia Wright), M\'Baku (Winston Duke), Okoye (Danai Gurira) y las Dora Milaje (incluida Florence Kasumba) luchan por proteger a su nación de las potencias mundiales que intervienen tras la muerte del Rey T\'Challa. Mientras los habitantes de Wakanda se esfuerzan por embarcarse en un nuevo capítulo, los héroes deben unirse con la ayuda de Nakia (Lupita Nyong\'o) y Everett Ross (Martin Freeman) y forjar un nuevo camino para el reino de Wakanda. El film que cuenta con Tenoch Huerta como Namor, rey de una nación submarina oculta, también está protagonizada por Dominique Thorne, Michaela Coel, Mabel Cadena y Alex Livanalli.', 'https://www.cinemacenter.com.ar/img_movies/2517_img2.jpg', 'Acción Aventuras', 140);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Projection`
--

CREATE TABLE `Projection` (
  `id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Projection`
--

INSERT INTO `Projection` (`id`, `day`, `time`, `id_movie`) VALUES
(1, 1, 16, 4),
(2, 1, 18, 1),
(3, 1, 20, 2),
(4, 1, 22, 1),
(5, 2, 16, 3),
(6, 2, 18, 7),
(7, 2, 20, 6),
(8, 2, 22, 1),
(9, 3, 16, 8),
(11, 3, 20, 7),
(12, 3, 22, 3),
(13, 4, 16, 5),
(14, 4, 18, 2),
(16, 4, 22, 2),
(17, 5, 16, 8),
(18, 5, 18, 4),
(19, 5, 20, 1),
(20, 5, 22, 3),
(21, 6, 16, 4),
(22, 6, 18, 6),
(23, 6, 20, 5),
(24, 6, 22, 7),
(25, 7, 16, 1),
(26, 7, 18, 8),
(27, 7, 20, 6),
(28, 7, 22, 5),
(30, 3, 18, 1),
(31, 4, 20, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `User`
--

INSERT INTO `User` (`id`, `name`, `password`) VALUES
(1, 'admin', '$2y$10$Q.ccJQv2aZciadMdqtA/jOaIl05ZOhqsdf/1JfEnBddNQgFo3ZZ82');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Projection`
--
ALTER TABLE `Projection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Movie`
--
ALTER TABLE `Movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Projection`
--
ALTER TABLE `Projection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Projection`
--
ALTER TABLE `Projection`
  ADD CONSTRAINT `Projection_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `Movie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
