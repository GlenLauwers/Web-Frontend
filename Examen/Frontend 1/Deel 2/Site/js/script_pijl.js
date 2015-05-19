$(document).ready(function(){
$(".pijl").click(function() 
      {
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
      });
});