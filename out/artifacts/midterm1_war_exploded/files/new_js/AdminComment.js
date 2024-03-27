comment();

function comment() {
    var request;
    let objs;
    if (window.XMLHttpRequest) {

        request = new XMLHttpRequest();


    } else {

        request = new ActiveXObject("Microsoft.XMLHTTP")

    }
    request.open("get", "CommentAjax");
    request.onreadystatechange = function () {
        if (request.readyState === 4 && request.status === 200) {
            objs = JSON.parse(request.responseText);
            console.log(objs);
            var string = "";
            for (var key in objs) {
                string += "<label >نام:</label>" + objs[key].name + "<br>" + "<label>ایمیل:</label>" + objs[key].email + "<br>"
                    + "<label>موضوع:</label>" + objs[key].subject + "<br>" + "<label>پیام:</label>" + objs[key].message + "<br>" +
                    "<p style='font-size: large; text-align: center' >-------------------------------------------------------------------------------------------------------</p>" + "<br>";
            }
            document.getElementById("getCommentInformation").innerHTML = string;
        }
    }
    request.send();
    setTimeout(comment, 20000);
}