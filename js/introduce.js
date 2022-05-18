
b=0;
function dropdown(id,but){
    if (b==0) {
        document.getElementById(id).style.display = "block";
        b=1;
        document.getElementById(but).innerText="view less ↑ ";
    }
    else if(b==1){
        document.getElementById(id).style.display = "none";
        b=0;
        document.getElementById(but).innerText="view more ↓ ";
    }
}