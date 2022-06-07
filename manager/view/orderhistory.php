<?php
$sell_date = $_REQUEST["sell_date"];
?>

<!doctype html>
    <head>


        <!-- 刪快取用要記得刪掉 -->
        <META HTTP-EQUIV="pragma" CONTENT="no-cache"> 
        <META HTTP-EQUIV="Cache-Control" CONTENT="no-cache, must-revalidate"> 
        <META HTTP-EQUIV="expires" CONTENT="0">
        <!-- ******************************************* -->

        <title>Product</title>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- 字型 中文 -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC&display=swap" rel="stylesheet">
        <!-- 字型 中文 -->
        <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC&display=swap" rel="stylesheet">
        
        <!-- Bootstrap CSS -->
        <link href="../../css/style.css" rel="stylesheet">
        <!-- <script src="../js/che"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    

    </head>
    
    <body>
            
        <!-- Page Content  -->
        <div id="content">

            <div class="container"  style="padding-top:80px;">

                <h2 class="text-center TCword">  </h2>
                <div class="card mx-auto" style="width: 80%;">
                    <div class="card-body">
                        <h3 class="card-title text-center">訂單詳情</h3>
                        <h6 class="card-subtitle mb-2 text-center">訂單編號:<span id="id"></span></h6>
                        <div class="row">
                    
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>購買日期</h3>
                                <div id="sell_date">
                                </div>

                            </div>
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>IG名稱</h3>
                                <div id="IGname">
                                </div>

                            </div>
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>EMAIL</h3>
                                <div id="email">
                                </div>

                            </div>
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>訂購人姓名</h3>
                                <div id="ordername">
                                </div>

                            </div>
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>訂購人手機</h3>
                                <div id="orderphone">
                                </div>

                            </div>
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>收件人電話</h3>
                                <div id="receverphone">
                                </div>

                            </div>
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>訂單詳情</h3>
                                <div id="product_num_json">
                                </div>
                                <!-- overflow-y: scroll; -->
                            </div>
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>付款方式</h3>
                                <div id="payway">
                                </div>

                            </div>
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>物流方式</h3>
                                <div id="sendway">
                                </div>

                            </div>
                            <div class="p-4 col-xs-12 col-sm-6 col-lg-4 text-center">
                                <h3>收件地址</h3>
                                <div id="address">
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
                
                <div class="line"></div>
               
            </div>
        </div>




    </body>

</html>
<script>
function get(url) {

    return new Promise((resolve, reject)=> {
        var req = new XMLHttpRequest();
        req.open('GET', url);
        req.onload = function() {
            if (req.status == 200 && req.readyState==4) {
                resolve(req.response);
            }
        };
        req.send();
    });
}

url="../db/CheckOrderHistory.php";
get(url)
.then((res) => {
    let jArray=JSON.parse(res);
    var date="<?php echo $sell_date?>";
    jArray.forEach(element => {
        if(element.sell_date == date.replace('_', ' ')){
            document.getElementById("IGname").innerText = element.IGname;
            document.getElementById("email").innerText = element.email;
            document.getElementById("ordername").innerText = element.ordername;
            document.getElementById("orderphone").innerText = element.orderphone;
            document.getElementById("receverphone").innerText = element.receverphone;
            //document.getElementById("product_num_json").innerText = element.product_num_json;
            let list = JSON.parse(element.product_num_json);
            list.forEach(eachobj => {
                const div = document.createElement('div');
                div.innerHTML = eachobj.name+"x"+eachobj.count;
                document.getElementById("product_num_json").appendChild(div);
            });
            if(element.payway=="pay_1")document.getElementById("payway").innerText ="匯款";
            if(element.payway=="pay_2")document.getElementById("payway").innerText ="虛擬貨幣支付";
            if(element.sendway=="sendway_1")document.getElementById("sendway").innerText ="宅配";
            if(element.sendway=="sendway_2")document.getElementById("sendway").innerText ="超商";
            if(element.sendway=="sendway_3")document.getElementById("sendway").innerText ="面交";
            document.getElementById("address").innerText = element.address;
            document.getElementById("sell_date").innerText = element.sell_date;
            document.getElementById("id").innerText = element.id;
        }
    });
})



</script>