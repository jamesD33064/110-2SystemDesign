function get(url) {

    return new Promise((resolve, reject)=> {
        var req = new XMLHttpRequest();
        req.open('GET', url);
        req.onload = function() {
            if (req.status == 200 && req.readyState==4) {
                resolve(req.response);
            }
        };
        req.send();
    });
}


get("../db/userdata.php")
.then((res) => {
    data = JSON.parse(res);
    // alert(createqrcode(data[1]));
    if(data[0]){
        // alert(data[0]);
        profile_username(data[1]);
    }
})

// createqrcode();



function profile_username(name){
    document.getElementById("username").innerText=name;
}
function logout(){
    window.location="../db/logout.php";
}