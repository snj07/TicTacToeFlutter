import 'package:flutter/material.dart';
import 'package:tic_tac_toe_flutter/game_page.dart';

void main() => runApp(new MaterialApp(home: new HomePage()));

class HomePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(title: new Text("TicTacToe")),
        body: new Container(
            padding: new EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      child: MaterialButton(
                          minWidth: 250.0,
                          onPressed: singlePlayerButton,
                          colorBrightness: Brightness.dark,
                          color: Colors.lightBlue,
                          elevation: 10.0,
                          splashColor: Colors.blue,
                          //highlightColor: Colors.red,
                          highlightElevation: 1.0,
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Single Player",
                            style: new TextStyle(
                              fontSize: 20.0,
                            ),
                          )),
                      padding: new EdgeInsets.all(10.0),
                    ),
                    new Container(
                      child: MaterialButton(
                          minWidth: 250.0,
                          onPressed: multiPlayerButton,
                          colorBrightness: Brightness.dark,
                          color: Colors.lightBlue,
                          elevation: 10.0,
                          splashColor: Colors.blue,
                          //highlightColor: Colors.red,
                          highlightElevation: 1.0,
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "Multi Player",
                            style: new TextStyle(
                              fontSize: 20.0,
                            ),
                          )),
                      padding: new EdgeInsets.all(10.0),
                    ),
                  ],
                ),
              ],
            )));
  }

  void singlePlayerButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GamePage(isSinglePlayer: true)),
    );
  }

  void multiPlayerButton() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GamePage(isSinglePlayer: false)),
    );
  }
}
