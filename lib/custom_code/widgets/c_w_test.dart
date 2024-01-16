// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dotted_border/dotted_border.dart';

class CWTest extends StatefulWidget {
  const CWTest({
    Key? key,
    this.width,
    this.height,
    required this.strokeWidth,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double strokeWidth;

  @override
  _CWTestState createState() => _CWTestState();
}

class _CWTestState extends State<CWTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: DottedBorder(
        color: Colors.black,
        strokeWidth: widget.strokeWidth,
        child: FlutterLogo(size: 148),
      ),
    );
  }
}
