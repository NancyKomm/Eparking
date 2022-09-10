<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUsL.aspx.cs" Inherits="EParking.ContactUsL" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="font-size: 16px;">
<head runat="server">
	<!DOCTYPE html>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<meta name="keywords" content="Contact Us">
	<meta name="description" content="">
	<meta name="page_type" content="np-template-header-footer-from-plugin">
	<title>Contact Us</title>
	<link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="ContactUs.css" media="screen">
	<script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
	<script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
	<meta name="generator" content="Nicepage 3.16.1, nicepage.com">
	<link id="u_theme_google_font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
	
	
	<script type="application/ld+json">
	{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "eParking",
		"url": "index.html"
	}
	</script>
	<meta property="og:title" content="Contact Us">
	<meta property="og:type" content="website">
	<meta name="theme-color" content="#478ac9">
	<link rel="canonical" href="index.html">
	<meta property="og:url" content="index.html">
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-3d90"><img class="u-image u-image-default u-image-1" src="images/e-parking_logo2.png" alt="" data-image-width="1000" data-image-height="345" data-href="/HomePageL.aspx" data-page-id="438027"><nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
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
	<section class="u-clearfix u-image u-shading u-section-1" id="sec-af07" data-image-width="1500" data-image-height="1000" style="left: 0px; top: 0px; height: 1098px">
	  <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
		<div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
		  <div class="u-layout">
			<div class="u-layout-row">
			  <div class="u-container-style u-custom-color-6 u-layout-cell u-left-cell u-size-30 u-layout-cell-1">
				<div class="u-container-layout u-container-layout-1">
				  <h2 class="u-text u-text-body-alt-color u-text-1">Contact Us</h2>
				  <h4 class="u-text u-text-2">Customer Support Phone Service: 210 4142000<br>
					<br>Working Hours<br>&nbsp; &nbsp; Monday - Friday: 09:00 AM to 11:00 PM<br>&nbsp; &nbsp; Saturday - Sunday: 10:00 AM to 07:00 PM<br> <br> Are you a parking owner? If you would like to become a member, please contact us.
                      <br> <br> Got any questions? Check our FAQ page: <a href="FAQL.html" style="color:dodgerblue" onmouseover="this.style.color='cornflowerblue';" onmouseout="this.style.color='dodgerblue';"><p class="u-text u-text-variant u-text-3">Frequently Asked Questions </p></a>
				  </h4>
				</div>
			  </div>
			  <div class="u-container-style u-custom-color-6 u-layout-cell u-right-cell u-size-30 u-layout-cell-2">
				<div class="u-container-layout u-container-layout-2">
				  <div class="u-form u-form-1">
					<form class="u-clearfix u-form-spacing-30 u-inner-form" style="padding: 10px" source="custom" name="form" runat="server">
                      <div class="u-form-group u-form-partition-factor-2">
                        <label for="FirstName" class="u-label u-text-body-alt-color u-label-1">First Name</label>
                        <asp:TextBox type="text" placeholder="Enter your First Name" id="FirstName"  class="u-input u-input-rectangle u-white" required="required" runat="server"/>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="FirstName" ErrorMessage="Please enter valid name" ForeColor="Red" ValidationExpression="(?![\s.]+$)[a-zA-Z]{1,30}">  </asp:RegularExpressionValidator> 
                      </div>
                      <div class="u-form-group u-form-name u-form-partition-factor-2">
                        <label for="LastName" class="u-label u-text-body-alt-color u-label-2">Last Name</label>
                        <asp:TextBox type="text" placeholder="Enter your Last Name" id="LastName"  class="u-input u-input-rectangle u-white" required="" runat="server"/>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="LastName" ErrorMessage="Please enter valid name" ForeColor="Red" ValidationExpression="(?![\s.]+$)[a-zA-Z]{1,20}">  </asp:RegularExpressionValidator> 
                      </div>
                      <div class="u-form-email u-form-group u-form-group-3">
                        <label for="Email" class="u-label u-text-body-alt-color u-label-3">Email Address</label>
                        <asp:TextBox type="email" placeholder="Enter your email address" id="Email"  class="u-input u-input-rectangle u-white" required="required" runat="server"/>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Please enter valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  </asp:RegularExpressionValidator> 
                      </div>
                      <div class="u-form-group u-form-message">
                        <label for="Message" class="u-label u-text-body-alt-color u-label-4">Message</label>
                        <asp:TextBox placeholder="Enter your message" rows="4" cols="50" id="Message"  class="u-input u-input-rectangleu-form-message u-white" required="" runat="server" Height="110px"/>
                      </div>
                      <div class="u-align-left u-form-group u-form-submit">
                          <asp:Button id="SendMessage1" class="u-border-2 u-border-white u-btn u-btn-submit u-button-style u-none u-btn-1" Text="Send Message" OnClick="SendMessage_Click" runat="server"  />
                      </div>
                    </form>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	</section>
	
	
	<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-18cf"><div class="u-clearfix u-sheet u-sheet-1">
		<img class="u-image u-image-round u-radius-10 u-image-1" src="images/e-parking_logo21.png" alt="" data-image-width="1000" data-image-height="345">
		<img class="u-image u-image-round u-radius-10 u-image-2" src="images/award.png" alt="" data-image-width="300" data-image-height="75">
		<h4 class="u-text u-text-1">Follow us</h4>
		<img class="u-image u-image-default u-preserve-proportions u-image-3" src="images/6b90f1f44a97056a.png" alt="" data-image-width="225" data-image-height="225">
		<h4 class="u-text u-text-2">@e_parking2022</h4>
		<a href="TermsAndConditionsL.html"><p class="u-small-text u-text u-text-variant u-text-3">Terms and Conditions</p></a>
		<a href="PrivacyPolicyL.html"><p class="u-small-text u-text u-text-variant u-text-3">Privacy Policy</p></a>
        <h5 class="u-text u-text-4">© 2022 | e-parking.gr</h5>
	  </div></footer>
  </body>
</html>
