
	<% if $Stories %>
		<ul class="story-filter__list"> 
			<% loop $Stories %>
				<% include StoryCardLarge %>
			<% end_loop %>
		</ul>
	<% else %>
		<p class="text-center">No stories in the section "{$Title}."</p>
	<% end_if %>
<p class="text-center"><button onclick="resetList()" class="line-btn"><span class="line-btn__inner">Reset search</span></button></p>
