
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>افراد و پرسنل</title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="HandheldFriendly" content="true" />
    <meta name="apple-touch-fullscreen" content="yes" />
    <!-- All Animations CSS -->
    <link href="${pageContext.request.contextPath}/files/css/animate.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/files/css/animate-rtl.css" rel="stylesheet" type="text/css">
    <!-- Image Lightbox CSS-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/files/css/imagelightbox.css" type="text/css" media="screen">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/files/css/imagelightbox-rtl.css" type="text/css" media="screen">
    <!-- Theme styles and Menu styles -->
    <link href="${pageContext.request.contextPath}/files/css/style.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/files/css/style-rtl.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/files/css/mainmenu.css" rel="stylesheet" type="text/css">
    <link href="${pageContext.request.contextPath}/files/css/mainmenu-rtl.css" rel="stylesheet" type="text/css">
    <!-- Call Fontawsome Icon Font from a CDN -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <!--Pace Page Loader -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/files/js/pace-0.5.1/themes/pace-theme-minimal.css" type="text/css" media="screen" />
    <!--FlexSlider -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/files/js/woothemes-FlexSlider-06b12f8/flexslider.css" type="text/css" media="screen">
    <!--Isotope Plugin -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/files/js/isotope/css/style.css" type="text/css" media="screen">
    <!--Simple Text Rotator -->
    <link href="${pageContext.request.contextPath}/files/css/simpletextrotator.css" rel="stylesheet" type="text/css">
    <!--Style Switcher, You propably want to remove this!-->
    <link href="${pageContext.request.contextPath}/files/css/_style_switcher.css" rel="stylesheet" type="text/css">
    <!--Modernizer Custom -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/modernizr.custom.48287.js"></script>
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="files/images/logo2.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="files/images/logo2.png">
    <link rel="apple-touch-icon-precomposed" href="files/images/logo2.png">
    <link rel="shortcut icon" href="files/images/logo2.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript" src="files/new_js/logout.js"></script>
    <script type="text/javascript" src="files/new_js/indexnews.js"></script>
    <style>
        table, th, td {
            border: 1px solid black;
            border-collapse: collapse;
        }
        th, td {
            padding: 5px;
            text-align: left;
        }
    </style>
</head>
<body class="sticky_header">
<div class="overflow_wrapper">
    <header>
        <div class="container">
            <div class="logo"><a class="brand" href="index.jsp"> <img src="files/images/logo2.png" alt="optional logo"> <span class="logo_title">دانشگاه صنعتی نوشیروانی بابل</span></a></div>
            <div id="mainmenu" class="menu_container">
                <label class="mobile_collapser">منو</label>
                <!-- Mobile menu title -->
                <ul>
                    <%
                        HttpSession session1=request.getSession();
                        session1.setAttribute("invite",false);
                        session1.setAttribute("contact",false);
                        session1.setAttribute("news",false);
                        session1.setAttribute("guid",false);
                        session1.setAttribute("comment",false);

                        boolean value= (boolean) session1.getAttribute("NowLogin");
                    %>
                    <%
                        if(value){
                            out.print("<li><a href='#'  style='color: green;'>پنل مدیریت</a>"+
                                    "<div class=\"dmui_dropdown_block full_width\" style=\"background-image: url(files/images/logo2.png); background-repeat:no-repeat; background-position:25px;background-size:68px ;width:440px\">\n" +
                                    "              <div class=\"dmui-container\">\n" +
                                    "                <div class=\"dmui-col span3\">\n" +
                                    "                  <div class=\"dmui-container\">\n" +
                                    "                    <ul class=\"dmui-submenu\">\n" +
                                    "                      <li><a href=\"admin.jsp\" ><p style=\"color: green\">صفحه ادمین</p></a></li>\n" +
                                    "                       <li style><a href=\"index.jsp\" onclick=\"out()\"  ><p style=\"color: red\">خروج</p></a></li>"+
                                    "                    </ul>\n" +
                                    "                  </div>\n" +
                                    "                </div>\n" +
                                    "              </div>\n" +
                                    "            </div>"+


                                    "</li>");
                        }%>
                    <li class="active"><a href="index.jsp">خانه</a></li>
                    <li><a href="guide.jsp">راهنما</a></li>
                    <li><a href="#">افراد و پرسنل</a>
                        <div class="dmui_dropdown_block full_width" style="background-image: url(files/images/logo2.png); background-repeat:no-repeat; background-position:25px;background-size:68px ;width:440px">
                            <div class="dmui-container">
                                <div class="dmui-col span3">
                                    <div class="dmui-container">
                                        <ul class="dmui-submenu">
                                            <li><a href="Staff.jsp">پرسنل دانشگاه</a></li>
                                            <li><a href="login.jsp">ادمین های سایت</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li><a href="Services.jsp">خدمات</a></li>
                    <li><a href="Introduction.jsp">معرفی مرکز</a></li>
                    <li><a href="contact.jsp">تماس با ما</a></li>
                    <li><a href="invite.jsp">دعوت به همکاری</a></li>
                    <li><a href="rules.jsp">قوانین</a></li>
                </ul>
            </div>
            <div class="triangle-up-left"></div>
            <div class="triangle-up-right"></div>
        </div>
    </header>
    <div class="full_page_photo" style="background-image: url(${pageContext.request.contextPath}/files/images/staff.jpg);">
        <div class="hgroup">
            <div class="hgroup_title animated bounceInUp">
                <div class="container">
                    <h1 class="">افراد و پرسنل</h1>
                </div>
            </div>
            <div class="hgroup_subtitle animated bounceInUp skincolored">
                <div class="container">
                    <p>با کارکنان مرکز فناوری اطلاعات دانشگاه صنعتی نوشیروانی بابل اشنا شوید</p>
                </div>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="post_content">
            <div style="padding: 20px 20px 90px 20px">
                <table style="width: 100%  ; text-align: center ; box-shadow: 5px 10px 18px #2a6496">
                    <tr>
                        <th colspan="5" style="text-align: center ; background-color: #2a6496 ; color: white">مدیران مرکز خدمات کامپیوتری</th>
                    </tr>
                    <tr>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">نام و نام خانوادگی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">سمت</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">داخلی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">ایمیل</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">آدرس دفتر</th>
                    </tr>
                    <tr>
                        <td style="text-align: center">دکتر مهدی عمادی</td>
                        <td style="text-align: center">مدیریت مرکز</td>
                        <td style="text-align: center">۱۱۷۵</td>
                        <td style="text-align: center"><a href="mailto:m.emadi@nit.ac.ir">m.emadi@nit.ac.ir</a></td>
                        <td style="text-align: center">ساختمان خوارزمی</td>
                    </tr>
                    <tr>
                        <td style="text-align: center ; background-color:#c9e2b3">دکتر علی غلامی</td>
                        <td style="text-align: center ; background-color:#c9e2b3">مدیر خدمات شبکه و ارتباطات</td>
                        <td style="text-align: center ; background-color:#c9e2b3">۱۱۷۴</td>
                        <td style="text-align: center ; background-color:#c9e2b3"><a href="mailto:gholamirudi@nit.ac.ir">gholamirudi@nit.ac.ir</a></td>
                        <td style="text-align: center ; background-color:#c9e2b3">ساختمان خوارزمی</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">دکتر سید مهدی میرایمانی</td>
                        <td style="text-align: center">مدیر خدمات نرم افزاری</td>
                        <td style="text-align: center">۱۴۳۶</td>
                        <td style="text-align: center"><a href="mailto:mirimani@nit.ac.ir">mirimani@nit.ac.ir</a></td>
                        <td style="text-align: center">ساختمان آزمایشگاه ماشین های الکتریکی</td>
                    </tr>
                </table>
                <br>
                <br>
                <table style="width: 100%  ; text-align: center ; box-shadow: 5px 10px 18px #2a6496">
                    <tr>
                        <th colspan="5" style="text-align: center ; background-color: #2a6496 ; color: white">خدمات محاسبات سریع (HPC)</th>
                    </tr>
                    <tr>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">نام و نام خانوادگی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">سمت</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">داخلی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">ایمیل</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">آدرس دفتر</th>
                    </tr>
                    <tr>
                        <td style="text-align: center">علی ولی زاده</td>
                        <td style="text-align: center">کارشناس سامانه محاسبات سریع</td>
                        <td style="text-align: center">۱۱۷۲</td>
                        <td style="text-align: center"><a href="mailto:ali_valizadeh@nit.ac.ir">ali_valizadeh@nit.ac.ir</a></td>
                        <td style="text-align: center">ساختمان رازی، طبقه همکف، انتهای غربی راهرو، مرکز<br> خدمات محاسبات سریع؛</td>
                    </tr>
                </table>
                <br>
                <br>
                <table style="width: 100%  ; text-align: center ; box-shadow: 5px 10px 18px #2a6496">
                    <tr>
                        <th colspan="5" style="text-align: center ; background-color: #2a6496 ; color: white">مدیران مرکز خدمات کامپیوتری</th>
                    </tr>
                    <tr>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">نام و نام خانوادگی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">سمت</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">داخلی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">ایمیل</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">آدرس دفتر</th>
                    </tr>
                    <tr>
                        <td style="text-align: center">همت فیروزمندی</td>
                        <td style="text-align: center">کارشناس مسئول شبکه</td>
                        <td style="text-align: center">۱۱۷۴</td>
                        <td style="text-align: center"><a href="mailto:hf@nit.ac.ir">hf@nit.ac.ir</a></td>
                        <td style="text-align: center">ساختمان خوارزمی، واحد مدیریت شبکه و اینترنت؛</td>
                    </tr>
                    <tr>
                        <td style="text-align: center ; background-color:#c9e2b3">حسین واحدی</td>
                        <td style="text-align: center ; background-color:#c9e2b3">پشتیبان شبکه و اینترنت</td>
                        <td style="text-align: center ; background-color:#c9e2b3">۱۱۷۴</td>
                        <td style="text-align: center ; background-color:#c9e2b3"><a href="mailto:hvahedi@nit.ac.ir">hvahedi@nit.ac.ir</a></td>
                        <td style="text-align: center ; background-color:#c9e2b3">ساختمان خوارزمی، واحد مدیریت شبکه و اینترنت؛</td>
                    </tr>
                </table>
                <br>
                <br>
                <table style="width: 100%  ; text-align: center ; box-shadow: 5px 10px 18px #2a6496">
                    <tr>
                        <th colspan="5" style="text-align: center ; background-color: #2a6496 ; color: white">خدمات تعمیرات سخت‌افزار و نرم‌افزار</th>
                    </tr>
                    <tr>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">نام و نام خانوادگی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">سمت</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">داخلی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">ایمیل</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">آدرس دفتر</th>
                    </tr>
                    <tr>
                        <td style="text-align: center">عباس هدایتی</td>
                        <td style="text-align: center">کارشناس سخت افزار</td>
                        <td style="text-align: center">۱۱۷۷</td>
                        <td style="text-align: center"><a href="mailto:abbas@nit.ac.ir">abbas@nit.ac.ir</a></td>
                        <td style="text-align: center">ساختمان خوارزمی، واحد سخت افزار؛</td>
                    </tr>
                    <tr>
                        <td style="text-align: center ; background-color:#c9e2b3">محمد دهزاد</td>
                        <td style="text-align: center ; background-color:#c9e2b3">پشتیبان نرم افزار</td>
                        <td style="text-align: center ; background-color:#c9e2b3">۱۱۷۹</td>
                        <td style="text-align: center ; background-color:#c9e2b3"><a href="mailto:dehzad@nit.ac.ir">dehzad@nit.ac.ir</a></td>
                        <td style="text-align: center ; background-color:#c9e2b3">ساختمان خوارزمی، واحد نرم افزار؛</td>
                    </tr>
                </table>
                <br>
                <br>
                <table style="width: 100%  ; text-align: center ; box-shadow: 5px 10px 18px #2a6496">
                    <tr>
                        <th colspan="5" style="text-align: center ; background-color: #2a6496 ; color: white">خدمات سایت کارشناسی، ارشد و دکتری</th>
                    </tr>
                    <tr>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">نام و نام خانوادگی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">سمت</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">داخلی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">ایمیل</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">آدرس دفتر</th>
                    </tr>
                    <tr>
                        <td style="text-align: center">مجید محمودی عالمی</td>
                        <td style="text-align: center">مسئول سایت کارشناسی</td>
                        <td style="text-align: center">۱۱۷۱</td>
                        <td style="text-align: center"><a href="mailto:mahmoodi@nit.ac.ir">mahmoodi@nit.ac.ir</a></td>
                        <td style="text-align: center">ساختمان خوارزمی، واحد مدیریت سایت کارشناسی ؛</td>
                    </tr>
                    <tr>
                        <td style="text-align: center ; background-color:#c9e2b3">فاطمه اسکندری</td>
                        <td style="text-align: center ; background-color:#c9e2b3">مسئول سایت کارشناسی‌ارشد</td>
                        <td style="text-align: center ; background-color:#c9e2b3">۱۰۶۵</td>
                        <td style="text-align: center ; background-color:#c9e2b3"><a href="mailto:f.eskandari@nit.ac.ir">f.eskandari@nit.ac.ir</a></td>
                        <td style="text-align: center ; background-color:#c9e2b3">ساختمان خوارزمی، واحد مدیریت سایت کارشناسی ارشد؛</td>
                    </tr>
                    <tr>
                        <td style="text-align: center">همت فیروزمندی</td>
                        <td style="text-align: center">مسئول سایت دکتری</td>
                        <td style="text-align: center">۱۱۷۸</td>
                        <td style="text-align: center"><a href="mailto:hf@nit.ac.ir">hf@nit.ac.ir</a></td>
                        <td style="text-align: center">ساختمان رازی، طبقه فوقانی، سایت دکتری؛</td>
                    </tr>
                </table>
                <br>
                <br>
                <table style="width: 100%  ; text-align: center ; box-shadow: 5px 10px 18px #2a6496">
                    <tr>
                        <th colspan="5" style="text-align: center ; background-color: #2a6496 ; color: white">خدمات وب سایت دانشگاه</th>
                    </tr>
                    <tr>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">نام و نام خانوادگی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">سمت</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">داخلی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">ایمیل</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">آدرس دفتر</th>
                    </tr>
                    <tr>
                        <td style="text-align: center">مهرنوش نظری</td>
                        <td style="text-align: center">کارشناس مسئول وب</td>
                        <td style="text-align: center">۱۱۵۷</td>
                        <td style="text-align: center"><a href="mailto:m.nazari@nit.ac.ir">m.nazari@nit.ac.ir</a></td>
                        <td style="text-align: center">ساختمان مرکزی، طبقه سوم، واحد وب؛</td>
                    </tr>
                    <tr>
                        <td style="text-align: center ; background-color:#c9e2b3">علی حاجی عباسی</td>
                        <td style="text-align: center ; background-color:#c9e2b3">پشتیبان فنی وب سایت ها</td>
                        <td style="text-align: center ; background-color:#c9e2b3">۱۱۴۰</td>
                        <td style="text-align: center ; background-color:#c9e2b3"><a href="mailto:ah@nit.ac.ir">ah@nit.ac.ir</a></td>
                        <td style="text-align: center ; background-color:#c9e2b3">ساختمان مرکزی، طبقه سوم، واحد وب؛</td>
                    </tr>
                </table>
                <br>
                <br>
                <table style="width: 100%  ; text-align: center ; box-shadow: 5px 10px 18px #2a6496">
                    <tr>
                        <th colspan="5" style="text-align: center ; background-color: #2a6496 ; color: white">خدمات سیستم مدیریت آموزش (گلستان) و سامانه آموزش مجازی (سمیا)</th>
                    </tr>
                    <tr>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">نام و نام خانوادگی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">سمت</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">داخلی</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">ایمیل</th>
                        <th style="text-align: center ; background-color: #5bc0de ; color: black">آدرس دفتر</th>
                    </tr>
                    <tr>
                        <td style="text-align: center">سید محمد ربیعی</td>
                        <td style="text-align: center">پشتیبان سیستم گلستان</td>
                        <td style="text-align: center">۱۱۷۰</td>
                        <td style="text-align: center"><a href="mailto:smrabiee@nit.ac.ir">smrabiee@nit.ac.ir</a></td>
                        <td style="text-align: center"> معاونت دانشجویی، واحد پشتیبانی سیستم گلستان؛</td>
                    </tr>
                    <tr>
                        <td style="text-align: center ; background-color:#c9e2b3">راضیه اسفندیاری</td>
                        <td style="text-align: center ; background-color:#c9e2b3">پشتیبان سیستم سمیا</td>
                        <td style="text-align: center ; background-color:#c9e2b3">۱۰۰۵</td>
                        <td style="text-align: center ; background-color:#c9e2b3"><a href="mailto:smrabiee@nit.ac.ir">smrabiee@nit.ac.ir</a></td>
                        <td style="text-align: center ; background-color:#c9e2b3"> معاونت دانشجویی، واحد پشتیبانی سیستم سمیا؛</td>
                    </tr>
                </table>
                <br>
                <br>
            </div>
        </div>
        <br>
        <br>
        <footer>
            <section class="footer_teasers_wrapper dark_section">
                <div class="container triangles-of-section">
                    <div class="triangle-up-left"></div>
                    <div class="square-left"></div>
                    <div class="triangle-up-right"></div>
                    <div class="square-right"></div>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="footer_teaser pl_about_us_widget col-sm-4 col-md-4" dir="rtl">
                            <h3>در تماس باشید</h3>
                            <p>دانشگاه صنعتی نوشیروانی بابل <br>
                                ایران-مازندران-بابل-خیابان شریعتی  </p><br><br>
                            <p><i class="fa fa-envelope"></i>pr@nit.ac.ir</p><br>
                            <p><i class="fa fa-phone"></i>011-32332071-4</p>
                            <div class="footer_social">
                                <div class="social_wrapper"><a href="https://www.instagram.com/babol_noshirvani_university/" target="_blank" style="padding: 13px 0px 0px 0px"><i class="fa fa-instagram"></i></a> <a href="https://t.me/profnoshiravani" target="_blank" style="padding: 13px 0px 0px 0px"><i class="fa fa-telegram"></i></a> <a href="#" style="padding: 13px 0px 0px 0px"><i class="fa fa-facebook"></i></a></div>
                            </div>
                        </div>
                        <div class="footer_teaser pl_latest_news_widget col-sm-4 col-md-4">
                            <h3>آخرین اخبار</h3>
                            <ul class="media-list">
                                <li class="media"> <a id="fimagenews1" href="#" class="media-photo" style="background-image:url(files/images/news1.jpg)"></a> <a href="news.jsp#first" class="media-date"><span id="fdatenews1">آذر22</span></a>
                                    <h5 class="media-heading"><a href="news.jsp#first" id="fsubjectnews1">نشست رئیس دانشگاه</a></h5>
                                    <p id="fmessagenews1">نشست رياست دانشگاه با مدير امور اتباع و مهاجرين خارجي استانداري مازندران</p>
                                </li>
                                <li class="media"> <a id="fimagenews2" href="#" class="media-photo" style="background-image:url(files/images/news2.jpg)"></a> <a href="news.jsp#second" class="media-date"><span id="fdatenews2">22آذر</span></a>
                                    <h5 class="media-heading"><a href="news.jsp#second" id="fsubjectnews2">پیام معاون پژوهش و فناوری دانشگاه</a></h5>
                                    <p id="fmessagenews2">پيام معاون پژوهش و فناوري دانشگاه به مناسبت هفته پژوهش و فناوري</p>
                                </li>
                            </ul>
                        </div>
                        <div class="footer_teaser pl_flickr_widget col-sm-4 col-md-4" dir="rtl" style="padding: 30px 130px 0px 0px">

                            <a href="guide.jsp">راهنما</a><br><br>
                            <a href="Services.jsp">خدمات</a><br><br>
                            <a href="Introduction.jsp">معرفی مرکز</a><br><br>
                            <a href="contact.jsp">تماس با ما</a><br><br>
                            <a href="invite.jsp">دعوت به همکاری</a><br><br>

                        </div>
                    </div>
                </div>
            </section>
            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4 col-md-4">کلیه حقوق این پایگاه متعلق به دانشگاه صنعتی نوشیروانی بابل میباشد . </div>
                        <div class="col-sm-4 col-md-4"></div>
                        <div class="text-right col-sm-4 col-md-4">Powered by NIT programming group </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="${pageContext.request.contextPath}/files/js/jquery-1.10.2.min.js"></script>
    <script src="${pageContext.request.contextPath}/files/twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!--Pace Page Loader -->
    <script src="${pageContext.request.contextPath}/files/js/pace-0.5.1/pace.min.js"></script>
    <!--FlexSlider -->
    <script src="${pageContext.request.contextPath}/files/js/woothemes-FlexSlider-06b12f8/jquery.flexslider-min.js"></script>
    <!--Isotope Plugin -->
    <script src="${pageContext.request.contextPath}/files/js/isotope/jquery.isotope.min.js" type="text/javascript"></script>
    <!--To-Top Button Plugin -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/jquery.ui.totop.js"></script>
    <!--Easing animations Plugin -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/easing.js"></script>
    <!--WOW Reveal on scroll Plugin -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/wow.min.js"></script>
    <!--Simple Text Rotator -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/jquery.simple-text-rotator.js"></script>
    <!--The Theme Required Js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/cleanstart_theme.js"></script>
    <!--To collapse the menu -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/collapser.js"></script>

</div>
</body>
</html>
