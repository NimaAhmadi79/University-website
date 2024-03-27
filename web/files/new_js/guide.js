guide();

function guide() {
    var request;
    let objs;

    if (window.XMLHttpRequest) {

        request = new XMLHttpRequest();

    } else {

        request = new ActiveXObject("Microsoft.XMLHTTP")

    }

    request.open("post", "GuideAjax");
    request.onreadystatechange = function () {
        if (request.readyState === 4 && request.status === 200) {
            objs = JSON.parse(request.responseText);
            var teacher = "";
            var student = "";
            var public1 = "";
            for (var key in objs) {
                if (objs[key].part === "asatid" || objs[key].part === "karkonan") {
                    if (objs[key].message === "null") {

                        teacher += "<p style=\"font-size: 17px\">\n" +
                            "        <a href=" + objs[key].link + " target=\"_blank\"/>" + objs[key].subject + "</a><br><div style='height: 5px;background-color: #00ACEE'></div><br>\n" +
                            "    </p>"
                    } else {
                        teacher += "<p style=\"font-size: 17px\">\n" +
                            "        <a href=" + objs[key].link + " target=\"_blank\"/>" + objs[key].subject + "</a><br>" + objs[key].message + "<br><div style='height: 5px;background-color: #00ACEE'></div><br>\n" +
                            "    </p>"

                    }

                }


                if (objs[key].part === "omoomi") {
                    if (objs[key].message === "null") {
                        public1 += "<p style=\"font-size: 17px\">\n" +
                            "        <a href=" + objs[key].link + " target=\"_blank\"/>" + objs[key].subject + "</a><br><div style='height: 5px;background-color: #00ACEE'></div><br>\n" +
                            "    </p>"
                    } else {
                        public1 += "<p style=\"font-size: 17px\">\n" +
                            "        <a href=" + objs[key].link + " target=\"_blank\"/>" + objs[key].subject + "</a><br>" + objs[key].message + "<br><div style='height: 5px;background-color: #00ACEE'></div><br>\n" +
                            "    </p>"

                    }

                }


                if (objs[key].part === "daneshjoii") {
                    if (objs[key].message === "null") {
                        student += "<p style=\"font-size: 17px\">\n" +
                            "        <a href=" + objs[key].link + " target=\"_blank\"/>" + objs[key].subject + "</a><br><div style='height: 5px;background-color: #00ACEE'></div><br>\n" +
                            "    </p>"
                    } else {
                        student += "<p style=\"font-size: 17px\">\n" +
                            "        <a href=" + objs[key].link + " target=\"_blank\"/>" + objs[key].subject + "</a><br>" + objs[key].message + "<br><div style='height: 5px;background-color: #00ACEE'></div><br>\n" +
                            "    </p>"

                    }

                }


            }

            document.getElementById("teacherguide").innerHTML = teacher;
            document.getElementById("studentguide").innerHTML = student;
            document.getElementById("publicguide").innerHTML = public1;
        }


    }

    request.send();
    setTimeout(guide, 20000);

}









