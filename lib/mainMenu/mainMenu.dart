import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

void openPage(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Next page'),
        ),
        body: const Center(
          child: Text(
            'This is the next page',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    },
  ));
}

class MainMenu extends StatefulWidget {
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 7000), vsync: this, value: 0.5);
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Container(    
        height: 70,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/wp2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        
        padding: EdgeInsets.all(50.0),
        child: ScaleTransition(
          scale: _animation,
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 50.0),
                  child: Text(
                    "TabuStar".toUpperCase(),
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.yellow[100],
                      decoration: TextDecoration.none,
                      fontFamily: 'PressStart',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(bottom: 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Material(
                        color: Colors.transparent,
                        child: Center(
                          child: IconButton(
                            iconSize: 100,
                            icon: Icon(Icons.play_arrow),
                            color: Colors.yellow[100],
                            onPressed: () => Navigator.pushNamed(context, "/startScreen"),
                          ),
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: Center(
                          child: IconButton(
                            iconSize: 75,
                            icon: Icon(Icons.settings),
                            color: Colors.yellow[100],
                            onPressed: () {
                              debugPrint("setting butonu");
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

/*class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/img/wp2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      padding: EdgeInsets.all(50.0),
      //color: Colors.white,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 50.0),
              child: Text(
                "TabuStar".toUpperCase(),
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow[100],
                  decoration: TextDecoration.none,
                  fontFamily: 'PressStart',
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(bottom: 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: Center(
                      child: IconButton(
                        iconSize: 100,
                        icon: Icon(Icons.play_arrow),
                        color: Colors.yellow[100],
                        onPressed: () {
                          debugPrint("play butonu");
                        },
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Center(
                      child: IconButton(
                        iconSize: 75,
                        icon: Icon(Icons.settings),
                        color: Colors.yellow[100],
                        onPressed: () {
                          debugPrint("setting butonu");
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}*/
