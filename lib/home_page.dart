import 'package:flutter/material.dart';
import 'package:tictactoe/autoplay.dart';
import 'package:tictactoe/singleplayer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Tic Tac Toe"),
      ),
      body: Container(
        decoration: new BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(52, 152, 219, 100),
                Color.fromRGBO(142, 68, 173, 100)
              ]),
        ),
        width: 500,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 290.0),
          child: Column(
            children: <Widget>[
              FlatButton(
                child: FlatButton(
                  color: Colors.black,
                  colorBrightness: Brightness.dark,
                  child: Text("SinglePlayer"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SinglePlayer()));
                  },
                ),
              ),
              FlatButton(
                child: FlatButton(
                  color: Colors.red,
                  colorBrightness: Brightness.dark,
                  child: Text("Vs Mode"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AutoPlay()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
