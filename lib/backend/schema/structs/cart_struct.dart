// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartStruct extends BaseStruct {
  CartStruct({
    int? quantity,
    ListingsStruct? item,
  })  : _quantity = quantity,
        _item = item;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 1;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "item" field.
  ListingsStruct? _item;
  ListingsStruct get item => _item ?? ListingsStruct();
  set item(ListingsStruct? val) => _item = val;
  void updateItem(Function(ListingsStruct) updateFn) =>
      updateFn(_item ??= ListingsStruct());
  bool hasItem() => _item != null;

  static CartStruct fromMap(Map<String, dynamic> data) => CartStruct(
        quantity: castToType<int>(data['quantity']),
        item: ListingsStruct.maybeFromMap(data['item']),
      );

  static CartStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'quantity': _quantity,
        'item': _item?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'item': serializeParam(
          _item,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CartStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartStruct(
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        item: deserializeStructParam(
          data['item'],
          ParamType.DataStruct,
          false,
          structBuilder: ListingsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartStruct &&
        quantity == other.quantity &&
        item == other.item;
  }

  @override
  int get hashCode => const ListEquality().hash([quantity, item]);
}

CartStruct createCartStruct({
  int? quantity,
  ListingsStruct? item,
}) =>
    CartStruct(
      quantity: quantity,
      item: item ?? ListingsStruct(),
    );
