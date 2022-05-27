function post_productlist(){

    if (product_totalprice()>0){

        alert("下單成功，聯絡客服確認訂單");

        url='../db/buy_submit.php';

        CustomerData = JSON.parse(localStorage.getItem('CD'));

        product_num_json_data = localStorage.getItem("num_list");
        $.post(url,{
    
            'IGname' : CustomerData[0].data,
            'email' : CustomerData[1].data,
            'ordername' : CustomerData[2].data,
            'orderphone' : CustomerData[3].data,
            'receverphone' : CustomerData[4].data,

            'product_num_json' : product_num_json_data,

            'payway' : CustomerData[5].data,
            'sendway' : CustomerData[6].data,
            'address' : CustomerData[7].data
    
        },function(data){
            // alert("下單成功，聯絡客服確認訂單");
            window.location.href="../view/index.html";
            // $(".result").html(data);
        });
        localStorage.clear();
    }

}

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
total_price=0;
function post_coupon(){

    get("../db/userdata.php")
    .then((res) => {
        data = JSON.parse(res);

        if(data[0]){
            coupon_name = document.getElementById("coupon").value;
            url='../db/compare_coupon.php?coupon=' + document.getElementById("coupon").value + '&email=' + data[2] + '&total=' + product_totalprice()

            get(url)
            .then((res) => {
                document.getElementById("input_coupon").style.display = "none";
                document.getElementById("show_use_coupon").style.display = "block";
                document.getElementById("show_use_coupon_name").innerText = coupon_name;
                document.getElementById("first_total").innerText = Number(res);
                document.getElementById("total_price").innerText = Number(res)+ Number(localStorage.getItem('freight'));
            })


        
        }
    })

}



function load(){
    CustomerData = JSON.parse(localStorage.getItem('CD'));
    document.getElementById('freight').innerText = localStorage.getItem('freight');
    document.getElementById('total_price').innerText = product_totalprice() + Number(localStorage.getItem('freight'));
}



