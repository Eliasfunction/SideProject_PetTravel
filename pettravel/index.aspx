<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="pettravel.index" %>

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
    </head>

    <body>
        
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
                <form id="form1" runat="server">
                <div class="header-area header-transparent">
                    <div class="main-header header-sticky">
                        <div class="container-fluid">
                            <div class="flex-contents">
                                <!-- Search Box -->
                                
                                    <asp:Label ID="Label1" runat="server" Text="" Font-Names="微軟正黑體" ForeColor="White"
                                        Font-Size="X-Large" Height="50px" Width="360px"></asp:Label>
                                
                                <!-- logo -->
                                <div class="logo">
                                    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click"
                                        ImageUrl="~/pic/logo.jpg" Height="130px" Width="130px" />
                                </div>
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="index.aspx">首頁</a></li>
                                            <li><a href="listing.aspx">探索</a></li>
                                            <!--<li><a href="elements.aspx">行程</a> 
                                            </li>-->
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
                    </form>
                <!-- Header End -->
            </header>
            <main>
                <!--? Home Hero Area Start-->
                <div class="hero-area slider-bg1 hero-overly ">
                    <div class="slider-height d-flex align-items-center ">
                        <div class="container">
                            <div class="row">
                                <!-- form -->
                                <div class="col-xl-5 col-lg-6">
                                    <div class="form-tittle mb-20" style="white-space:nowrap">
                                        <h2>毛起來玩<br>開始規劃行程吧</h2>
                                    </div>
                                    <div class="form-wrapper">
                                        <form id="contact-form" action="elements.aspx">
                                            <div class="row">
                                                <div class="col-lg-12 col-md-6 mb-15">
                                                    <div class="select-itms">
                                                        <label for="bday">啟程日:</label>
                                                        <input id="sday" name="sday" type="date">
                                                        <label for="bday">回程日:</label>
                                                        <input id="rday" name="rday" type="date">
                                                        <input type="number" name="pnum" placeholder="請輸入人數" min="1">
                                                    </div>
                                                </div>
                                                <div class="col-lg-12 col-md-6 mb-15">
                                                    <div class="select-itms">
                                                        <select name="city" id="city" class="nice-select">
                                                            <option value="">請選擇城市</option>
                                                            <option value="台北市">台北市</option>
                                                            <option value="台中市">台中市</option>
                                                            <option value="台南市">台南市</option>
                                                            <option value="高雄市">高雄市</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="submit-info">
                                                        <button class="submit-btn2" type="submit">規劃行程</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Home Hero End -->

                <!--? subscribe Area Start-->
                <div class="subscribe-area section-bg2" data-background="assets/img/gallery/section_bg02.png">
                    <div class="container">
                        <div class="row justify-content-xl-end justify-content-lg-end justify-content-md-start">
                            <div class="col-xl-5 col-lg-5  col-md-8  ">
                                <!-- Section Tittle -->
                                <div class="section-tittle section-tittle2 mb-20">
                                    <h2>聯絡我們</h2>
                                    <p>不管是使用上的問題，或是任何建議<br> 都可以透過以下欄位回饋給我們</p>
                                </div>
                                <div class="subscribe-now">
                                    <form action="mailto:watertest500@gmail.com">
                                    <input type="text" placeholder="告訴我們您的建議">
                                    <button class="submit-btn" href="">提交</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- subscribe Area End-->
                
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
                                            <!-- social ->
                                    <div class="footer-social">
                                        <a href="#"><i class="fab fa-twitter"></i></a>
                                        <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                        <a href="#"><i class="ti-linkedin"></i></a>
                                    </div-->
                                        </div>
                                    </div>
                                </div>
                                <!--div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>其他連結</h4>
                                    <ul>
                                        <li><a href="#">Listing</a></li>
                                        <li><a href="#">Submit your Business</a></li>
                                        <li><a href="#">About</a></li>
                                        <li><a href="#">Blog</a></li>
                                        <li><a href="#">Cities</a></li>
                                    </ul>
                                </div>
                            </div>
                        </!--div-->
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
        
    </body>

    </html>