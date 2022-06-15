import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class TestSoru{
  var sorular=[
    "Bilgisayarı oluşturan elle tutulup, gözle görebileceğimiz bütün fiziksel parçalara ne ad verilir?",
    "Bilgisayarın beyni olan donanım aşağıdakilerden hangisidir?",
    "Bilgisayarın çalışmasını sağlayan elle tutamadığımız programların tümüne ne ad verilir?",
    "Aşağıdakilerden hangisi dosya ve klasörlere isin verirken kullanılmayan karakterlerden değildir?",
    "Aşağıdakilerden hangisi Türkiyenin ürettiği yerli işletim sistemidir?",
    "Aşağıdaki uygulama yazılımlarından hangisinde internete girmemizi sağlar?",
    "Aşağıdakilerden hangisi harici(dış) donanım birimi değildir?",
    "Silme işlemi için klavyeden hangi tuşa basılır?",
    " Bilişim teknolojilerini kullanırken uyulması ve kaçınılması gereken davranışlara ne denir?",
    "Bilgisayar açıldıktan sonra karşımıza gelen ilk ekrana ne denir?"
  ];

  var cevaplar = [
    ["Anakart", "Donanım", "Yazılım", "İşletim Sistemi"],
    ["Sabit Disk", "Kasa", "İşlemci", "Anakart"],
    ["Yazılım", "Donanım", "Kasa", "Anakart"],
    ["*", "/", "?", "+"],
    ["Windows", "Android", "Pardus", "Linux"],
    ["Google Chrome", "Paint", "Adobe Reader", "Media Player"],
    ["Klavye", "Fare", "Anakart", "Yazıcı"],
    ["Enter", "Delete", "Kontrol", "Caps lock"],
    ["Telif hakkı", "Bilişim Etiği", "Dijital vatandaşlık", "Bilişim suçu"],
    ["Başlat menüsü", "Klasör penceresi", "Masaüstü", "Görev çubuğu"],
  ];

  var dogruCevaplar = [
    "Donanım", "Anakart", "Yazılım", "?", "Pardus", "Google Chrome", "Anakart",
    "Delete", "Bilişim Etiği", "Masaüstü"
  ];
}

var finalPuan = 0;
var soruNumara = 0;
var test = new TestSoru();





class BilgiTesti extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new BilgiTestiState();
  }

}

class BilgiTestiState extends State<BilgiTesti>{
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
               new Padding(padding: EdgeInsets.all(5.0)),
               
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
                 fontSize: 25.0,
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
               "Sonuçlar",
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

