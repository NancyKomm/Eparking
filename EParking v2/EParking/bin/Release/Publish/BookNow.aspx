<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookNow.aspx.cs" Inherits="EParking.BookNow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="font-size: 16px;">
<head runat="server">
	<title>Book Now</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" media="screen">
	<meta name="page_type" content="np-template-header-footer-from-plugin">
	<link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="Booking.css" media="screen">
	<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
	<script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
	<meta name="generator" content="Nicepage 3.16.1, nicepage.com">
	<link id="u_theme_google_font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
	<link id="u_page_google_font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
	
	
	
	<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "eParking",
		"url": "index.html"
}</script>

	<meta property="og:title" content="Booking">
	<meta property="og:type" content="website">
	<meta name="theme-color" content="#478ac9">
	<link rel="canonical" href="index.html">
	<meta property="og:url" content="index.html">

	<style>
		.ParkingReservation-Page .ParkingReservation-Form {
			max-width: 480px;
			margin: 2% auto;
			padding: 0.75rem;
			border: solid 2px #ddd;
			color: black;
			text-align: left;
		}

		.ParkingReservation-Page .ParkingReservation-Form h4 {
			text-align: center;
			color: black;
		}
	</style>





  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-3d90">
	  <img class="u-image u-image-default u-image-1" src="images/e-parking_logo2.png" alt="" data-image-width="1000" data-image-height="345" data-href="/HomePageL.aspx" data-page-id="438027"><nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
		<div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
		  <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
			<svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
			<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><defs><symbol id="menu-hamburger" viewBox="0 0 16 16" style="width: 16px; height: 16px;"><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</symbol>
</defs></svg>
		  </a>
		</div>
		<div class="u-custom-menu u-nav-container">
			  <ul class="u-nav u-unstyled u-nav-1">
	 <li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="HomePageL.aspx" style="padding: 34px 100px;"></a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="BookNow.aspx" style="padding: 34px 100px;">Book Now</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="ParkingsL.aspx" style="padding: 34px 100px;">Parkings</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="ContactUsL.aspx" style="padding: 34px 100px;">Contact Us</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="MyProfile.aspx" style="padding: 34px 100px;">My Profile</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="HomePage.aspx" style="padding: 34px 100px;">Log Out</a>
</li><li class="u-nav-item"><label runat="server" for="username" id="usernamel"></label>
	 </li></ul>
		</div>
		<div class="u-custom-menu u-nav-container-collapse">
		  <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
			<div class="u-sidenav-overflow">
			  <div class="u-menu-close"></div>
			  <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="HomePageL.aspx" style="padding: 34px 98px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="BookNow.aspx" style="padding: 34px 98px;">Book Now</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="ParkingsL.aspx" style="padding: 34px 98px;">Parkings</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="ContactUsL.aspx" style="padding: 34px 98px;">Contact Us</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="MyProfile.aspx" style="padding: 34px 98px;">My profile</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="HomePage.aspx" style="padding: 34px 98px;">Log out</a>
</li></ul>
			</div>
		  </div>
		  <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
		</div>
	  </nav></header>
	<section class="u-align-center u-clearfix u-custom-color-7 u-valign-middle-md u-valign-middle-sm u-section-1" id="carousel_72db">
	  <h1 class="u-text u-text-palette-5-dark-3 u-text-1">Pick a parking<br>
	  </h1>
	  <div class="u-container-style u-custom-color-1 u-expanded-width u-group u-group-1">
		<div class="u-container-layout u-container-layout-1">
		</div>
	  </div>
	  <div class="u-gallery u-layout-grid u-lightbox u-show-text-on-hover u-gallery-1">
		<div class="u-gallery-inner u-gallery-inner-1">
		  <div class="u-effect-fade u-gallery-item">
			<div class="u-back-slide" data-image-width="1600" data-image-height="1067">
			  <img class="u-back-image u-expanded" src="images/1.jpg">
			</div>
			<div class="u-over-slide u-shading u-over-slide-1">
			  <h3 class="u-gallery-heading"></h3>
			  <p class="u-gallery-text"></p>
			</div>
		  </div>
		  <div class="u-effect-fade u-gallery-item">
			<div class="u-back-slide" data-image-width="1600" data-image-height="1067">
			  <img class="u-back-image u-expanded" src="images/3.jpg">
			</div>
			<div class="u-over-slide u-shading u-over-slide-2">
			  <h3 class="u-gallery-heading"></h3>
			  <p class="u-gallery-text"></p>
			</div>
		  </div>
		  <div class="u-effect-fade u-gallery-item">
			<div class="u-back-slide" data-image-width="1600" data-image-height="1067">
			  <img class="u-back-image u-expanded" src="images/2.jpg">
			</div>
			<div class="u-over-slide u-shading u-over-slide-3">
			  <h3 class="u-gallery-heading"></h3>
			  <p class="u-gallery-text"></p>
			</div>
		  </div>
		  <div class="u-effect-fade u-gallery-item">
			<div class="u-back-slide" data-image-width="900" data-image-height="600">
			  <img class="u-back-image u-expanded" src="images/6.jpg">
			</div>
			<div class="u-over-slide u-shading u-over-slide-4">
			  <h3 class="u-gallery-heading"></h3>
			  <p class="u-gallery-text"></p>
			</div>
		  </div>
		</div>
	  </div>
	  <div>
		  
		  <h1 class="u-text u-text-body-color u-text-2">Parking Sync, Piraeus</h1>
		  <h1 class="u-text u-text-body-color u-text-3">Parking Span, Piraeus</h1>
		  <h1 class="u-text u-text-body-color u-text-4">Hyper Parking, Megara</h1>
		  <h1 class="u-text u-text-body-color u-text-5">Park Capsule, Elefsina</h1>
	  </div>
		<div class="ParkingReservation-Page">
		  <div class="ParkingReservation-Form">
			<h4> Parking reservation form </h4>
			<br />
			<form name="ParkingReservation" runat="server">
			  <div class="form-group mb-4">
				<label> Username </label>
				<!--<input type="text" class="form-control">-->
				<asp:TextBox  ID="NameTextBox" class="form-control" ReadOnly="true" required runat="server"></asp:TextBox>
			  </div>
	  
			  <div class="form-group mb-4">
				<label> Check in </label>
				<div class="form-row">
				  <div class="col-auto mr-2">
				   <!-- <input type="date" id="date" class="form-control" />-->
					<asp:TextBox type="date" ID="DateTextBox1"  class="form-control" required runat="server"></asp:TextBox>
				  </div>
				  <div class="col-auto ml-2">
					<!--<input type="time" class="form-control">-->
					<asp:TextBox type="time" ID="TimeTextBox1"  class="form-control" required runat="server"></asp:TextBox>
				  </div>
				</div>
				<br />
				<label> Check out </label>
				<div class="form-row">
				  <div class="col-auto mr-2">
				   <!-- <input type="date" id="date" class="form-control" />-->
					<asp:TextBox type="date" ID="DateTextBox2"  class="form-control" required runat="server"></asp:TextBox>
				  </div>
				  <div class="col-auto ml-2">
					<!--<input type="time" class="form-control">-->
					<asp:TextBox type="time" ID="TimeTextBox2"  class="form-control" required runat="server"></asp:TextBox>
				  </div>
				</div>

			  </div>
	  
			  <div class="form-group mb-4">
				<label> Parking </label>
				<!--<select class="form-control">
				  <option> Choose </option>
				  <option>Parking Sync</option>
				  <option>Parking Span</option>
				  <option>Park Capsule</option>
				  <option>Hyper Parking</option>
				</select>-->
				<asp:DropDownList class="form-control" id="ParkingList" runat="server">
				  <asp:ListItem Value="Parking Sync">Parking Sync</asp:ListItem>
				  <asp:ListItem Value="Parking Span">Parking Span </asp:ListItem>
				  <asp:ListItem Value="Park Capsule">Park Capsule </asp:ListItem>
				  <asp:ListItem Value="Hyper Parking">Hyper Parking</asp:ListItem>

			   </asp:DropDownList>
			  </div>
	  
			  <div class="form-group mb-4" >
				<!--<button class="btn btn-primary btn-block" onclick="Submit_Click">
				  Make reservation
				</button>-->
				  <asp:Button id="ButtonSub" style="background-color: #CC2E2E; border: none;" class="btn btn-primary btn-block" Text="Make reservation" OnClick="Submit_Click" runat="server"  />
			  </div>
			</form>
		  </div>
		</div>
	</section>
	
	<section>
		
	</section>
	
	
	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-18cf"><div class="u-clearfix u-sheet u-sheet-1">
		<img class="u-image u-image-round u-radius-10 u-image-1" src="images/e-parking_logo21.png" alt="" data-image-width="1000" data-image-height="345">
		<img class="u-image u-image-round u-radius-10 u-image-2" src="images/award.png" alt="" data-image-width="300" data-image-height="75">
		<h4 class="u-text u-text-1">Follow us</h4>
		<img class="u-image u-image-default u-preserve-proportions u-image-3" src="images/6b90f1f44a97056a.png" alt="" data-image-width="225" data-image-height="225">
		<h4 class="u-text u-text-2">@eparking2021</h4>
		<a href="TermsAndConditionsL.html"><p class="u-small-text u-text u-text-variant u-text-3">Terms and Conditions</p></a>
		<h5 class="u-text u-text-4">© 2021 | e-parking.gr</h5>
	  </div></footer>
  </body>
</html>
