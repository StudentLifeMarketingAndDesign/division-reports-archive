
<div class="backgroundvideo">
	<% if $YoutubeEmbed %>
		<div id="ESEE" class="backgroundvideo__container" style="background-image:url(https://img.youtube.com/vi/$YoutubeEmbed/sddefault.jpg)">
			<a href="https://www.youtube.com/embed/$YoutubeEmbed" data-video="$YoutubeEmbed" class="backgroundvideo__link">
			</a>
		</div>
	<% else_if $VimeoEmbed %>
		<iframe class="dp-lazy" data-original="https://player.vimeo.com/video/$VimeoEmbed" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
	<% end_if %>
</div>
