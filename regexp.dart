void main() {
  String aranacakMetin = 'xyz113axc-a.c';
  String aranacakMetin1 = 'zar zor zur zir';
  String aranacakMetin2 = '1abC 2bcD 3cdE';
  String aranacakMetin3 = '444 443 555 4444';
  // RegExp arama = RegExp(r"Arama Kuralları");
  //RegExp arama = RegExp(r"abc");// Metnin icinde 'abc' var mi diye kontrol edecek
  //RegExp arama = RegExp(r"a\.c");// Metnin icinde a-c arasina herhangi bir karakter olan varsa onlari getirecek.
  //RegExp arama = RegExp(r"1\d3");// Metnin icinde 1-3 arasinda sayi olan ifadeleri getirir.
  //RegExp arama = RegExp(r"z[aoui]r");// z ile basla r ile bitir arasinada a,o,u,i karakterlerinden biri varsa getir.
  //RegExp arama = RegExp(r"z[^ai]r");// z ile basla r ile bitir arasinada a,o,u,i karakterlerinden biri varsa getir.
  //RegExp arama = RegExp(r"[z[^ai]r]");// z ile basla r ile bitir arasinada a,o,u,i karakterlerinden biri varsa getir..
  //RegExp arama = RegExp(r"4{2,4}");// 4 ifadesi 2 ve 4 araliginda tekrar etmeli
  RegExp arama = RegExp(r"4+");// 4 Rakamı, 1 veya daha fazla olanları getir.
  //allMatches = Bütün eşleşmeler demek
  //arama kuralina gore istedigim yerde arar.
  //Liste olarak dondurmesini istedik.
  var eslesmeler = arama.allMatches(aranacakMetin3).toList();  
  eslesmeler.forEach((eslesme){
    //print(eslesme[0]) da yazabiliriz.
    print(eslesme.group(0));
  });
}


// "." isareti jokerdir butun ifadeleri isaret eder. Her karakter gelebilir.
// Ozel karakterleri cagirmak istersek isaretin basina "\" isareti koyuyoruz.
// "\d" ifadesi tum rakamlari ifade eder.
// "[]" Koseli parantez icine yazilan karakterler olabilir.
// "[^au]" Koseli parantez icine yazilan karakterlere us isareti eklersek o karakterler olmasin demek.
// [1-3]  1-3 arasinda dahil olmak uzere tum sayilar olabilir.
// [a-c]  a-c arasinda olacak bunlar dahil
// [b-d]  b-d arasinda olacak bunlar dahil
// [C-E]  C-E arasinda olacak bunarr dahil
// [1-3a-z]Koseli parantez icinde birden fazla karakter araligi yazmamiz mumkundur.
// 3{3} 3 rakami 3 kere tekrar edecek
// 4{2,4} 4 rakami 2 ve 4 arasi tekrar edecek.
// + karakteri koyarsak 1 veya daha cok olacagini ifade eder.
// * karakteri 0 veya daha cok olacagini ifade eder.