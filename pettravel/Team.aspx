<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Team.aspx.cs" Inherits="pettravel.Team" %>

    <!doctype html>
    <html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>毛起來玩</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
        <link rel="stylesheet" href="assets/css/gijgo.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/animated-headline.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/tagsinput.css">
        <link rel="stylesheet" href="assets/css/style.css">



        <style>
.f1{float:left;margin-left:5px;margin-right:5px;width:calc(5% - 10px)}
.f2{float:left;margin-left:5px;margin-right:5px;width:calc(10% - 10px)}
.f3{float:left;margin-left:5px;margin-right:5px;width:calc(15% - 10px)}
.f4{float:left;margin-left:5px;margin-right:5px;width:calc(20% - 10px)}
.f5{float:left;margin-left:5px;margin-right:5px;width:calc(25% - 10px)}
.f6{float:left;margin-left:5px;margin-right:5px;width:calc(30% - 10px)}
.f7{float:left;margin-left:5px;margin-right:5px;width:calc(35% - 10px)}
.f8{float:left;margin-left:5px;margin-right:5px;width:calc(40% - 10px)}
.f9{float:left;margin-left:5px;margin-right:5px;width:calc(45% - 10px)}
.f10{float:left;margin-left:5px;margin-right:5px;width:calc(50% - 10px)}
.f11{float:left;margin-left:5px;margin-right:5px;width:calc(55% - 10px)}
.f12{float:left;margin-left:5px;margin-right:5px;width:calc(60% - 10px)}
.f13{float:left;margin-left:5px;margin-right:5px;width:calc(65% - 10px)}
.f14{float:left;margin-left:5px;margin-right:5px;width:calc(70% - 10px)}
.f15{float:left;margin-left:5px;margin-right:5px;width:calc(75% - 10px)}
.f16{float:left;margin-left:5px;margin-right:5px;width:calc(80% - 10px)}
.f17{float:left;margin-left:5px;margin-right:5px;width:calc(85% - 10px)}
.f18{float:left;margin-left:5px;margin-right:5px;width:calc(90% - 10px)}
.f19{float:left;margin-left:5px;margin-right:5px;width:calc(95% - 10px)}
.f20{float:left;margin-left:5px;margin-right:5px;width:calc(100% - 10px)}
.w1{float:left;width:5%}
.w2{float:left;width:10%}
.w3{float:left;width:15%}
.w4{float:left;width:20%}
.w5{float:left;width:25%}
.w6{float:left;width:30%}
.w7{float:left;width:35%}
.w8{float:left;width:40%}
.w9{float:left;width:45%}
.w10{float:left;width:50%}
.w11{float:left;width:55%}
.w12{float:left;width:60%}
.w13{float:left;width:65%}
.w14{float:left;width:70%}
.w15{float:left;width:75%}
.w16{float:left;width:80%}
.w17{float:left;width:85%}
.w18{float:left;width:90%}
.w19{float:left;width:95%}
.w20{width:100%;overflow:auto}
.l1{margin-left:calc(5% + 5px);margin-right:5px}
.l2{margin-left:calc(10% + 5px);margin-right:5px}
.l3{margin-left:calc(15% + 5px);margin-right:5px}
.l4{margin-left:calc(20% + 5px);margin-right:5px}
.l5{margin-left:calc(25% + 5px);margin-right:5px}
.l6{margin-left:calc(30% + 5px);margin-right:5px}
.l7{margin-left:calc(35% + 5px);margin-right:5px}
.l8{margin-left:calc(40% + 5px);margin-right:5px}
.l9{margin-left:calc(45% + 5px);margin-right:5px}
.l10{margin-left:calc(50% + 5px);margin-right:5px}
.l11{margin-left:calc(55% + 5px);margin-right:5px}
.l12{margin-left:calc(60% + 5px);margin-right:5px}
.l13{margin-left:calc(65% + 5px);margin-right:5px}
.l14{margin-left:calc(70% + 5px);margin-right:5px}
.l15{margin-left:calc(75% + 5px);margin-right:5px}
.l16{margin-left:calc(80 + 5px);margin-right:5px}
.l17{margin-left:calc(85% + 5px);margin-right:5px}
.l18{margin-left:calc(90% + 5px);margin-right:5px}
.l19{margin-left:calc(95% + 5px);margin-right:5px}

            .op {
                opacity: 0.80;
            }



</style>
    </head>

    <body>
        <form id="form1" runat="server">
            <!-- ? Preloader Start -->
            <div id="preloader-active">
                <div class="preloader d-flex align-items-center justify-content-center">
                    <div class="preloader-inner position-relative">
                        <div class="preloader-circle"></div>
                        <div class="preloader-img pere-text">
                            <img src="assets/img/logo/loder.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <!-- Preloader Start -->
            <header>
                <!-- Header Start -->
                <div class="header-area header-transparent">
                    <div class="main-header header-sticky">
                        <div class="container-fluid">
                            <div class="flex-contents">
                                <!-- Search Box -->
                                <div class="form-box d-flex ">
                                    <asp:Label ID="Label1" runat="server" Text="" Font-Names="微軟正黑體" ForeColor="White"
                                        Font-Size="X-Large" Height="50px" Width="360px"></asp:Label>
                                </div>
                                <!-- logo -->
                                <div class="logo">
                                    <asp:ImageButton ID="Logo" runat="server" OnClick="Logo_Click"
                                        ImageUrl="~/pic/logo.jpg" Height="130px" Width="130px" />
                                </div>
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="index.aspx">首頁</a></li>
                                            <li><a href="listing.aspx">探索</a></li>
                                            <!--<li><a href="#">行程</a></li>-->
                                            <li>
                                                <asp:LinkButton ID="PersonalDataLB" runat="server"
                                                    OnClick="PersonalDataLB_Click">帳號管理</asp:LinkButton>
                                                <ul class="submenu">
                                                    <li><a href="favorite_listing.aspx">我的收藏</a></li>
                                                </ul>
                                            </li>
                                            <li>
                                                <asp:LinkButton ID="BusinessInfoLB" runat="server"
                                                    OnClick="BusinessInfoLB_Click">業者資訊管理</asp:LinkButton>
                                            </li>
                                            <asp:LinkButton class="header-btn" ID="Log" runat="server"
                                                OnClick="Log_Click"></asp:LinkButton>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- Mobile Menu -->
                                <div class="col-12">
                                    <div class="mobile_menu d-block d-lg-none"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Header End -->
            </header>
            <main>
                <!--? Home Hero Area Start-->
                <div class="hero-area slider-bg3 hero-overly ">
                    <div class="slider-height d-flex align-items-center ">
                        <div class="container">
                                <!-- form  -->
                       
                                    <div class="form-tittle mb-20 col-xl-5 col-lg-6">
                                        <h2>製作團隊</h2>
                                    </div>
                            <dic class="w20">
                                    <table class="op" border="1" bgcolor="white" style="color:#000000;  border-color:black;  font-family: Microsoft JhengHei; ">
                                        <thead >
                                            <tr Height="80" align="center">
                                                <th width="100"  >成員</th>
                                                <th width="120" >神性</th>
                                                <th width="150">靠什麼吃飯</th>
                                                <th width="500">負責功能</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr Height="60"align="center">
                                                <th>蘇聖尹</th>
                                                <th>嘴砲大神</th>
                                                <th>嘴</th>
                                                <th>搞笑出張嘴、任務分配、專案整合、期程規劃、系統測試</th>
                                            </tr>
                                            <tr Height="60"align="center">
                                                <th>Mars (張維軒)</th>
                                                <th>資料庫大神</th>
                                                <th>資料庫</th>
                                                <th>資料庫建置、店家資訊頁面、留言版功能</th>
                                            </tr>
                                            <tr Height="60"align="center">
                                                <th>陳冠廷</th>
                                                <th>男神</th>
                                                <th>臉</th>
                                                <th>登入註冊、行程規劃頁面功能</th>
                                            </tr>
                                            <tr Height="60"align="center">
                                                <th>黃家楷</th>
                                                <th>智慧之神</th>
                                                <th>腦ˊ_>ˋ</th>
                                                <th>探索頁面清單功能、分項清單</th>
                                            </tr>
                                            <tr Height="60"align="center">
                                                <th>Elias (蔡家銓)</th>
                                                <th>隱藏版</th>
                                                <th>上下左右AB</th>
                                                <th>個人&業者資訊頁、reCAPTCHA、程式模組化、webhint檢查</th>
                                            </tr>
                                        </tbody>
                                    </table>
                                </dic>
                            <p class="w20"></p>
                            <p class="w20"></p>
                            <p class="w20"></p>
                            <p class="w20"></p>
                            <p class="w20"></p>
                            <p align="center" class="w4"><image src="/pic/team/git-hub.png" width="200" height="75" ></image></p>

                            <asp:Label ID="Label6" class="f2" align="right"  runat="server" Text="蘇聖尹" Font-Size="X-Large" Height="75" Font-Bold="True" ForeColor="black" Font-Names="Microsoft Yahei"  ></asp:Label>
                            <a  class="w1" href="https://github.com/sushengyin"><image src="/pic/team/github.png" width="75" height="75"  ></image></a>

                            <asp:Label ID="Label5" class="f2" align="right"  runat="server" Text="Mars" Font-Size="X-Large" Height="75" Font-Bold="True" ForeColor="black" Font-Names="Arial Black"></asp:Label>
                            <a  class="w1" href="https://github.com/Mars-Hsuan"><image src="/pic/team/dog.png" width="75" height="75"  ></image></a>

                            <asp:Label ID="Label4" class="f2" align="right"  runat="server" Text="陳冠廷" Font-Size="X-Large" Height="75" Font-Bold="True" ForeColor="black" Font-Names="Microsoft Yahei"></asp:Label>
                            <a  class="w1" href="https://github.com/LunkHawk"><image src="/pic/team/github.png" width="75" height="75"  ></image></a>

                            <asp:Label ID="Label3" class="f2" align="right"  runat="server" Text="黃家楷" Font-Size="X-Large" Height="75" Font-Bold="True" ForeColor="black" Font-Names="Microsoft Yahei"></asp:Label>
                            <a  class="w1" href="https://github.com/collapse54"><image src="/pic/team/cat.png" width="75" height="75" ></image></a>

                            <asp:Label ID="Label2" class="f2" align="right"  runat="server" Text="Elias" Font-Size="X-Large" Height="75" Font-Bold="True" ForeColor="black" Font-Names="Arial Black"></asp:Label>
                            <a  class="w1" href="https://github.com/Eliasfunction"><image src="/pic/team/gopher.png" width="75" height="75" ></image></a>
                            <p class="w20"></p>


                        </div>
                    </div>
                </div>
                <!-- Testimonial Area End -->
            </main>
            <footer>
                <div class="footer-wrappper">
                    <!-- Footer Start-->
                    <div class="footer-area footer-padding">
                        <div class="container">
                            <div class="row justify-content-between">
                                <div class="col-xl-5 col-lg-5 col-md-6 col-sm-10">
                                    <div class="single-footer-caption mb-50">
                                        <div class="single-footer-caption mb-30">
                                            <!-- logo -->
                                            <div class="footer-logo mb-25">
                                                <a href="index.aspx"><img src="assets/img/logo/logo2_footer.png" alt=""
                                                        style="width:130px;height:130px;"></a>
                                            </div>
                                            <div class="footer-tittle">
                                                <div class="footer-pera">
                                                    <p>對於總是無法帶著毛小孩一起分享旅遊時光感到惋惜嗎？或者曾試著自己規劃一趟毛孩之旅卻發現困難重重？本網站幫撿屎官們篩選了各種可與毛孩一同前往的旅宿、餐廳、景點等，並提供一鍵規劃行程服務，省去上網搜尋、人工規劃行程等大量時間，希望能讓毛孩與我們有更多共同的回憶。
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-2 col-lg-4 col-md-4 col-sm-6">
                                    <div class="single-footer-caption mb-50">
                                        <div class="footer-tittle">
                                            <h4>品牌資訊</h4>
                                            <ul>
                                                <li><a href="Team.aspx">製作團隊</a></li>
                                                <li><a href="contact.aspx">聯絡我們</a></li>
                                                <li><a href="Development_History.aspx">開發歷程</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- footer-bottom area -->
                    <div class="footer-bottom-area">
                        <div class="container">
                            <div class="footer-border">
                                <div class="row d-flex align-items-center">
                                    <div class="col-xl-12 ">
                                        <div class="footer-copy-right text-center">
                                            <p>Copyright &copy;
                                                <script>document.write(new Date().getFullYear());</script> 毛起來玩 |
                                                照片來源：Via Su
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Footer End-->
                </div>
            </footer>
            <!-- Scroll Up -->
            <div id="back-top">
                <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
            </div>

            <!-- JS here -->
            <!-- Jquery, Popper, Bootstrap -->
            <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
            <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
            <script src="./assets/js/popper.min.js"></script>
            <script src="./assets/js/bootstrap.min.js"></script>

            <!--Mobile Menu, Animated,PopUp ,slick, owl -->
            <script src="./assets/js/wow.min.js"></script>
            <script src="./assets/js/animated.headline.js"></script>
            <script src="./assets/js/jquery.magnific-popup.js"></script>
            <script src="./assets/js/owl.carousel.min.js"></script>
            <script src="./assets/js/slick.min.js"></script>

            <!-- Date Picker, Nice-select, sticky ,Progress-->
            <script src="./assets/js/gijgo.min.js"></script>
            <script src="./assets/js/jquery.slicknav.min.js"></script>
            <script src="./assets/js/jquery.nice-select.min.js"></script>
            <script src="./assets/js/jquery.barfiller.js"></script>

            <!-- counter , way-point,Hover Direction -->
            <script src="./assets/js/jquery.counterup.min.js"></script>
            <script src="./assets/js/waypoints.min.js"></script>
            <script src="./assets/js/jquery.countdown.min.js"></script>
            <script src="./assets/js/tagsinput.js"></script>

            <!-- contact js -->
            <script src="./assets/js/contact.js"></script>
            <script src="./assets/js/jquery.form.js"></script>
            <script src="./assets/js/jquery.validate.min.js"></script>
            <script src="./assets/js/mail-script.js"></script>
            <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

            <!-- Jquery Plugins, main Jquery -->
            <script src="./assets/js/plugins.js"></script>
            <script src="./assets/js/main.js"></script>
        </form>
    </body>

    </html>