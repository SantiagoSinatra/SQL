<?php 

require_once("autoload.php");
$sql = "select genres.id, genres.name from genres order by genres.id";
$consulta = $pdo->query($sql);
$generos = $consulta->fetchAll(PDO::FETCH_ASSOC);


?>

<!DOCTYPE html>
<html lang="es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    <title>Practicando PHP-PDO-GENEROS</title>
</head>
<body>
    <h1>Listado de Géneros</h1>
    <ul>
        <?php foreach ($generos as $key => $value) : ?>
        <li><?=$value["name"];?></li>
        <?php endforeach;?>
    </ul>
</body>
</html>
