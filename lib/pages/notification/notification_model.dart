import '/components/notification_card/notification_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel;

  @override
  void initState(BuildContext context) {
    notificationCardModel = createModel(context, () => NotificationCardModel());
  }

  @override
  void dispose() {
    notificationCardModel.dispose();
  }
}
