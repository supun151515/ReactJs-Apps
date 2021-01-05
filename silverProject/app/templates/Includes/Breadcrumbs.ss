<div class="row">
    <% loop $Children %>
     <div class="item col-md-6">
       <div class="image">
         <a href="$Link">
           <span class="btn btn-default">Read More</span>
         </a>
         $Photo.Fit(242,240)
     </div> <div class="tag"><i class="fa fa-file-text"></i></div>
       <div class="info-blog">
         <ul class="top-info">
             <li><i class="fa fa-calendar"></i> July 30, 2014</li>
             <li><i class="fa fa-comments-o"></i> 2</li>
             <li><i class="fa fa-tags"></i> Properties, Prices, best deals</li>
         </ul>
        <li><i class="fa fa-tags"></i> $CategoriesList</li>
         <h3>
             <a href="$Link">$Title</a>
         </h3>
         <% if $Teaser %>
             <p>$Teaser</p>
         <% else %>
             <p>$Content.FirstSentence</p>
         <% end_if %>
       </div>
     </div>
     <% end_loop %>
 </div>
