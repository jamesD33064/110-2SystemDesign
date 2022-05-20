<?php
    include ("coon.php");

    $email = $_POST["email"];
    $password = $_POST["password"];
    $sql = "SELECT * FROM customer" ;
    $result = mysqli_query($link,$sql);

    $unsign = 1;
    if ($result) {

        if (mysqli_num_rows($result)>0) {

            while ($row = mysqli_fetch_assoc($result)) {
                
                if($row["email"] == $email && $row["user_password"]==$password){
                    // echo "success";

                    session_start();
                    $_SESSION["loggedin"] = true;
                    $_SESSION["username"] = $row["username"];
                    $_SESSION["email"] = $row["email"];
                    
                    $unsign = 0;
                    header("location:../page/profile.html");

                }

            }

            if($unsign){
                session_start();
                $_SESSION["loggedin"] = false;
            }

            header('location:../view/index.html'); 
        }
        mysqli_free_result($result);
    }
    else {
        echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
    }

    mysqli_close($link);


?>