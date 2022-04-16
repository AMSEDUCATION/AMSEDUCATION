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
-- Base de données : `dbcaiwl`
--

-- --------------------------------------------------------

--
-- Structure de la table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 8, 1, 'userid'),
(10, '000', 13, 1, 'ExerciseID'),
(12, '000', 34, 1, 'BLOGID'),
(13, '0', 5, 1, 'STUDENTID');

-- --------------------------------------------------------

--
-- Structure de la table `tblexercise`
--

CREATE TABLE `tblexercise` (
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `Question` text NOT NULL,
  `ChoiceA` text NOT NULL,
  `ChoiceB` text NOT NULL,
  `ChoiceC` text NOT NULL,
  `ChoiceD` text NOT NULL,
  `Answer` varchar(90) NOT NULL,
  `ExercisesDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblexercise`
--

INSERT INTO `tblexercise` (`ExerciseID`, `LessonID`, `Question`, `ChoiceA`, `ChoiceB`, `ChoiceC`, `ChoiceD`, `Answer`, `ExercisesDate`) VALUES
(20180001, 6, 'Le logiciel utilisé dans la video', 'Bootstrap', 'VIsual Studio code', 'Filezilla', 'Netflix', 'Filezilla', '0000-00-00'),
(20180002, 6, 'Combien de dossiers on peut ajouter au serveur ', '1', '2', '10000', 'Stockage du serveur', 'Stockage du serveur', '0000-00-00'),
(20220003, 8, 'La structure du Cv est ', 'Dynamique', 'Static', 'Fixe ', 'Modifiable', 'Fixe', '0000-00-00'),
(20220004, 21, 'Lequel des énoncés suivants n’est pas une déclaration de nom de variable valide?', 'int __a7;', 'int __7a;', 'int __A7;', 'Aucune de ces réponses', 'Aucune de ces réponses', '0000-00-00'),
(20220005, 21, 'Lequel des énoncés suivants n’est pas une déclaration de nom de variable valide?', 'int _a7;', 'int a_7;', 'int 7_a;', 'int _7a', 'int 7_a;', '0000-00-00'),
(20220006, 21, 'Les noms de variables commençant par underscore ne sont pas encouragés. Pourquoi?', 'Il n’est pas normalisé', 'Pour éviter les conflits puisque les assembleurs et les compilateurs peuvent utiliser des variables contenant underscore', 'Pour éviter les conflits puisque les routines de bibliothèque peuvent utiliser des variables contenant underscore', 'Pour éviter les conflits avec les variables d’environnement d’un système d’exploitation', 'Pour éviter les conflits puisque les routines de bibliothèque peuvent utiliser des variabl', '0000-00-00'),
(20220007, 21, 'Tous les mots-clés dans C sont en ______?', 'lettres minuscules', 'lettres majuscules', 'lettres CamelCase', 'Aucun de ces réponses', 'lettres minuscules', '0000-00-00'),
(20220008, 21, 'Résolution des noms de variables dépend de _______?', 'L’implémentations du compilateur et de l’éditeur de liens', 'L’implémentation de l’assembleur et du loader', 'Langage C', 'Aucun de ces réponses', 'L’implémentations du compilateur et de l’éditeur de liens', '0000-00-00'),
(20220009, 6, 'À quoi sert FTP', 'À transférer des fichiers informatiques', 'À transférer des protocoles', 'À transférer des informations confidentielles', 'À transférer des informations relatives aux protocoles', 'À transférer des fichiers informatiques', '0000-00-00'),
(202200010, 6, 'Les logiciels FTP permettent :', 'Le téléchargement de fichiers (download) seulement', 'L\'expédition de fichiers (upload) seulement', 'Le téléchargement et l\'expédition de fichiers', 'de relever vos e-mails', 'Le téléchargement et l\'expédition de fichiers', '0000-00-00'),
(202200011, 6, 'Un FTP anonyme est service :', 'où l\'on peut lire des formulaires transparents', 'auquel on ne peut pas accéder sans compte, ni mot de passe', 'où l\'on peut conserver son anonymat', 'auquel on peut accéder sans compte, ni mot de passe', 'auquel on peut accéder sans compte, ni mot de passe', '0000-00-00'),
(202200012, 6, 'L\'objectif de la compression des fichiers est de :', 'réduire l\'espace de stockage et faciliter le transfert', 'permettre la décompression du fichier', 'améliorer la qualité des images', 'mettre en évidence des extentions spécifiques', 'réduire l\'espace de stockage et faciliter le transfert', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `tbllesson`
--

CREATE TABLE `tbllesson` (
  `LessonID` int(11) NOT NULL,
  `LessonChapter` varchar(90) NOT NULL,
  `LessonTitle` varchar(90) NOT NULL,
  `FileLocation` text NOT NULL,
  `Category` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tbllesson`
--

INSERT INTO `tbllesson` (`LessonID`, `LessonChapter`, `LessonTitle`, `FileLocation`, `Category`) VALUES
(6, 'FTP ', 'video file transfer protocol', 'files/Deploy Laravel To Shared Hosting The Easy Way - YouTube.MP4', 'Video'),
(9, 'Analyse', 'Cours de derivabilité', 'files/2 Cours Dérivabilite.pdf', 'Docs'),
(10, 'Algébre', 'Chap 2 Determinants', 'files/2 Determinanant (Chapitre2).pdf', 'Docs'),
(11, 'Analyse', 'Developpement limité', 'files/3 Cours DL.pdf', 'Docs'),
(12, 'Programmation C', 'Structures Conditionnels', 'files/4-IStructures-conditionnelles.pdf', 'Docs'),
(13, 'Programmation C', 'Tableaux', 'files/6-Tableaux.pdf', 'Docs'),
(14, 'Introductions au Réseaux', 'Réseaux ACS', 'files/CoursACS_ESTS_2020_Partie1.pdf', 'Docs'),
(15, 'Algorithmes', 'Les boucles', 'files/TD3-Algo-Boucles[1].pdf', 'Docs'),
(16, 'Algébre', 'TD dterminants', 'files/td determinants.pdf', 'Docs'),
(17, 'Programmation Réseaux', 'Prog reseaux', 'files/Programmation Réseaux 2022.pdf', 'Docs'),
(18, 'Algorithmes', 'Quizz Algorithmes', 'files/Quiz Algotithme (1).pdf', 'Docs'),
(19, 'Electronique Numerique', 'Simplification fonctions', 'files/Simplification des fonctions logiques.pdf', 'Docs'),
(20, 'Programmation WEB', 'HTML5', 'files/2-HTML5.pdf', 'Docs'),
(21, 'Programmation Web', 'Notions de base', 'files/4-notions de base-php.pdf', 'Docs'),
(22, 'Programmation Web', 'CSS', 'files/3-CSS .pdf', 'Docs'),
(23, 'Programmation Web', 'Formulaires PHP', 'files/4-formulaires-php .pdf', 'Docs'),
(24, 'PLSQL', 'les triggers', 'files/4-les triggers.pdf', 'Docs'),
(25, 'PLSQL', 'fonctions', 'files/3-PLSQL-Fonctions.pdf', 'Docs'),
(26, 'PLSQL', 'procedures', 'files/2-PLSQL-Procedures.pdf', 'Docs'),
(27, 'PLSQL', '2021 2022', 'files/1-pl-sql 2021 2022.pdf', 'Docs'),
(28, 'Analyse', 'Derivation ration', 'files/4- Derivation & Integration .pdf', 'Docs'),
(29, 'Analyse', 'Methodes numeriques', 'files/3- Méthodes numeriques.pdf', 'Docs'),
(30, 'Algebre', 'Suites', 'files/1_Suites Rappel.pdf', 'Docs'),
(31, 'Analyse', 'Series numeriques', 'files/2_séries numériques.pdf', 'Docs'),
(32, 'Merise', 'Merise', 'files/Merise 60 affaires classees.pdf', 'Docs'),
(33, 'Merise', 'Analyse et conception', 'files/Analyse et conception de systèmes d\'information .pdf', 'Docs'),
(34, 'SQL', 'chap4', 'files/3.chap4.SQL.pdf', 'Docs'),
(35, 'SQL', 'memo sql', 'files/memo sql.pdf', 'Docs'),
(36, 'SQL', 'SQL', 'files/2.SQL.pdf', 'Docs'),
(37, 'TEC', 'TEC', 'files/Bases PNL.pdf', 'Docs'),
(38, 'Algorithmes', 'Introduction a l\'algorithmique', 'files/1.Introduction à l\'algorithmique .pdf', 'Docs'),
(39, 'Algorithmes', 'Structures de controle', 'files/2.structures de contrôle .pdf', 'Docs'),
(40, 'Language C', 'Langage C', 'files/4.1.Langage C.pdf', 'Docs'),
(41, 'Language C', 'Printf Scanf', 'files/4.2.Langage C _ printf et scanf.pdf', 'Docs'),
(42, 'Language C', 'Pointeurs', 'files/4.4.Langage C _ pointeurs.pdf', 'Docs'),
(43, 'Language C', 'TP1', 'files/TP1-C.pdf', 'Docs'),
(44, 'Language C', 'TP2', 'files/TP2-C.pdf', 'Docs'),
(45, 'Language C', 'Boucles ', 'files/TD3.2 - Boucles.pdf', 'Docs'),
(46, 'Language C', 'Structures repetitives', 'files/TD3 - structures repetitive .pdf', 'Docs'),
(47, 'Language C', 'fonctions', 'files/TP4-C-Fonctions.pdf', 'Docs'),
(48, 'MAD', 'MAD', 'files/MAD_Pr. ELOUALI_ ESTS_09-2020_PDF..pdf', 'Docs'),
(49, 'XML', 'XML', 'files/EXAM XML 2022.pdf', 'Docs'),
(50, 'EXAM', 'EXAM XML', 'files/EXAM XML 2021.pdf', 'Docs'),
(51, 'EXAM', 'EXAM UML', 'files/EXAM UML 2022.pdf', 'Docs'),
(52, 'EXAM', 'EXAM UML', 'files/EXAM UML 2021.pdf', 'Docs'),
(53, 'EXAM', 'EXAM SQL ORACLE', 'files/EXAM SQL ORACLE & PLSQL 2022 pr Lefdaoui.pdf', 'Docs'),
(54, 'EXAM', 'EXAM RECHERCHE OPERATIONNELLE', 'files/EXAM RECHERCHE OPPERATONELLE 2021.pdf', 'Docs'),
(55, 'EXAM', 'EXAM PLSQL', 'files/EXAM PL SQL 2021.pdf', 'Docs'),
(56, 'EXAM', 'EXAM GESTION PROJET', 'files/EXAM GESTION DE PROJET 2021.pdf', 'Docs'),
(57, 'EXAM', 'EXAM', 'files/EXAM ANALYSE NUMÉRIQUE 2021.pdf', 'Docs'),
(58, 'CONTROLE', 'CONROLE XML', 'files/CONTRÔLE XML 2022.pdf', 'Docs'),
(59, 'CONTROLE', 'CONTROLE RECHERCHE OPERTIONNELLE', 'files/CONTRÔLE RECHERCHE OPPERATONELLE 2022 (1).pdf', 'Docs'),
(60, 'CONTROLE', 'CONTROLE JAVA', 'files/CONTRÔLE JAVA 2022.pdf', 'Docs'),
(61, 'CONTROLE', 'CONTROLE ANALYSE', 'files/CONTRÔLE ANALYSE 2022.pdf', 'Docs'),
(62, 'HTML5', 'HTML5', 'files/2-HTML5.pdf', 'Docs'),
(63, 'Language C', 'fonctions', 'files/2-HTML5.pdf', 'Docs');

-- --------------------------------------------------------

--
-- Structure de la table `tblscore`
--

CREATE TABLE `tblscore` (
  `ScoreID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `NoItems` int(11) NOT NULL DEFAULT 1,
  `Score` int(11) NOT NULL,
  `Submitted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblscore`
--

INSERT INTO `tblscore` (`ScoreID`, `LessonID`, `ExerciseID`, `StudentID`, `NoItems`, `Score`, `Submitted`) VALUES
(9, 6, 20180001, 1, 1, 1, 1),
(10, 6, 20180002, 1, 1, 1, 1),
(11, 6, 20180001, 3, 1, 0, 1),
(12, 6, 20180002, 3, 1, 1, 1),
(13, 8, 20220003, 3, 1, 0, 1),
(14, 21, 20220008, 8, 1, 1, 1),
(15, 21, 20220007, 8, 1, 1, 1),
(16, 21, 20220005, 8, 1, 1, 1),
(17, 21, 20220004, 8, 1, 1, 1),
(18, 6, 20180001, 9, 1, 1, 1),
(19, 6, 20180002, 9, 1, 1, 1),
(20, 6, 20220009, 9, 1, 1, 1),
(21, 6, 202200010, 9, 1, 1, 1),
(22, 6, 202200011, 9, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `StudentID` int(11) NOT NULL,
  `Fname` varchar(90) NOT NULL,
  `Lname` varchar(90) NOT NULL,
  `Address` varchar(90) NOT NULL,
  `MobileNo` varchar(90) NOT NULL,
  `STUDUSERNAME` varchar(90) NOT NULL,
  `STUDPASS` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentID`, `Fname`, `Lname`, `Address`, `MobileNo`, `STUDUSERNAME`, `STUDPASS`) VALUES
(3, 'Mehdi', 'Chihab', 'hay karima salé', '062235607', 'Mehdi', 'd8932fd49bb05ff0670c3545d15547cb7baaf208'),
(4, 'Sanae', 'Chenaf', 'Temara', '0622598475', 'Sanae', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(5, 'Achraf', 'Akrim', 'hay chemaou', '0614875542', 'Achraf', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(6, 'Ahmed', 'Rabah', 'Salé', '0611478875', 'Ahmed', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(7, 'Hiba', 'Alaoui', 'Salé', '0655874154', 'Hiba', 'd033e22ae348aeb5660fc2140aec35850c4da997'),
(8, 'Ayman', 'Alaoui', 'Salé', '06557844784', 'Ayman', '4f8ba4da25979e93f24b3c4fb8602849392d947c'),
(9, 'Nassim', 'Nassim', 'salé', '06549846548', 'nassim', 'dfa8b570f448cb6949aec9625f85ef110ca320cb');

-- --------------------------------------------------------

--
-- Structure de la table `tblstudentquestion`
--

CREATE TABLE `tblstudentquestion` (
  `SQID` int(11) NOT NULL,
  `ExerciseID` int(11) NOT NULL,
  `LessonID` int(11) NOT NULL,
  `StudentID` int(11) NOT NULL,
  `Question` varchar(90) NOT NULL,
  `CA` varchar(90) NOT NULL,
  `CB` varchar(90) NOT NULL,
  `CC` varchar(90) NOT NULL,
  `CD` varchar(90) NOT NULL,
  `QA` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblstudentquestion`
--

INSERT INTO `tblstudentquestion` (`SQID`, `ExerciseID`, `LessonID`, `StudentID`, `Question`, `CA`, `CB`, `CC`, `CD`, `QA`) VALUES
(1, 20180002, 0, 1, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(2, 20180002, 0, 2, 'Who is the name of the character in the story?', 'Ben', 'Holly', 'Gaston', 'Wise old elf', 'Gaston'),
(3, 20220003, 8, 1, 'La structure du Cv est ', 'Dynamique', 'Static', 'Fixe ', 'Modifiable', 'Fixe'),
(4, 20220003, 8, 2, 'La structure du Cv est ', 'Dynamique', 'Static', 'Fixe ', 'Modifiable', 'Fixe'),
(5, 20220003, 8, 3, 'La structure du Cv est ', 'Dynamique', 'Static', 'Fixe ', 'Modifiable', 'Fixe'),
(6, 20220004, 21, 1, 'Lequel des énoncés suivants n’est pas une déclaration de nom de variable valide?', 'int __a7;', 'int __7a;', 'int __A7;', 'Aucune de ces réponses', 'Aucune de ces réponses'),
(7, 20220004, 21, 2, 'Lequel des énoncés suivants n’est pas une déclaration de nom de variable valide?', 'int __a7;', 'int __7a;', 'int __A7;', 'Aucune de ces réponses', 'Aucune de ces réponses'),
(8, 20220004, 21, 3, 'Lequel des énoncés suivants n’est pas une déclaration de nom de variable valide?', 'int __a7;', 'int __7a;', 'int __A7;', 'Aucune de ces réponses', 'Aucune de ces réponses'),
(9, 20220005, 21, 1, 'Lequel des énoncés suivants n’est pas une déclaration de nom de variable valide?', 'int _a7;', 'int a_7;', 'int 7_a;', 'int _7a', 'int 7_a;'),
(10, 20220005, 21, 2, 'Lequel des énoncés suivants n’est pas une déclaration de nom de variable valide?', 'int _a7;', 'int a_7;', 'int 7_a;', 'int _7a', 'int 7_a;'),
(11, 20220005, 21, 3, 'Lequel des énoncés suivants n’est pas une déclaration de nom de variable valide?', 'int _a7;', 'int a_7;', 'int 7_a;', 'int _7a', 'int 7_a;'),
(12, 20220006, 21, 1, 'Les noms de variables commençant par underscore ne sont pas encouragés. Pourquoi?', 'Il n’est pas normalisé', 'Pour éviter les conflits puisque les assembleurs et les compilateurs peuvent utiliser des ', 'Pour éviter les conflits puisque les routines de bibliothèque peuvent utiliser des variabl', 'Pour éviter les conflits avec les variables d’environnement d’un système d’exploitation', 'Pour éviter les conflits puisque les routines de bibliothèque peuvent utiliser des variabl'),
(13, 20220006, 21, 2, 'Les noms de variables commençant par underscore ne sont pas encouragés. Pourquoi?', 'Il n’est pas normalisé', 'Pour éviter les conflits puisque les assembleurs et les compilateurs peuvent utiliser des ', 'Pour éviter les conflits puisque les routines de bibliothèque peuvent utiliser des variabl', 'Pour éviter les conflits avec les variables d’environnement d’un système d’exploitation', 'Pour éviter les conflits puisque les routines de bibliothèque peuvent utiliser des variabl'),
(14, 20220006, 21, 3, 'Les noms de variables commençant par underscore ne sont pas encouragés. Pourquoi?', 'Il n’est pas normalisé', 'Pour éviter les conflits puisque les assembleurs et les compilateurs peuvent utiliser des ', 'Pour éviter les conflits puisque les routines de bibliothèque peuvent utiliser des variabl', 'Pour éviter les conflits avec les variables d’environnement d’un système d’exploitation', 'Pour éviter les conflits puisque les routines de bibliothèque peuvent utiliser des variabl'),
(15, 20220007, 21, 1, 'Tous les mots-clés dans C sont en ______?', 'lettres minuscules', 'lettres majuscules', 'lettres CamelCase', 'Aucun de ces réponses', 'lettres minuscules'),
(16, 20220007, 21, 2, 'Tous les mots-clés dans C sont en ______?', 'lettres minuscules', 'lettres majuscules', 'lettres CamelCase', 'Aucun de ces réponses', 'lettres minuscules'),
(17, 20220007, 21, 3, 'Tous les mots-clés dans C sont en ______?', 'lettres minuscules', 'lettres majuscules', 'lettres CamelCase', 'Aucun de ces réponses', 'lettres minuscules'),
(18, 20220008, 21, 1, 'Résolution des noms de variables dépend de _______?', 'L’implémentations du compilateur et de l’éditeur de liens', 'L’implémentation de l’assembleur et du loader', 'Langage C', 'Aucun de ces réponses', 'L’implémentations du compilateur et de l’éditeur de liens'),
(19, 20220008, 21, 2, 'Résolution des noms de variables dépend de _______?', 'L’implémentations du compilateur et de l’éditeur de liens', 'L’implémentation de l’assembleur et du loader', 'Langage C', 'Aucun de ces réponses', 'L’implémentations du compilateur et de l’éditeur de liens'),
(20, 20220008, 21, 3, 'Résolution des noms de variables dépend de _______?', 'L’implémentations du compilateur et de l’éditeur de liens', 'L’implémentation de l’assembleur et du loader', 'Langage C', 'Aucun de ces réponses', 'L’implémentations du compilateur et de l’éditeur de liens'),
(21, 20220009, 6, 3, 'À quoi sert FTP', 'À transférer des fichiers informatiques', 'À transférer des protocoles', 'À transférer des informations confidentielles', 'À transférer des informations relatives aux protocoles', 'À transférer des fichiers informatiques'),
(22, 20220009, 6, 4, 'À quoi sert FTP', 'À transférer des fichiers informatiques', 'À transférer des protocoles', 'À transférer des informations confidentielles', 'À transférer des informations relatives aux protocoles', 'À transférer des fichiers informatiques'),
(23, 20220009, 6, 5, 'À quoi sert FTP', 'À transférer des fichiers informatiques', 'À transférer des protocoles', 'À transférer des informations confidentielles', 'À transférer des informations relatives aux protocoles', 'À transférer des fichiers informatiques'),
(24, 20220009, 6, 6, 'À quoi sert FTP', 'À transférer des fichiers informatiques', 'À transférer des protocoles', 'À transférer des informations confidentielles', 'À transférer des informations relatives aux protocoles', 'À transférer des fichiers informatiques'),
(25, 20220009, 6, 7, 'À quoi sert FTP', 'À transférer des fichiers informatiques', 'À transférer des protocoles', 'À transférer des informations confidentielles', 'À transférer des informations relatives aux protocoles', 'À transférer des fichiers informatiques'),
(26, 20220009, 6, 8, 'À quoi sert FTP', 'À transférer des fichiers informatiques', 'À transférer des protocoles', 'À transférer des informations confidentielles', 'À transférer des informations relatives aux protocoles', 'À transférer des fichiers informatiques');

-- --------------------------------------------------------

--
-- Structure de la table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` int(11) NOT NULL,
  `NAME` varchar(90) NOT NULL,
  `UEMAIL` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `TYPE` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `NAME`, `UEMAIL`, `PASS`, `TYPE`) VALUES
(1, 'Ahmed Fawzi', 'Ahmed', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(2, 'Mohammed amine', 'Mohammed', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(3, 'Khadija Antar', 'Khadija', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(4, 'Ayman wadi3', 'Ayman', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(5, 'Badr Ouejdi', 'Badr', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Index pour la table `tblexercise`
--
ALTER TABLE `tblexercise`
  ADD PRIMARY KEY (`ExerciseID`);

--
-- Index pour la table `tbllesson`
--
ALTER TABLE `tbllesson`
  ADD PRIMARY KEY (`LessonID`);

--
-- Index pour la table `tblscore`
--
ALTER TABLE `tblscore`
  ADD PRIMARY KEY (`ScoreID`);

--
-- Index pour la table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`StudentID`) USING BTREE;

--
-- Index pour la table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  ADD PRIMARY KEY (`SQID`);

--
-- Index pour la table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `tblexercise`
--
ALTER TABLE `tblexercise`
  MODIFY `ExerciseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202200013;

--
-- AUTO_INCREMENT pour la table `tbllesson`
--
ALTER TABLE `tbllesson`
  MODIFY `LessonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `tblscore`
--
ALTER TABLE `tblscore`
  MODIFY `ScoreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `StudentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `tblstudentquestion`
--
ALTER TABLE `tblstudentquestion`
  MODIFY `SQID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
