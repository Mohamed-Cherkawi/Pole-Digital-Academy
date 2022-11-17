const error = document.getElementById("error").value;
let mess = document.getElementById("error-mess");

if ( error == "404" ){
    mess.innerText = "Sorry we didn't found this account :| !";
} else if ( error == "720" ){
    mess.innerText = "Username Empty ! - try again";
} else if( error == "730" ){
    mess.innerText = "Password Empty ! - try again";
}