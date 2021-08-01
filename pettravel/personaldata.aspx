<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personaldata.aspx.cs" Inherits="pettravel.personaldata" %>

    <!doctype html>
    <html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>DirectoryListing</title>
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

        <script src="https://www.google.com/recaptcha/api.js" async defer></script>

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
            .f17{float:left;margin-left:5px;margin-right:5px;width:calc(85% - 10px)}
            .f18{float:left;margin-left:5px;margin-right:5px;width:calc(90% - 10px)}
            .f19{float:left;margin-left:5px;margin-right:5px;width:calc(95% - 10px)}
            .f20{float:left;margin-left:5px;margin-right:5px;width:calc(100% - 10px)}
            .w1{float:left;width:5%;}
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
        </style>
    </head>

    <body>
        <!-- Registration -->
        <main class="login-bg">
            <!-- Register Area Start -->
            <div class="register-form-area">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-xl-6 col-lg-8">
                            <div class="register-form text-center">
                                <form id="form1" runat="server" method="post">
                                    <!-- Login Heading -->
                                    <div class="register-heading">
                                        <span>帳號管理</span>
                                        <p style="color:Blue;">修改或新增個人資訊</p>
                                    </div>
                                    <!-- Single Input Fields -->
                                    <div class="input-box">
                                        <div class="single-input-fields">
                                            <div class="w20">                                            
                                                <label class="w8">帳號</label>
                                                <asp:TextBox ID="mailTB" class="w12" runat="server" BackColor="#CCCCCC" ReadOnly="True"></asp:TextBox>
                                            </div>
                                            <div class="w20"> 
                                                <label class="w8">姓名</label>
                                                <asp:TextBox ID="NameTB" class="w12" runat="server" BackColor="White"></asp:TextBox>
                                            </div>
                                            <div class="w20"> 
                                                <label class="w8">電話/手機</label>
                                                <asp:TextBox ID="PhoneTB" class="w12" runat="server" TextMode="Phone"></asp:TextBox>
                                            </div>
                                            <div class="w20"> 
                                                <label class="w8">住址</label>
                                                <asp:TextBox ID="AddressTB" class="w12" runat="server" TextMode="SingleLine"></asp:TextBox>
                                            </div>
                                                <div class="w20"> 
                                                    <label class="w8">密碼</label>
                                                    <asp:TextBox ID="OldPwdTB" class="w12" runat="server" TextMode="Password"></asp:TextBox>
                                                </div>
                                            <div class="w20"> 
                                                <p class="w8"></p>
                                                <asp:CheckBox ID="Pswd_area_show" class="w1" runat="server" OnCheckedChanged="Pswd_area_show_CheckedChanged" AutoPostBack="True"/>
                                                <div class="w6">更改密碼請按此</div>
                                            </div>
                                            <div ID="Pswd_change_area" runat="server" style="Display:None;">

                                                <div class="w20"> 
                                                    <label class="w8">新密碼</label>
                                                    <asp:TextBox ID="NewPwdTB" class="w12" runat="server" TextMode="Password"></asp:TextBox>
                                                </div>
                                                <div class="w20"> 
                                                    <label class="w8">確認新密碼</label>
                                                    <asp:TextBox ID="ConfirmPwdTB" class="w12" runat="server" TextMode="Password"></asp:TextBox>
                                                </div>
                                            </div>
                                            <div class="w20"> 
                                                <p class="w8"></p>
                                                <asp:Label ID="ShowError" class="w12" runat="server" ForeColor="Red" Font-Size="X-Large"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- form Footer -->
                                    <div class="register-footer" >
                                        <div class="w8 g-recaptcha " data-sitekey="6Lf1lqsbAAAAAEe2ptOrw7EriKV8KiotTzpAgb-T" ></div>
                                        <asp:Button ID="UpdateBT" runat="server" Text="確認更改" BackColor="#ec3472"
                                            Font-Bold="False" Font-Names="微軟正黑體" Font-Size="X-Large" ForeColor="White"
                                            Height="59px" Width="179px" OnClick="UpdateBT_Click" Class="w6" />
                                    </div>
                                    <div class="footer-logo mb-25">
                                        <a href="index.aspx"><img src="assets/img/logo/logo2_footer.png" alt="" style="width:130px;height:130px;"></a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Register Area End -->
        </main>

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