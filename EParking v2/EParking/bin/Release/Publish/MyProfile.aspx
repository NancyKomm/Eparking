<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="EParking.MyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="font-size: 16px;">
	<head runat="server">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<meta name="keywords" content="Sign in">
	<meta name="description" content="">
	<meta name="page_type" content="np-template-header-footer-from-plugin">
	<title>My Profile</title>
	<link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="MyProfile.css" media="screen">
	<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
	<script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
	<meta name="generator" content="Nicepage 3.16.1, nicepage.com">
	<link id="u_theme_google_font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
	<link id="u_page_google_font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700">
	
	
	<script type="application/ld+json">
	{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "eParking",
		"url": "index.html"
	}
	</script>

	<meta property="og:title" content="My profile">
	<meta property="og:type" content="website">
	<meta name="theme-color" content="#478ac9">
	<link rel="canonical" href="index.html">
	<meta property="og:url" content="index.html">




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
	  <form id="form1" runat="server">
		<section class="u-align-center u-clearfix u-section-2" id="carousel_35e6">
	  <div class="u-clearfix u-sheet u-sheet-1">
		<div class="u-image u-image-circle u-image-1" alt="" data-image-width="1280" data-image-height="1280"></div>
		<!--<h2 class="u-subtitle u-text u-text-1">Username</h2>-->
		<asp:Label ID="UsernameLabel" class="u-subtitle u-text u-text-1" runat="server" Text="Username"></asp:Label>
		<div class="u-table u-table-responsive u-table-1">
			<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="My Vehicles"></asp:Label>
		  <asp:Table ID="Table1" runat="server" class="u-table-entity u-align-center u-grey-10 u-table-alt-grey-5 u-table-body u-table-body-1">
		   
			<asp:TableHeaderRow  class="u-align-center u-grey-10 u-table-header u-table-header-1" style="height: 66px;" runat="server">
			  
				<asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-1">Type</asp:TableHeaderCell>
				<asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-2">Plate Number</asp:TableHeaderCell>
			  
			</asp:TableHeaderRow>
		  </asp:Table>
		</div>
		  <br />
		  <br />
		<a href="InsertCar.aspx" class="u-border-none u-btn u-btn-round u-button-style u-grey-10 u-hover-grey-15 u-radius-50 u-btn-1" style="left: 51px; top: -9px">Add more</a>
		<br />
		<br />
		<h2 class="u-subtitle u-text u-text-3" style="margin-top: 131px; margin-bottom: 0">&nbsp;</h2>
		<a href="BookNow.aspx" class="u-border-none u-btn u-btn-round u-button-style u-grey-10 u-hover-grey-15 u-radius-50 u-btn-2">Book Now</a>
		<div class="u-table u-table-responsive u-table-2">
			<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="My Reservations"></asp:Label>
		  <asp:Table ID="Table2" runat="server" class="u-table-entity u-align-center u-grey-10 u-table-alt-grey-5 u-table-body u-table-body-2">
			
			<asp:TableHeaderRow runat="server" class="u-align-center u-grey-10 u-table-header u-table-header-2" style="height: 84px;">
				 <asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-7">Parking Name</asp:TableHeaderCell>
				 <asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-8">Slot</asp:TableHeaderCell>
				 <asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-9">Plate Number</asp:TableHeaderCell>
				 <asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-10">Start Date</asp:TableHeaderCell>
				 <asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-10">Start Time</asp:TableHeaderCell> 
				 <asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-11">Finish Date</asp:TableHeaderCell>
				 <asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-11">Finish Time</asp:TableHeaderCell> 
				 <asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-12">Active</asp:TableHeaderCell>
				 <asp:TableHeaderCell class="u-border-2 u-border-palette-1-light-1 u-palette-2-base u-table-cell u-table-cell-12">Delete</asp:TableHeaderCell>
			</asp:TableHeaderRow>
			
		  </asp:Table>
		</div>
	  </div>
	</section>
	</form>







	
	
	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-18cf" style="left: 0px; top: 17px; height: 221px"><div class="u-clearfix u-sheet u-sheet-1">
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

