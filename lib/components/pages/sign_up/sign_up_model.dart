import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for emailAddress_create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  // State field(s) for password_create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for confirmPassword_create widget.
  FocusNode? confirmPasswordCreateFocusNode;
  TextEditingController? confirmPasswordCreateTextController;
  late bool confirmPasswordCreateVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordCreateTextControllerValidator;
  // State field(s) for badgeNumber_create widget.
  FocusNode? badgeNumberCreateFocusNode;
  TextEditingController? badgeNumberCreateTextController;
  String? Function(BuildContext, String?)?
      badgeNumberCreateTextControllerValidator;
  // State field(s) for firstname_create widget.
  FocusNode? firstnameCreateFocusNode;
  TextEditingController? firstnameCreateTextController;
  String? Function(BuildContext, String?)?
      firstnameCreateTextControllerValidator;
  // State field(s) for lastname_create widget.
  FocusNode? lastnameCreateFocusNode;
  TextEditingController? lastnameCreateTextController;
  String? Function(BuildContext, String?)?
      lastnameCreateTextControllerValidator;
  // State field(s) for phoneNum_create widget.
  FocusNode? phoneNumCreateFocusNode;
  TextEditingController? phoneNumCreateTextController;
  String? Function(BuildContext, String?)?
      phoneNumCreateTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordCreateVisibility = false;
    confirmPasswordCreateVisibility = false;
  }

  @override
  void dispose() {
    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    confirmPasswordCreateFocusNode?.dispose();
    confirmPasswordCreateTextController?.dispose();

    badgeNumberCreateFocusNode?.dispose();
    badgeNumberCreateTextController?.dispose();

    firstnameCreateFocusNode?.dispose();
    firstnameCreateTextController?.dispose();

    lastnameCreateFocusNode?.dispose();
    lastnameCreateTextController?.dispose();

    phoneNumCreateFocusNode?.dispose();
    phoneNumCreateTextController?.dispose();
  }
}
