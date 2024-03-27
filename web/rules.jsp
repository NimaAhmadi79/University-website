

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>قوانین</title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="HandheldFriendly" content="true" />
    <meta name="apple-touch-fullscreen" content="yes" />
    <!-- All Animations CSS -->
    <link href="${pageContext.request.contextPath}/files/css/animate.css" rel="stylesheet" type="text/css">
    <link href="css/animate-rtl.css" rel="stylesheet" type="text/css">
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
    <div class="full_page_photo" style="background-image: url(${pageContext.request.contextPath}/files/images/rules.jpg);">
        <div class="hgroup">
            <div class="hgroup_title animated bounceInUp">
                <div class="container">
                    <h1 class="">قوانین و آیین نامه</h1>
                </div>
            </div>
            <div class="hgroup_subtitle animated bounceInUp skincolored">
                <div class="container">
                    <p>لطفا جهت جلوگیری از بروز مشکلات احتمالی قوانین را با دقت مطالعه فرمایید</p>
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
        <div class="container">
            <section>
                <div class="row">
                    <div class="office_address col-sm-6 col-md-4">
                        <div class="team_member"> <img src="${pageContext.request.contextPath}/files/images/logo1.png"  alt="logo">
                            <h4><a href="#arshad">قوانین سایت ارشد</a> </h4><br><br>
                            <h4><a href="#karshenasi">قوانین سایت کارشناسی</a> </h4>
                        </div>
                    </div>
                    <div class="contact_form col-sm-6 col-md-8">
                        <div dir="rtl" style="border: solid 1px ; border-radius: 5px ; padding: 10px ">
                            <h1 class="post_title" id="arshad">قوانین سایت ارشد</h1>
                            <ol class="post_content" style="font-size: 20px">
                                <li>سایت ارشد مخصوص استفاده دانشجویان کارشناسی ارشد می‌باشد و سایر دانشجویان اجازه استفاده از آن را ندارند.</li><br>
                                <li> سیستم‌های سایت ارشد عضو دامین می‌باشند. لذا دانشجویان محترم جهت استفاده از سیستم‌ها باید با در دست داشتن کارت دانشجویی به مسئول سایت ارشد مراجعه نموده و نسبت به دریافت نام کاربری و رمز عبور اقدام نمایند.</li><br>
                                <li>دانشجویانی که ‌قصد استفاده از سیستم‌ها جهت run گرفتن را دارند، فقط می‌توانند از سیستم‌هایی که برای این منظور در نظر گرفته و مشخص شده‌اند استفاده نمایند. زمان اشغال سیستم برای run، توسط هر دانشجو حداکثر ۴۸ ساعت می‌باشد و دانشجویان در صورت نیاز به تمدید، باید با مسئول سایت هماهنگی نمایند.</li><br>
                                <li>دانشجویانی که ‌قصد استفاده از سیستم‌ها جهت run گرفتن را دارند، باید مشخصات کامل خود و تاریخ و ساعت شروع و پایان run را روی برگه run که از مسئول سایت دریافت می‌نمایند، بنویسند.</li><br>
                                <li>دانشجویانی که از لپ تاپ استفاده می‌کنند برای اتصال به شبکه باید از wifi سایت استفاده نموده و از جدا نمودن کابل پشت سیستم ها جداً خودداری نمایند. همچنین برای استفاده از پریز برق جهت شارژر لپ تاپ، کابل‌های برق سیستم ها را جدا نکنند.</li><br>
                                <li>دانشجویان برای استفاده از لپ تاپ، از جایگاه‌های مخصوص لپ تاپ استفاده نمایند و میزهای دیگر را اشغال نکنند.</li><br>
                                <li>دانشجویان می‌توانند نرم‌افزارهای مورد نیازشان را جهت نصب در سیستم‌ها، به مسئول سایت اطلاع داده تا برایشان نصب نمایند.</li><br>
                                <li>دانشجویان می‌توانند نرم افزارهای مورد نیازشان را از آدرس<a href="FTP://bank.nit.ac.ir" target="_blank">FTP://bank.nit.ac.ir</a>  دریافت نمایند.</li><br>
                                <li>دانشجویان برای اتصال به VPN برای اولین بار جهت استفاده از اینترنت، می توانند  به آدرس<a href="ftp.nit.ac.ir" target="_blank">ftp.nit.ac.ir</a>  مراجعه و از پوشه vpn setting، فایل مربوط به vpn را دریافت کرده و روی سیستم خود نصب کنند. </li><br>
                            </ol>
                            <br/>
                        </div>
                        <br/>
                        <br/>
                        <div dir="rtl" style="border: solid 1px ; border-radius: 5px ; padding: 10px ">
                            <h1 class="post_title" id="karshenasi">قوانین سایت کارشناسی</h1>
                            <ol class="post_content" style="font-size: 20px">
                                <li>رعایت شئونات اسلامی برای همه دانشجویان اعم از آقایان و بانوان الزامی می‌باشد.</li><br>
                                <li>سیستم‌های سایت کارشناسی در فضاهای مشخص به تفکیک برای آقایان و بانوان مشخص گردیده‌اند. لذا دانشجویان محترم لازم است در بخش مربوط به خود از سیستم‌ها استفاده نمایند.</li><br>
                                <li>دانشجویان جهت نصب نرم‌افزارهای مورد نیازشان در سیستم‌ها، لازم است به مسئول سایت اطلاع داده تا برایشان نصب نمایند. در غیر اینصورت با توجه به نصب بودن نرم‌افزار DeepFreez بر روی سیستم‌ها، پس از راه‌اندازی مجدد، نرم‌افزارهای نصب شده توسط دانشجو از روی سیستم‌ها بطور اتومات حذف خواهند شد.</li><br>
                                <li>تغییر و جابجایی تجهیزات بدون هماهنگی با مسئول سایت اکیداً ممنوع می‌باشد.</li><br>
                                <li>رعایت سکوت الزامی بوده و از صحبت کردن با تلفن همراه در داخل سایت و یا تجمع بی‌مورد اکیداً خودداری نمایید</li><br>
                                <li>ه همراه آوردن افراد متفرقه اعم از دانشجو یا غیردانشجو(داخلی یا خارجی) به داخل سایت ممنوع بوده و حتما باید با هماهنگی و یا دریافت نامه از معاونت پژوهشی دانشگاه مبنی بر بلامانع بودن ورود فرد به داخل سایت و استفاده از سیستم‌ها باشد.</li><br>
                                <li>جهت پرینت گرفتن مستندات، دانشجویان می‌توانند با قرار دادن فایل مورد نظر در داخل فلش و یا ابتدا ذخیره کردن در سیستم و سپس کپی کردن در مسیر ftp.nit.ac.ir اقدام به پرینت گرفتن نمایند.li><br>
                                <li>دانشجویان برای اتصال به نقطه دسترسی WiFi سایت می‌توانند از رمز و کلمه عبور درج شده بر روی تابلوی اعلانات سایت واقع در راهرو آن سایت استفاده نمایند.</li><br>
                                <li>اینترنت دانشگاه صرفا جهت انجام کارهای پژوهشی بوده و هرگونه استفاده غیر از آن ممنوع می‌باشد.</li><br>
                                <li>با توجه به اینکه هر دانشجو جهت اتصال به شبکه اینترنت نیازمند به لاگین از طریق VPN اختصاصی خود می‌باشد، لذا دانشجویان باید در حفظ و نگهداری رمز و کلمه عبور خود دقت لازم را داشته و از در اختیار قرار دادن آن به دانشجویان دیگر خودداری نمایند، چرا که عواقب هر گونه سوء استفاده از آن متوجه دانشجوی صاحب حساب کاربری VPN می‌باشد.</li><br>
                                <li>لازم به ذکر است جهت دانلود فایل از FTP نیاز به قطع اتصال اینترنت می‌باشد، در غیر اینصورت به میزان حجمی که از FTP دانشگاه دانلود می‌شود، از حجم اینترنت دانشجوی صاحب حساب VPN نیز کسر می‌شود.</li><br>
                            </ol>
                            <br/>
                        </div>

                    </div>
                </div>
            </section>
        </div>
        <br>
        <br>
        <!--<section class="twitter_feed_wrapper skincolored_section">
            <div class="container">
                <div class="row">
                    <div class="twitter_feed_icon wow fadeInDown"><a href="https://twitter.com/PlethoraThemes"><i class="fa fa-twitter"></i></a></div>
                    <div id="twitter_flexslider" class="flexslider">
                        <ul class="slides">
                            <li class="item">
                                <blockquote>
                                    <p> لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.<a href="http://mihanwebmaster.com/">میهن وبمستر</a></p>
                                </blockquote>
                            </li>
                            <li class="item">
                                <blockquote>
                                    <p> لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.<a href="http://mihanwebmaster.com/">میهن وبمستر</a></p>
                                </blockquote>
                            </li>
                            <li class="item">
                                <blockquote>
                                    <p> لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.<a href="http://mihanwebmaster.com/">میهن وبمستر</a></p>
                                </blockquote>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>-->
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/jquery.simple-text-rotator.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/collapser.js"></script>
    <!--
You need to include the following 2 scripts on any page that has a Google Map BEFORE the Cleanstart_theme.js.
When using Google Maps on your own site you MUST signup for your own API key at:
https://developers.google.com/maps/documentation/javascript/tutorial#api_key
After your sign up replace the key in the URL below or paste in the new script tag that Google provides.
-->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAhCFO56k_xL212g8j2LK88wK0I_CRwzDE&amp;sensor=false"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/google_map.js"></script>
    <!--The Theme Required Js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/cleanstart_theme.js"></script>
    <!--Contact Form Required Js -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/contact_form.js"></script>
    <!--Style Switcher, You propably want to remove this!-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/files/js/style_switcher.js"></script>
    <div class="style_switcher">
        <div class="gear"><i class="fa fa-gear"></i></div>
        <div class="styles">
            <h6>Style Switcher</h6>
            <ul>
                <li class="style-classic"><i class="fa fa-circle"></i> Blue Default</li>
                <li class="style-golden"><i class="fa fa-circle"></i> Golden</li>
                <li class="style-purple"><i class="fa fa-circle"></i> Purple</li>
            </ul>
            <p></p>
            <ul>
                <li class="style-onepage"><a href="onepage.html"><i class="fa fa-desktop"></i> One-Pager</a></li>
            </ul>
            <p></p>
            <ul>
                <li><a href="Documentation/index-2.html"><i class="fa fa-flag"></i> Documentation</a></li>
            </ul>
        </div>
    </div>
    <!--END Style Switcher-->
</div>
</body>
</html>