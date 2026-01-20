import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'is_empty_model.dart';
export 'is_empty_model.dart';

class IsEmptyWidget extends StatefulWidget {
  const IsEmptyWidget({super.key});

  @override
  State<IsEmptyWidget> createState() => _IsEmptyWidgetState();
}

class _IsEmptyWidgetState extends State<IsEmptyWidget> {
  late IsEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IsEmptyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 600.0,
      decoration: BoxDecoration(),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.playlist_remove,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            size: 70.0,
          ),
          Text(
            'List Empty!',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  font: GoogleFonts.urbanist(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).secondaryText,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineSmall.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
