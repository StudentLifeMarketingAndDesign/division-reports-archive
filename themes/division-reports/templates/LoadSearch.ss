
<% if $Pages %>
<ul class="story-filter__list"> 
	<% loop $Pages %>
		<% include StoryCardLarge %>
	<% end_loop %>
</ul>
<% else %>
	<p class="text-center">No stories filed under "{$Query}."</p>

<% end_if %>
<p class="text-center"><button onclick="resetList()" class="line-btn"><span class="line-btn__inner">Reset search</span></button></p>
