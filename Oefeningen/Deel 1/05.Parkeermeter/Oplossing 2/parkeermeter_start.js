function meerGeld(munt) {
    //console.log("ik heb op " + munt + " euro geklikt!");
    
    var waarde = parseFloat(document.getElementById("geldscherm").innerHTML);
    // parseFloat = omzetten van een string naar een getal, altijd beginnen met een getal
    // waarde uit mijn geldscherm halen

    var totaal = (waarde + munt).toFixed(2);
    // toFixed(x): getallen na de komma berperken tot x
    // optellen met munt -> knoppen

    var tijdspanne = totaal * 10;

    document.getElementById("geldscherm").innerHTML = totaal;
    // weergeven van totaal bedrag in id=geldscherm
     document.getElementById("ticket").innerHTML = 
        "Je hebt " + munt + " euro ingegooid. <br> Dat maakt een totaal van " + totaal + " euro.";  

    beweegPijl(totaal);
    controle(totaal,tijdspanne);
    hoelang(tijdspanne);
}

function beweegPijl(schuif) {
    var schaal = 10/* 10px opschuiven. Naar de 0 */ + (schuif * 80) ; // 80 pix. per 10 min. = 480 (volledige breedte van de afbeelding) /6,
    document.getElementById("pijl").style.left = schaal;
}

function opnieuw() {
    beweegPijl(0); // pijl terug naar beginpunt brengen
    document.getElementById("geldscherm").innerHTML=0; //bedrag op 0
    document.getElementById("ticket").innerHTML = 
    "Gooi munten in!"; // tekst aanpassen
}

function controle(totaal, tijdspanne) {

    if(totaal >= 6) {
        beweegPijl(6);
        var wisselgeld = (totaal - 6).toFixed(2);
        document.getElementById("ticket").innerHTML  += 
        "<br> Je krijgt " + wisselgeld + " euro terug!" + "<br> Je mag max 60min parkeren. ";
    } else {
        document.getElementById("ticket").innerHTML += 
        "<br>Je mag " + tijdspanne + " minuten parkeren.";
    }
}

function hoelang(tijdspanne){
    var moment_nu = new Date();
    var totaal_tijd = tijdspanne * 60 *1000; // Omzetten naar milliseconden. 
    var einde_parkeren = new Date();
    einde_parkeren.setTime(einde_parkeren.getTime() + totaal_tijd);

    document.getElementById("ticket").innerHTML += 
        '<br>Het is nu ' + moment_nu.toLocaleTimeString() + '.'+ 
        '<br>Je mag parkeren tot ' + einde_parkeren.toLocaleTimeString() + '.';
}
