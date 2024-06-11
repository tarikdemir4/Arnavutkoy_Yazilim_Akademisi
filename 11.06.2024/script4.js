/*let random =Math.random(); //0 la 1 arasında rastgele sayı üretir.
let min=Math.min(1,2,3,4,5,6,7,8,9,0);
let max =Math.max(1,2,3,4,5,6,7,8,9,0);
let round=Math.round(3.5);

alert(round);
*/

function hesapmakinesi() {
  let hesapmakinesi = document.getElementById("hesapmakinesi");
  hesapmakinesi.style.display = "none";
  let hesapmakinesiDurum = false;
}

function hesapla() {
  let inputhesap = document.getElementById("inputhesap");
  let sonuc = eval(inputhesap.value);
  inputhesap.value = sonuc;
}
/* function uyeekle(){
    let uyeler=array(
        {
            ad:"ali",
            soyad:"Veli",
            email:"ahmet@gmail.com",
            cinsiyet:"Erkek"
        },
        {
            ad:"Mehmet",
            soyad:"Veli",
            email:"ahmet@gmail.com",
            cinsiyet:"Erkek"
        },    
            {
            ad:"Tarık",
            soyad:"Veli",
            email:"ahmet@gmail.com",
            cinsiyet:"Erkek"
        }
    );

    let alldata3=document.getElementsByClassName("alldata3") 
    for (let i = 0; i < uyeler.length; i++) {
        alldata3[0].innerHTML += `<tr>
        <td>${uyeler[i].ad}</td>
        </tr>`
        
    }

}*/

document.addEventListener("DOMContentLoaded", function () {
  document.querySelector(".btn-basla").addEventListener("click", function () {
    var yazi = "Merhaba";
    setTimeout(function () {
      document.querySelector(".yaz1").innerHTML = yazi;
    }, 3000);
  });

  document.querySelector(".btn-basla2").addEventListener("click", function () {
    var sayi = 0;
    setInterval(function () {
      sayi++;
      document.querySelector(".yaz2").innerHTML = sayi;
    }, 1000);
  });
});
