<div class="container header__container">
	<div class="row">
		<article class="col-lg-10 offset-lg-1 text-center" role="main">
			<% with $CurrentProfile %>
				<% if $BlogProfileImage %>
					<img src="$BlogProfileImage.FocusFill(600,600).URL" class="author__img author__img--large" />
				<% end_if %>
			<h1 class="header__page-title">$FirstName $Surname</h1>
			$Content
			<p>Stories by $FirstName $Surname:</p>

			<% end_with %>

		</article>
	</div>
</div>
<div class="container">
	<% if $PaginatedList.Exists %>
		<% loop $PaginatedList %>
			<% include StoryCardLarge %>
		<% end_loop %>
	<% else %>
		<p><%t Blog.NoPosts 'There are no posts' %></p>
	<% end_if %>
</div>