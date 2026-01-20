import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';

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

  List<String> _selectedViolationName = [];
  List<String> get selectedViolationName => _selectedViolationName;
  set selectedViolationName(List<String> value) {
    _selectedViolationName = value;
  }

  void addToSelectedViolationName(String value) {
    selectedViolationName.add(value);
  }

  void removeFromSelectedViolationName(String value) {
    selectedViolationName.remove(value);
  }

  void removeAtIndexFromSelectedViolationName(int index) {
    selectedViolationName.removeAt(index);
  }

  void updateSelectedViolationNameAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedViolationName[index] = updateFn(_selectedViolationName[index]);
  }

  void insertAtIndexInSelectedViolationName(int index, String value) {
    selectedViolationName.insert(index, value);
  }

  List<String> _selectedViolationSection = [];
  List<String> get selectedViolationSection => _selectedViolationSection;
  set selectedViolationSection(List<String> value) {
    _selectedViolationSection = value;
  }

  void addToSelectedViolationSection(String value) {
    selectedViolationSection.add(value);
  }

  void removeFromSelectedViolationSection(String value) {
    selectedViolationSection.remove(value);
  }

  void removeAtIndexFromSelectedViolationSection(int index) {
    selectedViolationSection.removeAt(index);
  }

  void updateSelectedViolationSectionAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedViolationSection[index] =
        updateFn(_selectedViolationSection[index]);
  }

  void insertAtIndexInSelectedViolationSection(int index, String value) {
    selectedViolationSection.insert(index, value);
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

  double _violationTotalFine = 0.0;
  double get violationTotalFine => _violationTotalFine;
  set violationTotalFine(double value) {
    _violationTotalFine = value;
  }

  String _violatorAddName = '';
  String get violatorAddName => _violatorAddName;
  set violatorAddName(String value) {
    _violatorAddName = value;
  }

  String _violatorAddGender = '';
  String get violatorAddGender => _violatorAddGender;
  set violatorAddGender(String value) {
    _violatorAddGender = value;
  }

  String _violatorAddContact = '';
  String get violatorAddContact => _violatorAddContact;
  set violatorAddContact(String value) {
    _violatorAddContact = value;
  }

  String _violatorAddPrk = '';
  String get violatorAddPrk => _violatorAddPrk;
  set violatorAddPrk(String value) {
    _violatorAddPrk = value;
  }

  String _violatorAddBrgy = '';
  String get violatorAddBrgy => _violatorAddBrgy;
  set violatorAddBrgy(String value) {
    _violatorAddBrgy = value;
  }

  String _violatorAddCity = '';
  String get violatorAddCity => _violatorAddCity;
  set violatorAddCity(String value) {
    _violatorAddCity = value;
  }

  String _violatorAddProvince = '';
  String get violatorAddProvince => _violatorAddProvince;
  set violatorAddProvince(String value) {
    _violatorAddProvince = value;
  }

  String _violatorAddLicenseNum = '';
  String get violatorAddLicenseNum => _violatorAddLicenseNum;
  set violatorAddLicenseNum(String value) {
    _violatorAddLicenseNum = value;
  }

  String _vehicleAddPlateNum = '';
  String get vehicleAddPlateNum => _vehicleAddPlateNum;
  set vehicleAddPlateNum(String value) {
    _vehicleAddPlateNum = value;
  }

  String _vehicleAddType = '';
  String get vehicleAddType => _vehicleAddType;
  set vehicleAddType(String value) {
    _vehicleAddType = value;
  }

  String _vehicleAddBrand = '';
  String get vehicleAddBrand => _vehicleAddBrand;
  set vehicleAddBrand(String value) {
    _vehicleAddBrand = value;
  }

  String _vehicleAddModel = '';
  String get vehicleAddModel => _vehicleAddModel;
  set vehicleAddModel(String value) {
    _vehicleAddModel = value;
  }

  String _vehicleAddSerialNum = '';
  String get vehicleAddSerialNum => _vehicleAddSerialNum;
  set vehicleAddSerialNum(String value) {
    _vehicleAddSerialNum = value;
  }

  String _appreAddPlace = '';
  String get appreAddPlace => _appreAddPlace;
  set appreAddPlace(String value) {
    _appreAddPlace = value;
  }

  String _appreEnforcer = '';
  String get appreEnforcer => _appreEnforcer;
  set appreEnforcer(String value) {
    _appreEnforcer = value;
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

  String _imagePath = '';
  String get imagePath => _imagePath;
  set imagePath(String value) {
    _imagePath = value;
  }

  bool _isPrinterConnected = false;
  bool get isPrinterConnected => _isPrinterConnected;
  set isPrinterConnected(bool value) {
    _isPrinterConnected = value;
  }

  String _appreAddDateTime = '';
  String get appreAddDateTime => _appreAddDateTime;
  set appreAddDateTime(String value) {
    _appreAddDateTime = value;
  }

  String _appreAddDateMonth = '';
  String get appreAddDateMonth => _appreAddDateMonth;
  set appreAddDateMonth(String value) {
    _appreAddDateMonth = value;
  }

  String _appreAddDateDay = '';
  String get appreAddDateDay => _appreAddDateDay;
  set appreAddDateDay(String value) {
    _appreAddDateDay = value;
  }

  String _appreAddDateYear = '';
  String get appreAddDateYear => _appreAddDateYear;
  set appreAddDateYear(String value) {
    _appreAddDateYear = value;
  }

  String _citationId = '';
  String get citationId => _citationId;
  set citationId(String value) {
    _citationId = value;
  }

  String _vehicleAddDesc = 'asdawdasd';
  String get vehicleAddDesc => _vehicleAddDesc;
  set vehicleAddDesc(String value) {
    _vehicleAddDesc = value;
  }

  bool _enforcerIsActive = false;
  bool get enforcerIsActive => _enforcerIsActive;
  set enforcerIsActive(bool value) {
    _enforcerIsActive = value;
  }

  bool _isViolatorPresent = false;
  bool get isViolatorPresent => _isViolatorPresent;
  set isViolatorPresent(bool value) {
    _isViolatorPresent = value;
  }

  bool _confirmationModal = false;
  bool get confirmationModal => _confirmationModal;
  set confirmationModal(bool value) {
    _confirmationModal = value;
  }

  final _violatorProvinceDropdownCacheManager =
      StreamRequestManager<List<AddressProvinceRecord>>();
  Stream<List<AddressProvinceRecord>> violatorProvinceDropdownCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AddressProvinceRecord>> Function() requestFn,
  }) =>
      _violatorProvinceDropdownCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearViolatorProvinceDropdownCacheCache() =>
      _violatorProvinceDropdownCacheManager.clear();
  void clearViolatorProvinceDropdownCacheCacheKey(String? uniqueKey) =>
      _violatorProvinceDropdownCacheManager.clearRequest(uniqueKey);

  final _violatorCityDropdownCacheManager =
      StreamRequestManager<List<AddressCityRecord>>();
  Stream<List<AddressCityRecord>> violatorCityDropdownCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AddressCityRecord>> Function() requestFn,
  }) =>
      _violatorCityDropdownCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearViolatorCityDropdownCacheCache() =>
      _violatorCityDropdownCacheManager.clear();
  void clearViolatorCityDropdownCacheCacheKey(String? uniqueKey) =>
      _violatorCityDropdownCacheManager.clearRequest(uniqueKey);

  final _violatorBrgyDropdownCacheManager =
      StreamRequestManager<List<AddressBrgyRecord>>();
  Stream<List<AddressBrgyRecord>> violatorBrgyDropdownCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<AddressBrgyRecord>> Function() requestFn,
  }) =>
      _violatorBrgyDropdownCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearViolatorBrgyDropdownCacheCache() =>
      _violatorBrgyDropdownCacheManager.clear();
  void clearViolatorBrgyDropdownCacheCacheKey(String? uniqueKey) =>
      _violatorBrgyDropdownCacheManager.clearRequest(uniqueKey);

  final _violationSearchListCacheManager =
      StreamRequestManager<List<ViolationRecord>>();
  Stream<List<ViolationRecord>> violationSearchListCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ViolationRecord>> Function() requestFn,
  }) =>
      _violationSearchListCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearViolationSearchListCacheCache() =>
      _violationSearchListCacheManager.clear();
  void clearViolationSearchListCacheCacheKey(String? uniqueKey) =>
      _violationSearchListCacheManager.clearRequest(uniqueKey);
}
