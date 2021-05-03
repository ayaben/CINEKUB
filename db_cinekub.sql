-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 03 mai 2021 à 17:07
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_cinekub`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `lien` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `blog`
--

INSERT INTO `blog` (`id`, `titre`, `info`, `lien`, `image_path`) VALUES
(1, 'Blog1', 'ratatatatatatata blalalalalalalal', 'https://www.festival-cannes.com/fr/', 'image/cannes.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `evenement`
--

CREATE TABLE `evenement` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `date_evenement` datetime NOT NULL,
  `image_path` varchar(250) NOT NULL,
  `lien` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `evenement`
--

INSERT INTO `evenement` (`id`, `titre`, `info`, `date_evenement`, `image_path`, `lien`) VALUES
(1, 'Festival de Cannes ', 'La 74 édition :\r\nCetta année pour la première fois de son histoire, le Festival de Cannes déroulera  son tapis rouge en été ! ', '2021-05-11 09:45:20', 'image/cannes.jpg', 'https://www.festival-cannes.com/fr/'),
(2, 'Berlinale 2021', '71e édition du festival international du film de Berlin', '2021-04-10 09:45:20', 'image/berlinale.jpg', 'https://www.berlinale.de/en/home.html');

-- --------------------------------------------------------

--
-- Structure de la table `forum`
--

CREATE TABLE `forum` (
  `id` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `date_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

CREATE TABLE `partenaire` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `info` text NOT NULL,
  `url` varchar(200) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `partenaire`
--

INSERT INTO `partenaire` (`id`, `name`, `info`, `url`, `image_path`) VALUES
(1, 'ESE Azur SAS', 'ESE Azur SAS est fournisseur d\'équipement audio-visuel dans le secteur événementiel. La société a été créée en 2016 afin de supporter le fort développement de la société mère ESE European Show', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `auteur` varchar(50) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `desc_courte` text NOT NULL,
  `descrip` text NOT NULL,
  `lien` text NOT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`id`, `titre`, `auteur`, `genre`, `desc_courte`, `descrip`, `lien`, `image_path`) VALUES
(17, 'Une course contre la montre', 'TEZUKA Rumi', 'Action', 'Acteurs (1femme entre 20 ans et 30 ans, monteur', '', 'www.google.com', 'upload_images/photo7@1x.png'),
(18, 'Le Juste et L\'Injuste', 'DASILVA Martin', 'Policier', 'Comédiens, maquilleur, cadreur', '', 'www.youtube.com', 'upload_images/photo6@1x.png'),
(19, 'Grandir dans le danger', 'LAYDANA Moussa', 'Documentaire', 'Régisseur, monteur, cadreur', '', 'www.google.com', 'upload_images/photo5@1x.png'),
(20, 'L\'heure des Amateurs', 'BENAJAD Salima', 'Comédie', 'Comédiens, décorateur', '', 'www.youtube.com', 'upload_images/photo4@1x.png'),
(21, 'Fleur d\'espoir', 'DELAVOIX Lucide', 'Documentaire', 'Cadreur', '', 'www.youtube.com', 'upload_images/photo3@1x.png'),
(22, 'Les Ateliers du coeur', 'PIVOT Axele', 'Documentaire', 'Deux cadreurs, ingénieur du son', '', 'w', 'upload_images/photo2@1x.png');

-- --------------------------------------------------------

--
-- Structure de la table `projet_membre`
--

CREATE TABLE `projet_membre` (
  `id` int(11) NOT NULL,
  `id_membre` int(11) NOT NULL,
  `id_projet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tutorial`
--

CREATE TABLE `tutorial` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `image_path` varchar(250) NOT NULL,
  `lien` varchar(250) NOT NULL,
  `etat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tutorial`
--

INSERT INTO `tutorial` (`id`, `titre`, `info`, `image_path`, `lien`, `etat`) VALUES
(1, 'COMMENT ÉCRIRE UN SCÉNARIO AVEC CELTX', '', '', 'https://www.youtube.com/watch?v=n8lUliyf5co', 'pre-prod'),
(2, '8 étapes pour écrire un sénario', '', '', 'https://www.youtube.com/watch?v=vqgche8ohAU', 'pre-prod');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `evenement`
--
ALTER TABLE `evenement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_membre` (`id_membre`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partenaire`
--
ALTER TABLE `partenaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `projet_membre`
--
ALTER TABLE `projet_membre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_membre` (`id_membre`),
  ADD KEY `id_projet` (`id_projet`);

--
-- Index pour la table `tutorial`
--
ALTER TABLE `tutorial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `evenement`
--
ALTER TABLE `evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `forum`
--
ALTER TABLE `forum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `membre`
--
ALTER TABLE `membre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `partenaire`
--
ALTER TABLE `partenaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `projet_membre`
--
ALTER TABLE `projet_membre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tutorial`
--
ALTER TABLE `tutorial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `forum`
--
ALTER TABLE `forum`
  ADD CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id`);

--
-- Contraintes pour la table `projet_membre`
--
ALTER TABLE `projet_membre`
  ADD CONSTRAINT `projet_membre_ibfk_1` FOREIGN KEY (`id_membre`) REFERENCES `membre` (`id`),
  ADD CONSTRAINT `projet_membre_ibfk_2` FOREIGN KEY (`id_projet`) REFERENCES `projet` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
