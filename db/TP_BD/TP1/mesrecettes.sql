-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 17 oct. 2024 à 12:13
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `recettes`
--

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `idRecette` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `idIngredient` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `quantite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `contient`
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
(5, 1, '4'),
(5, 4, '1L'),
(5, 9, 'de l’extrait de vanille'),
(5, 10, '125 g');

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

CREATE TABLE `ingredient` (
  `idIngredient` int(10) UNSIGNED NOT NULL,
  `nom` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`idIngredient`, `nom`) VALUES
(3, 'chocolat'),
(9, 'extrait de vanille'),
(2, 'farine'),
(5, 'huile'),
(4, 'lait'),
(8, 'moutarde'),
(1, 'oeuf'),
(7, 'poivre'),
(6, 'sel'),
(10, 'sucre');

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE `recette` (
  `idRecette` int(10) UNSIGNED NOT NULL,
  `nom` varchar(255) NOT NULL DEFAULT '',
  `tempsPreparation` int(10) UNSIGNED DEFAULT NULL,
  `tempsCuisson` int(10) UNSIGNED DEFAULT NULL,
  `nbParts` smallint(5) UNSIGNED DEFAULT NULL,
  `texte` mediumtext DEFAULT NULL,
  `idType` int(10) UNSIGNED DEFAULT NULL,
  `dateInsertion` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`idRecette`, `nom`, `tempsPreparation`, `tempsCuisson`, `nbParts`, `texte`, `idType`, `dateInsertion`) VALUES
(1, 'Pâte à crêpes', 10, 3, 12, 'Mélanger la farine et les oeufs.\r\nAjouter l\'huile, le sel puis ajouter le lait progressivement en remuant.\r\nLaisser reposer une heure', 3, '2024-10-17 09:37:22'),
(2, 'Mousse au chocolat', 20, NULL, 4, 'Battre les blancs d\'oeuf en neige, les sucrer.\nFaire fondre le chocolat dans très peu d\'eau.\nIncorporer le chocolat aux blancs d\'oeufs.', 6, '2024-10-17 09:37:22'),
(3, 'Mayonnaise', 10, NULL, NULL, 'Remuer rapidement le jaune d\'oeuf avec la moutarde en ajoutant petit à petit l\'huile.\r\nSaler et poivrer à la fin. ', 2, '2024-10-17 09:37:22'),
(4, 'Choucroute', 30, NULL, 6, NULL, NULL, '2024-10-17 09:37:22'),
(5, 'Oeufs au lait', 15, 45, 6, 'Faire bouillir la lait sucre avec l\'extrait de vanille. Battre les oeufs entiers ; les melanger avec le lait et bien remuer. Verser dans un plat et faire cuire a feu doux pendant 45 minutes.', NULL, '2024-10-17 09:37:22'),
(9, 'test', 0, 0, 0, 'test', NULL, '2024-10-17 09:41:51');

-- --------------------------------------------------------

--
-- Structure de la table `typerecette`
--

CREATE TABLE `typerecette` (
  `idType` int(10) UNSIGNED NOT NULL,
  `nom` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `typerecette`
--

INSERT INTO `typerecette` (`idType`, `nom`) VALUES
(6, 'Entremet'),
(3, 'Gateau'),
(5, 'Salade'),
(2, 'Sauce'),
(1, 'Soupe');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`idRecette`,`idIngredient`),
  ADD KEY `rec_idx` (`idRecette`),
  ADD KEY `ing_idx` (`idIngredient`);

--
-- Index pour la table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`idIngredient`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`idRecette`),
  ADD UNIQUE KEY `nom` (`nom`),
  ADD KEY `type_idx` (`idType`);

--
-- Index pour la table `typerecette`
--
ALTER TABLE `typerecette`
  ADD PRIMARY KEY (`idType`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `idIngredient` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `recette`
--
ALTER TABLE `recette`
  MODIFY `idRecette` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `typerecette`
--
ALTER TABLE `typerecette`
  MODIFY `idType` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_3` FOREIGN KEY (`idRecette`) REFERENCES `recette` (`idRecette`),
  ADD CONSTRAINT `contient_ibfk_4` FOREIGN KEY (`idIngredient`) REFERENCES `ingredient` (`idIngredient`);

--
-- Contraintes pour la table `recette`
--
ALTER TABLE `recette`
  ADD CONSTRAINT `recette_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `typerecette` (`idType`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
