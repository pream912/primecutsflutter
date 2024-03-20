import '/backend/schema/structs/index.dart';
import '/components/product_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'products_model.dart';
export 'products_model.dart';

class ProductsWidget extends StatefulWidget {
  const ProductsWidget({
    super.key,
    int? catIndex,
  }) : this.catIndex = catIndex ?? 0;

  final int catIndex;

  @override
  State<ProductsWidget> createState() => _ProductsWidgetState();
}

class _ProductsWidgetState extends State<ProductsWidget> {
  late ProductsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            FFAppState().selectedCategory.catName,
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Builder(
                  builder: (context) {
                    final products = FFAppState().selectedProducts.toList();
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: products.length,
                      separatorBuilder: (_, __) => SizedBox(height: 3.0),
                      itemBuilder: (context, productsIndex) {
                        final productsItem = products[productsIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 5.0, 16.0, 5.0),
                          child: wrapWithModel(
                            model: _model.productCardModels.getModel(
                              productsItem.id,
                              productsIndex,
                            ),
                            updateCallback: () => setState(() {}),
                            child: ProductCardWidget(
                              key: Key(
                                'Keymd4_${productsItem.id}',
                              ),
                              imgUrl:
                                  'https://apis.avmediawork.in/api/files/products/${productsItem.product.id}/${productsItem.product.image}',
                              prodName: productsItem.product.prodName,
                              prodPrice: productsItem.price.toDouble(),
                              prodQuant:
                                  '${productsItem.quantity.toString()}${productsItem.uom}',
                              listingID: productsItem.id,
                              itemIndex: productsIndex,
                              offerPrice: productsItem.price.toDouble(),
                              offerType: productsItem.offerType,
                              offerValue: productsItem.offerValue,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
