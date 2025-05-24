import '/flutter_flow/flutter_flow_util.dart';
import 'scan_license_widget.dart' show ScanLicenseWidget;
import 'package:flutter/material.dart';

class ScanLicenseModel extends FlutterFlowModel<ScanLicenseWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
