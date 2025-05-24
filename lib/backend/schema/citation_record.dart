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

  // "citation_number" field.
  String? _citationNumber;
  String get citationNumber => _citationNumber ?? '';
  bool hasCitationNumber() => _citationNumber != null;

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

  // "appre_date" field.
  String? _appreDate;
  String get appreDate => _appreDate ?? '';
  bool hasAppreDate() => _appreDate != null;

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

  // "violation" field.
  List<String>? _violation;
  List<String> get violation => _violation ?? const [];
  bool hasViolation() => _violation != null;

  // "violationTotalFine" field.
  double? _violationTotalFine;
  double get violationTotalFine => _violationTotalFine ?? 0.0;
  bool hasViolationTotalFine() => _violationTotalFine != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "violator_address_province" field.
  String? _violatorAddressProvince;
  String get violatorAddressProvince => _violatorAddressProvince ?? '';
  bool hasViolatorAddressProvince() => _violatorAddressProvince != null;

  // "violator_address_city" field.
  String? _violatorAddressCity;
  String get violatorAddressCity => _violatorAddressCity ?? '';
  bool hasViolatorAddressCity() => _violatorAddressCity != null;

  // "violator_address_brgy" field.
  String? _violatorAddressBrgy;
  String get violatorAddressBrgy => _violatorAddressBrgy ?? '';
  bool hasViolatorAddressBrgy() => _violatorAddressBrgy != null;

  // "violator_address_prk" field.
  String? _violatorAddressPrk;
  String get violatorAddressPrk => _violatorAddressPrk ?? '';
  bool hasViolatorAddressPrk() => _violatorAddressPrk != null;

  // "appre_enforcer_id" field.
  String? _appreEnforcerId;
  String get appreEnforcerId => _appreEnforcerId ?? '';
  bool hasAppreEnforcerId() => _appreEnforcerId != null;

  // "violator_license_num" field.
  String? _violatorLicenseNum;
  String get violatorLicenseNum => _violatorLicenseNum ?? '';
  bool hasViolatorLicenseNum() => _violatorLicenseNum != null;

  void _initializeFields() {
    _citationNumber = snapshotData['citation_number'] as String?;
    _confUnitSerialNum = snapshotData['conf_unit_serial_num'] as String?;
    _confUnitPlateNum = snapshotData['conf_unit_plate_num'] as String?;
    _confUnitBrand = snapshotData['conf_unit_brand'] as String?;
    _confUnitModel = snapshotData['conf_unit_model'] as String?;
    _confUnitDesc = snapshotData['conf_unit_desc'] as String?;
    _appreDate = snapshotData['appre_date'] as String?;
    _appreTime = snapshotData['appre_time'] as String?;
    _apprePlace = snapshotData['appre_place'] as String?;
    _violatorName = snapshotData['violator_name'] as String?;
    _appreEnforcer = snapshotData['appre_enforcer'] as String?;
    _violation = getDataList(snapshotData['violation']);
    _violationTotalFine =
        castToType<double>(snapshotData['violationTotalFine']);
    _id = snapshotData['id'] as String?;
    _violatorAddressProvince =
        snapshotData['violator_address_province'] as String?;
    _violatorAddressCity = snapshotData['violator_address_city'] as String?;
    _violatorAddressBrgy = snapshotData['violator_address_brgy'] as String?;
    _violatorAddressPrk = snapshotData['violator_address_prk'] as String?;
    _appreEnforcerId = snapshotData['appre_enforcer_id'] as String?;
    _violatorLicenseNum = snapshotData['violator_license_num'] as String?;
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
  String? citationNumber,
  String? confUnitSerialNum,
  String? confUnitPlateNum,
  String? confUnitBrand,
  String? confUnitModel,
  String? confUnitDesc,
  String? appreDate,
  String? appreTime,
  String? apprePlace,
  String? violatorName,
  String? appreEnforcer,
  double? violationTotalFine,
  String? id,
  String? violatorAddressProvince,
  String? violatorAddressCity,
  String? violatorAddressBrgy,
  String? violatorAddressPrk,
  String? appreEnforcerId,
  String? violatorLicenseNum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'citation_number': citationNumber,
      'conf_unit_serial_num': confUnitSerialNum,
      'conf_unit_plate_num': confUnitPlateNum,
      'conf_unit_brand': confUnitBrand,
      'conf_unit_model': confUnitModel,
      'conf_unit_desc': confUnitDesc,
      'appre_date': appreDate,
      'appre_time': appreTime,
      'appre_place': apprePlace,
      'violator_name': violatorName,
      'appre_enforcer': appreEnforcer,
      'violationTotalFine': violationTotalFine,
      'id': id,
      'violator_address_province': violatorAddressProvince,
      'violator_address_city': violatorAddressCity,
      'violator_address_brgy': violatorAddressBrgy,
      'violator_address_prk': violatorAddressPrk,
      'appre_enforcer_id': appreEnforcerId,
      'violator_license_num': violatorLicenseNum,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitationRecordDocumentEquality implements Equality<CitationRecord> {
  const CitationRecordDocumentEquality();

  @override
  bool equals(CitationRecord? e1, CitationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.citationNumber == e2?.citationNumber &&
        e1?.confUnitSerialNum == e2?.confUnitSerialNum &&
        e1?.confUnitPlateNum == e2?.confUnitPlateNum &&
        e1?.confUnitBrand == e2?.confUnitBrand &&
        e1?.confUnitModel == e2?.confUnitModel &&
        e1?.confUnitDesc == e2?.confUnitDesc &&
        e1?.appreDate == e2?.appreDate &&
        e1?.appreTime == e2?.appreTime &&
        e1?.apprePlace == e2?.apprePlace &&
        e1?.violatorName == e2?.violatorName &&
        e1?.appreEnforcer == e2?.appreEnforcer &&
        listEquality.equals(e1?.violation, e2?.violation) &&
        e1?.violationTotalFine == e2?.violationTotalFine &&
        e1?.id == e2?.id &&
        e1?.violatorAddressProvince == e2?.violatorAddressProvince &&
        e1?.violatorAddressCity == e2?.violatorAddressCity &&
        e1?.violatorAddressBrgy == e2?.violatorAddressBrgy &&
        e1?.violatorAddressPrk == e2?.violatorAddressPrk &&
        e1?.appreEnforcerId == e2?.appreEnforcerId &&
        e1?.violatorLicenseNum == e2?.violatorLicenseNum;
  }

  @override
  int hash(CitationRecord? e) => const ListEquality().hash([
        e?.citationNumber,
        e?.confUnitSerialNum,
        e?.confUnitPlateNum,
        e?.confUnitBrand,
        e?.confUnitModel,
        e?.confUnitDesc,
        e?.appreDate,
        e?.appreTime,
        e?.apprePlace,
        e?.violatorName,
        e?.appreEnforcer,
        e?.violation,
        e?.violationTotalFine,
        e?.id,
        e?.violatorAddressProvince,
        e?.violatorAddressCity,
        e?.violatorAddressBrgy,
        e?.violatorAddressPrk,
        e?.appreEnforcerId,
        e?.violatorLicenseNum
      ]);

  @override
  bool isValidKey(Object? o) => o is CitationRecord;
}
