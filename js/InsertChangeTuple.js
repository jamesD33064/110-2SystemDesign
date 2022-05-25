username="";
email="";

function insert_change(){
    
        url='../db/InsertChangeTuple.php';
        $.post(url,{
    
            'CustomerName' : username,
            'Email' : email,
            'Img' : document.getElementById("changeproduct_img").value,
            'ProductName' : document.getElementById("changeproduct_name").value
    
        },function(data){
            alert(price + "出價成功");
            location.reload();
        });
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
