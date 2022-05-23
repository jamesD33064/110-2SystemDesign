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

            'sendway' : CustomerData[5].data,
            'address' : CustomerData[6].data
    
        },function(data){
            // alert("下單成功，聯絡客服確認訂單");
            window.location.href="../view/index.html";
            // $(".result").html(data);
        });
        localStorage.clear();
    }

}

function load(){
    CustomerData = JSON.parse(localStorage.getItem('CD'));
    document.getElementById('freight').innerText = localStorage.getItem('freight');
    document.getElementById('total_price').innerText = product_totalprice() + Number(localStorage.getItem('freight'));
}