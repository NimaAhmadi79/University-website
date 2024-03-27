
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js" lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>دعوت به همکاری</title>
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
    <script type="text/javascript" src="files/js/error.js"></script>
</head>
<body class="sticky_header">

<%
    HttpSession session1=request.getSession();
    session1.setAttribute("contact",false);
    session1.setAttribute("news",false);
    session1.setAttribute("guid",false);
    session1.setAttribute("comment",false);

    boolean value1= (boolean) session1.getAttribute("Login");


%>
<div class="overflow_wrapper">
    <header>
        <div class="container">
            <div class="logo"><a class="brand" href="index.jsp"> <img src="files/images/logo2.png" alt="optional logo"> <span class="logo_title">دانشگاه صنعتی نوشیروانی بابل</span></a></div>
            <div id="mainmenu" class="menu_container">
                <label class="mobile_collapser">منو</label>
                <!-- Mobile menu title -->
                <ul>
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
    <div class="full_page_photo" style="background-image: url(${pageContext.request.contextPath}/files/images/about_us.jpg);">
        <div class="hgroup">
            <div class="hgroup_title animated bounceInUp">
                <div class="container">
                    <h1 class="">دعوت به همکاری</h1>
                </div>
            </div>
            <div class="hgroup_subtitle animated bounceInUp skincolored">
                <div class="container">
                    <p>درخواست های خود را از طریق این صفحه برای ما ارسال کنید</p>
                </div>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="container triangles-of-section">
            <div class="triangle-up-left"></div>
            <div class="square-left"></div>
            <div class="triangle-up-right"></div>
            <div class="square-right"></div>
        </div>
        <section class="horizontal_teaser">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-4 horizontal_teaser_left">
                        <h3>تیم طراحی دانشگاه صنعتی نوشیروانی</h3>
                        <p>این صفحه بدین منظور در سایت قرار گرفته تا شما طراحان عزیز درخواست های همکاری خود را از این طریق برای ما ارسال نمایید</p>
                        <p>با پر کردن و ارسال مشخصات و رزومه کاری خود درخواست همکاری را برای ما ارسال کنید تا در صورت تایید در اسرع وقت با شما تماس گرفته شود </p>
                    </div>
                    <div class="contact_form col-sm-6 col-md-8">
                        <form name="contact_form" id="contact_form" method="post" action="invite" onsubmit="return all2()">
                            <div class="row">
                                <div class="col-sm-6 col-md-6">
                                    <label>نام</label>
                                    <input  name="name" id="name" class="form-control" type="text" value="" >
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <label>نام خانوادگی</label>
                                    <input name="family" id="family" class="form-control" type="text" value="">
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <label>ایمیل</label>
                                    <input name="email" id="email" class="form-control" type="text" value="">
                                </div>
                                <div class="col-sm-6 col-md-6">
                                    <label>شماره تلفن</label>
                                    <input name="phone" id="phone" class="form-control" type="text" value="">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <label>آدرس</label>
                                    <input name="address" id="subject" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <label>رزومه</label>
                                    <textarea name="message" id="message" rows="8" class="form-control"></textarea>
                                </div>

                                <div style="height: 22px; margin-top: 10px; text-align: right; ">
                                    <%
                                        boolean val1= (boolean) session1.getAttribute("invite");
                                        if (val1){
                                            out.print("<p style=\"color: green;\">ارسال درخواست با موفقیت انجام شد</p>");
                                        }

                                    %></div>
                                <div class="col-sm-12 col-md-12"><br/>
                                    <input type="submit" id="submit_btn" class="btn btn-primary" name="submit" value="ارسال درخواست" > <span id="notice" class="alert alert-warning alert-dismissable hidden" style="margin-left:20px;"></span> </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="parallax call_to_action" style="background-image:url(${pageContext.request.contextPath}/files/images/parallax.jpg)">
            <div class="overlay">
                <h3>ایده های خود را با ما به اشتراک بگذارید</h3><br/>
                <h4>کمک بهم باعث پیشرفت در زمینه های مختلف خواهد شد</h4>
            </div>
        </section>
        <section class="team_members">
            <div class="container triangles-of-section">
                <div class="triangle-up-left"></div>
                <div class="square-left"></div>
                <div class="triangle-up-right"></div>
                <div class="square-right"></div>
            </div>
            <div class="container">
                <h2 class="section_header fancy centered">با تیم ما آشنا شوید... <small>شما نیز میتوانید به ما ملحق شوید !</small></h2>
                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="team_member" style="height: 463px">
                            <h1 style="color: red">جایی برای شما !!</h1>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="team_member">
                            <figure style="background-image: url(${pageContext.request.contextPath}/files/images/2b.jpg)"><img src="${pageContext.request.contextPath}/files/images/2a.jpg" alt="1a"></figure>
                            <h5>یوسف مرتضوی</h5>
                            <small>توسعه دهنده / بنیان گذار</small>
                            <hr>
                            <div class="team_social"> <a href="https://www.facebook.com/mihanwebmaster"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/mihanwebmaster"><i class="fa fa-twitter"></i></a> <a href="#pinterest"><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-github-alt"></i></a> </div>
                            <p class="short_bio">محصل در رشته مهندسی کامپیوتر دانشگاه صنعتی نوشیروانی بابل</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="team_member">
                            <figure style="background-image: url(${pageContext.request.contextPath}/files/images/3b.jpg)"><img src="${pageContext.request.contextPath}/files/images/3a.jpg" alt="1a"></figure>
                            <h5>نیما احمدی</h5>
                            <small>توسعه دهنده / بنیان گذار</small>
                            <hr>
                            <div class="team_social"> <a href="https://www.facebook.com/mihanwebmaster"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/mihanwebmaster"><i class="fa fa-twitter"></i></a> <a href="#pinterest"><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-github-alt"></i></a> </div>
                            <p class="short_bio">محصل در رشته مهندسی کامپیوتر دانشگاه صنعتی نوشیروانی بابل</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="team_member" style="height: 463px">
                            <h1 style="color: red">جایی برای شما !!</h1>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="twitter_feed_wrapper skincolored_section" >
            <div class="container" >
                <div class="row" >
                    <!--                         <div class="twitter_feed_icon wow fadeInDown"><a href="https://twitter.com/PlethoraThemes"><i class="fa fa-twitter"></i></a></div>-->
                    <div id="twitter_flexslider" class="flexslider" >
                        <ul class="slides">
                            <li class="item">
                                <blockquote>
                                    <p> به تیم ما بپیوندید</p>
                                </blockquote>
                            </li>
                            <li class="item">
                                <blockquote>
                                    <p>ایده های خود را با ما به اشتراک بگذارید</p>
                                </blockquote>
                            </li>
                            <li class="item">
                                <blockquote>
                                    <p>تیم طراحی دانشگاه صنعتی نوشیروانی بابل</p>
                                </blockquote>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>

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
    <script src="twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/error.js"></script>

</div>
</body>
</html>

</div>
</body>
</html>
