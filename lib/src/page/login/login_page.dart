import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(size),
          _logo(size),
          Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(width: size.width * 100),
                _inputEmail(),
                _inputPassword(),
                _forgotPassword(),
                _buttonLogin(size),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    SizedBox(width: 40),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Ó entrar con',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(width: 40),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, right: 2.5),
                      child: RaisedButton.icon(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                        ),
                        label: Text(
                          'facebook',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        color: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.5),
                      child: RaisedButton.icon(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Google',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        color: Colors.red[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _background(size) {
    return Container(
      width: size.width * 100,
      height: size.height * 100,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.2),
            BlendMode.dstATop,
          ),
          image: AssetImage('assets/images/libros2.jpg'),
        ),
      ),
    );
  }

  Widget _logo(size) {
    return Positioned(
      left: 140,
      top: -60,
      child: Container(
        width: size.width * 0.30,
        height: size.height * 0.40,
        child: Hero(
          tag: "logo_img",
          child: Image.asset('assets/logos/mauboo.png'),
        ),
      ),
    );
  }

  Widget _inputEmail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'EMAIL',
          labelStyle: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          enabledBorder: new UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
        ),
      ),
    );
  }

  Widget _inputPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'CLAVE',
          labelStyle: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          enabledBorder: new UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
        ),
      ),
    );
  }

  Widget _forgotPassword() {
    return Container(
      alignment: Alignment.topRight,
      padding: EdgeInsets.only(right: 40),
      child: FlatButton(
        onPressed: () {},
        child: Text(
          'Olvidaste tu clave?',
          style: TextStyle(
            color: Colors.white,
            //fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget _buttonLogin(size) {
    return FlatButton(
      minWidth: size.width * .75,
      padding: EdgeInsets.symmetric(vertical: 12.5),
      onPressed: () {},
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: Colors.red,
          fontSize: 18,
          letterSpacing: 2,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.white, width: 2),
      ),
      color: Colors.white,
    );
  }
}
