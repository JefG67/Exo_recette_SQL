1-- Afficher toutes les recettes disponibles (nom de la recette, catégorie et temps de préparation) triées 
-- de façon décroissante sur la durée de réalisation

SELECT * 
FROM recette
ORDER BY temps DESC

2-- En modifiant la requête précédente, faites apparaître le nombre d’ingrédients nécessaire par recette.

  SELECT r.nom, COUNT(i.id_ingredient) AS nbIngredient
FROM recette r 
INNER JOIN preparer p ON p.id_recette = r.id_recette
INNER JOIN ingredient i ON i.id_ingredient = p.id_ingredient
GROUP BY r.nom

sans alias 
  
  SELECT recette.nom, COUNT(ingredient.id_ingredient) AS nbIngredient
FROM recette  
INNER JOIN preparer  ON preparer.id_recette = recette.id_recette
INNER JOIN ingredient  ON ingredient.id_ingredient = preparer.id_ingredient
GROUP BY recette.nom

3-- Afficher les recettes qui nécessitent au moins 30 min de préparation

  SELECT *
FROM recette
WHERE recette.temps >= 30;

4-- Afficher les recettes dont le nom contient le mot « Salade » (peu importe où est situé le mot en 
-- question)

  SELECT *
FROM recette
WHERE recette.nom  LIKE '%Salade%';

5-- Insérer une nouvelle recette : « Pâtes à la carbonara » dont la durée de réalisation est de 20 min avec 
-- les instructions de votre choix. Pensez à alimenter votre base de données en conséquence afin de 
-- pouvoir lister les détails de cette recettes (ingrédients)

  INSERT INTO recette(nom, temps, instruction)
VALUES ('Pâtes à la carbonara', 20, 'faire cuir des pates,crémes et lardon');

6-- Modifier le nom de la recette ayant comme identifiant id_recette = 3 (nom de la recette à votre 
-- convenance)

  UPDATE recette
SET nom = 'Galette au pommes'
WHERE id_recette = 3;
  
7-- Supprimer la recette n°2 de la base de données

  DELETE FROM recette
WHERE recette.nom = 'poulet au curry';
  
8-- Afficher le prix total de la recette n°5

  SELECT r.nom, SUM(i.prix*p.quantité) AS prixTotal
FROM recette r
INNER JOIN preparer p ON r.id_recette = p.id_recette
INNER JOIN ingredient i ON  p.id_ingredient = i.id_ingredient
WHERE r.id_recette = 5;

9-- Afficher le détail de la recette n°5 (liste des ingrédients, quantités et prix)

  SELECT ingredient.nom, preparer.`quantité`, ingredient.prix
FROM preparer 
INNER JOIN ingredient ON preparer.id_ingredient = ingredient.id_ingredient
WHERE preparer.id_recette = 5;

10-- Ajouter un ingrédient en base de données : Poivre, unité : cuillère à café, prix : 2.5 €

  INSERT INTO ingredient(nom, prix ,unité_mesure)
VALUES ('poivre', 2.5, 'cuillère à café');
  
11-- Modifier le prix de l’ingrédient n°12 (prix à votre convenance)

  UPDATE ingredient
SET prix = '5'
WHERE id_ingredient = 14;

12-- Afficher le nombre de recettes par catégories : X entrées, Y plats, Z desserts

  SELECT catégorie_recette.nom, COUNT(recette.id_recette) AS nbreCatégorie
FROM catégorie_recette
LEFT JOIN recette ON catégorie_recette.`id_catégorie_recette`= recette.id_recette
GROUP BY catégorie_recette.nom

13-- Afficher les recettes qui contiennent l’ingrédient « Poulet »

  SELECT recette.nom
FROM recette 
INNER JOIN preparer  ON preparer.id_recette = recette.id_recette
INNER JOIN ingredient  ON ingredient.id_ingredient = preparer.id_ingredient
WHERE ingredient.nom  LIKE '%poulet%'

14-- Mettez à jour toutes les recettes en diminuant leur temps de préparation de 5 minutes 

  UPDATE recette
SET temps = temps - 5; hum a retester

15-- Afficher les recettes qui ne nécessitent pas d’ingrédients coûtant plus de 2€ par unité de mesure

16-- Afficher la / les recette(s) les plus rapides à préparer

  SELECT r.nom, SELECT MIN(r.temps),
FROM recette r
ne marche pas ...

17-- Trouver les recettes qui ne nécessitent aucun ingrédient (par exemple la recette de la tasse d’eau 
-- chaude qui consiste à verser de l’eau chaude dans une tasse)

18-- Trouver les ingrédients qui sont utilisés dans au moins 3 recettes

19-- Ajouter un nouvel ingrédient à une recette spécifique

  INSERT INTO ingredient (id_ingredient, nom, prix, unité_mesure)
VALUES (63, 'bonbon', 3, 'g')


INSERT INTO preparer (id_recette, id_ingredient, quantite)
VALUES (14, 63, 400);

ne marche pas 

20-- Bonus : Trouver la recette la plus coûteuse de la base de données (il peut y avoir des ex aequo, il est 
-- donc exclu d’utiliser la clause LIMIT)
