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
    _safeInit(() {
      _listings = prefs
              .getStringList('ff_listings')
              ?.map((x) {
                try {
                  return ListingsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _listings;
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

  List<CategoryStruct> _categories = [];
  List<CategoryStruct> get categories => _categories;
  set categories(List<CategoryStruct> _value) {
    _categories = _value;
  }

  void addToCategories(CategoryStruct _value) {
    _categories.add(_value);
  }

  void removeFromCategories(CategoryStruct _value) {
    _categories.remove(_value);
  }

  void removeAtIndexFromCategories(int _index) {
    _categories.removeAt(_index);
  }

  void updateCategoriesAtIndex(
    int _index,
    CategoryStruct Function(CategoryStruct) updateFn,
  ) {
    _categories[_index] = updateFn(_categories[_index]);
  }

  void insertAtIndexInCategories(int _index, CategoryStruct _value) {
    _categories.insert(_index, _value);
  }

  List<CartStruct> _cart = [];
  List<CartStruct> get cart => _cart;
  set cart(List<CartStruct> _value) {
    _cart = _value;
  }

  void addToCart(CartStruct _value) {
    _cart.add(_value);
  }

  void removeFromCart(CartStruct _value) {
    _cart.remove(_value);
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
  }

  void updateCartAtIndex(
    int _index,
    CartStruct Function(CartStruct) updateFn,
  ) {
    _cart[_index] = updateFn(_cart[_index]);
  }

  void insertAtIndexInCart(int _index, CartStruct _value) {
    _cart.insert(_index, _value);
  }

  List<ListingsStruct> _listings = [];
  List<ListingsStruct> get listings => _listings;
  set listings(List<ListingsStruct> _value) {
    _listings = _value;
    prefs.setStringList(
        'ff_listings', _value.map((x) => x.serialize()).toList());
  }

  void addToListings(ListingsStruct _value) {
    _listings.add(_value);
    prefs.setStringList(
        'ff_listings', _listings.map((x) => x.serialize()).toList());
  }

  void removeFromListings(ListingsStruct _value) {
    _listings.remove(_value);
    prefs.setStringList(
        'ff_listings', _listings.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromListings(int _index) {
    _listings.removeAt(_index);
    prefs.setStringList(
        'ff_listings', _listings.map((x) => x.serialize()).toList());
  }

  void updateListingsAtIndex(
    int _index,
    ListingsStruct Function(ListingsStruct) updateFn,
  ) {
    _listings[_index] = updateFn(_listings[_index]);
    prefs.setStringList(
        'ff_listings', _listings.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInListings(int _index, ListingsStruct _value) {
    _listings.insert(_index, _value);
    prefs.setStringList(
        'ff_listings', _listings.map((x) => x.serialize()).toList());
  }

  List<ListingsStruct> _selectedProducts = [];
  List<ListingsStruct> get selectedProducts => _selectedProducts;
  set selectedProducts(List<ListingsStruct> _value) {
    _selectedProducts = _value;
  }

  void addToSelectedProducts(ListingsStruct _value) {
    _selectedProducts.add(_value);
  }

  void removeFromSelectedProducts(ListingsStruct _value) {
    _selectedProducts.remove(_value);
  }

  void removeAtIndexFromSelectedProducts(int _index) {
    _selectedProducts.removeAt(_index);
  }

  void updateSelectedProductsAtIndex(
    int _index,
    ListingsStruct Function(ListingsStruct) updateFn,
  ) {
    _selectedProducts[_index] = updateFn(_selectedProducts[_index]);
  }

  void insertAtIndexInSelectedProducts(int _index, ListingsStruct _value) {
    _selectedProducts.insert(_index, _value);
  }

  ListingsStruct _selectedProduct = ListingsStruct();
  ListingsStruct get selectedProduct => _selectedProduct;
  set selectedProduct(ListingsStruct _value) {
    _selectedProduct = _value;
  }

  void updateSelectedProductStruct(Function(ListingsStruct) updateFn) {
    updateFn(_selectedProduct);
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
