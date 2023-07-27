import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TripsRecord extends FirestoreRecord {
  TripsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "investiment" field.
  int? _investiment;
  int get investiment => _investiment ?? 0;
  bool hasInvestiment() => _investiment != null;

  // "imgUrl" field.
  String? _imgUrl;
  String get imgUrl => _imgUrl ?? '';
  bool hasImgUrl() => _imgUrl != null;

  // "will" field.
  int? _will;
  int get will => _will ?? 0;
  bool hasWill() => _will != null;

  // "visited" field.
  bool? _visited;
  bool get visited => _visited ?? false;
  bool hasVisited() => _visited != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _investiment = castToType<int>(snapshotData['investiment']);
    _imgUrl = snapshotData['imgUrl'] as String?;
    _will = castToType<int>(snapshotData['will']);
    _visited = snapshotData['visited'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('trips');

  static Stream<TripsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TripsRecord.fromSnapshot(s));

  static Future<TripsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TripsRecord.fromSnapshot(s));

  static TripsRecord fromSnapshot(DocumentSnapshot snapshot) => TripsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TripsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TripsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TripsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TripsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTripsRecordData({
  String? name,
  String? description,
  int? investiment,
  String? imgUrl,
  int? will,
  bool? visited,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'investiment': investiment,
      'imgUrl': imgUrl,
      'will': will,
      'visited': visited,
    }.withoutNulls,
  );

  return firestoreData;
}

class TripsRecordDocumentEquality implements Equality<TripsRecord> {
  const TripsRecordDocumentEquality();

  @override
  bool equals(TripsRecord? e1, TripsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.investiment == e2?.investiment &&
        e1?.imgUrl == e2?.imgUrl &&
        e1?.will == e2?.will &&
        e1?.visited == e2?.visited;
  }

  @override
  int hash(TripsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.investiment,
        e?.imgUrl,
        e?.will,
        e?.visited
      ]);

  @override
  bool isValidKey(Object? o) => o is TripsRecord;
}
