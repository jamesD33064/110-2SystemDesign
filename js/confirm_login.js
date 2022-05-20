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
    // alert(res);
    if(data[0]){// login
        navbar_change(data[0]);
    }
    else{ //unlogin
        navbar_change(data[0]);
    }
})

function navbar_change(state){
    if(state){//login
        document.getElementById("profile").style.display="block";
        document.getElementById("signin").style.display="none";
    }
    else{//unlogin
        document.getElementById("profile").style.display="none";
        document.getElementById("signin").style.display="block";
    }
}