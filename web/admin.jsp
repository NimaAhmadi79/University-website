<%--
  Created by IntelliJ IDEA.
  User: nima8
  Date: 12/13/2020
  Time: 1:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ادمین</title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="HandheldFriendly" content="true" />
    <meta name="apple-touch-fullscreen" content="yes" />
    <!-- All Animations CSS -->
    <link href="files/css/animate.css" rel="stylesheet" type="text/css">
    <link href="files/css/animate-rtl.css" rel="stylesheet" type="text/css">
    <!-- Image Lightbox CSS-->
    <link rel="stylesheet" href="files/css/imagelightbox.css" type="text/css" media="screen">
    <link rel="stylesheet" href="files/css/imagelightbox-rtl.css" type="text/css" media="screen">
    <!-- Theme styles and Menu styles -->
    <link href="files/css/style.css" rel="stylesheet" type="text/css">
    <link href="files/css/style-rtl.css" rel="stylesheet" type="text/css">
    <link href="files/css/mainmenu.css" rel="stylesheet" type="text/css">
    <link href="files/css/mainmenu-rtl.css" rel="stylesheet" type="text/css">
    <!-- Call Fontawsome Icon Font from a CDN -->
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <!--Pace Page Loader -->
    <link rel="stylesheet" href="files/js/pace-0.5.1/themes/pace-theme-minimal.css" type="text/css" media="screen" />
    <!--FlexSlider -->
    <link rel="stylesheet" href="files/js/woothemes-FlexSlider-06b12f8/flexslider.css" type="text/css" media="screen">
    <!--Isotope Plugin -->
    <link rel="stylesheet" href="files/js/isotope/css/style.css" type="text/css" media="screen">
    <!--Simple Text Rotator -->
    <link href="files/css/simpletextrotator.css" rel="stylesheet" type="text/css">
    <!--Style Switcher, You propably want to remove this!-->
    <link href="files/css/_style_switcher.css" rel="stylesheet" type="text/css">
    <!--Modernizer Custom -->
    <script type="text/javascript" src="files/js/modernizr.custom.48287.js"></script>
    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="files/images/logo2.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="files/images/logo2.png">
    <link rel="apple-touch-icon-precomposed" href="files/images/logo2.png">
    <link rel="shortcut icon" href="files/images/logo2.png">
    <link rel="stylesheet" href="files/new-css/css1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style>
        div div div h3 label{

            margin-left: 10px;
        }




    </style>

    <script type="text/javascript" src="files/new_js/AdminContact.js"></script>
        <script type="text/javascript" src="files/new_js/AdminInvite.js"></script>
    <script type="text/javascript" src="files/new_js/AdminContact.js"></script>
    <script type="text/javascript" src="files/new_js/logout.js"></script>
    <script type="text/javascript" src="files/new_js/AdminComment.js"></script>
    <script type="text/javascript" src="files/new_js/indexnews.js"></script>



</head>
<body class="sticky_header">

<%
    HttpSession session1=request.getSession();
    session1.setAttribute("invite",false);
    session1.setAttribute("contact",false);
    session1.setAttribute("comment",false);
    session1.setAttribute("NowLogin",true);

%>
<%


    boolean value= (boolean) session1.getAttribute("NowLogin");
%>

<div class="overflow_wrapper">
    <header>
        <div class="container">
            <div class="logo"><a class="brand" href="index.jsp"> <img src="files/images/logo2.png" alt="optional logo"> <span class="logo_title">دانشگاه صنعتی نوشیروانی بابل</span></a></div>
            <div id="mainmenu" class="menu_container">
                <label class="mobile_collapser">منو</label>
                <!-- Mobile menu title -->
                <ul>
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
    <div class="full_page_photo no_photo">
        <div class="container">
            <div class="hgroup">
                <div class="hgroup_title animated bounceInUp skincolored">
                    <div class="container">
                        <h1>ادمین</h1>
                    </div>
                </div>
                <div class="hgroup_subtitle animated bounceInUp ">
                    <div class="container">
                        <p> </p>
                    </div>
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

        <div class="wrapper">
            <div class="wrapper1">
                <h2 >درج راهنما</h2>
                <div style="background-color: white; margin-top: 35px; margin-left: 15px;margin-right: 15px; padding-top: 1em ; height: 530px; border-radius: 1em; border-style: solid; border-color: grey;">
                    <form method="post" action="Guidectl">
                        <input class="input" type="text"  style="margin-left: 360px; margin-top: 25px" name="subject"  >
                        <label style="color: black; font-size: 20px; margin-left:10px;">عنوان راهنما</label>
                        <br>
                        <input  value="http://..." class="input" type="text"  style="margin-left: 360px; margin-top: 30px" name="link" >
                        <label style="color: black; font-size: 20px; margin-left: 10px">لینک راهنما</label>
                        <br>
                        <label style="color: black; font-size: 20px; margin-left: 525px ; margin-top: 20px">متن راهنما</label>
                        <br>
                        <textarea  rows="5" cols="80" style="margin-left: 60px; margin-top: 7px" name="message">null</textarea>
                        <br>
                        <select name="part" class="select">

                            <option value="asatid" >اساتید</option>
                            <option value="omoomi">عمومی</option>
                            <option value="karkonan">کارکنان</option>
                            <option value="daneshjoii">دانشجویان</option>

                        </select>
                        <br>
                        <div style="height: 22px; margin-top: 30px;">
                            <%
                                boolean val1= (boolean) session1.getAttribute("guid");
                                if (val1){
                                    out.print("<p style=\"color: green; text-align: right; \">درج راهنما با موفقیت انجام شد</p>");
                                }

                            %></div>
                        <input type="submit" value="درج راهنما" class="submit2">

                    </form>




                </div>



            </div>

            <div class="wrapper1">
                <h2 >درج خبر</h2>
                <div style="background-color: white; margin-top: 35px; margin-left: 15px;margin-right: 15px; padding-top: 1em ; height: 530px; border-radius: 1em; border-style: solid; border-color: grey;">
                    <form action="NewsCtl" method="get">
                        <input class="input" type="text"  style="margin-left: 360px; margin-top: 25px" name="subject" >
                        <label style="color: black; font-size: 20px; margin-left:10px;">عنوان خبر</label>

                        <br>
                        <input class="input" type="text"  style="margin-left: 360px; margin-top: 30px" name="link" value="files/news-image/name.format">
                        <label style="color: black; font-size: 20px; margin-left: 10px">لینک عکس</label>

                        <br>
                        <label style="color: black; font-size: 20px; margin-left: 530px ; margin-top: 20px">متن خبر</label>
                        <br>
                        <textarea rows="10" cols="80" style="margin-left: 60px; margin-top: 7px" name="message"></textarea>
                        <br>
                        <div style="height: 22px; margin-top: 15px;"><%
                            boolean val2= (boolean) session1.getAttribute("news");
                            if (val2){
                                out.print("<p style=\"color: green; text-align: right; \">درج خبر با موفقیت انجام شد</p>");
                            }

                        %></div>
                        <input type="submit" value="درج خبر" class="submit"  >



                    </form>
                </div>
            </div>

            <div class="wrapper1" >
                <h2 >درخواست های تماس با ما</h2>
                <div style="background-color: white; margin-top: 35px; margin-left: 15px;margin-right: 15px; padding-top: 1em ; height: 530px; border-radius: 1em; border-style: solid; border-color: grey;">
                    <article  style="overflow: auto ; height: 500px ; border:solid; border-color: white">
                        <h3 id="getContactInformation" style="color: black; margin-right: 15px;">

                        </h3>
                    </article>

                </div>


            </div>

            <div class="wrapper1" >
                <h2 >درخواست های همکاری</h2>
                <div style="background-color: white; margin-top: 35px; margin-left: 15px;margin-right: 15px; padding-top: 1em ; height: 530px; border-radius: 1em; border-style: solid; border-color: grey;">
                    <article  style="overflow: auto ; height: 500px ; border:solid; border-color: white">
                        <h3 id="getInviteInformation" style="color: black; margin-right: 15px;">

                        </h3>
                    </article>

                </div>



            </div>





        </div>

        <div class="wrapper1" style="height: 400px; margin-left: 4em;margin-right: 2.2em; margin-top: 3em;">
            <h2 >آخرین نظرات</h2>
            <div style="background-color: white; margin-top: 35px; margin-left: 15px;margin-right: 15px; padding-top: 1em ; height: 260px; border-radius: 1em; border-style: solid; border-color: grey;">
                <article  style="overflow: auto ; height: 230px ; border:solid; border-color: white">
                    <h3 id="getCommentInformation" style="color: black; margin-right: 15px;">

                    </h3>
                </article>

            </div>



        </div>
        <!--

        -->
        <section class="twitter_feed_wrapper skincolored_section" >
            <div class="container" >
                <div class="row" >
                    <!--                         <div class="twitter_feed_icon wow fadeInDown"><a href="https://twitter.com/PlethoraThemes"><i class="fa fa-twitter"></i></a></div>-->

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
    <script src="files/js/jquery-1.10.2.min.js"></script>
    <script src="files/twitter-bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!--Pace Page Loader -->
    <script src="files/js/pace-0.5.1/pace.min.js"></script>
    <!--FlexSlider -->
    <script src="files/js/woothemes-FlexSlider-06b12f8/jquery.flexslider-min.js"></script>
    <!--Isotope Plugin -->
    <script src="files/js/isotope/jquery.isotope.min.js" type="text/javascript"></script>
    <!--To-Top Button Plugin -->
    <script type="text/javascript" src="files/js/jquery.ui.totop.js"></script>
    <!--Easing animations Plugin -->
    <script type="text/javascript" src="files/js/easing.js"></script>
    <!--WOW Reveal on scroll Plugin -->
    <script type="text/javascript" src="files/js/wow.min.js"></script>
    <!--Simple Text Rotator -->
    <script type="text/javascript" src="files/js/jquery.simple-text-rotator.js"></script>
    <!--The Theme Required Js -->
    <script type="text/javascript" src="files/js/cleanstart_theme.js"></script>
    <!--To collapse the menu -->
    <script type="text/javascript" src="files/js/collapser.js"></script>


</div>
</body>
</html>
