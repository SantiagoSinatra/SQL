<?php
require_once("clases/BaseMYSQL.php");
require_once("helpers.php");
//Declaro mis variables
$host = "localhost";
$bd = "movies_db";
$usuario = "root";
$password = "";
$puerto = "3306";
$charset = "utf8mb4";
//Ojo: Para los que trabajan con MAC: deben colocar el puerto: 8889

$pdo = BaseMYSQL::conexion($host,$bd,$usuario,$password,$puerto,$charset);