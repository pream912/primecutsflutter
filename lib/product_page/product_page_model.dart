import '/backend/schema/structs/index.dart';
import '/components/cart_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:badges/badges.dart' as badges;
import 'product_page_widget.dart' show ProductPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductPageModel extends FlutterFlowModel<ProductPageWidget> {
  ///  Local state fields for this page.

  PackageStruct? selectedPackage;
  void updateSelectedPackageStruct(Function(PackageStruct) updateFn) =>
      updateFn(selectedPackage ??= PackageStruct());

  List<PackageStruct> packages = [];
  void addToPackages(PackageStruct item) => packages.add(item);
  void removeFromPackages(PackageStruct item) => packages.remove(item);
  void removeAtIndexFromPackages(int index) => packages.removeAt(index);
  void insertAtIndexInPackages(int index, PackageStruct item) =>
      packages.insert(index, item);
  void updatePackagesAtIndex(int index, Function(PackageStruct) updateFn) =>
      packages[index] = updateFn(packages[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for CountController widget.
  int? countControllerValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
