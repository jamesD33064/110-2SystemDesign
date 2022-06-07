<?php
    include ("conn.php");        

    class Product{
        public $IGname='';
        public $email='';
        public $ordername='';
        public $orderphone='';
        public $receverphone='';
        public $product_num_json='';
        public $payway='';
        public $sendway='';
        public $address='';
        public $sell_date='';
        public $id='';
        public $state='';

        function set($IGname,$email,$ordername,$orderphone,$receverphone,$product_num_json,$payway,$sendway,$address,$sell_date,$id,$state){
            $this->IGname = $IGname;
            $this->email = $email;
            $this->ordername = $ordername;
            $this->orderphone = $orderphone;
            $this->receverphone = $receverphone;
            $this->product_num_json = $product_num_json;
            $this->payway = $payway;
            $this->sendway = $sendway;
            $this->address = $address;
            $this->sell_date = $sell_date;
            $this->id = $id;
            $this->state = $state;
        }
    }


    $product_list=array();


    $sql = "SELECT * FROM test ;";
    $result = mysqli_query($link,$sql);
    
    if ($result) {

        if (mysqli_num_rows($result)>0) {


            while ($row = mysqli_fetch_assoc($result)) {
                    $entity = new Product();


                    $id = "";
                    for($i=strlen($row['payway'])-1 ; $i >=0  ; $i-=1){
                        if(is_numeric($row['payway'][$i])){
                            $id = $id.$row['payway'][$i];
                        }
                    }
                    for($i=strlen($row['sell_date'])-3 ; $i >0  ; $i-=1){
                        if(is_numeric($row['sell_date'][$i])){
                            $id = $id.$row['sell_date'][$i];
                        }
                    }
                    for($i=strlen($row['sendway'])-1 ; $i >=0  ; $i-=1){
                        if(is_numeric($row['sendway'][$i])){
                            $id = $id.$row['sendway'][$i];
                        }
                    }


                    $entity->set($row['IGname'],$row['email'],$row['ordername'],$row['orderphone'],$row['receverphone'],$row['product_num_json'],$row['payway'],$row['sendway'],$row['address'],$row['sell_date'],$id,$row['state']);
                    
                    array_push($product_list,$entity);

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