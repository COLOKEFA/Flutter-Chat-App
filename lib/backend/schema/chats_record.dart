import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "UserIds" field.
  List<DocumentReference>? _userIds;
  List<DocumentReference> get userIds => _userIds ?? const [];
  bool hasUserIds() => _userIds != null;

  // "lastmessage" field.
  String? _lastmessage;
  String get lastmessage => _lastmessage ?? '';
  bool hasLastmessage() => _lastmessage != null;

  // "UserNames" field.
  List<String>? _userNames;
  List<String> get userNames => _userNames ?? const [];
  bool hasUserNames() => _userNames != null;

  // "Timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "Lastmessageseenby" field.
  List<DocumentReference>? _lastmessageseenby;
  List<DocumentReference> get lastmessageseenby =>
      _lastmessageseenby ?? const [];
  bool hasLastmessageseenby() => _lastmessageseenby != null;

  void _initializeFields() {
    _userIds = getDataList(snapshotData['UserIds']);
    _lastmessage = snapshotData['lastmessage'] as String?;
    _userNames = getDataList(snapshotData['UserNames']);
    _timestamp = snapshotData['Timestamp'] as DateTime?;
    _lastmessageseenby = getDataList(snapshotData['Lastmessageseenby']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? lastmessage,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lastmessage': lastmessage,
      'Timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.userIds, e2?.userIds) &&
        e1?.lastmessage == e2?.lastmessage &&
        listEquality.equals(e1?.userNames, e2?.userNames) &&
        e1?.timestamp == e2?.timestamp &&
        listEquality.equals(e1?.lastmessageseenby, e2?.lastmessageseenby);
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.userIds,
        e?.lastmessage,
        e?.userNames,
        e?.timestamp,
        e?.lastmessageseenby
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}