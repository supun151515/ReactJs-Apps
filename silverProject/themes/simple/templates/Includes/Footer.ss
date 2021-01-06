<footer class="footer" role="contentinfo">
	<div class="inner">
		<div class="unit size4of4 lastUnit">
			<div class="left">
				<a href="$BaseHref" class="brand" rel="home">$SiteConfig.Title</a>
				<span class="arrow">&rarr;</span> <% include Navigation %></div>
			<small class="right"><a href="http://simple.innovatif.com/about/">Theme</a> by Supun (Innovatif) / Powered by <a href="http://silverstripe.org">SilverStripe</a></small>
		</div>
    </div>
    <% with $SiteConfig %>
    <div>$FooterContent</div>
    <% end_with %>
<div>
    <ul class="social-networks1">
        <% with $SiteConfig %>
          <% if $FacebookLink %>
            <li><a href="$FacebookLink"><i class="fa fa-facebook"></i>Facebbok</a></li>
          <% end_if %>
          <% if $TwitterLink %>
            <li><a href="$TwitterLink"><i class="fa fa-twitter"></i></a></li>
          <% end_if %>
          <% if $GoogleLink %>
            <li><a href="$GoogleLink"><i class="fa fa-google"></i></a></li>
          <% end_if %>
          <% if $YouTubeLink %>
            <li><a href="#"><i class="fa fa-youtube"></i></a></li>
          <% end_if %>

        <% end_with %>

      </ul>
    </div>
</footer>
