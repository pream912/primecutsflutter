// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:collection/collection.dart';

import 'dart:developer';

import 'dart:convert';

Future processOffers(String? rawOffers) async {
  // Add your function code here!
  List<ListingsStruct> listings = FFAppState().listings;
  List<OffersStruct> offers = [];
  dynamic data = json.decode(rawOffers!);
  (data as Map).forEach((ke, va) {
    if (ke == 'items') {
      List<dynamic> dataList = va;
      dataList.forEach((dat) {
        String id = '';
        String categories = '';
        String subcategories = '';
        String products = '';
        String shop = '';
        String tags = '';
        String offer_type = '';
        int offer_value = 0;
        String offer_name = '';
        int priority = 0;
        (dat as Map).forEach((key, value) {
          switch (key) {
            case 'id':
              {
                id = value;
              }
              break;
            case 'categories':
              {
                categories = value;
              }
              break;
            case 'products':
              {
                products = value;
              }
              break;
            case 'shop':
              {
                shop = value;
              }
              break;
            case 'subcategories':
              {
                subcategories = value;
              }
              break;
            case 'tags':
              {
                tags = value;
              }
              break;
            case 'offer_type':
              {
                offer_type = value;
              }
              break;
            case 'offer_value':
              {
                offer_value = value;
              }
              break;
            case 'offer_name':
              {
                offer_name = value;
              }
              break;
            case 'priority':
              {
                priority = value;
              }
              break;
          }
        });
        offers.add(OffersStruct(
            id: id,
            categories: categories,
            subcategories: subcategories,
            products: products,
            shop: shop,
            tags: tags,
            offerName: offer_name,
            offerType: offer_type,
            offerValue: offer_value,
            priority: priority));
      });
    }
  });
  offers.forEach((offer) {
    if (offer.categories != '') {
      listings.forEachIndexed((index, listItem) {
        if (listItem.product.category == offer.categories) {
          if (offer.offerType == 'percent') {
            int op =
                (listItem.price - (listItem.price * (offer.offerValue / 100)))
                    .round();
            FFAppState().update(() {
              FFAppState().listings[index].discountedPrice = op;
              FFAppState().listings[index].offerType = offer.offerType;
              FFAppState().listings[index].offerValue = offer.offerValue;
            });
          }
          if (offer.offerType == 'flat') {
            int op = (listItem.price - offer.offerValue).round();
            FFAppState().update(() {
              FFAppState().listings[index].discountedPrice = op;
              FFAppState().listings[index].offerType = offer.offerType;
              FFAppState().listings[index].offerValue = offer.offerValue;
            });
          }
        }
        if (listItem.product.subcategory == offer.subcategories) {
          if (offer.offerType == 'percent') {
            int op =
                (listItem.price - (listItem.price * (offer.offerValue / 100)))
                    .round();
            FFAppState().update(() {
              FFAppState().listings[index].discountedPrice = op;
              FFAppState().listings[index].offerType = offer.offerType;
              FFAppState().listings[index].offerValue = offer.offerValue;
            });
          }
          if (offer.offerType == 'flat') {
            int op = (listItem.price - offer.offerValue).round();
            FFAppState().update(() {
              FFAppState().listings[index].discountedPrice = op;
              FFAppState().listings[index].offerType = offer.offerType;
              FFAppState().listings[index].offerValue = offer.offerValue;
            });
          }
        }
        if (listItem.product.id == offer.products) {
          if (offer.offerType == 'percent') {
            int op =
                (listItem.price - (listItem.price * (offer.offerValue / 100)))
                    .round();
            FFAppState().update(() {
              FFAppState().listings[index].discountedPrice = op;
              FFAppState().listings[index].offerType = offer.offerType;
              FFAppState().listings[index].offerValue = offer.offerValue;
            });
          }
          if (offer.offerType == 'flat') {
            int op = (listItem.price - offer.offerValue).round();
            FFAppState().update(() {
              FFAppState().listings[index].discountedPrice = op;
              FFAppState().listings[index].offerType = offer.offerType;
              FFAppState().listings[index].offerValue = offer.offerValue;
            });
          }
        }
      });
    }
  });
}
