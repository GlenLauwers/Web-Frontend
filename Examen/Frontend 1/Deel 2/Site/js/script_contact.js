// JavaScript Document

function emailControleren()
	{
		var mailControle = document.formulier.femail.value;
		var aapWaar = mailControle.indexOf("@");
		var puntWaar = mailControle.lastIndexOf(".");
		
		if(aapWaar < 1 || (puntWaar - aapWaar < 2))
		{
			document.formulier.femail.focus();
			document.getElementById("fbpersoon").style.display = "block";
			document.getElementById("fbpersoon").innerHTML = "Mailadres is niet juist. vb: qwerty@ty.com";
			
			return false;
		}
		
		return true;
	}


function valideren(){
		/*alert('start met valideren')*/
		if(document.formulier.fnaam.value=="")
		{
			document.formulier.fnaam.focus();
			document.getElementById("fbpersoon").style.display = "block";
			document.getElementById("fbpersoon").innerHTML = "Naam moet ingevuld worden.";
			
			return false;
		}
		
		if(document.formulier.femail.value=="")
		{
			document.formulier.femail.focus();
			document.getElementById("fbpersoon").style.display = "block";
			document.getElementById("fbpersoon").innerHTML = "E-mail moet ingevuld worden.";
			
			return false;
			
		}else{
			var emailOK = emailControleren();
			if(emailOK == false)
			{
				return false;
			}
		}
		
		
		if(document.formulier.ftelefoon.value=="")
		{
			document.formulier.ftelefoon.focus();
			document.getElementById("fbpersoon").style.display = "block";
			document.getElementById("fbpersoon").innerHTML = "Telefoon moet ingevuld worden.";
			
			return false;
		}
		
		if(document.formulier.ftelefoon.value.length< 9)
		{
			document.formulier.ftelefoon.focus();
			document.getElementById("fbpersoon").style.display = "block";
			document.getElementById("fbpersoon").innerHTML = "Telefoon moet minimum 9 karakters hebben.";
			
			return false;
		}
		
		if(isNaN(document.formulier.ftelefoon.value))
		{
			document.formulier.ftelefoon.focus();
			document.getElementById("fbpersoon").style.display = "block";
			document.getElementById("fbpersoon").innerHTML = "Telefoon moet allemaal cijfers zijn. Vb: 00 32 488 88 88 88";
			
			return false;
		}
		
		
		if(document.formulier.fbericht.value=="")
		{
			document.formulier.fbericht.focus();
			document.getElementById("fbpersoon").style.display = "block";
			document.getElementById("fbpersoon").innerHTML = "Bericht moet ingevuld worden.";
			
			return false;
		}
		
}



