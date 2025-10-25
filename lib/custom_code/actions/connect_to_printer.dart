// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

Future<bool> connectToPrinter(String printerAddress) async {
  try {
    bool? result =
        await PrintBluetoothThermal.connect(macPrinterAddress: printerAddress);

    if (result == true) {
      debugPrint("✅ Connected to printer: $printerAddress");
      return true;
    } else {
      debugPrint("⚠️ Failed to connect to printer.");
      return false;
    }
  } catch (e) {
    debugPrint("❌ Connection error: $e");
    return false;
  }
}
