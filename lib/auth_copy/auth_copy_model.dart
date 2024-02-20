import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'auth_copy_widget.dart' show AuthCopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthCopyModel extends FlutterFlowModel<AuthCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for emailSignup widget.
  FocusNode? emailSignupFocusNode;
  TextEditingController? emailSignupController;
  String? Function(BuildContext, String?)? emailSignupControllerValidator;
  // State field(s) for passwordSignup widget.
  FocusNode? passwordSignupFocusNode;
  TextEditingController? passwordSignupController;
  late bool passwordSignupVisibility;
  String? Function(BuildContext, String?)? passwordSignupControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)? passwordConfirmControllerValidator;
  // Stores action output result for [Backend Call - API (Signup)] action in Button widget.
  ApiCallResponse? signupResult;
  // Stores action output result for [Backend Call - API (Signin)] action in Button widget.
  ApiCallResponse? siginIn2Result;
  // State field(s) for emaiSignin widget.
  FocusNode? emaiSigninFocusNode;
  TextEditingController? emaiSigninController;
  String? Function(BuildContext, String?)? emaiSigninControllerValidator;
  // State field(s) for passwordSignin widget.
  FocusNode? passwordSigninFocusNode;
  TextEditingController? passwordSigninController;
  late bool passwordSigninVisibility;
  String? Function(BuildContext, String?)? passwordSigninControllerValidator;
  // Stores action output result for [Backend Call - API (Signin)] action in Button widget.
  ApiCallResponse? signInResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordSignupVisibility = false;
    passwordConfirmVisibility = false;
    passwordSigninVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    emailSignupFocusNode?.dispose();
    emailSignupController?.dispose();

    passwordSignupFocusNode?.dispose();
    passwordSignupController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmController?.dispose();

    emaiSigninFocusNode?.dispose();
    emaiSigninController?.dispose();

    passwordSigninFocusNode?.dispose();
    passwordSigninController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
