indexnews();

function indexnews() {

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

            var length = objs.length;
            for (var key in objs) {
                if (length <= 3) {
                    if (key == 0) {
                        document.getElementById("newsimage1").style = "background-image:url(" + objs[key].link + ")";
                        document.getElementById("newssubject1").innerHTML = objs[key].subject;

                    }
                    if (key == 1) {
                        document.getElementById("newsimage2").style = "background-image:url(" + objs[key].link + ")";
                        document.getElementById("newssubject2").innerHTML = objs[key].subject;
                        document.getElementById("fsubjectnews1").innerHTML = objs[key].subject;
                        document.getElementById("fmessagenews1").innerHTML = objs[key].message.substr(0, 90) + "...";
                        document.getElementById("fimagenews1").style = "background-image:url(" + objs[key].link + ")";
                        document.getElementById("fdatenews1").innerHTML = objs[key].date;


                    }
                    if (key == 2) {
                        document.getElementById("newsimage3").style = "background-image:url(" + objs[key].link + ")";
                        document.getElementById("newssubject3").innerHTML = objs[key].subject;
                        document.getElementById("fsubjectnews2").innerHTML = objs[key].subject;
                        document.getElementById("fmessagenews2").innerHTML = objs[key].message.substr(0, 90) + "...";
                        document.getElementById("fimagenews2").style = "background-image:url(" + objs[key].link + ")";
                        document.getElementById("fdatenews2").innerHTML = objs[key].date;

                    }

                }

            }
            if (length == 4) {
                document.getElementById("newsimage1").style = "background-image:url(" + objs[1].link + ")";
                document.getElementById("newssubject1").innerHTML = objs[1].subject;
                document.getElementById("newsimage2").style = "background-image:url(" + objs[2].link + ")";
                document.getElementById("newssubject2").innerHTML = objs[2].subject;
                document.getElementById("newsimage3").style = "background-image:url(" + objs[3].link + ")";
                document.getElementById("newssubject3").innerHTML = objs[3].subject;

                document.getElementById("fsubjectnews1").innerHTML = objs[2].subject;
                document.getElementById("fmessagenews1").innerHTML = objs[2].message.substr(0, 90) + "...";
                document.getElementById("fimagenews1").style = "background-image:url(" + objs[2].link + ")";
                document.getElementById("fdatenews1").innerHTML = objs[2].date;
                document.getElementById("fsubjectnews2").innerHTML = objs[3].subject;
                document.getElementById("fmessagenews2").innerHTML = objs[3].message.substr(0, 90) + "...";
                document.getElementById("fimagenews2").style = "background-image:url(" + objs[3].link + ")";
                document.getElementById("fdatenews2").innerHTML = objs[3].date;


            }
            if (length == 5) {
                document.getElementById("newsimage1").style = "background-image:url(" + objs[2].link + ")";
                document.getElementById("newssubject1").innerHTML = objs[2].subject;
                document.getElementById("newsimage2").style = "background-image:url(" + objs[3].link + ")";
                document.getElementById("newssubject2").innerHTML = objs[3].subject;
                document.getElementById("newsimage3").style = "background-image:url(" + objs[4].link + ")";
                document.getElementById("newssubject3").innerHTML = objs[4].subject;

                document.getElementById("fsubjectnews1").innerHTML = objs[3].subject;
                document.getElementById("fmessagenews1").innerHTML = objs[3].message.substr(0, 90) + "...";
                document.getElementById("fimagenews1").style = "background-image:url(" + objs[3].link + ")";
                document.getElementById("fdatenews1").innerHTML = objs[3].date;
                document.getElementById("fsubjectnews2").innerHTML = objs[4].subject;
                document.getElementById("fmessagenews2").innerHTML = objs[4].message.substr(0, 90) + "...";
                document.getElementById("fimagenews2").style = "background-image:url(" + objs[4].link + ")";
                document.getElementById("fdatenews2").innerHTML = objs[4].date;

            }
            if (length == 6) {
                document.getElementById("newsimage1").style = "background-image:url(" + objs[3].link + ")";
                document.getElementById("newssubject1").innerHTML = objs[3].subject;
                document.getElementById("newsimage2").style = "background-image:url(" + objs[4].link + ")";
                document.getElementById("newssubject2").innerHTML = objs[4].subject;
                document.getElementById("newsimage3").style = "background-image:url(" + objs[5].link + ")";
                document.getElementById("newssubject3").innerHTML = objs[5].subject;

                document.getElementById("fsubjectnews1").innerHTML = objs[4].subject;
                document.getElementById("fmessagenews1").innerHTML = objs[4].message.substr(0, 90) + "...";
                document.getElementById("fimagenews1").style = "background-image:url(" + objs[4].link + ")";
                document.getElementById("fdatenews1").innerHTML = objs[4].date;
                document.getElementById("fsubjectnews2").innerHTML = objs[5].subject;
                document.getElementById("fmessagenews2").innerHTML = objs[5].message.substr(0, 90) + "...";
                document.getElementById("fimagenews2").style = "background-image:url(" + objs[5].link + ")";
                document.getElementById("fdatenews2").innerHTML = objs[5].date;
            }


        }
    }
    request.send();
    setTimeout(indexnews, 20000);

}

