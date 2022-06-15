import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class TestSoru{
  var sorular=[
    "Geçmiş uygarlıklardan kalan kalıntı ve eserlere tarihî eser denir. Buna göre aşağıdakilerden hangisi tarihi eserlere örnek olarak gösterilebilir?",
    "Zeybek, halay, horon karşılama vb. oyunlar hangi kültürel unsur içerisinde yer almaktadır?",
    " Aşağıdakilerden hangisi milletçe bir arada yaşamamızda önemli bir yere sahip olan, birlik ve beraberliğimizi güçlendiren kültürel öğelerimizden biri değildir?",
    "Ülke olarak tarihî eserler yönünden oldukça zengin bir mirasa sahibiz. Aşağıdakilerden hangisi sahip olduğumuz tarihî eserlerden değildir?",
    "Aşağıdakilerden hangisi insanların yoğun olarak yaşadığı yerler arasında gösterilemez?",
    "Bitki örtüsü genellikle ormandır. Bu nedenle özellikle kırsal kesimdeki evlerin yapı malzemesi ahşaptır. Buna göre ahşap yapıların aşağıdaki iklim türlerinden hangisinde daha yaygın olması beklenir?",
    "Olumsuz hava şartları aşağıda verilen ekonomik faaliyetlerden hangisi üzerinde en az etkilidir?",
    "Karalar üzerinde bulunan çukurlara suların birikmesiyle oluşan yer şeklidir. Verilen tanım ile aşağıdaki seçenekler eşleştirildiğinde hangi seçenek dışarıda kalır?",
    "Aşağıdakilerden hangisi yeryüzü şekillerinin yapısını, dağılışını ve yükseltilerini gösteren haritalardır?",
    "Turunçgiller kış aylarında sıcaklığın çok düştüğü yerlerde yetişemez. Kışların ılık geçtiği yerlerde yetiştirilir. Bu durum üzerinde aşağıdakilerden hangisinin etkili olduğu söylenir?",
  ];

  var cevaplar = [
    ["Orman", "Mağara", "Kale", "Şelale"],
    ["Yemekler", "Düğünler", "Halk oyunları", "El sanatları"],
    ["Kına geceleri", "Bahar şenlik", "Kurban bayramı", "Şükran günü"],
    ["Topkapı Sarayı", "Selimiye Camii", "Mevlana Müzesi", "Damlataş mağara"],
    ["Ova", "Plato", "Nehir kıyısı", "Dik yamaçlar"],
    ["Step iklimi", "Akdeniz iklimi", "Karadeniz iklimi", "Karasal iklim"],
    ["Tarım", "Madencilik", "Hayvancılık", "Turizm"],
    ["Göl", "Vadi", "Ova", "Dağ"],
    ["Fiziki", "Siyasi", "Özel", "Beşeri"],
    ["Bitki örtüsünün", "Yer şeklinin", "Yüz ölçümünün", "Iklimin"],
  ];

  var dogruCevaplar = [
    "Kale", "Düğünler", "Kurban bayramı", "Damlataş mağara", "Plato", "Karadeniz iklimi", "Madencilik",
    "Göl", "Fiziki", "Iklimin",
  ];
}

var finalPuan = 0;
var soruNumara = 0;
var test = new TestSoru();





class BilgiTesti4 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BilgiTesti4State();
  }

}

class BilgiTesti4State extends State<BilgiTesti4>{
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: ()async => false,
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
            title: Text(
              "Bilgi Testi",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            leading: BackButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: Colors.indigo
        ),
        body:  new Container(
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.topCenter,
          child: new Column(
            children: <Widget>[
              new Padding(padding: EdgeInsets.all(10.0)),

              new Container(
                alignment: Alignment.centerRight,
                child:  new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    new Text("Sorular ${soruNumara + 1} : ${test.sorular.length}",
                      style: new TextStyle(
                          fontSize: 22.0
                      ),),

                    new Text("Puan $finalPuan",
                      style: new TextStyle(
                          fontSize: 22.0
                      ),),
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.all(10.0)),
              new Text(test.sorular[soruNumara],

                style: new TextStyle(
                  fontSize: 20.0,
                ),),

              new Padding(padding: EdgeInsets.all(20.0)),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  //button 1
                  new MaterialButton(
                    minWidth: 150.0,
                    height: 80.0,
                    color: Colors.green,
                    onPressed: (){

                      if(test.cevaplar[soruNumara][0] ==test.dogruCevaplar[soruNumara]){
                        debugPrint("Doğru");
                        finalPuan++;
                      }else{
                        debugPrint("Yanlış");
                      }
                      soruGuncelle();

                    },
                    child: new Text(test.cevaplar[soruNumara][0],
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ), ),
                  ),

                  //button2
                  new MaterialButton(
                    minWidth: 150.0,
                    height: 80.0,
                    color: Colors.green,
                    onPressed: (){

                      if(test.cevaplar[soruNumara][1] ==test.dogruCevaplar[soruNumara]){
                        debugPrint("Doğru");
                        finalPuan++;
                      }else{
                        debugPrint("Yanlış");
                      }
                      soruGuncelle();

                    },
                    child: new Text(test.cevaplar[soruNumara][1],
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ), ),
                  ),
                ],
              ),

              new Padding(padding: EdgeInsets.all(20.0)),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  //button 3
                  new MaterialButton(
                    minWidth: 150.0,
                    height: 80.0,
                    color: Colors.green,
                    onPressed: (){

                      if(test.cevaplar[soruNumara][2] ==test.dogruCevaplar[soruNumara]){
                        debugPrint("Doğru");
                        finalPuan++;
                      }else{
                        debugPrint("Yanlış");
                      }
                      soruGuncelle();

                    },
                    child: new Text(test.cevaplar[soruNumara][2],
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ), ),
                  ),

                  //button4
                  new MaterialButton(
                    minWidth: 150.0,
                    height: 80.0,
                    color: Colors.green,
                    onPressed: (){

                      if(test.cevaplar[soruNumara][3] ==test.dogruCevaplar[soruNumara]){
                        debugPrint("Doğru");
                        finalPuan++;
                      }else{
                        debugPrint("Yanlış");
                      }
                      soruGuncelle();

                    },
                    child: new Text(test.cevaplar[soruNumara][3],
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ), ),
                  ),
                ],
              ),

              new Padding(padding: EdgeInsets.all(20.0)),

              new Container(
                alignment: Alignment.bottomCenter,
                child: new MaterialButton(
                  color: Colors.red,
                  minWidth: 240.0,
                  height: 40.0,
                  onPressed: resetTest,
                  child: new Text("Çıkış",
                    style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.white
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  void resetTest(){
    setState((){
      Navigator.pop(context);
      finalPuan = 0;
      soruNumara = 0;
    });
  }

  void soruGuncelle(){
    setState((){
      if (soruNumara == test.sorular.length - 1){
        Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Summary(puan: finalPuan)));
      }
      else{
        soruNumara++;
      }
    });
  }

}

class Summary extends StatelessWidget{
  final int puan;
  Summary({Key? key, required this.puan}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: ()async=> false,
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
            title: Text(
              "Bilgi Testi",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            leading: BackButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            backgroundColor: Colors.indigo
        ),

        body: new Container(
          alignment: Alignment.bottomCenter,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new Text ("Kazanılan Puan: $puan",
                style: new TextStyle(
                    fontSize: 30.0
                ), ),

              new Padding(padding: EdgeInsets.all(10.0)),

              new MaterialButton(
                minWidth: 90.0,
                height: 50.0,
                color: Colors.red,
                onPressed: (){
                  soruNumara = 0;
                  finalPuan = 0;
                  Navigator.pop(context);
                },
                child: new Text("Yeni Test",
                  style: new TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }

}

