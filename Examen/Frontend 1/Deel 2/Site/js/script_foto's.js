$ (document).ready(function() {

	$(".foto_filter a").on("click", filter);

	function filter(){
    	var foto = event.target.text;
    	$(this).addClass("foto_active");
    	$(".foto_filter a").not(this).removeClass("foto_active");

    	 if (foto == "Savoy King") {
                $(".savoy_king").fadeToggle();
                return false;
          }

          if (foto == "Junior Suites") {
                $(".junior_suites").fadeToggle();
                return false;
          }

          if (foto == "Savoy Suites") {
                $(".savoy_suites").fadeToggle();
                return false;
          }

          if (foto == "Savoy Penthouse") {
                $(".savoy_penthouse").fadeToggle();
                return false;
          }
      }

});