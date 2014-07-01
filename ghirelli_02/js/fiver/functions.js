(function(){
	
	// USE STRICT
	"use strict";
	/////////////////////////////////////////////
	// MAP FUNCTIONS
	/////////////////////////////////////////////
	
	var map = {
		init:function() {
			var maps = jQuery('.map-canvas');
			maps.each(function(index, element) {
				var mapContainer = element,
					mapAddress = mapContainer.getAttribute('data-address'),
					mapZoom = mapContainer.getAttribute('data-zoom'),
					mapType = mapContainer.getAttribute('data-maptype'),
					mapColor = mapContainer.getAttribute('data-mapcolor'),
					mapSaturation = mapContainer.getAttribute('data-mapsaturation'),
					pinLogoURL = mapContainer.getAttribute('data-pinimage');
				
				map.getCoordinates(mapAddress, mapContainer, mapZoom, mapType, mapColor, mapSaturation, pinLogoURL);
			
			});
			map.fullscreenMap();
			jQuery(window).smartresize( function() {
			
				map.fullscreenMap();
			});
		},
		getCoordinates: function(address, mapContainer, mapZoom, mapType, mapColor, mapSaturation, pinLogoURL) {
			var geocoder;
			geocoder = new google.maps.Geocoder();			
			geocoder.geocode({
				'address': address
			}, function(results, status) {
				if (status == google.maps.GeocoderStatus.OK) {
					if (mapSaturation == "mono") {
						mapSaturation = -100;
					} else {
						mapSaturation = -20;
					}

					var styles = [
						{
							stylers: [
								{hue: mapColor},
								{saturation: mapSaturation}
							]
						}
					];
					
					var styledMap = new google.maps.StyledMapType(styles,{name: "Styled Map"});  
					var mapTypeIdentifier = "",
						companyPos = "",
						isDraggable = true,
						mapCoordinates = results[0].geometry.location,
						latitude = results[0].geometry.location.lat(),
						longitude = results[0].geometry.location.lng();			
					//if (isMobileAlt) {
					//isDraggable = false;
					//}
					
					if (mapType === "satellite") {
					mapTypeIdentifier = google.maps.MapTypeId.SATELLITE;
					} else if (mapType === "terrain") {
					mapTypeIdentifier = google.maps.MapTypeId.TERRAIN;
					} else if (mapType === "hybrid") {
					mapTypeIdentifier = google.maps.MapTypeId.HYBRID;
					} else {
					mapTypeIdentifier = google.maps.MapTypeId.ROADMAP;
					}
							
					var latlng = new google.maps.LatLng(latitude, longitude);
					var settings = {
						zoom: parseInt(mapZoom, 10),
						scrollwheel: false,
						center: latlng,
						draggable: isDraggable,
						mapTypeControl: true,
						mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
						navigationControl: true,
						navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL},
						mapTypeId: mapTypeIdentifier
					};	
					var mapInstance = new google.maps.Map(mapContainer, settings);
					var companyMarker = "";
					
					// ADD MARKER AFTER 1 SECOND
					jQuery(mapContainer).ready(function() {
						setTimeout(function() {
							if (pinLogoURL) {
								var companyLogo = new google.maps.MarkerImage(pinLogoURL,
									new google.maps.Size(150,75),
									new google.maps.Point(0,0),
									new google.maps.Point(75,75)
								);
								companyPos = new google.maps.LatLng(latitude, longitude);
								companyMarker = new google.maps.Marker({
									position: mapCoordinates,
									map: mapInstance,
									icon: companyLogo,
									animation: google.maps.Animation.DROP
								});
							} else { 
								companyPos = new google.maps.LatLng(latitude, longitude);
								companyMarker = new google.maps.Marker({
									position: mapCoordinates,
									map: mapInstance,
									animation: google.maps.Animation.DROP
								});
							}
							
							google.maps.event.addListener(companyMarker, 'click', function() {
								window.location.href = 'http://maps.google.com/maps?q='+companyPos;
							});
							
							google.maps.event.addDomListener(window, 'resize', function() {
								mapInstance.setCenter(companyPos);
							});
						}, 1000);
					});
							
					// MAP COLOURIZE
					if (mapColor !== "") {
					mapInstance.mapTypes.set('map_style', styledMap);
					mapInstance.setMapTypeId('map_style');
					}
					
				} else {
					console.log(status);
				}
			});			
		},
		fullscreenMap: function() {
			var fullscreenMap = jQuery('.fullscreen-map'),
				container = jQuery('#page-wrap'),
				mapOffset = container.offset().left,
				windowWidth = jQuery(window).width();

			if (windowWidth > 768) {
				mapOffset = mapOffset;
			} else {
				mapOffset = 20;
			}
			
			if (jQuery('#container').hasClass('boxed-layout')) {
				windowWidth = jQuery('#container').width();
				
				if (windowWidth > 1024) {
					mapOffset = 45;
				} else if (windowWidth > 768) {
					mapOffset = 30;
				} else if (windowWidth > 480) {
					mapOffset = 24;
				} else {
					mapOffset = 20;
				}
			}
						
			fullscreenMap.find('.map-canvas').css('width', windowWidth);
			fullscreenMap.css('margin-left', '-' + mapOffset + 'px');
			
		}
	};
	var onLoad = {
		init: function(){
			if (jQuery("#fiver-active").hasClass('has-map')) {
				map.init();
			}
		}
	};	
jQuery(window).load(onLoad.init);	
})(jQuery);
