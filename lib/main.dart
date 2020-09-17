import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/services.dart';
import './mainMenu/mainMenu.dart';
import './mainMenu/startScreen.dart';
import './mainMenu/playScreen.dart';

/*final FirebaseApp app = FirebaseApp(
    options: FirebaseOptions(
  googleAppID: '1:971654050584:android:121e111c2e22822725646d',
  apiKey: 'AIzaSyBjVUzlnysPMFlVLJU07Uugno--k7Jzv4w',
  databaseURL: 'https://tabustar-60a95.firebaseio.com',
));*/

void main() {
  /*SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.yellow[100],
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));*/
  runApp(
    MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => MainMenu(),
        "/startScreen": (context) =>
            StartScreen(title: "Start Screen Sayfamız"),
        "/playScreen": (context) =>
            PlayScreen(title: "Play Screen Sayfamız"),
      },
    ),
  );
}

/*class ScaleTransitionExample extends StatefulWidget {
    _ScaleTransitionExampleState createState() => _ScaleTransitionExampleState();
  }
  
  class _ScaleTransitionExampleState extends State<ScaleTransitionExample> with TickerProviderStateMixin {
  
    AnimationController _controller;
    Animation<double> _animation;
  
    initState() {
      super.initState();
      _controller = AnimationController(
          duration: const Duration(milliseconds: 2000), vsync: this, value: 0.1);
      _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);
  
      _controller.forward();
    }
  
    @override
    dispose() {
      _controller.dispose();
      super.dispose();
    }
  
    Widget build(BuildContext context) {
  
      return Container(
          color: Colors.white,
          child: ScaleTransition(
              scale: _animation,
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Icon(Icons.check, size: 100.0,color: Colors.green),
                  ]
              )
          )
      );
    }
  }
  
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'ListView Example',
        home: ScaleTransitionExample(),
      );
    }
  }
  
  void main() => runApp(MyApp());*/

/*void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.yellow[100],
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(
    new MaterialApp(
      title: "MainMenu",
      home: new MainMenu(),
    ),
  );
}*/
