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
        <script src="../js/getDBdata.js"></script>
        <link href="../css/style.css" rel="stylesheet">
        <script src="../js/product.js"></script>
        <script src="../js/cart.js"></script>
        <script src="../js/confirm_login.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    

    </head>
    
    <body>
        <!-- nvbar  -->
        <nav class="fixed-top navbar navbar-expand-lg navbar-light" id="nvbar">
            <div class="container-fluid">
                <a class="navbar-brand" href="../view/index.html"><img src="../image/logo.jpg" class="img-fluid" style="width: 60px; height: 60px;"></a>

                <div id="navbar_right">

                    <a href="../page/cart.html"><span id="small_cart">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16"><path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                        </svg>
                        <span class="badge" id="cartnum_small" style="color: black;"><script>cart_num()</script></span>
                    </span></a>

                    <button class="navbar-toggler" style="margin-right:5px !important;" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </div>
                
                <div class="collapse navbar-collapse top_nav" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto ">
                        <li class="nav-item"><a href="../view/index.html" class="nav-link">首頁</a>   
                        </li>
                        
                        <hr class="hr_nav"><!-- ----------------------------------- -->
                        
                        <li class="nav-item "><a href="../page/monthproduct.html" class="nav-link">本月商品</a>
                        </li>
                        <li class="nav-item " id="change"><a href="../page/change.html" class="nav-link">二手商品交換</a>
                        </li>
                        <li class="nav-item " id="bidding"><a href="../page/bidding.html" class="nav-link">商品競標</a>
                        </li>
                        <li class="nav-item " id="profile"><a href="../page/profile.html" class="nav-link">個人頁面</a>
                        </li>
                        <li class="nav-item " id="signin"><a href="../page/signin.html" class="nav-link">登入/註冊</a>
                        </li>

                        <hr class="hr_nav"><!-- ----------------------------------- -->
                        
                        <!-- <li class="nav-item "><a href="https://instagram.com/the.second_room?utm_medium=copy_link" class="nav-link">Instagram</a>
                        </li> -->
                    </ul>
                </div>

                <span id="big_cart">
                    <a href="../page/cart.html"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16"><path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                    </svg></a>
                    <span class="badge" id="cartnum_big" style="color: black;"><script>cart_num()</script></span>
                </span>
            </div>
        </nav>
            
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
               
                <footer class="text-center">
                    <!-- Grid container -->
                    <div class="container">
                    <!-- Section: Social media -->
                    <section>
                        
                        <!-- <div class="line"></div> -->
                        <p class="TCword" style="color: rgb(0, 0, 0);">聯絡我們</p>
                        <!-- Facebook -->
                        <a></a>
                
                        <!-- Twitter -->
                        <a></a>
                
                        <!-- LINE -->
                        <a href="https://line.me/ti/p/~@496tzsqu"  style="text-decoration:none; color:rgb(0, 0, 0)">LINE：點擊加入LINE好友<br></a>

        
                        <!-- Instagram -->
                        <!-- <a href="https://instagram.com/the.second_room?utm_medium=copy_link" style="text-decoration:none; color:rgb(0, 0, 0)">Instagram：the.second_room</a><br> -->
        
                        <!-- Linkedin -->
                        <a href="mailto:SecondRoom@mspredator.com"  style="text-decoration:none; color:rgb(0, 0, 0)">Mail：testing@mspredator.com</a>
            
                    </section>
                    <!-- Section: Social media -->
                    </div>
                    <!-- Grid container -->
                
                    <!-- Copyright -->
                    <div class="text-center text-dark p-3 ENGword">
                        copyright © 2022 : ASH
                    </div>
                    <!-- Copyright -->
                </footer>
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

url="../db/CheckOrderHistory.php?email="+JSON.parse(localStorage.getItem("userdetail"))[2];
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