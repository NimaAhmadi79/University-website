function out() {

    if (window.XMLHttpRequest) {

        request = new XMLHttpRequest();

    } else {

        request = new ActiveXObject("Microsoft.XMLHTTP")

    }
    request.open("get", "Logout");
    request.send();
    request.onreadystatechange = function () {
        if (request.readyState === 4 && request.status === 200) {
        }
    }
}