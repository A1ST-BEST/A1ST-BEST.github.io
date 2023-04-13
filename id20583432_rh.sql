-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 13 avr. 2023 à 06:35
-- Version du serveur :  10.5.16-MariaDB
-- Version de PHP : 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `id20583432_rh`
--

-- --------------------------------------------------------

--
-- Structure de la table `annoncement`
--

CREATE TABLE `annoncement` (
  `idannonce` int(11) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `annoncement`
--

INSERT INTO `annoncement` (`idannonce`, `titre`, `description`) VALUES
(9, 'Upcoming project ', '<p>Hello, we will start a new project. Be prepared for an upcoming meeting soon.</p>\r\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Structure de la table `candidats`
--

CREATE TABLE `candidats` (
  `idcand` int(11) NOT NULL,
  `prenom` varchar(39) NOT NULL,
  `nom` varchar(39) NOT NULL,
  `dateNaissance` date NOT NULL,
  `genre` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `poste` varchar(70) NOT NULL,
  `niveau` varchar(40) NOT NULL,
  `cv` varchar(255) NOT NULL,
  `lettre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `candidats`
--

INSERT INTO `candidats` (`idcand`, `prenom`, `nom`, `dateNaissance`, `genre`, `email`, `telephone`, `poste`, `niveau`, `cv`, `lettre`) VALUES
(25, 'Abderrahman ', 'Youabd', '2000-02-11', 'Female', 'youabd50@gmail.com', '205757587', 'Data Enginner', 'Bsc computer science', 'DSA-prac6.pdf', 'DSA-prac6.pdf');

-- --------------------------------------------------------

--
-- Structure de la table `conges`
--

CREATE TABLE `conges` (
  `idconge` int(11) NOT NULL,
  `datecreation` date NOT NULL,
  `periode` int(11) NOT NULL,
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  `typeconge` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `idemp` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `conges`
--

INSERT INTO `conges` (`idconge`, `datecreation`, `periode`, `datedebut`, `datefin`, `typeconge`, `nom`, `idemp`) VALUES
(24, '2000-10-02', 15, '2023-04-12', '2023-04-27', 'Individual Training Leave', 'Piroska Varga', 70);

-- --------------------------------------------------------

--
-- Structure de la table `congesdemandes`
--

CREATE TABLE `congesdemandes` (
  `idconge` int(11) UNSIGNED NOT NULL,
  `datecreation` date NOT NULL,
  `periode` int(50) NOT NULL,
  `datedebut` date NOT NULL,
  `datefin` date NOT NULL,
  `typeconge` varchar(100) NOT NULL,
  `nom` varchar(39) NOT NULL,
  `idemp` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `congesdemandes`
--

INSERT INTO `congesdemandes` (`idconge`, `datecreation`, `periode`, `datedebut`, `datefin`, `typeconge`, `nom`, `idemp`) VALUES
(45, '2023-04-13', 7, '2023-04-13', '2023-04-20', 'Sick Leave', 'Piroska Varga', 70);

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

CREATE TABLE `employes` (
  `idemp` int(11) UNSIGNED NOT NULL,
  `email` varchar(39) NOT NULL,
  `dateNaissance` date NOT NULL,
  `nom` varchar(39) NOT NULL,
  `departement` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `motdepasse` varchar(39) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT 0,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`idemp`, `email`, `dateNaissance`, `nom`, `departement`, `poste`, `telephone`, `motdepasse`, `etat`, `photo`) VALUES
(70, 'roomacc350@gmail.com', '2000-11-02', 'Piroska Varga', 'IT', 'Software Engineer', '204567899', '0000', 1, 'female.png');

-- --------------------------------------------------------

--
-- Structure de la table `employesarchiver`
--

CREATE TABLE `employesarchiver` (
  `idemp` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `dateNaissance` date NOT NULL,
  `nom` varchar(40) NOT NULL,
  `departement` varchar(50) NOT NULL,
  `poste` varchar(50) NOT NULL,
  `telephone` varchar(100) DEFAULT NULL,
  `motdepasse` varchar(40) NOT NULL,
  `etat` int(11) NOT NULL DEFAULT 0,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employesarchiver`
--

INSERT INTO `employesarchiver` (`idemp`, `email`, `dateNaissance`, `nom`, `departement`, `poste`, `telephone`, `motdepasse`, `etat`, `photo`) VALUES
(75, 'roomacc150@gmail.com', '2000-02-11', 'ABDERRAHMAN YOUABD', 'IT', 'Data engineer', '9999999999', '123', 0, 'Digital-Library-1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `reunion`
--

CREATE TABLE `reunion` (
  `idreunion` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `datereunion` date NOT NULL,
  `heurereunion` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reunion`
--

INSERT INTO `reunion` (`idreunion`, `titre`, `type`, `datereunion`, `heurereunion`) VALUES
(84, 'A1ST next Leading Project Presentation', 'Internal Meeting', '2023-04-11', '10:00:00.000000');

-- --------------------------------------------------------

--
-- Structure de la table `rh`
--

CREATE TABLE `rh` (
  `idrh` int(11) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `motdepasse` varchar(40) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `poste` varchar(70) NOT NULL,
  `departement` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rh`
--

INSERT INTO `rh` (`idrh`, `prenom`, `nom`, `email`, `motdepasse`, `photo`, `poste`, `departement`) VALUES
(2, 'Abderrahman', 'Youabd', 'hr.a1st.service@gmail.com', 'admin@', 'male.png', 'Head HR', 'Human Ressources');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annoncement`
--
ALTER TABLE `annoncement`
  ADD PRIMARY KEY (`idannonce`);

--
-- Index pour la table `candidats`
--
ALTER TABLE `candidats`
  ADD PRIMARY KEY (`idcand`);

--
-- Index pour la table `conges`
--
ALTER TABLE `conges`
  ADD PRIMARY KEY (`idconge`),
  ADD KEY `conges_ibfk_1` (`idemp`);

--
-- Index pour la table `congesdemandes`
--
ALTER TABLE `congesdemandes`
  ADD PRIMARY KEY (`idconge`),
  ADD KEY `idemp` (`idemp`);

--
-- Index pour la table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`idemp`);

--
-- Index pour la table `employesarchiver`
--
ALTER TABLE `employesarchiver`
  ADD PRIMARY KEY (`idemp`);

--
-- Index pour la table `reunion`
--
ALTER TABLE `reunion`
  ADD PRIMARY KEY (`idreunion`);

--
-- Index pour la table `rh`
--
ALTER TABLE `rh`
  ADD PRIMARY KEY (`idrh`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `annoncement`
--
ALTER TABLE `annoncement`
  MODIFY `idannonce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `candidats`
--
ALTER TABLE `candidats`
  MODIFY `idcand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `conges`
--
ALTER TABLE `conges`
  MODIFY `idconge` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `congesdemandes`
--
ALTER TABLE `congesdemandes`
  MODIFY `idconge` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `employes`
--
ALTER TABLE `employes`
  MODIFY `idemp` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT pour la table `employesarchiver`
--
ALTER TABLE `employesarchiver`
  MODIFY `idemp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `reunion`
--
ALTER TABLE `reunion`
  MODIFY `idreunion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT pour la table `rh`
--
ALTER TABLE `rh`
  MODIFY `idrh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `conges`
--
ALTER TABLE `conges`
  ADD CONSTRAINT `conges_ibfk_1` FOREIGN KEY (`idemp`) REFERENCES `employes` (`idemp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `congesdemandes`
--
ALTER TABLE `congesdemandes`
  ADD CONSTRAINT `congesdemandes_ibfk_1` FOREIGN KEY (`idemp`) REFERENCES `employes` (`idemp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
