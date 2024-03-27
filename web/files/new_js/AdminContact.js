contact();

function contact() {
    var request;
    let objs;
    if (window.XMLHttpRequest) {

        request = new XMLHttpRequest();

    } else {

        request = new ActiveXObject("Microsoft.XMLHTTP")

    }
    request.open("get", "ContactAjax");
    request.onreadystatechange = function () {
        if (request.readyState === 4 && request.status === 200) {
            objs = JSON.parse(request.responseText);
            var string = "";
            for (var key in objs) {
                string += "<label >نام:</label>" + objs[key].name + "<br>" + "<label>ایمیل:</label>" + objs[key].email + "<br>"
                    + "<label>موضوع:</label>" + objs[key].subject + "<br>" + "<label>پیام:</label>" + objs[key].message + "<br>" +
                    "<p style='font-size: large; text-align: center' >----------------------------------------------------</p>" + "<br>";

            }
            document.getElementById("getContactInformation").innerHTML = string;
        }
    }
    request.send();
    setTimeout(contact, 20000);


}