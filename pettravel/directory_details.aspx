<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="directory_details.aspx.cs"
    Inherits="pettravel.directory_details" %>
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
        <link href="assets/css/nice-select.css" rel="stylesheet" />
        <link rel="stylesheet" href="assets/css/tagsinput.css">
        <link rel="stylesheet" href="assets/css/style.css">
    </head>

    <body>
        <form id="form1" runat="server" method="post">
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
                                                <ul class="submenu">
                                                    
                                            <li><a href="blog.aspx">收藏店家</a></li>
                                            <li><a href="blog_details.aspx">店家資訊</a></li>
                                            <li><a href="elements.aspx">簡介</a></li>
                                            <li><a href="contact.aspx">查看地圖</a></li>
                                            
                                                    <li><a href="elements.aspx">行程表</a></li>
                                                </ul>
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
                                            <!--<li>
                                        <div class="header-right-btn ml-15">
                                            
                                            <a href="#" data-toggle="modal" data-target="#addcategory" class="header-btn">個人/業者資訊</a>
                                        </div>
                                    </li>-->
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
                <!--? Hero Area Start-->
                <div class="slider-area slider-bg2 hero-overly4">
                    <div class="single-slider slider-height3 d-flex align-items-end">
                        <div class="container">
                            <div class="directory-details-head">
                                <section class="wantToWork-area">
                                    <div class="wants-wrapper w-padding3">
                                        <div class="row align-items-center justify-content-between">
                                            <div class="col-xl-8 col-lg-6">
                                                <div class="details-cap d-flex">
                                                    <div class="icon">
                                                        <asp:Image ID="type" runat="server" ImageUrl="~/pic/hotel.jpg"
                                                            Height="61px" Width="77px" />
                                                    </div>
                                                    <div class="properties__caption">
                                                        <h3>
                                                            <asp:Label ID="type1" runat="server"></asp:Label>
                                                        </h3>
                                                        <p>
                                                            <asp:Label ID="type2" runat="server"></asp:Label>
                                                        </p>
                                                        <div class="img-text">
                                                            <span class="header-btn">
                                                                <asp:LinkButton ID="website" runat="server"
                                                                    OnClick="website_Click1" BackColor="#EC3472">官方網站</asp:LinkButton>
                                                            </span>&nbsp;&nbsp;
                                                            <span class="header-btn" style="cursor:text;background-color:#ec3472">Open Now</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-4 col-lg-6">
                                                <br />
                                                <br />
                                                <div>
                                                    <asp:Label ID="a" runat="server" Text="電話 : " ForeColor="White"
                                                        Font-Size="12px"></asp:Label>
                                                    <asp:Label ID="phone" runat="server" ForeColor="White"
                                                        Font-Size="12px"></asp:Label><br />
                                                </div>
                                                <div>
                                                    <asp:Label ID="b" runat="server" Text="地址 : " ForeColor="White"
                                                        Font-Size="12px"></asp:Label>
                                                    <asp:Label ID="address" runat="server" ForeColor="White"
                                                        Font-Size="12px"></asp:Label><br />
                                                </div>
                                                <div>
                                                    <asp:Label ID="c" runat="server" ForeColor="White" Font-Size="12px">
                                                    </asp:Label><br />
                                                </div>
                                                <div>
                                                    <asp:Label ID="opentime" runat="server" ForeColor="White"
                                                        Font-Size="12px"></asp:Label><br />
                                                </div>
                                                <div>
                                                    <asp:Label ID="remarks" runat="server" ForeColor="White"
                                                        Font-Size="12px">
                                                    </asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Directory Details start -->
                <div class="directory-details pt-padding">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8">
                                <div class="small-tittle mb-20">
                                    <h2><b style="color:red;">介紹</b></h2>
                                </div>
                                <div class="directory-cap mb-40">
                                    <asp:Label ID="introduce" runat="server"></asp:Label>
                                </div>
                                <div class="small-tittle mb-20">
                                    <h2><b style="color:red;">服務設施</b></h2>
                                </div>
                                <div class="directory-cap mb-40">
                                    <asp:Label ID="service" runat="server"></asp:Label>
                                </div>
                                <div class="small-tittle mb-20">
                                    <h2><b style="color:red;">須知</b></h2>
                                </div>
                                <div class="directory-cap mb-40">
                                    <asp:Label ID="notice" runat="server"></asp:Label>
                                </div>
                                <div class="small-tittle mb-20">
                                    <h2><b style="color:red" ;>照片</b></h2>
                                </div>
                                <div class="gallery-img">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                            <asp:Image ID="Image1" runat="server" CssClass="mb-30" Width="330"
                                                Height="232" style="border-radius:5%;" />
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                            <asp:Image ID="Image2" runat="server" CssClass="mb-30" Width="330"
                                                Height="232" style="border-radius:5%;" />
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                            <asp:Image ID="Image3" runat="server" CssClass="mb-30" Height="232"
                                                Width="330" style="border-radius:5%;" />
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-6">
                                            <asp:Image ID="Image4" runat="server" CssClass="mb-30" Height="232"
                                                Width="330" style="border-radius:5%;" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                        <!--       
                        <div class="blog-author">
 <div class="media align-items-center">
  <img src="assets/img/blog/author.png" alt="">
  <div class="media-body">
   <a href="#">
    <h4>Harvard milan</h4>
  </a>
  <p>Second divided from form fish beast made. Every of seas all gathered use saying you're, he
  our dominion twon Second divided from</p>
</div>
</div> 
</div>-->
                        <div class="comments-area" style='position:relative; left:80px'>
                            <h2><b style="color:red;font-size:xx-large">評論區</b></h2>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CellPadding="10" GridLines="None" onrowcommand="GridView1_RowCommand">
                                         <Columns>
                                             <asp:TemplateField HeaderText="編號" ControlStyle-ForeColor="Black" FooterStyle-ForeColor="Black" HeaderStyle-ForeColor="Black" ItemStyle-ForeColor="Black">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1%>
                                                </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="標題" SortExpression="header" ControlStyle-ForeColor="Red" FooterStyle-ForeColor="Black" HeaderStyle-ForeColor="Black" ItemStyle-ForeColor="Black">
                                                    <EditItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text=' <%# Eval("header") %>
                            '></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server"
                                    NavigateUrl='<%#"mainmsg.aspx?id="+Eval("id") %>' ForeColor="#cc33ff"
                                    Text='<%# Bind("header") %>'></asp:HyperLink>
                            </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="name" HeaderText="暱稱" SortExpression="name"
                                ControlStyle-ForeColor="Black" FooterStyle-ForeColor="Black"
                                HeaderStyle-ForeColor="Black" ItemStyle-ForeColor="Black">
                                <ControlStyle ForeColor="Black" />
                                <FooterStyle ForeColor="Black" />
                                <HeaderStyle ForeColor="Black" />
                                <ItemStyle ForeColor="Black" />
                            </asp:BoundField>
                            <asp:BoundField DataField="main" HeaderText="留言" SortExpression="main"
                                ControlStyle-ForeColor="Black" FooterStyle-ForeColor="Black"
                                HeaderStyle-ForeColor="Black" ItemStyle-ForeColor="Black">
                            </asp:BoundField>
                            <asp:BoundField DataField="initdate" HeaderText="日期" SortExpression="initdate"
                                ControlStyle-ForeColor="Black" FooterStyle-ForeColor="Black"
                                HeaderStyle-ForeColor="Black" ItemStyle-ForeColor="Black">
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="回應" ControlStyle-ForeColor="Black"
                                FooterStyle-ForeColor="Black" HeaderStyle-ForeColor="Black" ItemStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <asp:Label ID="replycount" runat="server" Text='<%# Eval("replycount") %>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="回覆" ControlStyle-ForeColor="LightGreen"
                                HeaderStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"
                                        CommandName="replyname" CommandArgument="<%# Container.DataItemIndex + 1 %>">回覆
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            </Columns>
                            </asp:GridView>
                            <br />
                            <br />
                            <asp:LinkButton class="header-btn" ID="LinkButton1" runat="server" ForeColor="Red"
                                OnClick="LinkButton1_Click1" style="position:relative; left:500px" BackColor="#EC3472">我要留言</asp:LinkButton>
                        </div>
                        <div id="lvmsg2" runat="server">
                            <asp:Label ID="Label3" runat="server" Text="標題: " Font-Size="16" ForeColor="#00ffcc">
                            </asp:Label>
                            <asp:TextBox ID="header2" runat="server" Height="27px" Width="241px" required=""
                                aria-required="true" oninput="setCustomValidity('');"
                                oninvalid="setCustomValidity('記得填寫標題唷!!!')"></asp:TextBox><br /><br />
                            <asp:Label ID="Label2" runat="server" Text="暱稱: " Font-Size="16" ForeColor="#00ffcc">
                            </asp:Label>
                            <asp:TextBox ID="name2" runat="server" Height="27px" Width="241px" required=""
                                aria-required="true" oninput="setCustomValidity('');"
                                oninvalid="setCustomValidity('記得填寫名字唷!!!')"></asp:TextBox><br /><br />
                            <asp:Label ID="Label4" runat="server" Text="內容: " Font-Size="16" ForeColor="#00ffcc">
                            </asp:Label><br />
                            <asp:TextBox ID="main2" runat="server" Height="200px" TextMode="MultiLine" Width="300px"
                                required="" aria-required="true" oninput="setCustomValidity('');"
                                oninvalid="setCustomValidity('記得填寫留言唷!!!')"></asp:TextBox>
                            <br />
                            <br />
                            <p>
                                &nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" Text="確認留言" OnClick="Button1_Click"
                                    BackColor="White" BorderColor="White" BorderStyle="None" forecolor="Purple"
                                    Height="55px" Width="130px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <button onclick="reset()"
                                    style="color:pink;background-color:white;border:none;height:55px;width:130px">清除內容</button>
                            </p>
                        </div>
                        <script type="text/javascript">
                            function reset() {
                                document.getElementById("header2").value = "";
                                document.getElementById("name2").value = "";
                                document.getElementById("main2").value = "";
                            }
                        </script>
                        <div id="replymsg" runat="server">
                            <!--
                            <asp:Label ID="Label5" runat="server" Text="標題: " Font-Size="16" ForeColor="#00ffcc" required=""
                                aria-required="true" oninput="setCustomValidity('');"
                                oninvalid="setCustomValidity('記得填寫標題唷!!!')"></asp:Label>
                            <asp:TextBox ID="header3" runat="server" ></asp:TextBox><br />
                            <br />
                            -->
                            <asp:Label ID="Label6" runat="server" Text="暱稱: " Font-Size="16" ForeColor="#00ffcc"
                                required="" aria-required="true" oninput="setCustomValidity('');"
                                oninvalid="setCustomValidity('記得填寫暱稱唷!!!')"></asp:Label>
                            <asp:TextBox ID="name3" runat="server"></asp:TextBox><br />
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="內容: " Font-Size="16" ForeColor="#00ffcc"
                                required="" aria-required="true" oninput="setCustomValidity('');"
                                oninvalid="setCustomValidity('記得填寫內容唷!!!')"></asp:Label>
                            <br />
                            <asp:TextBox ID="main3" runat="server" Height="200px" TextMode="MultiLine" Width="300px">
                            </asp:TextBox>
                            <br />
                            <br />
                            <p>
                                &nbsp;&nbsp;
                                <asp:Button ID="confirm" runat="server" Text="確定回覆" forecolor="Purple" Height="55px"
                                    Width="130px" BorderColor="White" BorderStyle="None" BackColor="White"
                                    OnClick="confirm_Click1" />&nbsp;&nbsp;&nbsp;&nbsp;
                                <button onclick="reset1()"
                                    style="color:pink;background-color:white;border:none;height:55px;width:130px">清除內容</button>
                            </p>
                        </div>
                        <script type="text/javascript">
                            function reset1() {
                                document.getElementById("name3").value = "";
                                document.getElementById("main3").value = "";
                            }
                        </script>
                        <!--
                        <div id="lvmsg" runat="server">
                            <form id="lvmsg1" action="#" method="POST">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-box user-icon mb-15">
                                            <label for="header">標題 : </label>
                                            <input type="text" id="header5" name="header5" placeholder="您的標題">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-box email-icon mb-15">
                                            <label for="name">暱稱 : </label>
                                            <input type="text" id="name5" name="name5" placeholder="您的暱稱">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-box message-icon mb-15">
                                            <label for="main">內容 : </label>
                                            <textarea name="main5" id="main5" placeholder="請填寫內容"></textarea>
                                        </div>
                                        -->
                        <!--<input type="button" name="submit" value="送出" onclick="formvalue();" />
                                        <asp:LinkButton id="WTFIamCrazy" runat="server" ForeColor="Red" >確定留言</asp:LinkButton>
                                    </div>
                                </div>
                            </form> 
                        </div>
                        -->

                        <!--
                            <script type="text/javascript">
                                function formValue()
                                {
                                    const value1 = document.getElementById("header5");
                                    const header = value1.value;
                                    const value2 = document.getElementById("name5");
                                    const name = value2.value;
                                    const value3 = document.getElementById("main5");
                                    const main = value3.value;
                                    const session="<%=Session["id"]%>"
                                    var conn = new ActiveXObject("ADODB.Connection");
                                    conn.Open("Provider=SQLOLEDB.1; Data Source=(localdb)\MSSQLLocalDB; User ID=bonbonbon; "+ "Password=bonbonboun; Initial Catalog=PetTravel;");
                                    var rs = new ActiveXObject("ADODB.RecordSet");
                                    var sql = "insert into MessageBoard(sid,header,name,main) value(session,header,name,main)";
                                    rs.Open(sql, conn);
                                    rs.Close();
                                    rs = null;
                                    conn.Close();
                                    conn = null;
                                }                                
                            </script>
                        -->
                        <!--
<div class="comment-form">
                            
 <h4>Leave a Reply</h4>
 <form class="form-contact comment_form" action="#" id="commentForm">
  <div class="row">
   <div class="col-12">
    <div class="form-group">
     <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
     placeholder="Write Comment"></textarea>
   </div>
 </div>
 <div class="col-sm-6">
  <div class="form-group">
   <input class="form-control" name="name" id="name" type="text" placeholder="Name">
 </div>
</div>
<div class="col-sm-6">
  <div class="form-group">
   <input class="form-control" name="email" id="email" type="email" placeholder="Email">
 </div>
</div>
<div class="col-12">
  <div class="form-group">
   <input class="form-control" name="website" id="website" type="text" placeholder="Website">
 </div>
</div>
</div>
<div class="form-group">
 <button type="submit" class="button button-contactForm btn_1 boxed-btn">Post Comment</button>
</div>
</form>
                                 
                    </div>
                        
                        <div class="form-wrapper2 pt-80">
                            <div class="row ">
                                <div class="col-xl-12">
                                    <div class="small-tittle mb-30">
                                        <h2>Write Comment</h2>
                                    </div>
                                </div>
                            </div>
                            <form id="contact-form2" action="#" method="POST" >
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="form-box user-icon mb-15">
                                            <asp:TextBox ID="header" runat="server" Height="54px" Width="186px"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="form-box message-icon mb-15">
                                            <asp:TextBox ID="main" runat="server" Height="283px" Width="448px"></asp:TextBox>
                                        </div>
                                        <asp:Button ID="sendmsg1" runat="server" Text="Send" Width="130px" />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="rewrite1" runat="server" Text="Rewrite" Width="130px"/>
                                    </div>
                                </div>
                            </form>
                            <br />
                              <div class="col-lg-4">
                              <div class="map">
                              <img src="assets/img/gallery/map.png" alt=""/>
                              </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        -->
                        <!-- Directory Details End -->
                        <!--? Popular Locations Start 01-->
                        <!--
        <div class="popular-location section-padding40">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Section Tittle -->
                        <!--     <div class="section-tittle text-center mb-80">
                            <h2>News & Updates</h2>
                            <p>Let's uncover the best places to eat, drink, and shop nearest to you.</p>
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
                                <a href="#" class="location-btn">Tips</a>
                                <ul>
                                    <li>12 March   I   by Alan</li>
                                </ul>
                                <p><a href="blog_details.html">The Best SPA Salons For Your Relaxation</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <div class="single-location mb-30">
                            <div class="location-img">
                                <img src="assets/img/gallery/home-blog2.png" alt="">
                            </div>
                            <div class="location-details">
                                <a href="#" class="location-btn">Tips</a>
                                <ul>
                                    <li>12 March   I   by Alan</li>
                                </ul>
                                <p><a href="blog_details.html">The Best SPA Salons For Your Relaxation</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
                        <!-- Popular Locations End -->
                        <!-- subscribe Area Start-->
                        <!--
        <div class="subscribe-area section-bg2" data-background="assets/img/gallery/section_bg02.png">
            <div class="container">
                <div class="row justify-content-xl-end justify-content-md-start">
                    <div class="col-lg-5  col-md-8  ">-->
                        <!-- Section Tittle -->
                        <!--
                        <div class="section-tittle section-tittle2 mb-20">
                            <h2>Let’s Stay In Touch</h2>
                            <p>Join Listio’s newsletter, so that we reach out to<br> you with our best news and offers.</p>
                        </div>
                        <div class="subscribe-now">
                            <input type="text" placeholder="Enter your email">
                            <button class="submit-btn" href="#" class="submit-btn ">Subscribe</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        -->
                        <!-- subscribe Area End-->
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
                                            <a href="index.aspx"><img src="assets/img/logo/logo2_footer.png"
                                                    alt="Logo Here" width="130" height="130"></a>
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
                                            <script>document.write(new Date().getFullYear());</script> 毛起來玩 | 照片來源：Via
                                            Su
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
                                    <a class="btn_5 small_btn active" href="#Basic" aria-controls="Basic" role="tab"
                                        data-toggle="tab" aria-expanded="true">Basic</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Amenities" aria-controls="Amenities" role="tab"
                                        data-toggle="tab" aria-expanded="false">Amenities</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Location" aria-controls="Location" role="tab"
                                        data-toggle="tab" aria-expanded="false">Location</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Media" aria-controls="Media" role="tab"
                                        data-toggle="tab" aria-expanded="false">Media</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#SEO" aria-controls="SEO" role="tab"
                                        data-toggle="tab" aria-expanded="false">SEO</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Schedule" aria-controls="Schedule" role="tab"
                                        data-toggle="tab" aria-expanded="false">Schedule</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Contact" aria-controls="Contact" role="tab"
                                        data-toggle="tab" aria-expanded="false">Contact</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Type" aria-controls="Type" role="tab"
                                        data-toggle="tab" aria-expanded="false">Type</a>
                                </li>
                                <li>
                                    <a class="btn_5 small_btn" href="#Finish" aria-controls="Finish" role="tab"
                                        data-toggle="tab" aria-expanded="false">Finish</a>
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
                                            <input class="input_form" name="input_form1"
                                                placeholder="Enter amenity name">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Description</label>
                                            <textarea name="amenity-name"
                                                placeholder="Enter amenity name"></textarea>
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
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close">
                                    Cancel</button>
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
                                                <label class="label-style2" for="check04">Wheelchair
                                                    Accessible</label>
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
                                                <label class="label-style2" for="check002">BBQ
                                                    Facilities</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check003" name="check003" value="check003">
                                                <label class="label-style2" for="check003">Pet Allowed</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check004" name="check004" value="check004">
                                                <label class="label-style2" for="check004">Wheelchair
                                                    Accessible</label>
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
                                                <label class="label-style2" for="check102">BBQ
                                                    Facilities</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check103" name="check103" value="check103">
                                                <label class="label-style2" for="check103">Pet Allowed</label>
                                            </div>
                                            <div class="check-marks mb-15">
                                                <input type="checkbox" id="check104" name="check104" value="check104">
                                                <label class="label-style2" for="check104">Wheelchair
                                                    Accessible</label>
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
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close">
                                    Cancel</button>
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
                                            <textarea name="address" placeholder="Write address here"></textarea>
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
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close">
                                    Cancel</button>
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
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close">
                                    Cancel</button>
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
                                                <label>Tags</label>
                                                <div class="bootstrap-tags_input bootstrap-tags_input3">
                                                    <input class="tag-fiels" type="text" name="tag"
                                                        value="Tag 01, Tag 02" data-role="tagsinput" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="input_wrap input_wrap_tag">
                                            <!-- Tag -->
                                            <div class="single-tag">
                                                <label>SEO Meta Tags</label>
                                                <div class="bootstrap-tags_input bootstrap-tags_input3">
                                                    <input class="tag-fiels" type="text" name="tag"
                                                        value="Tag 01, Tag 02" data-role="tagsinput" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close">
                                    Cancel</button>
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
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close">
                                    Cancel</button>
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
                                            <input class="input_form" name="input_form6"
                                                placeholder="Enter Website address">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Email address</label>
                                            <input class="input_form" name="input_form7"
                                                placeholder="Enter Email address">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Phone Number</label>
                                            <input class="input_form" name="input_form8"
                                                placeholder="Enter phone number">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Facebook</label>
                                            <input class="input_F" name="input_form9" placeholder="facebook.com/user">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Twitter</label>
                                            <input class="input_form" name="input_form10"
                                                placeholder="twitter.com/user">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="input_wrap">
                                            <label for="#">Linkedin</label>
                                            <input class="input_form" name="input_form11"
                                                placeholder="linkedin.com/user">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close">
                                    Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content Seven -->
                        <div role="tabpanel" class="tab-pane" id="Type">
                            <div class="modal-body">
                                <!-- check Mark -->
                                <div class="row mb-20">
                                    <div class="col-lg-6">
                                        <div
                                            class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
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
                                        <div
                                            class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
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
                                        <div
                                            class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
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
                                        <div
                                            class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
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
                                        <div
                                            class="single-box single-roll  flex-wrap d-flex justify-content-between mb-15">
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
                                                <label>Items (Press Enter After Entering Every Variant)</label>
                                                <div class="bootstrap-tags_input">
                                                    <input class="tag-fiels" type="text" name="tag" value="Select Image"
                                                        data-role="tagsinput" />
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
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close">
                                    Cancel</button>
                                <a href="#" class="btn_1 m-0">Submit Listing</a>
                            </div>
                        </div>
                        <!-- Tab Content Seven -->
                        <div role="tabpanel" class="tab-pane" id="Finish">
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <div class="finish-Listing text-center">
                                            <svg class="mb-30 mt-45" xmlns="http://www.w3.org/2000/svg"
                                                xmlns:xlink="http://www.w3.org/1999/xlink" width="36px" height="36px">
                                                <path fill-rule="evenodd" fill="rgb(11, 210, 7)"
                                                    d="M18.000,0.000 C27.941,0.000 36.000,8.059 36.000,18.000 C36.000,27.941 27.941,36.000 18.000,36.000 C8.059,36.000 0.000,27.941 0.000,18.000 C0.000,8.059 8.059,0.000 18.000,0.000 Z" />
                                                <text kerning="auto" font-family="Myriad Pro" fill="rgb(0, 0, 0)"
                                                    font-size="14px" x="12px" y="25.032px">
                                                    <tspan font-size="14px" font-family="themify" fill="#FFFFFF">
                                                        &#58956;</tspan>
                                                </text>
                                            </svg>
                                            <h3>Thanks!</h3>
                                            <p>You Are Almost There. Please Check If You Have Provided All The
                                                Necessary Things.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer modal_btn">
                                <button type="button" class="close white_btn2" data-dismiss="modal" aria-label="Close">
                                    Cancel</button>
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