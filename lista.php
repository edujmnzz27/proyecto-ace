<!DOCTYPE html>
<html lang="es">

<?php
 // Mostrar todos los errores (útil para debugging)
 ini_set('display_errors', 1);
 error_reporting(E_ALL);
 // Conectar a la base de datos
 // Cambiar el servername por el que proceda: localhost, IP, url, …
 $servername = "127.0.0.1";
 $username = "asirweb";
 $password = "qwe_123";
 $dbname = "proyecto";
 $conn = new mysqli($servername, $username, $password, $dbname);
 // Verificar la conexión
 if ($conn->connect_error) {
 die("Conexión fallida: " . $conn->connect_error);
 }
?>

<head>
  <meta charset="UTF-8">
  <title>Lista de Vehículos</title>
  <link rel="stylesheet" href="lista.css">
</head>
<body>

  <h1>Información de Vehículos</h1>

  <table>
    <thead>
      <tr>
        <th>Matrícula</th>
        <th>Modelo</th>
        <th>Combustible</th>
        <th>Motor</th>
        <th>Plazas</th>
        <th>Maleta</th>
        <th>Foto</th>
        <th>Cód. Gama</th>
        <th>Coste</th>
      </tr>
    </thead>
    <tbody>

    <?php
    // Consultar los datos
    $sql = "SELECT * FROM coche";
    $result = $conn->query($sql);
    if ($result === false) {
    die("Error en la consulta: " . $conn->error);
    }
    if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
    echo " <tr>
    <td>{$row['matricula']}</td>
    <td>{$row['modelo']}</td>
    <td>{$row['combustible']}</td>
    <td>{$row['motor']}</td>
    <td>{$row['plazas']}</td>
    <td>{$row['maletas']}</td>
    <td>{$row['foto']}</td>
    <td>{$row['codgama']}</td>
    <td>{$row['coste']}</td>
    </tr>";
    }
    } 
    ?>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td><img src="" alt="Foto vehículo"></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td><img src="" alt="Foto vehículo"></td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td><img src="" alt="Foto vehículo"></td>
        <td></td>
        <td></td>
      </tr>
    </tbody>
  </table>

</body>
</html>
