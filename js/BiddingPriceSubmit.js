username="";
email="";

function post_biddingprice(id){
    productname=id;
    if (productname.substring(0,2)=="bi"){

        price = document.getElementById("biddingprice").value;
        price_2 = document.getElementById("biddingprice_2").value;
        
        if(Number(price)==Number(price_2)){
            if(Number(price)>Number(product_price(id))){
                    
                url='../db/BiddingPriceSubmit.php';
                $.post(url,{
            
                    'CustomerName' : username,
                    'Email' : email,
                    'ProductID' : productname,
                    'Price' : price
            
                },function(data){
                    alert(price + "出價成功");
                    location.reload();
                });

            }
            else{
                alert("出價過低");
            }
        }
        else{
            alert("確認出價不同");
        }
        
    }
    else{
        alert("非競標商品");
    }

}
function get(url) {

    return new Promise((resolve, reject)=> {
        var req = new XMLHttpRequest();
        req.open('GET', url);
        req.onload = function() {
            if (req.status == 200 && req.readyState==4) {
                resolve(JSON.parse(req.response));
            }
        };
        req.send();
    });
}

get("../db/userdata.php")
.then((res) => {
    if(res[0]==true){
        username=res[1];
        email=res[2];
    }
})