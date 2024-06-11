function hesapla() {
  let boy = prompt("Boyunuzu Giriniz(cm)");
  let kilo = prompt("Kilonuzu Giriniz(kg)");
  let kilonumber = parseInt(kilo);
  let boynumber = parseInt(boy);
  let cinsiyet = prompt("Cinsiyetinizi Giriniz(kadın/erkek)");
  let yas = prompt("Yaşınızı Giriniz");
  let sonuc = (kilonumber / (boynumber * boynumber)) * 10000;

  let endexresult = document.getElementById("endexresult");
  let endextext = document.getElementById("endextext");
  let endeximg = document.getElementById("endeximg");
  endexresult.innerHTML = "Sonuc:" + sonuc.toFixed(2);

  endeximg.style.width = "250px";


  if (isNaN(boynumber) || isNaN(kilonumber)) {
    alert(
      (endextext.innerText = "Lütfen geçerli boy(cm) / kilo(kg) değeri giriniz")
    );
  }


  if (yas <= 50 && cinsiyet === "erkek") {
    alert("Çocuksunuz");
  } else if (yas > 50 && cinsiyet === "erkek") {
    alert("Olgunsunuz");
  } else if (yas < 50 && cinsiyet === "kadın") {
    alert("Gençsiniz");
  } else if (yas >= 50 && cinsiyet === "kadın") {
    alert("Olgunsunuz");
  }

  if (cinsiyet === "kadın") {
    if (sonuc < 16) {
      endextext.innerHTML = "Zayıf";
      endeximg.src = "zayif.png";
      endextext.style.color = "Purple";
    } else if (sonuc <= 22) {
      endextext.innerHTML = "Normal";
      endeximg.src = "normal.png";
      endextext.style.color = "Green";
    } else if (sonuc <= 27) {
      endextext.innerHTML = " Kilolu";
      endeximg.src = " kilolu.png";
      endextext.style.color = "red";
    } else if (sonuc <= 32) {
      endextext.innerHTML = "Obez";
      endeximg.src = "obez.png";
      endextext.style.color = "red";
    } else if (sonuc > 32) {
      endextext.innerHTML = "Aşırı Obez";
      endeximg.src = "obez.png";
      endextext.style.color = "red";
    }
  } else if (cinsiyet === "erkek") {
    if (sonuc < 18) {
      endextext.innerHTML = "Zayıf";
      endeximg.src = "zayif.png";
      endextext.style.color = "Purple";
    } else if (sonuc <= 25) {
      endextext.innerHTML = "Normal";
      endeximg.src = "normal.png";
      endextext.style.color = "Green";
    } else if (sonuc <= 30) {
      endextext.innerHTML = " Kilolu";
      endeximg.src = " kilolu.png";
      endextext.style.color = "red";
    } else if (sonuc <= 35) {
      endextext.innerHTML = "Obez";
      endeximg.src = "obez.png";
      endextext.style.color = "red";
    } else if (sonuc > 35) {
      endextext.innerHTML = "Aşırı Obez";
      endeximg.src = "obez.png";
      endextext.style.color = "red";
    }
  } else {
    alert(
      (endexresult.innerHTML =
        "Girdiğiniz cinsiyet bilgileri(kadın/erkek) hatalı!Lütfen bilgileri kontrol edip tekrar deneyin.")
    );
  }
}
