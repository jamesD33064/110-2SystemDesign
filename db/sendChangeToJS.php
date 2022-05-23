<?php
    include ("coon.php");


    class Product{
        public $id='';
        public $BOOKorCD_name='';
        public $price=0;
        public $from_customer_name='';
        public $img_1='';
        
        function set($id,$BOOKorCD_name,$price,$from_customer_name,$img_1){
            $this->id = $id;
            $this->BOOKorCD_name = $BOOKorCD_name;
            $this->price = $price;
            $this->from_customer_name = $from_customer_name;
            $this->img_1 = $img_1;
        }
    }


    $product_list=array();

    $sql='SELECT * FROM `changeBOOKorCD`';

    if($result = mysqli_query($link,$sql)){
        while($row = mysqli_fetch_assoc($result)){
            // echo $row['id'].'<br>';
            $entity = new Product();
            $entity->set($row['id'],$row['BOOKorCD_name'],$row['price'],$row['from_customer_name'],$row['img_1']);
            
            array_push($product_list,$entity);
            
        }
        mysqli_free_result($result);
    }

    $data = json_encode($product_list);
    echo $data;



?>