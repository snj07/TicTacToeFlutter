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
          child: new Column(
            children: <Widget>[
              new Container(
                child: new RaisedButton(
                    child: new Text("Single Player"),
                    color: Colors.lightBlue,
                    onPressed: singlePlayerButton),
                padding: new EdgeInsets.all(10.0),
              ),
              new Container(
                child: new RaisedButton(
                    child: new Text("Multiplayer"),
                    color: Colors.lightBlue,
                    onPressed: multiPlayerButton),
                padding: new EdgeInsets.all(10.0),
              ),
            ],
          ),
        ));
  }

  void singlePlayerButton(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GamePage()),
    );

  }
  void multiPlayerButton(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GamePage()),
    );
  }


}
