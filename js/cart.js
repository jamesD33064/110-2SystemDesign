var productnum = 1;
var cart_number = 0;

var key='total_num'

var productnum_list=[];

function productpage_add(){
    productnum++;
    document.getElementById("product_num").innerText=productnum;
}
function productpage_sub(){
    if(productnum!=1){
        productnum--;
        document.getElementById("product_num").innerText=productnum;
    }
}

function productpage_sure(id){//在產品頁面按下確認更新購物車數量
    cart_number+=productnum;
    localStorage.setItem(key, String(cart_number));
    numlist(id);
    cart_num();
    productnum=1;
    document.getElementById("product_num").innerText=productnum;

    alert("已加入購物車");
}

function cart_num(){//整理navbar購物車部分應顯示的數量
    
    cart_number = Number(localStorage.getItem(key));

    if (localStorage.getItem('num_list')){
        productnum_list = JSON.parse(localStorage.getItem('num_list'));
    }
    var total=0;
    for(var i=0 ; i<productnum_list.length; i++){
        total+=productnum_list[i].count;
    }

    if(total==0){
        document.getElementById("cartnum_small").style.display=none;
        document.getElementById("cartnum_big").style.display=none;
    }
    else{
        document.getElementById("cartnum_small").innerText=total;
        document.getElementById("cartnum_big").innerText=total;
        localStorage.setItem(key,total);
    }

}

function numlist(id){//在localstorage 建立當前商品 購物車列表
    if (localStorage.getItem('num_list')!=null){
        productnum_list = JSON.parse(localStorage.getItem('num_list'));
    }
    a=0;
    productnum_list.forEach(element => {
        if(element.name== id){
            element.count+=productnum;
            a=1;
        }
    });
    if(a==0){
        productnum_list.push({name: id,count:productnum});
    }

    var data = JSON.stringify(productnum_list);
    localStorage.setItem('num_list',data);
}

//cart page

function cart_img(name){
    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == name){
            return product_data[i].img_1;
        }
    };
}

function cartpage_show_productlist(){
    var cartlist=""; 
    var productname="";
    var img_path = "";

    if (localStorage.getItem('num_list')){

        if(!Number(localStorage.getItem(key))){
            return "<h1  class='fw-bolder TCword text-center' style='margin-top: 3vw;'>Nothing in the cart</h1>";
        }

        productnum_list = JSON.parse(localStorage.getItem('num_list'));

        for(var i=0 ; i<productnum_list.length ; i++){
        
            if(productnum_list[i].count){

                img_path = "../image/"+cart_img(productnum_list[i].name);
                productname = product_name(productnum_list[i].name);
                total = one_product_totalprice(productnum_list[i].name);

                cartlist+="<div style=\"width:85%;\" class=\"mx-auto\">";
                cartlist+="<div class='row' >";
                cartlist+="<div class='col-6 col-sm-6 text-center align-middle' style=\"margin-top: 6%;\">";
                cartlist+="<img src='"+String(img_path)+"' class='product_img' style='width: 90px;'>";
                cartlist+="</div>";
                cartlist+="<div id='bigscreen' class='col-5 col-sm-5' style=\"margin-top: 4%;\">";
                cartlist+="<div style='margin-top: 10%;'>";
                cartlist+="<h4 class='fw-bolder TCword' >"+productname+"</h4>";
                cartlist+="</div>";
                cartlist+="</div>";
                cartlist+="<div class='col-1 col-sm-1'>";
                cartlist+="<div class=\"text-end\">";
                cartlist+="<p style='font-size: 1rem; color:black; display:inline-block;' onclick=\"delete_product('"+productnum_list[i].name+"')\">x</p>";
                
                cartlist+="</div></div></div>";
                cartlist+="<div class=\"row\">";
                cartlist+="<div class=\"col-12 col-sm-12\">";
                cartlist+="<div class=\"text-end\">";
                cartlist+="<p style='display:block;'>NT&nbsp;$<script>document.write(product_price('"+productnum_list[i].name+"'))</script></p>";

                cartlist+="</div></div></div>";
                cartlist+="<div class=\"row\">";
                cartlist+="<div class=\"col-6 col-sm-6\">";
                cartlist+="<div class=\"text-center\">";
                cartlist+="<p style=' font-size: 1rem; color:black; display:inline-block;' onclick=\"cartpage_sub('"+productnum_list[i].name+"')\">-&emsp;</p>";
                cartlist+="<p style=' font-size: 1rem; color:black; display:inline-block;'>數量：<span id=\"cartpage_productnum_"+productnum_list[i].name+"\">"+productnum_list[i].count+"</span></p>";
                cartlist+="<p style=' font-size: 1rem; color:black; display:inline-block;' onclick=\"cartpage_add('"+productnum_list[i].name+"')\">&emsp;+</p>";
                
                cartlist+="</div></div>";
                cartlist+="<div class=\"col-6 col-sm-6\">";
                cartlist+="<div class=\"text-end\">";
                cartlist+="<p style='display:block;'>NT&nbsp;$<span id=\"one_product_totalprice_"+productnum_list[i].name+"\">"+total+"</span></p>";
                cartlist+="</div></div></div>";
                cartlist+="<div class='line'></div>";
                cartlist+="</div>";
            }

        }
        return cartlist;
    }
    else{
        return "<h1  class='fw-bolder TCword text-center' style='margin-top: 3vw;'>Nothing in the cart</h1>";
    }
}

function delete_product(productname){
    if (localStorage.getItem('num_list')){
        productnum_list = JSON.parse(localStorage.getItem('num_list'));
        var total=0;
        for(var i=0 ; i<productnum_list.length ; i++){
            if(productnum_list[i].name==productname){
                productnum_list[i].count=0;
                // alert(productnum_list[i].count);
                var data = JSON.stringify(productnum_list);
                localStorage.setItem('num_list',data);
            }
            total+=productnum_list[i].count;
        }
        
        localStorage.setItem(key,total);
        window.location.reload();
    }
}


function cartpage_add(productname){
    productnum_list = JSON.parse(localStorage.getItem('num_list'));
    for(var i=0 ; i<productnum_list.length ; i++){
        if(productnum_list[i].name==productname){

            id="cartpage_productnum_"+String(productnum_list[i].name);
            document.getElementById(id).innerText=++productnum_list[i].count;
            productnum_list[i].count=Number(document.getElementById(id).innerText);


            var data = JSON.stringify(productnum_list);
            localStorage.setItem('num_list',data);
            // document.getElementById('cartpage_totalprice').innerText=product_totalprice();

            id="one_product_totalprice_"+String(productnum_list[i].name);
            document.getElementById(id).innerText=String(one_product_totalprice(productnum_list[i].name));
            break;
        }
    }
}
function cartpage_sub(productname){
    productnum_list = JSON.parse(localStorage.getItem('num_list'));
    for(var i=0 ; i<productnum_list.length ; i++){
        if(productnum_list[i].name==productname){

            id="cartpage_productnum_"+String(productnum_list[i].name);
            num=document.getElementById(id);
            if(Number(num.innerText)>1){
                num.innerText=--productnum_list[i].count;
            }
            else if(Number(num.innerText)==1){
                delete_product(productnum_list[i].name);
                // alert(productnum_list[i].name);
                num.innerText=0;
            }

            productnum_list[i].count=Number(num.innerText);
            var data = JSON.stringify(productnum_list);
            localStorage.setItem('num_list',data);
            // document.getElementById('cartpage_totalprice').innerText=product_totalprice();


            id="one_product_totalprice_"+String(productnum_list[i].name);
            document.getElementById(id).innerText=String(one_product_totalprice(productnum_list[i].name));
            break;
        }
    }
}


function checkoutpage(){
    if(product_totalprice){
        localStorage.setItem('freight',0);
        window.location.href="checkout.html";
    }
}


function one_product_totalprice(pname){
    productnum_list = JSON.parse(localStorage.getItem('num_list'));
    total=0;
    for(var i=0 ; i<productnum_list.length ; i++){
        if(productnum_list[i].name == pname){
            total+=productnum_list[i].count * product_price(productnum_list[i].name);
        }
    }
    return total;
}
function product_totalprice(){

    if(localStorage.getItem('num_list')){
        productnum_list = JSON.parse(localStorage.getItem('num_list'));
        total=0;
        for(var i=0 ; i<productnum_list.length ; i++){
            if(productnum_list[i].count){
                total+=one_product_totalprice(productnum_list[i].name);
                // console.log(total);
            }
        }
        return total;
    }
    else{
        return 0;
    }
}