import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class TestSoru{
  var sorular=[
    "We ___ cereal for breakfast yesterday.",
    "Where ___ you yesterday at 5 p.m?",
    "I ___ at 10 a.m on Sunday morning.",
    "I ___ him an email on Monday.",
    "It's ten past nine.",
    "9:55 ?",
    "forty-five-thousand and thirty-two",
    "There are three ___ (man)in the cafe.",
    "There are a lot of ___ (person)in the museum.",
    "I ___ walk to school. I sometimes go by bus.",
  ];

  var cevaplar = [
    ["had", "has", "have", "eating"],
    ["is", "are", "am", "isn't"],
    ["got up", "gettin up", "wake up", "woke up"],
    ["sent", "write", "read", "send"],
    ["9:10", "10:09", "9:09", "10:10"],
    ["It's five past ten", "It's five to ten", "It's two to ten", "It's fıve to nine"],
    ["45 023", "45 033", "45 032", "45 320"],
    ["woman", "man", "women", "men"],
    ["people", "children", "women", "men"],
    ["never", "running", "go", "usually"],
  ];

  var dogruCevaplar = [
    "had", "are", "wake up", "send", "9:10", "It's five to ten", "45 032",
    "men", "people", "usually"
  ];
}

var finalPuan = 0;
var soruNumara = 0;
var test = new TestSoru();





class BilgiTesti3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BilgiTesti3State();
  }

}

class BilgiTesti3State extends State<BilgiTesti3>{
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
              new Padding(padding: EdgeInsets.all(20.0)),

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
              new Padding(padding: EdgeInsets.all(20.0)),
              new Text(test.sorular[soruNumara],

                style: new TextStyle(
                  fontSize: 30.0,
                ),),

              new Padding(padding: EdgeInsets.all(20.0)),

              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  //button 1
                  new MaterialButton(
                    minWidth: 150.0,
                    height: 100.0,
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
                    height: 100.0,
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
                    height: 100.0,
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
                    height: 100.0,
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

