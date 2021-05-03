<?php

    include('connect.php');
    $titre=$_POST['titre'];
    $auteur=$_POST['auteur'];
    $genre=$_POST['genre'];
    $desc_courte=$_POST['desc_courte'];
    $description=$_POST['description'];
    $lien=$_POST['url'];



    if (isset($_FILES['image_file']) AND $_FILES['image_file']['error'] == 0){
           
        echo "pas mal";

        // Testons si l'extension est autorisée
        $infosfichier = pathinfo($_FILES['image_file']['name']);
        $extension_upload = $infosfichier['extension'];
        $extensions_autorisees = array('jpg', 'jpeg', 'gif', 'png');
        if (in_array($extension_upload, $extensions_autorisees))
        {
                // On peut valider le fichier et le stocker définitivement
                move_uploaded_file($_FILES['image_file']['tmp_name'], 'upload_images/' . basename($_FILES['image_file']['name']));
                
        }
            
    }

    $reponseevents = $conn->prepare('INSERT INTO projet(titre,auteur,genre, desc_courte, descrip, lien,image_path) 
                                                VALUES (?,?,?,?,?,?,?)');
    
    $reponseevents->execute(array($titre,$auteur,$genre,$desc_courte,$description,$lien, 'upload_images/' . basename($_FILES['image_file']['name']) ));

    $reponseevents->closeCursor(); 

    
    header("Location: http://localhost/db_cinekub/realiser.html"); 
    exit();
                
?>

