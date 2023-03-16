import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screen/login_screen.dart';
import 'Screen/mycart.dart';
import 'Screen/mycathlog.dart';
import 'model/productall.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ProductAll(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/home",
        routes: {
          "/home": (context) => MyCathlog(),
          "/login": (context) => Login(),
          "/cart": (context) => MyCart(),
        },
        home: MyCathlog());
  }
}
