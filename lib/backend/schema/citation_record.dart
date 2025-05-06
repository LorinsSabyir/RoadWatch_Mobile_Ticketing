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

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "violation_name" field.
  String? _violationName;
  String get violationName => _violationName ?? '';
  bool hasViolationName() => _violationName != null;

  // "violation_fine" field.
  String? _violationFine;
  String get violationFine => _violationFine ?? '';
  bool hasViolationFine() => _violationFine != null;

  // "violation_address" field.
  String? _violationAddress;
  String get violationAddress => _violationAddress ?? '';
  bool hasViolationAddress() => _violationAddress != null;

  // "seminar_schedule" field.
  DateTime? _seminarSchedule;
  DateTime? get seminarSchedule => _seminarSchedule;
  bool hasSeminarSchedule() => _seminarSchedule != null;

  // "driver_firstname" field.
  String? _driverFirstname;
  String get driverFirstname => _driverFirstname ?? '';
  bool hasDriverFirstname() => _driverFirstname != null;

  // "driver_lastname" field.
  String? _driverLastname;
  String get driverLastname => _driverLastname ?? '';
  bool hasDriverLastname() => _driverLastname != null;

  // "driver_address" field.
  String? _driverAddress;
  String get driverAddress => _driverAddress ?? '';
  bool hasDriverAddress() => _driverAddress != null;

  // "driver_license_num" field.
  String? _driverLicenseNum;
  String get driverLicenseNum => _driverLicenseNum ?? '';
  bool hasDriverLicenseNum() => _driverLicenseNum != null;

  // "driver_contact_num" field.
  String? _driverContactNum;
  String get driverContactNum => _driverContactNum ?? '';
  bool hasDriverContactNum() => _driverContactNum != null;

  // "driver_vehicle_type" field.
  String? _driverVehicleType;
  String get driverVehicleType => _driverVehicleType ?? '';
  bool hasDriverVehicleType() => _driverVehicleType != null;

  // "driver_vehicle_plate_num" field.
  String? _driverVehiclePlateNum;
  String get driverVehiclePlateNum => _driverVehiclePlateNum ?? '';
  bool hasDriverVehiclePlateNum() => _driverVehiclePlateNum != null;

  // "control_num" field.
  String? _controlNum;
  String get controlNum => _controlNum ?? '';
  bool hasControlNum() => _controlNum != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _violationName = snapshotData['violation_name'] as String?;
    _violationFine = snapshotData['violation_fine'] as String?;
    _violationAddress = snapshotData['violation_address'] as String?;
    _seminarSchedule = snapshotData['seminar_schedule'] as DateTime?;
    _driverFirstname = snapshotData['driver_firstname'] as String?;
    _driverLastname = snapshotData['driver_lastname'] as String?;
    _driverAddress = snapshotData['driver_address'] as String?;
    _driverLicenseNum = snapshotData['driver_license_num'] as String?;
    _driverContactNum = snapshotData['driver_contact_num'] as String?;
    _driverVehicleType = snapshotData['driver_vehicle_type'] as String?;
    _driverVehiclePlateNum =
        snapshotData['driver_vehicle_plate_num'] as String?;
    _controlNum = snapshotData['control_num'] as String?;
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
  String? uid,
  DateTime? createdTime,
  String? violationName,
  String? violationFine,
  String? violationAddress,
  DateTime? seminarSchedule,
  String? driverFirstname,
  String? driverLastname,
  String? driverAddress,
  String? driverLicenseNum,
  String? driverContactNum,
  String? driverVehicleType,
  String? driverVehiclePlateNum,
  String? controlNum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'created_time': createdTime,
      'violation_name': violationName,
      'violation_fine': violationFine,
      'violation_address': violationAddress,
      'seminar_schedule': seminarSchedule,
      'driver_firstname': driverFirstname,
      'driver_lastname': driverLastname,
      'driver_address': driverAddress,
      'driver_license_num': driverLicenseNum,
      'driver_contact_num': driverContactNum,
      'driver_vehicle_type': driverVehicleType,
      'driver_vehicle_plate_num': driverVehiclePlateNum,
      'control_num': controlNum,
    }.withoutNulls,
  );

  return firestoreData;
}

class CitationRecordDocumentEquality implements Equality<CitationRecord> {
  const CitationRecordDocumentEquality();

  @override
  bool equals(CitationRecord? e1, CitationRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.violationName == e2?.violationName &&
        e1?.violationFine == e2?.violationFine &&
        e1?.violationAddress == e2?.violationAddress &&
        e1?.seminarSchedule == e2?.seminarSchedule &&
        e1?.driverFirstname == e2?.driverFirstname &&
        e1?.driverLastname == e2?.driverLastname &&
        e1?.driverAddress == e2?.driverAddress &&
        e1?.driverLicenseNum == e2?.driverLicenseNum &&
        e1?.driverContactNum == e2?.driverContactNum &&
        e1?.driverVehicleType == e2?.driverVehicleType &&
        e1?.driverVehiclePlateNum == e2?.driverVehiclePlateNum &&
        e1?.controlNum == e2?.controlNum;
  }

  @override
  int hash(CitationRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.createdTime,
        e?.violationName,
        e?.violationFine,
        e?.violationAddress,
        e?.seminarSchedule,
        e?.driverFirstname,
        e?.driverLastname,
        e?.driverAddress,
        e?.driverLicenseNum,
        e?.driverContactNum,
        e?.driverVehicleType,
        e?.driverVehiclePlateNum,
        e?.controlNum
      ]);

  @override
  bool isValidKey(Object? o) => o is CitationRecord;
}
