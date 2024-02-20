import '/backend/schema/structs/index.dart';
import '/components/product_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'products_widget.dart' show ProductsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductsModel extends FlutterFlowModel<ProductsWidget> {
  ///  Local state fields for this page.

  List<ListingsStruct> selectedProducts = [];
  void addToSelectedProducts(ListingsStruct item) => selectedProducts.add(item);
  void removeFromSelectedProducts(ListingsStruct item) =>
      selectedProducts.remove(item);
  void removeAtIndexFromSelectedProducts(int index) =>
      selectedProducts.removeAt(index);
  void insertAtIndexInSelectedProducts(int index, ListingsStruct item) =>
      selectedProducts.insert(index, item);
  void updateSelectedProductsAtIndex(
          int index, Function(ListingsStruct) updateFn) =>
      selectedProducts[index] = updateFn(selectedProducts[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for productCard dynamic component.
  late FlutterFlowDynamicModels<ProductCardModel> productCardModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    productCardModels = FlutterFlowDynamicModels(() => ProductCardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    productCardModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
