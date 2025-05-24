import '/components/notification_card/notification_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel1;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel2;
  // Model for NotificationCard component.
  late NotificationCardModel notificationCardModel3;

  @override
  void initState(BuildContext context) {
    notificationCardModel1 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel2 =
        createModel(context, () => NotificationCardModel());
    notificationCardModel3 =
        createModel(context, () => NotificationCardModel());
  }

  @override
  void dispose() {
    notificationCardModel1.dispose();
    notificationCardModel2.dispose();
    notificationCardModel3.dispose();
  }
}
