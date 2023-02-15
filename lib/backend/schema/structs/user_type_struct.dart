import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_type_struct.g.dart';

abstract class UserTypeStruct
    implements Built<UserTypeStruct, UserTypeStructBuilder> {
  static Serializer<UserTypeStruct> get serializer =>
      _$userTypeStructSerializer;

  String? get guest;

  String? get student;

  String? get teacher;

  String? get admin;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(UserTypeStructBuilder builder) => builder
    ..guest = ''
    ..student = ''
    ..teacher = ''
    ..admin = ''
    ..firestoreUtilData = FirestoreUtilData();

  UserTypeStruct._();
  factory UserTypeStruct([void Function(UserTypeStructBuilder) updates]) =
      _$UserTypeStruct;
}

UserTypeStruct createUserTypeStruct({
  String? guest,
  String? student,
  String? teacher,
  String? admin,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserTypeStruct(
      (u) => u
        ..guest = guest
        ..student = student
        ..teacher = teacher
        ..admin = admin
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

UserTypeStruct? updateUserTypeStruct(
  UserTypeStruct? userType, {
  bool clearUnsetFields = true,
}) =>
    userType != null
        ? (userType.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addUserTypeStructData(
  Map<String, dynamic> firestoreData,
  UserTypeStruct? userType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userType == null) {
    return;
  }
  if (userType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && userType.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userTypeData = getUserTypeFirestoreData(userType, forFieldValue);
  final nestedData = userTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = userType.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getUserTypeFirestoreData(
  UserTypeStruct? userType, [
  bool forFieldValue = false,
]) {
  if (userType == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(UserTypeStruct.serializer, userType);

  // Add any Firestore field values
  userType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserTypeListFirestoreData(
  List<UserTypeStruct>? userTypes,
) =>
    userTypes?.map((u) => getUserTypeFirestoreData(u, true)).toList() ?? [];
