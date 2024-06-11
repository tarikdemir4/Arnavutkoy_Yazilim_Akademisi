//let isim=prompt("isminizi giriniz");
//document.write(isim);
function hesapla(){
    let boy=prompt("Boyunuzu Giriniz(cm)");
    let kilo=prompt("Kilonuzu Giriniz(kg)");
    let sonuc=(kilo/(boy*boy))*10000;

    let endexresult = document.getElementById("endexresult");
    let endextext = document.getElementById("endextext");
    let endeximg = document.getElementById("endeximg");
    endexresult.innerHTML="Sonuc:" +sonuc.toFixed(2);


    endeximg.style.width="250px";

    if (sonuc<18.5) {
        endextext.innerHTML="Zayıf";
        endeximg.src="zayif.png"
        endextext.style.color="Purple"
    } else if(sonuc<=25){
        
        endextext.innerHTML="Normal";
        endeximg.src="normal.png"
        endextext.style.color="Green"
    }else if(sonuc<=30){
        
        endextext.innerHTML=" Kilolu";
        endeximg.src=" kilolu.png"
        endextext.style.color="red"
    }else if(sonuc>40) {
        
        endextext.innerHTML="Obez";
        endeximg.src="obez.png"
        endextext.style.color="red"
    }
    
}