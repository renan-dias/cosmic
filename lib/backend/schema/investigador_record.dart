import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'investigador_record.g.dart';

abstract class InvestigadorRecord
    implements Built<InvestigadorRecord, InvestigadorRecordBuilder> {
  static Serializer<InvestigadorRecord> get serializer =>
      _$investigadorRecordSerializer;

  String? get userID;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InvestigadorRecordBuilder builder) =>
      builder..userID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('investigador');

  static Stream<InvestigadorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InvestigadorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InvestigadorRecord._();
  factory InvestigadorRecord(
          [void Function(InvestigadorRecordBuilder) updates]) =
      _$InvestigadorRecord;

  static InvestigadorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInvestigadorRecordData({
  String? userID,
}) {
  final firestoreData = serializers.toFirestore(
    InvestigadorRecord.serializer,
    InvestigadorRecord(
      (i) => i..userID = userID,
    ),
  );

  return firestoreData;
}
