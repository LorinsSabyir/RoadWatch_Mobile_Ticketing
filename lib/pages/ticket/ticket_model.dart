import '/components/violation_card/violation_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'ticket_widget.dart' show TicketWidget;
import 'package:flutter/material.dart';

class TicketModel extends FlutterFlowModel<TicketWidget> {
  ///  Local state fields for this page.

  List<String> selectedViolationName = [];
  void addToSelectedViolationName(String item) =>
      selectedViolationName.add(item);
  void removeFromSelectedViolationName(String item) =>
      selectedViolationName.remove(item);
  void removeAtIndexFromSelectedViolationName(int index) =>
      selectedViolationName.removeAt(index);
  void insertAtIndexInSelectedViolationName(int index, String item) =>
      selectedViolationName.insert(index, item);
  void updateSelectedViolationNameAtIndex(
          int index, Function(String) updateFn) =>
      selectedViolationName[index] = updateFn(selectedViolationName[index]);

  List<String> selectedViolationSection = [];
  void addToSelectedViolationSection(String item) =>
      selectedViolationSection.add(item);
  void removeFromSelectedViolationSection(String item) =>
      selectedViolationSection.remove(item);
  void removeAtIndexFromSelectedViolationSection(int index) =>
      selectedViolationSection.removeAt(index);
  void insertAtIndexInSelectedViolationSection(int index, String item) =>
      selectedViolationSection.insert(index, item);
  void updateSelectedViolationSectionAtIndex(
          int index, Function(String) updateFn) =>
      selectedViolationSection[index] =
          updateFn(selectedViolationSection[index]);

  List<double> selectedViolationFine = [];
  void addToSelectedViolationFine(double item) =>
      selectedViolationFine.add(item);
  void removeFromSelectedViolationFine(double item) =>
      selectedViolationFine.remove(item);
  void removeAtIndexFromSelectedViolationFine(int index) =>
      selectedViolationFine.removeAt(index);
  void insertAtIndexInSelectedViolationFine(int index, double item) =>
      selectedViolationFine.insert(index, item);
  void updateSelectedViolationFineAtIndex(
          int index, Function(double) updateFn) =>
      selectedViolationFine[index] = updateFn(selectedViolationFine[index]);

  List<DocumentReference> selectedViolationId = [];
  void addToSelectedViolationId(DocumentReference item) =>
      selectedViolationId.add(item);
  void removeFromSelectedViolationId(DocumentReference item) =>
      selectedViolationId.remove(item);
  void removeAtIndexFromSelectedViolationId(int index) =>
      selectedViolationId.removeAt(index);
  void insertAtIndexInSelectedViolationId(int index, DocumentReference item) =>
      selectedViolationId.insert(index, item);
  void updateSelectedViolationIdAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      selectedViolationId[index] = updateFn(selectedViolationId[index]);

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
  // State field(s) for vehicleDec widget.
  FocusNode? vehicleDecFocusNode;
  TextEditingController? vehicleDecTextController;
  String? Function(BuildContext, String?)? vehicleDecTextControllerValidator;
  // Models for ViolationCard dynamic component.
  late FlutterFlowDynamicModels<ViolationCardModel> violationCardModels1;
  // Models for ViolationCard dynamic component.
  late FlutterFlowDynamicModels<ViolationCardModel> violationCardModels2;

  @override
  void initState(BuildContext context) {
    violationCardModels1 = FlutterFlowDynamicModels(() => ViolationCardModel());
    violationCardModels2 = FlutterFlowDynamicModels(() => ViolationCardModel());
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

    vehicleDecFocusNode?.dispose();
    vehicleDecTextController?.dispose();

    violationCardModels1.dispose();
    violationCardModels2.dispose();
  }
}
