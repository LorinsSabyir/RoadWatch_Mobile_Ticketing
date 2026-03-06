import '/flutter_flow/flutter_flow_util.dart';
import 'textfield_modal_widget.dart' show TextfieldModalWidget;
import 'package:flutter/material.dart';

class TextfieldModalModel extends FlutterFlowModel<TextfieldModalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
