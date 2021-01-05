<div>$CommentForm</div>

    <br>
    <br>
<div class="comments">
    <ul>
        <% loop $MyFormDataObjects %>
            <li>
                <div class="comment" style="text-align: left">
                <h3>$Name <p><small>$Created.Format('dd-MM-YYYY')</small></p></h3>
                <p>$Comment</p>

                </div>
            </li>
        <% end_loop %>
    </ul>
</div>
