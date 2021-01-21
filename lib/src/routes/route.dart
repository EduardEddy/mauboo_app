import 'package:get/get.dart';
import 'package:mauboo_app/src/page/home/home_page.dart';
import 'package:mauboo_app/src/page/login/login_page.dart';

class Pages {
  static final pages = [
    GetPage(name: '/home', page: () => HomePage()),
    GetPage(name: '/login', page: () => LoginPage()),
  ];
}
