<?php
        include ("coon.php");
        include "./SendMail/SMTP.php";


        $CustomerName = $_POST["CustomerName"];
        $Email = $_POST["Email"];
        $ProductID = $_POST["ProductID"];
        $Price = $_POST["Price"];
        
        date_default_timezone_set('Asia/Taipei');//設定時區
        $sell_date = date("Y-m-d H:i:s");

        echo $CustomerName.$Price.$Email;

        // $sql="SELECT * FROM `test` where "
        $id = date("Ymd");//還沒寫規則


        $sql = "UPDATE `Bidding_product` SET `from_customer_name` = '".$CustomerName."', `product_price` = '".$Price."' WHERE `Bidding_product`.`id` = '".$ProductID."';";

        echo $sql;

        if(mysqli_query($link, $sql)){
                echo "出價成功!";
                // header("refresh:32;url=../index.html");
                // smtp($email , $IGname , "訂單詳情" , make_mail($ordername , $product_num_json , $sendway , $address , $sell_date));
                exit;

        }
        else{
                echo "fail";
        }
