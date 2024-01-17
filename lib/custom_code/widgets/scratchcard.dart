// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:scratcher/scratcher.dart';

class Scratchcard extends StatefulWidget {
  const Scratchcard({
    Key? key,
    this.width,
    this.height,
    required this.img,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String img;

  @override
  _ScratchcardState createState() => _ScratchcardState();
}

class _ScratchcardState extends State<Scratchcard> {
  bool _textShow = false;
  double _opacity = 0.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: widget.width,
          height: widget.height,
          child: Scratcher(
            brushSize: 30,
            threshold: 50,
            //color: Colors.red,
            image: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/globalsport-2023.appspot.com/o/logo%20gsa.jpg?alt=media&token=9893bb09-a4cb-474a-8076-da42ad180184',
              height: widget.height,
              width: widget.width,
            ),
            onChange: (value) => print("Scratch progress: $value%"),
            //onThreshold: () => print("Threshold reached, you won!"),
            onThreshold: () {
              setState(() {
                _textShow = true;
              });
            },
            child: Text(
              "Skarpety",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            /*child: Container(
            height: 300,
            width: 300,
            color: Colors.blue,
            ),*/
          ),
        ),
        if (_textShow) Text('A kuku panie kruku')
      ],
    );
  }
}
