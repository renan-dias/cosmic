// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_type_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserTypeStruct> _$userTypeStructSerializer =
    new _$UserTypeStructSerializer();

class _$UserTypeStructSerializer
    implements StructuredSerializer<UserTypeStruct> {
  @override
  final Iterable<Type> types = const [UserTypeStruct, _$UserTypeStruct];
  @override
  final String wireName = 'UserTypeStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserTypeStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.guest;
    if (value != null) {
      result
        ..add('guest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.student;
    if (value != null) {
      result
        ..add('student')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teacher;
    if (value != null) {
      result
        ..add('teacher')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.admin;
    if (value != null) {
      result
        ..add('admin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserTypeStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserTypeStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'guest':
          result.guest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'student':
          result.student = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teacher':
          result.teacher = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'admin':
          result.admin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$UserTypeStruct extends UserTypeStruct {
  @override
  final String? guest;
  @override
  final String? student;
  @override
  final String? teacher;
  @override
  final String? admin;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$UserTypeStruct([void Function(UserTypeStructBuilder)? updates]) =>
      (new UserTypeStructBuilder()..update(updates))._build();

  _$UserTypeStruct._(
      {this.guest,
      this.student,
      this.teacher,
      this.admin,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'UserTypeStruct', 'firestoreUtilData');
  }

  @override
  UserTypeStruct rebuild(void Function(UserTypeStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserTypeStructBuilder toBuilder() =>
      new UserTypeStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserTypeStruct &&
        guest == other.guest &&
        student == other.student &&
        teacher == other.teacher &&
        admin == other.admin &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, guest.hashCode), student.hashCode),
                teacher.hashCode),
            admin.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserTypeStruct')
          ..add('guest', guest)
          ..add('student', student)
          ..add('teacher', teacher)
          ..add('admin', admin)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class UserTypeStructBuilder
    implements Builder<UserTypeStruct, UserTypeStructBuilder> {
  _$UserTypeStruct? _$v;

  String? _guest;
  String? get guest => _$this._guest;
  set guest(String? guest) => _$this._guest = guest;

  String? _student;
  String? get student => _$this._student;
  set student(String? student) => _$this._student = student;

  String? _teacher;
  String? get teacher => _$this._teacher;
  set teacher(String? teacher) => _$this._teacher = teacher;

  String? _admin;
  String? get admin => _$this._admin;
  set admin(String? admin) => _$this._admin = admin;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  UserTypeStructBuilder() {
    UserTypeStruct._initializeBuilder(this);
  }

  UserTypeStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _guest = $v.guest;
      _student = $v.student;
      _teacher = $v.teacher;
      _admin = $v.admin;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserTypeStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserTypeStruct;
  }

  @override
  void update(void Function(UserTypeStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserTypeStruct build() => _build();

  _$UserTypeStruct _build() {
    final _$result = _$v ??
        new _$UserTypeStruct._(
            guest: guest,
            student: student,
            teacher: teacher,
            admin: admin,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'UserTypeStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
