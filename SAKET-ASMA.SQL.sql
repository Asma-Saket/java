1/SELECT SHA1('test11');
SELECT * 
FROM `client` 
WHERE `password`='100c4e57374fc998e57164d4c0453bd3a4876a58' AND `prenom`='Muriel';
2/SELECT nom ,COUNT(*) as nombre_commande 
FROM `commande_ligne`
GROUP BY nom
HAVING nombre_commande >1;
3/SELECT nom ,COUNT(*) as nombre_commande  ,id FROM `commande_ligne`
GROUP BY nom
HAVING nombre_commande >1
4/SELECT id,`quantite`*`prix_unitaire`AS 'prix_total' 
FROM `commande_ligne`
5/SELECT client.nom ,client.prenom ,commande.date_achat,`quantite`*`prix_unitaire`AS 'prix_total' 
FROM `commande_ligne`
JOIN commande ON `commande_id`=commande.id
JOIN client ON commande_id=client.id
6/
7/SELECT DISTINCT commande_id,MONTH(commande.date_achat),`quantite`*`prix_unitaire`AS 'prix_total' 
FROM `commande_ligne`
JOIN commande ON `commande_id`=commande.id
8/SELECT client.nom ,client.prenom ,commande.date_achat,`quantite`*`prix_unitaire`AS 'prix_total' 
FROM `commande_ligne`
JOIN commande ON `commande_id`=commande.id
JOIN client ON commande_id=client.id 
ORDER BY 'prix_total'DESC
LIMIT 10
9/SELECT commande_id,commande.date_achat,`quantite`*`prix_unitaire`AS 'prix_total' 
FROM `commande_ligne`
JOIN commande ON `commande_id`=commande.id
JOIN client ON commande_id=client.id
GROUP BY commande.date_achat
10/ALTER TABLE commande
ADD category INT(255)
12/create table 'commande_category'
(descriptif varchar(250));
13/INSERT INTO 'commande_category' ('descriptif')
VALUES ("descriptif1");	
INSERT INTO 'commande_category' ('descriptif')
VALUES ("descriptif2");	
INSERT INTO 'commande_category' ('descriptif')
VALUES ("descriptif3");	
INSERT INTO 'commande_category' ('descriptif')
VALUES ("descriptif4");	
