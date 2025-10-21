import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'enforcer_selfie_widget.dart' show EnforcerSelfieWidget;
import 'package:flutter/material.dart';

class EnforcerSelfieModel extends FlutterFlowModel<EnforcerSelfieWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadEnforcerFace = false;
  FFUploadedFile uploadedLocalFile_uploadEnforcerFace =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_enforcerFace = false;
  FFUploadedFile uploadedLocalFile_enforcerFace =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_enforcerFace = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
