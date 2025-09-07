import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminNotifRecord extends FirestoreRecord {
  AdminNotifRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "enforcer_id" field.
  DocumentReference? _enforcerId;
  DocumentReference? get enforcerId => _enforcerId;
  bool hasEnforcerId() => _enforcerId != null;

  // "notif_type" field.
  String? _notifType;
  String get notifType => _notifType ?? '';
  bool hasNotifType() => _notifType != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  bool hasSubtitle() => _subtitle != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _type = snapshotData['type'] as String?;
    _status = snapshotData['status'] as String?;
    _enforcerId = snapshotData['enforcer_id'] as DocumentReference?;
    _notifType = snapshotData['notif_type'] as String?;
    _subtitle = snapshotData['subtitle'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adminNotif');

  static Stream<AdminNotifRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminNotifRecord.fromSnapshot(s));

  static Future<AdminNotifRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminNotifRecord.fromSnapshot(s));

  static AdminNotifRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdminNotifRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminNotifRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminNotifRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminNotifRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminNotifRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminNotifRecordData({
  String? title,
  String? type,
  String? status,
  DocumentReference? enforcerId,
  String? notifType,
  String? subtitle,
  DateTime? createdTime,
  DateTime? editedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'type': type,
      'status': status,
      'enforcer_id': enforcerId,
      'notif_type': notifType,
      'subtitle': subtitle,
      'created_time': createdTime,
      'edited_time': editedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdminNotifRecordDocumentEquality implements Equality<AdminNotifRecord> {
  const AdminNotifRecordDocumentEquality();

  @override
  bool equals(AdminNotifRecord? e1, AdminNotifRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.type == e2?.type &&
        e1?.status == e2?.status &&
        e1?.enforcerId == e2?.enforcerId &&
        e1?.notifType == e2?.notifType &&
        e1?.subtitle == e2?.subtitle &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime;
  }

  @override
  int hash(AdminNotifRecord? e) => const ListEquality().hash([
        e?.title,
        e?.type,
        e?.status,
        e?.enforcerId,
        e?.notifType,
        e?.subtitle,
        e?.createdTime,
        e?.editedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is AdminNotifRecord;
}
