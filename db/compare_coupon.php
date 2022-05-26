<?php
    include ("coon.php");

    $coupon = $_POST["coupon"];
    $email = $_POST["email"];
    $total = $_POST["total"];

    $sql = "SELECT * FROM coupon" ;
    $result = mysqli_query($link,$sql);

    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            
            if($row["coupon_name"] == $coupon){

                $sql_1 = "SELECT coupon_use	FROM coupon_customeruse WHERE customer_id = '".$email."' AND coupon_name = '".$coupon."' ;";
                $result_1 = mysqli_query($link,$sql_1);
            
                if ($result_1) {//如果曾經使用折價券



                    while ($row_1 = mysqli_fetch_assoc($result_1)) {
                        
                        if((int)$row_1["coupon_use"] < (int)$row["max_use"]){
                            
                            if( 1 > (int)$row["coupon_price"]){//如果是95折
                                echo floor((int)$total * (int)$row["coupon_price"]);
                            }
                            else{//如果是折價
                                if((int)$total - (int)$row["coupon_price"]>0){//如果折價完正常
                                    echo (int)$total - (int)$row["coupon_price"];
                                }
                                else{//如果折價完小於0
                                    echo "0";
                                }
                            }
//使用完要加一

                        }
                    }
                    mysqli_free_result($result_1);
                }
                else{//如果不曾使用折價券
                    $sql = "INSERT INTO coupon_customeruse (customer_id , coupon_name , coupon_use)
                    VALUES('".$email."','".$coupon."','1')";
        
                    if(mysqli_query($link, $sql)){
                        echo "新增成功!<br>";
                    }
//要使用

                }

            }
        }
        mysqli_free_result($result);
    }
    else {
        echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
    }

    mysqli_close($link);

?>