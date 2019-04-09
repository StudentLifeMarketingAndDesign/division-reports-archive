<div class="author__block container">
	<% with $CurrentPage %>
		<div class="row">
		<% loop $Authors %>
			<div class="col-lg-2 col-md-4 col-sm-2">
				<a href="$URL" class="author clearfix">
					<% if $BlogProfileImage %>
						<img src="$BlogProfileImage.FocusFill(200,200).URL" class="author__img" />
					<% else %>
						<img src="{$ThemeDir}/src/images/placeholder-staff.png" class="author__img" />
						
					<% end_if %>
					<p class="author__name">$FirstName $Surname</p>
				</a>
			</div>
		<% end_loop %>
		</div>
	<% end_with %>
</div>