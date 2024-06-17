import 'package:flutter/material.dart';
import 'package:uber/auth/join.dart';
import 'package:uber/pages/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void next(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Join()));
    });
  }

  @override
  void initState() {
next();    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Center(child: Image(image: AssetImage('assets/images/logo.png'))),
      ),
    );
  }
}