import '/components/violation_add/violation_add_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'searched_violation_model.dart';
export 'searched_violation_model.dart';

class SearchedViolationWidget extends StatefulWidget {
  const SearchedViolationWidget({super.key});

  @override
  State<SearchedViolationWidget> createState() =>
      _SearchedViolationWidgetState();
}

class _SearchedViolationWidgetState extends State<SearchedViolationWidget> {
  late SearchedViolationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchedViolationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: 400.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x35000000),
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                wrapWithModel(
                  model: _model.violationAddModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: ViolationAddWidget(
                    title: 'No Helmet',
                    subtitle: 'Rider / Backrider',
                    fine: '500',
                  ),
                ),
                wrapWithModel(
                  model: _model.violationAddModel2,
                  updateCallback: () => safeSetState(() {}),
                  child: ViolationAddWidget(
                    title: 'Counterflowing',
                    subtitle: 'Driving on the other side of the lane',
                    fine: '800',
                  ),
                ),
                wrapWithModel(
                  model: _model.violationAddModel3,
                  updateCallback: () => safeSetState(() {}),
                  child: ViolationAddWidget(
                    title: 'Overspeeding',
                    subtitle: 'Driving over the speed limit',
                    fine: '800',
                  ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ],
        ),
      ),
    );
  }
}
