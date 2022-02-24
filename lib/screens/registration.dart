import 'package:assesment/models/button.dart';
import 'package:assesment/screens/home.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Registation extends StatelessWidget {
  static const String id = 'Registration_Screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
    );
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              const Text(
                'Shopping App',
                style: TextStyle(fontFamily: 'Billabong', fontSize: 40),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    labelText: 'Full Name',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your phone Number',
                      labelText: 'Phone Number'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter your email', labelText: 'Email'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Choose your password',
                      labelText: 'Enter a password:'),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Re-enter your password',
                      labelText: 'Enter your password again'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Btn(
                color: const Color(0xFFE65100),
                text: 'Sign Up',
                onPress: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    const Text('Already have an account? '),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        );
                      },
                      child: const Text(
                        'Login Now',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
