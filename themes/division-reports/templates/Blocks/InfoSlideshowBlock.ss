	<% if $Slides %>
		<% if $Slides.Count > 1 %><div class="carousel"><% end_if %>

			<% loop $Slides %>

				<div class="infoslide" <% if $MediaType == "Image" %>style="background-image: url($BackgroundImage.CroppedFocusedImage(1500,900).URL"<% end_if %>>

					<% if $MediaType == "Video" %>
						<div class="fullwidth-video">
							<video playsinline autoplay muted loop autoplay src="$BackgroundVideo.URL" id="vid-bg" class="ani-vid-fadein" style="opacity: 1;"></video>
						</div>
					<% end_if %>

					<div class="infoslide__body">
						<h1 class="infoslide__title">$Up.Title</h1>
						<% include InfoSlideBody %>
						<% if $ButtonLink %>
							<div class="infoslide__btnwrap">
								<a href="$ButtonLink" class="infoslide__btn">$ButtonTitle</a>
							</div>
						<% end_if %>
					</div>

				</div>
			<% end_loop %>

		<% if $Slides.Count > 1 %></div><% end_if %>

	<% end_if %>