<?php
    include ("conn.php");

    $account = $_POST["account"];
    $password = $_POST["password"];
    echo $account;
    $sql = "SELECT * FROM manager_account WHERE account='".$account."'; "  ;
    $result = mysqli_query($link,$sql);

    $unsign = 1;
    if ($result) {

        if (mysqli_num_rows($result)>0) {

            while ($row = mysqli_fetch_assoc($result)) {
                
                if($row["account"] == $account && $row["password"]==$password){
                    // echo "success";

                    session_start();
                    $_SESSION["manager_loggedin"] = true;
                    
                    $unsign = 0;
                    header("location:../view/control.html");

                }

            }

            if($unsign){
                session_start();
                $_SESSION["manager_loggedin"] = false;
                // header('location:./index.html'); 
            }

        }
        mysqli_free_result($result);
    }
    else {
        echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
    }

    mysqli_close($link);


?>