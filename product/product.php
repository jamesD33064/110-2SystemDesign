<?php
$product_id = $_REQUEST["id"];
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

                <div class="row" style="margin-top: 5vw;"><!-- margin-top分隔 -->
                    <div class="col-12 col-sm-6">
                        <div id="slide_image" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img id="img_1" class="d-block mx-auto" style="height:40vw;">
                                </div>
                                <div class="carousel-item">
                                    <img id="img_2" class="d-block mx-auto" style="height:40vw;">
                                </div>
                                <div class="carousel-item">
                                    <img id="img_3" class="d-block mx-auto" style="height:40vw;">
                                </div>
                            </div>
                            
                            <script>
                                var id = "<?php echo $product_id ?>";
                                document.getElementById("img_1").src = "../image/"+product_img_1(id);
                                document.getElementById("img_2").src = "../image/"+product_img_2(id);
                                document.getElementById("img_3").src = "../image/"+product_img_3(id);
                            </script>

                            <button class="carousel-control-prev" type="button" data-bs-target="#slide_image" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                              </button>
                              <button class="carousel-control-next" type="button" data-bs-target="#slide_image" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                              </button>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6">
                        <div>

                            <h1 class="text-center TCword" style="color: black;"> <script>document.write(product_name(id));</script> </h1>


                            <div class="w-100">
                                <h4 class="text-center"><br>產品介紹</h4>
                                <h6 class="text-end"><br>產品分類：<script>document.write(product_type(id));</script></h6>

                                <div class="card w-100 mx-auto" style="background-color:transparent;">
                                    <div class="card-body">
                                        <p class="card-text" style="overflow-y: scroll; height:20vw;" id="product_introduce"><script>document.write(product_introduce(id));</script></p>
                                    </div>
                                </div>
                            </div>
                                
                            <div class="line"></div>

                            <p class="text-center lh-1 fs-6 TCword" style="color: black;">NT <script>document.write(product_price(id));</script>$</p>

                            <div class="text-center">
                                <button onclick="productpage_sub()">-</button>
                                <p style="display: inline-block; color:black" id="product_num">1</p>
                                <button onclick="productpage_add()">+</button>
                                <button onclick="productpage_sure('<?php echo $product_id ?>')" id="sure">Sure</button>
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
