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
<div id="colorlib-page">
		<div class="container-wrap">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<div class="text-center">
				<div class="author-img" style="background-image: url(images/cld.jpg);"></div>
				<h1 id="colorlib-logo"><a href="index.jsp">Cloud Server</a></h1>
			<nav id="colorlib-main-menu" role="navigation" class="navbar">
				<div class="collapse">
					<ul>
			  <li><a href="Cloud_Home.jsp" data-nav-section="home">Home</a></li>
                                                <li><a href="Authorize_Owner.jsp" data-nav-section="about">Authorize Owner</a></li>
						<li><a href="Authorize_Accessor.jsp" data-nav-section="blog">Authorize User</a></li>
						<li><a href="View_All_Owner.jsp" data-nav-section="about">View Data Owner</a></li>
						<li><a href="View_All_User.jsp" data-nav-section="services">View Data Users</a></li>
                                                <li><a href="Generate_Owner_Key.jsp" data-nav-section="education">Generate Public & Secret Keys for Owners</a></li>
						<li><a href="View_request.jsp" data-nav-section="experience">Send Decryption Key to User</a></li>
                                                <li><a href="View_All_Files.jsp" data-nav-section="skills">View All Uploaded File Details</a></li>
                                
						<li><a href="Graph1.jsp" data-nav-section="blog">Graph</a></li>
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
                                                                              <h2 class="colorlib-heading" style="color:mediumvioletred;"><b><center>Accept Key requests from Data Owners</center></b></h2>
                                                                             <style>
                                                                            table{
                                                                            color:black;
                                                                            width: 80%;
                                                                            letter-spacing: 0.3px;
                                                                            margin-top: -30px;
                                                                            
                                                                            }
                                                                            table,td,th,tr{
                                                                                border-collapse: collapse;
                                                                                border: 1px solid black;
                                                                                text-align: center;
                                                                                padding: 5px;
                                                                            }
                                                                            th{
                                                                                color: lightseagreen;
                                                                                font-weight: bold;
                                                                            }
                                                                            td{
                                                                                color: black;
                                                                                font-weight: bold;
                                                                            }
                                                                         </style>
                                                                        <table>
                                                                            <tr>
                                                                                <th>Owner Id</th>
                                                                                <th>Owner Name</th>
                                                                                <th>DOB</th>
                                                                                <th>Action</th>
                                                                            </tr>
                                                                            <%
                                                                                    Connection con=new DB().fun();
                                                                                    PreparedStatement p=con.prepareStatement("select * from owner_register where estatus='Request_Send' and sstatus='Request_Send' ");
                                                                                    ResultSet r=p.executeQuery();
                                                                                    while(r.next()){
                                                                            %>
                                                                            <tr>
                                                                                <td><%=r.getString("id")%></td>
                                                                                <td><%=r.getString("username")%></td>
                                                                                <td><%=r.getString("dob")%></td>
                                                                                <td><a href="Key_Action.jsp?id=<%=r.getString("id")%>&&oname=<%=r.getString("username")%>" style="color:green;">Accept Request</a></td>
                                                                            </tr>
                                                                            <%}%>
                                                                               
                                                                        </table>
                                                                            </center>
                                                                    </div>
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

