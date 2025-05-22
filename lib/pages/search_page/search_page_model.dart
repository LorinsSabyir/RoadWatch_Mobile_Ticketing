import '/backend/backend.dart';
import '/components/violation_card/violation_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for searchbar widget.
  final searchbarKey = GlobalKey();
  FocusNode? searchbarFocusNode;
  TextEditingController? searchbarTextController;
  String? searchbarSelectedOption;
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

    violationCardModels1.dispose();
    violationCardModels2.dispose();
  }
}
