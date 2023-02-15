import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'admin_general_configs_record.g.dart';

abstract class AdminGeneralConfigsRecord
    implements
        Built<AdminGeneralConfigsRecord, AdminGeneralConfigsRecordBuilder> {
  static Serializer<AdminGeneralConfigsRecord> get serializer =>
      _$adminGeneralConfigsRecordSerializer;

  bool? get isSocialLoginOn;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AdminGeneralConfigsRecordBuilder builder) =>
      builder..isSocialLoginOn = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admin_general_configs');

  static Stream<AdminGeneralConfigsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AdminGeneralConfigsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AdminGeneralConfigsRecord._();
  factory AdminGeneralConfigsRecord(
          [void Function(AdminGeneralConfigsRecordBuilder) updates]) =
      _$AdminGeneralConfigsRecord;

  static AdminGeneralConfigsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAdminGeneralConfigsRecordData({
  bool? isSocialLoginOn,
}) {
  final firestoreData = serializers.toFirestore(
    AdminGeneralConfigsRecord.serializer,
    AdminGeneralConfigsRecord(
      (a) => a..isSocialLoginOn = isSocialLoginOn,
    ),
  );

  return firestoreData;
}
