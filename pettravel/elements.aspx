<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="elements.aspx.cs" Inherits="pettravel.elements" %>

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
    </head>

    <body>
        <!-- ? Preloader Start -->
        <form id="form1" runat="server">
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
                                    <asp:Label ID="title_lb" runat="server" Text="" Font-Names="微軟正黑體" ForeColor="White"
                                        Font-Size="X-Large" Height="50px" Width="540px"></asp:Label>
                                </div>
                                <!-- logo -->
                                <div class="logo">
                                    <a href="index.aspx"><img src="assets/img/logo/logo.png" alt="" width="130"
                                            height="130"></a>
                                </div>
                                <!-- Main-menu -->
                                <div class="main-menu f-right d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="index.aspx">首頁</a></li>
                                            <li><a href="listing.aspx">探索</a></li>
                                            <!--<li><a href="elements.aspx">行程</a>
                                                
                                            <li><a href="blog.aspx">收藏店家</a></li>
                                            <li><a href="blog_details.aspx">店家資訊</a></li>
                                            <li><a href="elements.aspx">簡介</a></li>
                                            <li><a href="contact.aspx">查看地圖</a></li>
                                            
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
                                <!-- left Btn -->
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
                <div class="hero-area slider-bg3  slider-height2 d-flex align-items-center hero-overly">
                    <div class="container">
                        <div class="row">
                            <div class="col-xl-10 col-lg-10">
                                <!-- Hero Caption -->
                                <div class="hero__caption2">
                                    <h2>行程表</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Hero end -->

                <!--<section class="sample-text-area">
			<div class="container box_1170">
				<h3 class="text-heading">Text Sample</h3>
				<p class="sample-text">
					Every avid independent filmmaker has <b>Bold</b> about making that <i>Italic</i> interest documentary,
					or short
					film to show off their creative prowess. Many have great ideas and want to “wow”
					the<sup>Superscript</sup> scene,
					or video renters with their big project. But once you have the<sub>Subscript</sub> “in the can” (no easy
					feat), how
					do you move from a <del>Strike</del> through of master DVDs with the <u>“Underline”</u> marked
					hand-written title
					inside a secondhand CD case, to a pile of cardboard boxes full of shiny new, retail-ready DVDs, with UPC
					barcodes
					and polywrap sitting on your doorstep? You need to create eye-popping artwork and have your project
					replicated.
					Using a reputable full service DVD Replication company like PacificDisc, Inc. to partner with is
					certainly a
					helpful option to ensure a professional end result, but to help with your DVD replication project, here
					are 4 easy
					steps to follow for good DVD replication results:
					
				</p>
			</div>
		</section>
		<!-- End Sample Area -->
                <!--? Start Button -->
                <!--<section class="button-area">
			<div class="container box_1170 border-top-generic">
				<h3 class="text-heading">Sample Buttons</h3>
				<div class="button-group-area">
					<a href="#" class="genric-btn default">Default</a>
					<a href="#" class="genric-btn primary">Primary</a>
					<a href="#" class="genric-btn success">Success</a>
					<a href="#" class="genric-btn info">Info</a>
					<a href="#" class="genric-btn warning">Warning</a>
					<a href="#" class="genric-btn danger">Danger</a>
					<a href="#" class="genric-btn link">Link</a>
					<a href="#" class="genric-btn disable">Disable</a>
				</div>
				<div class="button-group-area mt-10">
					<a href="#" class="genric-btn default-border">Default</a>
					<a href="#" class="genric-btn primary-border">Primary</a>
					<a href="#" class="genric-btn success-border">Success</a>
					<a href="#" class="genric-btn info-border">Info</a>
					<a href="#" class="genric-btn warning-border">Warning</a>
					<a href="#" class="genric-btn danger-border">Danger</a>
					<a href="#" class="genric-btn link-border">Link</a>
					<a href="#" class="genric-btn disable">Disable</a>
				</div>
				<div class="button-group-area mt-40">
					<a href="#" class="genric-btn default radius">Default</a>
					<a href="#" class="genric-btn primary radius">Primary</a>
					<a href="#" class="genric-btn success radius">Success</a>
					<a href="#" class="genric-btn info radius">Info</a>
					<a href="#" class="genric-btn warning radius">Warning</a>
					<a href="#" class="genric-btn danger radius">Danger</a>
					<a href="#" class="genric-btn link radius">Link</a>
					<a href="#" class="genric-btn disable radius">Disable</a>
				</div>
				<div class="button-group-area mt-10">
					<a href="#" class="genric-btn default-border radius">Default</a>
					<a href="#" class="genric-btn primary-border radius">Primary</a>
					<a href="#" class="genric-btn success-border radius">Success</a>
					<a href="#" class="genric-btn info-border radius">Info</a>
					<a href="#" class="genric-btn warning-border radius">Warning</a>
					<a href="#" class="genric-btn danger-border radius">Danger</a>
					<a href="#" class="genric-btn link-border radius">Link</a>
					<a href="#" class="genric-btn disable radius">Disable</a>
				</div>
				<div class="button-group-area mt-40">
					<a href="#" class="genric-btn default circle">Default</a>
					<a href="#" class="genric-btn primary circle">Primary</a>
					<a href="#" class="genric-btn success circle">Success</a>
					<a href="#" class="genric-btn info circle">Info</a>
					<a href="#" class="genric-btn warning circle">Warning</a>
					<a href="#" class="genric-btn danger circle">Danger</a>
					<a href="#" class="genric-btn link circle">Link</a>
					<a href="#" class="genric-btn disable circle">Disable</a>
				</div>
				<div class="button-group-area mt-10">
					<a href="#" class="genric-btn default-border circle">Default</a>
					<a href="#" class="genric-btn primary-border circle">Primary</a>
					<a href="#" class="genric-btn success-border circle">Success</a>
					<a href="#" class="genric-btn info-border circle">Info</a>
					<a href="#" class="genric-btn warning-border circle">Warning</a>
					<a href="#" class="genric-btn danger-border circle">Danger</a>
					<a href="#" class="genric-btn link-border circle">Link</a>
					<a href="#" class="genric-btn disable circle">Disable</a>
				</div>
				<div class="button-group-area mt-40">
					<a href="#" class="genric-btn default circle arrow">Default<span class="lnr lnr-arrow-right"></span></a>
					<a href="#" class="genric-btn primary circle arrow">Primary<span class="lnr lnr-arrow-right"></span></a>
					<a href="#" class="genric-btn success circle arrow">Success<span class="lnr lnr-arrow-right"></span></a>
					<a href="#" class="genric-btn info circle arrow">Info<span class="lnr lnr-arrow-right"></span></a>
					<a href="#" class="genric-btn warning circle arrow">Warning<span class="lnr lnr-arrow-right"></span></a>
					<a href="#" class="genric-btn danger circle arrow">Danger<span class="lnr lnr-arrow-right"></span></a>
				</div>
				<div class="button-group-area mt-10">
					<a href="#" class="genric-btn default-border circle arrow">Default<span
						class="lnr lnr-arrow-right"></span></a>
						<a href="#" class="genric-btn primary-border circle arrow">Primary<span
							class="lnr lnr-arrow-right"></span></a>
							<a href="#" class="genric-btn success-border circle arrow">Success<span
								class="lnr lnr-arrow-right"></span></a>
								<a href="#" class="genric-btn info-border circle arrow">Info<span
									class="lnr lnr-arrow-right"></span></a>
									<a href="#" class="genric-btn warning-border circle arrow">Warning<span
										class="lnr lnr-arrow-right"></span></a>
										<a href="#" class="genric-btn danger-border circle arrow">Danger<span
											class="lnr lnr-arrow-right"></span></a>
										</div>
										<div class="button-group-area mt-40">
											<a href="#" class="genric-btn primary e-large">Extra Large</a>
											<a href="#" class="genric-btn success large">Large</a>
											<a href="#" class="genric-btn primary">Default</a>
											<a href="#" class="genric-btn success medium">Medium</a>
											<a href="#" class="genric-btn primary small">Small</a>
										</div>
										<div class="button-group-area mt-10">
											<a href="#" class="genric-btn primary-border e-large">Extra Large</a>
											<a href="#" class="genric-btn success-border large">Large</a>
											<a href="#" class="genric-btn primary-border">Default</a>
											<a href="#" class="genric-btn success-border medium">Medium</a>
											<a href="#" class="genric-btn primary-border small">Small</a>
										</div>
									</div>
								</section>
								<!-- End Button -->
                <!--? Start Align Area -->
                <div class="whole-wrap">
                    <div class="container box_1170">
                        <!--<div class="section-top-border">
											<h3 class="mb-30">Left Aligned</h3>
											<div class="row">
												<div class="col-md-3">
													<img src="assets/img/elements/d.jpg" alt="" class="img-fluid">
												</div>
												<div class="col-md-9 mt-sm-20">
													<p>Recently, the US Federal government banned online casinos from operating in America by making
														it illegal to
														transfer money to them through any US bank or payment system. As a result of this law, most
														of the popular
														online casino networks such as Party Gaming and PlayTech left the United States. Overnight,
														online casino
														players found themselves being chased by the Federal government. But, after a fortnight, the
														online casino
														industry came up with a solution and new online casinos started taking root. These began to
														operate under a
														different business umbrella, and by doing that, rendered the transfer of money to and from
														them legal. A major
														part of this was enlisting electronic banking systems that would accept this new
														clarification and start doing
														business with me. Listed in this article are the electronic banking systems that accept
														players from the United
													States that wish to play in online casinos.</p>
												</div>
											</div>
										</div>
										<div class="section-top-border text-right">
											<h3 class="mb-30">Right Aligned</h3>
											<div class="row">
												<div class="col-md-9">
													<p class="text-right">Over time, even the most sophisticated, memory packed computer can begin
														to run slow if we
														don’t do something to prevent it. The reason why has less to do with how computers are made
														and how they age and
														more to do with the way we use them. You see, all of the daily tasks that we do on our PC
														from running programs
														to downloading and deleting software can make our computer sluggish. To keep this from
														happening, you need to
														understand the reasons why your PC is getting slower and do something to keep your PC
														running at its best. You
													can do this through regular maintenance and PC performance optimization programs</p>
													<p class="text-right">Before we discuss all of the things that could be affecting your PC’s
														performance, let’s
													talk a little about what symptoms</p>
												</div>
												<div class="col-md-3">
													<img src="assets/img/elements/d.jpg" alt="" class="img-fluid">
												</div>
											</div>
										</div>-->

                        <div class="section-top-border">
                        <div style="background-color: #FFF; padding:0 12px 12px 12px; text-align:left;">
                            <div style="text-align:center; color:darkviolet" class="trip_viewplan">
                                <!--<font size="8">第一天</font>-->
                                <asp:Label ID="dtitle1" Font-Size="50" runat="server" Text="第一天"></asp:Label>
                            </div>
                            <div style="margin-top:10px;margin-bottom:30px;">
                                <asp:Image ID="Image1" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue"
                                    Font-Size="XX-Large" OnClick="lkbtn1_Click" Font-Names="微軟正黑體"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label1" runat="server" ForeColor="Gray" Font-Size="X-Large" Font-Italic="False" Font-Names="微軟正黑體"></asp:Label><br><br>

                                <asp:Image ID="Image2" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;" />
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Blue"
                                    Font-Size="XX-Large" OnClick="lkbtn2_Click" Font-Names="微軟正黑體"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label2" runat="server" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label><br><br>

                                <asp:Image ID="Image3" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;" />
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton3" runat="server" ForeColor="Blue"
                                    Font-Size="XX-Large" OnClick="lkbtn3_Click" Font-Names="微軟正黑體"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label3" runat="server" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label><br><br>

                                <asp:Image ID="Image4" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;" />
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton4" runat="server" ForeColor="Blue"
                                    Font-Size="XX-Large" OnClick="lkbtn4_Click" Font-Names="微軟正黑體" ></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label4" runat="server" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large"></asp:Label><br><br>

                                <asp:Image ID="Image5" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;" />
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton5" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn5_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label5" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image6" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;" />
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton6" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn6_Click" ></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label6" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                            </div>
                            <div style="text-align:center; color:darkviolet" class="trip_viewplan">
                                <!--<font size="8">第二天</font>-->
								<asp:Label ID="dtitle2" Font-Size="50" runat="server" Text="第二天"></asp:Label>
                            </div>
                            <div style="margin-top:10px;margin-bottom:30px;">
                                <asp:Image ID="Image7" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;" />
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton7" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn7_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label7" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image8" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;" />
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton8" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn8_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label8" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image9" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton9" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn9_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label9" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image10" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton10" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn10_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label10" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image11" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton11" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn11_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label11" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image12" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton12" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn12_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label12" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                            </div>
                            <div style="text-align:center; color:darkviolet" class="trip_viewplan">
                                <!--<font size="8">第三天</font>-->
								<asp:Label ID="dtitle3" Font-Size="50" runat="server" Text="第三天"></asp:Label>
                            </div>
                            <div style="margin-top:10px;margin-bottom:30px;">
                                <asp:Image ID="Image13" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton13" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn13_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label13" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image14" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton14" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn14_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label14" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image15" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton15" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn15_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label15" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image16" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton16" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn16_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label16" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image17" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton17" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn17_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label17" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                                <asp:Image ID="Image18" runat="server" CssClass="mb-30" Width="330" Height="232" style="border-radius:5%;"/>
                                &nbsp&nbsp<asp:LinkButton ID="LinkButton18" runat="server" ForeColor="Blue"
                                    Font-Names="微軟正黑體" Font-Size="XX-Large" OnClick="lkbtn18_Click"></asp:LinkButton>
                                &nbsp&nbsp<asp:Label ID="Label18" runat="server" Text="" ForeColor="Gray" Font-Names="微軟正黑體" Font-Size="X-Large">
                                </asp:Label><br><br>

                            </div>
                        </div>


                        <!--<div class="row">
                                                <asp:Table ID="Table1" runat="server"
													CellPadding="10"
													GridLines="Both"
													HorizontalAlign="Center">
													<asp:TableRow>
														<asp:TableCell>
															Row 0, Col 0
														</asp:TableCell>
														<asp:TableCell>
															Row 0, Col 1
														</asp:TableCell>
													</asp:TableRow>
													<asp:TableRow>
														<asp:TableCell>
															Row 1, Col 0
														</asp:TableCell>
														<asp:TableCell>
															Row 1, Col 1
														</asp:TableCell>
													</asp:TableRow>
                                                </asp:Table>-->
                        <!--<div class="col-md-4">
													<div class="single-defination">
														<h4 class="mb-20">Definition 01</h4>
														<p>Recently, the US Federal government banned online casinos from operating in America by
															making it illegal to
															transfer money to them through any US bank or payment system. As a result of this law,
															most of the popular
														online casino networks</p>
													</div>
												</div>
												<div class="col-md-4">
													<div class="single-defination">
														<h4 class="mb-20">Definition 02</h4>
														<p>Recently, the US Federal government banned online casinos from operating in America by
															making it illegal to
															transfer money to them through any US bank or payment system. As a result of this law,
															most of the popular
														online casino networks</p>
													</div>
												</div>
												<div class="col-md-4">
													<div class="single-defination">
														<h4 class="mb-20">Definition 03</h4>
														<p>Recently, the US Federal government banned online casinos from operating in America by
															making it illegal to
															transfer money to them through any US bank or payment system. As a result of this law,
															most of the popular
														online casino networks</p>
													</div>
												</div>-->
                    </div>
                </div>
					</div>
                <!--<div class="section-top-border">
											<h3 class="mb-30">Block Quotes</h3>
											<div class="row">
												<div class="col-lg-12">
													<blockquote class="generic-blockquote">
														“Recently, the US Federal government banned online casinos from operating in America by
														making it illegal to
														transfer money to them through any US bank or payment system. As a result of this law, most
														of the popular
														online casino networks such as Party Gaming and PlayTech left the United States. Overnight,
														online casino
														players found themselves being chased by the Federal government. But, after a fortnight, the
														online casino
														industry came up with a solution and new online casinos started taking root. These began to
														operate under a
														different business umbrella, and by doing that, rendered the transfer of money to and from
														them legal. A major
														part of this was enlisting electronic banking systems that would accept this new
														clarification and start doing
														business with me. Listed in this article are the electronic banking”
													</blockquote>
												</div>
											</div>
										</div>
										<div class="section-top-border">
											<h3 class="mb-30">Table</h3>
											<div class="progress-table-wrap">
												<div class="progress-table">
													<div class="table-head">
														<div class="serial">#</div>
														<div class="country">Countries</div>
														<div class="visit">Visits</div>
														<div class="percentage">Percentages</div>
													</div>
													<div class="table-row">
														<div class="serial">01</div>
														<div class="country"> <img src="assets/img/elements/f1.jpg" alt="flag">Canada</div>
														<div class="visit">645032</div>
														<div class="percentage">
															<div class="progress">
																<div class="progress-bar color-1" role="progressbar" style="width: 80%"
																aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
													</div>
													<div class="table-row">
														<div class="serial">02</div>
														<div class="country"> <img src="assets/img/elements/f2.jpg" alt="flag">Canada</div>
														<div class="visit">645032</div>
														<div class="percentage">
															<div class="progress">
																<div class="progress-bar color-2" role="progressbar" style="width: 30%"
																aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
													</div>
													<div class="table-row">
														<div class="serial">03</div>
														<div class="country"> <img src="assets/img/elements/f3.jpg" alt="flag">Canada</div>
														<div class="visit">645032</div>
														<div class="percentage">
															<div class="progress">
																<div class="progress-bar color-3" role="progressbar" style="width: 55%"
																aria-valuenow="55" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
													</div>
													<div class="table-row">
														<div class="serial">04</div>
														<div class="country"> <img src="assets/img/elements/f4.jpg" alt="flag">Canada</div>
														<div class="visit">645032</div>
														<div class="percentage">
															<div class="progress">
																<div class="progress-bar color-4" role="progressbar" style="width: 60%"
																aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
													</div>
													<div class="table-row">
														<div class="serial">05</div>
														<div class="country"> <img src="assets/img/elements/f5.jpg" alt="flag">Canada</div>
														<div class="visit">645032</div>
														<div class="percentage">
															<div class="progress">
																<div class="progress-bar color-5" role="progressbar" style="width: 40%"
																aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
													</div>
													<div class="table-row">
														<div class="serial">06</div>
														<div class="country"> <img src="assets/img/elements/f6.jpg" alt="flag">Canada</div>
														<div class="visit">645032</div>
														<div class="percentage">
															<div class="progress">
																<div class="progress-bar color-6" role="progressbar" style="width: 70%"
																aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
													</div>
													<div class="table-row">
														<div class="serial">07</div>
														<div class="country"> <img src="assets/img/elements/f7.jpg" alt="flag">Canada</div>
														<div class="visit">645032</div>
														<div class="percentage">
															<div class="progress">
																<div class="progress-bar color-7" role="progressbar" style="width: 30%"
																aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
													</div>
													<div class="table-row">
														<div class="serial">08</div>
														<div class="country"> <img src="assets/img/elements/f8.jpg" alt="flag">Canada</div>
														<div class="visit">645032</div>
														<div class="percentage">
															<div class="progress">
																<div class="progress-bar color-8" role="progressbar" style="width: 60%"
																aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="section-top-border">
											<h3>Image Gallery</h3>
											<div class="row gallery-item">
												<div class="col-md-4">
													<a href="assets/img/elements/g1.jpg" class="img-pop-up">
														<div class="single-gallery-image" style="background: url(assets/img/elements/g1.jpg);"></div>
													</a>
												</div>
												<div class="col-md-4">
													<a href="assets/img/elements/g2.jpg" class="img-pop-up">
														<div class="single-gallery-image" style="background: url(assets/img/elements/g2.jpg);"></div>
													</a>
												</div>
												<div class="col-md-4">
													<a href="assets/img/elements/g3.jpg" class="img-pop-up">
														<div class="single-gallery-image" style="background: url(assets/img/elements/g3.jpg);"></div>
													</a>
												</div>
												<div class="col-md-6">
													<a href="assets/img/elements/g4.jpg" class="img-pop-up">
														<div class="single-gallery-image" style="background: url(assets/img/elements/g4.jpg);"></div>
													</a>
												</div>
												<div class="col-md-6">
													<a href="assets/img/elements/g5.jpg" class="img-pop-up">
														<div class="single-gallery-image" style="background: url(assets/img/elements/g5.jpg);"></div>
													</a>
												</div>
												<div class="col-md-4">
													<a href="assets/img/elements/g6.jpg" class="img-pop-up">
														<div class="single-gallery-image" style="background: url(assets/img/elements/g6.jpg);"></div>
													</a>
												</div>
												<div class="col-md-4">
													<a href="assets/img/elements/g7.jpg" class="img-pop-up">
														<div class="single-gallery-image" style="background: url(assets/img/elements/g7.jpg);"></div>
													</a>
												</div>
												<div class="col-md-4">
													<a href="assets/img/elements/g8.jpg" class="img-pop-up">
														<div class="single-gallery-image" style="background: url(assets/img/elements/g8.jpg);"></div>
													</a>
												</div>
											</div>
										</div>
										<div class="section-top-border">
											<div class="row">
												<div class="col-md-4">
													<h3 class="mb-20">Image Gallery</h3>
													<div class="typography">
														<h1>This is header 01</h1>
														<h2>This is header 02</h2>
														<h3>This is header 03</h3>
														<h4>This is header 04</h4>
														<h5>This is header 01</h5>
														<h6>This is header 01</h6>
													</div>
												</div>
												<div class="col-md-4 mt-sm-30">
													<h3 class="mb-20">Unordered List</h3>
													<div class="">
														<ul class="unordered-list">
															<li>Fta Keys</li>
															<li>For Women Only Your Computer Usage</li>
															<li>Facts Why Inkjet Printing Is Very Appealing
																<ul>
																	<li>Addiction When Gambling Becomes
																		<ul>
																			<li>Protective Preventative Maintenance</li>
																		</ul>
																	</li>
																</ul>
															</li>
															<li>Dealing With Technical Support 10 Useful Tips</li>
															<li>Make Myspace Your Best Designed Space</li>
															<li>Cleaning And Organizing Your Computer</li>
														</ul>
													</div>
												</div>
												<div class="col-md-4 mt-sm-30">
													<h3 class="mb-20">Ordered List</h3>
													<div class="">
														<ol class="ordered-list">
															<li><span>Fta Keys</span></li>
															<li><span>For Women Only Your Computer Usage</span></li>
															<li><span>Facts Why Inkjet Printing Is Very Appealing</span>
																<ol class="ordered-list-alpha">
																	<li><span>Addiction When Gambling Becomes</span>
																		<ol class="ordered-list-roman">
																			<li><span>Protective Preventative Maintenance</span></li>
																		</ol>
																	</li>
																</ol>
															</li>
															<li><span>Dealing With Technical Support 10 Useful Tips</span></li>
															<li><span>Make Myspace Your Best Designed Space</span></li>
															<li><span>Cleaning And Organizing Your Computer</span></li>
														</ol>
													</div>
												</div>
											</div>
										</div>
										<div class="section-top-border">
											<div class="row">
												<div class="col-lg-8 col-md-8">
													<h3 class="mb-30">Form Element</h3>
													<form action="#">
														<div class="mt-10">
															<input type="text" name="first_name" placeholder="First Name"
															onfocus="this.placeholder = ''" onblur="this.placeholder = 'First Name'" required
															class="single-input">
														</div>
														<div class="mt-10">
															<input type="text" name="last_name" placeholder="Last Name"
															onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" required
															class="single-input">
														</div>
														<div class="mt-10">
															<input type="text" name="last_name" placeholder="Last Name"
															onfocus="this.placeholder = ''" onblur="this.placeholder = 'Last Name'" required
															class="single-input">
														</div>
														<div class="mt-10">
															<input type="email" name="EMAIL" placeholder="Email address"
															onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email address'" required
															class="single-input">
														</div>
														<div class="input-group-icon mt-10">
															<div class="icon"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
															<input type="text" name="address" placeholder="Address" onfocus="this.placeholder = ''"
															onblur="this.placeholder = 'Address'" required class="single-input">
														</div>
														<div class="input-group-icon mt-10">
															<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
															<div class="form-select" id="default-select"">
																<select>
																	<option value=" 1">City</option>
																	<option value="1">Dhaka</option>
																	<option value="1">Dilli</option>
																	<option value="1">Newyork</option>
																	<option value="1">Islamabad</option>
																</select>
															</div>
														</div>
														<div class="input-group-icon mt-10">
															<div class="icon"><i class="fa fa-globe" aria-hidden="true"></i></div>
															<div class="form-select" id="default-select"">
																<select>
																	<option value=" 1">Country</option>
																	<option value="1">Bangladesh</option>
																	<option value="1">India</option>
																	<option value="1">England</option>
																	<option value="1">Srilanka</option>
																</select>
															</div>
														</div>
														
														<div class="mt-10">
															<textarea class="single-textarea" placeholder="Message" onfocus="this.placeholder = ''"
															onblur="this.placeholder = 'Message'" required></textarea>
														</div>
														<div class="mt-10">
															<input type="text" name="first_name" placeholder="Primary color"
															onfocus="this.placeholder = ''" onblur="this.placeholder = 'Primary color'" required
															class="single-input-primary">
														</div>
														<div class="mt-10">
															<input type="text" name="first_name" placeholder="Accent color"
															onfocus="this.placeholder = ''" onblur="this.placeholder = 'Accent color'" required
															class="single-input-accent">
														</div>
														<div class="mt-10">
															<input type="text" name="first_name" placeholder="Secondary color"
															onfocus="this.placeholder = ''" onblur="this.placeholder = 'Secondary color'"
															required class="single-input-secondary">
														</div>
													</form>
												</div>
												<div class="col-lg-3 col-md-4 mt-sm-30">
													<div class="single-element-widget">
														<h3 class="mb-30">Switches</h3>
														<div class="switch-wrap d-flex justify-content-between">
															<p>01. Sample Switch</p>
															<div class="primary-switch">
																<input type="checkbox" id="default-switch">
																<label for="default-switch"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>02. Primary Color Switch</p>
															<div class="primary-switch">
																<input type="checkbox" id="primary-switch" checked>
																<label for="primary-switch"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>03. Confirm Color Switch</p>
															<div class="confirm-switch">
																<input type="checkbox" id="confirm-switch" checked>
																<label for="confirm-switch"></label>
															</div>
														</div>
													</div>
													<div class="single-element-widget mt-30">
														<h3 class="mb-30">Selectboxes</h3>
														<div class="default-select" id="default-select"">
															<select>
																<option value=" 1">English</option>
																<option value="1">Spanish</option>
																<option value="1">Arabic</option>
																<option value="1">Portuguise</option>
																<option value="1">Bengali</option>
															</select>
														</div>
													</div>
													<div class="single-element-widget mt-30">
														<h3 class="mb-30">Checkboxes</h3>
														<div class="switch-wrap d-flex justify-content-between">
															<p>01. Sample Checkbox</p>
															<div class="primary-checkbox">
																<input type="checkbox" id="default-checkbox">
																<label for="default-checkbox"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>02. Primary Color Checkbox</p>
															<div class="primary-checkbox">
																<input type="checkbox" id="primary-checkbox" checked>
																<label for="primary-checkbox"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>03. Confirm Color Checkbox</p>
															<div class="confirm-checkbox">
																<input type="checkbox" id="confirm-checkbox">
																<label for="confirm-checkbox"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>04. Disabled Checkbox</p>
															<div class="disabled-checkbox">
																<input type="checkbox" id="disabled-checkbox" disabled>
																<label for="disabled-checkbox"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>05. Disabled Checkbox active</p>
															<div class="disabled-checkbox">
																<input type="checkbox" id="disabled-checkbox-active" checked disabled>
																<label for="disabled-checkbox-active"></label>
															</div>
														</div>
													</div>
													<div class="single-element-widget mt-30">
														<h3 class="mb-30">Radios</h3>
														<div class="switch-wrap d-flex justify-content-between">
															<p>01. Sample radio</p>
															<div class="primary-radio">
																<input type="checkbox" id="default-radio">
																<label for="default-radio"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>02. Primary Color radio</p>
															<div class="primary-radio">
																<input type="checkbox" id="primary-radio" checked>
																<label for="primary-radio"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>03. Confirm Color radio</p>
															<div class="confirm-radio">
																<input type="checkbox" id="confirm-radio" checked>
																<label for="confirm-radio"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>04. Disabled radio</p>
															<div class="disabled-radio">
																<input type="checkbox" id="disabled-radio" disabled>
																<label for="disabled-radio"></label>
															</div>
														</div>
														<div class="switch-wrap d-flex justify-content-between">
															<p>05. Disabled radio active</p>
															<div class="disabled-radio">
																<input type="checkbox" id="disabled-radio-active" checked disabled>
																<label for="disabled-radio-active"></label>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- End Align Area -->
                <!-- subscribe Area Start-->
                <!--<div class="subscribe-area section-bg2" data-background="assets/img/gallery/section_bg02.png">
									<div class="container">
										<div class="row justify-content-xl-end justify-content-md-start">
											<div class="col-lg-5  col-md-8  ">
												<!-- Section Tittle -->
                <!--<div class="section-tittle section-tittle2 mb-20">
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
                                                <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""
                                                        width="130" height="130"></a>
                                            </div>
                                            <div class="footer-tittle">
                                                <div class="footer-pera">
                                                    <p>對於總是無法帶著毛小孩一起分享旅遊時光感到惋惜嗎？或者曾試著自己規劃一趟毛孩之旅卻發現困難重重？本網站幫撿屎官們篩選了各種可與毛孩一同前往的旅宿、餐廳、景點等，並提供一鍵規劃行程服務，省去上網搜尋、人工規劃行程等大量時間，希望能讓毛孩與我們有更多共同的回憶。
                                                    </p>
                                                </div>
                                            </div>
                                            <!-- social -->
                                            <div class="footer-social">
                                                <a href="#"><i class="fab fa-twitter"></i></a>
                                                <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                                <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                                <a href="#"><i class="ti-linkedin"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--<div class="col-xl-3 col-lg-3 col-md-4 col-sm-5">
													<div class="single-footer-caption mb-50">
														<div class="footer-tittle">
															<h4>Quick Links</h4>
															<ul>
																<li><a href="#">Listing</a></li>
																<li><a href="#">Submit your Business</a></li>
																<li><a href="#">About</a></li>
																<li><a href="#">Blog</a></li>
																<li><a href="#">Cities</a></li>
															</ul>
														</div>
													</div>
												</div>-->
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
                                                照片來源：Via
                                                Su</a>
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