-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 22 fév. 2021 à 19:38
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_web`
--

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `destinataire` varchar(100) NOT NULL,
  `messages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `destinataire`, `messages`) VALUES
(40, 'Vendeur', 'cc'),
(41, 'Client', 'iutyrcfyguj'),
(42, 'Client', 'dededede'),
(43, 'Client', 'dededededed');

-- --------------------------------------------------------

--
-- Structure de la table `objet_annonce`
--

CREATE TABLE `objet_annonce` (
  `id` int(11) NOT NULL,
  `titre` text NOT NULL,
  `Instants_de_consommation` text NOT NULL,
  `description` text NOT NULL,
  `ambiance` text NOT NULL,
  `composante_du_repas` text NOT NULL,
  `prise_de_vue` text NOT NULL,
  `region` text NOT NULL,
  `date` text NOT NULL,
  `statut` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `objet_annonce`
--

INSERT INTO `objet_annonce` (`id`, `titre`, `Instants_de_consommation`, `description`, `ambiance`, `composante_du_repas`, `prise_de_vue`, `region`, `date`, `statut`, `image`) VALUES
(48, 'Ecran Pc ASUS XG49VQ ', '', 'ASUS XG49VQ.\r\nTaille de l\'écran: 124,5 cm (49\"), Résolution de l\'écran: 3840 x 1080 pixels, Type HD: UltraWide Quad HD, Technologie d\'affichage: LED, Temps de réponse: 4 ms, Format d\'image: 32:9, Angle de vision horizontal: 178°, Angle de vision vertical: 178°.\r\nHaut-parleurs intégrés.\r\nConcentrateur USB intégré.\r\nMontage VESA, Réglage de la hauteur.\r\nCouleur du produit: Noir', 'bien', 'oui', 'avion2', 'PassionFroid', '2020-06-16', 'Inactif', 'ecransamsung.jpg'),
(53, 'non', '', 'non non', 'bien', 'oui', 'bas', 'PassionFroid', '2001-02-02', 'Actif', 'jack the ripper.jpg'),
(54, '13', '', '1231655165165', 'bien', 'non', 'droite', 'PassionFroid', '5545-02-25', 'Actif', 'la team.png'),
(55, 'oue', '1234', 'gros oue', 'bien', '', '', '', '2022-02-02', 'Actif', 'images.png'),
(56, 'début', '', 'on commence', '', '', '', '', '2222-02-02', 'Actif', 'sasaki kujiro.PNG');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET latin1 NOT NULL,
  `firstname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `surname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `password` varchar(100) CHARACTER SET latin1 NOT NULL,
  `image` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `surname`, `email`, `password`, `image`) VALUES
(0, 'administrateur', 'administrateur', 'administrateur', 'admin@gmail.com', '240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `objet_annonce`
--
ALTER TABLE `objet_annonce`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `objet_annonce`
--
ALTER TABLE `objet_annonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
