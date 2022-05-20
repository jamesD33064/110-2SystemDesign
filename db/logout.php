
<?php 
session_start(); 
$_SESSION = array(); 
$_SESSION["loggedin"] = false;
$_SESSION["username"] = "";
$_SESSION["email"] = "";
// $_SESSION["loggedin"] = FALSE;
header('location:../view/index.html'); 

?>