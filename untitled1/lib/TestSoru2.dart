import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class TestSoru{
  var sorular=[
    "Okunuşu _kırk sekiz milyon doksan bin beş yüz altı_ olansayı aşağıdakilerden hangisidir?",
    "876_417 sayısının okunuşu _sekiz yüz yetmiş altı milyon altı yüz dokuz bin dört yüz on yedi_ olduğuna göre yerine gelmesi gereken sayı aşağıdakilerden hangisidir?",
    "4 , 10 , 16 , 22 , K , L , M-> adımlar arasındaki farkı sabit olan sayı örüntüsünde K, L ve M sayılarının toplamı kaçtır?",
    "Kumbarasında 5 lira olan Nurşen, her hafta kumbarasına 3 lira eklerse 13. hafta sonunda kumbarasında kaç lira olur?",
    "34 008 + 79 094 işleminin sonucu kaçtır?",
    "486 × 209 işleminin sonucu kaçtır?",
    "84 213 – 7196 çıkarma işleminin tahmini sonucu aşağıdakilerden hangisi olabilir?",
    "Bir trende 1453 yolcu seyahat edecektir. Bu trende her bir vagon 49 yolcu alabildiğine göre en az kaç adet vagon gerekir?",
    "20 + 10 + 30 + 6 + 8 + 4 + 60 + 18 = ?",
    "3 - 10 - 17 - 24 - a - b - c -> a, b, c harfleri yerine hangi sayılar gelecektir?"
  ];

  var cevaplar = [
    ["480 900 056", "480 090 506", "48 090 506", "48 009 506"],
    ["976", "690", "960", "609"],
    ["102", "104", "110", "108"],
    ["44", "41", "38", "47"],
    ["113 102", "113 002", "103 112", "103 102"],
    ["145 314", "140 094", "101 574", "101 088"],
    ["80 000", "77 017", "76 000", "73 000"],
    ["29", "28", "30", "31"],
    ["156", "166", "158", "155"],
    ["31, 39, 45", "31, 38, 44", "32, 38, 45", "32, 38, 46"],

  ];

  var dogruCevaplar = [
    "48 090 506", "609", "102", "41", "113 102", "101 574", "77 017", "29", "156", "31, 38, 44",
  ];
}

var finalPuan = 0;
var soruNumara = 0;
var test = new TestSoru();





class BilgiTesti2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BilgiTesti2State();
  }

}

class BilgiTesti2State extends State<BilgiTesti2>{
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
                  fontSize: 23.0,
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

