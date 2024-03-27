setTimeout(herasat, 2500);
setTimeout(taghzie, 3500);
setTimeout(golestan, 4500);

function golestan() {
    let xhr = new XMLHttpRequest();
    xhr.open("GET", "https://golestan.nit.ac.ir", true);
    xhr.send();
    xhr.onload = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            document.getElementById("golestanimage").src = "files/images/true.png";
            document.getElementById("golestantext").innerHTML = "فعال";

        } else {
            document.getElementById("golestanimage").src = "files/images/false.png";
            document.getElementById("golestantext").innerHTML = "غیر فعال";

        }
    }

}


function herasat() {
    let xhr1 = new XMLHttpRequest();
    xhr1.open("GET", "http://herasat.nit.ac.ir", true);
    xhr1.send();
    xhr1.onload = function () {
        if (xhr1.readyState === 4 && xhr1.status === 200) {
            document.getElementById("herasatimage").src = "files/images/true.png";
            document.getElementById("herasattext").innerHTML = "فعال";

        } else {
            document.getElementById("herasatimage").src = "files/images/false.png";
            document.getElementById("herasattext").innerHTML = "غیر فعال";

        }
    }

}


function taghzie() {
    let xhr2 = new XMLHttpRequest();
    xhr2.open("GET", "http://food.nit.ac.ir", true);
    xhr2.send();
    xhr2.onload = function () {
        if (xhr2.readyState === 4 && xhr2.status === 200) {
            document.getElementById("taghzieimage").src = "files/images/true.png";
            document.getElementById("taghzietext").innerHTML = "فعال";

        } else {
            document.getElementById("taghzieimage").src = "files/images/false.png";
            document.getElementById("taghzietext").innerHTML = "غیر فعال";

        }
    }

}


setTimeout(herasat, 2500);
setTimeout(taghzie, 3500);
setTimeout(golestan, 4500);

