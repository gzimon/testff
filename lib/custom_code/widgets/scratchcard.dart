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
    required this.textColor,
    required this.textSize,
    required this.textText,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String img;
  final Color textColor;
  final double textSize;
  final String textText;

  @override
  _ScratchcardState createState() => _ScratchcardState();
}

class _ScratchcardState extends State<Scratchcard> {
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
              widget.img,
              height: widget.height,
              width: widget.width,
            ),
            onChange: (value) => print("Scratch progress: $value%"),
            //onThreshold: () => print("Threshold reached, you won!"),
            onThreshold: () {
              setState(() {
                _opacity = 1.0;
              });
            },
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: _opacity,
              child: Container(
                height: widget.height,
                width: widget.width,
                alignment: Alignment.center,
                child: Text(
                  widget.textText,
                  style: TextStyle(
                      fontSize: widget.textSize, color: widget.textColor),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
