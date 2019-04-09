<footer class="footer clearfix" role="contentinfo">
	<div class="row">
		<div class="footer-info__container">
			<div class="medium-6 large-5 columns">
				<a href="$BaseUrl"><% include DslLogoStackedSvg %></a>
					<p class="footer-info--text">The Division of Student Life fosters student success by creating and promoting inclusive educationally purposeful services and activities within and beyond the classroom.</p>
						<label for="archive-dropdown">Archive:</label>
						<select name="archive-dropdown" id="archive-dropdown" class="archive-dropdown">
						  <% loop AllReports %>
						  	<option class="archive-dropdown__option" value="$Link">$Year</option>
						  <% end_loop %>
						</select>
					  	
					
			</div>
		</div>
		<div class="footer-link__container">
			<div class="small-6 columns">
				<ul class="border-list" id="col">
					<% loop $allSections %>
						<li><a href="$Link">$Title</a></li>
					<% end_loop %>
				</ul>
			</div>
		</div>
	</div>
	<div class="md-bar row">
		<div class="small-12 columns">
			<section>
				<p>
				&copy; $Now.Year <span><a class="footer__link" href="http://www.uiowa.edu/" target="_blank">The University of Iowa</a>. All Rights Reserved. <a class="footer__link" href="http://www.uiowa.edu/homepage/online-privacy-information" target="_blank">Privacy Information</a> </span><span>&#124;</span> <span>Created by </span>
				<a class="footer__link" href="http://md.studentlife.uiowa.edu/" target="_blank"><img src="{$ThemeDir}/src/images/md.png" class="md-bar--logo b-lazy lazy unveil" alt="Marketing and Design Logo" /></a>
				</p>
			</section>
		</div>
	</div>
</footer>