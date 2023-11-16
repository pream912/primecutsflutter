// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

Future<List<InventoryStruct>?> invRawToData(String? rawInv) async {
  // Add your function code here!
  List<InventoryStruct> invs = [];
  dynamic data = rawInv;
  List<dynamic> dataList = json.decode(data);

  dataList.forEach((dat) {
    String id = '';
    String shop = '';
    String uom = '';
    late ProductStruct product;
    double instock = 0;
    //List<PackageStruct> package = [];

    (dat as Map).forEach((key, value) {
      switch (key) {
        case 'id':
          {
            id = value;
          }
          break;
        case 'shop':
          {
            shop = value;
          }
          break;
        case 'uom':
          {
            uom = value;
          }
          break;
        case 'instock':
          {
            instock = value;
          }
          break;
        // case 'package':
        //   {
        //     for (var item in value) {
        //       package.add(PackageStruct.fromMap(item));
        //     }
        //   }
        //   break;
        case 'expand':
          {
            dynamic pro = value;
            (pro as Map).forEach((k, v) {
              product = ProductStruct.fromMap(v);
            });
          }
      }
    });
    invs.add(InventoryStruct(
        id: id, shop: shop, uom: uom, instock: instock, product: product));
  });
  return invs;
}
