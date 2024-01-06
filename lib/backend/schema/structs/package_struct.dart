// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackageStruct extends BaseStruct {
  PackageStruct({
    String? display,
    String? uom,
    double? price,
    String? id,
  })  : _display = display,
        _uom = uom,
        _price = price,
        _id = id;

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

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static PackageStruct fromMap(Map<String, dynamic> data) => PackageStruct(
        display: data['display'] as String?,
        uom: data['uom'] as String?,
        price: castToType<double>(data['price']),
        id: data['id'] as String?,
      );

  static PackageStruct? maybeFromMap(dynamic data) =>
      data is Map ? PackageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'display': _display,
        'uom': _uom,
        'price': _price,
        'id': _id,
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
        'id': serializeParam(
          _id,
          ParamType.String,
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
        id: deserializeParam(
          data['id'],
          ParamType.String,
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
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([display, uom, price, id]);
}

PackageStruct createPackageStruct({
  String? display,
  String? uom,
  double? price,
  String? id,
}) =>
    PackageStruct(
      display: display,
      uom: uom,
      price: price,
      id: id,
    );
