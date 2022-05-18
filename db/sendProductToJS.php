<?php
    include ("coon.php");


    class Product{
        public $id='';
        public $product_name='';
        public $product_price=0;
        public $img_1='';
        public $img_2='';
        public $img_3='';

        function set($id,$product_name,$product_price,$img_1,$img_2,$img_3){
            $this->id = $id;
            $this->product_name = $product_name;
            $this->product_price = $product_price;
            $this->img_1 = $img_1;
            $this->img_2 = $img_2;
            $this->img_3 = $img_3;
        }
    }


    $product_list=array();

    $sql='SELECT * FROM `product`';

    if($result = mysqli_query($link,$sql)){
        while($row = mysqli_fetch_assoc($result)){
            // echo $row['id'].'<br>';
            $entity = new Product();
            $entity->set($row['id'],$row['product_name'],$row['product_price'],$row['img_1'],$row['img_2'],$row['img_3']);
            
            array_push($product_list,$entity);
            
        }
        mysqli_free_result($result);
    }

    $data = json_encode($product_list);
    echo $data;



?>