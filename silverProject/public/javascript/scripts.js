//pagination
alert("dfdf");
if($(".pagination").length) {
    $(".main").on("click", ".pagination", function(e){
        e.preventDefault();
        var url = $(this).attr("href");
        $.ajax(url).done(function (response) {
            $(".main").html(response);
        }).fail (function (xhr) {
            alert("Error: " + xhr.responseText);
        });
    });
}
