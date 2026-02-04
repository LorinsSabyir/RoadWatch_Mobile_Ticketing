import '/backend/backend.dart';
import '/components/violation_card/violation_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'search_page_copy1_model.dart';
export 'search_page_copy1_model.dart';

class SearchPageCopy1Widget extends StatefulWidget {
  const SearchPageCopy1Widget({super.key});

  static String routeName = 'SearchPageCopy1';
  static String routePath = '/searchPageCopy1';

  @override
  State<SearchPageCopy1Widget> createState() => _SearchPageCopy1WidgetState();
}

class _SearchPageCopy1WidgetState extends State<SearchPageCopy1Widget> {
  late SearchPageCopy1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchPageCopy1Model());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'SearchPageCopy1'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SEARCH_COPY1_SearchPageCopy1_ON_INIT_STA');
      logFirebaseEvent('SearchPageCopy1_update_app_state');
      FFAppState().searchActive = false;
      safeSetState(() {});
    });

    _model.searchbarTextController ??= TextEditingController();
    _model.searchbarFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<ViolationRecord>>(
      stream: FFAppState().violationSearchListCache(
        requestFn: () => queryViolationRecord(),
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
        List<ViolationRecord> searchPageCopy1ViolationRecordList =
            snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(25.0),
              child: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                title: Text(
                  'Select Violations',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        font: GoogleFonts.urbanist(
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              ),
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
                          height: 74.0,
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
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 60.0,
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 30.0,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'SEARCH_PAGE_COPY1_PAGE_backButton_ON_TAP');
                                  logFirebaseEvent('backButton_navigate_back');
                                  context.pop();
                                },
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 8.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.82,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).textbox,
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            child: TextFormField(
                                              controller: _model
                                                  .searchbarTextController,
                                              focusNode:
                                                  _model.searchbarFocusNode,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                '_model.searchbarTextController',
                                                Duration(milliseconds: 2000),
                                                () async {
                                                  logFirebaseEvent(
                                                      'SEARCH_COPY1_searchbar_ON_TEXTFIELD_CHAN');
                                                  logFirebaseEvent(
                                                      'searchbar_simple_search');
                                                  safeSetState(() {
                                                    _model.simpleSearchResults =
                                                        TextSearch(
                                                      searchPageCopy1ViolationRecordList
                                                          .map(
                                                            (record) =>
                                                                TextSearchItem
                                                                    .fromTerms(
                                                                        record,
                                                                        [
                                                                  record
                                                                      .violationName,
                                                                  record
                                                                      .violationTitle
                                                                ]),
                                                          )
                                                          .toList(),
                                                    )
                                                            .search(_model
                                                                .searchbarTextController
                                                                .text)
                                                            .map(
                                                                (r) => r.object)
                                                            .toList();
                                                    ;
                                                  });
                                                  logFirebaseEvent(
                                                      'searchbar_update_app_state');
                                                  FFAppState().searchActive =
                                                      true;
                                                  safeSetState(() {});
                                                },
                                              ),
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText: 'Search...',
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyLarge
                                                    .override(
                                                      font: GoogleFonts.manrope(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .textboxTextHollow,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Color(0x00000000),
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                errorBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                focusedErrorBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                              ),
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyLarge
                                                  .override(
                                                    font: GoogleFonts.manrope(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textboxTextActive,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyLarge
                                                            .fontStyle,
                                                  ),
                                              validator: _model
                                                  .searchbarTextControllerValidator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderRadius: 50.0,
                                          buttonSize: 40.0,
                                          icon: Icon(
                                            Icons.close,
                                            color: FlutterFlowTheme.of(context)
                                                .textboxTextHollow,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'SEARCH_COPY1_closeButton_ON_TAP');
                                            logFirebaseEvent(
                                                'closeButton_clear_text_fields_pin_codes');
                                            safeSetState(() {
                                              _model.searchbarTextController
                                                  ?.clear();
                                            });
                                            logFirebaseEvent(
                                                'closeButton_update_app_state');
                                            FFAppState().searchActive = false;
                                            safeSetState(() {});
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    StreamBuilder<List<CitationRecord>>(
                      stream: queryCitationRecord(
                        queryBuilder: (citationRecord) => citationRecord
                            .where(
                              'appre_date_month',
                              isEqualTo: dateTimeFormat(
                                "MMMM",
                                getCurrentTimestamp,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                            )
                            .where(
                              'appre_date_year',
                              isEqualTo: dateTimeFormat(
                                "yyyy",
                                getCurrentTimestamp,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                            )
                            .where(
                              'appre_date_day',
                              isEqualTo: dateTimeFormat(
                                "dd",
                                getCurrentTimestamp,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                            )
                            .where(
                              'violator_name',
                              isEqualTo: FFAppState().violatorAddName,
                            ),
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitRing(
                                color: FlutterFlowTheme.of(context).tertiary,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        List<CitationRecord> mainCitationRecordList =
                            snapshot.data!;
                        final mainCitationRecord =
                            mainCitationRecordList.isNotEmpty
                                ? mainCitationRecordList.first
                                : null;

                        return Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (!FFAppState().searchActive)
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final noSearch =
                                          searchPageCopy1ViolationRecordList
                                              .toList();

                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: noSearch.length,
                                        itemBuilder: (context, noSearchIndex) {
                                          final noSearchItem =
                                              noSearch[noSearchIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Container(
                                              width: 100.0,
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .violationCardModels1
                                                          .getModel(
                                                        noSearchItem.id,
                                                        noSearchIndex,
                                                      ),
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child:
                                                          ViolationCardWidget(
                                                        key: Key(
                                                          'Keyhxz_${noSearchItem.id}',
                                                        ),
                                                        title: noSearchItem
                                                            .violationName,
                                                        subtitle: noSearchItem
                                                            .section,
                                                        fine:
                                                            noSearchItem.fines,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 40.0,
                                                    height: 40.0,
                                                    decoration: BoxDecoration(),
                                                    child: Visibility(
                                                      visible: (FFAppState()
                                                                  .citationRef
                                                                  .contains(
                                                                      noSearchItem
                                                                          .id) ==
                                                              false) ||
                                                          (mainCitationRecord
                                                                  ?.violationName
                                                                  .contains(
                                                                      noSearchItem
                                                                          .violationName) ==
                                                              true),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderRadius: 50.0,
                                                        buttonSize: 40.0,
                                                        icon: Icon(
                                                          Icons.add,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: (mainCitationRecord
                                                                    ?.violationName
                                                                    .contains(
                                                                        noSearchItem
                                                                            .violationName) ==
                                                                true)
                                                            ? null
                                                            : () async {
                                                                logFirebaseEvent(
                                                                    'SEARCH_PAGE_COPY1_PAGE_addButton_ON_TAP');
                                                                if (FFAppState()
                                                                        .citationRef
                                                                        .contains(
                                                                            noSearchItem.id) ==
                                                                    true) {
                                                                  logFirebaseEvent(
                                                                      'addButton_show_snack_bar');
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Violation already exist',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .error,
                                                                    ),
                                                                  );
                                                                } else {
                                                                  logFirebaseEvent(
                                                                      'addButton_update_app_state');
                                                                  FFAppState().addToSelectedViolationId(
                                                                      noSearchItem
                                                                          .reference);
                                                                  safeSetState(
                                                                      () {});
                                                                  logFirebaseEvent(
                                                                      'addButton_show_snack_bar');
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        'Sucessfully added',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondary,
                                                                    ),
                                                                  );
                                                                }
                                                              },
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(width: 4.0)),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              if (FFAppState().searchActive)
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Searched results',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.manrope(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) {
                                          final search = _model
                                              .simpleSearchResults
                                              .toList();

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: search.length,
                                            itemBuilder:
                                                (context, searchIndex) {
                                              final searchItem =
                                                  search[searchIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Container(
                                                  width: 100.0,
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Expanded(
                                                        child: wrapWithModel(
                                                          model: _model
                                                              .violationCardModels2
                                                              .getModel(
                                                            searchItem.id,
                                                            searchIndex,
                                                          ),
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          child:
                                                              ViolationCardWidget(
                                                            key: Key(
                                                              'Keyqt1_${searchItem.id}',
                                                            ),
                                                            title: searchItem
                                                                .section,
                                                            subtitle: searchItem
                                                                .violationName,
                                                            fine: searchItem
                                                                .fines,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Visibility(
                                                          visible: (FFAppState()
                                                                      .citationRef
                                                                      .contains(
                                                                          searchItem
                                                                              .id) ==
                                                                  false) ||
                                                              (mainCitationRecord
                                                                      ?.violationName
                                                                      .contains(
                                                                          searchItem
                                                                              .violationName) ==
                                                                  true),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderRadius: 50.0,
                                                            buttonSize: 40.0,
                                                            icon: Icon(
                                                              Icons.add,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 24.0,
                                                            ),
                                                            onPressed: (mainCitationRecord
                                                                        ?.violationName
                                                                        .contains(
                                                                            searchItem.violationName) ==
                                                                    true)
                                                                ? null
                                                                : () async {
                                                                    logFirebaseEvent(
                                                                        'SEARCH_PAGE_COPY1_PAGE_addButton_ON_TAP');
                                                                    if (FFAppState()
                                                                            .citationRef
                                                                            .contains(searchItem.id) ==
                                                                        true) {
                                                                      logFirebaseEvent(
                                                                          'addButton_show_snack_bar');
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Violation already exist',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).error,
                                                                        ),
                                                                      );
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'addButton_show_snack_bar');
                                                                      ScaffoldMessenger.of(
                                                                              context)
                                                                          .showSnackBar(
                                                                        SnackBar(
                                                                          content:
                                                                              Text(
                                                                            'Sucessfully added',
                                                                            style:
                                                                                TextStyle(
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                            ),
                                                                          ),
                                                                          duration:
                                                                              Duration(milliseconds: 4000),
                                                                          backgroundColor:
                                                                              FlutterFlowTheme.of(context).secondary,
                                                                        ),
                                                                      );
                                                                      logFirebaseEvent(
                                                                          'addButton_update_app_state');
                                                                      FFAppState()
                                                                          .addToSelectedViolationName(
                                                                              searchItem.violationName);
                                                                      FFAppState()
                                                                          .addToSelectedViolationFine(
                                                                              searchItem.fines);
                                                                      FFAppState()
                                                                          .addToSelectedViolationSection(
                                                                              searchItem.section);
                                                                      FFAppState()
                                                                          .addToCitationRef(
                                                                              searchItem.id);
                                                                      safeSetState(
                                                                          () {});
                                                                    }
                                                                  },
                                                          ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 4.0)),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
