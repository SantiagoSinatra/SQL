<?php
require_once("autoload.php");
$sql = "select movies.id, movies.title, movies.rating, genres.name from movies inner join genres on genres.id = movies.genre_id order by movies.title";
$consulta = $pdo->query($sql);
$peliculas = $consulta->fetchAll(PDO::FETCH_ASSOC);
?>

<!doctype html>
<html lang="es">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Practicando PHP-PDO</title>
  </head>
  <body>
    <h1>Listado de Películas</h1>
    <ul>
        <?php foreach ($peliculas as $key => $value) : ?>
            <li><?=$value["title"]."-".$value["rating"]." - ".$value["name"] ;?></li>
        <?php  endforeach;?>
    </ul>
    <br>
    <br>
    <ul>
      <?php foreach ($peliculas as $key => $value) : ?>
      <li>
        <a href="pelicula.php?id=<?=$value["id"];?>"> <!-- el query string viaja por get -->
        <?=$value["title"];?>
        </a>
      </li>
    <?php endforeach; ?>
    </ul>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>