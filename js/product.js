function productname_locolstorage(name){
    sessionStorage.setItem('productname', name);
    window.location.href="../product/product.php?id="+name;
}
function changeproductname_locolstorage(name){
    sessionStorage.setItem('productname', name);
    window.location.href="../product/change.php?id="+name;
}
function biddingproductname_locolstorage(name){
    sessionStorage.setItem('productname', name);
    window.location.href="../product/bidding.php?id="+name;
}



function product_img_1(id){
    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id ==  id){
            return product_data[i].img_1;
        }
    };
    product_data=JSON.parse(localStorage.getItem("changelist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id ==  id){
            return product_data[i].img_1;
        }
    };
    product_data=JSON.parse(localStorage.getItem("biddinglist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id ==  id){
            return product_data[i].img_1;
        }
    };
}
function product_img_2(id){
    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id ==  id){
            return product_data[i].img_2;
        }
    };
    product_data=JSON.parse(localStorage.getItem("changelist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id ==  id){
            return product_data[i].img_2;
        }
    };
    product_data=JSON.parse(localStorage.getItem("biddinglist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id ==  id){
            return product_data[i].img_2;
        }
    };
}
function product_img_3(id){
    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id ==  id){
            return product_data[i].img_3;
        }
    };
    product_data=JSON.parse(localStorage.getItem("changelist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id ==  id){
            return product_data[i].img_3;
        }
    };
    product_data=JSON.parse(localStorage.getItem("biddinglist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id ==  id){
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
    product_data=JSON.parse(localStorage.getItem("changelist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == pname){
            return product_data[i].product_name;
        }
    };
    product_data=JSON.parse(localStorage.getItem("biddinglist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == pname){
            return product_data[i].product_name;
        }
    };
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
    product_data=JSON.parse(localStorage.getItem("changelist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == pprice){
            return product_data[i].product_price;
        }
    };
    product_data=JSON.parse(localStorage.getItem("biddinglist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == pprice){
            return product_data[i].product_price;
        }
    };
}

function product_introduce(pintroduce){

    product_data=JSON.parse(localStorage.getItem("productlist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == pintroduce){
            return product_data[i].introduce;
        }
    }
    product_data=JSON.parse(localStorage.getItem("changelist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == pintroduce){
            return product_data[i].introduce;
        }
    };
    product_data=JSON.parse(localStorage.getItem("biddinglist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == pintroduce){
            return product_data[i].introduce;
        }
    };
}

function get_sessionstorage_productprice(){
    return product_price(sessionStorage.getItem('productname'))
}


function end_time(id){
    product_data=JSON.parse(localStorage.getItem("biddinglist_from_db"));
    for(var i=0 ; i<product_data.length ; i++){
        if(product_data[i].id == id){
            return product_data[i].end_time;
        }
    };
}

