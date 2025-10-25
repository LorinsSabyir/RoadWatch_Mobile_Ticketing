// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

// ignore_for_file: depend_on_referenced_packages
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

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

    // ✅ Step 2: Get your App State data
    String violatorName = FFAppState().violatorAddName;
    List<String> violations = FFAppState().selectedViolationName;
    List<double> fines = FFAppState().selectedViolationFine;
    double totalFine = FFAppState().violationTotalFine;

    // ✅ Step 3: Format the data for printing
    String enter = '\n';
    StringBuffer buffer = StringBuffer();

    buffer.writeln("ROAD WATCH TICKET$enter");
    buffer.writeln("============================$enter");
    buffer.writeln("Violator: $violatorName$enter");
    buffer.writeln("Ticket No: $totalFine$enter");
    buffer.writeln("----------------------------$enter");
    buffer.writeln("Violations:$enter");

    for (int i = 0; i < violations.length; i++) {
      String violation = violations[i];
      double fine = (i < fines.length) ? fines[i] : 0;
      buffer.writeln("- $violation : ₱$fine$enter");
    }

    buffer.writeln("============================$enter");
    buffer.writeln("Thank you for your cooperation.$enter$enter$enter");

    // ✅ Step 4: Print the ticket
    await PrintBluetoothThermal.writeString(
      printText: PrintTextSize(size: 1, text: buffer.toString()),
    );

    // ✅ Step 5: Success message
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
