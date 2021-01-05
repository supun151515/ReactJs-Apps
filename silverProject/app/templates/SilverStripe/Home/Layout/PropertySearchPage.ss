
$PropertySearchForm
<br>
<br>
<br>
<br>
   <% if $Results %>
    <h3>Showing $Results.PageLength results ($Results.getTotalItems total)</h3>
   <% end_if %>
<% loop $Results %>
    <div class="item col-md-4">
        <div class="image">
            <a href="$Link">
                <span class="btn btn-default"><i class="fa fa-file-o"></i> Details</span>
            </a>
            $1PrimaryPhoto.Fill(760,670)
        </div>
        <div class="price">
            <span>$PricePerNight.Nice</span><p>per night<p>
        </div>
        <div class="info">
            <h3>
                <a href="$Link">$Title</a>
                <small>$Region.Title</small>
                <small>Available $AvailableStart.Nice - $AvailableEnd.Nice</small>
            </h3>
            <p>$Description.LimitSentences(3)</p>

            <ul class="amenities">
                <li><i class="icon-bedrooms"></i>Bed Rooms:  $Bedrooms</li>
            </ul>
        </div>
    </div>
    <% end_loop %>

<br><br><p>Pagination</p>
    <!-- BEGIN PAGINATION -->
<% if $Results.MoreThanOnePage %>
    <div class="pagination">
        <% if $Results.NotFirstPage %>
        <ul id="previous col-xs-6">
            <li><a href="$Results.PrevLink"><i class="fa fa-chevron-left"></i>Back</a></li>
        </ul>
        <% end_if %>
        <ul class="hidden-xs">
            <% loop $Results.PaginationSummary %>
            <li <% if $CurrentBool %>class="active"<% end_if %>><a href="$Link">Goto Page: $PageNum</a></li>
            <% end_loop %>
        </ul>
        <% if $Results.NotLastPage %>
        <ul id="next col-xs-6">
            <li><a href="$Results.NextLink"><i class="fa fa-chevron-right"></i>Next</a></li>
        </ul>
        <% end_if %>
    </div>
    <% end_if %>
    <!-- END PAGINATION -->

