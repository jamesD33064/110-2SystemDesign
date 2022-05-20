<?php
    session_start();
    $a=array($_SESSION["loggedin"],$_SESSION["username"],$_SESSION["email"]);
    echo json_encode($a);
    exit;
?>

