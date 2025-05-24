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
  // State field(s) for violatorLicenseNum_create widget.
  FocusNode? violatorLicenseNumCreateFocusNode;
  TextEditingController? violatorLicenseNumCreateTextController;
  String? Function(BuildContext, String?)?
      violatorLicenseNumCreateTextControllerValidator;
  // State field(s) for violatorAddPrk_create widget.
  FocusNode? violatorAddPrkCreateFocusNode;
  TextEditingController? violatorAddPrkCreateTextController;
  String? Function(BuildContext, String?)?
      violatorAddPrkCreateTextControllerValidator;
  // State field(s) for violatorAddBrgy_create widget.
  FocusNode? violatorAddBrgyCreateFocusNode;
  TextEditingController? violatorAddBrgyCreateTextController;
  String? Function(BuildContext, String?)?
      violatorAddBrgyCreateTextControllerValidator;
  // State field(s) for violatorAddCity_create widget.
  FocusNode? violatorAddCityCreateFocusNode;
  TextEditingController? violatorAddCityCreateTextController;
  String? Function(BuildContext, String?)?
      violatorAddCityCreateTextControllerValidator;
  // State field(s) for violatorAddProvince_create widget.
  FocusNode? violatorAddProvinceCreateFocusNode;
  TextEditingController? violatorAddProvinceCreateTextController;
  String? Function(BuildContext, String?)?
      violatorAddProvinceCreateTextControllerValidator;
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

    violatorLicenseNumCreateFocusNode?.dispose();
    violatorLicenseNumCreateTextController?.dispose();

    violatorAddPrkCreateFocusNode?.dispose();
    violatorAddPrkCreateTextController?.dispose();

    violatorAddBrgyCreateFocusNode?.dispose();
    violatorAddBrgyCreateTextController?.dispose();

    violatorAddCityCreateFocusNode?.dispose();
    violatorAddCityCreateTextController?.dispose();

    violatorAddProvinceCreateFocusNode?.dispose();
    violatorAddProvinceCreateTextController?.dispose();

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
