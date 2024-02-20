import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Pocketbase Group Code

class PocketbaseGroup {
  static String baseUrl = 'https://apis.avmediawork.in/api';
  static Map<String, String> headers = {};
  static SignupCall signupCall = SignupCall();
  static SigninCall signinCall = SigninCall();
  static GetCategoriesCall getCategoriesCall = GetCategoriesCall();
  static GetProductByCategoryCall getProductByCategoryCall =
      GetProductByCategoryCall();
  static GetProductCall getProductCall = GetProductCall();
  static SearchPinsCall searchPinsCall = SearchPinsCall();
  static GetShopCall getShopCall = GetShopCall();
  static GetProductsCall getProductsCall = GetProductsCall();
  static GetListingsCall getListingsCall = GetListingsCall();
  static GetOffersCall getOffersCall = GetOffersCall();
  static PlaceOrderCall placeOrderCall = PlaceOrderCall();
}

class SignupCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? passwordConfirm = '',
    String? name = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "passwordConfirm": "${passwordConfirm}",
  "name": "${name}",
"role": "user"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signup',
      apiUrl: '${PocketbaseGroup.baseUrl}/collections/users/records',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SigninCall {
  Future<ApiCallResponse> call({
    String? identity = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "identity": "${identity}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Signin',
      apiUrl: '${PocketbaseGroup.baseUrl}/collections/users/auth-with-password',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCategoriesCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetCategories',
      apiUrl: '${PocketbaseGroup.baseUrl}/collections/categories/records',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductByCategoryCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetProductByCategory',
      apiUrl:
          '${PocketbaseGroup.baseUrl}/collections/categories/records/${id}?expand=products(category)',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetProduct',
      apiUrl:
          '${PocketbaseGroup.baseUrl}/collections/products/records/${id}?expand=inventory(product)',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchPinsCall {
  Future<ApiCallResponse> call({
    String? pin = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SearchPins',
      apiUrl:
          '${PocketbaseGroup.baseUrl}/collections/pins/records?filter=(pin=${pin})',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetShopCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetShop',
      apiUrl: '${PocketbaseGroup.baseUrl}/collections/shops/records/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetProductsCall {
  Future<ApiCallResponse> call({
    String? shopId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetProducts',
      apiUrl:
          '${PocketbaseGroup.baseUrl}/collections/inventory/records?expand=product,packages(inv)&filter=(shop=\'${shopId}\')',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetListingsCall {
  Future<ApiCallResponse> call({
    String? shopId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetListings',
      apiUrl:
          '${PocketbaseGroup.baseUrl}/collections/listings/records?expand=product,&filter=(shop=\'${shopId}\')',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOffersCall {
  Future<ApiCallResponse> call({
    String? shopId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Offers',
      apiUrl:
          '${PocketbaseGroup.baseUrl}/collections/offers/records?filter=(shop=\'${shopId}\')',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PlaceOrderCall {
  Future<ApiCallResponse> call({
    int? orderid,
    dynamic? itemsJson,
    String? userid = '',
    String? status = 'placed',
    double? amount = 0,
    String? shop = '',
    String? paymentMethod = '',
    String? paymentStatus = '',
    String? deliveryAddress = '',
    String? deliveryLocation = '',
  }) async {
    final items = _serializeJson(itemsJson, true);
    final ffApiRequestBody = '''
{
  "orderid": ${orderid},
  "items": ${items},
  "userid": "${userid}",
  "status": "${status}",
  "amount": ${amount},
  "shop": "${shop}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Place order',
      apiUrl: '${PocketbaseGroup.baseUrl}/collections/orders/records',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Pocketbase Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
