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


get("../db/sendBiddingToJS.php")
.then((res) => {
    show_biddingproduct_list(res);
})
function search(){
    keyword = document.getElementById("search").value;
    if(keyword==""){
        location.reload()
    }
    else{
        show_list = [];
        JSON.parse(localStorage.getItem("biddinglist_from_db")).forEach(element => {
            if(element.product_name.includes(keyword)){
                show_list.push(element);
            }
        });
        show_biddingproduct_list(show_list);
    }
}

function classify(){
    books = document.getElementsByName("book");
    cds = document.getElementsByName("cd");
    
    list=[];
    
    books_checked=[];
    cds_checked=[];
    flag=0;
    for(var i=0 ; i<books.length ; i++){
        if(books[0].checked){
            books_checked.push("1_"+String(i));
            flag=1;
        }
        else{
            if(books[i].checked){
                books_checked.push("1_"+String(i));
                flag=1;
            }
        }
    }
    for(var i=0 ; i<cds.length ; i++){
        if(cds[0].checked){
            cds_checked.push("2_"+String(i));
            flag=1;
        }
        else{
            if(cds[i].checked){
                cds_checked.push("2_"+String(i));
                flag=1;
            }
        }
    }//將點擊屬性紀錄

    if(flag==0){
        location.reload();
    }
    else{
        show_list = [];
        JSON.parse(localStorage.getItem("biddinglist_from_db")).forEach(element => {
            if(books_checked.includes(element.type) || cds_checked.includes(element.type)){
                show_list.push(element);
            }
        });
        show_biddingproduct_list(show_list);
    }
}



function show_biddingproduct_list(list){
    var cartlist=""; 

    for(var i=0 ; i<list.length ; i++){

        img_path = "../image/"+list[i].img_1;

        cartlist+="<div class=\"col-xs-12 col-sm-6 col-lg-4\" style=\"margin-top: 5vw;\">";
        cartlist+="<div class=\"card hoverbig\" style=\"border-color:#ffffff;\" onclick=\"biddingproductname_locolstorage('"+list[i].id+"');\">";
        cartlist+="<img src=\""+img_path+"\" height=\"300vw\" class=\"mx-auto\">";
        cartlist+="<div class=\"card-body\" style=\"background-color: #ffffff;\">";
        cartlist+="<p class=\"text-center lh-1\" style=\"color: black;\">"+list[i].product_name+"</p>";
        cartlist+="<p class=\"text-center lh-1\" style=\"color: black;\">目前出價：NT "+list[i].product_price+"$</p>";
        cartlist+="</div></div></div>";

    }
    document.getElementById("biddingproduct_list").innerHTML=cartlist;


}

 