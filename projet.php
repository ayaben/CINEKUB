<?php

    include('connect.php');
    $reponseprojet = $conn->query('SELECT * FROM projet ORDER BY id DESC LIMIT 8');
    $projets = $reponseprojet->fetchAll();
    echo json_encode($projets, JSON_UNESCAPED_UNICODE, 20);
    $reponseprojet->closeCursor(); 
?>
