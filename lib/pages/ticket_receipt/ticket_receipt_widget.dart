import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/violation_card/violation_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ticket_receipt_model.dart';
export 'ticket_receipt_model.dart';

class TicketReceiptWidget extends StatefulWidget {
  const TicketReceiptWidget({super.key});

  static String routeName = 'TicketReceipt';
  static String routePath = '/ticketReceipt';

  @override
  State<TicketReceiptWidget> createState() => _TicketReceiptWidgetState();
}

class _TicketReceiptWidgetState extends State<TicketReceiptWidget> {
  late TicketReceiptModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TicketReceiptModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'TicketReceipt'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('TICKET_RECEIPT_TicketReceipt_ON_INIT_STA');
      logFirebaseEvent('TicketReceipt_update_app_state');
      FFAppState().violationTotalFine =
          functions.totalFines(FFAppState().selectedViolationFine.toList());
      FFAppState().update(() {});
    });
  }

  @override
  void dispose() {
    // On page dispose action.
    () async {
      logFirebaseEvent('TICKET_RECEIPT_TicketReceipt_ON_DISPOSE');
      logFirebaseEvent('TicketReceipt_update_app_state');
      FFAppState().violationTotalFine = 0.0;
      FFAppState().update(() {});
    }();

    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Citation Receipt',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  font: GoogleFonts.urbanist(
                    fontWeight:
                        FlutterFlowTheme.of(context).displaySmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).displaySmall.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).displaySmall.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).displaySmall.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 4.0,
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.0, 1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Place of Apprehension',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                              AuthUserStreamWidget(
                                builder: (context) => Text(
                                  valueOrDefault(
                                      currentUserDocument?.assignmentAddress,
                                      ''),
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        font: GoogleFonts.urbanist(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .displaySmall
                                                  .fontStyle,
                                        ),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontStyle,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Violator Name:',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                FFAppState().violatorAddName,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      font: GoogleFonts.urbanist(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'License Number:',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                FFAppState().violatorAddLicenseNum,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      font: GoogleFonts.urbanist(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Plate Number:',
                                style: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      font: GoogleFonts.manrope(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                FFAppState().vehicleAddPlateNum,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      font: GoogleFonts.urbanist(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontStyle,
                                      ),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.57,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
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
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Builder(
                            builder: (context) {
                              final selected =
                                  FFAppState().citationRef.toList();

                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: selected.length,
                                separatorBuilder: (_, __) =>
                                    SizedBox(height: 4.0),
                                itemBuilder: (context, selectedIndex) {
                                  final selectedItem = selected[selectedIndex];
                                  return Container(
                                    width: 100.0,
                                    decoration: BoxDecoration(),
                                    child: wrapWithModel(
                                      model:
                                          _model.violationCardModels.getModel(
                                        selectedItem,
                                        selectedIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: ViolationCardWidget(
                                        key: Key(
                                          'Keyvnb_${selectedItem}',
                                        ),
                                        title: FFAppState()
                                            .selectedViolationName
                                            .elementAtOrNull(selectedIndex),
                                        subtitle: FFAppState()
                                            .selectedViolationSection
                                            .elementAtOrNull(selectedIndex),
                                        fine: FFAppState()
                                            .selectedViolationFine
                                            .elementAtOrNull(selectedIndex),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 8.0)).around(SizedBox(height: 8.0)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Fine:',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '₱${FFAppState().violationTotalFine.toString()}',
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    font: GoogleFonts.urbanist(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .fontStyle,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'TICKET_RECEIPT_PAGE_Back_Button_ON_TAP');
                          logFirebaseEvent('Back_Button_navigate_to');

                          context.goNamed(TicketWidget.routeName);
                        },
                        text: 'Back',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 44.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).alternate,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                font: GoogleFonts.manrope(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'TICKET_RECEIPT_PAGE_Submit_Button_ON_TAP');
                          logFirebaseEvent('Submit_Button_custom_action');
                          await actions.generateControlNumber(
                            context,
                          );
                          logFirebaseEvent('Submit_Button_backend_call');

                          await CitationRecord.collection.doc().set({
                            ...createCitationRecordData(
                              confUnitPlateNum: FFAppState().vehicleAddPlateNum,
                              confUnitBrand: FFAppState().vehicleAddBrand,
                              confUnitModel: FFAppState().vehicleAddModel,
                              appreTime: FFAppState().appreAddDateTime,
                              apprePlace: FFAppState().appreAddPlace,
                              violatorName: FFAppState().violatorAddName,
                              appreEnforcer: FFAppState().appreEnforcer,
                              confUnitDesc: FFAppState().vehicleAddDesc,
                              appreEnforcerId: currentUserUid,
                              violatorLicenseNum:
                                  FFAppState().violatorAddLicenseNum,
                              appreDateMonth: FFAppState().appreAddDateMonth,
                              appreDateDay: FFAppState().appreAddDateDay,
                              appreDateYear: FFAppState().appreAddDateYear,
                              createdTime: getCurrentTimestamp,
                              violationTotalFine:
                                  FFAppState().violationTotalFine,
                              violatorGender: FFAppState().violatorAddGender,
                              confUnitType: FFAppState().vehicleAddType,
                              appreEnfId: currentUserReference,
                              confUnitSerialNum:
                                  FFAppState().vehicleAddSerialNum,
                              violatorAddressPrk: FFAppState().violatorAddPrk,
                              violatorAddressBrgy: FFAppState().violatorAddBrgy,
                              violatorAddressCity: FFAppState().violatorAddCity,
                              violatorAddressProvince:
                                  FFAppState().violatorAddProvince,
                              receiptStatus: false,
                              controlNum: FFAppState().citationId,
                              violatorPicUrl: FFAppState().imagePath,
                            ),
                            ...mapToFirestore(
                              {
                                'violation_section':
                                    FFAppState().selectedViolationSection,
                                'violation_fine':
                                    FFAppState().selectedViolationFine,
                                'violation_name':
                                    FFAppState().selectedViolationName,
                              },
                            ),
                          });
                          logFirebaseEvent('Submit_Button_custom_action');
                          await actions.printTicket(
                            context,
                          );
                          logFirebaseEvent('Submit_Button_update_app_state');
                          FFAppState().selectedViolationName = [];
                          FFAppState().selectedViolationFine = [];
                          FFAppState().selectedViolationSection = [];
                          FFAppState().violatorAddName = '';
                          FFAppState().violatorAddContact = '';
                          FFAppState().violatorAddLicenseNum = '';
                          FFAppState().vehicleAddPlateNum = '';
                          FFAppState().vehicleAddType = '';
                          FFAppState().vehicleAddBrand = '';
                          FFAppState().vehicleAddModel = '';
                          FFAppState().appreAddPlace = '';
                          FFAppState().vehicleAddSerialNum = '';
                          FFAppState().violationTotalFine = 0.0;
                          FFAppState().citationRef = [];
                          FFAppState().violatorAddProvince = '';
                          FFAppState().violatorAddCity = '';
                          FFAppState().violatorAddBrgy = '';
                          FFAppState().violatorAddPrk = '';
                          FFAppState().violatorAddGender = '';
                          FFAppState().appreAddDateTime = '';
                          FFAppState().appreAddDateMonth = '';
                          FFAppState().appreAddDateDay = '';
                          FFAppState().appreAddDateYear = '';
                          FFAppState().citationId = '';
                          FFAppState().vehicleAddDesc = 'asdawdasd';
                          FFAppState().imagePath = '';
                          FFAppState().update(() {});
                          logFirebaseEvent('Submit_Button_navigate_to');

                          context.goNamed(TicketWidget.routeName);
                        },
                        text: 'Submit & Print',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 44.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).success,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.manrope(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    );
  }
}
