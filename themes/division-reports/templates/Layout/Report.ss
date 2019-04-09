	<% if not $PaginatedList.NotFirstPage %>
		<article>
			<div class="container">
				<header class="header text-center">
					<div class="row">
						<div class="col-lg-10 offset-lg-1">

							<% if $ArchiveYear %>
								<h1><%t Blog.Archive 'Archive' %>:
								<% if $ArchiveDay %>
									$ArchiveDate.Nice</h1>
								<% else_if $ArchiveMonth %>
									$ArchiveDate.format('F, Y')</h1>
								<% else %>
									$ArchiveDate.format('Y')</h1>
								<% end_if %>
							<% else_if $CurrentTag %>
								<h1><%t Blog.Tag 'Tag' %>: $CurrentTag.Title</h1>
							<% else_if $CurrentCategory %>
								<h1><%t Blog.Category 'Category' %>: $CurrentCategory.Title</h1>
							<% else %>

							<% end_if %>

						</div>
					</div>
				</header>
			</div>
		</article>
	</div>

	<% if not $CurrentTag %>
		<% with $Featured %>
		<div class="story-tile__container">
			<div class="row no-gutters">
				<div class="col-lg-8">
					<% with $Story1 %>
						<a href="$Link" <% if $FeaturedVideo %>style="background-image: url('http://img.youtube.com/vi/$FeaturedVideo/maxresdefault.jpg')"<% else_if $FeaturedImage %>style="background-image: url($FeaturedImage.FocusFillMax(1080,720).URL"<% end_if %> class="story-tile story-tile--large">
							<div class="story-tile__header story-tile__header--large">
								<% if $Sections %>
									<span class="section-tag" href="$Sections.First.Link">$Sections.First.Title</span>
								<% end_if %>
								<h2 class="story-tile__title">$Title</h2>
							</div>
						</a>
					<% end_with %>
				</div>
				<div class="col-lg-4">
					<div class="row">
						<div class="col-lg-12">
							<% with $Story2 %>
								<a href="$Link" <% if $FeaturedVideo %>style="background-image: url('http://img.youtube.com/vi/$FeaturedVideo/sddefault.jpg')"<% else_if $FeaturedImage %>style="background-image: url($FeaturedImage.FocusFillMax(1080,720).URL"<% end_if %> class="story-tile story-tile--small">
									<div class="story-tile__header">
										<% if $Sections %>
											<span class="section-tag" href="$Sections.First.Link">$Sections.First.Title</span>
										<% end_if %>
										<h2 class="story-tile__title story-tile__title--small">$Title</h2>
									</div>
								</a>
							<% end_with %>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<% with $Story3 %>
								<a href="$Link" <% if $FeaturedVideo %>style="background-image: url('http://img.youtube.com/vi/$FeaturedVideo/sddefault.jpg')"<% else_if $FeaturedImage %>style="background-image: url($FeaturedImage.FocusFillMax(1080,720).URL"<% end_if %> class="story-tile story-tile--small">
									<div class="story-tile__header">
										<% if $Sections %>
											<span class="section-tag" href="$Sections.First.Link">$Sections.First.Title</span>
										<% end_if %>
										<h2 class="story-tile__title story-tile__title--small">$Title</h2>
									</div>
								</a>
							<% end_with %>
						</div>
					</div>
				</div>
			</div>
		</div>

		<% end_with %>
		<% end_if %>

		$BlockArea(BeforeContent)

		<% if not $CurrentTag %>
		<div class="explorenav">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h3 class="text-center">Sections</h3>
							<div class="row">
								<% loop $allSections %>
									<div class="col-sm-6 col-lg-4">
										<a href="$Link" class="explorenav__link">
											<div class="imagegradient">
												<img src="$SectionCover.CroppedFocusedImage(400,140).URL" alt="" class="desaturate">
											</div>
											<h3>$Title</h3>
										</a>
									</div>
								<% end_loop %>
							</div>

					</div>
				</div>
			</div>
		</div>
		<% end_if %>

		<% end_if %><%--end_if current page == Z1 --%>
		<br><br />
		<div class="filtered-story-card container">
			<div id="filter-list"></div>

			<div id="default-list">
				<% if $PaginatedList.Exists %>
					<% loop $PaginatedList %>
						<% include StoryCardLarge %>
					<% end_loop %>
				<% else %>
					<div class="container">
						<div class="col-lg-8">
							<p><%t Blog.NoPosts 'There are no stories in this section' %></p>
						</div>
					</div>

				<% end_if %>
			</div>
	 	</div>
	</div>

	$BlockArea(AfterContent)


$Form
$CommentsForm

<% with $PaginatedList %>
	<% include Pagination %>
<% end_with %>