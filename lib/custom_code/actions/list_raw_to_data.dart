// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:developer';

import 'dart:convert';

Future<List<ListingsStruct>?> listRawToData(String? rawList) async {
  // Add your function code here!
  List<ListingsStruct> list = [];
  dynamic data = json.decode(rawList!);
  (data as Map).forEach((ke, va) {
    if (ke == 'items') {
      List<dynamic> dataList = va;

      dataList.forEach((dat) {
        String id = '';
        String shop = '';
        String uom = '';
        int quantity = 0;
        int price = 0;
        bool featured = false;
        late ProductStruct product;

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
            case 'price':
              {
                price = value;
              }
              break;
            case 'quantity':
              {
                quantity = value;
              }
              break;
            case 'featured':
              {
                featured = value;
              }
              break;
            // case 'packages':
            //   {
            //     for (var item in value) {
            //       log(item.toString());
            //       package.add(PackageStruct.fromMap(item));
            //     }
            //   }
            //break;
            case 'expand':
              {
                dynamic pro = value;
                (pro as Map).forEach((k, v) {
                  if (k == 'product') {
                    product = ProductStruct.fromMap(v);
                  }
                });
              }
          }
        });
        list.add(ListingsStruct(
            id: id,
            shop: shop,
            uom: uom,
            price: price,
            quantity: quantity,
            featured: featured,
            product: product));
      });
    }
  });
  return list;
}
