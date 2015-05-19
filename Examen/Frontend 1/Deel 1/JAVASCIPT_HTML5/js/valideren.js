function valideren(){

	var totaal1 = 0;
	var totaal2 = 0;
	var totaal3 = 0;
	var totaal4 = 0;
	var totaal5 = 0;
	var totaal6 = 0;
	var totaal7 = 0;
	var totaal8 = 0;

	if( document.formulier.f_antwoord1.value=="Batman" )
    		{
    			var totaal1 = 0;
    			totaal1 = totaal1 + 1;
    		}

    if ( document.formulier.f_antwoord2.value=="Congratulations" )
    		{
    			var totaal2 = 0;
    			totaal2 = totaal2 = 1;
    		}

    if ( document.formulier.f_antwoord3.value=="Daltons" )
    		{
    			var totaal3 = 0;
    			totaal3 = totaal3 = 1;
    		}

    if ( document.formulier.f_antwoord4.value=="Italian" )
    		{
    			var totaal4 = 0;
    			totaal4 = totaal4 = 1;
    		}

    if ( document.formulier.f_antwoord5.value=="Suske en Wiske" )
    		{
    			var totaal5 = 0;
    			totaal5 = totaal5 = 1;
    		}

    if ( document.formulier.f_antwoord6.value=="Robbedoes" )
    		{
    			var totaal6 = 0;
    			totaal6 = totaal6 = 1;
    		}

    if ( document.formulier.f_antwoord7.value=="Wonderwoman" )
    		{
    			var totaal7 = 0;
    			totaal7 = totaal7 = 1;
    		}

    if ( document.formulier.f_antwoord8.value=="Wednesday" )
    		{
    			var totaal8 = 0;
    			totaal8 = totaal8 = 1;
    		}

    document.getElementById("punten").innerHTML= totaal1 + totaal2 + totaal3 + totaal4 + totaal5 + totaal6 + totaal7 + totaal8 + "/8 juist.";
    return false;
}