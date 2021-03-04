
          <div class="d-flex flex-column h-100 justify-content-center bg-size-cover bg-position-center rounded-lg">
            <div class="py-4 my-2 px-4">
              <!-- Contacts card: Shadow -->
				<div class="card border-0 box-shadow">
				  <div class="card-body">
					<% if $ShowTitle %><h5 class="card-title">$Title</h5><% end_if %>
					$Form
					<ul class="list-unstyled mb-0">
					<% loop $Elements.Sort('SortID').Filter("AfterStaticElements",0) %>
						<li class="media mb-0 <% if not $First %>pt-2 <% end_if %> <% if $Last && not $ShowAddress && not $ShowOpeningHours %>pb-2 border-bottom<% else_if not $Last %>border-bottom<% end_if %>">
						<i class="czi-announcement font-size-lg mt-2 mb-0 text-primary"></i>
						<div class="media-body mt-1 pl-3">
						  <span class="font-size-lg text-muted">$Title</span>
						  <div class="font-size-ms">
						  $Content
						  </div>
						</div>
					  </li>
					  <% end_loop %>
					<% if $ShowOpeningHours %>
					  <li class="media mb-0 pt-2 pb-2 <% if $ShowAddress %>border-bottom<% end_if %>">
						<i class="czi-time font-size-lg mt-2 mb-0 text-primary"></i>
						<div class="media-body mt-1 pl-3">
						  <span class="font-size-lg text-muted">&Ouml;ffnungszeiten Hofladen</span>
						  <dl class="row font-size-ms mb-0">
						  
						 	  <% loop $Top.Page.OrderConfig.OpeningDays %>
						    <dt class="col-sm-5 font-weight-normal mb-0">$DayTranslated:</dt>
							<dd class="col-sm-7 mb-0">$TimeFrom.Format('HH:mm') - $TimeTo.Format('HH:mm') Uhr</dd>
						  <% end_loop %>
						  </dt>
						  
						</div>
					  </li>
						<% end_if %>
					  <% if $ShowAddress %>
						<li class="media mb-0 pt-2 <% if $Elements.Sort('SortID').Filter("AfterStaticElements",1) %>border-bottom<% end_if %>">
							<i class="czi-location font-size-lg font-size-lg mt-2 mb-0 text-primary"></i>
							<div class="media-body mt-1 pl-3">
							  <span class="font-size-lg text-muted">Adresse</span>
							 <p class="font-size-ms"> $SiteConfig.MainContact</br>$SiteConfig.Street, $SiteConfig.ZIP $SiteConfig.City</p>
							</div>
						</li>
					  <% end_if %>
					  <% loop $Elements.Sort('SortID').Filter("AfterStaticElements",1) %>
						<li class="media mb-0 pt-2<% if not $Last %>border-bottom<% end_if %>">
						<i class="czi-announcement font-size-lg mt-2 mb-0 text-primary"></i>
						<div class="media-body mt-1 pl-3">
						  <span class="font-size-lg text-muted">$Title</span>
						  <div class="font-size-ms">
						  $Content
						  </div>
						</div>
					  </li>
					  <% end_loop %>
					</ul>
				  </div>
				</div>
            </div>
          </div>
   