import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/notification_card/notification_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'history_model.dart';
export 'history_model.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({super.key});

  static String routeName = 'History';
  static String routePath = '/history';

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  late HistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoryModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<CitationRecord>>(
      stream: queryCitationRecord(
        queryBuilder: (citationRecord) => citationRecord
            .where(
              'appre_enforcer_id',
              isEqualTo: currentUserUid,
            )
            .orderBy('appre_date_month', descending: true)
            .orderBy('appre_date_day', descending: true)
            .orderBy('appre_date_year', descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitRing(
                  color: FlutterFlowTheme.of(context).tertiary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<CitationRecord> historyCitationRecordList = snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            title: Text(
              'Citation History',
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    font: GoogleFonts.urbanist(
                      fontWeight:
                          FlutterFlowTheme.of(context).displaySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).displaySmall.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).displaySmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).displaySmall.fontStyle,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: SafeArea(
            top: true,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.02,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Color(0x32171717),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16.0),
                            bottomRight: Radius.circular(16.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final card = historyCitationRecordList.toList();

                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: card.length,
                            separatorBuilder: (_, __) => SizedBox(height: 8.0),
                            itemBuilder: (context, cardIndex) {
                              final cardItem = card[cardIndex];
                              return wrapWithModel(
                                model: _model.notificationCardModels.getModel(
                                  cardItem.reference.id,
                                  cardIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: NotificationCardWidget(
                                  key: Key(
                                    'Key9jr_${cardItem.reference.id}',
                                  ),
                                  title: valueOrDefault<String>(
                                    cardItem.confUnitType,
                                    'Type',
                                  ),
                                  subtitle: valueOrDefault<String>(
                                    cardItem.confUnitPlateNum,
                                    'Plate #',
                                  ),
                                  pupose: valueOrDefault<String>(
                                    formatNumber(
                                      cardItem.violationTotalFine,
                                      formatType: FormatType.decimal,
                                      decimalType: DecimalType.automatic,
                                      currency: '₱',
                                    ),
                                    '₱00',
                                  ),
                                  titleColor:
                                      FlutterFlowTheme.of(context).success,
                                  date: cardItem.createdTime,
                                  status:
                                      FlutterFlowTheme.of(context).transparent,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
