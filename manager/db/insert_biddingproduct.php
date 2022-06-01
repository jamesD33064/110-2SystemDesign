<?php
        include ("conn.php");


        $ProductName = $_POST["ProductName"];
        $ProductPrice = $_POST["ProductPrice"];
        $end_time = $_POST["end_time"];
        $ProductIntroduce = $_POST["ProductIntroduce"];
        $ProductType = $_POST["ProductType"];
        echo $end_time;

        date_default_timezone_set('Asia/Taipei');//設定時區
        $sell_date = date("Y-m-d H:i:s");

        $sql = "SELECT `id` FROM `Bidding_product` ORDER BY `Bidding_product`.`id` DESC LIMIT 1;";

        $id = mysqli_fetch_assoc(mysqli_query($link, $sql))["id"];


        $id = 1+(int)substr($id, 2);

        if($id < 10){
            $id = "bi0".strval($id);
        }
        else{
            $id = "bi".strval($id);
        }
        echo $id;
        //檔案
        if ((($_FILES["file"]["type"] == "image/gif")
            || ($_FILES["file"]["type"] == "image/jpeg")
            || ($_FILES["file"]["type"] == "image/jpg"))
            && ($_FILES["file"]["size"] < 200000)) {
            if ($_FILES["file"]["error"] > 0) {
                echo "Return Code: " . $_FILES["file"]["error"] . "<br />";
            } else {
                echo "檔名: " . $_FILES["file"]["name"] . "<br />";
                echo "檔案型別: " . $_FILES["file"]["type"] . "<br />";
                echo "檔案大小: " . ($_FILES["file"]["size"] / 1024) . " Kb<br />";
                echo "快取檔案: " . $_FILES["file"]["tmp_name"] . "<br />";

            //設定檔案上傳路徑，選擇指定資料夾

                if (file_exists("../image/" . $_FILES["file"]["name"])) {
                    echo $_FILES["file"]["name"] . " already exists. ";
                } else {
                    move_uploaded_file(
                        $_FILES["file"]["tmp_name"],
                        "../../image/" . $_FILES["file"]["name"]
                    );
                    echo "儲存於: " . "../../image/" . $_FILES["file"]["name"];//上傳成功後提示上傳資訊
                }
            }
        } else {
            echo "上傳失敗！";//上傳失敗後顯示錯誤資訊
        }
        $Img=$_FILES["file"]["name"];

        $sql = "INSERT INTO `Bidding_product` (`id`, `from_customer_name` , `product_name`, `product_price`, `end_time`, `img_1`, `img_2`, `img_3`, `type`, `introduce`) VALUES ('".$id."' , '' , '".$ProductName."', '".$ProductPrice."', '".$end_time."' , '".$Img."', '".$Img."' , '".$Img."', '".$ProductType."', '".$ProductIntroduce."')";
        echo $sql;

        if(mysqli_query($link, $sql)){
                echo "上架成功!";
                // header("refresh:32;url=../index.html");
                exit;

        }
        else{
                echo "fail";
        }
