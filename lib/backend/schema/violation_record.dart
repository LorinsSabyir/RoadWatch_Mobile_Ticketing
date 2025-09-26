import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ViolationRecord extends FirestoreRecord {
  ViolationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "violation_name" field.
  String? _violationName;
  String get violationName => _violationName ?? '';
  bool hasViolationName() => _violationName != null;

  // "penalty" field.
  String? _penalty;
  String get penalty => _penalty ?? '';
  bool hasPenalty() => _penalty != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "violation_title" field.
  String? _violationTitle;
  String get violationTitle => _violationTitle ?? '';
  bool hasViolationTitle() => _violationTitle != null;

  // "fines" field.
  double? _fines;
  double get fines => _fines ?? 0.0;
  bool hasFines() => _fines != null;

  // "section" field.
  String? _section;
  String get section => _section ?? '';
  bool hasSection() => _section != null;

  void _initializeFields() {
    _violationName = snapshotData['violation_name'] as String?;
    _penalty = snapshotData['penalty'] as String?;
    _id = snapshotData['id'] as String?;
    _violationTitle = snapshotData['violation_title'] as String?;
    _fines = castToType<double>(snapshotData['fines']);
    _section = snapshotData['section'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('violation');

  static Stream<ViolationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ViolationRecord.fromSnapshot(s));

  static Future<ViolationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ViolationRecord.fromSnapshot(s));

  static ViolationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ViolationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ViolationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ViolationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ViolationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ViolationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createViolationRecordData({
  String? violationName,
  String? penalty,
  String? id,
  String? violationTitle,
  double? fines,
  String? section,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'violation_name': violationName,
      'penalty': penalty,
      'id': id,
      'violation_title': violationTitle,
      'fines': fines,
      'section': section,
    }.withoutNulls,
  );

  return firestoreData;
}

class ViolationRecordDocumentEquality implements Equality<ViolationRecord> {
  const ViolationRecordDocumentEquality();

  @override
  bool equals(ViolationRecord? e1, ViolationRecord? e2) {
    return e1?.violationName == e2?.violationName &&
        e1?.penalty == e2?.penalty &&
        e1?.id == e2?.id &&
        e1?.violationTitle == e2?.violationTitle &&
        e1?.fines == e2?.fines &&
        e1?.section == e2?.section;
  }

  @override
  int hash(ViolationRecord? e) => const ListEquality().hash([
        e?.violationName,
        e?.penalty,
        e?.id,
        e?.violationTitle,
        e?.fines,
        e?.section
      ]);

  @override
  bool isValidKey(Object? o) => o is ViolationRecord;
}
