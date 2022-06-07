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



sell_date_list=[];
i_sell_date = 0;
function generateTable (jArray) {
    let tbody = document.createElement('tbody');
    let thead = document.createElement('thead');
    let table = document.createElement('table');
    
    // 將所有資料列的資料轉成tbody
    jArray.forEach(row => {
        let tr = document.createElement('tr');
    
        Object.keys(row).forEach(tdName => {
            let td = document.createElement('td');
            td.textContent= row[tdName];
            // td.style.cssText="FONT-WEIGHT: 500;border-color: inherit;border-style: solid;border-width: 5;padding: 20px";
            td.style.cssText="padding: 20px";
            tr.appendChild(td);
        });
        bt =document.createElement("button");           //createElement生成button对象
        bt.innerHTML = '查看更多';
        bt.style.cssText="margin-top: 1vw;";
        bt.setAttribute("id", i_sell_date);
        bt.onclick = function () {    
            url="../view/orderhistory.php?sell_date="+sell_date_list[this.id].replace(' ', '_');
            window.location=url;
        };
        i_sell_date++;
        
        // tr.style.cssText="FONT-WEIGHT: 500;border-color: inherit;border-width: 5;border-style: solid;";
        tr.appendChild(bt);
        // tbody.style.cssText="FONT-WEIGHT: 500;border-color: inherit;border-width: 5;border-style: solid;";
        tbody.appendChild(tr);
    });
    table.appendChild(tbody);
    
    // 將所有資料列的欄位轉成thead
    let headerTr = document.createElement('tr')
    // headerTr.style.cssText="FONT-WEIGHT: 500;border-color: inherit;border-width: 5;border-style: solid;";
    Object.keys(jArray[0]).forEach(header => {
        let th = document.createElement('th')
        th.textContent = header
        // th.style.cssText="FONT-WEIGHT: 500;border-color: inherit;border-width: 5;border-style: solid;";
        headerTr.appendChild(th)
    });
    
    // 新增thead到table上
    // thead.style.cssText="FONT-WEIGHT: 500;border-color: inherit;border-width: 5;border-style: solid;";
    thead.appendChild(headerTr);
    // table.style.cssText="FONT-WEIGHT: 500;border-color: inherit;border-width: 5;border-style: solid;";
    table.appendChild(thead);
    
    return table;
}

url="../db/checkorder.php";
get(url)
.then((res) => {
    order_data_from_db=[];
    res.forEach(element => {
        order_data_from_db.push({"購買日期":element.sell_date,"訂購人姓名":element.ordername,"訂購狀態":element.state," ":""});
        sell_date_list.push(element.sell_date);
    });
    document.getElementById("order").appendChild(generateTable(order_data_from_db));
})

