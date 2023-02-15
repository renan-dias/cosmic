import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'avaliador_record.g.dart';

abstract class AvaliadorRecord
    implements Built<AvaliadorRecord, AvaliadorRecordBuilder> {
  static Serializer<AvaliadorRecord> get serializer =>
      _$avaliadorRecordSerializer;

  String? get userID;

  String? get schoolName;

  String? get className;

  String? get teamName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AvaliadorRecordBuilder builder) => builder
    ..userID = ''
    ..schoolName = ''
    ..className = ''
    ..teamName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('avaliador');

  static Stream<AvaliadorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AvaliadorRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AvaliadorRecord._();
  factory AvaliadorRecord([void Function(AvaliadorRecordBuilder) updates]) =
      _$AvaliadorRecord;

  static AvaliadorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAvaliadorRecordData({
  String? userID,
  String? schoolName,
  String? className,
  String? teamName,
}) {
  final firestoreData = serializers.toFirestore(
    AvaliadorRecord.serializer,
    AvaliadorRecord(
      (a) => a
        ..userID = userID
        ..schoolName = schoolName
        ..className = className
        ..teamName = teamName,
    ),
  );

  return firestoreData;
}
