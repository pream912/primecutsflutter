// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InventoryStruct extends BaseStruct {
  InventoryStruct({
    String? id,
    String? uom,
    String? shop,
    double? instock,
    List<PackageStruct>? package,
    ProductStruct? product,
    String? created,
    String? updated,
  })  : _id = id,
        _uom = uom,
        _shop = shop,
        _instock = instock,
        _package = package,
        _product = product,
        _created = created,
        _updated = updated;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "uom" field.
  String? _uom;
  String get uom => _uom ?? '';
  set uom(String? val) => _uom = val;
  bool hasUom() => _uom != null;

  // "shop" field.
  String? _shop;
  String get shop => _shop ?? '';
  set shop(String? val) => _shop = val;
  bool hasShop() => _shop != null;

  // "instock" field.
  double? _instock;
  double get instock => _instock ?? 0.0;
  set instock(double? val) => _instock = val;
  void incrementInstock(double amount) => _instock = instock + amount;
  bool hasInstock() => _instock != null;

  // "package" field.
  List<PackageStruct>? _package;
  List<PackageStruct> get package => _package ?? const [];
  set package(List<PackageStruct>? val) => _package = val;
  void updatePackage(Function(List<PackageStruct>) updateFn) =>
      updateFn(_package ??= []);
  bool hasPackage() => _package != null;

  // "product" field.
  ProductStruct? _product;
  ProductStruct get product => _product ?? ProductStruct();
  set product(ProductStruct? val) => _product = val;
  void updateProduct(Function(ProductStruct) updateFn) =>
      updateFn(_product ??= ProductStruct());
  bool hasProduct() => _product != null;

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

  static InventoryStruct fromMap(Map<String, dynamic> data) => InventoryStruct(
        id: data['id'] as String?,
        uom: data['uom'] as String?,
        shop: data['shop'] as String?,
        instock: castToType<double>(data['instock']),
        package: getStructList(
          data['package'],
          PackageStruct.fromMap,
        ),
        product: ProductStruct.maybeFromMap(data['product']),
        created: data['created'] as String?,
        updated: data['updated'] as String?,
      );

  static InventoryStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? InventoryStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'uom': _uom,
        'shop': _shop,
        'instock': _instock,
        'package': _package?.map((e) => e.toMap()).toList(),
        'product': _product?.toMap(),
        'created': _created,
        'updated': _updated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'uom': serializeParam(
          _uom,
          ParamType.String,
        ),
        'shop': serializeParam(
          _shop,
          ParamType.String,
        ),
        'instock': serializeParam(
          _instock,
          ParamType.double,
        ),
        'package': serializeParam(
          _package,
          ParamType.DataStruct,
          true,
        ),
        'product': serializeParam(
          _product,
          ParamType.DataStruct,
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

  static InventoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      InventoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        uom: deserializeParam(
          data['uom'],
          ParamType.String,
          false,
        ),
        shop: deserializeParam(
          data['shop'],
          ParamType.String,
          false,
        ),
        instock: deserializeParam(
          data['instock'],
          ParamType.double,
          false,
        ),
        package: deserializeStructParam<PackageStruct>(
          data['package'],
          ParamType.DataStruct,
          true,
          structBuilder: PackageStruct.fromSerializableMap,
        ),
        product: deserializeStructParam(
          data['product'],
          ParamType.DataStruct,
          false,
          structBuilder: ProductStruct.fromSerializableMap,
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
  String toString() => 'InventoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is InventoryStruct &&
        id == other.id &&
        uom == other.uom &&
        shop == other.shop &&
        instock == other.instock &&
        listEquality.equals(package, other.package) &&
        product == other.product &&
        created == other.created &&
        updated == other.updated;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, uom, shop, instock, package, product, created, updated]);
}

InventoryStruct createInventoryStruct({
  String? id,
  String? uom,
  String? shop,
  double? instock,
  ProductStruct? product,
  String? created,
  String? updated,
}) =>
    InventoryStruct(
      id: id,
      uom: uom,
      shop: shop,
      instock: instock,
      product: product ?? ProductStruct(),
      created: created,
      updated: updated,
    );
