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
import 'package:shared_preferences/shared_preferences.dart';

Future<void> disconnectPrinter(BuildContext context) async {
  try {
    // Step 1: Check if any printer is connected
    bool isConnected = await PrintBluetoothThermal.connectionStatus;

    if (!isConnected) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            duration: const Duration(milliseconds: 1000),
            content: Text('⚠️ No printer is currently connected.')),
      );
      return;
    }

    // Step 2: Disconnect the current printer
    final bool result = await PrintBluetoothThermal.disconnect;

    if (!result) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: FlutterFlowTheme.of(context).success,
          duration: const Duration(milliseconds: 1000),
          content: Text(
            '🖨️ Printer disconnected successfully.',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
          ),
        ),
      );

      // Step 3: Clear saved printer address (optional but recommended)
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove('saved_printer_mac');

      return;
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: FlutterFlowTheme.of(context).error,
        duration: const Duration(milliseconds: 1000),
        content: Text(
          '❌ Error disconnecting printer: $e',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
