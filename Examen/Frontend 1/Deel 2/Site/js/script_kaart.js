var el = $('#map');
var map;

function enableScrollingWithMouseWheel() {
    map.setOptions({ scrollwheel: true });
}

function disableScrollingWithMouseWheel() {
    map.setOptions({ scrollwheel: false });
}

function init() {
    map = new google.maps.Map(el[0], {
        zoom: 15,
        center: new google.maps.LatLng(-4.612319, 55.430895),
        scrollwheel: false,
    });

    google.maps.event.addListener(map, 'mousedown', function(){
        enableScrollingWithMouseWheel()
    });

	var marker = new google.maps.Marker({  
  	position: new google.maps.LatLng(-4.612319, 55.430895),  
  	map: map,  
  	title: 'Savoy Seychelles Resort & Spa',  
  	clickable: true,  
  	icon: 'afbeeldingen/logo_savoy copy.png',
	}); 
}

google.maps.event.addDomListener(window, 'load', init);

$('body').on('mousedown', function(event) {
    var clickedInsideMap = $(event.target).parents('#map').length > 0;

    if(!clickedInsideMap) {
        disableScrollingWithMouseWheel();
    }
});

$(window).scroll(function() {
    disableScrollingWithMouseWheel();
});