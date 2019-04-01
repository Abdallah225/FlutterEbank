import 'package:flutter/material.dart';
import 'package:ebank/home_page.dart';
import 'package:ebank/register_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 48.0,
        child: Image.asset('assets/logo1.png'),
      ),
    );

    final email = TextFormField
                  ( decoration: const InputDecoration(
                    labelStyle: TextStyle(color: Colors.white),
                    hintStyle: TextStyle(color: Colors.white),
                      icon: const Icon(Icons.email),
                      hintText: 'Enter votre email',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
    );

    final password = TextFormField(
                    obscureText: true, // Use secure text for passwords.
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      icon: const Icon(Icons.lock),
                      hintText: 'Entrez votre mot de passe',
                      labelText: 'Entrez votre mot de passe',
                    ),
                    //keyboardType: TextInputType.datetime,
                  
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightGreen[600],
        child: Text('Connexion', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Mot de passe oublié?',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
    final register = FlatButton(
      child: Text(
        'Pas de compte? Creer ICI',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {
         Navigator.of(context).pushNamed(RegisterPage.tag);
      },
    );

    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel,
            register,
          ],
        ),
      ),
    );
  }
}
