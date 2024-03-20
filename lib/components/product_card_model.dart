import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'product_card_widget.dart' show ProductCardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductCardModel extends FlutterFlowModel<ProductCardWidget> {
  ///  Local state fields for this component.

  int cartQuant = 0;

  CartStruct? cartItem;
  void updateCartItemStruct(Function(CartStruct) updateFn) =>
      updateFn(cartItem ??= CartStruct());

  ///  State fields for stateful widgets in this component.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // Stores action output result for [Custom Action - getIndexOfCart] action in CountController widget.
  int? cartIndex;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
