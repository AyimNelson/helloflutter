import 'dart:async';  
import 'package:flutter/material.dart';  
  
void main() {
  runApp(MyApp());}  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: MyHomePage(),  
      debugShowCheckedModeBanner: false,  
    );  
  }  
}  
  
class MyHomePage extends StatefulWidget {  
  @override  
  SplashScreenState createState() => SplashScreenState();  
}  
class SplashScreenState extends State<MyHomePage> {  
  @override  
  void initState() {  
    super.initState();  
    Timer(Duration(seconds: 5),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => HomeScreen()  
            )  
         )  
    );  
  }  
  @override  
  Widget build(BuildContext context) {  
    return Container(  
        color: Colors.blue,  
        // child:FlutterLogo(size:MediaQuery.of(context).size.height) 
        child: Image.asset(
                'assets/images/flashpage.png',
                fit: BoxFit.cover),
    );  
  }  
}  
class HomeScreen extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title:Text("Welcome")),  
      body: Center(  
          child:Text("Hello World!",  
              style: TextStyle( color: Colors.black, fontSize: 25)  
          )  
      ),  
    );  
  }  
}  