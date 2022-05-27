<?php
    include ("coon.php");

    // $coupon = $_POST["coupon"];
    // $email = $_POST["email"];
    // $total = $_POST["total"];
    $coupon = $_REQUEST["coupon"];
    $email = $_REQUEST["email"];
    $total = $_REQUEST["total"];

    date_default_timezone_set('Asia/Taipei');//設定時區
    $sell_date = date("Y-m-d H:i:s");

    restart:

    $sql = "SELECT * FROM coupon;";
    $result = mysqli_query($link,$sql);

    if ($result) {
        while ($row = mysqli_fetch_assoc($result)) {
            
            if($row["coupon_name"] == $coupon){

                $sql_1 = "SELECT coupon_use , id FROM coupon_customeruse WHERE customer_id = '".$email."' AND coupon_name = '".$coupon."' ;";
                $result_1 = mysqli_query($link,$sql_1);

                if (mysqli_num_rows($result_1)>0) {//如果曾經使用折價券

                    while ($row_1 = mysqli_fetch_assoc($result_1)) {
                        
                        if((int)$row_1["coupon_use"] < (int)$row["max_use"]){//判斷使用次數
                            
                            $times = strval((int)$row_1["coupon_use"]+1);//使用完要加一

                            if( 1 > (float)$row["coupon_price"]){//如果是95折
                                $final_price = floor((float)$total * (float)$row["coupon_price"]);
                            }
                            else{//如果是折價
                                if((int)$total - (int)$row["coupon_price"]>0){//如果折價完正常
                                    $final_price = (int)$total - (int)$row["coupon_price"];
                                }
                                else{//如果折價完小於0
                                    $final_price = 0;
                                }
                            }

                            $sql = "UPDATE `coupon_customeruse` SET `coupon_use` = '".$times."' WHERE `coupon_customeruse`.`id` = '".$row_1["id"]."';";

                            if(mysqli_query($link, $sql)){
                                echo $final_price;
                            }
                        }
                        else{
                            echo "超過使用次數";
                        }
                    }
                    mysqli_free_result($result_1);
                }
                else{//如果不曾使用折價券
                    $sql_2 = "INSERT INTO coupon_customeruse (id , customer_id , coupon_name , coupon_use)
                    VALUES('".$sell_date."','".$email."','".$coupon."','0')";
        
                    if(mysqli_query($link, $sql_2)){
                        goto restart;
                    }
                    // continue;//要使用   
                }

            }
            else{
                // echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
            }
        }
        mysqli_free_result($result);
    }
    else {
        // echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
    }

    mysqli_close($link);

?>