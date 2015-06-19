<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="java.util.*"%>
<%@ page import="util.*" %>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>jQuery Mobile Demos</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="../jquery/css/themes/default/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="../jquery/_assets/css/jqm-demos.css">
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<script src="../jquery/js/jquery.js"></script>
	<script src="../jquery/_assets/js/index.js"></script>
	<script src="../jquery/js/jquery.mobile-1.4.5.min.js"></script>
<style>
/* Left transition */
li.left {
    -webkit-transition: -webkit-transform 250ms ease;
    -webkit-transform: translateX(-100%);
    -moz-transition: -moz-transform 250ms ease;
    -moz-transform: translateX(-100%);
    -o-transition: -o-transform 250ms ease;
    -o-transform: translateX(-100%);
    transition: transform 250ms ease;
    transform: translateX(-100%);
}
/* Right transition */
li.right {
    -webkit-transition: -webkit-transform 250ms ease;
    -webkit-transform: translateX(100%);
    -moz-transition: -moz-transform 250ms ease;
    -moz-transform: translateX(100%);
    -o-transition: -o-transform 250ms ease;
    -o-transform: translateX(100%);
    transition: transform 250ms ease;
    transform: translateX(100%);
}
/* Border bottom for the previous button during the transition*/
li.left a.ui-btn,
li.right a.ui-btn {
    border-top-width: 0;
    border-left-width: 1px;
    border-right-width: 1px;
}
li a.ui-btn.border-bottom {
    border-bottom-width: 1px;
}
/* Hide the delete button on touch devices */
ul.touch li.ui-li-has-alt a.delete {
    display: none;
}
ul.touch li.ui-li-has-alt a.ui-btn {
    margin-right:0;
}
/* Styling for the popup */
#confirm p {
    text-align: center;
    font-size: inherit;
    margin-bottom: .75em;
}
</style>
<script>
$( document ).on( "pagecreate", "#demo-page", function() {
    // Swipe to remove list item
    $( document ).on( "swipeleft swiperight", "#list li", function( event ) {
        var listitem = $( this ),
            // These are the classnames used for the CSS transition
            dir = event.type === "swipeleft" ? "left" : "right",
            // Check if the browser supports the transform (3D) CSS transition
            transition = $.support.cssTransform3d ? dir : false;
            confirmAndDelete( listitem);
    });
    // If it's not a touch device...
    if ( ! $.mobile.support.touch ) {
        // Remove the class that is used to hide the delete button on touch devices
        $( "#list" ).removeClass( "touch" );
        // Click delete split-button to remove list item
        $( ".delete" ).on( "click", function() {
            var listitem = $( this ).parent( "li" );
            confirmAndDelete( listitem );
        });
    }
    function confirmAndDelete( listitem, transition ) {
        // Highlight the list item that will be removed
        listitem.children( ".ui-btn" ).addClass( "ui-btn-active" );
        // Inject topic in confirmation popup after removing any previous injected topics
        $( "#confirm .topic" ).remove();
        listitem.find( ".topic" ).clone().insertAfter( "#question" );
        // Show the confirmation popup
        $( "#confirm" ).popup( "open" );
        // Proceed when the user confirms
        $( "#confirm #yes" ).on( "click", function() {
            // Remove with a transition
            if ( transition ) {
                listitem
                    // Add the class for the transition direction
                    .addClass( transition )
                    // When the transition is done...
                    .on( "webkitTransitionEnd transitionend otransitionend", function() {
                        // ...the list item will be removed
                        listitem.remove();
                        // ...the list will be refreshed and the temporary class for border styling removed
                        $( "#list" ).listview( "refresh" ).find( ".border-bottom" ).removeClass( "border-bottom" );
                    })
                    // During the transition the previous button gets bottom border
                    .prev( "li" ).children( "a" ).addClass( "border-bottom" )
                    // Remove the highlight
                    .end().end().children( ".ui-btn" ).removeClass( "ui-btn-active" );
            }
            // If it's not a touch device or the CSS transition isn't supported just remove the list item and refresh the list
            else {
                listitem.remove();
                $( "#list" ).listview( "refresh" );
            }
        });
        // Remove active state and unbind when the cancel button is clicked
        $( "#confirm #cancel" ).on( "click", function() {
            listitem.children( ".ui-btn" ).removeClass( "ui-btn-active" );
            $( "#confirm #yes" ).off();
        });
    }
});
</script>
<div data-role="page" id="demo-page" data-title="Inbox" data-url="demo-page" >
    <div data-role="header" data-position="fixed" data-theme="b">

        <h1>LIST</h1>
        <a href="#demo-intro" data-rel="back" data-icon="carat-l" data-iconpos="notext">Back</a>
        <a href="#" onclick="window.location.reload()" data-icon="back" data-iconpos="notext">Refresh</a>
    </div><!-- /header -->
    <div role="main" class="ui-content">
        <ul id="list" class="touch" data-role="listview" data-icon="false" data-split-icon="delete">
        <% 
    	ArrayList arr = (ArrayList)request.getAttribute("arr");
        	for(int i=0;i<arr.size();i++){
        		HashMap hm = (HashMap)arr.get(i);
        %>
            <li>
                <a href="#demo-mail">
                    <h3><%=hm.get("아파트명") %></h3>
                    <p class="topic"><strong><%=hm.get("영문주소") %></strong></p>
                    <p><%=hm.get("주소") %></p>
                    <p class="ui-li-aside"><strong><%= FormatUtil.getFormattedDate((String)hm.get("최종변경일"), "yyyyMMdd", "yyyy-MM-dd") %></strong></p>
                </a>
                <a href="#" class="delete">Delete</a>
            </li>
        <%
        	}
        %>
      	</ul>
    </div><!-- /content -->
    <div id="confirm" class="ui-content" data-role="popup" data-theme="a">
        <p id="question">Are you sure you want to delete:</p>
        <div class="ui-grid-a">
            <div class="ui-block-a">
                <a id="yes" class="ui-btn ui-corner-all ui-mini ui-btn-a" data-rel="back">Yes</a>
            </div>
            <div class="ui-block-b">
                <a id="cancel" class="ui-btn ui-corner-all ui-mini ui-btn-a" data-rel="back">Cancel</a>
            </div>
        </div>
    </div><!-- /popup -->
</div>
