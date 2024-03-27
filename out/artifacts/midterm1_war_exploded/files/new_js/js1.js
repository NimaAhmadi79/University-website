


function akhbar() {

    var request;

    if(window.XMLHttpRequest){

        request= new XMLHttpRequest();


    }
    else {

        request=new ActiveXObject("Microsoft.XMLHTTP")

    }

    request.open("get","AkhbarAjax");
    request.onreadystatechange=function () {

        if(request.readyState===4 && request.status===200){
           alert(request.responseText);
        }
    }
    request.send();

}