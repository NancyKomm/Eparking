<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelectSlot.aspx.cs" Inherits="EParking.SelectSlot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="font-size: 16px;">
	<head runat="server">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<meta name="keywords" content="Sign in">
	<meta name="description" content="">
	<meta name="page_type" content="np-template-header-footer-from-plugin">
	<title>Select Slot</title>
	<link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="SelectSlot.css" media="screen">
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

	<meta property="og:title" content="Select Slot">
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
</li><li class="u-nav-item"><label runat="server" for="username" id="Label1"></label>
</li></ul>
			</div>
		  </div>
		  <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
		</div>
	  </nav></header>
	  <form id="form1" runat="server">
		<section class="u-clearfix u-image u-section-2" id="sec-02ff" data-image-width="1600" data-image-height="1067">
		  <div class="u-clearfix u-sheet u-valign-middle-sm u-sheet-1">
			<div class="u-container-style u-expanded-width u-group u-white u-group-1">
			  <div class="u-container-layout u-container-layout-1">
				<div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
				  <div class="u-layout">
					<div class="u-layout-row">
					  <div class="u-container-style u-image u-layout-cell u-size-38 u-image-1" data-image-width="428" data-image-height="432">
						<div class="u-container-layout u-container-layout-2"></div>
					  </div>
					  <div class="u-container-style u-layout-cell u-size-22 u-layout-cell-2">
						<div class="u-container-layout u-container-layout-3">
						  <div class="u-border-10 u-border-grey-dark-1 u-expanded-width u-line u-line-horizontal u-line-1"></div>
						  <h2 class="u-align-center u-text u-text-1">pick a slot</h2>
						  <br />
						  <br />
                            <label runat="server" id="Price" style="margin: 0 auto; font-size: 2rem; "> </label>
							<p style="margin: 0 auto; font-size: 2rem; " >Select a vehicle: </p>
							  <div class="u-clearfix u-custom-html u-custom-html-1">
								<style></style>
								   <div  style=" margin-left: 0;">
									   <asp:DropDownList id="DropDownList2"
										AutoPostBack="False" style="font-size: 1.5rem;"
										runat="server">

								   </asp:DropDownList>
								   </div>
								  <br />
								  <br />
								  <br />
								  <p style="margin: 0 auto; font-size: 2rem; " >Select an available slot: </p>
								  <div class="u-clearfix u-custom-html u-custom-html-1"><!--class="u-align-center u-text u-text-2">-->
									<style></style>
									  <div  style="margin-left: 0;">
									   <asp:DropDownList id="DropDownList1"
											AutoPostBack="False" style="font-size: 1.5rem;"
											runat="server" >

									   </asp:DropDownList>
									</div>
								</div>
						  <!--<a href="Payment.aspx" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-3-base u-palette-3-light-1 u-radius-50 u-text-hover-black u-text-white u-btn-1"><span class="u-icon u-icon-1"><svg class="u-svg-content" viewBox="0 0 512 512" x="0px" y="0px" style="width: 1em; height: 1em;"><g><g><path d="M458.667,85.333H53.333C23.936,85.333,0,109.269,0,138.667v234.667c0,29.397,23.936,53.333,53.333,53.333h405.333    c29.397,0,53.333-23.936,53.333-53.333V138.667C512,109.269,488.064,85.333,458.667,85.333z M490.667,373.333    c0,17.643-14.357,32-32,32H53.333c-17.643,0-32-14.357-32-32V138.667c0-17.643,14.357-32,32-32h405.333c17.643,0,32,14.357,32,32    V373.333z"></path>-->
						 <asp:Button ID="Button2" class="u-border-none u-btn u-btn-round u-button-style u-hover-palette-3-base u-palette-3-light-1 u-radius-50 u-text-hover-black u-text-white u-btn-1" Text="Submit" OnClick="Submit_Click" runat="server"  />
	<!--</g>
	</g><g><g><path d="M501.333,149.333H10.667C4.779,149.333,0,154.112,0,160v64c0,5.888,4.779,10.667,10.667,10.667h490.667    c5.888,0,10.667-4.779,10.667-10.667v-64C512,154.112,507.221,149.333,501.333,149.333z M490.667,213.333H21.333v-42.667h469.333    V213.333z"></path>
	</g>
	</g><g><g><path d="M202.667,298.667h-128c-5.888,0-10.667,4.779-10.667,10.667S68.779,320,74.667,320h128    c5.888,0,10.667-4.779,10.667-10.667S208.555,298.667,202.667,298.667z"></path>
	</g>
	</g><g><g><path d="M202.667,341.333h-128C68.779,341.333,64,346.112,64,352c0,5.888,4.779,10.667,10.667,10.667h128    c5.888,0,10.667-4.779,10.667-10.667C213.333,346.112,208.555,341.333,202.667,341.333z"></path>
	</g>
	</g><g><g><path d="M416,277.333h-21.333c-17.643,0-32,14.357-32,32v21.333c0,17.643,14.357,32,32,32H416c17.643,0,32-14.357,32-32v-21.333    C448,291.691,433.643,277.333,416,277.333z M426.667,330.667c0,5.888-4.779,10.667-10.667,10.667h-21.333    c-5.888,0-10.667-4.779-10.667-10.667v-21.333c0-5.888,4.779-10.667,10.667-10.667H416c5.888,0,10.667,4.779,10.667,10.667    V330.667z"></path>
	</g>
	</g></svg><img></span>&nbsp; &nbsp;<span style="font-weight: 700; font-size: 1rem;">Pay now</span>-->
						  </a>
						</div>
					  </div>
					</div>
				  </div>
				</div>
			  </div>
			</div>
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
