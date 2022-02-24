import 'package:assesment/models/button.dart';
import 'package:assesment/screens/home.dart';
import 'package:assesment/screens/registration.dart';
import 'package:assesment/screens/weelcome.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  static const String id = 'Login_Screen';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
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
                      hintText: 'Password', labelText: 'Enter a password:'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Btn(
                color: Colors.orange,
                text: 'Log In',
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
                    const Text('Don\'t have an account? '),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Registation(),
                          ),
                        );
                      },
                      child: const Text(
                        'Register Now',
                        style: TextStyle(color: Color(0xFFE65100)),
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
