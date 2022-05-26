function checkoutpage_show_productlist(){
    var cartlist="";
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
                
                cartlist+="<p class=\"ENGword\">"+productname+" x "+productnum_list[i].count+"： NT$"+one_product_totalprice(productnum_list[i].name)+"</p>";
            }
        }
        return cartlist;
    }
    else{
        return "<h1  class='fw-bolder TCword text-center' style='margin-top: 3vw;'>Nothing in the cart</h1>";
    }
}

function Foo(){
    var form1 = document.getElementById("form1");
    
    total_price = document.getElementById('total_price');
    freight=document.getElementById('freight');

    for (var i=0; i<form1.sendway.length; i++){
        if (form1.sendway[i].checked){
            if(form1.sendway[i].value=='sendway_1'){//宅配
                document.getElementById('address_input').style.display = 'block';
                document.getElementById('7-11_input').style.display = 'none';
                localStorage.setItem('freight',160);
                localStorage.setItem('total_price',product_totalprice() + 160);
                document.getElementById("7-11").value='';
            }
            else if(form1.sendway[i].value=='sendway_2'){//超商冷凍店到店
                document.getElementById('7-11_input').style.display = 'block';
                document.getElementById('address_input').style.display = 'none';
                localStorage.setItem('freight',130);
                localStorage.setItem('total_price',product_totalprice() + 130);
                document.getElementById("address").value='';
            }
            else if(form1.sendway[i].value=='sendway_3'){//面交
                document.getElementById('7-11_input').style.display = 'none';
                document.getElementById('address_input').style.display = 'none';
                localStorage.setItem('freight',0);
                localStorage.setItem('total_price',product_totalprice());
            }
            break;
        }
    }
}

function nextPage(){
//要新增檢查
    IGname_data = document.getElementById("IGname").value;
    email_data = document.getElementById("email").value;
    ordername_data = document.getElementById("ordername").value;
    orderphone_data = document.getElementById("orderphone").value;
    receverphone_data = document.getElementById("receverphone").value;
    payway_data = document.querySelector('input[name="payway"]:checked').value;
    sendway_data = document.querySelector('input[name="sendway"]:checked').value;

    if(document.getElementById("address").value==''){
        address_data = document.getElementById("7-11").value;
    }
    else{
        address_data = document.getElementById("address").value;
    }
//檢查規則
    if(CheckValue(IGname_data,email_data,ordername_data,orderphone_data,receverphone_data,sendway_data,address_data)){
       alert(CheckValue(IGname_data,email_data,ordername_data,orderphone_data,receverphone_data,sendway_data,address_data));
    }
    else{
        var CustomerData=[
            {datatype : 'IGname',data : IGname_data},
            {datatype : 'email',data : email_data},
            {datatype : 'ordername',data : ordername_data},
            {datatype : 'orderphone',data : orderphone_data},
            {datatype : 'receverphone',data : receverphone_data},
            {datatype : 'payway',data : payway_data},
            {datatype : 'sendway',data : sendway_data},
            {datatype : 'address',data : address_data}
        ];
        
    
        var data = JSON.stringify(CustomerData);
        localStorage.setItem('CD',data);
    
        window.location.href="./SubmitOrder.html";
    }

}


function CheckValue(IGname_data,email_data,ordername_data,orderphone_data,receverphone_data,sendway_data,address_data){
    if(IGname_data==''){
        return 'Instagram用戶名稱未輸入';
    }

    if(email_data.search("@")==-1){
        return 'email填寫格式錯誤';
    }

    if(ordername_data==''){
        return '訂購人姓名未輸入';
    }

    if(orderphone_data.length!=10){
        return '訂購人手機格式錯誤';
    }

    if(receverphone_data.length!=10){
        return '收件人手機格式錯誤';
    }

    if(sendway_data=="sendway_1"){
        if(address_data==""){
            return '宅配地址未輸入';
        }
    }
    else if(sendway_data=="sendway_2"){
        if(address_data==""){
            return '取件門市未輸入';
        }
    }


}