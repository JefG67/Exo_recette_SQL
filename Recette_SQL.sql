1- Afficher toutes les recettes disponibles (nom de la recette, catégorie et temps de préparation) triées 
de façon décroissante sur la durée de réalisation

SELECT * 
FROM recette
ORDER BY temps DESC

2- En modifiant la requête précédente, faites apparaître le nombre d’ingrédients nécessaire par recette.

3- Afficher les recettes qui nécessitent au moins 30 min de préparation

4- Afficher les recettes dont le nom contient le mot « Salade » (peu importe où est situé le mot en 
question)

5- Insérer une nouvelle recette : « Pâtes à la carbonara » dont la durée de réalisation est de 20 min avec 
les instructions de votre choix. Pensez à alimenter votre base de données en conséquence afin de 
pouvoir lister les détails de cette recettes (ingrédients)

6- Modifier le nom de la recette ayant comme identifiant id_recette = 3 (nom de la recette à votre 
convenance)

7- Supprimer la recette n°2 de la base de données
8- Afficher le prix total de la recette n°5

9- Afficher le détail de la recette n°5 (liste des ingrédients, quantités et prix)

10- Ajouter un ingrédient en base de données : Poivre, unité : cuillère à café, prix : 2.5 €

11- Modifier le prix de l’ingrédient n°12 (prix à votre convenance)

12- Afficher le nombre de recettes par catégories : X entrées, Y plats, Z desserts

13- Afficher les recettes qui contiennent l’ingrédient « Poulet »

14- Mettez à jour toutes les recettes en diminuant leur temps de préparation de 5 minutes 

15- Afficher les recettes qui ne nécessitent pas d’ingrédients coûtant plus de 2€ par unité de mesure

16- Afficher la / les recette(s) les plus rapides à préparer

17- Trouver les recettes qui ne nécessitent aucun ingrédient (par exemple la recette de la tasse d’eau 
chaude qui consiste à verser de l’eau chaude dans une tasse)

18- Trouver les ingrédients qui sont utilisés dans au moins 3 recettes

19- Ajouter un nouvel ingrédient à une recette spécifique

20- Bonus : Trouver la recette la plus coûteuse de la base de données (il peut y avoir des ex aequo, il est 
donc exclu d’utiliser la clause LIMIT)
