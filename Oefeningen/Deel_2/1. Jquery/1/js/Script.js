$(document).ready(function(){
$("button").on({ click:toggle, mouseover:achtergrondA, mouseout:achtergrondB });

function toggle (){
	$("img").fadeToggle();
}

function achtergrondA (){
	$("button").css( "color" , "#F00")
}

function achtergrondB (){
	$("button").css( "color" , "black")
}


$(".knoppen ul li a").smoothScroll({
	speed: 1000,
	afterScroll: achtergrondA(),
});

});
