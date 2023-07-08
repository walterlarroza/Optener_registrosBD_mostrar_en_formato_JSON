<?php
// configuro la conexion a la bd
$host = 'localhost';
$dbname = 'formulario';
$username = 'root';
$password = '';

// optengoel codigo 
$codigo = $_GET['codigo'];

try {
    // nueva conexion
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    
    // consulta
    $consulta = $pdo->prepare("SELECT * FROM tabla_datos WHERE id = :codigo");
    
    // asigno el valor y optengo
    $consulta->bindValue(':codigo', $codigo, PDO::PARAM_INT);
    $consulta->execute();
    
    // optengo como un arreglo asociativo
    $registro = $consulta->fetch(PDO::FETCH_ASSOC);
    
    if ($registro) {
        // aca esta la magia json
        header('Content-Type: application/json');
        echo json_encode($registro);
    } else {
        
        echo "No se encontró ningún registro con el código $codigo.";
    }
} catch (PDOException $e) {
    // menejo el error de bd
    echo "Error de la base de datos: " . $e->getMessage();
}
?>
