// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// ignore_for_file: depend_on_referenced_packages
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';
import 'package:esc_pos_utils_plus/esc_pos_utils_plus.dart';

Future<void> printTicket(BuildContext context) async {
  try {
    // ✅ Step 1: Check if connected
    bool isConnected = await PrintBluetoothThermal.connectionStatus;
    if (!isConnected) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: FlutterFlowTheme.of(context).error,
          duration: const Duration(milliseconds: 2000),
          content: Text(
            '⚠️ No printer connected!',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
          ),
        ),
      );
      return;
    }

    // ✅ Step 2: Print ticket
    // Call the function to get the full list of ESC/POS commands
    List<int> ticket = await textFormat();
    await PrintBluetoothThermal.writeBytes(ticket);

    // ✅ Step 3: Success message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: FlutterFlowTheme.of(context).success,
        duration: const Duration(milliseconds: 2000),
        content: Text(
          '✅ Ticket printed successfully!',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
        ),
      ),
    );
  } catch (e) {
    // ⚠️ Error handling
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: FlutterFlowTheme.of(context).error,
        duration: const Duration(milliseconds: 2000),
        content: Text(
          '❌ Error: $e',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}

Future<List<int>> textFormat() async {
  List<int> bytes = []; // Initialize the byte buffer

  // FIX: Corrected generator initialization syntax
  final profile = await CapabilityProfile.load();
  final generator = Generator(PaperSize.mm58, profile);

  // Citation data
  String citationId = FFAppState().citationId;
  String appreEnforcer = FFAppState().appreEnforcer;
  String apprePlace = FFAppState().appreAddPlace;
  String appreDateTime = FFAppState().appreAddDateTime;
  String appreDateMonth = FFAppState().appreAddDateMonth;
  String appreDateDay = FFAppState().appreAddDateDay;
  String appreDateYear = FFAppState().appreAddDateYear;
  String fullAppreDate =
      '$appreDateMonth $appreDateDay, $appreDateYear - $appreDateTime';

  // Violator personal data
  String violatorName = FFAppState().violatorAddName;
  String violatorGender = FFAppState().violatorAddGender;
  String violatorContact = FFAppState().violatorAddContact;

  // Violator address
  String violatorPrk = FFAppState().violatorAddPrk;
  String violatorBrgy = FFAppState().violatorAddBrgy;
  String violatorCity = FFAppState().violatorAddCity;
  String violatorProvince = FFAppState().violatorAddProvince;
  String violatorLicenseNum = FFAppState().violatorAddLicenseNum;
  String fullAddress =
      '$violatorPrk, $violatorBrgy, $violatorCity, $violatorProvince';

  // Vehicle data
  String vehicleType = FFAppState().vehicleAddType;
  String vehicleBrand = FFAppState().vehicleAddBrand;
  String vehicleModel = FFAppState().vehicleAddModel;
  String vehicleDesc = FFAppState().vehicleAddDesc;
  String vehiclePlateNum = FFAppState().vehicleAddPlateNum;
  String vehicleSerialNum = FFAppState().vehicleAddSerialNum;

  // Violation data
  List<String> violations = FFAppState().selectedViolationName;
  List<double> fines = FFAppState().selectedViolationFine;
  double totalFine = FFAppState().violationTotalFine;
  String totalFineValue = totalFine.toStringAsFixed(2);

  // Note sa last part
  String note =
      "I hereby promise to appear at the office of the City Mayor with in two (2) days to answer the above-mentioned charges. It is understood that if I fail to appear therein and voluntarily pay the fines the city shall proceed with the filling of the case in court.";

  // ✅ Step 2: Format non-string into text string.

  // --- Title ---
  bytes += generator.text(
    'RoadWatch',
    styles: PosStyles(
        height: PosTextSize.size2,
        width: PosTextSize.size2,
        align: PosAlign.center,
        bold: true),
  );
  bytes += generator.text(
    'Panabo City',
    styles: PosStyles(
      align: PosAlign.center,
    ),
  );
  bytes += generator.text(
    'Traffic Management Unit',
    styles: PosStyles(
      align: PosAlign.center,
    ),
  );
  bytes += generator.text(
    'TRAFFIC CITATION TICKET',
    styles: PosStyles(
        align: PosAlign.center, fontType: PosFontType.fontA, bold: true),
  );
  bytes += generator.emptyLines(1);

  // --- Header ---
  bytes += generator.row([
    PosColumn(
        text: 'Control #:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: citationId,
        width: 8,
        styles: PosStyles(
          height: PosTextSize.size2,
          width: PosTextSize.size2,
          align: PosAlign.right,
          fontType: PosFontType.fontA,
          bold: false,
          underline: true,
        )),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Date:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: fullAppreDate,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Officer:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: appreEnforcer,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Address:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: apprePlace,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.text('================================',
      styles: PosStyles(fontType: PosFontType.fontA, bold: true));

  // --- Violator Data ---
  bytes += generator.text(
    'Violator Data',
    styles: PosStyles(
        align: PosAlign.left, fontType: PosFontType.fontA, bold: true),
  );
  bytes += generator.row([
    PosColumn(
        text: 'Name:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: violatorName,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Gender:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: violatorGender,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Contact #:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: violatorContact,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Address:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: fullAddress,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'License #:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: violatorLicenseNum,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);

  bytes += generator.text('================================',
      styles: PosStyles(fontType: PosFontType.fontA, bold: true));

  // --- Vehicle Data ---
  bytes += generator.text(
    'Vehicle Data',
    styles: PosStyles(
        align: PosAlign.left, fontType: PosFontType.fontA, bold: true),
  );
  bytes += generator.row([
    PosColumn(
        text: 'Type:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: vehicleType,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Brand:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: vehicleBrand,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Model:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: vehicleModel,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Desc.:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: vehicleDesc,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Plate #:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: vehiclePlateNum,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.row([
    PosColumn(
        text: 'Chasis #:',
        width: 4,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    PosColumn(
        text: vehicleSerialNum,
        width: 8,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);
  bytes += generator.text('================================',
      styles: PosStyles(fontType: PosFontType.fontA, bold: true));

  // --- Violation Data ---

  // Violations Header
  bytes += generator.row([
    PosColumn(
        text: 'Violations:',
        width: 8,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: true)),
    PosColumn(
        text: "Fines",
        width: 4,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);

  // Violations List Loop
  for (int i = 0; i < violations.length; i++) {
    String violationName = violations[i];
    double fineAmount = (i < fines.length) ? fines[i] : 0.0;
    String fineString = fineAmount.toStringAsFixed(2);

    bytes += generator.row([
      // FIX: Using +=
      PosColumn(
          text: violationName,
          width: 8,
          styles: PosStyles(
              align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
      PosColumn(
          text: fineString,
          width: 4,
          styles: PosStyles(
              align: PosAlign.right, fontType: PosFontType.fontA, bold: false)),
    ]);
  }

  bytes += generator.text('--------------------------------',
      styles: PosStyles(fontType: PosFontType.fontA));

  // --- Total Fine ---
  bytes += generator.row([
    // FIX: Using +=
    PosColumn(
        text: 'Total Fine:',
        width: 6,
        styles: PosStyles(
            align: PosAlign.left, fontType: PosFontType.fontA, bold: false)),
    // FIX: Using the formatted totalFineValue, not totalFineString (which had extra text/newline)
    PosColumn(
        text: totalFineValue,
        width: 6,
        styles: PosStyles(
            align: PosAlign.right, fontType: PosFontType.fontA, bold: true)),
  ]);

  bytes += generator.text('================================',
      styles: PosStyles(fontType: PosFontType.fontA, bold: true));

  // Note sa last part
  bytes += generator.emptyLines(1);
  bytes += generator.text(
    note,
    styles: PosStyles(fontType: PosFontType.fontA, bold: false),
  );

  bytes += generator.emptyLines(1);
  bytes += generator.text('________________________________',
      styles: PosStyles(fontType: PosFontType.fontA, bold: false));

  bytes += generator.text('Apprehending Officer',
      styles: PosStyles(align: PosAlign.center, fontType: PosFontType.fontA));

  bytes += generator.emptyLines(2);
  bytes += generator.text('Thank you for your cooperation.',
      styles: PosStyles(align: PosAlign.center, fontType: PosFontType.fontA));

  bytes += generator.feed(1);
  bytes += generator.cut();
  return bytes;
}
