import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'get_location_model.dart';
export 'get_location_model.dart';

class GetLocationWidget extends StatefulWidget {
  const GetLocationWidget({super.key});

  @override
  State<GetLocationWidget> createState() => _GetLocationWidgetState();
}

class _GetLocationWidgetState extends State<GetLocationWidget> {
  late GetLocationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetLocationModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 100.0,
        decoration: BoxDecoration(
          color: Color(0x35FFFFFF),
        ),
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Enter Pincode',
                      labelStyle: FlutterFlowTheme.of(context).labelMedium,
                      hintStyle: FlutterFlowTheme.of(context).labelMedium,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      prefixIcon: Icon(
                        Icons.location_pin,
                        color: FlutterFlowTheme.of(context).engineeringOrange,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  _model.pinResult = await PocketbaseGroup.searchPinsCall.call(
                    pin: _model.textController.text,
                  );
                  if ((_model.pinResult?.succeeded ?? true)) {
                    if (getJsonField(
                          (_model.pinResult?.jsonBody ?? ''),
                          r'''$.items[0].pin''',
                        ) ==
                        null) {
                      context.goNamed('NoShop');
                    } else {
                      setState(() {
                        FFAppState().pin = PinStruct.maybeFromMap(getJsonField(
                          (_model.pinResult?.jsonBody ?? ''),
                          r'''$.items[0]''',
                        ))!;
                      });
                      _model.shopResult =
                          await PocketbaseGroup.getShopCall.call(
                        id: FFAppState().pin.shop,
                      );
                      if ((_model.shopResult?.succeeded ?? true)) {
                        setState(() {
                          FFAppState().shop = ShopStruct.maybeFromMap(
                              (_model.shopResult?.jsonBody ?? ''))!;
                        });

                        context.goNamed('HomePage');
                      }
                    }
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Error!'),
                          content:
                              Text('Something went wrong, please try later.'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                  }

                  setState(() {});
                },
                text: 'OK',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        fontSize: 14.0,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
