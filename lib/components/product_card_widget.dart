import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_card_model.dart';
export 'product_card_model.dart';

class ProductCardWidget extends StatefulWidget {
  const ProductCardWidget({
    super.key,
    required this.imgUrl,
    required this.prodName,
    required this.prodPrice,
    required this.prodQuant,
    required this.listingID,
    required this.itemIndex,
    this.offerPrice,
    this.offerType,
    this.offerValue,
  });

  final String? imgUrl;
  final String? prodName;
  final double? prodPrice;
  final String? prodQuant;
  final String? listingID;
  final int? itemIndex;
  final double? offerPrice;
  final String? offerType;
  final int? offerValue;

  @override
  State<ProductCardWidget> createState() => _ProductCardWidgetState();
}

class _ProductCardWidgetState extends State<ProductCardWidget> {
  late ProductCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if ((FFAppState().cart.isNotEmpty) == true) {
        _model.updatePage(() {
          _model.cartQuant = FFAppState()
              .cart
              .where((e) => e.item.id == widget.listingID)
              .toList()
              .first
              .quantity;
        });
        _model.updatePage(() {
          _model.cartQuant = FFAppState()
              .cart
              .where((e) => e.item.id == widget.listingID)
              .toList()
              .first
              .quantity;
        });
      } else {
        setState(() {
          _model.cartQuant = 0;
        });
      }
    });

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

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        setState(() {
          FFAppState().selectedProduct =
              FFAppState().listings[widget.itemIndex!];
        });

        context.pushNamed('ProductPage');
      },
      child: Container(
        width: 250.0,
        height: 400.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: FlutterFlowTheme.of(context).secondaryBackground,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.imgUrl!,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: 250.0,
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.prodName,
                        'Product Name',
                      ),
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                  ),
                ),
              ),
              if (widget.offerPrice != 0.0)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (widget.offerPrice != null)
                        Text(
                          formatNumber(
                            widget.offerPrice,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                            currency: '₹',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                        child: Text(
                          formatNumber(
                            widget.prodPrice,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                            currency: '₹',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.lineThrough,
                              ),
                        ),
                      ),
                      Text(
                        '${widget.offerType == 'flat' ? '₹' : ''}${widget.offerValue?.toString()}${widget.offerType == 'percent' ? '%' : ''} off',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).success,
                            ),
                      ),
                    ].divide(SizedBox(width: 5.0)),
                  ),
                ),
              if (widget.offerPrice == 0.0)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                        child: Text(
                          formatNumber(
                            widget.prodPrice,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.periodDecimal,
                            currency: '₹',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
              Opacity(
                opacity: 0.9,
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.prodQuant,
                        '500g',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(1.0, 0.0),
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      if (_model.cartQuant == 0)
                        FFButtonWidget(
                          onPressed: () async {
                            FFAppState().update(() {
                              FFAppState().addToCart(CartStruct(
                                quantity: 1,
                                item: FFAppState().listings[widget.itemIndex!],
                              ));
                            });
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Cart'),
                                  content: Text((FFAppState().cart.last.toMap())
                                      .toString()),
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
                            setState(() {
                              _model.cartQuant = 1;
                            });
                          },
                          text: 'Add',
                          icon: Icon(
                            Icons.add,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      if (_model.cartQuant > 0)
                        Container(
                          width: 100.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).alternate,
                              width: 2.0,
                            ),
                          ),
                          child: FlutterFlowCountController(
                            decrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.minus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).secondaryText
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20.0,
                            ),
                            incrementIconBuilder: (enabled) => FaIcon(
                              FontAwesomeIcons.plus,
                              color: enabled
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).alternate,
                              size: 20.0,
                            ),
                            countBuilder: (count) => Text(
                              count.toString(),
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                            count: _model.countControllerValue ??=
                                _model.cartQuant,
                            updateCount: (count) async {
                              setState(
                                  () => _model.countControllerValue = count);
                              if (_model.countControllerValue == 0) {
                                FFAppState().update(() {
                                  FFAppState().removeFromCart(FFAppState()
                                      .cart
                                      .where(
                                          (e) => e.item.id == widget.listingID)
                                      .toList()
                                      .first);
                                });
                                setState(() {
                                  _model.cartQuant = 0;
                                });
                              } else {
                                _model.cartIndex = await actions.getIndexOfCart(
                                  FFAppState()
                                      .cart
                                      .where(
                                          (e) => e.item.id == widget.listingID)
                                      .toList()
                                      .first,
                                );
                                FFAppState().update(() {
                                  FFAppState().updateCartAtIndex(
                                    _model.cartIndex!,
                                    (e) => e
                                      ..quantity = _model.countControllerValue,
                                  );
                                });
                              }

                              setState(() {});
                            },
                            stepSize: 1,
                            contentPadding: EdgeInsets.all(5.0),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
