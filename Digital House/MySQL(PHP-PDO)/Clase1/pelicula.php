<?php

require_once("autoload.php");

if(isset($_GET["id"])){
    $sql= "select * from movies where id=".$_GET["id"];
    $consulta = $pdo->query($sql);
    $pelicula = $consulta->fetchAll(PDO::FETCH_ASSOC);

    
}
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

    <title>nombre pelicula</title>
</head>
<body>
<ul>
      <?php foreach ($pelicula as $key => $value) : ?>
      <li>
        <?=$value["title"]." - rating: ".$value["rating"]?>
        <a href="">
            <i class="fas fa-trash-alt"></i>
        </a>
        <a href="peliculas.php">
            <i class="fas fa-arrow-left"></i>
        </a>
      </li>
    <?php endforeach; ?>
    </ul>
    
</body>
</html>