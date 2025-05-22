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
  // State field(s) for driverFirstname_create widget.
  FocusNode? driverFirstnameCreateFocusNode;
  TextEditingController? driverFirstnameCreateTextController;
  String? Function(BuildContext, String?)?
      driverFirstnameCreateTextControllerValidator;
  // State field(s) for driverLastname_create widget.
  FocusNode? driverLastnameCreateFocusNode;
  TextEditingController? driverLastnameCreateTextController;
  String? Function(BuildContext, String?)?
      driverLastnameCreateTextControllerValidator;
  // State field(s) for driverContactNum_create widget.
  FocusNode? driverContactNumCreateFocusNode;
  TextEditingController? driverContactNumCreateTextController;
  String? Function(BuildContext, String?)?
      driverContactNumCreateTextControllerValidator;
  // State field(s) for driverAddress_create widget.
  FocusNode? driverAddressCreateFocusNode;
  TextEditingController? driverAddressCreateTextController;
  String? Function(BuildContext, String?)?
      driverAddressCreateTextControllerValidator;
  // State field(s) for driverLicenseNum_create widget.
  FocusNode? driverLicenseNumCreateFocusNode;
  TextEditingController? driverLicenseNumCreateTextController;
  String? Function(BuildContext, String?)?
      driverLicenseNumCreateTextControllerValidator;
  // State field(s) for vehiclePlateNum_create widget.
  FocusNode? vehiclePlateNumCreateFocusNode;
  TextEditingController? vehiclePlateNumCreateTextController;
  String? Function(BuildContext, String?)?
      vehiclePlateNumCreateTextControllerValidator;
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
    driverFirstnameCreateFocusNode?.dispose();
    driverFirstnameCreateTextController?.dispose();

    driverLastnameCreateFocusNode?.dispose();
    driverLastnameCreateTextController?.dispose();

    driverContactNumCreateFocusNode?.dispose();
    driverContactNumCreateTextController?.dispose();

    driverAddressCreateFocusNode?.dispose();
    driverAddressCreateTextController?.dispose();

    driverLicenseNumCreateFocusNode?.dispose();
    driverLicenseNumCreateTextController?.dispose();

    vehiclePlateNumCreateFocusNode?.dispose();
    vehiclePlateNumCreateTextController?.dispose();

    vehicleBrandCreateFocusNode?.dispose();
    vehicleBrandCreateTextController?.dispose();

    vehicleModelCreateFocusNode?.dispose();
    vehicleModelCreateTextController?.dispose();

    violationCardModels.dispose();
  }
}
