// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemRecord> _$itemRecordSerializer = new _$ItemRecordSerializer();

class _$ItemRecordSerializer implements StructuredSerializer<ItemRecord> {
  @override
  final Iterable<Type> types = const [ItemRecord, _$ItemRecord];
  @override
  final String wireName = 'ItemRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.itemName;
    if (value != null) {
      result
        ..add('item_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.itemPrice;
    if (value != null) {
      result
        ..add('item_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.shortBio;
    if (value != null) {
      result
        ..add('short_bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mediaUrl;
    if (value != null) {
      result
        ..add('media_url')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.isDone;
    if (value != null) {
      result
        ..add('is_done')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photUrl1;
    if (value != null) {
      result
        ..add('phot_url1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl2;
    if (value != null) {
      result
        ..add('photo_url2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl3;
    if (value != null) {
      result
        ..add('photo_url3')
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
  ItemRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'item_name':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'item_price':
          result.itemPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'short_bio':
          result.shortBio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'media_url':
          result.mediaUrl.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'is_done':
          result.isDone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phot_url1':
          result.photUrl1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url2':
          result.photoUrl2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url3':
          result.photoUrl3 = serializers.deserialize(value,
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

class _$ItemRecord extends ItemRecord {
  @override
  final String? itemName;
  @override
  final int? itemPrice;
  @override
  final String? shortBio;
  @override
  final BuiltList<String>? mediaUrl;
  @override
  final bool? isDone;
  @override
  final String? uid;
  @override
  final String? photoUrl;
  @override
  final String? photUrl1;
  @override
  final String? photoUrl2;
  @override
  final String? photoUrl3;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ItemRecord([void Function(ItemRecordBuilder)? updates]) =>
      (new ItemRecordBuilder()..update(updates))._build();

  _$ItemRecord._(
      {this.itemName,
      this.itemPrice,
      this.shortBio,
      this.mediaUrl,
      this.isDone,
      this.uid,
      this.photoUrl,
      this.photUrl1,
      this.photoUrl2,
      this.photoUrl3,
      this.ffRef})
      : super._();

  @override
  ItemRecord rebuild(void Function(ItemRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemRecordBuilder toBuilder() => new ItemRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemRecord &&
        itemName == other.itemName &&
        itemPrice == other.itemPrice &&
        shortBio == other.shortBio &&
        mediaUrl == other.mediaUrl &&
        isDone == other.isDone &&
        uid == other.uid &&
        photoUrl == other.photoUrl &&
        photUrl1 == other.photUrl1 &&
        photoUrl2 == other.photoUrl2 &&
        photoUrl3 == other.photoUrl3 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, itemName.hashCode),
                                            itemPrice.hashCode),
                                        shortBio.hashCode),
                                    mediaUrl.hashCode),
                                isDone.hashCode),
                            uid.hashCode),
                        photoUrl.hashCode),
                    photUrl1.hashCode),
                photoUrl2.hashCode),
            photoUrl3.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemRecord')
          ..add('itemName', itemName)
          ..add('itemPrice', itemPrice)
          ..add('shortBio', shortBio)
          ..add('mediaUrl', mediaUrl)
          ..add('isDone', isDone)
          ..add('uid', uid)
          ..add('photoUrl', photoUrl)
          ..add('photUrl1', photUrl1)
          ..add('photoUrl2', photoUrl2)
          ..add('photoUrl3', photoUrl3)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ItemRecordBuilder implements Builder<ItemRecord, ItemRecordBuilder> {
  _$ItemRecord? _$v;

  String? _itemName;
  String? get itemName => _$this._itemName;
  set itemName(String? itemName) => _$this._itemName = itemName;

  int? _itemPrice;
  int? get itemPrice => _$this._itemPrice;
  set itemPrice(int? itemPrice) => _$this._itemPrice = itemPrice;

  String? _shortBio;
  String? get shortBio => _$this._shortBio;
  set shortBio(String? shortBio) => _$this._shortBio = shortBio;

  ListBuilder<String>? _mediaUrl;
  ListBuilder<String> get mediaUrl =>
      _$this._mediaUrl ??= new ListBuilder<String>();
  set mediaUrl(ListBuilder<String>? mediaUrl) => _$this._mediaUrl = mediaUrl;

  bool? _isDone;
  bool? get isDone => _$this._isDone;
  set isDone(bool? isDone) => _$this._isDone = isDone;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _photUrl1;
  String? get photUrl1 => _$this._photUrl1;
  set photUrl1(String? photUrl1) => _$this._photUrl1 = photUrl1;

  String? _photoUrl2;
  String? get photoUrl2 => _$this._photoUrl2;
  set photoUrl2(String? photoUrl2) => _$this._photoUrl2 = photoUrl2;

  String? _photoUrl3;
  String? get photoUrl3 => _$this._photoUrl3;
  set photoUrl3(String? photoUrl3) => _$this._photoUrl3 = photoUrl3;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ItemRecordBuilder() {
    ItemRecord._initializeBuilder(this);
  }

  ItemRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _itemName = $v.itemName;
      _itemPrice = $v.itemPrice;
      _shortBio = $v.shortBio;
      _mediaUrl = $v.mediaUrl?.toBuilder();
      _isDone = $v.isDone;
      _uid = $v.uid;
      _photoUrl = $v.photoUrl;
      _photUrl1 = $v.photUrl1;
      _photoUrl2 = $v.photoUrl2;
      _photoUrl3 = $v.photoUrl3;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemRecord;
  }

  @override
  void update(void Function(ItemRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemRecord build() => _build();

  _$ItemRecord _build() {
    _$ItemRecord _$result;
    try {
      _$result = _$v ??
          new _$ItemRecord._(
              itemName: itemName,
              itemPrice: itemPrice,
              shortBio: shortBio,
              mediaUrl: _mediaUrl?.build(),
              isDone: isDone,
              uid: uid,
              photoUrl: photoUrl,
              photUrl1: photUrl1,
              photoUrl2: photoUrl2,
              photoUrl3: photoUrl3,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mediaUrl';
        _mediaUrl?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ItemRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
