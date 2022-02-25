import 'package:firebase_core/firebase_core.dart';

import '/screens/login.dart';
import '/screens/registration.dart';
import '/screens/weelcome.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ShoppingCart());
}

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Welcome.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        LogIn.id: (context) => Login(),
        Registation.id: (context) => Registation(),
        Welcome.id: (context) => Welcome()
      },
      home: HomeScreen(),
    );
  }
}