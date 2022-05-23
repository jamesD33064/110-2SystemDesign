var product_data_from_db=[];

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


get("../db/sendChangeToJS.php")
.then((res) => {
    // product_data_from_db=[];
    // res.forEach(element => {
    //     product_data_from_db.push(element);
    // });
    show_monthproduct_list(res);
})


function show_monthproduct_list(list){
    var cartlist=""; 

    for(var i=0 ; i<list.length ; i++){

        img_path = "../image/"+list[i].img_1;

        cartlist+="<div class=\"col-6 col-md-3\" style=\"margin-top: 5vw;\">";
        cartlist+="<div class=\"card\" style=\"border-color:#ffffff;\" onclick=\"productname_locolstorage('"+list[i].id+"');\">";
        cartlist+="<div class=\"hoverbig\">";
        cartlist+="<img src=\""+img_path+"\" width=\"100%\" height=\"100%\">";
        cartlist+="</div>";
        cartlist+="<div class=\"card-body\" style=\"background-color: #ffffff;\">";
        cartlist+="<p class=\"text-center lh-1\" style=\"color: black;\">"+list[i].product_name+"</p>";
        cartlist+="<p class=\"text-center lh-1\" style=\"color: black;\">NT "+list[i].product_price+"$</p>";
        cartlist+="</div></div></div>";

    }
    document.getElementById("monthproduct_list").innerHTML=cartlist;


}

 