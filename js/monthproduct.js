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


get("../db/sendProductToJS.php")
.then((res) => {
    // product_data_from_db=[];
    // res.forEach(element => {
    //     product_data_from_db.push(element);
    // });
    show_monthproduct_list(res);
})

function search(){
    keyword = document.getElementById("search").value;
    if(keyword==""){
        location.reload()
    }
    else{
        show_list = [];
        JSON.parse(localStorage.getItem("productlist_from_db")).forEach(element => {
            if(element.product_name.includes(keyword)){
                show_list.push(element);
            }
        });
        show_monthproduct_list(show_list);
    }
}

function classify(){
    books = document.getElementsByName("book");
    cds = document.getElementsByName("cd");
    
    list=[];
    
    books_checked=[];
    cds_checked=[];
    
    for(var i=1 ; i<books.length ; i++){
        if(books[i].checked){
            books_checked.push("1_"+String(i));
        }
    }
    for(var i=1 ; i<cds.length ; i++){
        if(cds[i].checked){
            cds_checked.push("2_"+String(i));
        }
    }//將點擊屬性紀錄

    show_list = [];
    JSON.parse(localStorage.getItem("productlist_from_db")).forEach(element => {
        if(books_checked.includes(element.type) || cds_checked.includes(element.type)){
            show_list.push(element);
        }
    });
    
    show_monthproduct_list(show_list);


    
}

function show_monthproduct_list(list){
    var cartlist=""; 

    for(var i=0 ; i<list.length ; i++){

        img_path = "../image/"+list[i].img_1;

        cartlist+="<div class=\"col-xs-12 col-sm-6 col-lg-4\" style=\"margin-top: 5vw;\">";
        cartlist+="<div class=\"card hoverbig\" style=\"border-color:#ffffff;\" onclick=\"productname_locolstorage('"+list[i].id+"');\">";
        cartlist+="<img src=\""+img_path+"\" height=\"300vw\" class=\"mx-auto\">";
        cartlist+="<div class=\"card-body\" style=\"background-color: #ffffff;\">";
        cartlist+="<p class=\"text-center lh-1\" style=\"color: black;\">"+list[i].product_name+"</p>";
        cartlist+="<p class=\"text-center lh-1\" style=\"color: black;\">NT "+list[i].product_price+"$</p>";
        cartlist+="</div></div></div>";

    }
    document.getElementById("monthproduct_list").innerHTML=cartlist;


}

 
