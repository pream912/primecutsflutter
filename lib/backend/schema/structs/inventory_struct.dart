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
    List<PackageStruct>? packages,
    ProductStruct? product,
    String? created,
    String? updated,
  })  : _id = id,
        _uom = uom,
        _shop = shop,
        _instock = instock,
        _packages = packages,
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

  // "packages" field.
  List<PackageStruct>? _packages;
  List<PackageStruct> get packages => _packages ?? const [];
  set packages(List<PackageStruct>? val) => _packages = val;
  void updatePackages(Function(List<PackageStruct>) updateFn) =>
      updateFn(_packages ??= []);
  bool hasPackages() => _packages != null;

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
        packages: getStructList(
          data['packages'],
          PackageStruct.fromMap,
        ),
        product: ProductStruct.maybeFromMap(data['product']),
        created: data['created'] as String?,
        updated: data['updated'] as String?,
      );

  static InventoryStruct? maybeFromMap(dynamic data) => data is Map
      ? InventoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'uom': _uom,
        'shop': _shop,
        'instock': _instock,
        'packages': _packages?.map((e) => e.toMap()).toList(),
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
        'packages': serializeParam(
          _packages,
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
        packages: deserializeStructParam<PackageStruct>(
          data['packages'],
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
        listEquality.equals(packages, other.packages) &&
        product == other.product &&
        created == other.created &&
        updated == other.updated;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, uom, shop, instock, packages, product, created, updated]);
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
