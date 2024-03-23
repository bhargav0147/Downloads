import '/flutter_flow/flutter_flow_util.dart';
import 'heart_count_screen_widget.dart' show HeartCountScreenWidget;
import 'package:flutter/material.dart';

class HeartCountScreenModel extends FlutterFlowModel<HeartCountScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CountController widget.
  int? countControllerValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
