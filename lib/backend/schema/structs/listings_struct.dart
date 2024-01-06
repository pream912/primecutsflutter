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
  })  : _id = id,
        _created = created,
        _product = product,
        _shop = shop,
        _uom = uom,
        _price = price,
        _quantity = quantity,
        _featured = featured;

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

  static ListingsStruct fromMap(Map<String, dynamic> data) => ListingsStruct(
        id: data['id'] as String?,
        created: data['created'] as String?,
        product: ProductStruct.maybeFromMap(data['product']),
        shop: data['shop'] as String?,
        uom: data['uom'] as String?,
        price: castToType<double>(data['price']),
        quantity: castToType<double>(data['quantity']),
        featured: data['featured'] as bool?,
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
        featured == other.featured;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, created, product, shop, uom, price, quantity, featured]);
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
    );
