<?php
    include ("coon.php");

    $email = $_POST["email"];
    $username = $_POST["username"];
    $password = $_POST["password"]; 

    // echo $email;
    $sql = "SELECT email FROM customer;";
    $result = mysqli_query($link,$sql);

    if ($result) {
        if (mysqli_num_rows($result)>0) {

            while ($row = mysqli_fetch_assoc($result)) {
                
                if($row["email"] == $email){
                    echo "已有同帳號";
                    session_start();
                    $_SESSION["loggedin"] = false;
                    header("location:../page/profile.html");
                }

            }

            mysqli_free_result($result);

            $sql = "INSERT INTO `customer` (`username`, `email`, `user_password`) VALUES ('".$username."' , '".$email."' , '".$password."');";
            $result = mysqli_query($link,$sql);
            // echo "success";
            header("location:../page/signin.html");
        }
        // mysqli_free_result($result);
    }
    else {
        echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
    }

    mysqli_close($link);


?>