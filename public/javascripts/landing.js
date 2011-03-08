$(document).ready(function(){

    $("#notification_form").bind("ajax:error", function(e, xhr, status, error){
        console.log(xhr.responseText);
    });

    $("#notification_form").bind("ajax:success", function(e, data, status, xhr){
        console.log("success");
    });

// http://tenseveninteractive.com/content/jquery-countdown-background-and-overlay
    $('#launchcountdown').countdown({
        until: $.countdown.UTCDate(-8, 2011, 3 - 1, 19, 9),
        format: 'DHMS',
        layout: '<div id="t7_timer">'+
            '<div id="t7_vals">'+
            '<div id="t7_d" class="t7_numbs">{dnnn}</div>'+
            '<div id="t7_h" class="t7_numbs">{hnn}</div>'+
            '<div id="t7_m" class="t7_numbs">{mnn}</div>'+
            '<div id="t7_s" class="t7_numbs">{snn}</div>'+
            '</div>'+
            '<div id="t7_labels">'+
            '<div id="t7_dl" class="t7_labs">days</div>'+
            '<div id="t7_hl" class="t7_labs">hours</div>'+
            '<div id="t7_ml" class="t7_labs">mins</div>'+
            '<div id="t7_sl" class="t7_labs">secs</div>'+
            '</div>'+
            '<div id="t7_timer_over"></div>'+
            '</div>'
    });

});