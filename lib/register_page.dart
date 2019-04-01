import 'package:flutter/material.dart';
import 'package:ebank/login_page.dart';
//import 'package:login/inscription_page.dart';
import 'package:ebank/home_page.dart';

class RegisterPage extends StatefulWidget {
  static String tag = 'register_page';
  @override
  _RegisterPage createState() => new _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
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
                  final nom= TextFormField(
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      icon: const Icon(Icons.person),
                      hintText: 'Entrer votre nom',
                      labelText: 'Nom',
                    ),
                  );
                  final prenom = TextFormField(
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      icon: const Icon(Icons.person),
                      hintText: 'Entrer votre prenom',
                      labelText: 'Prenom',
                    ),
                  );
                  final date = TextFormField(
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      icon: const Icon(Icons.calendar_today),
                      hintText: 'Date de naissance',
                      labelText: 'Date',
                    ),
                    keyboardType: TextInputType.datetime,
                  );
                  
                  final tel = TextFormField(
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      icon: const Icon(Icons.phone),
                      hintText: 'Votre numero de telephone',
                      labelText: 'tel',
                    ),
                    keyboardType: TextInputType.phone,
                    //inputFormatters: [
                      //WhitelistingTextInputFormatter.digitsOnly,
                    //],
                  );
                  final email=TextFormField(
                    decoration: const InputDecoration(
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
                    keyboardType: TextInputType.datetime,
                  );
                  final confirm = TextFormField(
                    obscureText: true, // Use secure text for passwords.
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      icon: const Icon(Icons.lock),
                      hintText: 'Confirmer votre mot de passe',
                      labelText: 'Confirmer votre mot de passe',
                    ),
                    keyboardType: TextInputType.datetime,
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
                  child: Text('Enregister', style: TextStyle(color: Colors.white)),
                ),
              );

              final forgotLabel = FlatButton(
                child: Text(
                  'Deja un compte? Se connecter ICI',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginPage.tag);
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
            SizedBox(height: 14.0),
            nom,
            SizedBox(height: 3.0),
            prenom,
            SizedBox(height: 3.0),
            tel,
            SizedBox(height: 3.0),
            date,
            SizedBox(height: 3.0),
            email,
            SizedBox(height: 3.0),
            password,
            SizedBox(height: 3.0),
            confirm,
            SizedBox(height: 3.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }
}
