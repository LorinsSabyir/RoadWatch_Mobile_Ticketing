import 'package:bluetooth_thermal_printer/bluetooth_thermal_printer.dart';

class BluetoothPrintService {
  static Future<List<String>> getPairedDevices() async {
    final List? devices = await BluetoothThermalPrinter.getBluetooths;
    return devices?.cast<String>() ?? [];
  }

  static Future<bool> connect(String macAddress) async {
    final String? result = await BluetoothThermalPrinter.connect(macAddress);
    return result == "true";
  }

  static Future<void> printText(String text) async {
    await BluetoothThermalPrinter.writeText(text);
  }
}
