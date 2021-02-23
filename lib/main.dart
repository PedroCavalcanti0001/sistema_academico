import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sistema_academico/controller/login_provider.dart';
import 'package:sistema_academico/controller/register_provider.dart';
import 'package:sistema_academico/view/login.dart';
import 'package:sistema_academico/view/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginProvider>(create: (ctx) => LoginProvider()),
        ChangeNotifierProvider<RegisterProvider>(
            create: (ctx) => RegisterProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          buttonColor: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/login',
        routes: {"/login": (ctx) => LoginView(), "/register": (ctx) => RegisterView()},
      ),
    );
  }
}
