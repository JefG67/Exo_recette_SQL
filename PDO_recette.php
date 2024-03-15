-- PDO de recette --

<?php 
try {
    $mysqlClient = new PDO('mysql:host=localhost;dbname=recettes_jefguilpain;charset=utf8', 'root', '');

    $mysqlClient->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}

catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}

?>

<?php 

// Je crée ma requette SQL pour afficher mes recettes de ma bdd

$recetteSQL = ' SELECT * 
                FROM recette';

$recette = $mysqlClient->prepare($recetteSQL);
$recette->execute();

foreach($recette->fetchAll() as $recettes) {  
     echo "Nom de la recette : " . $recettes["nom"] . "<br>",
          "Instruction : " . $recettes["instruction"] . "<br><br>";
 }
