import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
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
  // State field(s) for driverAddress_create widget.
  FocusNode? driverAddressCreateFocusNode;
  TextEditingController? driverAddressCreateTextController;
  String? Function(BuildContext, String?)?
      driverAddressCreateTextControllerValidator;
  // State field(s) for driverContactNum_create widget.
  FocusNode? driverContactNumCreateFocusNode;
  TextEditingController? driverContactNumCreateTextController;
  String? Function(BuildContext, String?)?
      driverContactNumCreateTextControllerValidator;
  // State field(s) for driverLicenseNum_create widget.
  FocusNode? driverLicenseNumCreateFocusNode;
  TextEditingController? driverLicenseNumCreateTextController;
  String? Function(BuildContext, String?)?
      driverLicenseNumCreateTextControllerValidator;
  // State field(s) for vehiclePlateNum_create widget.
  FocusNode? vehiclePlateNumCreateFocusNode1;
  TextEditingController? vehiclePlateNumCreateTextController1;
  String? Function(BuildContext, String?)?
      vehiclePlateNumCreateTextController1Validator;
  // State field(s) for vehicleType_create widget.
  String? vehicleTypeCreateValue;
  FormFieldController<String>? vehicleTypeCreateValueController;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue1;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue2;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue3;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue4;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue5;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue6;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue7;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue8;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue9;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue10;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue11;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue12;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue13;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue14;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue15;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue16;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue17;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue18;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue19;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue20;
  // State field(s) for vehiclePlateNum_create widget.
  FocusNode? vehiclePlateNumCreateFocusNode2;
  TextEditingController? vehiclePlateNumCreateTextController2;
  String? Function(BuildContext, String?)?
      vehiclePlateNumCreateTextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    driverFirstnameCreateFocusNode?.dispose();
    driverFirstnameCreateTextController?.dispose();

    driverLastnameCreateFocusNode?.dispose();
    driverLastnameCreateTextController?.dispose();

    driverAddressCreateFocusNode?.dispose();
    driverAddressCreateTextController?.dispose();

    driverContactNumCreateFocusNode?.dispose();
    driverContactNumCreateTextController?.dispose();

    driverLicenseNumCreateFocusNode?.dispose();
    driverLicenseNumCreateTextController?.dispose();

    vehiclePlateNumCreateFocusNode1?.dispose();
    vehiclePlateNumCreateTextController1?.dispose();

    vehiclePlateNumCreateFocusNode2?.dispose();
    vehiclePlateNumCreateTextController2?.dispose();
  }
}
