INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_police','L.S.P.D',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_police', 'L.S.P.D', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_police','L.S.P.D',1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('police', 'L.S.P.D', 1)
;

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	('police', 0, 'recruite', 'Recrut', 10, '', ''),
	('police', 1, 'officer', 'Officier', 20, '', ''),
	('police', 2, 'sergeant', 'Sergent', 30, '', ''),
	('police', 3, 'sergeant', 'Sergent-Formateur', 40, '', ''),
	('police', 4, 'sergeant', 'Sergent-Chef', 60, '', ''),
	('police', 5, 'lieutenant', 'Lieutenant', 80, '', ''),
	('police', 6, 'lieutenant', 'Capitaine', 100, '', ''),
  ('police', 7, 'boss', 'Commandant', 100, '', '')
;

ALTER TABLE `owned_vehicles` ADD `society` VARCHAR(30) DEFAULT NULL;

CREATE TABLE `gestiondetenu` (
  `id` int(12) NOT NULL,
  `nomdetenu` varchar(20) NOT NULL,
  `nomjoueurquimetdetenu` varchar(30) NOT NULL,
  `inventaire` varchar(10000) NOT NULL,
  `date` text NOT NULL,
  `accesautoriser` varchar(10) NOT NULL DEFAULT '0',
  `licencejoueur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `gestiondetenu`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `gestiondetenu`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

CREATE TABLE `gestionstockvoiture` (
  `id` int(12) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `grade` varchar(100) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `gestionstockvoiture`
  ADD PRIMARY KEY (`id`);
  
  ALTER TABLE `gestionstockvoiture`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

CREATE TABLE `gestionstockarmurie` (
  `id` int(12) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `grade` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `gestionstockarmurie`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `gestionstockarmurie`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;


CREATE TABLE `gestionstandtir` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `date` text NOT NULL,
  `pourcentage` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `gestionstandtir`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `gestionstandtir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

CREATE TABLE `gestionpermlspd` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `perm` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `gestionpermlspd` (`id`, `label`, `perm`) VALUES
(1, 'Accès Base de donnée voiture', 4),
(2, 'Accès Casier Judiciaire', 0),
(3, 'Accès Stock LSPD', 0),
(4, 'Accès au Vestiaire', 0),
(5, 'Modification des Tenues', 7),
(6, 'Accès Laboratoire Controle', 0),
(7, 'Accès Coffre Des Détenus', 0),
(8, 'Accès Stand de Tire', 0),
(9, 'Accès Points Patron', 1),
(10, 'Accès Armurerie', 0),
(11, 'Gestion Accès Garage', 0),
(12, 'Gestion Accès Héliport', 0),
(13, 'Gestion Accès Menu Extra', 0),
(14, 'Gestion Accès Fourrière', 0),
(15, 'Gestion des Caméra', 0);

ALTER TABLE `gestionpermlspd`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gestionpermlspd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;


CREATE TABLE `gestioncamera` (
  `id` int(12) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `coord` varchar(100) NOT NULL,
  `emplacementname` varchar(20) NOT NULL,
  `heading` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `gestioncamera`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `gestioncamera`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;


CREATE TABLE `vestiaireLspd` (
  `id` int(12) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `nomdetenu` varchar(100) NOT NULL,
  `tenu` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `vestiaireLspd`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `vestiaireLspd`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

CREATE TABLE `gestionavislspd` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `date` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `reason` text NOT NULL,
  `dangerosite` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `gestionavislspd`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `gestionavislspd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

CREATE TABLE `casierlspd` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `date` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `casierlspd`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `casierlspd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;


CREATE TABLE `gestionplanninglspd` (
  `id` int(11) NOT NULL,
  `author` text NOT NULL,
  `date` text NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `reason` text NOT NULL,
  `demande` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `gestionplanninglspd`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `gestionplanninglspd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(2, 'Franchir une Ligne', 100, 0),
(3, 'Circulation à contresens', 250, 0),
(4, 'Demi-tour non autorisé', 250, 0),
(5, 'Circulation hors-route', 170, 0),
(6, 'Non-respect des distances de sécurité', 30, 0),
(7, 'Arrêt dangereux / interdit', 150, 0),
(8, 'Stationnement gênant / interdit', 70, 0),
(9, 'Non respect  de la priorité à droite', 70, 0),
(10, 'Non-respect à un véhicule prioritaire', 90, 0),
(11, 'Non-respect d\'un stop', 105, 0),
(12, 'Non-respect d\'un feu rouge', 130, 0),
(13, 'Dépassement dangereux', 100, 0),
(14, 'Véhicule non en état', 100, 0),
(15, 'Conduite sans permis', 1500, 0),
(16, 'Délit de fuite', 800, 0),
(17, 'Excès de vitesse < 5 kmh', 90, 0),
(18, 'Excès de vitesse 5-15 kmh', 120, 0),
(19, 'Excès de vitesse 15-30 kmh', 180, 0),
(20, 'Excès de vitesse > 30 kmh', 300, 0),
(21, 'Entrave de la circulation', 110, 1),
(22, 'Dégradation de la voie publique', 90, 1),
(23, 'Trouble à l\'ordre publique', 90, 1),
(24, 'Entrave opération de police', 130, 1),
(25, 'Insulte envers / entre civils', 75, 1),
(26, 'Outrage à agent de police', 110, 1),
(27, 'Menace verbale ou intimidation envers civil', 90, 1),
(28, 'Menace verbale ou intimidation envers policier', 150, 1),
(29, 'Manifestation illégale', 250, 1),
(30, 'Tentative de corruption', 1500, 1),
(31, 'Arme blanche sortie en ville', 120, 2),
(32, 'Arme léthale sortie en ville', 300, 2),
(33, 'Port d\'arme non autorisé (défaut de license)', 600, 2),
(34, 'Port d\'arme illégal', 700, 2),
(35, 'Pris en flag lockpick', 300, 2),
(36, 'Vol de voiture', 1800, 2),
(37, 'Vente de drogue', 1500, 2),
(38, 'Fabriquation de drogue', 1500, 2),
(39, 'Possession de drogue', 650, 2),
(40, 'Prise d\'ôtage civil', 1500, 2),
(41, 'Prise d\'ôtage agent de l\'état', 2000, 2),
(42, 'Braquage particulier', 650, 2),
(43, 'Braquage magasin', 650, 2),
(44, 'Braquage de banque', 1500, 2),
(45, 'Tir sur civil', 2000, 3),
(46, 'Tir sur agent de l\'état', 2500, 3),
(47, 'Tentative de meurtre sur civil', 3000, 3),
(48, 'Tentative de meurtre sur agent de l\'état', 5000, 3),
(49, 'Meurtre sur civil', 10000, 3),
(50, 'Meurte sur agent de l\'état', 30000, 3),
(51, 'Meurtre involontaire', 1800, 3),
(52, 'Escroquerie à l\'entreprise', 2000, 2);

ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;