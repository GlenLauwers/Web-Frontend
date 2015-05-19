function meerGeld(munt) 
{
    //alert("ik heb op " + munt + " euro geklikt!");

    //waarde uit mijn gelscherm halen
    var waarde = parseFloat(document.getElementById("geldscherm").innerHTML);

    //optellen met munt ->knoppen
    var totaal = (waarde + munt).toFixed(2);

    //weerkgeven van totaal bedrag in id= geldscherm
    document.getElementById("geldscherm").innerHTML = totaal;

    document.getElementById("ticket").innerHTML = "je hebt " + munt + " euro ingegooid. Dat maakt een totaal van " + totaal + " euro.";

    beweegPijl(totaal);
    controle(totaal);
}

function beweegPijl(schuif)
{
	var schaal = schuif * 80;
	document.getElementById("pijl").style.left = schaal;
}

function opnieuw()
{
	beweegPijl(0);
	document.getElementById("geldscherm").innerHTML = 0;
	document.getElementById("ticket").innerHTML = "Gooi munten in!";
}

function controle(totaal){
	if(totaal >= 6)
	{
		beweegPijl(6);
		var wisselgeld = (totaal - 6).toFixed(2);
		document.getElementById("ticket").innerHTML += "je krijgt " + wisselgeld + " euro terug.";
	}
}