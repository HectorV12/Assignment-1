import 'package:assignment1/random_words.dart';
import 'package:flutter/material.dart';


class TextOutput extends StatefulWidget {
  @override
  _TextOutputState createState() => _TextOutputState();
}

class _TextOutputState extends State<TextOutput> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('${randomWords()}',
        style: TextStyle(
          fontSize: 30.0,
        ),),

        Padding(padding: EdgeInsets.all(20.0)),

        Center(
          child: RaisedButton(

              child: Text('Random Word'),
              onPressed: () {
                setState(() {
                  randomWords();
                });
              }),

        ),
      ],
    );
  }
}

