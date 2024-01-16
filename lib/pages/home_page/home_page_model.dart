import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  int? licznik1 = 0;

  int? licznik2 = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer1;
  InstantTimer? instantTimer2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    instantTimer1?.cancel();
    instantTimer2?.cancel();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
