// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_general_configs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AdminGeneralConfigsRecord> _$adminGeneralConfigsRecordSerializer =
    new _$AdminGeneralConfigsRecordSerializer();

class _$AdminGeneralConfigsRecordSerializer
    implements StructuredSerializer<AdminGeneralConfigsRecord> {
  @override
  final Iterable<Type> types = const [
    AdminGeneralConfigsRecord,
    _$AdminGeneralConfigsRecord
  ];
  @override
  final String wireName = 'AdminGeneralConfigsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AdminGeneralConfigsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.isSocialLoginOn;
    if (value != null) {
      result
        ..add('isSocialLoginOn')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AdminGeneralConfigsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AdminGeneralConfigsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'isSocialLoginOn':
          result.isSocialLoginOn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$AdminGeneralConfigsRecord extends AdminGeneralConfigsRecord {
  @override
  final bool? isSocialLoginOn;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AdminGeneralConfigsRecord(
          [void Function(AdminGeneralConfigsRecordBuilder)? updates]) =>
      (new AdminGeneralConfigsRecordBuilder()..update(updates))._build();

  _$AdminGeneralConfigsRecord._({this.isSocialLoginOn, this.ffRef}) : super._();

  @override
  AdminGeneralConfigsRecord rebuild(
          void Function(AdminGeneralConfigsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdminGeneralConfigsRecordBuilder toBuilder() =>
      new AdminGeneralConfigsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdminGeneralConfigsRecord &&
        isSocialLoginOn == other.isSocialLoginOn &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isSocialLoginOn.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdminGeneralConfigsRecord')
          ..add('isSocialLoginOn', isSocialLoginOn)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AdminGeneralConfigsRecordBuilder
    implements
        Builder<AdminGeneralConfigsRecord, AdminGeneralConfigsRecordBuilder> {
  _$AdminGeneralConfigsRecord? _$v;

  bool? _isSocialLoginOn;
  bool? get isSocialLoginOn => _$this._isSocialLoginOn;
  set isSocialLoginOn(bool? isSocialLoginOn) =>
      _$this._isSocialLoginOn = isSocialLoginOn;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AdminGeneralConfigsRecordBuilder() {
    AdminGeneralConfigsRecord._initializeBuilder(this);
  }

  AdminGeneralConfigsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isSocialLoginOn = $v.isSocialLoginOn;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdminGeneralConfigsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdminGeneralConfigsRecord;
  }

  @override
  void update(void Function(AdminGeneralConfigsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdminGeneralConfigsRecord build() => _build();

  _$AdminGeneralConfigsRecord _build() {
    final _$result = _$v ??
        new _$AdminGeneralConfigsRecord._(
            isSocialLoginOn: isSocialLoginOn, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
