import 'package:flutter/material.dart';
import 'package:untitled1/TestSoru5.dart';
import 'TestSoru3.dart';
import 'TestSoru.dart';
import 'TestSoru2.dart';
import 'TestSoru4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Uygulamasi',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'BİLGİ TESTİ'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  get drawer => null;

  @override
  Widget build(BuildContext context) {

    final elevatedButtonStyle = ElevatedButton.styleFrom(
      primary: Colors.lightGreen,
    );

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text("flutter.com"),
                accountEmail: Text("flutter@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Image(image: AssetImage("images/picture.png"),
                width: 50,
                height: 50,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(image: AssetImage("images/quiz2.jpg"),
                fit: BoxFit.cover,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profil'),
              onTap: () {
                Navigator.of(context).
                push(MaterialPageRoute(builder: (BuildContext context) => ProfilSayfasi() ));
              },

            ),



            ListTile(
              leading: Icon(Icons.share),
              title: Text('Paylaş'),
              onTap: () {
                Navigator.of(context).
                push(MaterialPageRoute(builder: (BuildContext context) => PaylasSayfasi() ));
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Hakkında'),
              onTap: () {
                Navigator.of(context).
                push(MaterialPageRoute(builder: (BuildContext context) => BilgiEdinSayfasi() ));
              },
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Ayarlar'),
              onTap: () {
                Navigator.of(context).
                push(MaterialPageRoute(builder: (BuildContext context) => AyarlarSayfasi() ));
              },
            ),

          ],
        ),
      ),
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: [
          Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.white),
              textTheme: TextTheme().apply(bodyColor: Colors.white),
            ),
            child: PopupMenuButton<int>(
              color: Colors.indigo,
              onSelected: (item) => onSelected(context, item),
              itemBuilder: (context) => [

                PopupMenuItem<int>(
                  value: 3,
                  child: Row(
                    children: [
                      Icon(Icons.logout),
                      const SizedBox(width: 8),
                      Text("Çıkış yap"),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),

      body: Center(
        child: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(image: AssetImage("images/quiz.png")),
              
              new Padding(padding: EdgeInsets.all(20.0)),
              
              ElevatedButton(
                style: elevatedButtonStyle,
                  onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BilgiTesti();
                }));
              }, child: Text("Bilişim")),


              new Padding(padding: EdgeInsets.all(5.0)),

              ElevatedButton(
                  style: elevatedButtonStyle,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return BilgiTesti2();
                    }));
                  }, child: Text("Matematik")),


              new Padding(padding: EdgeInsets.all(5.0)),

              ElevatedButton(
                  style: elevatedButtonStyle,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return BilgiTesti3();
                    }));
                  }, child: Text("İngilizce")),


              new Padding(padding: EdgeInsets.all(5.0)),

              ElevatedButton(
                  style: elevatedButtonStyle,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return BilgiTesti4();
                    }));
                  }, child: Text("Sosyal Bilgiler")),


              new Padding(padding: EdgeInsets.all(5.0)),

              ElevatedButton(
                  style: elevatedButtonStyle,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return BilgiTesti5();
                    }));
                  }, child: Text("Fen Bilimleri")),

            ],
          ),
        ),
      ),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {

      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AyarlarSayfasi()),
        );
        break;

      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => PaylasSayfasi()),
        );
        break;

      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => BilgiEdinSayfasi()),
        );
        break;




      case 3:
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => LoginSayfasi()),
          (route) => false,
        );
    }
  }
}

class BilgiEdinSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Bilgi edinin!"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              child: Image(
                image: AssetImage('images/Info.png'),
              )),
        ),
      );
}

class PaylasSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Paylaş"),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: Center(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
              child: Image(
                image: AssetImage('images/share.jpg'),
              )),
        ),
      );
}

class AyarlarSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Ayarlar"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 16.0),
              child: Image(
                image: AssetImage('images/Settings.png'),
              )),
        ),
      );
}

class LoginSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Çıkış yap!"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
              child: Image(
                image: AssetImage('images/cikis.png'),
              )),
        ),
      );
}

class ProfilSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Profil"),
      centerTitle: true,
      backgroundColor: Colors.red,
    ),
    body: Center(
      child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 100.0, vertical: 20.0),
          child: Image(
            image: AssetImage('images/profil.png'),
          )),
    ),
  );
}



