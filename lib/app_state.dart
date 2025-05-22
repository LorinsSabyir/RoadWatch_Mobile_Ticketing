import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedViolation =
          prefs.getStringList('ff_selectedViolation') ?? _selectedViolation;
    });
    _safeInit(() {
      _selectedViolationFine = prefs
              .getStringList('ff_selectedViolationFine')
              ?.map(double.parse)
              .toList() ??
          _selectedViolationFine;
    });
    _safeInit(() {
      _selectedViolationSub = prefs.getStringList('ff_selectedViolationSub') ??
          _selectedViolationSub;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _currentPage = 0;
  int get currentPage => _currentPage;
  set currentPage(int value) {
    _currentPage = value;
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  List<String> _selectedViolation = [];
  List<String> get selectedViolation => _selectedViolation;
  set selectedViolation(List<String> value) {
    _selectedViolation = value;
    prefs.setStringList('ff_selectedViolation', value);
  }

  void addToSelectedViolation(String value) {
    selectedViolation.add(value);
    prefs.setStringList('ff_selectedViolation', _selectedViolation);
  }

  void removeFromSelectedViolation(String value) {
    selectedViolation.remove(value);
    prefs.setStringList('ff_selectedViolation', _selectedViolation);
  }

  void removeAtIndexFromSelectedViolation(int index) {
    selectedViolation.removeAt(index);
    prefs.setStringList('ff_selectedViolation', _selectedViolation);
  }

  void updateSelectedViolationAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedViolation[index] = updateFn(_selectedViolation[index]);
    prefs.setStringList('ff_selectedViolation', _selectedViolation);
  }

  void insertAtIndexInSelectedViolation(int index, String value) {
    selectedViolation.insert(index, value);
    prefs.setStringList('ff_selectedViolation', _selectedViolation);
  }

  List<double> _selectedViolationFine = [];
  List<double> get selectedViolationFine => _selectedViolationFine;
  set selectedViolationFine(List<double> value) {
    _selectedViolationFine = value;
    prefs.setStringList(
        'ff_selectedViolationFine', value.map((x) => x.toString()).toList());
  }

  void addToSelectedViolationFine(double value) {
    selectedViolationFine.add(value);
    prefs.setStringList('ff_selectedViolationFine',
        _selectedViolationFine.map((x) => x.toString()).toList());
  }

  void removeFromSelectedViolationFine(double value) {
    selectedViolationFine.remove(value);
    prefs.setStringList('ff_selectedViolationFine',
        _selectedViolationFine.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromSelectedViolationFine(int index) {
    selectedViolationFine.removeAt(index);
    prefs.setStringList('ff_selectedViolationFine',
        _selectedViolationFine.map((x) => x.toString()).toList());
  }

  void updateSelectedViolationFineAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    selectedViolationFine[index] = updateFn(_selectedViolationFine[index]);
    prefs.setStringList('ff_selectedViolationFine',
        _selectedViolationFine.map((x) => x.toString()).toList());
  }

  void insertAtIndexInSelectedViolationFine(int index, double value) {
    selectedViolationFine.insert(index, value);
    prefs.setStringList('ff_selectedViolationFine',
        _selectedViolationFine.map((x) => x.toString()).toList());
  }

  List<String> _selectedViolationSub = [];
  List<String> get selectedViolationSub => _selectedViolationSub;
  set selectedViolationSub(List<String> value) {
    _selectedViolationSub = value;
    prefs.setStringList('ff_selectedViolationSub', value);
  }

  void addToSelectedViolationSub(String value) {
    selectedViolationSub.add(value);
    prefs.setStringList('ff_selectedViolationSub', _selectedViolationSub);
  }

  void removeFromSelectedViolationSub(String value) {
    selectedViolationSub.remove(value);
    prefs.setStringList('ff_selectedViolationSub', _selectedViolationSub);
  }

  void removeAtIndexFromSelectedViolationSub(int index) {
    selectedViolationSub.removeAt(index);
    prefs.setStringList('ff_selectedViolationSub', _selectedViolationSub);
  }

  void updateSelectedViolationSubAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedViolationSub[index] = updateFn(_selectedViolationSub[index]);
    prefs.setStringList('ff_selectedViolationSub', _selectedViolationSub);
  }

  void insertAtIndexInSelectedViolationSub(int index, String value) {
    selectedViolationSub.insert(index, value);
    prefs.setStringList('ff_selectedViolationSub', _selectedViolationSub);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
