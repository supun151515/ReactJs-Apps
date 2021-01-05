<% include sidebar %>

<!-- BEGIN CONTENT WRAPPER -->
<div class="content">
	<div class="container">
		<div class="row">

			<!-- BEGIN MAIN CONTENT -->
			<div class="main col-sm-8">

				<h1 class="blog-title">$Title</h1>

            <li><i class="fa fa-tags"></i>
                <% loop $Categories %>
                $Title<% if not $Last %>, <% end_if %><% end_loop %>
            </li>
            <li>
            <i class="fa fa-tags"></i> $CategoriesList
            </li>

				<div class="blog-main-image">
                    $Photo.ScaleWidth(450)
                    <img src="$Photo.URL" />
					<div class="tag"><i class="fa fa-file-text"></i></div>
				</div>

				<div class="blog-bottom-info">
					<ul>
						<li><i class="fa fa-calendar"></i> $Date.Nice</li>
						<li><i class="fa fa-comments-o"></i> 3 Comments</li>
                        <li><i class="fa fa-tags"></i>
                        <% if $Teaser %>
                         $Teaser
                        <% else %>
                            $Content.FirstSentence
                        <% end_if %>
                        </li>
					</ul>

					<div id="post-author"><i class="fa fa-pencil"></i> $AuthorName</div>
				</div>

                <% if $Brochure %>
                    <div class="row">
                    <div class="col-sm-12"><a class="btn btn-warning btn-block" href="$Brochure.URL"> Download brochure ($Brochure.Extension, $Brochure.Size)</a>
                    </div>
                    </div>
                    <% else %>
                        <div class="row">
                            <h1>No Brochure</h1>
                        </div>
                <% end_if %>
				<div class="post-content">
					$Content
				</div>

				<div class="share-wraper col-sm-12 clearfix">
					<h5>Share this Post:</h5>
				</div>

				<h1 class="section-title">Comments</h1>
                $CommentForm

                <div class="comments">
                    <ul>
                        <% loop $ArticleComments %>
                            <li>
                                <div class="comment">
                                <h3>$Name <p><small>$Created.Format('dd-MM-YYYY')</small></p></h3>
                                <p>$Comment</p>

                                </div>
                            </li>
                        <% end_loop %>
                    </ul>
                </div>
			</div>




	 </div>
	</div>
</div>
