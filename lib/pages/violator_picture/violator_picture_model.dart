import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'violator_picture_widget.dart' show ViolatorPictureWidget;
import 'package:flutter/material.dart';

class ViolatorPictureModel extends FlutterFlowModel<ViolatorPictureWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadViolatorPic = false;
  FFUploadedFile uploadedLocalFile_uploadViolatorPic =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  bool isDataUploading_violatorPic = false;
  FFUploadedFile uploadedLocalFile_violatorPic =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_violatorPic = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
