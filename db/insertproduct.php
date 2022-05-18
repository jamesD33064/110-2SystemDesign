<?php
        include ("coon.php");

        // $cname = $_POST["cname"];
        // $customer_address = $_POST["address"];
        // $product_num_json = $_POST["product_num_json"];
        // $comments = $_POST["comments"];
        // $sendway = $_POST["sendway"];
        $id=8;
        $product_name=array("馬卡龍","布朗尼","可頌","戚風","法棍","可麗露","塔","章魚小丸子") ;
        $product_price=8;
        $img_1='IMG_0400.JPG';
        $img_2='IMG_0400.JPG';
        $img_3='IMG_0400.JPG';


        for($i=1 ; $i<9 ;$i++){
            $id_1="p".strval($i);
            $sql = "INSERT INTO product (id , product_name , product_price , img_1 , img_2 , img_3)
            VALUES('".$id_1."','".$product_name[$i-1]."','".$i."','".$img_1."','".$img_2."','".$img_3."')";

            if(mysqli_query($link, $sql)){
                echo "新增成功!<br>";
            }
        }

        mysqli_close($link);


?>