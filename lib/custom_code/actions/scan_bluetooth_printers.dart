// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Custom imports
import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

Future<List<String>> scanBluetoothPrinters() async {
  try {
    // Check if Bluetooth is on
    bool bluetoothEnabled = await PrintBluetoothThermal.bluetoothEnabled;
    if (!bluetoothEnabled) {
      await PrintBluetoothThermal.bluetoothEnabled;
      return ['❌ Bluetooth is OFF. Please enable it.'];
    }

    // Scan for devices
    List<dynamic> devices = await PrintBluetoothThermal.pairedBluetooths;
    if (devices.isEmpty) {
      return ['⚠️ No Bluetooth printers found.'];
    }

    // Format as "PrinterName|MACAddress"
    List<String> printerList = devices.map((device) {
      final String name = device['name'] ?? 'Unknown';
      final String mac = device['macAddress'] ?? '';
      return '$name|$mac';
    }).toList();

    return printerList;
  } catch (e) {
    debugPrint('⚠️ Error scanning printers: $e');
    return ['❌ Error: $e'];
  }
}
