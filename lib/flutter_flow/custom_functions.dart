import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

List<InventoryStruct>? processInventory(String? rawInv) {
  List<InventoryStruct> invs = [];
  dynamic data = rawInv;
  List<dynamic> dataList = json.decode(data);

  dataList.forEach((dat) {
    String id = '';
    String shop = '';
    String uom = '';
    late ProductStruct product;
    double instock = 0;
    List<PackageStruct> package = [];

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
        case 'package':
          {
            for (var item in value) {
              package.add(PackageStruct.fromMap(item));
            }
          }
          break;
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
        id: id,
        shop: shop,
        uom: uom,
        instock: instock,
        product: product,
        packages: package));
  });
  return invs;
}
