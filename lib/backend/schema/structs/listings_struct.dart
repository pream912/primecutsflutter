// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListingsStruct extends BaseStruct {
  ListingsStruct({
    String? id,
    String? created,
    ProductStruct? product,
    String? shop,
    String? uom,
    bool? featured,
    String? offerType,
    int? offerValue,
    int? quantity,
    int? price,
    int? discountedPrice,
  })  : _id = id,
        _created = created,
        _product = product,
        _shop = shop,
        _uom = uom,
        _featured = featured,
        _offerType = offerType,
        _offerValue = offerValue,
        _quantity = quantity,
        _price = price,
        _discountedPrice = discountedPrice;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "created" field.
  String? _created;
  String get created => _created ?? '';
  set created(String? val) => _created = val;
  bool hasCreated() => _created != null;

  // "product" field.
  ProductStruct? _product;
  ProductStruct get product => _product ?? ProductStruct();
  set product(ProductStruct? val) => _product = val;
  void updateProduct(Function(ProductStruct) updateFn) =>
      updateFn(_product ??= ProductStruct());
  bool hasProduct() => _product != null;

  // "shop" field.
  String? _shop;
  String get shop => _shop ?? '';
  set shop(String? val) => _shop = val;
  bool hasShop() => _shop != null;

  // "uom" field.
  String? _uom;
  String get uom => _uom ?? '';
  set uom(String? val) => _uom = val;
  bool hasUom() => _uom != null;

  // "featured" field.
  bool? _featured;
  bool get featured => _featured ?? false;
  set featured(bool? val) => _featured = val;
  bool hasFeatured() => _featured != null;

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

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  set price(int? val) => _price = val;
  void incrementPrice(int amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "discounted_price" field.
  int? _discountedPrice;
  int get discountedPrice => _discountedPrice ?? 0;
  set discountedPrice(int? val) => _discountedPrice = val;
  void incrementDiscountedPrice(int amount) =>
      _discountedPrice = discountedPrice + amount;
  bool hasDiscountedPrice() => _discountedPrice != null;

  static ListingsStruct fromMap(Map<String, dynamic> data) => ListingsStruct(
        id: data['id'] as String?,
        created: data['created'] as String?,
        product: ProductStruct.maybeFromMap(data['product']),
        shop: data['shop'] as String?,
        uom: data['uom'] as String?,
        featured: data['featured'] as bool?,
        offerType: data['offer_type'] as String?,
        offerValue: castToType<int>(data['offer_value']),
        quantity: castToType<int>(data['quantity']),
        price: castToType<int>(data['price']),
        discountedPrice: castToType<int>(data['discounted_price']),
      );

  static ListingsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ListingsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created': _created,
        'product': _product?.toMap(),
        'shop': _shop,
        'uom': _uom,
        'featured': _featured,
        'offer_type': _offerType,
        'offer_value': _offerValue,
        'quantity': _quantity,
        'price': _price,
        'discounted_price': _discountedPrice,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'created': serializeParam(
          _created,
          ParamType.String,
        ),
        'product': serializeParam(
          _product,
          ParamType.DataStruct,
        ),
        'shop': serializeParam(
          _shop,
          ParamType.String,
        ),
        'uom': serializeParam(
          _uom,
          ParamType.String,
        ),
        'featured': serializeParam(
          _featured,
          ParamType.bool,
        ),
        'offer_type': serializeParam(
          _offerType,
          ParamType.String,
        ),
        'offer_value': serializeParam(
          _offerValue,
          ParamType.int,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'price': serializeParam(
          _price,
          ParamType.int,
        ),
        'discounted_price': serializeParam(
          _discountedPrice,
          ParamType.int,
        ),
      }.withoutNulls;

  static ListingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListingsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.String,
          false,
        ),
        product: deserializeStructParam(
          data['product'],
          ParamType.DataStruct,
          false,
          structBuilder: ProductStruct.fromSerializableMap,
        ),
        shop: deserializeParam(
          data['shop'],
          ParamType.String,
          false,
        ),
        uom: deserializeParam(
          data['uom'],
          ParamType.String,
          false,
        ),
        featured: deserializeParam(
          data['featured'],
          ParamType.bool,
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
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.int,
          false,
        ),
        discountedPrice: deserializeParam(
          data['discounted_price'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ListingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListingsStruct &&
        id == other.id &&
        created == other.created &&
        product == other.product &&
        shop == other.shop &&
        uom == other.uom &&
        featured == other.featured &&
        offerType == other.offerType &&
        offerValue == other.offerValue &&
        quantity == other.quantity &&
        price == other.price &&
        discountedPrice == other.discountedPrice;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        created,
        product,
        shop,
        uom,
        featured,
        offerType,
        offerValue,
        quantity,
        price,
        discountedPrice
      ]);
}

ListingsStruct createListingsStruct({
  String? id,
  String? created,
  ProductStruct? product,
  String? shop,
  String? uom,
  bool? featured,
  String? offerType,
  int? offerValue,
  int? quantity,
  int? price,
  int? discountedPrice,
}) =>
    ListingsStruct(
      id: id,
      created: created,
      product: product ?? ProductStruct(),
      shop: shop,
      uom: uom,
      featured: featured,
      offerType: offerType,
      offerValue: offerValue,
      quantity: quantity,
      price: price,
      discountedPrice: discountedPrice,
    );
