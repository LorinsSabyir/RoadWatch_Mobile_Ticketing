import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressCityRecord extends FirestoreRecord {
  AddressCityRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "provinceRef" field.
  String? _provinceRef;
  String get provinceRef => _provinceRef ?? '';
  bool hasProvinceRef() => _provinceRef != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _city = snapshotData['city'] as String?;
    _provinceRef = snapshotData['provinceRef'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('addressCity');

  static Stream<AddressCityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressCityRecord.fromSnapshot(s));

  static Future<AddressCityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressCityRecord.fromSnapshot(s));

  static AddressCityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressCityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressCityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressCityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressCityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressCityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressCityRecordData({
  String? uid,
  String? city,
  String? provinceRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'city': city,
      'provinceRef': provinceRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressCityRecordDocumentEquality implements Equality<AddressCityRecord> {
  const AddressCityRecordDocumentEquality();

  @override
  bool equals(AddressCityRecord? e1, AddressCityRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.city == e2?.city &&
        e1?.provinceRef == e2?.provinceRef;
  }

  @override
  int hash(AddressCityRecord? e) =>
      const ListEquality().hash([e?.uid, e?.city, e?.provinceRef]);

  @override
  bool isValidKey(Object? o) => o is AddressCityRecord;
}
