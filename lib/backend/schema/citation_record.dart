import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitationRecord extends FirestoreRecord {
  CitationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "conf_unit_serial_num" field.
  String? _confUnitSerialNum;
  String get confUnitSerialNum => _confUnitSerialNum ?? '';
  bool hasConfUnitSerialNum() => _confUnitSerialNum != null;

  // "conf_unit_plate_num" field.
  String? _confUnitPlateNum;
  String get confUnitPlateNum => _confUnitPlateNum ?? '';
  bool hasConfUnitPlateNum() => _confUnitPlateNum != null;

  // "conf_unit_brand" field.
  String? _confUnitBrand;
  String get confUnitBrand => _confUnitBrand ?? '';
  bool hasConfUnitBrand() => _confUnitBrand != null;

  // "conf_unit_model" field.
  String? _confUnitModel;
  String get confUnitModel => _confUnitModel ?? '';
  bool hasConfUnitModel() => _confUnitModel != null;

  // "conf_unit_desc" field.
  String? _confUnitDesc;
  String get confUnitDesc => _confUnitDesc ?? '';
  bool hasConfUnitDesc() => _confUnitDesc != null;

  // "appre_time" field.
  String? _appreTime;
  String get appreTime => _appreTime ?? '';
  bool hasAppreTime() => _appreTime != null;

  // "appre_place" field.
  String? _apprePlace;
  String get apprePlace => _apprePlace ?? '';
  bool hasApprePlace() => _apprePlace != null;

  // "violator_name" field.
  String? _violatorName;
  String get violatorName => _violatorName ?? '';
  bool hasViolatorName() => _violatorName != null;

  // "appre_enforcer" field.
  String? _appreEnforcer;
  String get appreEnforcer => _appreEnforcer ?? '';
  bool hasAppreEnforcer() => _appreEnforcer != null;

  // "appre_enforcer_id" field.
  String? _appreEnforcerId;
  String get appreEnforcerId => _appreEnforcerId ?? '';
  bool hasAppreEnforcerId() => _appreEnforcerId != null;

  // "violator_license_num" field.
  String? _violatorLicenseNum;
  String get violatorLicenseNum => _violatorLicenseNum ?? '';
  bool hasViolatorLicenseNum() => _violatorLicenseNum != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "violation_section" field.
  List<String>? _violationSection;
  List<String> get violationSection => _violationSection ?? const [];
  bool hasViolationSection() => _violationSection != null;

  // "appre_date_month" field.
  String? _appreDateMonth;
  String get appreDateMonth => _appreDateMonth ?? '';
  bool hasAppreDateMonth() => _appreDateMonth != null;

  // "appre_date_day" field.
  String? _appreDateDay;
  String get appreDateDay => _appreDateDay ?? '';
  bool hasAppreDateDay() => _appreDateDay != null;

  // "appre_date_year" field.
  String? _appreDateYear;
  String get appreDateYear => _appreDateYear ?? '';
  bool hasAppreDateYear() => _appreDateYear != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "violation_fine" field.
  List<double>? _violationFine;
  List<double> get violationFine => _violationFine ?? const [];
  bool hasViolationFine() => _violationFine != null;

  // "violation_name" field.
  List<String>? _violationName;
  List<String> get violationName => _violationName ?? const [];
  bool hasViolationName() => _violationName != null;

  // "violation_total_fine" field.
  double? _violationTotalFine;
  double get violationTotalFine => _violationTotalFine ?? 0.0;
  bool hasViolationTotalFine() => _violationTotalFine != null;

  // "violator_gender" field.
  String? _violatorGender;
  String get violatorGender => _violatorGender ?? '';
  bool hasViolatorGender() => _violatorGender != null;

  // "conf_unit_type" field.
  String? _confUnitType;
  String get confUnitType => _confUnitType ?? '';
  bool hasConfUnitType() => _confUnitType != null;

  // "appre_enf_id" field.
  DocumentReference? _appreEnfId;
  DocumentReference? get appreEnfId => _appreEnfId;
  bool hasAppreEnfId() => _appreEnfId != null;

  // "violator_address_prk" field.
  String? _violatorAddressPrk;
  String get violatorAddressPrk => _violatorAddressPrk ?? '';
  bool hasViolatorAddressPrk() => _violatorAddressPrk != null;

  // "violator_address_brgy" field.
  String? _violatorAddressBrgy;
  String get violatorAddressBrgy => _violatorAddressBrgy ?? '';
  bool hasViolatorAddressBrgy() => _violatorAddressBrgy != null;

  // "violator_address_city" field.
  String? _violatorAddressCity;
  String get violatorAddressCity => _violatorAddressCity ?? '';
  bool hasViolatorAddressCity() => _violatorAddressCity != null;

  // "violator_address_province" field.
  String? _violatorAddressProvince;
  String get violatorAddressProvince => _violatorAddressProvince ?? '';
  bool hasViolatorAddressProvince() => _violatorAddressProvince != null;

  // "receipt_status" field.
  bool? _receiptStatus;
  bool get receiptStatus => _receiptStatus ?? false;
  bool hasReceiptStatus() => _receiptStatus != null;

  // "receipt_num" field.
  String? _receiptNum;
  String get receiptNum => _receiptNum ?? '';
  bool hasReceiptNum() => _receiptNum != null;

  void _initializeFields() {
    _confUnitSerialNum = snapshotData['conf_unit_serial_num'] as String?;
    _confUnitPlateNum = snapshotData['conf_unit_plate_num'] as String?;
    _confUnitBrand = snapshotData['conf_unit_brand'] as String?;
    _confUnitModel = snapshotData['conf_unit_model'] as String?;
    _confUnitDesc = snapshotData['conf_unit_desc'] as String?;
    _appreTime = snapshotData['appre_time'] as String?;
    _apprePlace = snapshotData['appre_place'] as String?;
    _violatorName = snapshotData['violator_name'] as String?;
    _appreEnforcer = snapshotData['appre_enforcer'] as String?;
    _appreEnforcerId = snapshotData['appre_enforcer_id'] as String?;
    _violatorLicenseNum = snapshotData['violator_license_num'] as String?;
    _id = snapshotData['id'] as String?;
    _violationSection = getDataList(snapshotData['violation_section']);
    _appreDateMonth = snapshotData['appre_date_month'] as String?;
    _appreDateDay = snapshotData['appre_date_day'] as String?;
    _appreDateYear = snapshotData['appre_date_year'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _violationFine = getDataList(snapshotData['violation_fine']);
    _violationName = getDataList(snapshotData['violation_name']);
    _violationTotalFine =
        castToType<double>(snapshotData['violation_total_fine']);
    _violatorGender = snapshotData['violator_gender'] as String?;
    _confUnitType = snapshotData['conf_unit_type'] as String?;
    _appreEnfId = snapshotData['appre_enf_id'] as DocumentReference?;
    _violatorAddressPrk = snapshotData['violator_address_prk'] as String?;
    _violatorAddressBrgy = snapshotData['violator_address_brgy'] as String?;
    _violatorAddressCity = snapshotData['violator_address_city'] as String?;
    _violatorAddressProvince =
        snapshotData['violator_address_province'] as String?;
    _receiptStatus = snapshotData['receipt_status'] as bool?;
    _receiptNum = snapshotData['receipt_num'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('citation');

  static Stream<CitationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CitationRecord.fromSnapshot(s));

  static Future<CitationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CitationRecord.fromSnapshot(s));

  static CitationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CitationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CitationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CitationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CitationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CitationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCitationRecordData({
  String? confUnitSerialNum,
  String? confUnitPlateNum,
  String? confUnitBrand,
  String? confUnitModel,
  String? confUnitDesc,
  String? appreTime,
  String? apprePlace,
  String? violatorName,
  String? appreEnforcer,
  String? appreEnforcerId,
  String? violatorLicenseNum,
  String? id,
  String? appreDateMonth,
  String? appreDateDay,
  String? appreDateYear,
  DateTime? createdTime,
  DateTime? editedTime,
  double? violationTotalFine,
  String? violatorGender,
  String? confUnitType,
  DocumentReference? appreEnfId,
  String? violatorAddressPrk,
  String? violatorAddressBrgy,
  String? violatorAddressCity,
  String? violatorAddressProvince,
  bool? receiptStatus,
  String? receiptNum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'conf_unit_serial_num': confUnitSerialNum,
      'conf_unit_plate_num': confUnitPlateNum,
      'conf_unit_brand': confUnitBrand,
      'conf_unit_model': confUnitModel,
      'conf_unit_desc': confUnitDesc,
      'appre_time': appreTime,
      'appre_place': apprePlace,
      'violator_name': violatorName,
      'appre_enforcer': appreEnforcer,
      'appre_enforcer_id': appreEnforcerId,
      'violator_license_num': violatorLicenseNum,
      'id': id,
      'appre_date_month': appreDateMonth,
      'appre_date_day': appreDateDay,
      'appre_date_year': appreDateYear,
      'created_time': createdTime,
      'edited_time': editedTime,
      'violation_total_fine': violationTotalFine,
      'violator_gender': violatorGender,
      'conf_unit_type': confUnitType,
      'appre_enf_id': appreEnfId,
      'violator_address_prk': violatorAddressPrk,
      'violator_address_brgy': violatorAddressBrgy,
      'violator_address_city': violatorAddressCity,
      'violator_address_province': violatorAddressProvince,
      'receipt_status': receiptStatus,
      'receipt_num': receiptNum,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitationRecordDocumentEquality implements Equality<CitationRecord> {
  const CitationRecordDocumentEquality();

  @override
  bool equals(CitationRecord? e1, CitationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.confUnitSerialNum == e2?.confUnitSerialNum &&
        e1?.confUnitPlateNum == e2?.confUnitPlateNum &&
        e1?.confUnitBrand == e2?.confUnitBrand &&
        e1?.confUnitModel == e2?.confUnitModel &&
        e1?.confUnitDesc == e2?.confUnitDesc &&
        e1?.appreTime == e2?.appreTime &&
        e1?.apprePlace == e2?.apprePlace &&
        e1?.violatorName == e2?.violatorName &&
        e1?.appreEnforcer == e2?.appreEnforcer &&
        e1?.appreEnforcerId == e2?.appreEnforcerId &&
        e1?.violatorLicenseNum == e2?.violatorLicenseNum &&
        e1?.id == e2?.id &&
        listEquality.equals(e1?.violationSection, e2?.violationSection) &&
        e1?.appreDateMonth == e2?.appreDateMonth &&
        e1?.appreDateDay == e2?.appreDateDay &&
        e1?.appreDateYear == e2?.appreDateYear &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        listEquality.equals(e1?.violationFine, e2?.violationFine) &&
        listEquality.equals(e1?.violationName, e2?.violationName) &&
        e1?.violationTotalFine == e2?.violationTotalFine &&
        e1?.violatorGender == e2?.violatorGender &&
        e1?.confUnitType == e2?.confUnitType &&
        e1?.appreEnfId == e2?.appreEnfId &&
        e1?.violatorAddressPrk == e2?.violatorAddressPrk &&
        e1?.violatorAddressBrgy == e2?.violatorAddressBrgy &&
        e1?.violatorAddressCity == e2?.violatorAddressCity &&
        e1?.violatorAddressProvince == e2?.violatorAddressProvince &&
        e1?.receiptStatus == e2?.receiptStatus &&
        e1?.receiptNum == e2?.receiptNum;
  }

  @override
  int hash(CitationRecord? e) => const ListEquality().hash([
        e?.confUnitSerialNum,
        e?.confUnitPlateNum,
        e?.confUnitBrand,
        e?.confUnitModel,
        e?.confUnitDesc,
        e?.appreTime,
        e?.apprePlace,
        e?.violatorName,
        e?.appreEnforcer,
        e?.appreEnforcerId,
        e?.violatorLicenseNum,
        e?.id,
        e?.violationSection,
        e?.appreDateMonth,
        e?.appreDateDay,
        e?.appreDateYear,
        e?.createdTime,
        e?.editedTime,
        e?.violationFine,
        e?.violationName,
        e?.violationTotalFine,
        e?.violatorGender,
        e?.confUnitType,
        e?.appreEnfId,
        e?.violatorAddressPrk,
        e?.violatorAddressBrgy,
        e?.violatorAddressCity,
        e?.violatorAddressProvince,
        e?.receiptStatus,
        e?.receiptNum
      ]);

  @override
  bool isValidKey(Object? o) => o is CitationRecord;
}
