
///////////////////////////////////////////////////
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
    product_data_from_db=[];
    res.forEach(element => {
        product_data_from_db.push(element);
    });
    //將資料庫取得資料寫入localstorage命名為productlist_from_db
    localStorage.setItem("productlist_from_db",JSON.stringify(product_data_from_db));
    // window.setTimeout(( () =>  ), 5000);
})
get("../db/sendChangeToJS.php")
.then((res) => {
    product_data_from_db=[];
    res.forEach(element => {
        product_data_from_db.push(element);
    });
    //將資料庫取得資料寫入localstorage命名為productlist_from_db
    localStorage.setItem("changelist_from_db",JSON.stringify(product_data_from_db));
    // window.setTimeout(( () =>  ), 5000);
})

///////////////////////////////////////////////////

