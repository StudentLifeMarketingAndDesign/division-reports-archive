<nav class="nav" id="nav">
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-md-4">
				<a href="$BaseUrl" class="nav__sitename"><% include DslLogoSvg %>
				<br />
				<span class="nav__report-title">$LatestIssue.Title</span>
				</a>
			</div>
			<div class="col-sm-3 offset-sm-3 col-md-2 offset-md-6">
				<div class="nav__explore">
					<button class="nav__item" id="handle">Explore</button>
					<div class="nav__menu-icon"></div>
				</div>
			</div>
		</div>
	</div>
</nav>
<div class="explorenav">
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<nav data-navigation-handle="#handle" data-navigation-content="#content">
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
				</nav>
			</div>
		</div>
	</div>
</div>