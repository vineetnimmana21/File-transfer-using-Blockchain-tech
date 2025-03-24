<%@page import="dbServices.DB"%>
<%@page import="java.sql.*"%>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Blockchain-based Decentralized Authentication Modeling Scheme in Edge and IoT Environment</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>
            <%
                String username=(String)session.getAttribute("username");
                String pic=(String)session.getAttribute("pic");
            %>
	<div id="colorlib-page">
		<div class="container-wrap">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<div class="text-center">
				<div class="author-img" style="background-image: url(dataset/<%=pic%>);"></div>
				<h1 id="colorlib-logo"><a href="index.jsp"><%=username%></a></h1>
				</div>
			<nav id="colorlib-main-menu" role="navigation" class="navbar">
				<div  class="collapse">
					<ul>
						<li  class="active"><a href="User_Home.jsp" data-nav-section="home">My Profile</a></li>
						<li><a href="viewfile2.jsp" data-nav-section="about">View Files & Make Request</a></li>
                                                
						<li><a href="Download_Files.jsp" data-nav-section="services">Download Files</a></li>
						<li><a href="index.jsp" data-nav-section="work">Logout</a></li>
					</ul>
				</div>
			</nav>

		</aside>

		<div id="colorlib-main">
			<section class="colorlib-about" data-section="about">
			<div class="colorlib-narrow-content">
			<div class="row">
			<div class="col-md-12">
			<div class="row row-bottom-padded-sm animate-box" data-animate-effect="fadeInLeft">
			<div class="col-md-12">
			<div class="about-desc">
                            <center>    </center>
                               <style>
                                table{
                                color:black;
                                margin-left: 30%;
                                letter-spacing: 0.3px;
                                }
                                table,td,tr{
                                    border-collapse: collapse;
                                    border: 1px solid #245269;
                                    padding: 5px;
                                    text-align: center;
                                    font-weight: bold;
                                }
                             </style>
                            <h2 style="margin-top: 70px; margin-left: 38%;color:MediumVioletRed;font-size: 25px;"><strong>My Profile</strong></h2>
                           <table>
                               <%
                                Connection con=new DB().fun();
                                PreparedStatement p=con.prepareStatement("select * from accessor_register where username='"+username+"' ");
                                ResultSet r=p.executeQuery();
                                while(r.next()){
                               %>
                                <tr><td Style="color:navy;"><strong>ID</strong></td><td><%=r.getString("id")%></td></tr>
                                <tr><td Style="color:navy;"><strong>Name</strong></td><td><%=r.getString("username")%></td></tr>
                                <tr><td Style="color:navy;"><strong>Mobile</strong></td><td><%=r.getString("mobile")%></td></tr>
                                <tr><td Style="color:navy;"><strong>Mail</strong></td><td><%=r.getString("mail")%></td></tr>
                                <tr><td Style="color:navy;"><strong>DOB</strong></td><td><%=r.getString("dob")%></td></tr>
                                <tr><td Style="color:navy;"><strong>Gender</strong></td><td><%=r.getString("gender")%></td></tr>
                                <tr><td Style="color:navy;"><strong>Profile Picture</strong></td><td><img src="dataset/<%=r.getString("pic")%>" alt="" style="height:50px;width: 80px;"></td></tr>
                                </table><%}%> </div>
			</div>
			</div>
			</div>
                        </div>
			</div>
			</section>
                </div>
            </div>
            <div style="background:#e0ebeb; width: 130%; height: 1000px;"></div>
           </div>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>

