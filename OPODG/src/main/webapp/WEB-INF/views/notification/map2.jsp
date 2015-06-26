<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page import="java.util.*"%>
<%@ page import="util.*" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>OPODG - Maps</title>
	<link rel="stylesheet" href="../jquery/css/themes/default/jquery.mobile-1.4.5.min.css">
	<style>
		#map-page, #map-canvas { width: 100%; height: 100%; padding: 0; }
	</style>
	<link rel="stylesheet" href="../jquery/_assets/css/jqm-demos.css">
	<link rel="shortcut icon" href="../favicon.ico">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<script src="../jquery/js/jquery.js"></script>
	<script src="../jquery/_assets/js/index.js"></script>
	<script src="../jquery/js/jquery.mobile-1.4.5.min.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script>
	/*
	 * Google Maps documentation: http://code.google.com/apis/maps/documentation/javascript/basics.html
	 * Geolocation documentation: http://dev.w3.org/geo/api/spec-source.html
	 */

	$( document ).on( "pagecreate", "#map-page", function() {
		var defaultLatLng = new google.maps.LatLng(34.0983425, -118.3267434);  // Default to Hollywood, CA when no geolocation support

		if ( navigator.geolocation ) {
			function success(pos) {
				// Location found, show map with these coordinates
				drawMap(new google.maps.LatLng(pos.coords.latitude, pos.coords.longitude));
			}

			function fail(error) {
				drawMap(defaultLatLng);  // Failed to find location, show default map
			}

			// Find the users current position.  Cache the location for 5 minutes, timeout after 6 seconds
			navigator.geolocation.getCurrentPosition(success, fail, {maximumAge: 500000, enableHighAccuracy:true, timeout: 6000});
		} else {
			drawMap(defaultLatLng);  // No geolocation support, show default map
		}

		function drawMap(latlng) {
			var myOptions = {
				zoom: 10,
				center: latlng,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};

			var map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);

			// Add an overlay to the map of current lat/lng
			var marker = new google.maps.Marker({
				position: latlng,
				map: map,
				title: "Greetings!"
			});
		}

	});
	</script>
</head>
<body>

<div data-role="page" id="map-page" class="jqm-demos jqm-home">

	<div data-role="header" class="jqm-header">
	<h2>OPODG > Maps</h2>
		<a href="#demo-intro" data-rel="back" data-icon="carat-l" data-iconpos="notext" class="ui-link ui-btn-left ui-btn ui-icon-carat-l ui-btn-icon-notext ui-shadow ui-corner-all" data-role="button" role="button">Back</a>
		<a href="#" class="jqm-search-link ui-btn ui-btn-icon-notext ui-corner-all ui-icon-search ui-nodisc-icon ui-alt-icon ui-btn-right">Search</a>
	</div>

	<div role="main" class="ui-content" id="map-canvas">
		<!-- map loads here... -->
	</div>
	<%@ include file="../cmn/include/menu.jsp" %>
</div><!-- /page -->
</body>
</html>
