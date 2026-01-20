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
import 'package:permission_handler/permission_handler.dart';

/// Main function to print using saved printer if available
Future<void> connectPrinter(BuildContext context) async {
  try {
    // STEP 0: Request Bluetooth permission if not granted
    final bluetoothPermission = await Permission.bluetooth.status;
    final connectPermission = await Permission.bluetoothConnect.status;
    final scanPermission = await Permission.bluetoothScan.status;

    if (bluetoothPermission.isDenied ||
        connectPermission.isDenied ||
        scanPermission.isDenied) {
      final result = await [
        Permission.bluetooth,
        Permission.bluetoothConnect,
        Permission.bluetoothScan,
      ].request();

      // If still denied after requesting
      if (result.values.any((status) => status.isDenied)) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(milliseconds: 1500),
            content: Text('⚠️ Bluetooth permission is required to continue.'),
          ),
        );
        return;
      }
    }

    // STEP 1: Ensure Bluetooth is enabled
    bool bluetoothEnabled = await PrintBluetoothThermal.bluetoothEnabled;
    if (!bluetoothEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(milliseconds: 1500),
          content: Text('❌ Bluetooth is OFF. Please enable it.'),
        ),
      );
      return;
    }

    // STEP 2: Try connecting to a previously saved printer
    final prefs = await SharedPreferences.getInstance();
    final savedMac = prefs.getString('saved_printer_mac');
    BluetoothInfo? selectedDevice;

    if (savedMac != null) {
      bool connected =
          await PrintBluetoothThermal.connect(macPrinterAddress: savedMac);
      if (connected) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: FlutterFlowTheme.of(context).success,
            duration: const Duration(milliseconds: 1000),
            content: Text(
              '✅ Reconnected to saved printer ($savedMac)',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
            ),
          ),
        );
        selectedDevice =
            BluetoothInfo(name: "Saved Printer", macAdress: savedMac);
      }
    }

    // STEP 3: If not connected, let user select a printer manually
    if (selectedDevice == null) {
      List<BluetoothInfo> devices =
          await PrintBluetoothThermal.pairedBluetooths;

      if (devices.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(milliseconds: 1500),
            content: Text('⚠️ No paired Bluetooth printers found.'),
          ),
        );
        return;
      }

      selectedDevice = await showDialog<BluetoothInfo>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Select Bluetooth Printer'),
          content: SizedBox(
            width: double.maxFinite,
            height: 250,
            child: ListView.builder(
              itemCount: devices.length,
              itemBuilder: (context, index) {
                final device = devices[index];
                return ListTile(
                  leading: const Icon(Icons.print),
                  title: Text(device.name ?? 'Unknown Printer'),
                  subtitle: Text(device.macAdress ?? 'No MAC Address'),
                  onTap: () => Navigator.pop(context, device),
                );
              },
            ),
          ),
        ),
      );

      if (selectedDevice == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(milliseconds: 1500),
            content: Text('⚠️ No printer selected.'),
          ),
        );
        return;
      }

      bool connectStatus = await PrintBluetoothThermal.connect(
        macPrinterAddress: selectedDevice.macAdress!,
      );

      if (!connectStatus) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: FlutterFlowTheme.of(context).error,
            duration: const Duration(milliseconds: 1000),
            content: Text(
              '❌ Failed to connect to ${selectedDevice.name ?? "Printer"}.',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                  ),
            ),
          ),
        );
        return;
      }

      await prefs.setString('saved_printer_mac', selectedDevice.macAdress!);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: FlutterFlowTheme.of(context).success,
          duration: const Duration(milliseconds: 1000),
          content: Text(
            '✅ Connected and saved ${selectedDevice.name ?? "printer"} for future use.',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
          ),
        ),
      );
    }

    // STEP 4: Test print
    bool connectionStatus = await PrintBluetoothThermal.connectionStatus;
    if (connectionStatus) {
      String enter = '\n';
      await PrintBluetoothThermal.writeBytes(enter.codeUnits);

      await PrintBluetoothThermal.writeString(
        printText:
            PrintTextSize(size: 2, text: "ROAD WATCH TEST PRINT $enter$enter"),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: FlutterFlowTheme.of(context).success,
          duration: const Duration(milliseconds: 1000),
          content: Text(
            '✅ Printed successfully on ${selectedDevice?.name ?? "Saved Printer"}',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: FlutterFlowTheme.of(context).error,
          duration: const Duration(milliseconds: 1000),
          content: Text(
            '⚠️ Printer not connected.',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
          ),
        ),
      );
    }

    // Sets appstate "isPrinterConnected" into true.
    FFAppState().update(() {
      FFAppState().isPrinterConnected = true;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: FlutterFlowTheme.of(context).error,
        duration: const Duration(milliseconds: 1000),
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
