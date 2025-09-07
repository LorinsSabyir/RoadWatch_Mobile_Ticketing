import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "badge_number" field.
  String? _badgeNumber;
  String get badgeNumber => _badgeNumber ?? '';
  bool hasBadgeNumber() => _badgeNumber != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "accStatus" field.
  String? _accStatus;
  String get accStatus => _accStatus ?? '';
  bool hasAccStatus() => _accStatus != null;

  // "assignment" field.
  String? _assignment;
  String get assignment => _assignment ?? '';
  bool hasAssignment() => _assignment != null;

  // "lastActive" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _password = snapshotData['password'] as String?;
    _uid = snapshotData['uid'] as String?;
    _badgeNumber = snapshotData['badge_number'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _status = snapshotData['status'] as bool?;
    _accStatus = snapshotData['accStatus'] as String?;
    _assignment = snapshotData['assignment'] as String?;
    _lastActive = snapshotData['lastActive'] as DateTime?;
    _lastName = snapshotData['last_name'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? password,
  String? uid,
  String? badgeNumber,
  String? phoneNumber,
  bool? status,
  String? accStatus,
  String? assignment,
  DateTime? lastActive,
  String? lastName,
  DateTime? editedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'password': password,
      'uid': uid,
      'badge_number': badgeNumber,
      'phone_number': phoneNumber,
      'status': status,
      'accStatus': accStatus,
      'assignment': assignment,
      'lastActive': lastActive,
      'last_name': lastName,
      'edited_time': editedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.password == e2?.password &&
        e1?.uid == e2?.uid &&
        e1?.badgeNumber == e2?.badgeNumber &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.status == e2?.status &&
        e1?.accStatus == e2?.accStatus &&
        e1?.assignment == e2?.assignment &&
        e1?.lastActive == e2?.lastActive &&
        e1?.lastName == e2?.lastName &&
        e1?.editedTime == e2?.editedTime;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.password,
        e?.uid,
        e?.badgeNumber,
        e?.phoneNumber,
        e?.status,
        e?.accStatus,
        e?.assignment,
        e?.lastActive,
        e?.lastName,
        e?.editedTime
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
