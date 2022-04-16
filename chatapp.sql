-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 28 mars 2022 à 16:39
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `chatapp`
--

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 161467286, 1455172963, 'monsieur svp'),
(2, 1227173552, 871178754, 'Bonjours Monsieur'),
(3, 1227173552, 635848809, 'bonjours monsieur');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 161467286, 'mehdi', 'chihab', 'elmahdichihab2001@gmail.com', 'f9c24b8f961d48841a9838cca5274d8d', '1648396377IMG_0109.jpg', 'Offline now'),
(2, 1455172963, 'achraf ', 'akrim', 'achrafakrim@gmail.com', 'c36d6e43044252ab121a52138e5aacb0', '16483964540F86942A-9509-4C4D-9B7B-CB79A6DBCFB8.jpg', 'Offline now'),
(3, 1143633265, 'Sanae', 'chenaf', 'sanaechenaf@gmail.com', 'abe06127db637fb753104b53db97aae0', '1648396973271881605_1517548861979394_8142610374552614012_n.jpg', 'Offline now'),
(4, 871178754, 'Ahmed', 'Rabah', 'ahmed@gmail.com', '7f1e43d880f09c64ac6378af6de47702', '1648474084images.jpg', 'Offline now'),
(5, 825337096, 'Fahd', 'Zine', 'Fahd@gmail.com', '422c206f7b68d3d63d3ce17c69e17718', '1648474134téléchargement (1).jpg', 'Offline now'),
(6, 684369787, 'Prof ', 'Fawzi', 'fawzi@gmail.com', '848d24d27f0d94e510e8c0aac8779609', '1648474164prof.jpg', 'Offline now'),
(7, 1161190116, 'Prof', 'Khadija', 'khadija@gmail.com', 'b7a6160e5ce438783ed4f4b29f0dce5c', '1648474195prof.jpg', 'Offline now'),
(8, 1352521753, 'Prof', 'Yassir', 'yassir@gmail.com', '7fb37b2fcb7ec6b925eacbf71f9f9b65', '1648474228prof.jpg', 'Offline now'),
(9, 1227173552, 'Prof', 'Youssef', 'youssef@gmail.com', '09f96867a8dc816a021fd861f200abef', '1648474270prof.jpg', 'Active now'),
(10, 635848809, 'Achraf', 'tebaa', 'achraf@gmail.com', 'c36d6e43044252ab121a52138e5aacb0', '1648474963téléchargement (2).jpg', 'Offline now');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
