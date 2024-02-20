// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OffersStruct extends BaseStruct {
  OffersStruct({
    int? priority,
    String? id,
    String? shop,
    String? categories,
    String? products,
    String? subcategories,
    String? tags,
    String? offerName,
    String? offerType,
    int? offerValue,
  })  : _priority = priority,
        _id = id,
        _shop = shop,
        _categories = categories,
        _products = products,
        _subcategories = subcategories,
        _tags = tags,
        _offerName = offerName,
        _offerType = offerType,
        _offerValue = offerValue;

  // "priority" field.
  int? _priority;
  int get priority => _priority ?? 0;
  set priority(int? val) => _priority = val;
  void incrementPriority(int amount) => _priority = priority + amount;
  bool hasPriority() => _priority != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "shop" field.
  String? _shop;
  String get shop => _shop ?? '';
  set shop(String? val) => _shop = val;
  bool hasShop() => _shop != null;

  // "categories" field.
  String? _categories;
  String get categories => _categories ?? '';
  set categories(String? val) => _categories = val;
  bool hasCategories() => _categories != null;

  // "products" field.
  String? _products;
  String get products => _products ?? '';
  set products(String? val) => _products = val;
  bool hasProducts() => _products != null;

  // "subcategories" field.
  String? _subcategories;
  String get subcategories => _subcategories ?? '';
  set subcategories(String? val) => _subcategories = val;
  bool hasSubcategories() => _subcategories != null;

  // "tags" field.
  String? _tags;
  String get tags => _tags ?? '';
  set tags(String? val) => _tags = val;
  bool hasTags() => _tags != null;

  // "offer_name" field.
  String? _offerName;
  String get offerName => _offerName ?? '';
  set offerName(String? val) => _offerName = val;
  bool hasOfferName() => _offerName != null;

  // "offer_type" field.
  String? _offerType;
  String get offerType => _offerType ?? '';
  set offerType(String? val) => _offerType = val;
  bool hasOfferType() => _offerType != null;

  // "offer_value" field.
  int? _offerValue;
  int get offerValue => _offerValue ?? 0;
  set offerValue(int? val) => _offerValue = val;
  void incrementOfferValue(int amount) => _offerValue = offerValue + amount;
  bool hasOfferValue() => _offerValue != null;

  static OffersStruct fromMap(Map<String, dynamic> data) => OffersStruct(
        priority: castToType<int>(data['priority']),
        id: data['id'] as String?,
        shop: data['shop'] as String?,
        categories: data['categories'] as String?,
        products: data['products'] as String?,
        subcategories: data['subcategories'] as String?,
        tags: data['tags'] as String?,
        offerName: data['offer_name'] as String?,
        offerType: data['offer_type'] as String?,
        offerValue: castToType<int>(data['offer_value']),
      );

  static OffersStruct? maybeFromMap(dynamic data) =>
      data is Map ? OffersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'priority': _priority,
        'id': _id,
        'shop': _shop,
        'categories': _categories,
        'products': _products,
        'subcategories': _subcategories,
        'tags': _tags,
        'offer_name': _offerName,
        'offer_type': _offerType,
        'offer_value': _offerValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'priority': serializeParam(
          _priority,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'shop': serializeParam(
          _shop,
          ParamType.String,
        ),
        'categories': serializeParam(
          _categories,
          ParamType.String,
        ),
        'products': serializeParam(
          _products,
          ParamType.String,
        ),
        'subcategories': serializeParam(
          _subcategories,
          ParamType.String,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
        ),
        'offer_name': serializeParam(
          _offerName,
          ParamType.String,
        ),
        'offer_type': serializeParam(
          _offerType,
          ParamType.String,
        ),
        'offer_value': serializeParam(
          _offerValue,
          ParamType.int,
        ),
      }.withoutNulls;

  static OffersStruct fromSerializableMap(Map<String, dynamic> data) =>
      OffersStruct(
        priority: deserializeParam(
          data['priority'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        shop: deserializeParam(
          data['shop'],
          ParamType.String,
          false,
        ),
        categories: deserializeParam(
          data['categories'],
          ParamType.String,
          false,
        ),
        products: deserializeParam(
          data['products'],
          ParamType.String,
          false,
        ),
        subcategories: deserializeParam(
          data['subcategories'],
          ParamType.String,
          false,
        ),
        tags: deserializeParam(
          data['tags'],
          ParamType.String,
          false,
        ),
        offerName: deserializeParam(
          data['offer_name'],
          ParamType.String,
          false,
        ),
        offerType: deserializeParam(
          data['offer_type'],
          ParamType.String,
          false,
        ),
        offerValue: deserializeParam(
          data['offer_value'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'OffersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OffersStruct &&
        priority == other.priority &&
        id == other.id &&
        shop == other.shop &&
        categories == other.categories &&
        products == other.products &&
        subcategories == other.subcategories &&
        tags == other.tags &&
        offerName == other.offerName &&
        offerType == other.offerType &&
        offerValue == other.offerValue;
  }

  @override
  int get hashCode => const ListEquality().hash([
        priority,
        id,
        shop,
        categories,
        products,
        subcategories,
        tags,
        offerName,
        offerType,
        offerValue
      ]);
}

OffersStruct createOffersStruct({
  int? priority,
  String? id,
  String? shop,
  String? categories,
  String? products,
  String? subcategories,
  String? tags,
  String? offerName,
  String? offerType,
  int? offerValue,
}) =>
    OffersStruct(
      priority: priority,
      id: id,
      shop: shop,
      categories: categories,
      products: products,
      subcategories: subcategories,
      tags: tags,
      offerName: offerName,
      offerType: offerType,
      offerValue: offerValue,
    );
