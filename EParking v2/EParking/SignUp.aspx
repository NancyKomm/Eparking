<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EParking.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="font-size: 16px;">
    <head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Sign in">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Sign up</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
    <link rel="stylesheet" href="Login.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.16.1, nicepage.com">
    <link id="u_theme_google_font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u_page_google_font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700">
    
    

    <meta property="og:title" content="Sign up">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
  </head>

  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-3d90">
      <img class="u-image u-image-default u-image-1" src="images/e-parking_logo2.png" alt="" data-image-width="1000" data-image-height="345" data-href="/HomePage.aspx" data-page-id="438027"><nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
        
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
     <li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="HomePage.aspx" style="padding: 34px 100px;"></a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="LogIn.aspx" style="padding: 34px 100px;">Book Now</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="Parkings.aspx" style="padding: 34px 100px;">Parkings</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="ContactUs.aspx" style="padding: 34px 100px;">Contact Us</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="LogIn.aspx" style="padding: 34px 100px;">Log in</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="SignUp.aspx" style="padding: 34px 100px;">Sign up</a>
</li></ul>
        </div>
        <div class="u-custom-menu u-nav-container-collapse">
          <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
            <div class="u-sidenav-overflow">
              <div class="u-menu-close"></div>
              <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="HomePage.aspx" style="padding: 34px 98px;">Home</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="LogIn.aspx" style="padding: 34px 98px;">Book Now</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="Parkings.aspx" style="padding: 34px 98px;">Parkings</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="ContactUs.aspx" style="padding: 34px 98px;">Contact Us</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="LogIn.aspx" style="padding: 34px 98px;">Log in</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="SignUp.aspx" style="padding: 34px 98px;">Sign up</a>
</li></ul>
            </div>
          </div>
          <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
        </div>
      </nav></header>
    <section class="u-clearfix u-image u-section-1" id="carousel_e379" data-image-width="1600" data-image-height="1067">
      <div class="u-clearfix u-sheet u-valign-middle-sm u-sheet-1">

        <div class="u-container-style u-group u-white u-group-2" style="left: -305px; top: 657px">
          <div class="u-container-layout u-container-layout-2">
            <h2 class="u-align-center u-custom-font u-font-oswald u-text u-text-3">sign up
            </h2><br /><br />
            <p class="u-align-center u-text u-text-4"></p>
            <div class="u-form u-form-2 "><!--class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form"-->
             <div class="u-form-vertical">

              <form action="#" method="POST" class="u-clearfix  u-inner-form" style="padding: 0;" source="custom" id="form2"  runat="server">

                <div class="u-form-group u-form-group-4 u-form-spacing-30 u-form-vertical "><br />
                  <label for="text-47f9" class="u-label u-label-3">First Name</label><br />
                  <asp:TextBox placeholder="Enter your First Name" ID="FirstName" name="name1" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="FirstName" ErrorMessage="Please enter valid name" ForeColor="Red" ValidationExpression="(?![\s.]+$)[a-zA-Z]{1,30}">  </asp:RegularExpressionValidator> 
                  <!--<input type="text" placeholder="Enter your First Name" id="text-47f9" name="text-1" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required="required">-->
                </div>

                <div class="u-form-group u-form-group-5"><br />
                  <label for="text-4f00" class="u-label u-label-4">Last Name</label><br />
                  <asp:TextBox placeholder="Enter your Last Name" ID="LastName" name="name2" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="LastName" ErrorMessage="Please enter valid name" ForeColor="Red" ValidationExpression="(?![\s.]+$)[a-zA-Z]{1,20}">  </asp:RegularExpressionValidator> 
                  <!--<input type="text" placeholder="Enter your Last Name" id="text-4f00" name="text-2" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white">-->
                </div>
                <div class="u-form-email u-form-group u-form-group-6"><br />
                  <label for="email-d70e" class="u-label u-label-5">Email</label><br />
                  <asp:TextBox placeholder="Enter your Email" ID="Email" name="name3" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Email" ErrorMessage="Please enter valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  </asp:RegularExpressionValidator> 
                  <!--<input type="email" placeholder="Email" id="email-d70e" name="email" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required="">-->
                </div>

                <div class="u-form-group u-form-name u-form-group-7"><br />
                  <label for="name-d70e" class="u-label u-label-6">Username</label><br />
                  <asp:TextBox placeholder="Enter your Username" ID="Username" name="name4" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Username" ErrorMessage="Please enter valid username" ForeColor="Red" ValidationExpression="(?![\s.]+$)[a-zA-Z0-9]{1,30}">  </asp:RegularExpressionValidator> 
                    <!--<input type="text" placeholder="Enter your Username" id="name-d70e" name="name" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required="">-->
                </div>
                <div class="u-form-group u-form-group-8"><br />
                  <label for="text-28cb" class="u-label u-label-7">Password</label><br />
                  <asp:TextBox type="password" placeholder="Enter your Password" ID="Password" name="name5" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Password" ErrorMessage="Please enter valid password" ForeColor="Red" ValidationExpression="(?![\s.]+$)[a-zA-Z0-9]{6,}">  </asp:RegularExpressionValidator>
                  <!--<input type="text" placeholder="Enter your Password" id="text-28cb" name="text" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required="required">-->
                </div>
                <div class="u-form-group u-form-group-8"><br />
                  <label for="text-28cb" class="u-label u-label-7"> Repeat Password</label><br />
                  <asp:TextBox type="password" placeholder="Repeat Password" ID="Repeat_Password" name="name5" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required runat="server"></asp:TextBox>                  
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="Repeat_Password" ErrorMessage="Please enter valid password" ForeColor="Red" ValidationExpression="(?![\s.]+$)[a-zA-Z0-9]{6,}">  </asp:RegularExpressionValidator>
                  <!--<input type="text" placeholder="Enter your Password" id="text-28cb" name="text" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required="required">-->
                </div>
                  <!--
                <div class="u-form-group u-form-group-9"><br />
                  <label for="text-38b4" class="u-label u-label-8">Plate Number</label><br />
                  <asp:TextBox placeholder="Enter your Plate Number" ID="TextBox8" name="name6" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required runat="server"></asp:TextBox>
                  <!--<input type="text" placeholder="Enter your Plate Number" id="text-38b4" name="text-3" class="u-border-1 u-border-grey-75 u-input u-input-rectangle u-white" required="required">
                </div><br />
                  -->
                <div class="u-form-agree u-form-group u-form-group-10"><br />
                  <input type="checkbox" id="agree-be5a" name="agree" class="u-agree-checkbox" required>
                  <label for="agree-be5a" class="u-label u-label-9">
                    <a class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base u-btn-4" href="TermsAndConditions.html">I accept the Terms of Service</a>
                  </label>
                </div><br />

                <div class="u-align-left u-form-group u-form-submit u-form-group-11">
                  <!--<a href="#" class="u-border-1 u-border-black u-btn u-btn-submit u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-5">Submit</a>-->
                  <asp:Button id="Button2" class="u-border-1 u-border-black u-btn u-btn-submit u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-5"  Text="Submit" OnClick="Submit_Click" runat="server"  />
                  <!--<input type="submit" value="submit" class="u-form-control-hidden">class="u-form-control-hidden"-->
                </div>
                <!--<div class="u-form-send-message u-form-send-success">Thank you! Your message has been sent.</div>
                <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                <input type="hidden" value="" name="recaptchaResponse">-->
              </form>
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
        <a href="TermsAndConditions.html"><p class="u-small-text u-text u-text-variant u-text-3">Terms and Conditions</p></a>
        <a href="PrivacyPolicy.html"><p class="u-small-text u-text u-text-variant u-text-3">Privacy Policy</p></a>
        <h5 class="u-text u-text-4">© 2022 | e-parking.gr</h5>
      </div></footer>
  </body>
</html>