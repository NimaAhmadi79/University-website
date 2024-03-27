info();

function info() {
    var request;
    let objs;
    if (window.XMLHttpRequest) {
        request = new XMLHttpRequest();
    } else {
        request = new ActiveXObject("Microsoft.XMLHTTP")
    }
    request.open("get", "IndexInfoAjax");
    request.onreadystatechange = function () {
        if (request.readyState === 4 && request.status === 200) {
            objs = JSON.parse(request.responseText);
            console.log(objs);
            document.getElementById("contactinfo").innerHTML = objs.contact;
            document.getElementById("inviteinfo").innerHTML = objs.invite;
            document.getElementById("commentinfo").innerHTML = objs.comment;
        }
    }
    request.send();
    setTimeout(info, 20000);
}
