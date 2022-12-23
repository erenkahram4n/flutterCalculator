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

  sayiTopla() {
    setState(() {
      if (text1.text != "" || text2.text != "") {
        sayi1 = num.parse(text1.text);
        sayi2 = num.parse(text2.text);
        sonuc = "İşleminizin sonucu = ${(sayi1 + sayi2).toString()}";
      } else {
        sonuc = "Lütfen 1. ve 2. sayıyı boş bırakmayınız!";
      }
    });
  }

  sayiCikar() {
    setState(() {
      if (text1.text != "" || text2.text != "") {
        sayi1 = num.parse(text1.text);
        sayi2 = num.parse(text2.text);
        sonuc = "İşleminizin sonucu = ${(sayi1 - sayi2).toString()}";
      } else {
        sonuc = "Lütfen 1. ve 2. sayıyı boş bırakmayınız!";
      }
    });
  }

  sayiCarp() {
    setState(() {
      if (text1.text != "" || text2.text != "") {
        sayi1 = num.parse(text1.text);
        sayi2 = num.parse(text2.text);
        sonuc = "İşleminizin sonucu = ${(sayi1 * sayi2).toString()}";
      } else {
        sonuc = "Lütfen 1. ve 2. sayıyı boş bırakmayınız!";
      }
    });
  }

  sayiBol() {
    setState(() {
      if (text1.text != "" || text2.text != "") {
        sayi1 = num.parse(text1.text);
        sayi2 = num.parse(text2.text);
        sonuc = "İşleminizin sonucu = ${(sayi1 / sayi2).toString()}";
      } else {
        sonuc = "Lütfen 1. ve 2. sayıyı boş bırakmayınız!";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$sonuc"),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: text1,
            decoration: InputDecoration(
              hintText: "1. Sayıyı Giriniz",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: text2,
            decoration: InputDecoration(
                hintText: "2. Sayıyı Giriniz",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: sayiTopla, child: Text("Topla")),
              ElevatedButton(onPressed: sayiCikar, child: Text("Çıkar")),
              ElevatedButton(onPressed: sayiCarp, child: Text("Çarp")),
              ElevatedButton(onPressed: sayiBol, child: Text("Böl")),
            ],
          )
        ],
      )),
    );
  }
}
