import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  StartScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StartScreenState createState() => new _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        tooltip: 'Increment',
        backgroundColor: Colors.white24,
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/img/wp2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: Card(
                  elevation: 10,
                  color: Colors.purple[400],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.only(top: 40),
                      decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                              colors: [Colors.green, Colors.blue])),
                      width: 250,
                      height: 150,
                      child: Text(
                        'A takımı Oyuna Başlayacak',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "BlackOps",
                          color: Colors.white70,
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  elevation: 10,
                  color: Colors.purple[400],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: InkWell(
                    child: Container(
                      padding: EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                          borderRadius: new BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                              colors: [Colors.green, Colors.blue])),
                      width: 250,
                      height: 150,
                      child: Text(
                        'Hedef : 25\n İlknur | Öznur\n  - | -',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "BlackOps",
                          color: Colors.white70,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: RaisedButton(
                  onPressed: () => Navigator.pushNamed(context, "/playScreen"),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  color: Colors.transparent,
                  child: Container(
                    width: 150,
                    decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(30.0),
                        gradient: new LinearGradient(
                          colors: [Colors.green, Colors.blue],
                        )),
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Başlat",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "BlackOps",
                          color: Colors.white70,
                        ),
                        textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
