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


{/* <div class="col-6 col-md-3">
<div class="card" style="border-color:#ffffff;" onclick="productname_locolstorage('p1');">
    <div class="hoverbig">
        <img src="https://s.eslite.dev/webp/upload/product/m/2682158950000/20220416055754721577.webp" width="100%" height="100%">
    </div>
    <div class="card-body" style="background-color: #ffffff;">

        <p class="text-center lh-1 " style="color: black;"><script>document.write(product_name('p1'))</script></p>
        <p class="text-center lh-1 fs-6" style="color: black;">NT <script>document.write(product_price('p1'))</script>$</p>

    </div>
</div>
</div> */}