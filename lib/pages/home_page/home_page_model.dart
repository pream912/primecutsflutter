import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/get_location_widget.dart';
import '/components/product_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool loading = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetListings)] action in HomePage widget.
  ApiCallResponse? productsResult;
  // Stores action output result for [Custom Action - listRawToData] action in HomePage widget.
  List<ListingsStruct>? listingsOut;
  // Stores action output result for [Backend Call - API (GetCategories)] action in HomePage widget.
  ApiCallResponse? catResult;
  // Stores action output result for [Custom Action - catJsonToData] action in HomePage widget.
  List<CategoryStruct>? catOutput;
  // Stores action output result for [Backend Call - API (Get Offers)] action in HomePage widget.
  ApiCallResponse? offersResult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
