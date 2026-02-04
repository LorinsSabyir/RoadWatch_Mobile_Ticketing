import '/backend/backend.dart';
import '/components/violation_card/violation_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_page_copy1_widget.dart' show SearchPageCopy1Widget;
import 'package:flutter/material.dart';

class SearchPageCopy1Model extends FlutterFlowModel<SearchPageCopy1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchbar widget.
  FocusNode? searchbarFocusNode;
  TextEditingController? searchbarTextController;
  String? Function(BuildContext, String?)? searchbarTextControllerValidator;
  List<ViolationRecord> simpleSearchResults = [];
  // Models for ViolationCard dynamic component.
  late FlutterFlowDynamicModels<ViolationCardModel> violationCardModels1;
  // Models for ViolationCard dynamic component.
  late FlutterFlowDynamicModels<ViolationCardModel> violationCardModels2;

  @override
  void initState(BuildContext context) {
    violationCardModels1 = FlutterFlowDynamicModels(() => ViolationCardModel());
    violationCardModels2 = FlutterFlowDynamicModels(() => ViolationCardModel());
  }

  @override
  void dispose() {
    searchbarFocusNode?.dispose();
    searchbarTextController?.dispose();

    violationCardModels1.dispose();
    violationCardModels2.dispose();
  }
}
