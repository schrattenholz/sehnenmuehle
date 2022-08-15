	<% include Schrattenholz\Slider\Includes\Slider %>
	<% include CallToActions %>
   <!-- Banners-->
<div class="spacer-white bg-white py-5">
    <section class="container pb-4 mb-md-3">
      <div class="row">
        <div class="col-md-8 mb-4">
              $Content
        </div>
        <div class="col-md-4 mb-4">

			$ContentObjects.Sort('SortID').First.renderIT

          </div>
      </div>
    </section>
</div>
<% loop ContentObjects.Sort('SortID') %>
	<% if not $First %>
			
			$renderIT
			
		<% end_if %>
	<% end_loop %>


