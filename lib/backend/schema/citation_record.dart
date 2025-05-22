import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CitationRecord extends FirestoreRecord {
  CitationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

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

  // "violator_address" field.
  String? _violatorAddress;
  String get violatorAddress => _violatorAddress ?? '';
  bool hasViolatorAddress() => _violatorAddress != null;

  // "violation" field.
  String? _violation;
  String get violation => _violation ?? '';
  bool hasViolation() => _violation != null;

  // "reciept_num" field.
  String? _recieptNum;
  String get recieptNum => _recieptNum ?? '';
  bool hasRecieptNum() => _recieptNum != null;

  // "reciept_status" field.
  String? _recieptStatus;
  String get recieptStatus => _recieptStatus ?? '';
  bool hasRecieptStatus() => _recieptStatus != null;

  // "appre_enforcer" field.
  String? _appreEnforcer;
  String get appreEnforcer => _appreEnforcer ?? '';
  bool hasAppreEnforcer() => _appreEnforcer != null;

  // "userRep" field.
  DocumentReference? _userRep;
  DocumentReference? get userRep => _userRep;
  bool hasUserRep() => _userRep != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
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
    _violatorAddress = snapshotData['violator_address'] as String?;
    _violation = snapshotData['violation'] as String?;
    _recieptNum = snapshotData['reciept_num'] as String?;
    _recieptStatus = snapshotData['reciept_status'] as String?;
    _appreEnforcer = snapshotData['appre_enforcer'] as String?;
    _userRep = snapshotData['userRep'] as DocumentReference?;
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
  String? id,
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
  String? violatorAddress,
  String? violation,
  String? recieptNum,
  String? recieptStatus,
  String? appreEnforcer,
  DocumentReference? userRep,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
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
      'violator_address': violatorAddress,
      'violation': violation,
      'reciept_num': recieptNum,
      'reciept_status': recieptStatus,
      'appre_enforcer': appreEnforcer,
      'userRep': userRep,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitationRecordDocumentEquality implements Equality<CitationRecord> {
  const CitationRecordDocumentEquality();

  @override
  bool equals(CitationRecord? e1, CitationRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.citationNumber == e2?.citationNumber &&
        e1?.confUnitSerialNum == e2?.confUnitSerialNum &&
        e1?.confUnitPlateNum == e2?.confUnitPlateNum &&
        e1?.confUnitBrand == e2?.confUnitBrand &&
        e1?.confUnitModel == e2?.confUnitModel &&
        e1?.confUnitDesc == e2?.confUnitDesc &&
        e1?.appreDate == e2?.appreDate &&
        e1?.appreTime == e2?.appreTime &&
        e1?.apprePlace == e2?.apprePlace &&
        e1?.violatorName == e2?.violatorName &&
        e1?.violatorAddress == e2?.violatorAddress &&
        e1?.violation == e2?.violation &&
        e1?.recieptNum == e2?.recieptNum &&
        e1?.recieptStatus == e2?.recieptStatus &&
        e1?.appreEnforcer == e2?.appreEnforcer &&
        e1?.userRep == e2?.userRep;
  }

  @override
  int hash(CitationRecord? e) => const ListEquality().hash([
        e?.id,
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
        e?.violatorAddress,
        e?.violation,
        e?.recieptNum,
        e?.recieptStatus,
        e?.appreEnforcer,
        e?.userRep
      ]);

  @override
  bool isValidKey(Object? o) => o is CitationRecord;
}
