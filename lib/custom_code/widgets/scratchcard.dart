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
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: Scratcher(
        brushSize: 30,
        threshold: 50,
        color: Colors.red,
        onChange: (value) => print("Scratch progress: $value%"),
        onThreshold: () => print("Threshold reached, you won!"),
        child: Image.network(
          widget.img,
          height: widget.height,
          width: widget.width,
        ),
        /*child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
        ),*/
      ),
    );
  }
}
