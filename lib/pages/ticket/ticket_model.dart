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
  // State field(s) for violatorAddPrk widget.
  FocusNode? violatorAddPrkFocusNode;
  TextEditingController? violatorAddPrkTextController;
  String? Function(BuildContext, String?)?
      violatorAddPrkTextControllerValidator;
  // State field(s) for violatorAddBrgy widget.
  FocusNode? violatorAddBrgyFocusNode;
  TextEditingController? violatorAddBrgyTextController;
  String? Function(BuildContext, String?)?
      violatorAddBrgyTextControllerValidator;
  // State field(s) for violatorAddCity widget.
  FocusNode? violatorAddCityFocusNode;
  TextEditingController? violatorAddCityTextController;
  String? Function(BuildContext, String?)?
      violatorAddCityTextControllerValidator;
  // State field(s) for violatorAddProvince widget.
  FocusNode? violatorAddProvinceFocusNode;
  TextEditingController? violatorAddProvinceTextController;
  String? Function(BuildContext, String?)?
      violatorAddProvinceTextControllerValidator;
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
  // State field(s) for filter widget.
  FormFieldController<List<String>>? filterValueController;
  List<String>? get filterValues => filterValueController?.value;
  set filterValues(List<String>? val) => filterValueController?.value = val;
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

    violatorAddPrkFocusNode?.dispose();
    violatorAddPrkTextController?.dispose();

    violatorAddBrgyFocusNode?.dispose();
    violatorAddBrgyTextController?.dispose();

    violatorAddCityFocusNode?.dispose();
    violatorAddCityTextController?.dispose();

    violatorAddProvinceFocusNode?.dispose();
    violatorAddProvinceTextController?.dispose();

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
