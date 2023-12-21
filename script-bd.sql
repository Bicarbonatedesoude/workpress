-- Créer la base de données
CREATE DATABASE IF NOT EXISTS maheu;
USE maheu;

-- Créer la table pour stocker les types d'insectes
CREATE TABLE IF NOT EXISTS type_insecte (
    id_type_insecte INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom_type_insecte VARCHAR(100) NOT NULL
);

-- Créer la table pour stocker les informations sur les insectes
CREATE TABLE IF NOT EXISTS insecte (
    id_insecte INTEGER PRIMARY KEY AUTO_INCREMENT,
    nom_insecte VARCHAR(255),
    url_image VARCHAR(255),
    type_insecte_id INTEGER,
    FOREIGN KEY (type_insecte_id) REFERENCES type_insecte(id_type_insecte)
);
-- Insérer des types d'insectes
INSERT INTO type_insecte (nom_type_insecte) 
VALUES ('Animaux'),
	('Insectes'),
	('Insectes volants'),
	('Arachnides'),
	('Acariens');

-- Insérer des informations sur les insectes
INSERT INTO insecte (nom_insecte, url_image, type_insecte_id) VALUES
('Raton-laveur', 'https://static.wixstatic.com/media/ba9fcd_792fd67560514c6799c8c6eef8503651~mv2.jpg/v1/fill/w_725,h_903,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/ba9fcd_792fd67560514c6799c8c6eef8503651~mv2.jpg', 1),
('Cloporte', 'https://static.wixstatic.com/media/ba9fcd_8f05128f1ce54db1ab7d7cd4261a6cd5~mv2.jpg/v1/fill/w_578,h_720,al_c,q_85,enc_auto/ba9fcd_8f05128f1ce54db1ab7d7cd4261a6cd5~mv2.jpg', 2),
('Punaise de lit', 'https://asdepic.com/wp-content/uploads/2021/12/visuel-punaise-de-lit.jpg', 2),
('Puce', 'https://static.wixstatic.com/media/ba9fcd_5671869f4e484ba2b85e7238651a5581~mv2.jpg/v1/fill/w_677,h_844,al_c,q_85,enc_auto/ba9fcd_5671869f4e484ba2b85e7238651a5581~mv2.jpg', 2),
('Coccinelle', 'https://static.wixstatic.com/media/e0043c_de856942b3a443a49e520fa8409821ca~mv2.jpg/v1/fill/w_493,h_615,al_c,q_80,enc_auto/e0043c_de856942b3a443a49e520fa8409821ca~mv2.jpg', 3),
('Dermeste du lard', 'https://static.wixstatic.com/media/ba9fcd_b1e168e10e69492da21aad5a84bfd42d~mv2.jpg/v1/fill/w_468,h_583,al_c,q_80,enc_auto/ba9fcd_b1e168e10e69492da21aad5a84bfd42d~mv2.jpg', 3);



SELECT * FROM type_insecte;
SELECT * FROM insecte;




