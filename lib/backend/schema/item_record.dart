import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'item_record.g.dart';

abstract class ItemRecord implements Built<ItemRecord, ItemRecordBuilder> {
  static Serializer<ItemRecord> get serializer => _$itemRecordSerializer;

  @BuiltValueField(wireName: 'item_name')
  String? get itemName;

  @BuiltValueField(wireName: 'item_price')
  int? get itemPrice;

  @BuiltValueField(wireName: 'short_bio')
  String? get shortBio;

  @BuiltValueField(wireName: 'media_url')
  BuiltList<String>? get mediaUrl;

  @BuiltValueField(wireName: 'is_done')
  bool? get isDone;

  String? get uid;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ItemRecordBuilder builder) => builder
    ..itemName = ''
    ..itemPrice = 0
    ..shortBio = ''
    ..mediaUrl = ListBuilder()
    ..isDone = false
    ..uid = ''
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('item');

  static Stream<ItemRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ItemRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ItemRecord._();
  factory ItemRecord([void Function(ItemRecordBuilder) updates]) = _$ItemRecord;

  static ItemRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createItemRecordData({
  String? itemName,
  int? itemPrice,
  String? shortBio,
  bool? isDone,
  String? uid,
  String? photoUrl,
}) {
  final firestoreData = serializers.toFirestore(
    ItemRecord.serializer,
    ItemRecord(
      (i) => i
        ..itemName = itemName
        ..itemPrice = itemPrice
        ..shortBio = shortBio
        ..mediaUrl = null
        ..isDone = isDone
        ..uid = uid
        ..photoUrl = photoUrl,
    ),
  );

  return firestoreData;
}
