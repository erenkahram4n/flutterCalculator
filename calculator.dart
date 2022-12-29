import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  num sayi1 = 0, sayi2 = 0;
  String sonuc = "";
  String islemAdi = "";

  sayiTopla() {
    setState(() {
      if (text1.text != "" || text2.text != "") {
        sayi1 = num.parse(text1.text);
        sayi2 = num.parse(text2.text);
        islemAdi = "Toplama İşlemi Yapıldı!";
        sonuc =
            "İşleminizin sonucu = $sayi1 + $sayi2 = ${(sayi1 + sayi2).toString()}";
        text1.clear();
        text2.clear();
      } else {
        sonuc = "Lütfen 1. ve 2. sayıyı boş bırakmayınız!";
        islemAdi = "";
      }
    });
  }

  sayiCikar() {
    setState(() {
      if (text1.text != "" || text2.text != "") {
        sayi1 = num.parse(text1.text);
        sayi2 = num.parse(text2.text);
        islemAdi = "Çıkarma İşlemi Yapıldı!";
        sonuc =
            "İşleminizin sonucu = $sayi1 - $sayi2 = ${(sayi1 - sayi2).toString()}";
        text1.clear();
        text2.clear();
      } else {
        sonuc = "Lütfen 1. ve 2. sayıyı boş bırakmayınız!";
        islemAdi = "";
      }
    });
  }

  sayiCarp() {
    setState(() {
      if (text1.text != "" || text2.text != "") {
        sayi1 = num.parse(text1.text);
        sayi2 = num.parse(text2.text);
        islemAdi = "Çarpma İşlemi Yapıldı!";
        sonuc =
            "İşleminizin sonucu = $sayi1 x $sayi2 = ${(sayi1 * sayi2).toString()}";
        text1.clear();
        text2.clear();
      } else {
        sonuc = "Lütfen 1. ve 2. sayıyı boş bırakmayınız!";
        islemAdi = "";
      }
    });
  }

  sayiBol() {
    setState(() {
      if (text1.text != "" || text2.text != "") {
        sayi1 = num.parse(text1.text);
        sayi2 = num.parse(text2.text);
        islemAdi = "Bölme İşlemi Yapıldı!";
        sonuc =
            "İşleminizin sonucu = $sayi1 / $sayi2 = ${(sayi1 / sayi2).toString()}";
        text1.clear();
        text2.clear();
      } else {
        sonuc = "Lütfen 1. ve 2. sayıyı boş bırakmayınız!";
        islemAdi = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    "Hesap Makinesine",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Hoşgeldiniz!",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 2,
              child: Center(
                  child: Text(
                "İşlemini yapmak istediğiniz sayıları aşağıdaki kutucuklara girerek daha sonrasında işlem butonuna tıklayarak sonucunu görebilirsiniz",
                style: TextStyle(
                  fontSize: 15,
                ),
              ))),
          Text(islemAdi),
          const SizedBox(
            height: 10,
          ),
          Text(sonuc),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: text1,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.numbers_outlined,
                ),
                // focusColor: Color(Colors.deepOrange),
                labelText: "1. Sayıyı Giriniz",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: BorderSide(color: Colors.blue),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: text2,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.numbers_sharp),
                labelText: "2. Sayıyı Giriniz",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: BorderSide(color: Colors.blue))),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: sayiTopla,
                    child: Text("Topla"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black)),
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: sayiCikar,
                    child: Text("Çıkar"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black)),
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: sayiCarp,
                    child: Text("Çarp"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black)),
                  )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: sayiBol,
                    child: Text("Böl"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.black)),
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
