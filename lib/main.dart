import 'package:flutter/material.dart';
import 'package:startup_app/screens/home_screen.dart';

import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => MaterialApp(
                      title: 'EvoSports ',
                      debugShowCheckedModeBanner: false,
                      theme: ThemeData(
                        primaryColor: Color(0xFF3EBACE),
                        accentColor: Color(0xFFD8ECF1),
                        scaffoldBackgroundColor: Color(0xFFF3F5F7),
                      ),
                      home: HomeScreen(),
                    ))));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xFF76B9F0),
        child: Image(
          image: AssetImage(
            'assets/images/EvoSports.png',
          ),
        ));

    // FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GeeksForGeeks")),
      body: Center(
          child: Text(
        "Home page",
        textScaleFactor: 2,
      )),
    );
  }
}


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'EvoSports ',
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     primaryColor: Color(0xFF3EBACE),
    //     accentColor: Color(0xFFD8ECF1),
    //     scaffoldBackgroundColor: Color(0xFFF3F5F7),
    //   ),
    //   home: HomeScreen(),
    // );
//   }
// }
