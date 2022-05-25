<?php
        include ("coon.php");
        include "./SendMail/SMTP.php";


        $CustomerName = $_POST["CustomerName"];
        $Email = $_POST["Email"];
        $Img = $_POST["Img"];
        $ProductName = $_POST["ProductName"];
        $Price = 0;


        date_default_timezone_set('Asia/Taipei');//設定時區
        $sell_date = date("Y-m-d H:i:s");


        echo $CustomerName.$Email.$Img.$ProductName;

        // $sql="SELECT * FROM `test` where "
        $sql = "SELECT `id` FROM `changeBOOKorCD` ORDER BY `changeBOOKorCD`.`id` DESC LIMIT 1;";

        $id = mysqli_fetch_assoc(mysqli_query($link, $sql))["id"];


        $id = 1+(int)substr($id, 2);

        if($id < 10){
            $id = "cp0".strval($id);
        }
        else{
            $id = "cp".strval($id);
        }


        $sql = "INSERT INTO `changeBOOKorCD` (`id`, `from_customer_name`, `product_name`, `product_price`, `img_1`, `img_2`, `img_3`) VALUES ('".$id."' , '".$CustomerName."', '".$ProductName."', '".$Price."' , '".$Img."', '".$Img."' , '".$Img."')";
        echo $sql;

        if(mysqli_query($link, $sql)){
                echo "上架成功!";
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