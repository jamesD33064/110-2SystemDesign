<?php
    include ("coon.php");        

    class Product{
        public $username='';
        public $email='';
        public $user_password='';
        public $address='';
        public $phone='';

        function set($username,$email,$user_password,$address,$phone){
            $this->username = $username;
            $this->email = $email;
            $this->user_password = $user_password;
            $this->address = $address;
            $this->phone = $phone;
        }
    }


    $product_list=array();


    $email = $_REQUEST["email"];

    $sql = "SELECT * FROM customer WHERE email= '".$email."';";
    $result = mysqli_query($link,$sql);
    
    if ($result) {

        if (mysqli_num_rows($result)>0) {


            while ($row = mysqli_fetch_assoc($result)) {
                if($row["email"] == $email){
                    $entity = new Product();

                    $entity->set($row['username'],$row['email'],$row['user_password'],$row['address'],$row['phone']);
                    
                    array_push($product_list,$entity);
                }

            }


        }
        mysqli_free_result($result);
    }
    else {
        echo "{$sql} 語法執行失敗，錯誤訊息: " . mysqli_error($link);
    }

    $data = json_encode($product_list);
    echo $data;

    mysqli_close($link);


?>