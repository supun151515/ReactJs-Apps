<div class="grid-style1 clearfix">
    <% loop $Regions %>
    <div class="item col-md-12"><!-- Set width to 4 columns for grid view mode only -->
        <div class="image image-large">
            <a href="$Link">
                <span class="btn btn-default"><i class="fa fa-file-o"></i> Read More</span>
            </a>
            $Photo.Fit(720,100)
        </div>
        <div class="info-blog">
            <h3>
                <a href="$Link">$Title</a>
            </h3>
            <p>$Description.FirstParagraph</p>
        </div>
    </div>
    <% end_loop %>
</div>
