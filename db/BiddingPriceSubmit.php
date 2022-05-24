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



//         function make_mail($ordername , $product_num_json , $sendway , $address , $sell_date){

//                 include ("coon.php");
                
//                 ob_start();
//                 include './SendMail/mail_template.html';
//                 $mail_body = ob_get_clean();
//                 $mail_body = str_replace("ordername",$ordername , $mail_body);
//                 $mail_body = str_replace("sell_date",$sell_date , $mail_body);

// //ProducLlsit json
//                 // $product_num_json='[{"name":"p1","count":1},{"name":"p2","count":1},{"name":"p3","count":2},{"name":"p4","count":0},{"name":"p5","count":0},{"name":"p6","count":0},{"name":"p7","count":0},{"name":"p8","count":0}]';
//                 $ProductList=json_decode($product_num_json);

//                 $str='';

//                 foreach($ProductList as $Product){
//                         $sql='SELECT * FROM `product`';
//                         if($Product->{'count'}){
//                                 if($result = mysqli_query($link,$sql)){
//                                         while($row = mysqli_fetch_assoc($result)){
//                                                 if($row['id']==$Product->{'name'}){
//                                                         $str = $str.(string)$row['product_name']." x ".(string)$Product->{'count'}."<br>";
//                                                         break;
//                                                 }
//                                         }
//                                 }
//                                 mysqli_free_result($result);
//                         }
//                 }

//                 $mail_body = str_replace("product_num_json",$str , $mail_body);

// //sendway and address
//                 switch($sendway){
//                         case "sendway_1":
//                                 $mail_body = str_replace("sendway","宅配(運費NT$160) 至 " , $mail_body);
//                                 $mail_body = str_replace("address", $address , $mail_body);
//                                 break;
//                         case "sendway_2":
//                                 $mail_body = str_replace("sendway","711冷凍交貨便(運費NT$130) 至 ", $mail_body);
//                                 $mail_body = str_replace("address", $address , $mail_body);
//                                 break;
//                         case "sendway_3":
//                                 $mail_body = str_replace("sendway","面交" , $mail_body);
//                                 $mail_body = str_replace("address", "" , $mail_body);
//                                 break;
                        

//                 }

//                 mysqli_close($link);
//                 return $mail_body;

//         }



?>