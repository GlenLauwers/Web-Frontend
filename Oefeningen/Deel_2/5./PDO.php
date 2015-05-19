<?php
    $messageContainer   =   '';
    try
    {
        $db = new PDO('mysql:host=localhost;dbname=opinie', 'root', '', 
            array (PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION)); 
        
        $stmt = $db->query("SELECT * FROM Mensen");
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($data);
    }
    catch ( PDOException $e )
    {
        echo  'Er ging iets mis: ' . $e->getMessage();
    }
?>