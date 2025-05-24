import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
  }

  void addToSelectedViolation(String value) {
    selectedViolation.add(value);
  }

  void removeFromSelectedViolation(String value) {
    selectedViolation.remove(value);
  }

  void removeAtIndexFromSelectedViolation(int index) {
    selectedViolation.removeAt(index);
  }

  void updateSelectedViolationAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedViolation[index] = updateFn(_selectedViolation[index]);
  }

  void insertAtIndexInSelectedViolation(int index, String value) {
    selectedViolation.insert(index, value);
  }

  List<double> _selectedViolationFine = [];
  List<double> get selectedViolationFine => _selectedViolationFine;
  set selectedViolationFine(List<double> value) {
    _selectedViolationFine = value;
  }

  void addToSelectedViolationFine(double value) {
    selectedViolationFine.add(value);
  }

  void removeFromSelectedViolationFine(double value) {
    selectedViolationFine.remove(value);
  }

  void removeAtIndexFromSelectedViolationFine(int index) {
    selectedViolationFine.removeAt(index);
  }

  void updateSelectedViolationFineAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    selectedViolationFine[index] = updateFn(_selectedViolationFine[index]);
  }

  void insertAtIndexInSelectedViolationFine(int index, double value) {
    selectedViolationFine.insert(index, value);
  }

  List<String> _selectedViolationSub = [];
  List<String> get selectedViolationSub => _selectedViolationSub;
  set selectedViolationSub(List<String> value) {
    _selectedViolationSub = value;
  }

  void addToSelectedViolationSub(String value) {
    selectedViolationSub.add(value);
  }

  void removeFromSelectedViolationSub(String value) {
    selectedViolationSub.remove(value);
  }

  void removeAtIndexFromSelectedViolationSub(int index) {
    selectedViolationSub.removeAt(index);
  }

  void updateSelectedViolationSubAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedViolationSub[index] = updateFn(_selectedViolationSub[index]);
  }

  void insertAtIndexInSelectedViolationSub(int index, String value) {
    selectedViolationSub.insert(index, value);
  }

  String _violatorName = '';
  String get violatorName => _violatorName;
  set violatorName(String value) {
    _violatorName = value;
  }

  String _violatorContact = '';
  String get violatorContact => _violatorContact;
  set violatorContact(String value) {
    _violatorContact = value;
  }

  String _violatorLicenseNum = '';
  String get violatorLicenseNum => _violatorLicenseNum;
  set violatorLicenseNum(String value) {
    _violatorLicenseNum = value;
  }

  String _vehiclePlateNum = '';
  String get vehiclePlateNum => _vehiclePlateNum;
  set vehiclePlateNum(String value) {
    _vehiclePlateNum = value;
  }

  String _vehicleType = '';
  String get vehicleType => _vehicleType;
  set vehicleType(String value) {
    _vehicleType = value;
  }

  String _vehicleBrand = '';
  String get vehicleBrand => _vehicleBrand;
  set vehicleBrand(String value) {
    _vehicleBrand = value;
  }

  String _vehicleModel = '';
  String get vehicleModel => _vehicleModel;
  set vehicleModel(String value) {
    _vehicleModel = value;
  }

  String _apprePlace = '';
  String get apprePlace => _apprePlace;
  set apprePlace(String value) {
    _apprePlace = value;
  }

  String _vehicleSerialNum = '';
  String get vehicleSerialNum => _vehicleSerialNum;
  set vehicleSerialNum(String value) {
    _vehicleSerialNum = value;
  }

  String _appreEnforcer = '';
  String get appreEnforcer => _appreEnforcer;
  set appreEnforcer(String value) {
    _appreEnforcer = value;
  }

  double _violationTotalFine = 0.0;
  double get violationTotalFine => _violationTotalFine;
  set violationTotalFine(double value) {
    _violationTotalFine = value;
  }

  int _citationNumber = 0;
  int get citationNumber => _citationNumber;
  set citationNumber(int value) {
    _citationNumber = value;
  }

  List<String> _citationRef = [];
  List<String> get citationRef => _citationRef;
  set citationRef(List<String> value) {
    _citationRef = value;
  }

  void addToCitationRef(String value) {
    citationRef.add(value);
  }

  void removeFromCitationRef(String value) {
    citationRef.remove(value);
  }

  void removeAtIndexFromCitationRef(int index) {
    citationRef.removeAt(index);
  }

  void updateCitationRefAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    citationRef[index] = updateFn(_citationRef[index]);
  }

  void insertAtIndexInCitationRef(int index, String value) {
    citationRef.insert(index, value);
  }

  String _violatorAddProvince = '';
  String get violatorAddProvince => _violatorAddProvince;
  set violatorAddProvince(String value) {
    _violatorAddProvince = value;
  }

  String _violatorAddCity = '';
  String get violatorAddCity => _violatorAddCity;
  set violatorAddCity(String value) {
    _violatorAddCity = value;
  }

  String _violatorAddBrgy = '';
  String get violatorAddBrgy => _violatorAddBrgy;
  set violatorAddBrgy(String value) {
    _violatorAddBrgy = value;
  }

  String _violatorAddPrk = '';
  String get violatorAddPrk => _violatorAddPrk;
  set violatorAddPrk(String value) {
    _violatorAddPrk = value;
  }
}
