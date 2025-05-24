import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'text_with_icon_model.dart';
export 'text_with_icon_model.dart';

class TextWithIconWidget extends StatefulWidget {
  const TextWithIconWidget({
    super.key,
    this.icon,
    this.text,
  });

  final Widget? icon;
  final String? text;

  @override
  State<TextWithIconWidget> createState() => _TextWithIconWidgetState();
}

class _TextWithIconWidgetState extends State<TextWithIconWidget> {
  late TextWithIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextWithIconModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          widget.icon!,
          Text(
            valueOrDefault<String>(
              widget.text,
              'Text',
            ),
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  font: GoogleFonts.urbanist(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineSmall.fontStyle,
                ),
          ),
        ].divide(SizedBox(width: 32.0)),
      ),
    );
  }
}
