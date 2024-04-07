import 'package:flutter/material.dart';
import 'package:signal_vip/screens/blog_screen.dart';
import 'package:signal_vip/screens/password_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const Image(
                image: AssetImage('assets/images/welcome.png'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(200.0, 40.0),
                  side: const BorderSide(width: 2.0),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                onPressed: () {
                  navigatorToPages(context, const BlogScreen());
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(200.0, 40.0),
                    backgroundColor: Colors.black),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                onPressed: () {},
              ),
              TextButton(
                child: const Text(
                  'Forgot password',
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
                onPressed: () {
                  navigatorToPages(context, const PasswordScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void navigatorToPages(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }
}
