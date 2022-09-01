import 'package:flutter/material.dart';
import 'package:testdev/src/pages/home/home.dart';
import 'package:testdev/src/pages/page2/page2.dart';

class AppRoutes {
  static const initialRoute = "Home";

  static Map<String, Widget Function(BuildContext)> lasRoutes = {
    // "Init": (BuildContext context) => const InitTree(),
    "Home": (BuildContext context) => const Home(),
    "page2": (BuildContext context) => const Page2(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const Home());
  }
}
