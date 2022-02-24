import 'package:assesment/models/button.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'registration.dart';

class Welcome extends StatefulWidget {
  static const String id = 'Welcome_Screen';

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
            ),
            const Text(
              'Shopping App',
              style: TextStyle(fontFamily: 'Billabong', fontSize: 40),
            ),
            const SizedBox(
              height: 60,
            ),

            Btn(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Registation(),
                  ),
                );
              },
              color: const Color(0xFFE65100),
              text: 'Get Started',
            ),
            const SizedBox(height: 20,),
            Btn(
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogIn()),
                );
              },
              color: Colors.orange,
              text: 'Log In',
            )
          ],
        ),
      ),
    );
  }
}