$(document).ready(function(){

    $("#notification_form").bind("ajax:error", function(e, xhr, status, error){
        console.log(xhr.responseText);
    });

    $("#notification_form").bind("ajax:success", function(e, data, status, xhr){
        console.log("success");
    });
});