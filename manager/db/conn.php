<?php
    
    $dbuser="root";
    $password="";
    $dbname="1102systemdesign";

    // $dbuser="u558221944_systemdesign";
    // $password="Waxdqzces123";
    // $dbname="u558221944_SystemDesign";


    $link = mysqli_connect("localhost" , $dbuser ,  $password , $dbname) or die("還沒連上資料庫喔：Ｄ");
    // echo "successful<br>";
    
?>