-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 23 fév. 2021 à 11:22
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
(57, 'fromage', '&agrave; emporter', 'du bon fromage ', 'amis / famille', 'entr&eacute;e', 'de haut', 'PassionFroid', '2021-02-23', 'Actif', '58585-RC.jpg'),
(58, 'salade coleslaw', 'maison / restaurant', 'une petite salade pour accompagner un plat', 'diner avec des coll&egrave;gues', 'entr&eacute;e', 'de haut ', 'PassionFroid', '2021-02-22', 'Actif', '12249_Salade coleslaw PassionFroid.jpg'),
(59, 'eclair', '', 'petit plaisir sucré', 'amis / seul / famille', 'dessert', 'haut de coté', 'PassionFroid', '2021-02-23', 'Actif', '31493_Eclair parfum vanille 45 g Pasquier.jpg'),
(61, 'viande crue', 'restaurant', 'viande accompagnant un plat', 'diner avec des coll&egrave;gues', 'plat', 'de haut pris sur un cot&eacute;', 'PassionFroid', '2021-02-23', 'Actif', '14451.jpg');

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
-- AUTO_INCREMENT pour la table `objet_annonce`
--
ALTER TABLE `objet_annonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
