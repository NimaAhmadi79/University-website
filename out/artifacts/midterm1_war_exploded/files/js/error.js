
function all1() {
    var n = document.getElementById('name');
    var e = document.getElementById('email');
    var s = document.getElementById('subject');
    var m = document.getElementById('message');
    if(n.value=="" || e.value=="" ||  s.value=="" || m.value==""){
        alert("لطفا تمام فیلد های خواسته شده را پر کنید");
        return false;
    }
    var s = document.getElementById('email');
    var str = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (!(str.test(s.value))) {
        alert("invalid email !!");
        return false;
    }
    return true;



}

function all2() {
    var n = document.getElementById('name');
    var e = document.getElementById('email');
    var s = document.getElementById('subject');
    var m = document.getElementById('message');
    if(n.value=="" || e.value=="" ||  s.value=="" || m.value==""){
        alert("لطفا تمام فیلد های خواسته شده را پر کنید");
        return false;
    }
    var s = document.getElementById('email');
    var str = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (!(str.test(s.value))) {
        alert("invalid email !!");
        return false;
    }

    var s = document.getElementById('phone');
    var phoneno = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
    if (!(phoneno.test(s.value))){
        alert("شماره تلفن وارد شده نامعتبر است")
        return false;
    }
    return true;

}

