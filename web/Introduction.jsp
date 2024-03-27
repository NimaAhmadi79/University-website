<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <title>معرفی مرکز</title>
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
    <div class="full_page_photo" style="background-image: url(${pageContext.request.contextPath}/files/images/in.jpg);">
        <div class="hgroup centered">
            <div class="hgroup_title animated bounceInUp skincolored">
                <div class="container">
                    <h1 class="">معرفی مرکز</h1>
                </div>
            </div>
            <div class="hgroup_subtitle animated bounceInUp ">
                <div class="container">
                    <p>اهداف و خصوصیات مرکز فناوری اطلاعات دانشگاه صنعتی نوشیروانی بابل</p>
                </div>
            </div>
        </div>
    </div>
    <div class="main">
        <section class="horizontal_teaser dark_section">
            <div class="container triangles-of-section">
                <div class="triangle-up-left"></div>
                <div class="square-left"></div>
                <div class="triangle-up-right"></div>
                <div class="square-right"></div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-6 horizontal_teaser_left">
                        <h3>پیام تیم طراحی</h3>
                        <p>با مرکز ما همراه باشید تا بتوانید از اخرین اخبار و خدمات دانشگاه بهره مند شوید .</p>
                        <p>از طریق صفحه ارتباط با ما میتوانید با مطرح کردن انتقادات و پیشنهادات خود به ما در بهبود عملکرد سایت کمک کنید .</p>
                        <p>  متن پایین معرفی کامل مرکز فناوری اطلاعات دانشگاه صنعتی نوشیروانی است که شما عزیزان با مراجعه با آن میتوانید اطلاعات مورد نظر خود را دریافت کنید .</p>
                    </div>
                    <div class="col-sm-12 col-md-6 horizontal_teaser_right">
                        <video width="470px" height="270px" autoplay><source src="files/images/uni.mp4" type="video/mp4"></video>
                    </div>
                </div>
            </div>
        </section>
        <!--<section class="team_members">
            <div class="container triangles-of-section">
                <div class="triangle-up-left"></div>
                <div class="square-left"></div>
                <div class="triangle-up-right"></div>
                <div class="square-right"></div>
            </div>
            <div class="container">
                <h2 class="section_header fancy centered">با تیم ما آشنا شوید... <small>لورم ایپسوم متن ساختگی با تولید سادگی نا!</small></h2>
                <div class="row">
                    <div class="col-sm-6 col-md-3">
                        <div class="team_member">
                            <figure style="background-image: url(images/1b.jpg)"><img src="images/1a.jpg" alt="1a"></figure>
                            <h5>جانی بایکوت</h5>
                            <small>توسعه دهنده / بنیان گذار</small>
                            <hr>
                            <div class="team_social"> <a href="https://www.facebook.com/mihanwebmaster"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/mihanwebmaster"><i class="fa fa-twitter"></i></a> <a href="#pinterest"><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-github-alt"></i></a> </div>
                            <p class="short_bio">لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="team_member">
                            <figure style="background-image: url(images/2b.jpg)"><img src="images/2a.jpg" alt="1a"></figure>
                            <h5>جانی بایکوت</h5>
                            <small>توسعه دهنده / بنیان گذار</small>
                            <hr>
                            <div class="team_social"> <a href="https://www.facebook.com/mihanwebmaster"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/mihanwebmaster"><i class="fa fa-twitter"></i></a> <a href="#pinterest"><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-github-alt"></i></a> </div>
                            <p class="short_bio">لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="team_member">
                            <figure style="background-image: url(images/3b.jpg)"><img src="images/3a.jpg" alt="1a"></figure>
                            <h5>جانی بایکوت</h5>
                            <small>توسعه دهنده / بنیان گذار</small>
                            <hr>
                            <div class="team_social"> <a href="https://www.facebook.com/mihanwebmaster"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/mihanwebmaster"><i class="fa fa-twitter"></i></a> <a href="#pinterest"><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-github-alt"></i></a> </div>
                            <p class="short_bio">لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.</p>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="team_member">
                            <figure style="background-image: url(images/4b.jpg)"><img src="images/4a.jpg" alt="1a"></figure>
                            <h5>جانی بایکوت</h5>
                            <small>توسعه دهنده / بنیان گذار</small>
                            <hr>
                            <div class="team_social"> <a href="https://www.facebook.com/mihanwebmaster"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/mihanwebmaster"><i class="fa fa-twitter"></i></a> <a href="#pinterest"><i class="fa fa-linkedin"></i></a> <a href=""><i class="fa fa-github-alt"></i></a> </div>
                            <p class="short_bio">لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>-->

        <div class="post_content" dir="rtl">
            <p style="font-size: 20px ; padding: 18px 18px 0px 18px">اين مركز در سال ۱۳۷۲ هجري شمسي در طبقه اول و دوم مجموعه آزمايشگاه هاي دانشكده برق و با استفاده از ۲۰ عدد کامپیوتر ۲۸۶ – ۲۰MHz کار خود را آغاز کرد و هدف آن ارائه خدمات رايانه اي به دانشجويان، اعضاي هيئت علمي، اساتيد و كارمندان بود. در سال ۱۳۷۴ اولین شبکه دانشگاه بین سایت اساتید در طبقه اول و سایت دانشجویان در طبقه دوم توسط تکنولوژی Ethernet با توپولوژی Bus ایجاد گردید و از سیستم عامل شبکه Novell V۳.۱۱ برای مدیریت منابع استفاده گردید.</p>
            <p style="font-size: 20px ; padding: 0px 18px">در سال ۱۳۷۵ تعداد ۳ سالن براي دانشجويان كارشناسي، كارشناسي ارشد و دكترا در طبقه دوم ساختمان آزمايشگاه هاي دانشكده برق با تعداد ۸۵ عدد كامپيوتر PC تجهيز شد كه براي استفاده دانشجويان فراهم و نرم افزارهاي تخصصي مربوط به رشته هاي تخصصي مهندسي در آنها نصب و راه اندازي شده بود. همچنين بخشي براي ارتقاء و رفع مشكلات سخت افزاري كامپيوتر هاي دانشگاه و بخشي نيز براي مديريت كاربران و رفع موارد نرم افزاري تخصيص داده شد.</p>
            <p style="font-size: 20px ; padding: 0px 18px">در همين راستا در سال ۱۳۷۶ بنا به نياز اساتيد و دانشجويان، ضرورت به يك شبكه جامع كه به اينترنت نيز متصل باشد بيشتر احساس شد و با توجه به تاكيد و حمايت رياست وقت دانشگاه، اولين قدم با راه اندازي سايت اينترنت در مركز فناوري اطلاعات برداشته شد.</p>
            <p style="font-size: 20px ; padding: 0px 18px">در سال ۱۳۸۰ مركز فناوري اطلاعات با بهره گيري از نيروهاي متخصص توانست مركز سرور اصلي دانشگاه را راه اندازي كند كه شامل سرورهاي اينترنت، پايگاه هاي داده، پست الكترونيك، سرور فايل، سرور Dialup بوده است. همچنين اتصال اين مركز به اينترنت نيز توسط خط Leased Line سازمان پ‍ژوهشهاي علمي و صنعتي ايران فراهم گرديد.</p>
            <p style="font-size: 20px ; padding: 0px 18px">در سال ۱۳۸۴ با توجه به نياز روز افزون به استفاده از برنامه هاي تحت شبكه در بخش هاي مختلف آموزشي، تحقيقاتي و اداري، مسئولان را به فكر ايجاد زير ساخت ارتباطي پايدار برای استفاده تمامي افراد كرد. به همين منظور با هماهنگي با وزارت علوم و در قالب طرح توسعه تكفا زير ساخت شبكه دانشگاه با تکنولوژی فيبر نوري ايجاد شد كه ساختمان هاي آموزش، كتابخانه و سايت كامپيوتر توسط آن به مركز سرور مستقر در ساختمان تحصيلات تكميلي متصل شدند. همزمان با بستر سازي شبكه داخلي مركز سرور نيز با سرورهاي High End تجهيز وراه اندازي شد كه به موجب آن سرور وب و پست الكترونيك جداگانه براي اساتيد و دانشجويان دانشگاه نيز در همين مركز آغاز به كاركرد. همچنين پهناي باند دانشگاه نيز علاوه بر خط ارتباطي سازمان پژوهشهاي علمي و صنعتي از طريق مخابرات نيز تامين شده بود كه در مجموع به ۳mbps ميرسيد.</p>
            <p style="font-size: 20px ; padding: 0px 18px">هم اكنون نيز مركز انفورماتيك دانشگاه با داشتن امكانات پيشرفته در بخش سرور قادر به ميزباني بسياري از سرويس هاي خود در حوزه آموزشي و اداري مي باشد. افزون برآنكه خدمات متنوعي نيز به اساتيد و اعضاي هيئت علمي ارائه مي شود كه از آن جمله مي توان دسترسي به شبكه به صورت Wireless در درون و بيرون پرديس دانشگاه و استفاده از سامانه جامع آموزشي-دانشجويي اشاره كرد. علاوه بر آن پهناي باند اتصالي به اينترنت نيز از طريق فيبر نوري متصل به مركز مخابرات استان مازندران به ميزان ۲۵mbps می باشد.</p>
            <p style="font-size: 20px ; padding: 0px 18px">شایان ذکر است که هدف اصلي اين مركز نيز در آينده راه اندازي زير ساخت بسيار سريع فيبر نوري و تجهيز مركز سرور تخصصي است تا از طرفي پاسخگوي نيازهاي آموزشي – تحقيقاتي تمامي استفاده كنندگان از مركز فناوري اطلاعات باشد و همينطور به عنوان پيشرفته ترين دانشگاه در حوزه فناوري اطلاعات در شمال كشور ايفاي نقش نمايد.</p>
            <p style="font-size: 20px ; padding: 0px 18px 18px 18px">خدمات ارائه شده مرکز فناوری اطلاعات دانشگاه صنعتی نوشیروانی بابل به شرح ذیل است:</p>
            <ul class="post_content">
                <li style="font-size: 20px">       سرویس اینترنت (Internet Services):
                    <p style="font-size: 15px ; padding: 0px 0px 0px 18px">
                        کاربران دانشگاهی اعم از دانشجویان کارشناسی، کارشناسی ارشد ودکترا، کارمندان و اعضای هیات علمی می توانند توسط کامپیوترهای مرکز کامپیوتر یا کامپیوتر بخش های دیگر دانشگاه و با داشتن امکان دسترسی مجاز(account) از سرویس اینترنت استفاده کنند.
                    </p>
                </li>
                <br>
                <li style="font-size: 20px">       سرویس اینترنت توسط سیستم بیسیم (Wireless):
                    <p style="font-size: 15px ; padding: 0px 0px 0px 18px">
                        علاوه بر امکان اتصال به اینترنت از طریق کامپیوترهای شخصی (PC) متصل به کابل شبکه، کاربران می توانند از طریق شبکه Wireless دانشگاه نیز از اینترنت استفاده کنند.
                    </p>
                </li>
                <br>
                <li style="font-size: 20px">       پشتیبانی از Web site، E-mail و FTP دانشگاه:
                    <p style="font-size: 15px ; padding: 0px 0px 0px 18px">
                        مرکز کامپیوتر مسئول ارائه سرویس های پست الکترونیکی و FTP به کاربران تعیین شده و نیز پشتیبانی و به روز رسانی سایت وب دانشگاه است.
                    </p>
                </li>
                <br>
                <li style="font-size: 20px">       پشتیبانی از سرورهای داخلی دانشگاه:
                    <p style="font-size: 15px ; padding: 0px 0px 0px 18px">
                        علاوه بر سرورهای سراسری که از طریق اینترنت قابل دسترسی هستند، تعدادی از سرورها نیز وظیفه سرویس دهی به کاربران درون دانشگاه را بر عهده دارند. از آن جمله می توان به File server، Print server و تعدادی سرورهای تخصصی مانند DNS و DHCP اشاره کرد. مرکز کامپیوتر مسئولیت راه اندازی و پشتیبانی این سرورها را نیز بر عهده دارد.
                    </p>
                </li>
                <br>
                <li style="font-size: 20px">       سيستم هاي مانيتورينگ:
                    <p style="font-size: 15px ; padding: 0px 0px 0px 18px">
                        در اين بخش از Config سوييچ ها و روتر هاي دانشگاه تا کنترل و مانيتورينگ همه چيز تحت کنترل ميباشد. ۳ سيستم مانيتورينگ در مرکز داير مي باشد که کارهاي زير را انجام ميدهد: ۱- مانيتورينگ پهناي باند مصرفي دانشکده ها بصورت (روزانه – هفتگي – ماهيانه- ساليانه) از داده ها و ميزان مصرف در تمامي ساعات Backup تهيه مي شود ۲- مانيتورينگ سوييچ ها و روتر هاي مرکز از لحاظ اتصالات ، قطعي ها و Alarm هاي مختلف ۳- مانيتورينگ کاربران پر مصرف در سطح دانشگاه و گزارش گيري (پر بازديد ترين سايتها ،پر بازديدترين پروتکل ها و ...) ۴- مانیتورینگ سرورها در صورت بروز هر گونه مشکل و از کار افتادن سرویس ها
                    </p>
                </li>
                <br>
                <li style="font-size: 20px">       خدمات پردازشی (Processing Services):
                    <p style="font-size: 15px ; padding: 0px 0px 0px 18px">
                        کاربران می توانند در سایت های این مرکز و دیگر بخش های دانشگاه از امکانات پردازش اطلاعات از جمله نصب و راه اندازی نرم افزارهای مورد نیاز و پشتیبانی کاربران به لحاظ فنی استفاده کنند.
                    </p>
                </li>
                <br>
                <li style="font-size: 20px">       سرویس چاپ (Print Services):
                    <p style="font-size: 15px ; padding: 0px 0px 0px 18px">
                        فراهم آوردن امکان پرینت مطالب دانشجویان با ارائه سرویس های مجزا برای دانشجویان کارشناسی و تحصیلات تکمیلی از جمله این سرویس ها است.
                    </p>
                </li>
            </ul>
        </div>
        <section class="call_to_action dark_section" style="background-color: #2a6496">
            <div class="container">
                <h3><strong><span class="rotate">جدیدترین , بروزترین </span></strong> مرکز فناوری اطلاعات دانشگاه صنعتی نوشیروانی بابل</h3>
                <h4>ما به این موضوع ایمان داریم .</h4>
                <a class="btn btn-primary" href="invite.jsp">پیوستن به تیم طراحی</a> </div>
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
