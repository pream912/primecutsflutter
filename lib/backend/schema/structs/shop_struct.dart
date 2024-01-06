// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShopStruct extends BaseStruct {
  ShopStruct({
    String? id,
    String? shopName,
    String? region,
    String? collectionId,
    String? collectionName,
    int? shopId,
    String? created,
    String? updated,
  })  : _id = id,
        _shopName = shopName,
        _region = region,
        _collectionId = collectionId,
        _collectionName = collectionName,
        _shopId = shopId,
        _created = created,
        _updated = updated;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "shop_name" field.
  String? _shopName;
  String get shopName => _shopName ?? '';
  set shopName(String? val) => _shopName = val;
  bool hasShopName() => _shopName != null;

  // "region" field.
  String? _region;
  String get region => _region ?? '';
  set region(String? val) => _region = val;
  bool hasRegion() => _region != null;

  // "collectionId" field.
  String? _collectionId;
  String get collectionId => _collectionId ?? '';
  set collectionId(String? val) => _collectionId = val;
  bool hasCollectionId() => _collectionId != null;

  // "collectionName" field.
  String? _collectionName;
  String get collectionName => _collectionName ?? '';
  set collectionName(String? val) => _collectionName = val;
  bool hasCollectionName() => _collectionName != null;

  // "shop_id" field.
  int? _shopId;
  int get shopId => _shopId ?? 0;
  set shopId(int? val) => _shopId = val;
  void incrementShopId(int amount) => _shopId = shopId + amount;
  bool hasShopId() => _shopId != null;

  // "created" field.
  String? _created;
  String get created => _created ?? '';
  set created(String? val) => _created = val;
  bool hasCreated() => _created != null;

  // "updated" field.
  String? _updated;
  String get updated => _updated ?? '';
  set updated(String? val) => _updated = val;
  bool hasUpdated() => _updated != null;

  static ShopStruct fromMap(Map<String, dynamic> data) => ShopStruct(
        id: data['id'] as String?,
        shopName: data['shop_name'] as String?,
        region: data['region'] as String?,
        collectionId: data['collectionId'] as String?,
        collectionName: data['collectionName'] as String?,
        shopId: castToType<int>(data['shop_id']),
        created: data['created'] as String?,
        updated: data['updated'] as String?,
      );

  static ShopStruct? maybeFromMap(dynamic data) =>
      data is Map ? ShopStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'shop_name': _shopName,
        'region': _region,
        'collectionId': _collectionId,
        'collectionName': _collectionName,
        'shop_id': _shopId,
        'created': _created,
        'updated': _updated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'shop_name': serializeParam(
          _shopName,
          ParamType.String,
        ),
        'region': serializeParam(
          _region,
          ParamType.String,
        ),
        'collectionId': serializeParam(
          _collectionId,
          ParamType.String,
        ),
        'collectionName': serializeParam(
          _collectionName,
          ParamType.String,
        ),
        'shop_id': serializeParam(
          _shopId,
          ParamType.int,
        ),
        'created': serializeParam(
          _created,
          ParamType.String,
        ),
        'updated': serializeParam(
          _updated,
          ParamType.String,
        ),
      }.withoutNulls;

  static ShopStruct fromSerializableMap(Map<String, dynamic> data) =>
      ShopStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        shopName: deserializeParam(
          data['shop_name'],
          ParamType.String,
          false,
        ),
        region: deserializeParam(
          data['region'],
          ParamType.String,
          false,
        ),
        collectionId: deserializeParam(
          data['collectionId'],
          ParamType.String,
          false,
        ),
        collectionName: deserializeParam(
          data['collectionName'],
          ParamType.String,
          false,
        ),
        shopId: deserializeParam(
          data['shop_id'],
          ParamType.int,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.String,
          false,
        ),
        updated: deserializeParam(
          data['updated'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ShopStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ShopStruct &&
        id == other.id &&
        shopName == other.shopName &&
        region == other.region &&
        collectionId == other.collectionId &&
        collectionName == other.collectionName &&
        shopId == other.shopId &&
        created == other.created &&
        updated == other.updated;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        shopName,
        region,
        collectionId,
        collectionName,
        shopId,
        created,
        updated
      ]);
}

ShopStruct createShopStruct({
  String? id,
  String? shopName,
  String? region,
  String? collectionId,
  String? collectionName,
  int? shopId,
  String? created,
  String? updated,
}) =>
    ShopStruct(
      id: id,
      shopName: shopName,
      region: region,
      collectionId: collectionId,
      collectionName: collectionName,
      shopId: shopId,
      created: created,
      updated: updated,
    );
