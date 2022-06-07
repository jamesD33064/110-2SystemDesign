<?php
    include ("coon.php");        

    $value = $_POST["value"];
    $type = $_POST["input_type"];
    $email = $_POST["email"];

    switch($type){
        case "user_phone":
            $type = "phone";
            break;

        case "user_address":
            $type = "address";
            break;
    }



    $sql = "SELECT * FROM customer WHERE email= '".$email."' OR email= '".$value."';";
    $result = mysqli_query($link,$sql);

    
    if ($result) {

        if (mysqli_num_rows($result)==1) {

            while ($row = mysqli_fetch_assoc($result)) {

                if($row["email"] == $email){

                    $sql_1 = "UPDATE `customer` SET `".$type."` = '".$value."' WHERE `customer`.`email` = '".$email."';";
                    echo $sql_1;
                    $result_1 = mysqli_query($link,$sql_1);
                
                    if($result_1){
                            echo "更改成功!";
                            header('location:../page/profile.html');
                            exit;
                    }
                    else{
                            echo "fail";
                    }
                }

            }

        }
        else{
            echo "fail";
        }
        mysqli_free_result($result);
    }
    else {
        echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
    }

    mysqli_close($link);


?>