$(document).ready(function(){
$("#bol").draggable();
$("#bol").on({mousedown:klik , mouseover:overgaan , mouseout:uitgaan});

function klik(){
	$("#bol p").text("vasthouden");
	$("#bol").animate({
		width: "100px", height: "100px"});
}

function overgaan(){
	$("#bol p").text("Sleep mij");
}

function uitgaan(){
	$("#bol p").text("gevallen");
	$("#bol").animate({width: "90px", height: "90px"});
}

	$(".blok").droppable({drop:function(event,ui){
		$(this).animate({backgroundColor: "red"}),
		$(".blok").not(this).anitmate({backgroundColor: "#333"})

	}});


});