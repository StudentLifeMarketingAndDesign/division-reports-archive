<% if $GraphType == "Image" %>
	<img src="$Image.URL" alt="" role="presentation" class="graphblock__img" />
<% else %>

<% end_if %>
<% if $Caption %>
	<p class="graphblock__caption">$Caption</p>
<% end_if %>