import '/backend/backend.dart';
import '/components/violation_card/violation_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ticket_receipt_widget.dart' show TicketReceiptWidget;
import 'package:flutter/material.dart';

class TicketReceiptModel extends FlutterFlowModel<TicketReceiptWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for ViolationCard dynamic component.
  late FlutterFlowDynamicModels<ViolationCardModel> violationCardModels;
  // Stores action output result for [Backend Call - Create Document] action in Submit_Button widget.
  CitationRecord? createViolator;

  @override
  void initState(BuildContext context) {
    violationCardModels = FlutterFlowDynamicModels(() => ViolationCardModel());
  }

  @override
  void dispose() {
    violationCardModels.dispose();
  }
}
