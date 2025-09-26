import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressBrgyRecord extends FirestoreRecord {
  AddressBrgyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "barangay" field.
  String? _barangay;
  String get barangay => _barangay ?? '';
  bool hasBarangay() => _barangay != null;

  // "cityRef" field.
  String? _cityRef;
  String get cityRef => _cityRef ?? '';
  bool hasCityRef() => _cityRef != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _barangay = snapshotData['barangay'] as String?;
    _cityRef = snapshotData['cityRef'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('addressBrgy');

  static Stream<AddressBrgyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressBrgyRecord.fromSnapshot(s));

  static Future<AddressBrgyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressBrgyRecord.fromSnapshot(s));

  static AddressBrgyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressBrgyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressBrgyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressBrgyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressBrgyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressBrgyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressBrgyRecordData({
  String? uid,
  String? barangay,
  String? cityRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'barangay': barangay,
      'cityRef': cityRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressBrgyRecordDocumentEquality implements Equality<AddressBrgyRecord> {
  const AddressBrgyRecordDocumentEquality();

  @override
  bool equals(AddressBrgyRecord? e1, AddressBrgyRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.barangay == e2?.barangay &&
        e1?.cityRef == e2?.cityRef;
  }

  @override
  int hash(AddressBrgyRecord? e) =>
      const ListEquality().hash([e?.uid, e?.barangay, e?.cityRef]);

  @override
  bool isValidKey(Object? o) => o is AddressBrgyRecord;
}
