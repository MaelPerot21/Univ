-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Jeu 13 Février 2014 à 14:03
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `recettes2`
--

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE IF NOT EXISTS `contient` (
  `idRecette` int(10) unsigned NOT NULL DEFAULT '0',
  `idIngredient` int(10) unsigned NOT NULL DEFAULT '0',
  `quantite` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idRecette`,`idIngredient`),
  KEY `rec_idx` (`idRecette`),
  KEY `ing_idx` (`idIngredient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `contient`
--

INSERT INTO `contient` (`idRecette`, `idIngredient`, `quantite`) VALUES
(1, 1, '2'),
(1, 2, '250 g'),
(1, 4, '1/2 l'),
(1, 5, '1 cuillerée'),
(1, 6, '1 pincée'),
(2, 1, '6'),
(2, 3, '200 g'),
(3, 1, '1'),
(3, 5, '225 g'),
(3, 7, NULL),
(3, 8, '1 cuillerée'),
(5, 9, '800 g'),
(5, 10, '1'),
(5, 11, '30 ml'),
(5, 12, '10 g'),
(5, 13, NULL),
(5, 14, NULL),
(5, 15, '3 gousses'),
(6, 15, '1 gousse'),
(6, 16, '1 jus'),
(6, 18, '1'),
(6, 19, '1'),
(7, 8, '1 cuiller à soupe'),
(7, 20, '3 cuillers à soupe'),
(7, 21, 'Selon son goût');

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE IF NOT EXISTS `ingredient` (
  `idIngredient` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`idIngredient`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `ingredient`
--

INSERT INTO `ingredient` (`idIngredient`, `nom`) VALUES
(15, 'ail'),
(17, 'avocat'),
(3, 'chocolat'),
(16, 'citron'),
(21, 'crème fraîche'),
(2, 'farine'),
(5, 'huile'),
(11, 'huile d''olive'),
(20, 'ketch''up'),
(4, 'lait'),
(8, 'moutarde'),
(1, 'oeuf'),
(18, 'oignon'),
(10, 'pâte brisée'),
(7, 'poivre'),
(14, 'romarin'),
(6, 'sel'),
(12, 'sucre'),
(13, 'thym'),
(9, 'tomate'),
(19, 'yahourt');

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE IF NOT EXISTS `recette` (
  `idRecette` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL DEFAULT '',
  `tempsPreparation` int(10) unsigned DEFAULT NULL,
  `tempsCuisson` int(10) unsigned DEFAULT NULL,
  `nbParts` smallint(5) unsigned DEFAULT NULL,
  `texte` mediumtext,
  `idType` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idRecette`),
  UNIQUE KEY `nom` (`nom`),
  KEY `type_idx` (`idType`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `recette`
--

INSERT INTO `recette` (`idRecette`, `nom`, `tempsPreparation`, `tempsCuisson`, `nbParts`, `texte`, `idType`) VALUES
(1, 'Pâte à crêpes', 10, 3, 12, 'Mélanger la farine et les oeufs.\r\nAjouter l''huile, le sel puis ajouter le lait progressivement en remuant.\r\nLaisser reposer une heure', 3),
(2, 'Mousse au chocolat', 20, NULL, 4, 'Battre les blancs d''oeuf en neige, les sucrer.\r\nFaire fondre le chocolat dans très peu d''eau.\r\nIncorporer le chocolat aux blancs d''oeufs.', 3),
(3, 'Mayonnaise', 10, NULL, NULL, 'Remuer rapidement le jaune d''oeuf avec la moutarde en ajoutant petit à petit l''huile.\r\nSaler et poivrer à la fin. ', 2),
(4, 'Choucroute', 30, NULL, 6, NULL, NULL),
(5, 'Tarte tatin de tomates', 20, 40, 6, 'Nettoyer et couper les tomates en deux. Les épépiner.\r\nMettre l''huile d''olive et le sucre dans un plat allant au four, poser les tomates dans ce plat et les assaisonner de thym, romarin et ail hachés. Faire cuire au four à 180°C pendant 20 mn.\r\nEnsuite, égoutter et laisser refroidir les tomates pendant une heure.\r\nMettre les tomates bien serrées dans un plat à tarte. Poser la pâte sur les tomates et faire les rebords. Laisser reposer une heure. Cuire 20 mn à 180°C.\r\n', 9),
(6, 'Guacamole', 10, NULL, NULL, 'Sortir les avocats de leur enveloppe et retirer le noyau.\r\nMixer l''avocat avec un yahourt, l''ail, l''oignon et le citron. C''est prêt !', 2),
(7, 'Sauce cocktail', 10, NULL, NULL, 'Mélanger le ketchup, la moutarde et la crême fraîche.', 2);

-- --------------------------------------------------------

--
-- Structure de la table `typerecette`
--

CREATE TABLE IF NOT EXISTS `typerecette` (
  `idType` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`idType`),
  UNIQUE KEY `nom` (`nom`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `typerecette`
--

INSERT INTO `typerecette` (`idType`, `nom`) VALUES
(6, 'Entremet'),
(3, 'Gateau'),
(5, 'Hors d''oeuvre'),
(7, 'Poisson'),
(9, 'Salade'),
(2, 'Sauce'),
(1, 'Soupe'),
(8, 'Tarte salée');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
