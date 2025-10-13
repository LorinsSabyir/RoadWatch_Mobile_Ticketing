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

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "last_active" field.
  DateTime? _lastActive;
  DateTime? get lastActive => _lastActive;
  bool hasLastActive() => _lastActive != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "acc_status" field.
  String? _accStatus;
  String get accStatus => _accStatus ?? '';
  bool hasAccStatus() => _accStatus != null;

  // "assignment_prk" field.
  String? _assignmentPrk;
  String get assignmentPrk => _assignmentPrk ?? '';
  bool hasAssignmentPrk() => _assignmentPrk != null;

  // "assignment_brgy" field.
  String? _assignmentBrgy;
  String get assignmentBrgy => _assignmentBrgy ?? '';
  bool hasAssignmentBrgy() => _assignmentBrgy != null;

  // "assignment_street" field.
  String? _assignmentStreet;
  String get assignmentStreet => _assignmentStreet ?? '';
  bool hasAssignmentStreet() => _assignmentStreet != null;

  // "assignment_landmark" field.
  String? _assignmentLandmark;
  String get assignmentLandmark => _assignmentLandmark ?? '';
  bool hasAssignmentLandmark() => _assignmentLandmark != null;

  // "assignment_time" field.
  DateTime? _assignmentTime;
  DateTime? get assignmentTime => _assignmentTime;
  bool hasAssignmentTime() => _assignmentTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _badgeNumber = snapshotData['badge_number'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _status = snapshotData['status'] as bool?;
    _lastName = snapshotData['last_name'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _lastActive = snapshotData['last_active'] as DateTime?;
    _gender = snapshotData['gender'] as String?;
    _accStatus = snapshotData['acc_status'] as String?;
    _assignmentPrk = snapshotData['assignment_prk'] as String?;
    _assignmentBrgy = snapshotData['assignment_brgy'] as String?;
    _assignmentStreet = snapshotData['assignment_street'] as String?;
    _assignmentLandmark = snapshotData['assignment_landmark'] as String?;
    _assignmentTime = snapshotData['assignment_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
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
  String? uid,
  String? badgeNumber,
  String? phoneNumber,
  bool? status,
  String? lastName,
  DateTime? editedTime,
  DateTime? lastActive,
  String? gender,
  String? accStatus,
  String? assignmentPrk,
  String? assignmentBrgy,
  String? assignmentStreet,
  String? assignmentLandmark,
  DateTime? assignmentTime,
  String? role,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'uid': uid,
      'badge_number': badgeNumber,
      'phone_number': phoneNumber,
      'status': status,
      'last_name': lastName,
      'edited_time': editedTime,
      'last_active': lastActive,
      'gender': gender,
      'acc_status': accStatus,
      'assignment_prk': assignmentPrk,
      'assignment_brgy': assignmentBrgy,
      'assignment_street': assignmentStreet,
      'assignment_landmark': assignmentLandmark,
      'assignment_time': assignmentTime,
      'role': role,
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
        e1?.uid == e2?.uid &&
        e1?.badgeNumber == e2?.badgeNumber &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.status == e2?.status &&
        e1?.lastName == e2?.lastName &&
        e1?.editedTime == e2?.editedTime &&
        e1?.lastActive == e2?.lastActive &&
        e1?.gender == e2?.gender &&
        e1?.accStatus == e2?.accStatus &&
        e1?.assignmentPrk == e2?.assignmentPrk &&
        e1?.assignmentBrgy == e2?.assignmentBrgy &&
        e1?.assignmentStreet == e2?.assignmentStreet &&
        e1?.assignmentLandmark == e2?.assignmentLandmark &&
        e1?.assignmentTime == e2?.assignmentTime &&
        e1?.role == e2?.role;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.createdTime,
        e?.uid,
        e?.badgeNumber,
        e?.phoneNumber,
        e?.status,
        e?.lastName,
        e?.editedTime,
        e?.lastActive,
        e?.gender,
        e?.accStatus,
        e?.assignmentPrk,
        e?.assignmentBrgy,
        e?.assignmentStreet,
        e?.assignmentLandmark,
        e?.assignmentTime,
        e?.role
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
