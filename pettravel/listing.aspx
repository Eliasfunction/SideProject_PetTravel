<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listing.aspx.cs" Inherits="pettravel.WebForm1" %>

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
                            <asp:Label ID="Label1" runat="server" Text="" Font-Names="微軟正黑體" ForeColor="White" Font-Size="X-Large" Height="50px" Width="360px"></asp:Label>
                        </div>
                        <!-- logo -->
                        <div class="logo" >
                            <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/pic/logo.jpg" Height="130px" Width="130px" />
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav> 
                                <ul id="navigation">                                                                                                                                     
                                    <li><a href="index.aspx">首頁</a></li>
                                    <li><a href="listing.aspx">探索</a></li>
                                    <li><a href="elements.aspx">行程</a>
                                        <ul class="submenu">
                                            <!--
                                            <li><a href="blog.aspx">收藏店家</a></li>
                                            <li><a href="blog_details.aspx">店家資訊</a></li>
                                            <li><a href="elements.aspx">簡介</a></li>
                                            <li><a href="contact.aspx">查看地圖</a></li>
                                            -->
                                            <li><a href="elements.aspx">行程表</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="PersonalDataLB" runat="server" OnClick="PersonalDataLB_Click">帳號管理</asp:LinkButton>
                                        <ul class="submenu">
                                            <li><a href="favorite_listing.aspx">我的收藏</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <asp:LinkButton ID="BusinessInfoLB" runat="server" OnClick="BusinessInfoLB_Click">業者資訊管理</asp:LinkButton>
                                    </li>
                                    <!--<li>
                                        <div class="header-right-btn ml-15">
                                            
                                            <a href="#" data-toggle="modal" data-target="#addcategory" class="header-btn">個人/業者資訊</a>
                                        </div>
                                    </li>-->
                                    <asp:LinkButton class="header-btn" ID="Log" runat="server" OnClick="Log_Click"></asp:LinkButton>
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
        <!--? Hero Area Start-->
        <div class="hero-area slider-bg2  slider-height2 d-flex align-items-center hero-overly">
            <div class="container">
                <div class="row">
                    <div class="col-xl-10 col-lg-10">
                        <!-- Hero Caption -->
                        <div class="hero__caption2">
                            <h2>探索景點</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero end -->
        <!-- listing Area Start -->
        <div class="listing-area pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <!--? Left content -->
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="row">
                            <div class="col-12">
                                <div class="small-section-tittle2 mb-45">
                                    <h4 style="font-size:large">條件篩選</h4>
                                </div>
                            </div>
                        </div>
                        <!-- Job Category Listing start -->
                        <div class="category-listing mb-50">
                            <!-- single one -->
                            <div class="single-listing">
                                <!-- Select City items start -->
                                <div class="select-job-items2">
                                    <asp:DropDownList id="Ddlcityselect" runat="server" CssClass="nice-select">
                                        <asp:listitem Selected="True" value="none">選擇縣市</asp:listitem>
                                        <asp:listitem value="台北">台北</asp:listitem>
                                        <asp:listitem value="台中">台中</asp:listitem>
                                        <asp:ListItem value="高雄">高雄</asp:ListItem>
                                        <asp:listitem value="台東">台東</asp:listitem>
                                    </asp:DropDownList>
                                        <!--asp:listitem value="">備用</asp:listitem-->
                                </div>
                                <!--  Select City items End-->
                                <!-- Select State items start -->
                                <div class="select-job-items2">
                                    <asp:DropDownList id="Ddltypeselect" runat="server" CssClass="nice-select">
                                        <asp:listitem selected="True" value="none">選擇類型</asp:listitem>
                                        <asp:listitem value="餐飲">餐飲</asp:listitem>
                                        <asp:listitem value="住宿">住宿</asp:listitem>
                                        <asp:listitem value="景點">景點</asp:listitem>
                                    </asp:DropDownList>
                                </div>
                                <div>
                                    <asp:LinkButton class="header-btn" ID="LkBtnSearchFilter" Text="篩選" runat="server" OnClick="LkBtnSearcbFilter_Click"></asp:LinkButton>
                                    <asp:LinkButton class="header-btn" ID="LkBtnSearchClear" Text="檢視全部" runat="server" OnClick="LkBtnSearcbClear_Click"></asp:LinkButton>
                                </div>
                                <!--  Select State items End-->
                                <!-- Select km items start ->
                                <div class="select-job-items2">
                                    <select name="select2">
                                        <option value="">Near 1 km</option>
                                        <option value="">2 km</option>
                                        <option value="">3 km</option>
                                        <option value="">4 km</option>
                                        <option value="">5 km</option>
                                        <option value="">6 km</option>
                                    </select>
                                </div>
                                <!--  Select km items End-->
                                <!-- select-Categories start ->
                                <div class="select-Categories pt-80 pb-30">
                                    <div class="small-section-tittle2 mb-20">
                                        <h4>價格範圍</h4>
                                    </div>
                                    <label class="container">$50 - $150
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">$150 - $300
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">$300 - $500
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">$500 - $1000
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">$1000 以上
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <-- select-Categories End >
                                <-- select-Categories start >
                                <div class="select-Categories">
                                    <div class="small-section-tittle2 mb-20">
                                        <h4>其他需求</h4>
                                    </div>
                                    <label class="container">免費Wi-fi
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">可使用信用卡
                                        <input type="checkbox" checked="checked active">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">附吸菸場所
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">附停車場
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                    <label class="container">Coupons
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <! select-Categories End -->
                            </div>
                        </div>
                        <!-- Job Category Listing End -->
                    </div>
                    <!--?  Right content -->
                        <div class="col-xl-8 col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="count mb-35">
                                    &nbsp<asp:Label ID="LblRightContent" runat="server" Text="探索佇列"></asp:Label>
                                </div>
                            </div>
                        </div>
                             <!--? item 更新 -->
                        <!--? Popular Directory Start -->
                        <div class="popular-directorya-area popular-directorya-area2 pb-padding">
                            <div class="row">
                                <div class="col-lg-6  col-md-12 col-sm-6">
                                    <!-- Single -->

                                    <div class="properties pb-30">
                                        <div class="properties__card">
                                            <div class="properties__img overlay3">
                                                <!--店家圖片-->
                                                <a><asp:Image id="Img1spic1" runat="server" imageurl="assets/img/gallery/properties1.png" Height="192.4px" Width="370px"></asp:Image></a>
                                                <div class="img-text">
                                                    <!--特點標籤-->
                                                    <asp:Label id="Lbl1sfeature1" Text=" " runat="server"/> <p>
                                                    <asp:Label id="Lbl1sfeature2" Text=" " runat="server"/> <p>
                                                </div>
                                                <div class="icon">
                                                    <asp:Image ID="Img1iconspic2" runat="server" imageurl="assets/img/icon/categori_icon1.png" alt=""></asp:Image>
                                                </div>
                                            </div>
                                            <div class="properties__caption">
                                                <h3>
                                                <asp:LinkButton id="LkBtn1sname" Text=" " runat="server" OnClick="LkBtn1sname_Click"/>
                                                </h3>
                                                <asp:Label id="Lbl1smessage" Text=" " runat="server"/> <p>
                                            </div>
                                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                                <div class="restaurant-name">
                                                    <asp:Image ID="Img1spic3" runat="server" imageurl="assets/img/icon/餐飲-icon.png" alt=""></asp:Image>
                                                    <!--旅遊景點-->
                                                    <asp:Label id="Lbl1stype" Text=" " runat="server"/> 
                                                </div>
                                                <div class="heart">
                                                    <asp:LinkButton id="LkBtn1favorite" Text="加入最愛" ForeColor="#ff377b" runat="server" OnClick="LkBtn1favorite_Click"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6  col-md-12 col-sm-6">
                                    <!-- Single -->
                                    <div class="properties pb-30">
                                        <div class="properties__card">
                                            <div class="properties__img overlay3">
                                                <!--店家圖片-->
                                                <a><asp:Image id="Img2spic1" runat="server" imageurl="assets/img/gallery/properties1.png" Height="192.4px" Width="370px"></asp:Image></a>
                                                <div class="img-text">
                                                    <!--特點標籤-->
                                                    <asp:Label id="Lbl2sfeature1" Text=" " runat="server"/> <p>
                                                    <asp:Label id="Lbl2sfeature2" Text=" " runat="server"/> <p>
                                                </div>
                                                <div class="icon">
                                                    <asp:Image ID="Img2iconspic2" runat="server" imageurl="assets/img/icon/categori_icon2.png" alt=""></asp:Image>
                                                </div>
                                            </div>
                                            <div class="properties__caption">
                                                <h3>
                                                <asp:LinkButton id="LkBtn2sname" Text=" " runat="server" OnClick="LkBtn2sname_Click"/>
                                                </h3>
                                                <asp:Label id="Lbl2smessage" Text=" " runat="server"/> <p>
                                            </div>
                                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                                <div class="restaurant-name">
                                                    <asp:Image ID="Img2spic3" runat="server" imageurl="assets/img/icon/餐飲-icon.png" alt=""></asp:Image>
                                                    <!--旅遊景點-->
                                                    <asp:Label id="Lbl2stype" Text=" " runat="server"/> 
                                                </div>
                                                <div class="heart">
                                                    <asp:LinkButton id="LkBtn2favorite" Text="加入最愛" ForeColor="#ff377b" runat="server" OnClick="LkBtn2favorite_Click"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6  col-md-12 col-sm-6">
                                    <!-- Single -->
                                    <div class="properties pb-30">
                                        <div class="properties__card">
                                            <div class="properties__img overlay3">
                                                <!--店家圖片-->
                                                <a><asp:Image id="Img3spic1" runat="server" imageurl="assets/img/gallery/properties1.png" Height="192.4px" Width="370px"></asp:Image></a>
                                                <div class="img-text">
                                                    <!--特點標籤-->
                                                    <asp:Label id="Lbl3sfeature1" Text=" " runat="server"/> <p>
                                                    <asp:Label id="Lbl3sfeature2" Text=" " runat="server"/> <p>
                                                </div>
                                                <div class="icon">
                                                    <asp:Image ID="Img3iconspic2" runat="server" imageurl="assets/img/icon/categori_icon3.png" alt=""></asp:Image> 
                                                </div>
                                            </div>
                                            <div class="properties__caption">
                                                <h3>
                                                <asp:LinkButton id="LkBtn3sname" Text=" " runat="server" OnClick="LkBtn3sname_Click"/>
                                                </h3>
                                                <asp:Label id="Lbl3smessage" Text=" " runat="server"/> <p>
                                            </div>
                                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                                <div class="restaurant-name">
                                                    <asp:Image ID="Img3spic3" runat="server" imageurl="assets/img/icon/餐飲-icon.png" alt=""></asp:Image>
                                                    <!--旅遊景點-->
                                                    <asp:Label id="Lbl3stype" Text=" " runat="server"/> 
                                                </div>
                                                <div class="heart">
                                                    <asp:LinkButton id="LkBtn3favorite" Text="加入最愛" ForeColor="#ff377b" runat="server" OnClick="LkBtn3favorite_Click"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6  col-md-12 col-sm-6">
                                    <!-- Single -->
                                    <div class="properties pb-30">
                                        <div class="properties__card">
                                            <div class="properties__img overlay3">
                                                <!--店家圖片-->
                                                <a><asp:Image id="Img4spic1" runat="server" imageurl="assets/img/gallery/properties1.png" Height="192.4px" Width="370px"></asp:Image></a>
                                                <div class="img-text">
                                                    <!--特點標籤-->
                                                    <asp:Label id="Lbl4sfeature1" Text=" " runat="server"/> <p>
                                                    <asp:Label id="Lbl4sfeature2" Text=" " runat="server"/> <p>
                                                </div>
                                                <div class="icon">
                                                    <asp:Image ID="Img4iconspic2" runat="server" imageurl="assets/img/icon/categori_icon4.png" alt=""></asp:Image>
                                                </div>
                                            </div>
                                            <div class="properties__caption">
                                                <h3>
                                                <asp:LinkButton id="LkBtn4sname" Text=" " runat="server" OnClick="LkBtn4sname_Click"/>
                                                </h3>
                                                <asp:Label id="Lbl4smessage" Text=" " runat="server"/> <p>
                                            </div>
                                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                                <div class="restaurant-name">
                                                    <asp:Image ID="Img4spic3" runat="server" imageurl="assets/img/icon/餐飲-icon.png" alt=""></asp:Image>
                                                    <!--旅遊景點-->
                                                    <asp:Label id="Lbl4stype" Text=" " runat="server"/> 
                                                </div>
                                                <div class="heart">
                                                    <asp:LinkButton id="LkBtn4favorite" Text="加入最愛" ForeColor="#ff377b" runat="server" OnClick="LkBtn4favorite_Click"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6  col-md-12 col-sm-6">
                                    <!-- Single -->
                                   
                                    <div class="properties pb-30">
                                        <div class="properties__card">
                                            <div class="properties__img overlay3">
                                                <!--店家圖片-->
                                                <a><asp:Image id="Img5spic1" runat="server" imageurl="assets/img/gallery/properties1.png" Height="192.4px" Width="370px"></asp:Image></a>
                                                <div class="img-text">
                                                    <!--特點標籤-->
                                                    <asp:Label id="Lbl5sfeature1" Text=" " runat="server"/> <p>
                                                    <asp:Label id="Lbl5sfeature2" Text=" " runat="server"/> <p>
                                                </div>
                                                <div class="icon">
                                                    <asp:Image ID="Im5iconspic2" runat="server" imageurl="assets/img/icon/categori_icon5.png" alt=""></asp:Image>
                                                </div>
                                            </div>
                                            <div class="properties__caption">
                                                <h3>
                                                <asp:LinkButton id="LkBtn5sname" Text=" " runat="server" OnClick="LkBtn5sname_Click"/>
                                                </h3>
                                                <asp:Label id="Lbl5smessage" Text=" " runat="server"/> <p>
                                            </div>
                                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                                <div class="restaurant-name">
                                                    <asp:Image ID="Img5spic3" runat="server" imageurl="assets/img/icon/餐飲-icon.png" alt=""></asp:Image>
                                                    <!--旅遊景點-->
                                                    <asp:Label id="Lbl5stype" Text=" " runat="server"/> 
                                                </div>
                                                <div class="heart">
                                                    <asp:LinkButton id="LkBtn5favorite" Text="加入最愛" ForeColor="#ff377b" runat="server" OnClick="LkBtn5favorite_Click"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6  col-md-12 col-sm-6">
                                    <!-- Single -->
                                    <div class="properties pb-30">
                                        <div class="properties__card">
                                            <div class="properties__img overlay3">
                                                <!--店家圖片-->
                                                <a><asp:Image id="Img6spic1" runat="server" imageurl="assets/img/gallery/properties1.png" Height="192.4px" Width="370px"></asp:Image></a>
                                                <div class="img-text">
                                                    <!--特點標籤-->
                                                    <asp:Label id="Lbl6sfeature1" Text=" " runat="server"/> <p>
                                                    <asp:Label id="Lbl6sfeature2" Text=" " runat="server"/> <p>
                                                </div>
                                                <div class="icon">
                                                    <asp:Image ID="Img6iconspic2" runat="server" imageurl="assets/img/icon/categori_icon6.png" alt=""></asp:Image>
                                                </div>
                                            </div>
                                            <div class="properties__caption">
                                                <h3>
                                                <asp:LinkButton id="LkBtn6sname" Text=" " runat="server" OnClick="LkBtn6sname_Click"/>
                                                </h3>
                                                <asp:Label id="Lbl6smessage" Text=" " runat="server"/> <p>
                                            </div>
                                            <div class="properties__footer d-flex justify-content-between align-items-center">
                                                <div class="restaurant-name">
                                                    <asp:Image ID="Img6spic3" runat="server" imageurl="assets/img/icon/餐飲-icon.png" alt=""></asp:Image>
                                                    <!--旅遊景點-->
                                                    <asp:Label id="Lbl6stype" Text=" " runat="server"/> 
                                                </div>
                                                <div class="heart">
                                                    <asp:LinkButton id="LkBtn6favorite" Text="加入最愛" ForeColor="#ff377b" runat="server" OnClick="LkBtn6favorite_Click"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6  col-md-12 col-sm-6">
                                </div>
                            </div>
                        </div>
                        <!--? Popular Directory End -->
                        <!--Pagination Start  -->
                        <div class="pagination-area text-center">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-12">
                                        <div class="single-wrap d-flex justify-content-center">
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination justify-content-start " id="myDIV">
                                                    <!--li class="page-item"><a class="page-link" href="#"><span class="ti-angle-left"></span></a></li-->
                                                    <li class="page-item">
                                                        <asp:LinkButton class="page-link" ID="LkBtnpagetotop" Text="" runat="server" OnClick="LkBtnpagetotop_Click" Enabled="false" Visible="false"><span class="ti-angle-left"></span><span class="ti-angle-left"></span></asp:LinkButton>
                                                    </li>
                                                    <li class="page-item">
                                                        <asp:LinkButton class="page-link" ID="LkBtnpageleft" Text="" runat="server" OnClick="LkBtnpageleft_Click" Enabled="false" Visible="false"><span class="ti-angle-left"></span></asp:LinkButton>
                                                    </li>
                                                    <li class="page-item">
                                                        <asp:LinkButton class="page-link" ID="LkBtnpage1" Text="1" runat="server" OnClick="LkBtnpage1_Click"></asp:LinkButton>
                                                    </li>
                                                    <li class="page-item">
                                                        <asp:LinkButton class="page-link" ID="LkBtnpage2" Text="2" runat="server" OnClick="LkBtnpage2_Click"></asp:LinkButton>
                                                    </li>
                                                    <li class="page-item">
                                                        <asp:LinkButton class="page-link" ID="LkBtnpage3" Text="3" runat="server" OnClick="LkBtnpage3_Click"></asp:LinkButton>
                                                    </li>
                                                     <li class="page-item">
                                                        <asp:LinkButton class="page-link" ID="LkBtnpage4" Text="4" runat="server" OnClick="LkBtnpage4_Click"></asp:LinkButton>
                                                    </li>
                                                     <li class="page-item">
                                                        <asp:LinkButton class="page-link" ID="LkBtnpage5" Text="5" runat="server" OnClick="LkBtnpage5_Click"></asp:LinkButton>
                                                    </li>
                                                    <li class="page-item">
                                                        <asp:LinkButton class="page-link" ID="LkBtnpageright" Text="" runat="server" OnClick="LkBtnpageright_Click" Enabled="true" Visible="true"><span class="ti-angle-right"></span></asp:LinkButton>
                                                    </li>
                                                    <li class="page-item">
                                                        <asp:LinkButton class="page-link" ID="LkBtnpagetoend" Text="" runat="server" OnClick="LkBtnpagetoend_Click" Enabled="true" Visible="true"><span class="ti-angle-right"></span><span class="ti-angle-right"></span></asp:LinkButton>
                                                    </li>
                                                   <!--參考用
                                                       <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-left"></span></a></li>
                                                    <li class="page-item active"><a class="page-link" href="#">01</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">02</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">03</a></li>
                                                    <li class="page-item"><a class="page-link" href="#"><span class="ti-angle-right"></span></a></li>
                                                       -->
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Pagination End  -->
                    </div>
                </div>
            </div>
        </div>
        <!-- listing-area Area End -->

        <!--? services area start -->
        <section class="services-section pb-padding">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-10 col-lg-10 col-md-7 ">
                        <!-- Section Tittle -->
                        <div class="section-tittle  text-center mb-60">
                            <h2>讓我們幫助您</h2>
                            <p>尋找更多</p>
                        </div>
                    </div>
                </div>
                <div class="services-active">
                    <div class="single-cat mb-30">
                        <div class="cat-icon">
                            <img src="assets/img/gallery/services1.png" alt="">
                        </div>
                        <div class="cat-cap text-center">
                            <h5><asp:linkbutton ID="LkBtnrecommandhotel"  runat="server" Text="住宿" OnClick="LkBtnrecommandhotel_Click"/></h5>
                        </div>
                    </div>
                    <div class="single-cat mb-30">
                        <div class="cat-icon">
                            <img src="assets/img/gallery/services2.png" alt="">
                        </div>
                        <div class="cat-cap text-center">
                            <h5><asp:linkbutton ID="LkBtnrecommandrestaurant"  runat="server" Text="餐廳" OnClick="LkBtnrecommandrestaurant_Click"/></h5>
                        </div>
                    </div>
                    <div class="single-cat mb-30">
                        <div class="cat-icon">
                            <img src="assets/img/gallery/services4.png" alt="">
                        </div>
                        <div class="cat-cap text-center">
                            <h5><asp:linkbutton ID="LkBtnrecommandspot" runat="server" Text="景點" OnClick="LkBtnrecommandspot_Click"/></h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Services End -->
        <!-- subscribe Area Start-->
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
                            <input type="text" placeholder="告訴我們您的建議">
                            <button class="submit-btn" href="#">提交</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- subscribe Area End-->
        <!--? Popular Locations Start 01->
        <div class="popular-location  section-padding40">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle ->
                        <div class="section-tittle text-center mb-50">
                            <h2>推薦地點</h2>
                            <p>查看最熱門的景點</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="assets/img/gallery/home-blog1.png" alt="">
                            </div>
                            <div class="location-details">
                                <a href="#" class="location-btn">推薦</a>
                                <ul>
                                    <li>好評指數 - - - - -</li>
                                </ul>
                                <p><a href="blog_details.html">某某某景點名稱</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="assets/img/gallery/home-blog2.png" alt="">
                            </div>
                            <div class="location-details">
                                <a href="#" class="location-btn">推薦</a>
                                <ul>
                                    <li>好評指數 - - - - -</li>
                                </ul>
                                <p><a href="blog_details.html">某某某景點名稱</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Popular Locations End -->
    </main>
    </form>
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
                                        <a href="index.aspx"><img src="assets/img/logo/logo2_footer.png" alt="Logo Here" width="130" height="130"></a>
                                    </div>
                                    <div class="footer-tittle">
                                        <div class="footer-pera">
                                            <p>對於總是無法帶著毛小孩一起分享旅遊時光感到惋惜嗎？或者曾試著自己規劃一趟毛孩之旅卻發現困難重重？本網站幫撿屎官們篩選了各種可與毛孩一同前往的旅宿、餐廳、景點等，並提供一鍵規劃行程服務，省去上網搜尋、人工規劃行程等大量時間，希望能讓毛孩與我們有更多共同的回憶。</p>
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
                                        <li><a href="#">製作團隊</a></li>
                                        <li><a href="#">隱私政策</a></li>
                                        <li><a href="#">開發歷程</a></li>
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
                                    <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" rel="nofollow noopener">Colorlib</a></p>
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
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>

    <!--Modal - add category  -->
    <div class="modal fade cs_modal" id="addcategory" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog custom-modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                    <div class="modal-header lms_block">
                        <h5>Add New Listing</h5>
                    </div>
                    <div class="tab-content">
                        <!-- Tab Menu -->
                        <div class="custom_navtab box_right d-flex lms_block">
                            <ul class="nav" role="tablist">
                                <li>
                                    <a class="btn_5 small_btn active" href="#Basic" aria-controls="Basic" role="tab" data-toggle="tab" aria-expanded="true">Basic</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Amenities" aria-controls="Amenities" role="tab" data-toggle="tab" aria-expanded="false">Amenities</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Location" aria-controls="Location" role="tab" data-toggle="tab" aria-expanded="false">Location</a>
                                </li> 
                                <li>
                                    <a class="btn_5 small_btn" href="#Media" aria-controls="Media" role="tab" data-toggle="tab" aria-expanded="false">Media</a>
                                </li> 
                                <li>
                                    <a class="btn_5 small_btn" href="#SEO" aria-controls="SEO" role="tab" data-toggle="tab" aria-expanded="false">SEO</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Schedule" aria-controls="Schedule" role="tab" data-toggle="tab" aria-expanded="false">Schedule</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Contact" aria-controls="Contact" role="tab" data-toggle="tab" aria-expanded="false">Contact</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Type" aria-controls="Type" role="tab" data-toggle="tab" aria-expanded="false">Type</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Finish" aria-controls="Finish" role="tab" data-toggle="tab" aria-expanded="false">Finish</a>
                                </li>
                            </ul>
                        </div>
                        <!-- Tab Content one -->
                        <div role="tabpanel" class="tab-pane active" id="Basic">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Title</label>
                                            <input class="input_form" name="input_form1" placeholder="Enter amenity name">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Description</label>
                                            <textarea name="amenity-name" placeholder="Enter amenity name"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Featured Type</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 01">Enter amenity name</option>
                                                <option value="Category 02">amenity name 1</option>
                                                <option value="Category 03">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Google Analytics ID</label>
                                            <input class="input_form" name="input_form2" placeholder="Enter value">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Category</label>
                                            <div class="input_wrap_2 d-flex justify-content-between">
                                                <select name="#" class="nice_Select">
                                                    <option value="Category 04">Select category</option>
                                                    <option value="Category 05">category 1</option>
                                                    <option value="Category 06">category 2</option>
                                                </select>
                                                <button class="base-btn"> <i class="ti-plus"></i> Add</button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close"> Cancel</button>
                                <a href="#" class="btn_05 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content Two -->
                        <div role="tabpanel" class="tab-pane" id="Amenities">
                            <div class="modal-body">
                                <!-- Amenities -->
                                <div class="row">
                                    <div class="col-lg-4">
                                        <div class="input_wrap single-box">
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check01" name="check01" value="check01">
                                                <label class="label-style2" for="check01">Home Delivery</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check02" name="check02" value="check02">
                                                <label class="label-style2" for="check02">BBQ Facilities</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check03" name="check03" value="check03">
                                                <label class="label-style2" for="check03">Pet Allowed</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check04" name="check04" value="check04">
                                                <label class="label-style2" for="check04">Wheelchair Accessible</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check05" name="check05" value="check05">
                                                <label class="label-style2" for="check05">Good for Kids</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="input_wrap single-box">
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check001" name="check001" value="check001">
                                                <label class="label-style2" for="check001">Home Delivery</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check002" name="check002" value="check002">
                                                <label class="label-style2" for="check002">BBQ Facilities</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check003" name="check003" value="check003">
                                                <label class="label-style2" for="check003">Pet Allowed</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check004" name="check004" value="check004">
                                                <label class="label-style2" for="check004">Wheelchair Accessible</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check005" name="check005" value="check005">
                                                <label class="label-style2" for="check005">Good for Kids</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="input_wrap single-box">
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check101" name="check101" value="check101">
                                                <label class="label-style2" for="check101">Home Delivery</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check102" name="check102" value="check102">
                                                <label class="label-style2" for="check102">BBQ Facilities</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check103" name="check103" value="check103">
                                                <label class="label-style2" for="check103">Pet Allowed</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check104" name="check104" value="check104">
                                                <label class="label-style2" for="check104">Wheelchair Accessible</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check105" name="check105" value="check105">
                                                <label class="label-style2" for="check105">Good for Kids</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close"> Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content Three -->
                        <div role="tabpanel" class="tab-pane" id="Location">
                            <div class="modal-body">
                                <div class="row">

                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Country</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 07">Select country</option>
                                                <option value="Category 08">Bangladesh</option>
                                                <option value="Category 09">Pakistan</option>
                                                <option value="Category 10">india</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">City</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 11">Select city</option>
                                                <option value="Category 12">Dhaka</option>
                                                <option value="Category 13">Sylhet</option>
                                                <option value="Category 14">chattogram</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Address</label>
                                            <textarea name="address" id="#" placeholder="Write address here"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Latitude</label>
                                            <input class="input_form" name="input_form3" placeholder="Enter value">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Longitude</label>
                                            <input class="input_form" name="input_form4" placeholder="Enter value">
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close"> Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content four -->
                        <div role="tabpanel" class="tab-pane" id="Media">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Listing Thumbnail (420x420 px)</label>
                                            <div class="file_upload">
                                                <div class="form-group">
                                                    <input type="file" name="file1" id="file1" class="input-file">
                                                    <label for="file1" class=" js-labelFile">
                                                        <span class="btn btn_file_upload">select image</span>
                                                        <span class="js-fileName"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Listing cover (1600x600 px)</label>
                                            <div class="file_upload">
                                                <div class="form-group">
                                                    <input type="file" name="file2" id="file2" class="input-file">
                                                    <label for="file2" class=" js-labelFile">
                                                        <span class="btn btn_file_upload">select image</span>
                                                        <span class="js-fileName"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Video Provider</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 15">YoTube</option>
                                                <option value="Category 16">Facebook</option>
                                                <option value="Category 17">Twitter</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Video URL</label>
                                            <input class="input_form" name="input_form5" placeholder="Enter value">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap_2">
                                            <label for="#">Listing Gallery Images (960x640 px)</label>
                                            <div class="file_upload">
                                                <div class="form-group">
                                                    <input type="file" name="file3" id="file3" class="input-file">
                                                    <label for="file3" class=" js-labelFile">
                                                        <span class="btn btn_file_upload">select image</span>
                                                        <span class="js-fileName"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close"> Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content Five -->
                        <div role="tabpanel" class="tab-pane" id="SEO">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="input_wrap input_wrap_tag">
                                            <!-- Tag -->
                                            <div class="single-tag">
                                                <label >Tags</label>
                                                <div class="bootstrap-tags_input bootstrap-tags_input3">
                                                    <input class="tag-fiels" type="text" name="tag" value="Tag 01, Tag 02" data-role="tagsinput"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="input_wrap input_wrap_tag">
                                            <!-- Tag -->
                                            <div class="single-tag">
                                                <label >SEO Meta Tags</label>
                                                <div class="bootstrap-tags_input bootstrap-tags_input3">
                                                    <input class="tag-fiels" type="text" name="tag" value="Tag 01, Tag 02" data-role="tagsinput"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close"> Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content Six -->
                        <div role="tabpanel" class="tab-pane" id="Schedule">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Saturday Opening</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 18">Select option</option>
                                                <option value="Category 19">amenity name 1</option>
                                                <option value="Category 20">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Saturday Closing</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 21">Select option</option>
                                                <option value="Category 22">amenity name 1</option>
                                                <option value="Category 23">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Sunday Opening</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 24">Select option</option>
                                                <option value="Category 25">amenity name 1</option>
                                                <option value="Category 26">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Sunday Closing</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 27">Select option</option>
                                                <option value="Category 28">amenity name 1</option>
                                                <option value="Category 29">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Monday Opening</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 30">Select option</option>
                                                <option value="Category 31">amenity name 1</option>
                                                <option value="Category 32">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Monday Closing</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 33">Select option</option>
                                                <option value="Category 34">amenity name 1</option>
                                                <option value="Category 35">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Tuesday Opening</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 36">Select option</option>
                                                <option value="Category 37">amenity name 1</option>
                                                <option value="Category 38">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Tuesday Closing</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 39">Select option</option>
                                                <option value="Category 40">amenity name 1</option>
                                                <option value="Category 41">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Wednesday Opening</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 42">Select option</option>
                                                <option value="Category 43">amenity name 1</option>
                                                <option value="Category 44">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Wednesday Closing</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 45">Select option</option>
                                                <option value="Category 46">amenity name 1</option>
                                                <option value="Category 47">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Thursday Opening</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 48">Select option</option>
                                                <option value="Category 49">amenity name 1</option>
                                                <option value="Category 50">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Thursday Closing</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 51">Select option</option>
                                                <option value="Category 52">amenity name 1</option>
                                                <option value="Category 53">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Friday Opening</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 54">Select option</option>
                                                <option value="Category 55">amenity name 1</option>
                                                <option value="Category 56">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Friday Closing</label>
                                            <select name="#" class="nice_Select">
                                                <option value="Category 57">Select option</option>
                                                <option value="Category 58">amenity name 1</option>
                                                <option value="Category 59">amenity name 2</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close"> Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content Seven -->
                        <div role="tabpanel" class="tab-pane" id="Contact">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Website address</label>
                                            <input class="input_form" name="input_form6" placeholder="Enter Website address">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Email address</label>
                                            <input class="input_form" name="input_form7" placeholder="Enter Email address">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Phone Number</label>
                                            <input class="input_form" name="input_form8" placeholder="Enter phone number">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Facebook</label>
                                            <input class="input_form" name="input_form9" placeholder="facebook.com/user">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Twitter</label>
                                            <input class="input_form" name="input_form10" placeholder="twitter.com/user">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Linkedin</label>
                                            <input class="input_form" name="input_form11" placeholder="linkedin.com/user">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close"> Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content Seven -->
                        <div role="tabpanel" class="tab-pane" id="Type">
                            <div class="modal-body">
                                <!-- check Mark -->
                                <div class="row mb-20">
                                    <div class="col-lg-6">
                                        <div class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
                                            <div class="check-marks">
                                                <input type="checkbox" id="check11" name="check11" value="check11">
                                                <label class="label-style2" for="check11">General</label>
                                            </div>
                                            <div class="menu-title">
                                                <a href="#" class="btn_round">Preview</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
                                            <div class="check-marks">
                                                <input type="checkbox" id="check22" name="check22" value="check22">
                                                <label class="label-style2" for="check22">Hotel</label>
                                            </div>
                                            <div class="menu-title">
                                                <a href="#" class="btn_round">Preview</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
                                            <div class="check-marks">
                                                <input type="checkbox" id="check33" name="check33" value="check33">
                                                <label class="label-style2" for="check33">Shop</label>
                                            </div>
                                            <div class="menu-title">
                                                <a href="#" class="btn_round">Preview</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
                                            <div class="check-marks">
                                                <input type="checkbox" id="check44" name="check44" value="check44">
                                                <label class="label-style2" for="check44">Restaurant</label>
                                            </div>
                                            <div class="menu-title">
                                                <a href="#" class="btn_round">Preview</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
                                            <div class="check-marks">
                                                <input type="checkbox" id="check55" name="check55" value="check55">
                                                <label class="label-style2" for="check55">Shop</label>
                                            </div>
                                            <div class="menu-title">
                                                <a href="#" class="btn_round">Preview</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- form -->
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Menu name</label>
                                            <input class="input_form" name="input_form12" placeholder="Menu 01">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input_wrap">
                                            <label for="#">Menu price</label>
                                            <input class="input_form" name="input_form13" placeholder="$100.00">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="input_wrap">
                                            <!-- Tag -->
                                            <div class="single-tag">
                                                <label >Items (Press Enter After Entering Every Variant)</label>
                                                <div class="bootstrap-tags_input">
                                                    <input class="tag-fiels" type="text" name="tag" value="Select Image" data-role="tagsinput"/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="input_wrap">
                                            <label for="#">Upload menu image</label>
                                            <div class="file_upload">
                                                <div class="form-group">
                                                    <input type="file" name="file20" id="file20" class="input-file">
                                                    <label for="file20" class=" js-labelFile">
                                                        <span class="btn btn_file_upload">select image</span>
                                                        <span class="js-fileName"></span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close"> Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content Seven -->
                        <div role="tabpanel" class="tab-pane" id="Finish">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="finish-Listing text-center">
                                            <svg class="mb-30 mt-45"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="36px" height="36px">
                                                <path fill-rule="evenodd"  fill="rgb(11, 210, 7)"
                                                d="M18.000,0.000 C27.941,0.000 36.000,8.059 36.000,18.000 C36.000,27.941 27.941,36.000 18.000,36.000 C8.059,36.000 0.000,27.941 0.000,18.000 C0.000,8.059 8.059,0.000 18.000,0.000 Z"/>
                                                <text kerning="auto" font-family="Myriad Pro" fill="rgb(0, 0, 0)" font-size="14px" x="12px" y="25.032px"><tspan font-size="14px" font-family="themify" fill="#FFFFFF">&#58956;</tspan></text>
                                            </svg>
                                            <h3>Thanks!</h3>
                                            <p>You Are Almost There. Please Check If You Have Provided All The Necessary Things.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close"> Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                    </div>
            </div>      
        </div>
    </div>
    <!-- End Modal -->

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