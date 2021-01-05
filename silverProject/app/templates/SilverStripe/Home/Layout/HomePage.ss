<h1 class="section-title">Recent Articles</h1>
<div class="grid-style1">

  <% loop $LatestArticles(5) %>
    <div class="item col-md-4">
        <div class="image">
            <a href="$Link">
                <span class="btn btn-default"> Read More</span>
            </a>
        <li><i class="fa fa-tags"></i> $CategoriesList</li>
            $Photo.Fit(220,148)
        </div>
        <div class="tag"><i class="fa fa-file-text"></i></div>
        <div class="info-blog">
            <ul class="top-info">
                <li><i class="fa fa-calendar"></i> $Date.Format('a MM, Y')</li>
                <li><i class="fa fa-clomments-o"></i> 2</li>
                <li><i class="fa fa-tags"></i> Properties, Prices, best deals</li>
            </ul>
            <h3>
                <a href="$Link">$Title</a>
            </h3>
            <p><% if $Teaser %>$Teaser<% else %>$Content.FirstSentence<% end_if %></p>
        </div>
    </div>
    <% end_loop %>

    <br>
    <br>
    <% loop $FeaturedProperties %>
        <div class="item col-md-4">
            <div class="image">
                <a href="$Link">
                    <h3>$Title</h3>
                    <span class="location">$Region.Title</span>
                </a>
                $PrimaryPhoto.Fill(220,194)
            </div>
            <div class="price">
                <span>$PricePerNight.Nice</span><p>per night<p>
            </div>
            <ul class="amenities">
                <li><i class="icon-bedrooms"></i> $Bedrooms</li>
                <li><i class="icon-bathrooms"></i> $Bathrooms</li>
            </ul>
        </div>
    <% end_loop %>
</div>
