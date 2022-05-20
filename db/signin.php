<?php
    include ("coon.php");

    $email = $_POST["email"];
    $password = $_POST["password"];
    $sql = "SELECT email , user_password FROM customer";
    $result = mysqli_query($link,$sql);

    if ($result) {

        if (mysqli_num_rows($result)>0) {

            while ($row = mysqli_fetch_assoc($result)) {
                
                if($row["email"] == $email && $row["user_password"]==$password){
                    // echo "success";        
                    header("location:../page/profile.html");
                }

            }
            header("location:../index.html");
        }
        mysqli_free_result($result);
    }
    else {
        echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
    }

    mysqli_close($link);


?>