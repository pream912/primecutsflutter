import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _products = prefs
              .getStringList('ff_products')
              ?.map((x) {
                try {
                  return ProductStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _products;
    });
    _safeInit(() {
      _inventory = prefs
              .getStringList('ff_inventory')
              ?.map((x) {
                try {
                  return InventoryStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _inventory;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  PinStruct _pin = PinStruct();
  PinStruct get pin => _pin;
  set pin(PinStruct _value) {
    _pin = _value;
  }

  void updatePinStruct(Function(PinStruct) updateFn) {
    updateFn(_pin);
  }

  ShopStruct _shop = ShopStruct();
  ShopStruct get shop => _shop;
  set shop(ShopStruct _value) {
    _shop = _value;
  }

  void updateShopStruct(Function(ShopStruct) updateFn) {
    updateFn(_shop);
  }

  List<ProductStruct> _products = [];
  List<ProductStruct> get products => _products;
  set products(List<ProductStruct> _value) {
    _products = _value;
    prefs.setStringList(
        'ff_products', _value.map((x) => x.serialize()).toList());
  }

  void addToProducts(ProductStruct _value) {
    _products.add(_value);
    prefs.setStringList(
        'ff_products', _products.map((x) => x.serialize()).toList());
  }

  void removeFromProducts(ProductStruct _value) {
    _products.remove(_value);
    prefs.setStringList(
        'ff_products', _products.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProducts(int _index) {
    _products.removeAt(_index);
    prefs.setStringList(
        'ff_products', _products.map((x) => x.serialize()).toList());
  }

  void updateProductsAtIndex(
    int _index,
    ProductStruct Function(ProductStruct) updateFn,
  ) {
    _products[_index] = updateFn(_products[_index]);
    prefs.setStringList(
        'ff_products', _products.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProducts(int _index, ProductStruct _value) {
    _products.insert(_index, _value);
    prefs.setStringList(
        'ff_products', _products.map((x) => x.serialize()).toList());
  }

  List<InventoryStruct> _inventory = [];
  List<InventoryStruct> get inventory => _inventory;
  set inventory(List<InventoryStruct> _value) {
    _inventory = _value;
    prefs.setStringList(
        'ff_inventory', _value.map((x) => x.serialize()).toList());
  }

  void addToInventory(InventoryStruct _value) {
    _inventory.add(_value);
    prefs.setStringList(
        'ff_inventory', _inventory.map((x) => x.serialize()).toList());
  }

  void removeFromInventory(InventoryStruct _value) {
    _inventory.remove(_value);
    prefs.setStringList(
        'ff_inventory', _inventory.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromInventory(int _index) {
    _inventory.removeAt(_index);
    prefs.setStringList(
        'ff_inventory', _inventory.map((x) => x.serialize()).toList());
  }

  void updateInventoryAtIndex(
    int _index,
    InventoryStruct Function(InventoryStruct) updateFn,
  ) {
    _inventory[_index] = updateFn(_inventory[_index]);
    prefs.setStringList(
        'ff_inventory', _inventory.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInInventory(int _index, InventoryStruct _value) {
    _inventory.insert(_index, _value);
    prefs.setStringList(
        'ff_inventory', _inventory.map((x) => x.serialize()).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
