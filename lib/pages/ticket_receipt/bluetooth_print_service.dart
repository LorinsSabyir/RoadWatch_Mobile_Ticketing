import 'package:print_bluetooth_thermal/print_bluetooth_thermal.dart';

class BluetoothPrintService {
  // 🔹 Get paired Bluetooth devices
  static Future<List<dynamic>> getPairedDevices() async {
    final List? devices = await PrintBluetoothThermal.pairedBluetooths;
    return devices ?? [];
  }

  // 🔹 Connect to printer using MAC address
  static Future<bool> connect(String macAddress) async {
    bool result =
        await PrintBluetoothThermal.connect(macPrinterAddress: macAddress);
    return result;
  }

  // 🔹 Check Bluetooth connection status
  static Future<bool> isConnected() async {
    bool result = await PrintBluetoothThermal.connectionStatus;
    return result;
  }
}
