import 'package:flutter/material.dart';

import 'pages/splash.dart';

void main(){
  runApp(app());
}
class app extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uber',
      home: Splash(),
    );
  }
}