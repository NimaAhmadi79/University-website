invite();

function invite() {
    var request;
    let objs;


    if (window.XMLHttpRequest) {

        request = new XMLHttpRequest();
    } else {

        request = new ActiveXObject("Microsoft.XMLHTTP")

    }
    request.open("get", "InviteAjax");
    request.onreadystatechange = function () {
        if (request.readyState === 4 && request.status === 200) {
            objs = JSON.parse(request.responseText);
            var string = "";
            for (var key in objs) {
                string += "<label >نام:</label>" + objs[key].name + "<br>" + "<label>نام خانوادگی:</label>" + objs[key].family + "<br>"
                    + "<label>ایمیل:</label>" + objs[key].email + "<br>" + "<label>شماره تماس:</label>" + objs[key].phone + "<br>" + "<label>آدرس:</label>" + objs[key].address + "<br>" + "<label>رزومه:</label>" + objs[key].message + "<br>" +
                    "<p style='font-size: large; text-align: center' >----------------------------------------------------</p>" + "<br>";
            }
            document.getElementById("getInviteInformation").innerHTML = string;
        }
    }
    request.send();
    setTimeout(invite, 20000);
}

// fetch("InviteAjax").then(function (res) {
//     return res.text();
//
// })
//     .then(function (data) {
//         console.log(data);
//
//     });




















