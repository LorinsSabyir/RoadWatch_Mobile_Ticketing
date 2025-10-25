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

Future<void> printTestAction(BuildContext context) async {
  try {
    // Step 1: Check if Bluetooth is enabled
    bool bluetoothEnabled = await PrintBluetoothThermal.bluetoothEnabled;
    if (!bluetoothEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('❌ Bluetooth is OFF. Please enable it.')),
      );
      return;
    }

    // Step 2: Scan for paired devices
    List<BluetoothInfo> devices = await PrintBluetoothThermal.pairedBluetooths;

    if (devices.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('⚠️ No paired Bluetooth printers found.')),
      );
      return;
    }

    // Step 3: Show dialog to select a printer
    BluetoothInfo? selectedDevice = await showDialog<BluetoothInfo>(
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
        const SnackBar(content: Text('⚠️ No printer selected.')),
      );
      return;
    }

    // Step 4: Try to connect to the selected printer
    bool connectStatus = await PrintBluetoothThermal.connect(
      macPrinterAddress: selectedDevice.macAdress!,
    );

    if (!connectStatus) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('❌ Failed to connect to ${selectedDevice.name}.')),
      );
      return;
    }

    // Step 5: Prepare the print data (plain text with ESC/POS commands)
    bool conexionStatus = await PrintBluetoothThermal.connectionStatus;
    if (conexionStatus) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('✅ Printed successfully on ${selectedDevice.name}')),
      );

      String enter = '\n';
      await PrintBluetoothThermal.writeBytes(enter.codeUnits);
      //size of 1-5
      String text = "Hello $enter";
      await PrintBluetoothThermal.writeString(
          printText: PrintTextSize(size: 1, text: text + " size 1"));
      await PrintBluetoothThermal.writeString(
          printText: PrintTextSize(size: 2, text: text + " size 2"));
      await PrintBluetoothThermal.writeString(
          printText: PrintTextSize(size: 3, text: text + " size 3"));
      await PrintBluetoothThermal.writeString(
          printText: PrintTextSize(size: 2, text: text + " size 4"));
      await PrintBluetoothThermal.writeString(
          printText: PrintTextSize(size: 3, text: text + " size 5"));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('⚠️ Failed to print.')),
      );
    }

    // Step 7: Disconnect the printer after printing
    await PrintBluetoothThermal.disconnect;
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('❌ Error: $e')),
    );
  }
}
