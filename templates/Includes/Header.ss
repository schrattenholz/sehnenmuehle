<!-- Navbar 3 Level (Light)-->
    <header class="box-shadow-sm">
      <!-- Topbar-->
      <div class="topbar topbar-dark bg-dark">
        <div class="container">
          <div class="topbar-text dropdown d-md-none"><a class="topbar-link dropdown-toggle" href="#" data-toggle="dropdown">Kontakt</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="tel:$Phone"><i class="czi-support text-muted mr-2"></i>$SiteConfig.Phone</a></li>  
			  <li><a class="dropdown-item" href="mailto:$SiteConfig.Email"><i class="czi-mail text-muted mr-2"></i>$SiteConfig.Email</a></li>
			  <li><a class="dropdown-item" href="{$BaseHref}eplr-eulle/"><i class="czi-star text-muted mr-2"></i>EPLR EULLE</a></li>
              <!--<li><a class="dropdown-item" href="order-tracking.html"><i class="czi-location text-muted mr-2"></i>Order tracking</a></li>-->
            </ul>
          </div>
          		  <div class="topbar-text text-nowrap d-none d-md-inline-block ml-3"><i class="czi-star"></i><span class="text-muted mr-1">Förderung</span><a class="topbar-link" href="{$BaseHref}eplr-eulle/">EPLR EULLE</a></div>
          <div class="topbar-text text-nowrap d-none d-md-inline-block"><i class="czi-support"></i><span class="text-muted mr-1">Telefon</span><a class="topbar-link" href="tel:$SiteConfig.Phone">$SiteConfig.Phone</a></div>		  
		  <div class="topbar-text text-nowrap d-none d-md-inline-block ml-3"><i class="czi-mail"></i><span class="text-muted mr-1">E-Mail</span><a class="topbar-link" href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></div>
          <!--
		  <div class="cz-carousel cz-controls-static d-none d-md-block">
            <div class="cz-carousel-inner" data-carousel-options="{&quot;mode&quot;: &quot;gallery&quot;, &quot;nav&quot;: false}">
              <div class="topbar-text">Free shipping for order over $200</div>
              <div class="topbar-text">We return money within 30 days</div>
              <div class="topbar-text">Friendly 24/7 customer support</div>
            </div>
          </div>
		  -->
         <!--
		 <div class="ml-3 text-nowrap"><a class="topbar-link mr-4 d-none d-md-inline-block" href="order-tracking.html"><i class="czi-location"></i>Order tracking</a>
            <div class="topbar-text dropdown disable-autohide"><a class="topbar-link dropdown-toggle" href="#" data-toggle="dropdown"><img class="mr-2" width="20" src="{$ThemeDir}/img/flags/en.png" alt="English"/>Eng / $</a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li class="dropdown-item">
                  <select class="custom-select custom-select-sm">
                    <option value="usd">$ USD</option>
                    <option value="eur">€ EUR</option>
                    <option value="ukp">£ UKP</option>
                    <option value="jpy">¥ JPY</option>
                  </select>
                </li>
                <li><a class="dropdown-item pb-1" href="#"><img class="mr-2" width="20" src="{$ThemeDir}/img/flags/fr.png" alt="Français"/>Français</a></li>
                <li><a class="dropdown-item pb-1" href="#"><img class="mr-2" width="20" src="{$ThemeDir}/img/flags/de.png" alt="Deutsch"/>Deutsch</a></li>
                <li><a class="dropdown-item" href="#"><img class="mr-2" width="20" src="{$ThemeDir}/img/flags/it.png" alt="Italiano"/>Italiano</a></li>
              </ul>
            </div>
          </div>
		  -->
        </div>
      </div>
      <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
      <div class="navbar-sticky bg-light">
        <div class="navbar navbar-expand-lg navbar-light">
          <div class="container"><a class="navbar-brand d-none d-sm-block mr-3 flex-shrink-0 flex-grow-1" href="{$BaseHref}home" style="min-width: 7rem;"><img width="142" src="$OrderConfig.Logo.URL" alt="$SiteConfig.BusinessName"/></a><a class="navbar-brand d-sm-none mr-2" href="{$BaseHref}home" style="min-width: 4.625rem;"><img style="max-width:140px;" src="$OrderConfig.Logo.URL" alt="$SiteConfig.BusinessName"/></a>
            <div id="search-field-box" class="input-group-overlay d-none d-lg-flex mx-4 align-self-end " style="max-width:20rem;">
              <input id="search-field" class="form-control appended-form-control " type="text" placeholder="Suche und finde">
              <div class="input-group-append-overlay"><span class="input-group-text"><i class="czi-search"></i></span></div>
				<ul class="dropdown-menu w-100 fade d-block" id="search-field-list" style="visibility:hidden;" >
				</ul>
			
            </div>
            <div class="navbar-toolbar d-flex flex-shrink-0 align-items-center align-self-end">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse">
			  <span class="navbar-toggler-icon"></span>
			  </button>
				<a class="navbar-tool navbar-stuck-toggler" href="#">
				<span class="navbar-tool-tooltip">Expand menu</span>
                <div class="navbar-tool-icon-box">
					<i class="navbar-tool-icon czi-menu"></i>
				</div>
				</a>
				<!--
				<a class="navbar-tool d-none d-lg-flex" href="account-wishlist.html">
					<span class="navbar-tool-tooltip">Wunschlist</span>
					<div class="navbar-tool-icon-box">
						<i class="navbar-tool-icon czi-heart"></i>
					</div>
				</a>
				-->
				<div class="navbar-tool dropdown ml-3 user-menue">
					<a class="navbar-tool ml-1 ml-lg-0 mr-n1 mr-lg-2 " href="#signin-modal" data-target="#signin-modal" data-toggle="modal">
						<div class="navbar-tool-icon-box">
							<i class="navbar-tool-icon czi-user"></i>
						</div>
						<div class="navbar-tool-text ml-n3">
							<small><% if $CurrentMember %>$CurrentMember.ShortSalutation<% else %> Jetzt anmelden<% end_if %></small>
							Mein Konto
						</div>
					</a>
					<% if $CurrentMember %>
					
						<ul class="dropdown-menu">
							<% loop $OrderConfig.AcountRoot.Children %>
								<li class="dropdown <% if $isCurrent || $isSection %>active<% end_if %>"><a class="dropdown-item" href="$Link" title="$Title.XML" >$MenuTitle.XML</a>
							</li>
							<% end_loop %>
							<li class="dropdown">
								<a class="btn btn-primary btn-sm" style="margin:.425rem 1.3rem;" href="{$BaseHref}home/logoutUser">Abmelden</a>
							</li>
						</ul>
					
					<% end_if %>
				</div>
              <div class="navbar-tool dropdown ml-3 basket-nav-list">
                      $BasketNavList
			  </div>
			  <% if $SiteConfig.Facebook %>
			  <a class="navbar-tool-icon-box bg-secondary dropdown-toggle ml-3 d-none d-md-block" href="$SiteConfig.Facebook"  target="_blank" id="facebook_icon">
				<i class="navbar-tool-icon czi-facebook"></i>
			</a>
			<% end_if %>
						  <% if $SiteConfig.Instagram %>
			  <a class="navbar-tool-icon-box bg-secondary dropdown-toggle ml-3 d-none d-md-block" href="$SiteConfig.Instagram" target="_blank" id="instagram_icon">
				<i class="navbar-tool-icon czi-instagram"></i>
			</a>
			<% end_if %>
            </div>
          </div>
        </div>
        <div class="navbar navbar-expand-lg navbar-light navbar-stuck-menu mt-n2 pt-0 pb-2">
          <div class="container">
            <div class="collapse navbar-collapse" id="navbarCollapse">
              <!-- Search-->
              <div class="input-group-overlay d-lg-none my-3">
                <div class="input-group-prepend-overlay"><span class="input-group-text"><i class="czi-search"></i></span></div>
                <input class="form-control prepended-form-control" type="text" placeholder="Search for products">
              </div>
			<% include DepartmentNavigation %>
              <% include Navigation %>
            </div>
          </div>
        </div>
      </div>
    </header>