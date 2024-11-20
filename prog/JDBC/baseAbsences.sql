-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 24 nov. 2023 à 10:44
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `absences`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE `absence` (
  `dtabs` varchar(10) NOT NULL,
  `hrabs` varchar(5) NOT NULL,
  `etudiantid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`dtabs`, `hrabs`, `etudiantid`) VALUES
('2023/09/05', '09:00', 6),
('2023/09/18', '13:30', 2),
('2023/09/23', '08:30', 4),
('2023/09/23', '08:30', 5),
('2023/10/05', '10:15', 7),
('2023/10/05', '15:45', 7),
('2023/10/14', '09:00', 6),
('2023/11/05', '14:00', 2),
('2023/11/07', '10:15', 6),
('2023/11/12', '08:00', 4);

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `groupecode` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `groupecode`) VALUES
(1, 'SENOUN', 'Karim', 'INFL2G1A'),
(2, 'KYELOWSKI', 'Ella', 'INFL2G1A'),
(3, 'LELONG', 'Amandine', 'INFL2G2A'),
(4, 'SAUVE', 'Xavier', 'MATL2G1'),
(5, 'SENAM', 'Saida', 'MATL2G1'),
(6, 'DIEUDONNE', 'Claire', 'INFL2G2A'),
(7, 'DUPOND', 'Kevin', 'MAL2G3'),
(15, 'PIERRE', 'Sabine', 'SVL11A'),
(17, 'MARTIN', 'Clément', 'SVL11A'),
(19, 'BEN SENOUN', 'Bilel', 'INFL2G2A'),
(21, 'SENAI', 'Lina', 'SVL11A'),
(23, 'DE KERGUEN', 'François', 'MATL2G1'),
(25, 'DAGAIS', 'Anthony', 'INFL2G2B'),
(27, 'CARRE', 'Celia', 'INFL2G1B');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `code` char(10) NOT NULL,
  `formation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`code`, `formation`) VALUES
('INFL2G1A', 'New Informatique'),
('INFL2G1B', 'Licence2 Informatique'),
('INFL2G2A', 'Licence2 Informatique'),
('INFL2G2B', 'Licence2 Informatique'),
('MAL2G3', 'Licence2 Maths'),
('MATL2G1', 'Licence2 Maths'),
('MATL2G2', 'Licence2 Maths'),
('PHYL1G1', 'Licence1 Physique'),
('SVL11A', 'Sciences de la vie');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`dtabs`,`hrabs`,`etudiantid`),
  ADD KEY `etudiantid` (`etudiantid`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupecode` (`groupecode`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `absence_ibfk_1` FOREIGN KEY (`etudiantid`) REFERENCES `etudiant` (`id`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`groupecode`) REFERENCES `groupe` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
