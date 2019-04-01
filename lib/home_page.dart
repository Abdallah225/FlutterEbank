import 'package:flutter/material.dart';

const String _AccountName = 'Diarrassouba Abdoulaye';
const String _AccountEmail = 'diarrassoubaabdoulaye73@gmail.com';
const String _AccountAbbr = 'DA';

class HomePage extends StatelessWidget {
  static String tag = 'home_page';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My mobile Banque',
      theme: new ThemeData(
        primaryColor: Colors.blue[900]
      ),
      home: new KeeperDrawer(),
      // Routes pour le menu deroulant (liste)
      routes: <String, WidgetBuilder> {
        Reglages.routeName : (BuildContext context) => new Reglages(),
        Information.routeName : (BuildContext context) => new Information(),
        Langue.routeName : (BuildContext context) => new Langue(),
        Deconnexion.routeName : (BuildContext context) => new Deconnexion(),
      } 
    );
  }
}

class KeeperDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[350],
      drawer: new Drawer(
        child: new ListView(
          padding: const EdgeInsets.only(top: 0.0),
          children: <Widget>[
            new UserAccountsDrawerHeader(
              
              accountName: const Text(_AccountName),
              accountEmail: const Text(_AccountEmail),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text(_AccountAbbr)
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  onTap: () => _onTapOtherAccounts(context),
                )
	            ]
            ),
            new ListTile(
              leading: new Icon(Icons.language),
              title: new Text('Langue'),
               onTap: () {
                Navigator.of(context).pop();
                // Navigator.of(context).pushNamed(Notes.routeName) won't have
                // transition animation and can be used for modal forms
                // Which we will see in Forms & Validation.
                //Navigator.of(context).pushNamed(information.routeName);
                
                // To add transition we are using PageRouteBuilder
                Navigator.of(context).push(
                  new PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __) {
                      return new Langue();
                    },
                    transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
                      return new FadeTransition(
                        opacity: animation,
                        child: child
                      );
                    }
                  )
                );
              },
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.help),
            title: new Text("Plus d'information"),
              onTap: () {
                
                Navigator.of(context).pop();
                // Navigator.of(context).pushNamed(Notes.routeName) won't have
                // transition animation and can be used for modal forms
                // Which we will see in Forms & Validation.
                //Navigator.of(context).pushNamed(information.routeName);
                
                // To add transition we are using PageRouteBuilder
                Navigator.of(context).push(
                  new PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __) {
                      return new Information();
                    },
                    transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
                      return new FadeTransition(
                        opacity: animation,
                        child: child
                      );
                    }
                  )
                );
              },
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.settings),
              title: new Text('Paramètres'),
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.of(context).pushNamed(Notes.routeName) won't have
                // transition animation and can be used for modal forms
                // Which we will see in Forms & Validation.
                // Navigator.of(context).pushNamed(Reglages.routeName);
                
                // To add transition we are using PageRouteBuilder
                Navigator.of(context).push(
                  new PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __) {
                      return new Reglages(); 
                    },
                    transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
                      return new FadeTransition(
                        opacity: animation,
                        child: child
                      );
                    }
                  )
                );
              },
            ),
            new Divider(),
            new ListTile(
              leading: new Icon(Icons.settings_power),
              title: new Text('Deconnexion'),
               onTap: () {
                Navigator.of(context).pop();
                // Navigator.of(context).pushNamed(Notes.routeName) won't have
                // transition animation and can be used for modal forms
                // Which we will see in Forms & Validation.
                // Navigator.of(context).pushNamed(Reglages.routeName);
                
                // To add transition we are using PageRouteBuilder
                Navigator.of(context).push(
                  new PageRouteBuilder(
                    pageBuilder: (BuildContext context, _, __) {
                      return new Deconnexion(); 
                    },
                    transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
                      return new FadeTransition(
                        opacity: animation,
                        child: child
                      );
                    }
                  )
                );
              },
            ),
            // ... collapsed
          
          ]
        )
      ),
      //travail sur le menu du haut 
      appBar: new AppBar(
        bottom: PreferredSize(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
          child: new Center(child: Container(
            child: Text(
            "COMPTE ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          ),)
        ),
        preferredSize: Size(0.0, 10.0),
      ),
    ),
       //body du container qui regroupe les differents cards
      body: Container( 
        child: GridView.count(
          //scrollDirection: Axis.vertical,
          crossAxisCount: 2,
         padding: EdgeInsets.all(10.0),
          childAspectRatio: 10.0/ 10.0,
          children: <Widget>[
            Card(clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 30.0/ 14.0,
              child: Image.asset('assets/money.png'),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(25, 25, 16, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Transfert d'argent"),
                    SizedBox(height: 10.0,)
                  ],
                ),
              ),
            ],
            ),
            ),
            Card(clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 30.0/ 14.0,
              child: Image.asset('assets/consultant.png'),),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 25, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Consultation Solde'),
                    SizedBox(height: 1.0,)
                  ],
                ),
              ),
            ],
            ),
            ),
            Card(clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 30.0/ 14.0,
              child: Image.asset('assets/peer1.png'),),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Transfert Compte à Compte'),
                    SizedBox(height: 1.0,)
                  ],
                ),
              ),
            ],
            ),
            ),
            Card(clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 30.0/ 14.0,
              child: Image.asset('assets/bank.png'),),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Versement Banque'),
                    SizedBox(height: 1.0,)
                  ],
                ),
              ),
            ],
            ),
            ),
            Card(clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 30.0/ 14.0,
              child: Image.asset('assets/application.png'),),
              Padding(
                padding: EdgeInsets.fromLTRB(45, 25, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Historique'),
                    SizedBox(height: 14.0,)
                  ],
                ),
              ),
            ],
            ),
            ),
            Card(clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 30.0/ 14.0,
              child: Image.asset('assets/account.png'),),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 25, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Credit téléphonique'),
                    SizedBox(height: 14.0,)
                  ],
                ),
              ),
            ],
            ),
            ),
            Card(clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 30.0/  14.0,
              child: Image.asset('assets/bill.png'),),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 25, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Payement Facture'),
                    SizedBox(height: 14.0,)
                  ],
                ),
              ),
            ],
            ),
            ),
            Card(clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.all(10),
            color: Colors.white,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(aspectRatio: 30.0/ 14.0,
              child: Image.asset('assets/gps.png'),),
              Padding(
                padding: EdgeInsets.fromLTRB(30, 25, 16, 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Géolocalisation Agence'),
                    SizedBox(height: 14.0,)
                  ],
                ),
              ),
            ],
            ),
            ),
          ],
      )
    ),
    );
  }
  
  _onTapOtherAccounts(BuildContext context) {}
  _onListTileTap(BuildContext context) {}
  
}

class Reglages extends StatelessWidget {
  static final String routeName = '/reglages';
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //au lieu de mettre drawer nous allons le remplacer par un button
      //
      //drawer: new Drawer(
        //child: new ListView(),
      //),
      appBar: new AppBar(
        title: new Text('Reglages'),
      ),
      body: new Center(
        child: new Text(
          'Reglages',
          style: new TextStyle(
            fontSize: 24.0
          )
        ),
      ),
    );
  }
}
class Information extends StatelessWidget {
  static final String routeName = '/information';
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Information'),
      ),
      body: new Center(
        child: new Text(
          "plus d'information",
          style: new TextStyle(
            fontSize: 24.0
          )
        ),
      ),
    );
  }
}
class Langue extends StatelessWidget {
  static final String routeName = '/langue';
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('langue'),
      ),
      body: new Center(
        child: new Text(
          'Langue',
          style: new TextStyle(
            fontSize: 24.0
          )
        ),
      ),
    );
  }
}
class Deconnexion extends StatelessWidget {
  static final String routeName = '/Deconnexion';
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Deconnexion'),
      ),
      body: new Center(
        child: new Text(
          'Deconnexion',
          style: new TextStyle(
            fontSize: 24.0
          )
        ),
      ),
    );
  }
}
class Localisation extends StatelessWidget {
  static final String routeName = '/localisation';
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('localisation'),
      ),
      body: new Center(
        child: new Text(
          'Localisation',
          style: new TextStyle(
            fontSize: 24.0
          )
        ),
      ),
    );
  }
}
