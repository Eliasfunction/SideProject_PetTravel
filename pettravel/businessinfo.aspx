<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="businessinfo.aspx.cs" Inherits="pettravel.businessinfo" %>

<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>DirectoryListing</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <!-- <link rel="manifest" href="site.webmanifest">-->
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

    <link href="LXXUploadNeeded/LXXUploadPic.css" rel="stylesheet" type="text/css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="TWzipcode/jquery.twzipcode.min.js"></script>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <!--20 等分表單網格系統-->
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
    .stl {
        resize: none;
    }
.county {
    background-color: #ffffff;
    color: #ff0000;
    font-weight:bold;
}
.district {
    background-color: #ffffff;
    color: #ff0000;
    font-weight:bold;
}
label{ 
    line-height:25pt; 

} 
</style>
<!-- Designed by WFU BLOG -->




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
                            <form id="form1" runat="server" method="post" enctype="multipart/form-data">
                            <!-- Login Heading -->
                            <div class="register-heading">
                                <span>業者資訊管理</span>
                            </div>
                            <!-- Single Input Fields -->
                            <div class="input-box">
                                <div class="single-input-fields">
                                    <label class="w4">類型*</label>
                                </div>
                                <asp:DropDownList ID="Spot" runat="server" AppendDataBoundItems="True" DataMember="DefaultView" Height="30px" class="w16 form-control check-marks mb-15" ForeColor="Red" Font-Bold="True">
                                    <asp:ListItem Value="0">請選擇</asp:ListItem>
                                    <asp:ListItem Value="住宿">住宿</asp:ListItem>
                                    <asp:ListItem Value="餐飲">餐飲</asp:ListItem>
                                    <asp:ListItem Value="景點">景點</asp:ListItem>
                                </asp:DropDownList>
                                <div class="w20 single-input-fields">
                                    <label class="w4">店家名稱* </label>
                                    <asp:TextBox ID="StoreTB" runat="server" TextMode="SingleLine" class="w16 form-control" required="required"></asp:TextBox> 
                                </div>
                                <div class="w20 single-input-fields">
                                    <label class="w4">營業電話* </label>
                                    <asp:TextBox ID="PhoneTB" runat="server" TextMode="Phone" class="w16 form-control" required="required"></asp:TextBox>
                                </div>
                                <div class="w20 single-input-fields"  ID="NowAddress" runat="server">
                                    <label class="w4">目前地址</label>
                                    <asp:TextBox ID="sregionTB" runat="server" TextMode="SingleLine"  class="w5 form-control" BackColor="#CCCCCC" ReadOnly="True"></asp:TextBox>
                                    <asp:TextBox ID="oldAddressTB" runat="server" TextMode="SingleLine"  class="f7 form-control" BackColor="#CCCCCC" ReadOnly="True"></asp:TextBox>
                                    <div class="w1"> <asp:CheckBox ID="UseoldAddress" runat="server" AutoPostBack="True" OnCheckedChanged="UseoldAddress_CheckedChanged" /></div>
                                    <div class="w3">地址照舊</div>
                                </div>
                                <div class="w20 single-input-fields" ID="NewAddress" runat="server">
                                    <label class="w4">新設地址</label>
                                    <div id="zipcode3">
                                        <div class="w6 check-marks mb-15"  data-role="county" ></div>
                                        <div class="w10 check-marks mb-15"  data-role="district" ></div>
                                    </div>
                                    <script>$("#zipcode3").twzipcode({'countySel': '臺北市','css': ["form-control county", "form-control district"],'zipcodeIntoDistrict': true});</script>
                                </div>
                                <div class="w20 single-input-fields" ID="NewAddressStreet" runat="server">
                                    <p class="w4"></p>
                                    <asp:TextBox ID="AddressTB" runat="server" TextMode="SingleLine"  class="w16 form-control"></asp:TextBox>
                                </div>
                                <div class="w20 single-input-fields">
                                    <label class="w4">店家網址</label>
                                    <asp:TextBox ID="WebsiteTB" runat="server" TextMode="SingleLine" class="w16 form-control"></asp:TextBox>
                                </div>
                                <div class="w20 single-input-fields">
                                    <label class="w4">店家簡介</label>
                                    <asp:TextBox ID="sMassage" runat="server"  Rows="3" TextMode="MultiLine" class="w16 form-control stl"></asp:TextBox>
                                </div>
                                <div class="w20 single-input-fields" ID="NowIMGshow" runat="server">
                                    <label class="w16">現有照片(照片大小上限 4 MB)</label>
                                    <div class="w1"> 
                                        <asp:CheckBox ID="Uswoldimg" runat="server" AutoPostBack="True" OnCheckedChanged="Uswoldimg_CheckedChanged" />
                                    </div>
                                    <div class="w3">圖片照舊</div>
                                    <table border="0">
                                        <tbody>
                                            <tr>
                                                <th><asp:ImageButton ID="oldpic1ImageButton" runat="server"  style=" height: 120px;" BorderStyle="None" /></th>
                                                <th><asp:ImageButton ID="oldpic2ImageButton" runat="server"  style=" height: 120px;" BorderStyle="None" /></th>
                                            </tr>
                                            <tr>
                                                <th><asp:ImageButton ID="oldpic3ImageButton" runat="server"  style=" height: 120px;" BorderStyle="None" /></th>
                                                <th><asp:ImageButton ID="oldpic4ImageButton" runat="server"  style=" height: 120px;" BorderStyle="None" /></th>
                                            </tr>
                                        </tbody>
                                    </table>
                                 </div>
                                <div class="w20 single-input-fields" ID="NewIMG" runat="server">
                                    <label class="w20">上傳圖片(照片大小上限 4 MB)</label>
                                    <div id="LXXUploadPic" LXXCol="2" LXXRow="2" LXXWidth="100" LXXHeight="100"></div>
                                    <p class="w20"></p>
                                 </div>
                                <!-- form Footer -->
                                <div class="W20  register-footer">
                                    <div class="g-recaptcha f14" data-sitekey="6Lf1lqsbAAAAAEe2ptOrw7EriKV8KiotTzpAgb-T"></div>
                                    <asp:Button  ID="UpdateBT" class="f6" runat="server" Text="確認更改" BackColor="#ec3472" Font-Bold="False" Font-Names="微軟正黑體" Font-Size="Large" ForeColor="White" Height="60px" Width="100%" OnClick="UpdateBT_Click" />
                                </div>
                                <div class="footer-logo mb-25">
                                        <a href="index.aspx"><img src="assets/img/logo/logo2_footer.png" alt="" style="width:130px;height:130px;"></a>
                                </div>
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
    
    <!-- counter , way-point,Hover Direction 
    <script src="./assets/js/jquery.counterup.min.js"></script>
    <script src="./assets/js/waypoints.min.js"></script>
    <script src="./assets/js/jquery.countdown.min.js"></script>
    <script src="./assets/js/tagsinput.js"></script>-->

    <!-- contact js 
    <script src="./assets/js/contact.js"></script>
    <script src="./assets/js/jquery.form.js"></script>
    <script src="./assets/js/jquery.validate.min.js"></script>
    <script src="./assets/js/mail-script.js"></script>
    <script src="./assets/js/jquery.ajaxchimp.min.js"></script>-->
    
    <!-- Jquery Plugins, main Jquery -->	
    <script src="./assets/js/plugins.js"></script>
    <script src="./assets/js/main.js"></script>
    
    <!-- LXXUploadNeeded -->	
    <script src="./LXXUploadNeeded/jquery-2.2.1.js"></script>
    <script src="./LXXUploadNeeded/LXXUploadPic.js"></script>

    </body>
</html>