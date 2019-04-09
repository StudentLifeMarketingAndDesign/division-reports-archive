
<article class="story-card-large">
	<% if $Categories.exists %>
		<% loop $Categories.Limit(1) %>
			<span class="story-card-large__category story-card-large__category--$Title">$Title</span>
		<% end_loop %>
	<% end_if %>
	<div class="row">
		<div class="col-md-4">
			<% if $FeaturedVideo %>
				<a href="$Link" class="story-card-large__image-link">
					<img class="story-card-large__image" src="http://img.youtube.com/vi/$FeaturedVideo/sddefault.jpg" alt="$Title" />
				</a>
			<% else_if $FeaturedImage %>
				<a href="$Link" class="story-card-large__image-link">
					<img class="story-card-large__image" src="$FeaturedImage.CroppedFocusedImage(506,340).URL" <% if $FeaturedImageCaption %>alt="$FeaturedImageCaption" <% else %>alt="$Title"<% end_if %> />
				</a>
			<% else %>
				<a href="$Link" class="story-card-large__image-link">
					<img class="story-card-large__image" src="$Sections.First.SectionCover.CroppedFocusedImage(506,340).URL" alt="$Title" />
				</a>
			<% end_if %>
		</div>
		<div class="col-md-7">
			<div class="story-card-large__content">
				<% if $Sections %>
					<a class="section-tag" href="$Sections.First.Link">$Sections.First.Title</a>
				<% end_if %>
				<h3 class="story-card-large__heading"><a href="$Link">$Title</a></h3>
				<div class="story-card-large__summary">
					<% if $Summary %>
						<p>$Summary.LimitCharacters(160)</p>
					<% else %>
						<p>$Content.LimitCharacters(160)</p>
					<% end_if %>
				</div>
				<a href="$Link" class="line-btn">
					<span class="line-btn__inner">Read more &rarr;</span>
				</a>
			</div>
		</div>
	</div>
</article>