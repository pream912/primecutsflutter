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
    double? price,
    double? quantity,
    bool? featured,
    double? discountedPrice,
    String? offerType,
    int? offerValue,
  })  : _id = id,
        _created = created,
        _product = product,
        _shop = shop,
        _uom = uom,
        _price = price,
        _quantity = quantity,
        _featured = featured,
        _discountedPrice = discountedPrice,
        _offerType = offerType,
        _offerValue = offerValue;

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

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  // "quantity" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  set quantity(double? val) => _quantity = val;
  void incrementQuantity(double amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "featured" field.
  bool? _featured;
  bool get featured => _featured ?? false;
  set featured(bool? val) => _featured = val;
  bool hasFeatured() => _featured != null;

  // "discounted_price" field.
  double? _discountedPrice;
  double get discountedPrice => _discountedPrice ?? 0.0;
  set discountedPrice(double? val) => _discountedPrice = val;
  void incrementDiscountedPrice(double amount) =>
      _discountedPrice = discountedPrice + amount;
  bool hasDiscountedPrice() => _discountedPrice != null;

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

  static ListingsStruct fromMap(Map<String, dynamic> data) => ListingsStruct(
        id: data['id'] as String?,
        created: data['created'] as String?,
        product: ProductStruct.maybeFromMap(data['product']),
        shop: data['shop'] as String?,
        uom: data['uom'] as String?,
        price: castToType<double>(data['price']),
        quantity: castToType<double>(data['quantity']),
        featured: data['featured'] as bool?,
        discountedPrice: castToType<double>(data['discounted_price']),
        offerType: data['offer_type'] as String?,
        offerValue: castToType<int>(data['offer_value']),
      );

  static ListingsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ListingsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created': _created,
        'product': _product?.toMap(),
        'shop': _shop,
        'uom': _uom,
        'price': _price,
        'quantity': _quantity,
        'featured': _featured,
        'discounted_price': _discountedPrice,
        'offer_type': _offerType,
        'offer_value': _offerValue,
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
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.double,
        ),
        'featured': serializeParam(
          _featured,
          ParamType.bool,
        ),
        'discounted_price': serializeParam(
          _discountedPrice,
          ParamType.double,
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
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.double,
          false,
        ),
        featured: deserializeParam(
          data['featured'],
          ParamType.bool,
          false,
        ),
        discountedPrice: deserializeParam(
          data['discounted_price'],
          ParamType.double,
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
  String toString() => 'ListingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListingsStruct &&
        id == other.id &&
        created == other.created &&
        product == other.product &&
        shop == other.shop &&
        uom == other.uom &&
        price == other.price &&
        quantity == other.quantity &&
        featured == other.featured &&
        discountedPrice == other.discountedPrice &&
        offerType == other.offerType &&
        offerValue == other.offerValue;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        created,
        product,
        shop,
        uom,
        price,
        quantity,
        featured,
        discountedPrice,
        offerType,
        offerValue
      ]);
}

ListingsStruct createListingsStruct({
  String? id,
  String? created,
  ProductStruct? product,
  String? shop,
  String? uom,
  double? price,
  double? quantity,
  bool? featured,
  double? discountedPrice,
  String? offerType,
  int? offerValue,
}) =>
    ListingsStruct(
      id: id,
      created: created,
      product: product ?? ProductStruct(),
      shop: shop,
      uom: uom,
      price: price,
      quantity: quantity,
      featured: featured,
      discountedPrice: discountedPrice,
      offerType: offerType,
      offerValue: offerValue,
    );
