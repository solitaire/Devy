// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){

    $("a.showdashboard").click(function(){
        $("a.showdashboard").toggle();
        $("a.hidedashboard").toggle();
        $("div#dashboard").slideToggle("slow");
    });

    $("a.hidedashboard").click(function(){
        $("a.showdashboard").toggle();
        $("a.hidedashboard").toggle();
        $("div#dashboard").slideToggle("slow");
    });

    $("a.showmenu").click(function(){
        $("a.showmenu").toggle();
        $("a.hidemenu").toggle();
        $("div#leftnavigation").animate({
            width : 'toggle'
        });
    });

    $("a.hidemenu").click(function(){
        $("a.hidemenu").toggle();
        $("a.showmenu").toggle();
        $("div#leftnavigation").animate({
            width : 'toggle'
        });
    });
    $("#dialog_open").click(function(){
        $( "#dialog" ).dialog({
            title: "Create new snippet",
            resizable: true,
            modal: true,
            buttons: {
                "Save" :function(){
                    $("#snippet_form").submit();
                    $(this).dialog("destroy");
                },
                "Cancel": function() {
                    $( this ).dialog( "close" );
                }
            }
        });

    });

});
function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent().before(content.replace(regexp, new_id));
}