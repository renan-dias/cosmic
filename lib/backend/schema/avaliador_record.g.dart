// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avaliador_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AvaliadorRecord> _$avaliadorRecordSerializer =
    new _$AvaliadorRecordSerializer();

class _$AvaliadorRecordSerializer
    implements StructuredSerializer<AvaliadorRecord> {
  @override
  final Iterable<Type> types = const [AvaliadorRecord, _$AvaliadorRecord];
  @override
  final String wireName = 'AvaliadorRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AvaliadorRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userID;
    if (value != null) {
      result
        ..add('userID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.schoolName;
    if (value != null) {
      result
        ..add('schoolName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.className;
    if (value != null) {
      result
        ..add('className')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.teamName;
    if (value != null) {
      result
        ..add('teamName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  AvaliadorRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AvaliadorRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userID':
          result.userID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'schoolName':
          result.schoolName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'className':
          result.className = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'teamName':
          result.teamName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$AvaliadorRecord extends AvaliadorRecord {
  @override
  final String? userID;
  @override
  final String? schoolName;
  @override
  final String? className;
  @override
  final String? teamName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AvaliadorRecord([void Function(AvaliadorRecordBuilder)? updates]) =>
      (new AvaliadorRecordBuilder()..update(updates))._build();

  _$AvaliadorRecord._(
      {this.userID, this.schoolName, this.className, this.teamName, this.ffRef})
      : super._();

  @override
  AvaliadorRecord rebuild(void Function(AvaliadorRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvaliadorRecordBuilder toBuilder() =>
      new AvaliadorRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AvaliadorRecord &&
        userID == other.userID &&
        schoolName == other.schoolName &&
        className == other.className &&
        teamName == other.teamName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, userID.hashCode), schoolName.hashCode),
                className.hashCode),
            teamName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AvaliadorRecord')
          ..add('userID', userID)
          ..add('schoolName', schoolName)
          ..add('className', className)
          ..add('teamName', teamName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AvaliadorRecordBuilder
    implements Builder<AvaliadorRecord, AvaliadorRecordBuilder> {
  _$AvaliadorRecord? _$v;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  String? _schoolName;
  String? get schoolName => _$this._schoolName;
  set schoolName(String? schoolName) => _$this._schoolName = schoolName;

  String? _className;
  String? get className => _$this._className;
  set className(String? className) => _$this._className = className;

  String? _teamName;
  String? get teamName => _$this._teamName;
  set teamName(String? teamName) => _$this._teamName = teamName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AvaliadorRecordBuilder() {
    AvaliadorRecord._initializeBuilder(this);
  }

  AvaliadorRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userID = $v.userID;
      _schoolName = $v.schoolName;
      _className = $v.className;
      _teamName = $v.teamName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AvaliadorRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AvaliadorRecord;
  }

  @override
  void update(void Function(AvaliadorRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AvaliadorRecord build() => _build();

  _$AvaliadorRecord _build() {
    final _$result = _$v ??
        new _$AvaliadorRecord._(
            userID: userID,
            schoolName: schoolName,
            className: className,
            teamName: teamName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
