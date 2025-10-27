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
  // State field(s) for violatorName widget.
  FocusNode? violatorNameFocusNode;
  TextEditingController? violatorNameTextController;
  String? Function(BuildContext, String?)? violatorNameTextControllerValidator;
  // State field(s) for violatorGender widget.
  String? violatorGenderValue;
  FormFieldController<String>? violatorGenderValueController;
  // State field(s) for violatorContactNum widget.
  FocusNode? violatorContactNumFocusNode;
  TextEditingController? violatorContactNumTextController;
  String? Function(BuildContext, String?)?
      violatorContactNumTextControllerValidator;
  // State field(s) for violatorLicenseNum widget.
  FocusNode? violatorLicenseNumFocusNode;
  TextEditingController? violatorLicenseNumTextController;
  String? Function(BuildContext, String?)?
      violatorLicenseNumTextControllerValidator;
  // State field(s) for violatorProvinceDropDown widget.
  String? violatorProvinceDropDownValue;
  FormFieldController<String>? violatorProvinceDropDownValueController;
  // State field(s) for violatorCityDropDown widget.
  String? violatorCityDropDownValue;
  FormFieldController<String>? violatorCityDropDownValueController;
  // State field(s) for violatorBrgyDropDown widget.
  String? violatorBrgyDropDownValue;
  FormFieldController<String>? violatorBrgyDropDownValueController;
  // State field(s) for violatorProvince widget.
  FocusNode? violatorProvinceFocusNode;
  TextEditingController? violatorProvinceTextController;
  String? Function(BuildContext, String?)?
      violatorProvinceTextControllerValidator;
  // State field(s) for violatorCity widget.
  FocusNode? violatorCityFocusNode;
  TextEditingController? violatorCityTextController;
  String? Function(BuildContext, String?)? violatorCityTextControllerValidator;
  // State field(s) for violatorBrgy widget.
  FocusNode? violatorBrgyFocusNode;
  TextEditingController? violatorBrgyTextController;
  String? Function(BuildContext, String?)? violatorBrgyTextControllerValidator;
  // State field(s) for violatorPrk widget.
  FocusNode? violatorPrkFocusNode;
  TextEditingController? violatorPrkTextController;
  String? Function(BuildContext, String?)? violatorPrkTextControllerValidator;
  // State field(s) for vehiclePlateNum widget.
  FocusNode? vehiclePlateNumFocusNode;
  TextEditingController? vehiclePlateNumTextController;
  String? Function(BuildContext, String?)?
      vehiclePlateNumTextControllerValidator;
  // State field(s) for vehicleSerialNum widget.
  FocusNode? vehicleSerialNumFocusNode;
  TextEditingController? vehicleSerialNumTextController;
  String? Function(BuildContext, String?)?
      vehicleSerialNumTextControllerValidator;
  // State field(s) for vehicleType widget.
  String? vehicleTypeValue;
  FormFieldController<String>? vehicleTypeValueController;
  // State field(s) for vehicleBrand widget.
  FocusNode? vehicleBrandFocusNode;
  TextEditingController? vehicleBrandTextController;
  String? Function(BuildContext, String?)? vehicleBrandTextControllerValidator;
  // State field(s) for vehicleModel widget.
  FocusNode? vehicleModelFocusNode;
  TextEditingController? vehicleModelTextController;
  String? Function(BuildContext, String?)? vehicleModelTextControllerValidator;
  // Models for ViolationCard dynamic component.
  late FlutterFlowDynamicModels<ViolationCardModel> violationCardModels;

  @override
  void initState(BuildContext context) {
    violationCardModels = FlutterFlowDynamicModels(() => ViolationCardModel());
  }

  @override
  void dispose() {
    violatorNameFocusNode?.dispose();
    violatorNameTextController?.dispose();

    violatorContactNumFocusNode?.dispose();
    violatorContactNumTextController?.dispose();

    violatorLicenseNumFocusNode?.dispose();
    violatorLicenseNumTextController?.dispose();

    violatorProvinceFocusNode?.dispose();
    violatorProvinceTextController?.dispose();

    violatorCityFocusNode?.dispose();
    violatorCityTextController?.dispose();

    violatorBrgyFocusNode?.dispose();
    violatorBrgyTextController?.dispose();

    violatorPrkFocusNode?.dispose();
    violatorPrkTextController?.dispose();

    vehiclePlateNumFocusNode?.dispose();
    vehiclePlateNumTextController?.dispose();

    vehicleSerialNumFocusNode?.dispose();
    vehicleSerialNumTextController?.dispose();

    vehicleBrandFocusNode?.dispose();
    vehicleBrandTextController?.dispose();

    vehicleModelFocusNode?.dispose();
    vehicleModelTextController?.dispose();

    violationCardModels.dispose();
  }
}
