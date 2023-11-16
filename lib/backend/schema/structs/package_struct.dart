// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackageStruct extends BaseStruct {
  PackageStruct({
    String? display,
    String? uom,
    double? price,
    double? quantity,
    int? discount,
  })  : _display = display,
        _uom = uom,
        _price = price,
        _quantity = quantity,
        _discount = discount;

  // "display" field.
  String? _display;
  String get display => _display ?? '';
  set display(String? val) => _display = val;
  bool hasDisplay() => _display != null;

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

  // "discount" field.
  int? _discount;
  int get discount => _discount ?? 0;
  set discount(int? val) => _discount = val;
  void incrementDiscount(int amount) => _discount = discount + amount;
  bool hasDiscount() => _discount != null;

  static PackageStruct fromMap(Map<String, dynamic> data) => PackageStruct(
        display: data['display'] as String?,
        uom: data['uom'] as String?,
        price: castToType<double>(data['price']),
        quantity: castToType<double>(data['quantity']),
        discount: castToType<int>(data['discount']),
      );

  static PackageStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PackageStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'display': _display,
        'uom': _uom,
        'price': _price,
        'quantity': _quantity,
        'discount': _discount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'display': serializeParam(
          _display,
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
        'discount': serializeParam(
          _discount,
          ParamType.int,
        ),
      }.withoutNulls;

  static PackageStruct fromSerializableMap(Map<String, dynamic> data) =>
      PackageStruct(
        display: deserializeParam(
          data['display'],
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
        discount: deserializeParam(
          data['discount'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PackageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PackageStruct &&
        display == other.display &&
        uom == other.uom &&
        price == other.price &&
        quantity == other.quantity &&
        discount == other.discount;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([display, uom, price, quantity, discount]);
}

PackageStruct createPackageStruct({
  String? display,
  String? uom,
  double? price,
  double? quantity,
  int? discount,
}) =>
    PackageStruct(
      display: display,
      uom: uom,
      price: price,
      quantity: quantity,
      discount: discount,
    );
