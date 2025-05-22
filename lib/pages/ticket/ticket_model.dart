import '/components/violation_card/violation_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'ticket_widget.dart' show TicketWidget;
import 'package:flutter/material.dart';

class TicketModel extends FlutterFlowModel<TicketWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for violatorName_create widget.
  FocusNode? violatorNameCreateFocusNode;
  TextEditingController? violatorNameCreateTextController;
  String? Function(BuildContext, String?)?
      violatorNameCreateTextControllerValidator;
  // State field(s) for violatorContactNum_create widget.
  FocusNode? violatorContactNumCreateFocusNode;
  TextEditingController? violatorContactNumCreateTextController;
  String? Function(BuildContext, String?)?
      violatorContactNumCreateTextControllerValidator;
  // State field(s) for violatorAddress_create widget.
  FocusNode? violatorAddressCreateFocusNode;
  TextEditingController? violatorAddressCreateTextController;
  String? Function(BuildContext, String?)?
      violatorAddressCreateTextControllerValidator;
  // State field(s) for violatorLicenseNum_create widget.
  FocusNode? violatorLicenseNumCreateFocusNode;
  TextEditingController? violatorLicenseNumCreateTextController;
  String? Function(BuildContext, String?)?
      violatorLicenseNumCreateTextControllerValidator;
  // State field(s) for vehiclePlateNum_create widget.
  FocusNode? vehiclePlateNumCreateFocusNode;
  TextEditingController? vehiclePlateNumCreateTextController;
  String? Function(BuildContext, String?)?
      vehiclePlateNumCreateTextControllerValidator;
  // State field(s) for vehicleSerialNum_create widget.
  FocusNode? vehicleSerialNumCreateFocusNode;
  TextEditingController? vehicleSerialNumCreateTextController;
  String? Function(BuildContext, String?)?
      vehicleSerialNumCreateTextControllerValidator;
  // State field(s) for vehicleType_create widget.
  String? vehicleTypeCreateValue;
  FormFieldController<String>? vehicleTypeCreateValueController;
  // State field(s) for vehicleBrand_create widget.
  FocusNode? vehicleBrandCreateFocusNode;
  TextEditingController? vehicleBrandCreateTextController;
  String? Function(BuildContext, String?)?
      vehicleBrandCreateTextControllerValidator;
  // State field(s) for vehicleModel_create widget.
  FocusNode? vehicleModelCreateFocusNode;
  TextEditingController? vehicleModelCreateTextController;
  String? Function(BuildContext, String?)?
      vehicleModelCreateTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // Models for ViolationCard dynamic component.
  late FlutterFlowDynamicModels<ViolationCardModel> violationCardModels;

  @override
  void initState(BuildContext context) {
    violationCardModels = FlutterFlowDynamicModels(() => ViolationCardModel());
  }

  @override
  void dispose() {
    violatorNameCreateFocusNode?.dispose();
    violatorNameCreateTextController?.dispose();

    violatorContactNumCreateFocusNode?.dispose();
    violatorContactNumCreateTextController?.dispose();

    violatorAddressCreateFocusNode?.dispose();
    violatorAddressCreateTextController?.dispose();

    violatorLicenseNumCreateFocusNode?.dispose();
    violatorLicenseNumCreateTextController?.dispose();

    vehiclePlateNumCreateFocusNode?.dispose();
    vehiclePlateNumCreateTextController?.dispose();

    vehicleSerialNumCreateFocusNode?.dispose();
    vehicleSerialNumCreateTextController?.dispose();

    vehicleBrandCreateFocusNode?.dispose();
    vehicleBrandCreateTextController?.dispose();

    vehicleModelCreateFocusNode?.dispose();
    vehicleModelCreateTextController?.dispose();

    violationCardModels.dispose();
  }
}
