<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
    $host = 'nombre-sql';
    $database = 'dbPruebas';
    $user = 'root';
    $password = '123';

    $hostPDO = "mysql:host=$host;dbname=$database;";
    $miPDO = new PDO($hostPDO, $user, $password);

    $query = $miPDO->prepare('SELECT id_articulo, nombre, precio, cantidad FROM pruebaDocker');
    $query->execute();
    $answer = $query->fetchAll();
?>
<?php 
echo($answer[0]['nombre']);
?>
</body>
</html>