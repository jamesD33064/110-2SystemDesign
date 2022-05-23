function productname_locolstorage(name){
    sessionStorage.setItem('productname', name);
    window.location.href="../product/product.html";
}
function changeproductname_locolstorage(name){
    sessionStorage.setItem('productname', name);
    window.location.href="../product/change.html";
}



function product_img_1(){
    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == sessionStorage.getItem('productname')){
            return product_data[i].img_1;
        }
    };
}
function product_img_2(){
    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == sessionStorage.getItem('productname')){
            return product_data[i].img_2;
        }
    };
}
function product_img_3(){
    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == sessionStorage.getItem('productname')){
            return product_data[i].img_3;
        }
    };
}



function product_name(pname){

    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == pname){
            return product_data[i].product_name;
        }
    }
}

function get_sessionstorage_productname(){
//product page 用
    return product_name(sessionStorage.getItem('productname')); 
}

function product_price(pprice){

    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == pprice){
            return product_data[i].product_price;
        }
    }
}

function get_sessionstorage_productprice(){
    return product_price(sessionStorage.getItem('productname'))
}



