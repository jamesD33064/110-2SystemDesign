
<?php 
session_start(); 
$_SESSION = array(); 
session_destroy(); 
// $_SESSION["loggedin"] = FALSE;
header('location:../view/index.html'); 

?>