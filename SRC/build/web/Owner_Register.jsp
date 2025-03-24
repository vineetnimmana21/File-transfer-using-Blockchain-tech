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
			
			<nav id="colorlib-main-menu" role="navigation" class="navbar">
				<div  class="collapse">
					<ul>
						<li><a href="index.jsp" data-nav-section="home">Home</a></li>
						<li><a href="Data_Owner.jsp" data-nav-section="about">Data Owner</a></li>
						<li><a href="Data_Accessor.jsp" data-nav-section="blog">Data User</a></li>
						<li><a href="Cloud_Login.jsp" data-nav-section="experience">Cloud Server</a></li>
					<li><a href="network1.jsp" data-nav-section="experience">Network 1(Block1)</a></li>
                                        <li><a href="network2.jsp" data-nav-section="experience">Network 2(Block2)</a></li>
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
                             
                               <style>
                                table{
                                color:black;
                                margin-left: 30%;
                                letter-spacing: 0.3px;
                                }
                                input{
                                    color:black;
                                    margin-top: 10px;
                                    margin-left: 15px;
                                    width: 200px;
                                }
                                select{
                                    color:black;
                                    margin-top: 10px;
                                    margin-left: 15px;
                                    width: 200px;
                                }

                             </style>
                            <h2 style="margin-top: 70px; margin-left: 33%;color:MediumVioletRed;font-size: 25px;"><strong>Data Owner Registration</strong></h2>
                            <form action="Owner_Register_Action" method="post" enctype="multipart/form-data">
                            <table>
                                <tr><td><strong>Username</strong></td><td><input type="text" name="username" required></td></tr>
                                <tr><td><strong>Password</strong></td><td><input type="password" name="pass" required></td></tr>
                                <tr><td><strong>Mobile</strong></td><td><input type="text" name="mobile" pattern="[0-9]{10}" title="Enter 10-digits" required></td></tr>
                                <tr><td><strong>Mail</strong></td><td><input type="email" name="mail" required></td></tr>
                               <tr><td><strong>DOB </strong></td><td><input type="text" name="dom"  style="border-radius: 2px;"  required></td></tr>
                                <tr><td><strong>Gender</strong></td><td>
                                    <select name="gender">
                                        <option selected="" disabled="">Choose</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option> 
                                    </select>  
                                </td></tr>
                                <tr><td><strong>Profile Picture</strong></td><td><input type="file" name="file" required></td></tr>

                                <tr><td align="center" colspan="2"><input type="submit" value="Register"></td></tr>
                            </table></form><br>
                            <h4><a href="Data_Owner.jsp" style="color:mediumvioletred;margin-left: 38%;">If Already Account?</a>Login</h4>
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

