import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_edit_widget.dart' show ProfileEditWidget;
import 'package:flutter/material.dart';

class ProfileEditModel extends FlutterFlowModel<ProfileEditWidget> {
  ///  Local state fields for this page.

  bool? hasMinLength;

  bool? hasUppercase;

  bool? hasLowercase;

  bool? hasNumber;

  bool? hasSpecial;

  bool? isTheSame;

  ///  State fields for stateful widgets in this page.

  // State field(s) for userFirstName widget.
  FocusNode? userFirstNameFocusNode;
  TextEditingController? userFirstNameTextController;
  String? Function(BuildContext, String?)? userFirstNameTextControllerValidator;
  // State field(s) for userLastName widget.
  FocusNode? userLastNameFocusNode;
  TextEditingController? userLastNameTextController;
  String? Function(BuildContext, String?)? userLastNameTextControllerValidator;
  // State field(s) for userPhoneNum widget.
  FocusNode? userPhoneNumFocusNode;
  TextEditingController? userPhoneNumTextController;
  String? Function(BuildContext, String?)? userPhoneNumTextControllerValidator;
  // State field(s) for userPassword widget.
  FocusNode? userPasswordFocusNode;
  TextEditingController? userPasswordTextController;
  late bool userPasswordVisibility;
  String? Function(BuildContext, String?)? userPasswordTextControllerValidator;
  // State field(s) for userConfirmPassword widget.
  FocusNode? userConfirmPasswordFocusNode;
  TextEditingController? userConfirmPasswordTextController;
  late bool userConfirmPasswordVisibility;
  String? Function(BuildContext, String?)?
      userConfirmPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    userPasswordVisibility = false;
    userConfirmPasswordVisibility = false;
  }

  @override
  void dispose() {
    userFirstNameFocusNode?.dispose();
    userFirstNameTextController?.dispose();

    userLastNameFocusNode?.dispose();
    userLastNameTextController?.dispose();

    userPhoneNumFocusNode?.dispose();
    userPhoneNumTextController?.dispose();

    userPasswordFocusNode?.dispose();
    userPasswordTextController?.dispose();

    userConfirmPasswordFocusNode?.dispose();
    userConfirmPasswordTextController?.dispose();
  }
}
