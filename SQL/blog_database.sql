-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  db773024895.hosting-data.io
-- Généré le :  Jeu 25 Juillet 2019 à 13:59
-- Version du serveur :  5.5.60-0+deb7u1-log
-- Version de PHP :  7.0.33-0+deb9u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db773024895`
--
CREATE DATABASE IF NOT EXISTS `db773024895` DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci;
USE `db773024895`;

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `user_admin` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `user_admin`, `password`) VALUES
(26, 'jeanF', '$2y$10$R0iZBSQDlY8smzWKgBg3XuXk5ZGg.Jn/u7q53QzVYgwALWvFtJOlO');

-- --------------------------------------------------------

--
-- Structure de la table `chapter`
--

CREATE TABLE `chapter` (
  `id_chapters` int(11) NOT NULL,
  `chapter_title` varchar(255) NOT NULL,
  `chapters` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chapter`
--

INSERT INTO `chapter` (`id_chapters`, `chapter_title`, `chapters`) VALUES
(40, 'Chapitre 4', '&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis commodo nisl, in commodo mauris. Vivamus feugiat dui nibh, eget placerat lacus mattis pulvinar. In hac habitasse platea dictumst. Sed et sem laoreet, tincidunt libero sed, vulputate mauris. Morbi ut nunc enim. Nulla ullamcorper iaculis finibus. Praesent convallis convallis sagittis. In ac massa a diam malesuada placerat eu vitae tellus. Nulla feugiat ligula a odio placerat pellentesque. Mauris a massa vitae elit euismod cursus. Praesent sagittis est a ante vestibulum porta.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Aenean id sodales justo. Nulla elit enim, dapibus sed suscipit in, posuere non libero. Vivamus elementum rhoncus nisi ac facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean quis diam eget felis finibus tincidunt. Etiam tellus ipsum, faucibus in nisi porta, dictum vulputate nisl. Quisque ex odio, eleifend sed volutpat et, semper vitae dui. Proin sed lobortis libero. In nec dignissim nisl. Integer tempus bibendum quam eu venenatis. Quisque vestibulum vulputate risus, a imperdiet risus ultrices non. Nam eleifend risus leo, quis interdum ligula ornare a. Aliquam lobortis imperdiet quam, a iaculis lectus.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Nullam vulputate nibh ac ipsum porttitor euismod. Donec lobortis eros purus, ac semper magna mattis nec. Maecenas nunc nisi, viverra sagittis eleifend non, volutpat ac sapien. Sed porta, nibh vel porta interdum, arcu eros commodo velit, eget lacinia est leo eu eros. Cras suscipit quam ligula, eleifend dictum ex aliquam ac. Etiam vel lacus tempus, accumsan magna at, congue elit. Nam sagittis dolor nisl, sed mattis arcu feugiat quis. Quisque venenatis bibendum augue, nec aliquam orci congue at. Phasellus justo purus, hendrerit venenatis dignissim id, mattis nec libero. Curabitur commodo id augue eu porta.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Phasellus ultrices arcu at velit pulvinar convallis. Proin sit amet diam eu orci tincidunt eleifend eu sed turpis. Phasellus eget mi laoreet, iaculis mi vitae, tristique turpis. Nulla ac scelerisque turpis. Donec scelerisque, ante ac hendrerit placerat, ante ipsum venenatis dui, id viverra libero magna tincidunt sem. Sed pulvinar iaculis urna, a sollicitudin magna convallis sed. Nam dignissim pulvinar orci id suscipit. Maecenas sed sollicitudin libero. Nunc id eros sed nisi ultrices gravida et ut libero. Nulla a urna vitae arcu interdum imperdiet. Curabitur id ligula a lectus volutpat ullamcorper.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Cras a eros eget ipsum placerat tempor. Quisque feugiat interdum justo eu tincidunt. Phasellus aliquet imperdiet sodales. Aenean a mi id magna auctor cursus tempor ac metus. Duis vulputate efficitur dui, vitae volutpat eros pharetra pellentesque. Phasellus viverra mi in leo lacinia suscipit. Cras ornare et dui sit amet dapibus. Aenean quis arcu lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean tincidunt euismod nisi, ornare auctor elit scelerisque pellentesque. Morbi finibus sem nec nibh iaculis posuere. Integer tristique viverra augue ut pharetra. Pellentesque ac lacus quam. Curabitur rhoncus quis mauris at convallis. Quisque eu justo laoreet, sagittis turpis ut, efficitur odio. In pretium suscipit mauris nec mollis.&lt;/p&gt;'),
(38, 'Chapitre 2', '&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis commodo nisl, in commodo mauris. Vivamus feugiat dui nibh, eget placerat lacus mattis pulvinar. In hac habitasse platea dictumst. Sed et sem laoreet, tincidunt libero sed, vulputate mauris. Morbi ut nunc enim. Nulla ullamcorper iaculis finibus. Praesent convallis convallis sagittis. In ac massa a diam malesuada placerat eu vitae tellus. Nulla feugiat ligula a odio placerat pellentesque. Mauris a massa vitae elit euismod cursus. Praesent sagittis est a ante vestibulum porta.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Aenean id sodales justo. Nulla elit enim, dapibus sed suscipit in, posuere non libero. Vivamus elementum rhoncus nisi ac facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean quis diam eget felis finibus tincidunt. Etiam tellus ipsum, faucibus in nisi porta, dictum vulputate nisl. Quisque ex odio, eleifend sed volutpat et, semper vitae dui. Proin sed lobortis libero. In nec dignissim nisl. Integer tempus bibendum quam eu venenatis. Quisque vestibulum vulputate risus, a imperdiet risus ultrices non. Nam eleifend risus leo, quis interdum ligula ornare a. Aliquam lobortis imperdiet quam, a iaculis lectus.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Nullam vulputate nibh ac ipsum porttitor euismod. Donec lobortis eros purus, ac semper magna mattis nec. Maecenas nunc nisi, viverra sagittis eleifend non, volutpat ac sapien. Sed porta, nibh vel porta interdum, arcu eros commodo velit, eget lacinia est leo eu eros. Cras suscipit quam ligula, eleifend dictum ex aliquam ac. Etiam vel lacus tempus, accumsan magna at, congue elit. Nam sagittis dolor nisl, sed mattis arcu feugiat quis. Quisque venenatis bibendum augue, nec aliquam orci congue at. Phasellus justo purus, hendrerit venenatis dignissim id, mattis nec libero. Curabitur commodo id augue eu porta.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Phasellus ultrices arcu at velit pulvinar convallis. Proin sit amet diam eu orci tincidunt eleifend eu sed turpis. Phasellus eget mi laoreet, iaculis mi vitae, tristique turpis. Nulla ac scelerisque turpis. Donec scelerisque, ante ac hendrerit placerat, ante ipsum venenatis dui, id viverra libero magna tincidunt sem. Sed pulvinar iaculis urna, a sollicitudin magna convallis sed. Nam dignissim pulvinar orci id suscipit. Maecenas sed sollicitudin libero. Nunc id eros sed nisi ultrices gravida et ut libero. Nulla a urna vitae arcu interdum imperdiet. Curabitur id ligula a lectus volutpat ullamcorper.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Cras a eros eget ipsum placerat tempor. Quisque feugiat interdum justo eu tincidunt. Phasellus aliquet imperdiet sodales. Aenean a mi id magna auctor cursus tempor ac metus. Duis vulputate efficitur dui, vitae volutpat eros pharetra pellentesque. Phasellus viverra mi in leo lacinia suscipit. Cras ornare et dui sit amet dapibus. Aenean quis arcu lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean tincidunt euismod nisi, ornare auctor elit scelerisque pellentesque. Morbi finibus sem nec nibh iaculis posuere. Integer tristique viverra augue ut pharetra. Pellentesque ac lacus quam. Curabitur rhoncus quis mauris at convallis. Quisque eu justo laoreet, sagittis turpis ut, efficitur odio. In pretium suscipit mauris nec mollis.&lt;/p&gt;'),
(39, 'Chapitre 3', '&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis commodo nisl, in commodo mauris. Vivamus feugiat dui nibh, eget placerat lacus mattis pulvinar. In hac habitasse platea dictumst. Sed et sem laoreet, tincidunt libero sed, vulputate mauris. Morbi ut nunc enim. Nulla ullamcorper iaculis finibus. Praesent convallis convallis sagittis. In ac massa a diam malesuada placerat eu vitae tellus. Nulla feugiat ligula a odio placerat pellentesque. Mauris a massa vitae elit euismod cursus. Praesent sagittis est a ante vestibulum porta.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Aenean id sodales justo. Nulla elit enim, dapibus sed suscipit in, posuere non libero. Vivamus elementum rhoncus nisi ac facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean quis diam eget felis finibus tincidunt. Etiam tellus ipsum, faucibus in nisi porta, dictum vulputate nisl. Quisque ex odio, eleifend sed volutpat et, semper vitae dui. Proin sed lobortis libero. In nec dignissim nisl. Integer tempus bibendum quam eu venenatis. Quisque vestibulum vulputate risus, a imperdiet risus ultrices non. Nam eleifend risus leo, quis interdum ligula ornare a. Aliquam lobortis imperdiet quam, a iaculis lectus.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Nullam vulputate nibh ac ipsum porttitor euismod. Donec lobortis eros purus, ac semper magna mattis nec. Maecenas nunc nisi, viverra sagittis eleifend non, volutpat ac sapien. Sed porta, nibh vel porta interdum, arcu eros commodo velit, eget lacinia est leo eu eros. Cras suscipit quam ligula, eleifend dictum ex aliquam ac. Etiam vel lacus tempus, accumsan magna at, congue elit. Nam sagittis dolor nisl, sed mattis arcu feugiat quis. Quisque venenatis bibendum augue, nec aliquam orci congue at. Phasellus justo purus, hendrerit venenatis dignissim id, mattis nec libero. Curabitur commodo id augue eu porta.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Phasellus ultrices arcu at velit pulvinar convallis. Proin sit amet diam eu orci tincidunt eleifend eu sed turpis. Phasellus eget mi laoreet, iaculis mi vitae, tristique turpis. Nulla ac scelerisque turpis. Donec scelerisque, ante ac hendrerit placerat, ante ipsum venenatis dui, id viverra libero magna tincidunt sem. Sed pulvinar iaculis urna, a sollicitudin magna convallis sed. Nam dignissim pulvinar orci id suscipit. Maecenas sed sollicitudin libero. Nunc id eros sed nisi ultrices gravida et ut libero. Nulla a urna vitae arcu interdum imperdiet. Curabitur id ligula a lectus volutpat ullamcorper.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Cras a eros eget ipsum placerat tempor. Quisque feugiat interdum justo eu tincidunt. Phasellus aliquet imperdiet sodales. Aenean a mi id magna auctor cursus tempor ac metus. Duis vulputate efficitur dui, vitae volutpat eros pharetra pellentesque. Phasellus viverra mi in leo lacinia suscipit. Cras ornare et dui sit amet dapibus. Aenean quis arcu lectus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean tincidunt euismod nisi, ornare auctor elit scelerisque pellentesque. Morbi finibus sem nec nibh iaculis posuere. Integer tristique viverra augue ut pharetra. Pellentesque ac lacus quam. Curabitur rhoncus quis mauris at convallis. Quisque eu justo laoreet, sagittis turpis ut, efficitur odio. In pretium suscipit mauris nec mollis.&lt;/p&gt;'),
(41, 'Chapitre 5', '&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis commodo nisl, in commodo mauris. Vivamus feugiat dui nibh, eget placerat lacus mattis pulvinar. In hac habitasse platea dictumst. Sed et sem laoreet, tincidunt libero sed, vulputate mauris. Morbi ut nunc enim. Nulla ullamcorper iaculis finibus. Praesent convallis convallis sagittis. In ac massa a diam malesuada placerat eu vitae tellus. Nulla feugiat ligula a odio placerat pellentesque. Mauris a massa vitae elit euismod cursus. Praesent sagittis est a ante vestibulum porta.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Aenean id sodales justo. Nulla elit enim, dapibus sed suscipit in, posuere non libero. Vivamus elementum rhoncus nisi ac facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean quis diam eget felis finibus tincidunt. Etiam tellus ipsum, faucibus in nisi porta, dictum vulputate nisl. Quisque ex odio, eleifend sed volutpat et, semper vitae dui. Proin sed lobortis libero. In nec dignissim nisl. Integer tempus bibendum quam eu venenatis. Quisque vestibulum vulputate risus, a imperdiet risus ultrices non. Nam eleifend risus leo, quis interdum ligula ornare a. Aliquam lobortis imperdiet quam, a iaculis lectus.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Nullam vulputate nibh ac ipsum porttitor euismod. Donec lobortis eros purus, ac semper magna mattis nec. Maecenas nunc nisi, viverra sagittis eleifend non, volutpat ac sapien. Sed porta, nibh vel porta interdum, arcu eros commodo velit, eget lacinia est leo eu eros. Cras suscipit quam ligula, eleifend dictum ex aliquam ac. Etiam vel lacus tempus, accumsan magna at, congue elit. Nam sagittis dolor nisl, sed mattis arcu feugiat quis. Quisque venenatis bibendum augue, nec aliquam orci congue at. Phasellus justo purus, hendrerit venenatis dignissim id, mattis nec libero. Curabitur commodo id augue eu porta.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;&quot;&gt;Phasellus ultrices arcu at velit pulvinar convallis. Proin sit amet diam eu orci tincidunt eleifend eu sed turpis. Phasellus eget mi laoreet, iaculis mi vitae, tristique turpis. Nulla ac scelerisque turpis. Donec scelerisque, ante ac hendrerit placerat, ante ipsum venenatis dui, id viverra libero magna tincidunt sem. Sed pulvinar iaculis urna, a sollicitudin magna convallis sed. Nam dignissim pulvinar orci id suscipit. Maecenas sed sollicitudin libero. Nunc id eros sed nisi ultrices gravida et ut libero. Nulla a urna vitae arcu interdum imperdiet. Curabitur id ligula a lectus volutpat ullamcorper.&lt;/p&gt;'),
(36, 'Chapitre 1 ', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis commodo nisl, in commodo mauris. Vivamus feugiat dui nibh, eget placerat lacus mattis pulvinar. In hac habitasse platea dictumst. Sed et sem laoreet, tincidunt libero sed, vulputate mauris. Morbi ut nunc enim. Nulla ullamcorper iaculis finibus. Praesent convallis convallis sagittis. In ac massa a diam malesuada placerat eu vitae tellus. Nulla feugiat ligula a odio placerat pellentesque. Mauris a massa vitae elit euismod cursus. Praesent sagittis est a ante vestibulum porta.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Aenean id sodales justo. Nulla elit enim, dapibus sed suscipit in, posuere non libero. Vivamus elementum rhoncus nisi ac facilisis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean quis diam eget felis finibus tincidunt. Etiam tellus ipsum, faucibus in nisi porta, dictum vulputate nisl. Quisque ex odio, eleifend sed volutpat et, semper vitae dui. Proin sed lobortis libero. In nec dignissim nisl. Integer tempus bibendum quam eu venenatis. Quisque vestibulum vulputate risus, a imperdiet risus ultrices non. Nam eleifend risus leo, quis interdum ligula ornare a. Aliquam lobortis imperdiet quam, a iaculis lectus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Nullam vulputate nibh ac ipsum porttitor euismod. Donec lobortis eros purus, ac semper magna mattis nec. Maecenas nunc nisi, viverra sagittis eleifend non, volutpat ac sapien. Sed porta, nibh vel porta interdum, arcu eros commodo velit, eget lacinia est leo eu eros. Cras suscipit quam ligula, eleifend dictum ex aliquam ac. Etiam vel lacus tempus, accumsan magna at, congue elit. Nam sagittis dolor nisl, sed mattis arcu feugiat quis. Quisque venenatis bibendum augue, nec aliquam orci congue at. Phasellus justo purus, hendrerit venenatis dignissim id, mattis nec libero. Curabitur commodo id augue eu porta.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; background-color: #ffffff;\">Phasellus ultrices arcu at velit pulvinar convallis. Proin sit amet diam eu orci tincidunt eleifend eu sed turpis. Phasellus eget mi laoreet, iaculis mi vitae, tristique turpis. Nulla ac scelerisque turpis. Donec scelerisque, ante ac hendrerit placerat, ante ipsum venenatis dui, id viverra libero magna tincidunt sem. Sed pulvinar iaculis urna, a sollicitudin magna convallis sed. Nam dignissim pulvinar orci id suscipit. Maecenas sed sollicitudin libero. Nunc id eros sed nisi ultrices gravida et ut libero. Nulla a urna vitae arcu interdum imperdiet. Curabitur id ligula a lectus volutat ullamcorper.</p>');

-- --------------------------------------------------------

--
-- Structure de la table `forum`
--

CREATE TABLE `forum` (
  `id_comment` int(11) NOT NULL,
  `id_chapter` int(11) NOT NULL,
  `comment` text NOT NULL,
  `nbr_report` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `forum`
--

INSERT INTO `forum` (`id_comment`, `id_chapter`, `comment`, `nbr_report`) VALUES
(42, 20, 'Test\r\n', 0),
(43, 20, 'Test', 0),
(44, 21, 'azeazeaze', 0),
(45, 21, 'gtzefvsdf', 0),
(47, 22, 'uiolkjljio', 0),
(51, 36, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis commodo nisl, in commodo mauris. Vivamus feugiat dui nibh, eget placerat lacus mattis pulvinar. In hac habitasse platea dictumst.', 0),
(52, 36, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. \r\n', 0),
(56, 36, 'Bonjour\r\n', 1),
(54, 36, 'J\'adore ce premier chapitre.', 3),
(57, 0, '36', 0),
(58, 0, '36', 0),
(59, 36, 'Essai', 2),
(61, 36, 'report\r\n', 5);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id_chapters`);

--
-- Index pour la table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id_comment`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id_chapters` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `forum`
--
ALTER TABLE `forum`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
