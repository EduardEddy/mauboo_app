import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(size),
          _logo(size),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(width: size.width * 100),
              _buttonRegister(size),
              SizedBox(height: 20),
              _buttonLogin(size),
              SizedBox(height: 40),
            ],
          )
        ],
      ),
    );
  }

  Widget _background(size) {
    return Container(
      width: size.width * 100,
      height: size.height * 100,
      decoration: BoxDecoration(
        color: Color(0xfffb6a8b), //#fb6a8b
        image: DecorationImage(
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.3),
            BlendMode.dstATop,
          ),
          image: AssetImage('assets/images/libros2.jpg'),
        ),
      ),
    );
  }

  Widget _logo(size) {
    return Positioned(
      left: 90,
      top: 20,
      child: Container(
        width: size.width * 0.60,
        height: size.height * 0.70,
        child: Hero(
          tag: "logo_img",
          child: Image.asset('assets/logos/mauboo.png'),
        ),
      ),
    );
  }

  Widget _buttonRegister(size) {
    return FlatButton(
      minWidth: size.width * .75,
      padding: EdgeInsets.symmetric(vertical: 12.5),
      onPressed: () => Get.toNamed('/register'),
      child: Text(
        'REGISTRATE',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          letterSpacing: 2,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.white, width: 2),
      ),
    );
  }

  Widget _buttonLogin(size) {
    return FlatButton(
      minWidth: size.width * .75,
      padding: EdgeInsets.symmetric(vertical: 12.5),
      onPressed: () {
        Get.toNamed('/login');
      },
      child: Text(
        'LOGIN',
        style: TextStyle(
          color: Colors.pinkAccent,
          fontSize: 18,
          letterSpacing: 2,
          fontWeight: FontWeight.bold,
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: Colors.white),
      ),
      color: Colors.white,
    );
  }
}
