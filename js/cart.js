var productnum = 1;
var cart_number = 0;

var key='total_num'

var productnum_list=[
    {name:'p1',count:0},
    {name:'p2',count:0},
    {name:'p3',count:0},
    {name:'p4',count:0},
    {name:'p5',count:0},
    {name:'p6',count:0},
    {name:'p7',count:0},
    {name:'p8',count:0}
];


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

function productpage_sure(){
    cart_number+=productnum;
    localStorage.setItem(key, String(cart_number));
    numlist();
    cart_num();
    productnum=1;
    document.getElementById("product_num").innerText=productnum;

    alert("已加入購物車");//待改
}

function cart_num(){
    
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

function numlist(){
    if (localStorage.getItem('num_list')!=null){
        productnum_list = JSON.parse(localStorage.getItem('num_list'));
    }

    switch(sessionStorage.getItem('productname')){
        case 'p1' :
            productnum_list[0].count+=productnum;
            break;
        case 'p2' :
            productnum_list[1].count+=productnum;
            break;
        case 'p3' :
            productnum_list[2].count+=productnum;
            break;
        case 'p4' :
            productnum_list[3].count+=productnum;
            break;
        case 'p5' :
            productnum_list[4].count+=productnum;
            break;
        case 'p6' :
            productnum_list[5].count+=productnum;
            break;
        case 'p7' :
            productnum_list[6].count+=productnum;
            break;
        case 'p8' :
            productnum_list[7].count+=productnum;
            break;       
    }

    var data = JSON.stringify(productnum_list);
    localStorage.setItem('num_list',data);
}

//cart page


function cartpage_show_productlist(){
    var cartlist="";
    var img_path="../image/story_1.jpg" ,productname="";
    if (localStorage.getItem('num_list')){
        // if(document.getElementById("cartnum_small").innerText==0 || document.getElementById("cartnum_big").innerText==0){
        //     return "<h1  class='fw-bolder TCword text-center' style='margin-top: 3vw;'>Nothing in the cart</h1>";
        // }
        if(!Number(localStorage.getItem(key))){
            return "<h1  class='fw-bolder TCword text-center' style='margin-top: 3vw;'>Nothing in the cart</h1>";
        }

        productnum_list = JSON.parse(localStorage.getItem('num_list'));

        for(var i=0 ; i<productnum_list.length ; i++){
            if(productnum_list[i].count){

                productname = product_name(productnum_list[i].name);
                total = one_product_totalprice(productnum_list[i].name);
                
                cartlist+="<div style=\"width:85%;\" class=\"mx-auto\">";
                cartlist+="<div class='row' style='background-color:#ffffff';>";
                cartlist+="<div class='col-6 col-sm-6 text-center align-middle' style=\"margin-top: 6%;\">";
                cartlist+="<img src='"+img_path+"' class='product_img' style='width: 90px;'>";
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
                cartlist+="<div class=\"row\" style='background-color:#ffffff';>";
                cartlist+="<div class=\"col-12 col-sm-12\">";
                cartlist+="<div class=\"text-end\">";
                cartlist+="<p style='display:block;'>NT&nbsp;$<script>document.write(product_price('"+productnum_list[i].name+"'))</script></p>";

                cartlist+="</div></div></div>";
                cartlist+="<div class=\"row\" style='background-color:#ffffff';>";
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




// <div class='row' style='background-color:#D0CEC6';>
// <div class='col-6 col-sm-6 text-center align-middle' style='max-width: 575px;'>
//     <img src='../image/story_1.jpg' class='product_img' style='width: 130px;'>
// </div>
// <div id='bigscreen' class='col-6 col-sm-6'>
//     <div style='margin-top: 10%;'>
//         <h4 class='fw-bolder TCword' >demo<script>document.write(product_name('p4'))</script></h4>
//     </div>
// </div>
// </div>
// <div class="row">
// <div style='margin-top: 3vw;' class="col-6 col-sm-6">
//     <div class="text-center">
//         <p style='font-size: 1rem; color:black; display:inline-block;' onclick="cartpage_sub('p4')">-&emsp;</p>
//         <p style='font-size: 1rem; color:black; display:inline-block;'>數量：3</p>
//         <p style='font-size: 1rem; color:black; display:inline-block;' onclick="cartpage_add('p4')">&emsp;+</p>
//     </div>
// </div>
// <div style='margin-top: 3vw;' class="col-3 col-sm-3">
//     <div class="text-start">
//         <h6 class='fw-bolder TCword' style='display:inline-block;'>NT&emsp;$<script>document.write(one_product_totalprice('p4'))</script></h6>
//     </div>
// </div>
// <div style='margin-top: 3vw;' class="col-3 col-sm-3">
//     <div class="text-end">
//         <h6 style='font-size: 1rem; color:black; display:inline-block;' class="fw-bolder TCword" onclick="delete_product('p4')">delete</h6>
//     </div>
// </div>
// </div>

// <div class='line'></div>