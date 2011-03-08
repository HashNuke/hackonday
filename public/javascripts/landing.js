$(document).ready(function(){

    $("#notification_form").bind("ajax:error", function(e, xhr, status, error){
        if(xhr.responseText != 'undefined') {
          console.log(xhr.responseText);
          var response = jQuery.parseJSON(xhr.responseText);
          $("#formreply").html("Sorry, " + response.email);
        } else {
          $("#formreply").html("Sorry, some error occured. Please try again.");
        }
        $("#formreply").removeClass("success").addClass("error");
    });

    $("#notification_form").bind("ajax:success", function(e, data, status, xhr){
        console.log("success");
        $("#formreply").html("Thanks! You'll hear from us soon.");
        $("#formreply").removeClass("error").addClass("success");
    });
});
