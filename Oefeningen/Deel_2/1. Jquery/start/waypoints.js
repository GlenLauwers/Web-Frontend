$(document).ready(function(){

	var puntEen = new Waypoint({
		element: document.getElementById('eerst'),
		handler: function(direction){

			if(direction == 'up'){
				$('div#eerst.content.intro>p').animate({backgroundColor:'red'},1000);
			}
			else{
				$('div#eerst.content.intro>p').animate({opacity:'1'},1000);
				$('div#eerst.content.intro>p').animate({backgroundColor:'yellow'},1000);
			}
		},
		offset: 100
	});

	var puntDrie = new Waypoint({
		element: document.getElementById('drie'),
		handler: function(){
			$('#drie-info').animate([{top:'0px'}, 25000, 'easeInOutElastic']);
			$('#king').delay(500).animate([{left:'200px'}, 25000, 'easeInOutElastic']);
		},
		offset: 100
	})
});