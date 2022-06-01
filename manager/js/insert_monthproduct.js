username="";
email="";

function insert_change(){
    ProductName = document.getElementById("changeproduct_name").value
    url='../db/InsertChangeTuple.php';
    $.post(url,{
        
        'Img' : document.getElementById("changeproduct_img").value,
        'ProductName' : ProductName

    },function(data){
        alert(ProductName + "上架成功");
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

