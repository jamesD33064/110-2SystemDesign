<?php
    include ("coon.php");        

    class Product{
        public $IGname='';
        public $email='';
        public $ordername='';
        public $orderphone='';
        public $receverphone='';
        public $product_num_json='';
        public $payway='';
        public $address='';

        function set($IGname,$email,$ordername,$orderphone,$receverphone,$product_num_json,$payway,$address){
            $this->IGname = $IGname;
            $this->email = $email;
            $this->ordername = $ordername;
            $this->orderphone = $orderphone;
            $this->receverphone = $receverphone;
            $this->product_num_json = $product_num_json;
            $this->payway = $payway;
            $this->address = $address;
        }
    }


    $product_list=array();


    $email = $_REQUEST["email"];

    $sql = "SELECT * FROM test WHERE id= '".$email."';";
    $result = mysqli_query($link,$sql);
    
    if ($result) {

        if (mysqli_num_rows($result)>0) {


            while ($row = mysqli_fetch_assoc($result)) {
                if($row["id"] == $email){
                    $entity = new Product();
                    $entity->set($row['IGname'],$row['email'],$row['ordername'],$row['orderphone'],$row['receverphone'],$row['product_num_json'],$row['payway'],$row['address']);
                    
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