import 'package:get/get.dart';
import 'package:mauboo_app/src/page/home/home_page.dart';
import 'package:mauboo_app/src/page/login/login_page.dart';
import 'package:mauboo_app/src/page/register/register_page.dart';
import 'package:mauboo_app/src/page/wall/wall_page.dart';

class Pages {
  static final pages = [
    GetPage(name: '/home', page: () => HomePage()),
    GetPage(name: '/login', page: () => LoginPage()),
    GetPage(name: '/register', page:()=> RegisterPage()),
    GetPage(name: '/wall', page: ()=> WallPage())
  ];
}
