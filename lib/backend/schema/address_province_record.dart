import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressProvinceRecord extends FirestoreRecord {
  AddressProvinceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  bool hasProvince() => _province != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _province = snapshotData['province'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('addressProvince');

  static Stream<AddressProvinceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressProvinceRecord.fromSnapshot(s));

  static Future<AddressProvinceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressProvinceRecord.fromSnapshot(s));

  static AddressProvinceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressProvinceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressProvinceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressProvinceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressProvinceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressProvinceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressProvinceRecordData({
  String? uid,
  String? province,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'province': province,
    }.withoutNulls,
  );

  return firestoreData;
}

class AddressProvinceRecordDocumentEquality
    implements Equality<AddressProvinceRecord> {
  const AddressProvinceRecordDocumentEquality();

  @override
  bool equals(AddressProvinceRecord? e1, AddressProvinceRecord? e2) {
    return e1?.uid == e2?.uid && e1?.province == e2?.province;
  }

  @override
  int hash(AddressProvinceRecord? e) =>
      const ListEquality().hash([e?.uid, e?.province]);

  @override
  bool isValidKey(Object? o) => o is AddressProvinceRecord;
}
