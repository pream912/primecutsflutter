// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PinStruct extends BaseStruct {
  PinStruct({
    String? collectionId,
    String? collectionName,
    String? created,
    String? id,
    String? localities,
    String? shop,
    String? updated,
    String? city,
    int? pin,
  })  : _collectionId = collectionId,
        _collectionName = collectionName,
        _created = created,
        _id = id,
        _localities = localities,
        _shop = shop,
        _updated = updated,
        _city = city,
        _pin = pin;

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

  // "created" field.
  String? _created;
  String get created => _created ?? '';
  set created(String? val) => _created = val;
  bool hasCreated() => _created != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "localities" field.
  String? _localities;
  String get localities => _localities ?? '';
  set localities(String? val) => _localities = val;
  bool hasLocalities() => _localities != null;

  // "shop" field.
  String? _shop;
  String get shop => _shop ?? '';
  set shop(String? val) => _shop = val;
  bool hasShop() => _shop != null;

  // "updated" field.
  String? _updated;
  String get updated => _updated ?? '';
  set updated(String? val) => _updated = val;
  bool hasUpdated() => _updated != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "pin" field.
  int? _pin;
  int get pin => _pin ?? 0;
  set pin(int? val) => _pin = val;
  void incrementPin(int amount) => _pin = pin + amount;
  bool hasPin() => _pin != null;

  static PinStruct fromMap(Map<String, dynamic> data) => PinStruct(
        collectionId: data['collectionId'] as String?,
        collectionName: data['collectionName'] as String?,
        created: data['created'] as String?,
        id: data['id'] as String?,
        localities: data['localities'] as String?,
        shop: data['shop'] as String?,
        updated: data['updated'] as String?,
        city: data['city'] as String?,
        pin: castToType<int>(data['pin']),
      );

  static PinStruct? maybeFromMap(dynamic data) =>
      data is Map ? PinStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'collectionId': _collectionId,
        'collectionName': _collectionName,
        'created': _created,
        'id': _id,
        'localities': _localities,
        'shop': _shop,
        'updated': _updated,
        'city': _city,
        'pin': _pin,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'collectionId': serializeParam(
          _collectionId,
          ParamType.String,
        ),
        'collectionName': serializeParam(
          _collectionName,
          ParamType.String,
        ),
        'created': serializeParam(
          _created,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'localities': serializeParam(
          _localities,
          ParamType.String,
        ),
        'shop': serializeParam(
          _shop,
          ParamType.String,
        ),
        'updated': serializeParam(
          _updated,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'pin': serializeParam(
          _pin,
          ParamType.int,
        ),
      }.withoutNulls;

  static PinStruct fromSerializableMap(Map<String, dynamic> data) => PinStruct(
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
        created: deserializeParam(
          data['created'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        localities: deserializeParam(
          data['localities'],
          ParamType.String,
          false,
        ),
        shop: deserializeParam(
          data['shop'],
          ParamType.String,
          false,
        ),
        updated: deserializeParam(
          data['updated'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        pin: deserializeParam(
          data['pin'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PinStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PinStruct &&
        collectionId == other.collectionId &&
        collectionName == other.collectionName &&
        created == other.created &&
        id == other.id &&
        localities == other.localities &&
        shop == other.shop &&
        updated == other.updated &&
        city == other.city &&
        pin == other.pin;
  }

  @override
  int get hashCode => const ListEquality().hash([
        collectionId,
        collectionName,
        created,
        id,
        localities,
        shop,
        updated,
        city,
        pin
      ]);
}

PinStruct createPinStruct({
  String? collectionId,
  String? collectionName,
  String? created,
  String? id,
  String? localities,
  String? shop,
  String? updated,
  String? city,
  int? pin,
}) =>
    PinStruct(
      collectionId: collectionId,
      collectionName: collectionName,
      created: created,
      id: id,
      localities: localities,
      shop: shop,
      updated: updated,
      city: city,
      pin: pin,
    );
