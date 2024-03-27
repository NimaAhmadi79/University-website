news();

function news() {
    var request;
    let objs;

    if (window.XMLHttpRequest) {

        request = new XMLHttpRequest();

    } else {

        request = new ActiveXObject("Microsoft.XMLHTTP")

    }
    request.open("get", "NewsAjax");
    request.onreadystatechange = function () {
        if (request.readyState === 4 && request.status === 200) {
            objs = JSON.parse(request.responseText);
            var string = "";
            for (var key in objs) {
                string += "<article class='post' style='overflow: auto ; height: 600px ; border:solid 4px ; padding: 50px'>\n" +
                    "<div class='post_header'>\n" +
                    " <h3 class='post_title' id='first'>" + objs[key].subject + "</h3>" +
                    " <div class='post_sub'><i class='fa-time'></i>" + objs[key].date + "<a href='#section1'><i class='fa-comments-alt'></i><br> درج نظر</a> </div>\n" +
                    "            </div>\n" +
                    "            <div class='post_content' dir='auto'>\n" +
                    "                <figure><img alt='0' src='" +
                    objs[key].link + "'></figure>" +
                    "<div style='font-size: 20px ; padding: 15px 50px 15px 50px'>\n" +
                    objs[key].message + "</div>\n" + "</div>\n" +
                    "            </article>\n";
            }
            document.getElementById("newsajax").innerHTML = string;

        }
    }
    request.send();

}

