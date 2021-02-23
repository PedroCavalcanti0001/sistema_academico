import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema_academico/controller/access_provider.dart';
import 'package:sistema_academico/view/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AccessProvider>(
            create: (ctx) => AccessProvider())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/login',
        routes: {"/login": (ctx) => Login()},
      ),
    );
  }
}
