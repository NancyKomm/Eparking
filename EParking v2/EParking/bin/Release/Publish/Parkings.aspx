<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parkings.aspx.cs" Inherits="EParking.Parkings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="font-size: 16px;">
<head runat="server">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Car Repair and Services">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Parkings</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Parkings.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.16.1, nicepage.com">
    <link id="u_theme_google_font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "eParking",
		"url": "index.html"
}</script>
    <meta property="og:title" content="Parkings">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
    <link rel="canonical" href="index.html">
    <meta property="og:url" content="index.html">
  </head>
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-3d90"><img class="u-image u-image-default u-image-1" src="images/e-parking_logo2.png" alt="" data-image-width="1000" data-image-height="345" data-href="/HomePage.aspx" data-page-id="438027"><nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="BookNow.aspx" style="padding: 34px 100px;">Book Now</a>
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
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="BookNow.aspx" style="padding: 34px 98px;">Book Now</a>
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
    <section class="u-align-center u-clearfix u-palette-5-light-3 u-section-1" id="sec-7824">
      <div class="u-clearfix u-sheet u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <h1 class="u-text u-text-1">Parking Services</h1>
        <div class="u-shape u-shape-svg u-text-palette-2-base u-shape-1">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7151"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 160" x="0px" y="0px" id="svg-7151" style="enable-background:new 0 0 160 160;"><path d="M10.3,39.9c-18.2,24.9-9.2,62.5,4,87.4c8.2,15.4,23,36.1,48.6,32.2c5.8-0.9,11.1-3.2,16.9-4.3c17.8-3.4,37.9,4.7,54.5-1.5
	c6.6-2.5,11.6-6.9,15.5-11.8c12.2-15.3,13.7-35.6,3.8-51.9c-6.9-11.5-19-20.9-23.6-33.1c-4.5-11.9-1.4-24.9-4.7-37.1
	C121.1,5,103.7-5.6,85.7,3.1c-6.8,3.3-12.6,7.7-20,10.2C58,15.9,49.5,16.6,41.6,19C26.8,23.6,16.7,31,10.3,39.9z"></path></svg>
        </div>
        <div class="u-shape u-shape-svg u-text-palette-2-base u-shape-2">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 120" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-a8bb"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 120" x="0px" y="0px" id="svg-a8bb"><path d="M124.3,80.3c20.5-1.1,32-18.4,34.8-31.5c4.7-22.6-6.7-55.4-81.5-47.7c-124.8,12.7-75.1,145.7-16.9,114
	C99.9,93.7,86.4,82.3,124.3,80.3z"></path></svg>
        </div>
        <div class="u-clearfix u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-gutter-0 u-layout">
            <div class="u-layout-col">
              <div class="u-size-30">
                <div class="u-layout-row">
                  <div class="u-align-center u-container-style u-image u-layout-cell u-left-cell u-size-20 u-image-1" data-image-width="1500" data-image-height="1000">
                    <div class="u-container-layout u-valign-middle u-container-layout-1"></div>
                  </div>
                  <div class="u-align-center u-container-style u-layout-cell u-size-20 u-white u-layout-cell-2">
                    <div class="u-container-layout u-container-layout-2"><span class="u-icon u-icon-circle u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 480 480" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-fca2"></use></svg><svg class="u-svg-content" viewBox="0 0 480 480" x="0px" y="0px" id="svg-fca2" style="enable-background:new 0 0 480 480;"><g><g><path d="M280,48H120c-4.418,0-8,3.582-8,8v96c0,4.418,3.582,8,8,8h160c4.418,0,8-3.582,8-8V56C288,51.582,284.418,48,280,48z     M272,144H128V64h144V144z"></path>
</g>
</g><g><g><rect x="240" y="112" width="16" height="16"></rect>
</g>
</g><g><g><rect x="208" y="112" width="16" height="16"></rect>
</g>
</g><g><g><rect x="176" y="112" width="16" height="16"></rect>
</g>
</g><g><g><path d="M256,272h-29.688l36.736-68.208c2.097-3.889,0.645-8.741-3.243-10.839c-2.689-1.45-5.968-1.243-8.453,0.535l-112,80    c-3.596,2.566-4.432,7.562-1.865,11.159c1.502,2.104,3.928,3.354,6.513,3.353h29.688l-36.736,68.208    c-2.097,3.889-0.645,8.741,3.243,10.839c2.689,1.45,5.968,1.243,8.453-0.535l112-80c3.596-2.566,4.432-7.562,1.865-11.159    C261.011,273.249,258.585,272,256,272z M167.368,333.48l26.76-49.688c2.094-3.89,0.638-8.742-3.252-10.836    c-1.167-0.628-2.471-0.956-3.796-0.956h-18.12l63.672-45.48l-26.76,49.688c-2.094,3.89-0.638,8.742,3.252,10.836    c1.167,0.628,2.471,0.956,3.796,0.956h18.12L167.368,333.48z"></path>
</g>
</g><g><g><path d="M432,40h-8V8c0-4.418-3.582-8-8-8s-8,3.582-8,8v32h-16V8c0-4.418-3.582-8-8-8s-8,3.582-8,8v32h-8c-4.418,0-8,3.582-8,8v48    c0.024,19.001,13.389,35.373,32,39.2V368c0,6.627-5.373,12-12,12c-6.627,0-12-5.373-12-12V189.184    c-0.018-11.297-6.809-21.482-17.232-25.84L328,154.52V40c-0.026-22.08-17.92-39.974-40-40H112C89.92,0.026,72.026,17.92,72,40v376    H48c-4.418,0-8,3.582-8,8v48c0,4.418,3.582,8,8,8h304c4.418,0,8-3.582,8-8v-48c0-4.418-3.582-8-8-8h-24V171.68l16.728,6.48    c4.41,1.89,7.27,6.226,7.272,11.024V368c0,15.464,12.536,28,28,28c15.464,0,28-12.536,28-28V135.2    c18.611-3.827,31.976-20.199,32-39.2V48C440,43.582,436.418,40,432,40z M88,40c0-13.255,10.745-24,24-24h176    c13.255,0,24,10.745,24,24v376H88V40z M344,432v32H56v-32H344z M424,96c0,13.255-10.745,24-24,24s-24-10.745-24-24V56h48V96z"></path>
</g>
</g></svg>
                    
                    
                  </span>
                      <h4 class="u-align-center u-text u-text-2">Car Charging</h4>
                    </div>
                  </div>
                  <div class="u-align-center u-container-style u-image u-layout-cell u-right-cell u-size-20 u-image-2" data-image-width="694" data-image-height="463">
                    <div class="u-container-layout u-valign-middle u-container-layout-3"></div>
                  </div>
                </div>
              </div>
              <div class="u-size-30">
                <div class="u-layout-row">
                  <div class="u-align-center u-container-style u-layout-cell u-left-cell u-size-20 u-white u-layout-cell-4">
                    <div class="u-container-layout u-container-layout-4"><span class="u-icon u-icon-circle u-text-palette-2-base u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 511.121 511.121" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-3cba"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 511.121 511.121" id="svg-3cba"><g id="XMLID_1409_"><path id="XMLID_1410_" d="m136.242 245.736c-.364-8.127-6.591-15-15-15-7.846 0-15.363 6.899-15 15 .364 8.127 6.591 15 15 15 7.847 0 15.363-6.899 15-15z"></path><path id="XMLID_1413_" d="m318.982 260.736c7.846 0 15.363-6.899 15-15-.364-8.127-6.591-15-15-15-7.846 0-15.363 6.899-15 15 .364 8.127 6.591 15 15 15z"></path><path id="XMLID_1414_" d="m179.582 230.736h81.061v30h-81.061z"></path><path id="XMLID_1417_" d="m511.121 314.678-19.241-23.017-15.236 12.737c-9.761-12.578-22.184-22.99-36.418-30.384v-68.38c0-21.43-15.965-39.192-36.625-42.042l-27.77-100.897c-5.41-19.656-23.426-33.383-43.813-33.383h-223.812c-20.387 0-38.403 13.728-43.813 33.383l-27.769 100.897c-20.659 2.851-36.624 20.612-36.624 42.042v131.251h20.883v75.328h101.645v-75.328h162.737c-3.67 10.961-5.663 22.684-5.663 34.864 0 60.687 49.373 110.06 110.06 110.06s110.059-49.373 110.059-110.06c0-14.46-2.809-28.276-7.9-40.936zm-276.875-151.496c6.028-15.485 21.087-26.494 38.679-26.494s32.651 11.009 38.678 26.494zm-140.928-92.526c1.838-6.679 7.96-11.344 14.888-11.344h223.813c6.927 0 13.049 4.665 14.888 11.344l25.466 92.526h-29.548c-6.914-32.243-35.623-56.494-69.9-56.494-34.278 0-62.986 24.251-69.9 56.494h-135.173zm-.79 311.558h-41.645v-45.328h41.645zm-62.528-75.33v-101.25c0-6.846 5.555-12.417 12.393-12.449h355.439c6.839.032 12.393 5.603 12.393 12.449v57.975c-.04-.008-.092-.003-.133-.009-6.623-1.248-13.451-1.909-20.431-1.909-28.543 0-54.582 10.924-74.159 28.808-4.417 3.328-9.023 8.48-14.777 16.387zm439.72 64.865c0 44.145-35.915 80.06-80.059 80.06-44.145 0-80.06-35.915-80.06-80.06s35.915-80.059 80.06-80.059c26.106 0 49.329 12.564 63.953 31.96l-62.313 52.092-44.871-35.98-18.768 23.404 64.034 51.348 75.415-63.044c1.698 6.479 2.609 13.274 2.609 20.279z"></path>
</g></svg>
                    
                    
                  </span>
                      <h4 class="u-align-center u-text u-text-3">Car Care</h4>
                    </div>
                  </div>
                  <div class="u-align-center u-container-style u-image u-layout-cell u-size-20 u-image-3" data-image-width="840" data-image-height="560">
                    <div class="u-container-layout u-valign-middle u-container-layout-5"></div>
                  </div>
                  <div class="u-align-center u-container-style u-layout-cell u-right-cell u-size-20 u-white u-layout-cell-6">
                    <div class="u-container-layout u-container-layout-6"><span class="u-icon u-icon-circle u-text-palette-2-base u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 448.7 448.7" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-e7c4"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 448.7 448.7" x="0px" y="0px" id="svg-e7c4" style="enable-background:new 0 0 448.7 448.7;"><g><g><path d="M427.6,79.05l-29.5-13.4l-26.2-41.7c-8.1-13-22.4-20.9-37.7-20.8h-113c-13.9,0-26.9,6.5-35.4,17.4l-33.7,44.2l-56.3,15.4    c-15.5,4.3-26.2,18.5-26.2,34.6v21.8c-0.1,19.5,15.5,35.4,35,35.6c0.2,0,0.3,0,0.5,0h3.1c7.2,23.7,32.2,37.1,56,29.9    c14.4-4.3,25.6-15.6,29.9-29.9h125.2c7.2,23.7,32.2,37.1,56,29.9c14.4-4.3,25.6-15.6,29.9-29.9h7.4c19.8,0,36.1-15.8,36.1-35.5    v-24.9C448.6,97.65,440.4,84.85,427.6,79.05z M151.2,184.35c-13.7,0-24.9-11.1-24.9-24.9c0-13.7,11.1-24.9,24.9-24.9    c13.7,0,24.9,11.1,24.9,24.9C176,173.15,164.9,184.35,151.2,184.35z M362.2,184.35c-13.7,0-24.9-11.1-24.9-24.9    c0-13.7,11.1-24.9,24.9-24.9c13.7,0,24.9,11.1,24.9,24.9C387.1,173.15,376,184.35,362.2,184.35z M412.6,152.15h-6.1    c-3.4-21-22-37.9-44.3-37.9c-22.4,0-41,16.9-44.3,37.9H195.5c-3.4-21-22-37.9-44.3-37.9s-41,16.9-44.4,37.9h-1.7    c-8.4,0.1-15.3-6.6-15.4-15c0-0.2,0-0.3,0-0.5v-21.8c-0.1-7.1,4.6-13.4,11.4-15.3l59.7-16.4c2.1-0.6,4-1.8,5.3-3.6l35.7-46.9    c4.6-6,11.8-9.6,19.4-9.6h112.9c8.4-0.1,16.3,4.3,20.7,11.4l27.8,44.3c1,1.7,2.6,3,4.3,3.8l32.3,14.6c5.7,2.6,9.3,8.2,9.4,14.4    v25.1h0.1C428.7,145.35,421.4,152.15,412.6,152.15z"></path>
</g>
</g><g><g><path d="M416.9,220.251l-0.9-1c-6.5-6.4-15.2-10-24.3-10.1h-0.2c-9.2,0-18,3.8-24.4,10.4c-23,23.4-62.4,63.2-72.4,73.3l-71.8,10.5    l-11.2-14.9l52.3-16.1c16.9-5.1,27.1-22.8,23.2-40.3c-4-17.6-21-28.9-38.8-25.8l-113.2,18c-8,1.2-15.6,4.6-21.8,9.8L0,344.25    l85.2,101.3l56.6-62.6l154.2-5.2c10.3-0.4,20.1-4.7,27.5-12l94-97.9l0.1-0.1C430.2,254.251,429.8,233.35,416.9,220.251z     M402.9,254.05l-93.7,97.5c-3.7,3.7-8.7,5.9-14,6.1l-162.6,5.5l-46.9,51.9l-58.4-69.5l99.3-96.4c3.3-2.7,7.3-4.4,11.5-5.1    l113.6-18h0.2c7.2-1.2,14.2,3.3,15.9,10.5c1.7,7.2-2.4,14.5-9.5,16.8l-79.6,24.5l35.5,47.2l90.1-13.1l2.4-2.4    c0.5-0.5,48.4-48.8,74.8-75.7c2.7-2.7,6.4-4.3,10.2-4.3c3.7,0,7.3,1.4,10.1,3.9l0.7,0.8C408,239.55,408.3,248.45,402.9,254.05z"></path>
</g>
</g></svg>
                    
                    
                  </span>
                      <h4 class="u-align-center u-text u-text-4">Quality</h4>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-2" id="sec-aadf">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-md u-valign-middle-sm u-valign-middle-xs u-sheet-1">
        <div id="carousel-1c88" data-interval="5000" data-u-ride="carousel" class="u-carousel u-expanded-width u-slider u-slider-1">
          <ol class="u-absolute-hcenter u-carousel-indicators u-hidden u-carousel-indicators-1">
            <li data-u-target="#carousel-1c88" class="u-active u-grey-30" data-u-slide-to="0"></li>
            <li data-u-target="#carousel-1c88" class="u-grey-30" data-u-slide-to="1"></li>
            <li data-u-target="#carousel-1c88" class="u-grey-30" data-u-slide-to="2"></li>
            <li data-u-target="#carousel-1c88" class="u-grey-30" data-u-slide-to="3"></li>
          </ol>
          <div class="u-carousel-inner" role="listbox">
            <div class="u-active u-align-left u-carousel-item u-container-style u-slide">
              <div class="u-container-layout u-container-layout-1">
                <img alt="" class="u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-1" data-image-width="1600" data-image-height="1067" src="images/1.jpg">
                <h3 class="u-text u-text-1">Parking Sync, Piraeus</h3>
                <p class="u-text u-text-2">Provides parking spots for electric vehicles (charging stations), motorcycles, disabled and conventional cars.<br>
                  <span style="font-weight: 700;">Karaoli ke Dimitriou 80, Piraeus</span>
                </p>
                <a href="LogIn.aspx" class="u-border-2 u-border-black u-btn u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-1">Book now</a>
                <div class="u-grey-light-2 u-map u-map-1">
                  <div class="embed-responsive">
                    <iframe class="embed-responsive-item" src="//maps.google.com/maps?output=embed&amp;q=Unipi&amp;t=m" data-map="JTdCJTIycG9zaXRpb25UeXBlJTIyJTNBJTIybWFwLWFkZHJlc3MlMjIlMkMlMjJhZGRyZXNzJTIyJTNBJTIyVW5pcGklMjIlMkMlMjJ6b29tJTIyJTNBbnVsbCUyQyUyMnR5cGVJZCUyMiUzQSUyMnJvYWQlMjIlMkMlMjJsYW5nJTIyJTNBbnVsbCUyQyUyMmFwaUtleSUyMiUzQW51bGwlMkMlMjJtYXJrZXJzJTIyJTNBJTVCJTVEJTdE"></iframe>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-align-left u-carousel-item u-container-style u-slide">
              <div class="u-container-layout u-container-layout-2">
                <div class="u-grey-light-2 u-map u-map-2">
                  <div class="embed-responsive">
                    <iframe class="embed-responsive-item" src="//maps.google.com/maps?output=embed&amp;q=Leof%20eirinis%2065&amp;t=m" data-map="JTdCJTIycG9zaXRpb25UeXBlJTIyJTNBJTIybWFwLWFkZHJlc3MlMjIlMkMlMjJhZGRyZXNzJTIyJTNBJTIyTGVvZiUyMGVpcmluaXMlMjA2NSUyMiUyQyUyMnpvb20lMjIlM0FudWxsJTJDJTIydHlwZUlkJTIyJTNBJTIycm9hZCUyMiUyQyUyMmxhbmclMjIlM0FudWxsJTJDJTIyYXBpS2V5JTIyJTNBbnVsbCUyQyUyMm1hcmtlcnMlMjIlM0ElNUIlNUQlN0Q="></iframe>
                  </div>
                </div>
                <img alt="" class="u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-2" data-image-width="1600" data-image-height="1067" src="images/3.jpg">
                <h3 class="u-text u-text-3">Parking Span, Piraeus</h3>
                <p class="u-text u-text-4">Provides parking spots for electric vehicles (charging stations), motorcycles, disabled and conventional cars.<br>
                  <span style="font-weight: 700;">Road Eirinis 65 - 67, Perama</span>
                </p>
                <a href="LogIn.aspx" class="u-border-2 u-border-black u-btn u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-2">Book now</a>
              </div>
            </div>
            <div class="u-carousel-item u-container-style u-slide">
              <div class="u-container-layout u-container-layout-3">
                <img alt="" class="u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-3" data-image-width="1600" data-image-height="1067" src="images/2.jpg">
                <h3 class="u-text u-text-5">Park Capsule, Elefsina</h3>
                <p class="u-text u-text-6">Provides parking spots for motorcycles, disabled and conventional cars.<br>
                  <span style="font-weight: 700;">Dimitros 26, Elefsina</span>
                </p>
                <a href="LogIn.aspx" class="u-border-2 u-border-black u-btn u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-3">Book now</a>
                <div class="u-grey-light-2 u-map u-map-3">
                  <div class="embed-responsive">
                    <iframe class="embed-responsive-item" src="//maps.google.com/maps?output=embed&amp;q=Dimitros%2026%2C%20elefsina&amp;t=m" data-map="JTdCJTIycG9zaXRpb25UeXBlJTIyJTNBJTIybWFwLWFkZHJlc3MlMjIlMkMlMjJhZGRyZXNzJTIyJTNBJTIyRGltaXRyb3MlMjAyNiUyQyUyMGVsZWZzaW5hJTIyJTJDJTIyem9vbSUyMiUzQW51bGwlMkMlMjJ0eXBlSWQlMjIlM0ElMjJyb2FkJTIyJTJDJTIybGFuZyUyMiUzQW51bGwlMkMlMjJhcGlLZXklMjIlM0FudWxsJTJDJTIybWFya2VycyUyMiUzQSU1QiU1RCU3RA=="></iframe>
                  </div>
                </div>
              </div>
            </div>
            <div class="u-carousel-item u-container-style u-slide">
              <div class="u-container-layout u-container-layout-4">
                <img alt="" class="u-expanded-width-sm u-expanded-width-xs u-image u-image-default u-image-4" data-image-width="900" data-image-height="600" src="images/6.jpg">
                <h3 class="u-text u-text-7">Hyper Parking, Megara</h3>
                <p class="u-text u-text-8">Provides parking spots for motorcycles, disabled and conventional cars.<br><b>Minoas 15, Megara</b>
                </p>
                <a href="LogIn.aspx" class="u-border-2 u-border-black u-btn u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-4">Book now</a>
                <div class="u-grey-light-2 u-map u-map-4">
                  <div class="embed-responsive">
                    <iframe class="embed-responsive-item" src="//maps.google.com/maps?output=embed&amp;q=Minoas%2015%2C%20megara&amp;t=m" data-map="JTdCJTIycG9zaXRpb25UeXBlJTIyJTNBJTIybWFwLWFkZHJlc3MlMjIlMkMlMjJhZGRyZXNzJTIyJTNBJTIyTWlub2FzJTIwMTUlMkMlMjBtZWdhcmElMjIlMkMlMjJ6b29tJTIyJTNBbnVsbCUyQyUyMnR5cGVJZCUyMiUzQSUyMnJvYWQlMjIlMkMlMjJsYW5nJTIyJTNBbnVsbCUyQyUyMmFwaUtleSUyMiUzQW51bGwlMkMlMjJtYXJrZXJzJTIyJTNBJTVCJTVEJTdE"></iframe>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-grey-70 u-icon-circle u-spacing-9 u-carousel-control-1" href="#carousel-1c88" role="button" data-u-slide="prev">
            <span aria-hidden="true">
              <svg viewBox="0 0 477.175 477.175"><path d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
                    c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg>
            </span>
            <span class="sr-only">+Previous</span>
          </a>
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-grey-70 u-icon-circle u-spacing-9 u-carousel-control-2" href="#carousel-1c88" role="button" data-u-slide="next">
            <span aria-hidden="true">
              <svg viewBox="0 0 477.175 477.175"><path d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg>
            </span>
            <span class="sr-only">+Next</span>
          </a>
        </div>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-18cf"><div class="u-clearfix u-sheet u-sheet-1">
        <img class="u-image u-image-round u-radius-10 u-image-1" src="images/e-parking_logo21.png" alt="" data-image-width="1000" data-image-height="345">
        <img class="u-image u-image-round u-radius-10 u-image-2" src="images/award.png" alt="" data-image-width="300" data-image-height="75">
        <h4 class="u-text u-text-1">Follow us</h4>
        <img class="u-image u-image-default u-preserve-proportions u-image-3" src="images/6b90f1f44a97056a.png" alt="" data-image-width="225" data-image-height="225">
        <h4 class="u-text u-text-2">@eparking2021</h4>
        <a href="TermsAndConditions.html"><p class="u-small-text u-text u-text-variant u-text-3">Terms and Conditions</p></a>
        <h5 class="u-text u-text-4">© 2021 | e-parking.gr</h5>
      </div></footer>
  </body>
</html>
