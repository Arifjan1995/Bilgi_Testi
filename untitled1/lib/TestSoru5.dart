import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class TestSoru{
  var sorular=[
    "Sıcak gazlardan oluşan orta büyüklükte bir yıldızdır. Çevresine ısı ve ışık yayar. Yeryüzündeki yaşamın kaynağıdır. Verilen bilgiler, hangi gök cismine aittir?",
    "Güneş’e baktığımızda gözlerimizin zarar görmemesi için aşağıdaki aletlerden hangisini kullanmalıyız?",
    "Astronomi alanında kullanılan ilk teleskobu icat eden ve Güneş’in kendi ekseni etrafında dönme hareketi yaptığı sonucuna ulaşan bilim insanı kimdir?",
    "Günümüzde bilimin ulaştığı bilgilere göre, Güneş’te ortaya çıkan ısı ve ışığın kaynağı hangi iki maddedir?",
    "Aya ilk kim ayak basmıştır?",
    "Ay’ın yüzeyinde bulunan ve Ay yüzeyine çarpan gök taşlarının oluşturduğu büyük çukurlara _ _ _ denir.",
    "1-Ay’ın Dünya etrafında dolanma süresi. 2-Ay’ın kendi etrafında dönme süresi. 3-Dünya’nın kendi etrafında dönme süresi. 4-Dünya’nın Güneş etrafında dolanma süresi. Zaman dilimlerinden hangi ikisi birbirine eşittir?",
    "Ay'ın Dünya etrafındaki bir tam dolanma hareketinin süresi kaç gündür?",
    "Güneş kendi ekseni etrafında hangi yöne doğru döner?",
    "Güneş sisteminde kaç gezegen vardır?",
  ];

  var cevaplar = [
    ["Dünya", "Mars", "Güneş", "Ay"],
    ["Büyüteç", "Dürbün", "Cam", "Güneş gözlüğü"],
    ["Hans Lippershey", "Galileo Galilei", "Isaac Newton", "Johannes Kepler"],
    ["Hidrojen,Oksijen", "Argon,Helyum", "Oksijen,Azot", "Hidrojen,Helyum"],
    ["Neil Armstrong", "Yuriy Gagarin", "Elon Musk", "Edwin Aldrin"],
    ["Meteor", "Krater", "Mağara", "Leke"],
    ["1 ve 2", "2 ve 3", "3 ve 4", "1 ve 4"],
    ["1 ay", "28 gün", "27.3 gün", "25 gün"],
    ["Kuzeyden Güneye", "Batıdan Güneye", "Doğudan Batıya", "Batıdan Doğuya"],
    ["8", "7", "9", "10"],
  ];

  var dogruCevaplar = [
    "Güneş", "Güneş gözlüğü", "Galileo Galilei", "Hidrojen,Helyum", "Neil Armstrong", "Krater", "1 ve 2",
    "27.3 gün", "Batıdan Doğuya", "8"
  ];
}

var finalPuan = 0;
var soruNumara = 0;
var test = new TestSoru();





class BilgiTesti5 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BilgiTesti5State();
  }

}

class BilgiTesti5State extends State<BilgiTesti5>{
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
                  fontSize: 22.0,
                ),),

              new Padding(padding: EdgeInsets.all(10.0)),

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

