<?php
    
    $dbuser="root";
    $password="";
    // $dbuser="u558221944_ash";
    // $password="Ash20220411";
    $dbname="u558221944_DESSERT";


    $link = mysqli_connect("localhost" , $dbuser ,  $password , $dbname) or die("還沒連上資料庫喔：Ｄ");
    // echo "successful<br>";
?>