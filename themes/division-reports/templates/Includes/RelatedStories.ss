<% if $RelatedStories %>
	<section class="relatedstories" aria-labelledby="RelatedStoriesSection">
		<div class="container">
			<div class="row">
				<div class="col">
					<h3 class="relatedstories__heading" id="RelatedStoriesSection">Related Stories <% if $Sections %><a href="$Sections.First.Link" class="relatedstories__viewall">View all stories from $Sections.First.Title</a><% end_if %></h3>

				</div>
			</div>
			<div class="row story-card--3up">
				<% loop $RelatedStories.limit(3) %>
					<div class="col-lg-4">
						<div class="story-card--mini">
							<% if $Sections %>
								<a class="section-tag" href="$Sections.First.Link">$Sections.First.Title</a>
							<% end_if %>
							<h3 class="story-card__title">
								<a href="$Link" class="story-card__title-anchor">$Title</a>
							</h3>
						</div>
					</div>
				<% end_loop %>
			</div>
			<div class="tilter-container">
				<div class="row">
					<% loop $RelatedStories.Limit(2,3) %>
						<div class="col-lg-6">
							<a href="$Link" class="tilter tilter--scale">
								<div class="tilter__figure">
									<div style="background: #fff">
										<div class="tilter__image-container">
											<% if $FeaturedVideo %>
												<img class="tilter__image" src="http://img.youtube.com/vi/$FeaturedVideo/sddefault.jpg" alt="$Title">
											<% else_if $FeaturedImage %>
												<img class="tilter__image" src="$FeaturedImage.CroppedFocusedImage(575,365).URL" <% if $FeaturedImageCaption %>alt="$FeaturedImageCaption" <% else %>alt="$Title"<% end_if %> />
											<% else %>
												<img class="tilter__image" src="$Sections.First.SectionCover.CroppedFocusedImage(575,365).URL" alt="$Title">
											<% end_if %>

											<div class="tilter__deco tilter__deco--shine"><div></div></div>
										</div>
										<div class="tilter__caption">
											<h3 class="tilter__title">$Title</h3>
											<div class="story-card-medium__summary">
												<% if $Summary %>
													<p>$Summary.NoHTML.LimitCharacters(120)</p>
												<% else %>
													<p>$Content.NoHTML.LimitCharacters(120)</p>
												<% end_if %>
											</div>
										</div>
									</div>
									<div class="be tilter__deco--lines">
										<% if $Sections %>
											<span class="section-tag tilter__description" href="$Sections.First.Link">$Sections.First.Title</span>
										<% end_if %>
									</div>
								</div>

							</a>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div>
	</section>
<% end_if %>