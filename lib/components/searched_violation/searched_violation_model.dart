import '/components/violation_add/violation_add_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'searched_violation_widget.dart' show SearchedViolationWidget;
import 'package:flutter/material.dart';

class SearchedViolationModel extends FlutterFlowModel<SearchedViolationWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ViolationAdd component.
  late ViolationAddModel violationAddModel1;
  // Model for ViolationAdd component.
  late ViolationAddModel violationAddModel2;
  // Model for ViolationAdd component.
  late ViolationAddModel violationAddModel3;

  @override
  void initState(BuildContext context) {
    violationAddModel1 = createModel(context, () => ViolationAddModel());
    violationAddModel2 = createModel(context, () => ViolationAddModel());
    violationAddModel3 = createModel(context, () => ViolationAddModel());
  }

  @override
  void dispose() {
    violationAddModel1.dispose();
    violationAddModel2.dispose();
    violationAddModel3.dispose();
  }
}
