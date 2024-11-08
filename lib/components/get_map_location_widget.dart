import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'get_map_location_model.dart';
export 'get_map_location_model.dart';

class GetMapLocationWidget extends StatefulWidget {
  const GetMapLocationWidget({super.key});

  @override
  State<GetMapLocationWidget> createState() => _GetMapLocationWidgetState();
}

class _GetMapLocationWidgetState extends State<GetMapLocationWidget> {
  late GetMapLocationModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GetMapLocationModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
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
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).primary,
              ),
            ),
          ),
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: 500.0,
      decoration: BoxDecoration(
        color: Color(0x00FFFFFF),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: FlutterFlowGoogleMap(
              controller: _model.googleMapsController,
              onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
              initialLocation: _model.googleMapsCenter ??=
                  currentUserLocationValue!,
              markerColor: GoogleMarkerColor.violet,
              mapType: MapType.normal,
              style: GoogleMapStyle.standard,
              initialZoom: 14.0,
              allowInteraction: true,
              allowZoom: true,
              showZoomControls: true,
              showLocation: true,
              showCompass: false,
              showMapToolbar: false,
              showTraffic: false,
              centerMapOnMarkerTap: true,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    _model.apiResult3z2 =
                        await PocketbaseGroup.placeOrderCall.call(
                      orderid: getCurrentTimestamp.millisecondsSinceEpoch,
                      userid: currentUserData?.record?.id,
                      itemsJson:
                          FFAppState().cart.map((e) => e.toMap()).toList(),
                      amount: FFAppState().totalPayable,
                      status: 'placed',
                      shop: FFAppState().shop.id,
                      paymentMethod: 'cod',
                      paymentStatus: 'pending',
                      deliveryLocation: _model.googleMapsCenter?.toString(),
                    );
                    if ((_model.apiResult3z2?.succeeded ?? true)) {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Order placed'),
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
                      Navigator.pop(context);
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Errot'),
                            content:
                                Text((_model.apiResult3z2?.bodyText ?? '')),
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
                  text: 'Set location and proceed',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
