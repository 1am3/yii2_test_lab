$("document").ready(function(){
    $("#new_message").on("pjax:end", function() {
        $.pjax.reload({container:"#messages"});  //Reload GridView
        $(".modal").modal("hide");
    });
  /*
  Непонятно почему. но не работает валидация в ajax подгружаемой форме, придется на js
  $("a.send_message").on("click", function(e){
        e.preventDefault();
        var message_id = $(this).attr("id");
        $("#send_modal").modal("show").find("#send_content").load($(this).attr("href"));
    }); */
    $("a.send_message").on("click", function(e){
        e.preventDefault();
        var message_id = $(this).attr("id");

        $('#send_message_id').val(message_id);
        $("#send_modal").modal("show");

    });
    $('.send_sms').on("click",function(){
        $.ajax({
            'url' : 'index.php?r=message/send',
            'type' : 'POST',
            'data' : 'type=sms&message_id='+$("#send_message_id").val(),
            success: function(msg) {
                $('#send_content').html(msg);

            }
        });
    });
    $('#send_modal').on('hidden.bs.modal', function () {
        $.pjax({
            type       : 'POST',
            url        : 'index.php?r=message/index',
            container  : '#messages',
            data       : {},
            push       : true,
            replace    : false,
            timeout    : 10000,
            "scrollTo" : false
        })
        // do something…
    });
    $('.send_email').on("click",function(){
        $.ajax({
            'url' : 'index.php?r=message/send',
            'type' : 'POST',
            'data' : 'type=email&message_id='+$("#send_message_id").val(),
            success: function(msg) {
                $('#send_content').html(msg);
            }
        });
    });
});