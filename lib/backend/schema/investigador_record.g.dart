// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investigador_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InvestigadorRecord> _$investigadorRecordSerializer =
    new _$InvestigadorRecordSerializer();

class _$InvestigadorRecordSerializer
    implements StructuredSerializer<InvestigadorRecord> {
  @override
  final Iterable<Type> types = const [InvestigadorRecord, _$InvestigadorRecord];
  @override
  final String wireName = 'InvestigadorRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InvestigadorRecord object,
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
  InvestigadorRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InvestigadorRecordBuilder();

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

class _$InvestigadorRecord extends InvestigadorRecord {
  @override
  final String? userID;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InvestigadorRecord(
          [void Function(InvestigadorRecordBuilder)? updates]) =>
      (new InvestigadorRecordBuilder()..update(updates))._build();

  _$InvestigadorRecord._({this.userID, this.ffRef}) : super._();

  @override
  InvestigadorRecord rebuild(
          void Function(InvestigadorRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvestigadorRecordBuilder toBuilder() =>
      new InvestigadorRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvestigadorRecord &&
        userID == other.userID &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, userID.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvestigadorRecord')
          ..add('userID', userID)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InvestigadorRecordBuilder
    implements Builder<InvestigadorRecord, InvestigadorRecordBuilder> {
  _$InvestigadorRecord? _$v;

  String? _userID;
  String? get userID => _$this._userID;
  set userID(String? userID) => _$this._userID = userID;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InvestigadorRecordBuilder() {
    InvestigadorRecord._initializeBuilder(this);
  }

  InvestigadorRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userID = $v.userID;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvestigadorRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvestigadorRecord;
  }

  @override
  void update(void Function(InvestigadorRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvestigadorRecord build() => _build();

  _$InvestigadorRecord _build() {
    final _$result =
        _$v ?? new _$InvestigadorRecord._(userID: userID, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
